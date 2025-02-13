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

@pass_ipa_pure_const = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @gate_pure_const, ptr @propagate, ptr null, ptr null, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @generate_summary, ptr @pure_const_write_summary, ptr @pure_const_read_summary, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"pure-const\00", align 1
@flag_ipa_pure_const = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global ptr null, align 8
@node_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@node_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"reduced\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Function found to be %sconst: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"looping \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Function found to be %spure: %s\0A\00", align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"reduced for nothrow\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Function found to be nothrow: %s\0A\00", align 1
@funct_state_vec = internal unnamed_addr global ptr null, align 8
@visited_nodes = internal unnamed_addr global ptr null, align 8
@register_hooks.init_p = internal unnamed_addr global i1 false, align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ipa-pure-const.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"\0A\0A local analysis of %s\0A \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"    has irreducible loops\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"    can not prove finiteness of loop %i\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Function is locally looping.\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Function is locally throwing.\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Function is locally const.\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Function is locally pure.\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"  scanning: \00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"    can throw; looping\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"    can throw externally\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"    nonlocal label is not const/pure\00", align 1
@memory_identifier_string = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [41 x i8] c"    memory asm clobber is not const/pure\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"    volatile is not const/pure\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"    Volatile operand is not const/pure\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"    Used static/global variable is not const/pure\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"    static/global memory write is not const/pure\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"    global memory read is not const\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"    static memory read is not const\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"    Volatile indirect ref is not const/pure\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"    Indirect ref to local memory is OK\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"    Indirect ref write is not const/pure\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"    Indirect ref read is not const\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"    operand can throw; looping\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"    operand can throw externally\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"    setjmp is not const/pure\0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"    longjmp and nonlocal goto is not const/pure\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"    can throw; looping\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"    can throw externally to lp %i\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"     callee:%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"    pure function call in not const\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"    uknown function call is not const/pure\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.41 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@pass_local_pure_const = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.42, ptr @gate_pure_const, ptr @local_pure_const, ptr null, ptr null, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.42 = private unnamed_addr constant [17 x i8] c"local-pure-const\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"Function called in recursive cycle; ignoring\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"Function has wrong visibility; ignoring\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.45 = private unnamed_addr constant [38 x i8] c"Function found to be non-looping: %s\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pure_const() #0 !prof !173 !PGOFuncName !174 {
  %1 = load i32, ptr @flag_ipa_pure_const, align 4, !tbaa !175
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !179

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !175
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !182

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !175
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @propagate() #1 !prof !183 !PGOFuncName !184 {
  %1 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !175
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #17
  %4 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !180
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %4) #17
  %5 = load ptr, ptr @node_duplication_hook_holder, align 8, !tbaa !180
  tail call void @cgraph_remove_node_duplication_hook(ptr noundef %5) #17
  %6 = load ptr, ptr @node_removal_hook_holder, align 8, !tbaa !180
  tail call void @cgraph_remove_node_removal_hook(ptr noundef %6) #17
  %7 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null) #17
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !185

10:                                               ; preds = %0
  tail call void @dump_cgraph(ptr noundef nonnull %8) #17
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !180
  tail call void @ipa_utils_print_order(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %7) #17
  br label %12

12:                                               ; preds = %10, %0
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %16, !prof !186

14:                                               ; preds = %12
  %15 = zext nneg i32 %7 to i64
  br label %19

16:                                               ; preds = %166, %12
  %17 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !180
  %18 = icmp eq ptr %17, null
  br i1 %18, label %179, label %169, !prof !187

19:                                               ; preds = %14, %166
  %20 = phi i64 [ 0, %14 ], [ %167, %166 ]
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !180
  %23 = icmp eq ptr %22, null
  br i1 %23, label %166, label %24, !prof !188

24:                                               ; preds = %19, %97
  %25 = phi ptr [ %103, %97 ], [ %22, %19 ]
  %26 = phi i32 [ %99, %97 ], [ 0, %19 ]
  %27 = phi i8 [ %98, %97 ], [ 0, %19 ]
  %28 = phi i32 [ %50, %97 ], [ 0, %19 ]
  %29 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %25) #18
  %30 = load i32, ptr %29, align 4, !tbaa !189
  %31 = tail call i32 @llvm.umax.i32(i32 %26, i32 %30)
  %32 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !191
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 %27, i8 1, !prof !192
  %36 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %25) #17
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %45, !prof !193

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 2
  %40 = load i8, ptr %39, align 4, !tbaa !194
  %41 = or i8 %40, %35
  %42 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !195
  %44 = tail call i32 @llvm.umax.i32(i32 %31, i32 %43)
  br label %45

45:                                               ; preds = %38, %24
  %46 = phi i8 [ %35, %24 ], [ %41, %38 ]
  %47 = phi i32 [ %31, %24 ], [ %44, %38 ]
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %105, label %49, !prof !196

49:                                               ; preds = %45
  %50 = add nuw nsw i32 %28, 1
  %51 = icmp eq i32 %28, 0
  %52 = select i1 %51, i8 %46, i8 1, !prof !197
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !180
  %55 = icmp eq ptr %54, null
  br i1 %55, label %97, label %56, !prof !198

56:                                               ; preds = %49, %91
  %57 = phi ptr [ %95, %91 ], [ %54, %49 ]
  %58 = phi i32 [ %93, %91 ], [ %47, %49 ]
  %59 = phi i8 [ %92, %91 ], [ %52, %49 ]
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %57, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !199
  %62 = tail call i32 @cgraph_function_body_availability(ptr noundef %61) #17
  %63 = icmp ugt i32 %62, 2
  br i1 %63, label %64, label %74, !prof !203

64:                                               ; preds = %56
  %65 = tail call fastcc ptr @get_function_state(ptr noundef %61) #18
  %66 = load i32, ptr %65, align 4, !tbaa !189
  %67 = tail call i32 @llvm.umax.i32(i32 %58, i32 %66)
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %97, label %69, !prof !204

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.funct_state_d, ptr %65, i64 0, i32 3
  %71 = load i8, ptr %70, align 1, !tbaa !191
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i8 %59, i8 1, !prof !205
  br label %91

74:                                               ; preds = %56
  %75 = load ptr, ptr %61, align 8, !tbaa !206
  %76 = tail call i32 @flags_from_decl_or_type(ptr noundef %75) #17
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79, !prof !214

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %74
  %81 = phi i8 [ 1, %79 ], [ %59, %74 ]
  %82 = and i32 %76, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91, !prof !215

84:                                               ; preds = %80
  %85 = and i32 %76, 2
  %86 = icmp ne i32 %85, 0
  %87 = icmp eq i32 %58, 0
  %88 = select i1 %86, i1 %87, i1 false
  %89 = select i1 %88, i8 %81, i8 1, !prof !216
  %90 = select i1 %88, i32 1, i32 2, !prof !216
  br label %91

91:                                               ; preds = %69, %84, %80
  %92 = phi i8 [ %73, %69 ], [ %89, %84 ], [ %81, %80 ]
  %93 = phi i32 [ %67, %69 ], [ %90, %84 ], [ %58, %80 ]
  %94 = getelementptr inbounds %struct.cgraph_edge, ptr %57, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !180
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %56, !prof !217, !llvm.loop !218

97:                                               ; preds = %91, %64, %49
  %98 = phi i8 [ %52, %49 ], [ %59, %64 ], [ %92, %91 ]
  %99 = phi i32 [ %47, %49 ], [ 2, %64 ], [ %93, %91 ]
  %100 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 16
  %101 = load ptr, ptr %100, align 8, !tbaa !220
  %102 = getelementptr inbounds %struct.ipa_dfs_info, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !221
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %24, !prof !223

105:                                              ; preds = %97, %45
  %106 = phi i8 [ %98, %97 ], [ %46, %45 ]
  %107 = phi i32 [ %99, %97 ], [ 2, %45 ]
  br i1 %23, label %166, label %108, !prof !224

108:                                              ; preds = %105
  %109 = icmp eq i8 %106, 0
  br label %110

110:                                              ; preds = %108, %160
  %111 = phi ptr [ %22, %108 ], [ %164, %160 ]
  %112 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %111) #18
  %113 = getelementptr inbounds %struct.funct_state_d, ptr %112, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !195
  %115 = icmp ne i32 %114, 2
  %116 = icmp ugt i32 %107, %114
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %119, !prof !225

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %110
  %120 = phi i32 [ %114, %118 ], [ %107, %110 ]
  br i1 %109, label %121, label %123, !prof !226

121:                                              ; preds = %119
  %122 = tail call fastcc zeroext i8 @self_recursive_p(ptr noundef nonnull %111) #18, !range !227
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8 [ %106, %119 ], [ %122, %121 ]
  %125 = getelementptr inbounds %struct.funct_state_d, ptr %112, i64 0, i32 2
  %126 = load i8, ptr %125, align 4, !tbaa !194
  %127 = icmp eq i8 %126, 0
  %128 = select i1 %127, i8 0, i8 %124, !prof !228
  store i32 %120, ptr %112, align 4, !tbaa !189
  %129 = getelementptr inbounds %struct.funct_state_d, ptr %112, i64 0, i32 3
  store i8 %128, ptr %129, align 1, !tbaa !191
  switch i32 %120, label %160 [
    i32 0, label %130
    i32 1, label %144
  ], !prof !229

130:                                              ; preds = %123
  %131 = load ptr, ptr %111, align 8, !tbaa !206
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 1048576
  %134 = icmp eq i64 %133, 0
  %135 = load ptr, ptr @dump_file, align 8
  %136 = icmp ne ptr %135, null
  %137 = select i1 %134, i1 %136, i1 false
  br i1 %137, label %138, label %143, !prof !230

138:                                              ; preds = %130
  %139 = icmp eq i8 %128, 0
  %140 = select i1 %139, ptr @.str.4, ptr @.str.3
  %141 = tail call ptr @cgraph_node_name(ptr noundef nonnull %111) #17
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %135, ptr noundef nonnull @.str.2, ptr noundef nonnull %140, ptr noundef %141) #18
  br label %143

143:                                              ; preds = %138, %130
  tail call void @cgraph_set_readonly_flag(ptr noundef nonnull %111, i8 noundef zeroext 1) #17
  br label %159

144:                                              ; preds = %123
  %145 = load ptr, ptr %111, align 8, !tbaa !206
  %146 = getelementptr inbounds %struct.tree_function_decl, ptr %145, i64 0, i32 5
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 134217728
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %158, !prof !231

150:                                              ; preds = %144
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153, !prof !232

153:                                              ; preds = %150
  %154 = icmp eq i8 %128, 0
  %155 = select i1 %154, ptr @.str.4, ptr @.str.3
  %156 = tail call ptr @cgraph_node_name(ptr noundef nonnull %111) #17
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %151, ptr noundef nonnull @.str.5, ptr noundef nonnull %155, ptr noundef %156) #18
  br label %158

158:                                              ; preds = %153, %150, %144
  tail call void @cgraph_set_pure_flag(ptr noundef nonnull %111, i8 noundef zeroext 1) #17
  br label %159

159:                                              ; preds = %143, %158
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef nonnull %111, i8 noundef zeroext %128) #17
  br label %160

160:                                              ; preds = %159, %123
  %161 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 16
  %162 = load ptr, ptr %161, align 8, !tbaa !220
  %163 = getelementptr inbounds %struct.ipa_dfs_info, ptr %162, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !221
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %110, !prof !233, !llvm.loop !234

166:                                              ; preds = %160, %19, %105
  %167 = add nuw nsw i64 %20, 1
  %168 = icmp eq i64 %167, %15
  br i1 %168, label %16, label %19, !prof !235, !llvm.loop !236

169:                                              ; preds = %16, %175
  %170 = phi ptr [ %177, %175 ], [ %17, %16 ]
  %171 = getelementptr inbounds %struct.cgraph_node, ptr %170, i64 0, i32 16
  %172 = load ptr, ptr %171, align 8, !tbaa !220
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174, !prof !237

174:                                              ; preds = %169
  tail call void @free(ptr noundef nonnull %172) #18
  store ptr null, ptr %171, align 8, !tbaa !220
  br label %175

175:                                              ; preds = %169, %174
  %176 = getelementptr inbounds %struct.cgraph_node, ptr %170, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !180
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %169, !prof !238, !llvm.loop !239

179:                                              ; preds = %175, %16
  %180 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @ignore_edge) #17
  %181 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183, !prof !185

183:                                              ; preds = %179
  tail call void @dump_cgraph(ptr noundef nonnull %181) #17
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !180
  tail call void @ipa_utils_print_order(ptr noundef %184, ptr noundef nonnull @.str.6, ptr noundef %3, i32 noundef %180) #17
  br label %185

185:                                              ; preds = %183, %179
  %186 = icmp sgt i32 %180, 0
  br i1 %186, label %187, label %189, !prof !186

187:                                              ; preds = %185
  %188 = zext nneg i32 %180 to i64
  br label %192

189:                                              ; preds = %299, %185
  %190 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !180
  %191 = icmp eq ptr %190, null
  br i1 %191, label %317, label %302, !prof !187

192:                                              ; preds = %187, %299
  %193 = phi i64 [ 0, %187 ], [ %300, %299 ]
  %194 = getelementptr inbounds ptr, ptr %3, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !180
  %196 = icmp eq ptr %195, null
  br i1 %196, label %299, label %197, !prof !240

197:                                              ; preds = %192, %253
  %198 = phi ptr [ %258, %253 ], [ %195, %192 ]
  %199 = phi i8 [ %254, %253 ], [ 0, %192 ]
  %200 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %198) #18
  %201 = getelementptr inbounds %struct.funct_state_d, ptr %200, i64 0, i32 4
  %202 = load i8, ptr %201, align 2, !tbaa !241
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %260, !prof !242

204:                                              ; preds = %197
  %205 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %198) #17
  %206 = icmp ne i32 %205, 2
  %207 = icmp eq i8 %199, 0
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %209, label %260, !prof !243

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.cgraph_node, ptr %198, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !180
  %212 = icmp eq ptr %211, null
  br i1 %212, label %253, label %213, !prof !240

213:                                              ; preds = %209, %248
  %214 = phi ptr [ %251, %248 ], [ %211, %209 ]
  %215 = phi i8 [ %249, %248 ], [ 0, %209 ]
  %216 = getelementptr inbounds %struct.cgraph_edge, ptr %214, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !199
  %218 = tail call i32 @cgraph_function_body_availability(ptr noundef %217) #17
  %219 = icmp ugt i32 %218, 2
  br i1 %219, label %220, label %237, !prof !244

220:                                              ; preds = %213
  %221 = icmp eq i8 %215, 0
  br i1 %221, label %222, label %253, !prof !245

222:                                              ; preds = %220
  %223 = tail call fastcc ptr @get_function_state(ptr noundef %217) #18
  %224 = getelementptr inbounds %struct.funct_state_d, ptr %223, i64 0, i32 4
  %225 = load i8, ptr %224, align 2, !tbaa !241
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %248, label %227, !prof !245

227:                                              ; preds = %222
  %228 = load ptr, ptr %198, align 8, !tbaa !206
  %229 = load i64, ptr %228, align 8
  %230 = and i64 %229, 33554432
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %248

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.cgraph_edge, ptr %214, i64 0, i32 14
  %234 = load i8, ptr %233, align 2
  %235 = lshr i8 %234, 2
  %236 = and i8 %235, 1
  br label %248

237:                                              ; preds = %213
  %238 = getelementptr inbounds %struct.cgraph_edge, ptr %214, i64 0, i32 14
  %239 = load i8, ptr %238, align 2
  %240 = and i8 %239, 4
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %248, label %242, !prof !246

242:                                              ; preds = %237
  %243 = load ptr, ptr %217, align 8, !tbaa !206
  %244 = load i64, ptr %243, align 8
  %245 = and i64 %244, 33554432
  %246 = icmp eq i64 %245, 0
  %247 = select i1 %246, i8 1, i8 %215
  br label %248

248:                                              ; preds = %227, %222, %232, %242, %237
  %249 = phi i8 [ %247, %242 ], [ %215, %237 ], [ %236, %232 ], [ 0, %222 ], [ 0, %227 ]
  %250 = getelementptr inbounds %struct.cgraph_edge, ptr %214, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !180
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %213, !prof !247, !llvm.loop !248

253:                                              ; preds = %248, %220, %209
  %254 = phi i8 [ 0, %209 ], [ 1, %220 ], [ %249, %248 ]
  %255 = getelementptr inbounds %struct.cgraph_node, ptr %198, i64 0, i32 16
  %256 = load ptr, ptr %255, align 8, !tbaa !220
  %257 = getelementptr inbounds %struct.ipa_dfs_info, ptr %256, i64 0, i32 4
  %258 = load ptr, ptr %257, align 8, !tbaa !221
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %197, !prof !249

260:                                              ; preds = %253, %197, %204
  %261 = phi i8 [ %254, %253 ], [ 1, %197 ], [ 1, %204 ]
  br i1 %196, label %299, label %262, !prof !224

262:                                              ; preds = %260
  %263 = icmp eq i8 %261, 0
  br label %264

264:                                              ; preds = %262, %293
  %265 = phi ptr [ %195, %262 ], [ %297, %293 ]
  %266 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %265) #18
  %267 = load ptr, ptr %265, align 8, !tbaa !206
  %268 = load i64, ptr %267, align 8
  %269 = and i64 %268, 33554432
  %270 = icmp eq i64 %269, 0
  br i1 %263, label %271, label %290, !prof !242

271:                                              ; preds = %264
  br i1 %270, label %272, label %293, !prof !250

272:                                              ; preds = %271
  tail call void @cgraph_set_nothrow_flag(ptr noundef nonnull %265, i8 noundef zeroext 1) #17
  %273 = getelementptr inbounds %struct.cgraph_node, ptr %265, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !180
  %275 = icmp eq ptr %274, null
  br i1 %275, label %284, label %276, !prof !251

276:                                              ; preds = %272, %276
  %277 = phi ptr [ %282, %276 ], [ %274, %272 ]
  %278 = getelementptr inbounds %struct.cgraph_edge, ptr %277, i64 0, i32 14
  %279 = load i8, ptr %278, align 2
  %280 = and i8 %279, -5
  store i8 %280, ptr %278, align 2
  %281 = getelementptr inbounds %struct.cgraph_edge, ptr %277, i64 0, i32 4
  %282 = load ptr, ptr %281, align 8, !tbaa !180
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %276, !prof !252, !llvm.loop !253

284:                                              ; preds = %276, %272
  %285 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %286 = icmp eq ptr %285, null
  br i1 %286, label %293, label %287, !prof !254

287:                                              ; preds = %284
  %288 = tail call ptr @cgraph_node_name(ptr noundef nonnull %265) #17
  %289 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %285, ptr noundef nonnull @.str.7, ptr noundef %288) #18
  br label %293

290:                                              ; preds = %264
  br i1 %270, label %291, label %293

291:                                              ; preds = %290
  %292 = getelementptr inbounds %struct.funct_state_d, ptr %266, i64 0, i32 4
  store i8 1, ptr %292, align 2, !tbaa !241
  br label %293

293:                                              ; preds = %271, %284, %287, %290, %291
  %294 = getelementptr inbounds %struct.cgraph_node, ptr %265, i64 0, i32 16
  %295 = load ptr, ptr %294, align 8, !tbaa !220
  %296 = getelementptr inbounds %struct.ipa_dfs_info, ptr %295, i64 0, i32 4
  %297 = load ptr, ptr %296, align 8, !tbaa !221
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %264, !prof !249, !llvm.loop !255

299:                                              ; preds = %293, %192, %260
  %300 = add nuw nsw i64 %193, 1
  %301 = icmp eq i64 %300, %188
  br i1 %301, label %189, label %192, !prof !256, !llvm.loop !257

302:                                              ; preds = %189, %313
  %303 = phi ptr [ %315, %313 ], [ %190, %189 ]
  %304 = getelementptr inbounds %struct.cgraph_node, ptr %303, i64 0, i32 16
  %305 = load ptr, ptr %304, align 8, !tbaa !220
  %306 = icmp eq ptr %305, null
  br i1 %306, label %308, label %307, !prof !237

307:                                              ; preds = %302
  tail call void @free(ptr noundef nonnull %305) #18
  store ptr null, ptr %304, align 8, !tbaa !220
  br label %308

308:                                              ; preds = %307, %302
  %309 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %303) #17
  %310 = icmp ugt i32 %309, 1
  br i1 %310, label %311, label %313, !prof !258

311:                                              ; preds = %308
  %312 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %303) #18
  tail call void @free(ptr noundef %312) #18
  br label %313

313:                                              ; preds = %308, %311
  %314 = getelementptr inbounds %struct.cgraph_node, ptr %303, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !180
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %302, !prof !238, !llvm.loop !259

317:                                              ; preds = %313, %189
  tail call void @free(ptr noundef %3) #18
  tail call fastcc void @VEC_funct_state_heap_free() #18
  tail call fastcc void @finish_state() #18
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @generate_summary() #1 !prof !183 !PGOFuncName !260 {
  tail call fastcc void @register_hooks() #18
  %1 = tail call ptr @pointer_set_create() #17
  store ptr %1, ptr @visited_nodes, align 8, !tbaa !180
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !180
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4, !prof !187

4:                                                ; preds = %0, %10
  %5 = phi ptr [ %12, %10 ], [ %2, %0 ]
  %6 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %5) #17
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %10, !prof !261

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @analyze_function(ptr noundef nonnull %5, i8 noundef zeroext 1) #18
  tail call fastcc void @set_function_state(ptr noundef nonnull %5, ptr noundef %9) #18
  br label %10

10:                                               ; preds = %4, %8
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !180
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !prof !262, !llvm.loop !263

14:                                               ; preds = %10
  %15 = load ptr, ptr @visited_nodes, align 8, !tbaa !180
  br label %16

16:                                               ; preds = %14, %0
  %17 = phi ptr [ %15, %14 ], [ %1, %0 ]
  tail call void @pointer_set_destroy(ptr noundef %17) #17
  store ptr null, ptr @visited_nodes, align 8, !tbaa !180
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pure_const_write_summary(ptr noundef %0) #1 !prof !264 !PGOFuncName !265 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  %3 = tail call ptr @lto_create_simple_output_block(i32 noundef 5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %4 = tail call fastcc ptr @csi_start(ptr noundef %0) #18
  store ptr %4, ptr %2, align 8, !tbaa.struct !266
  %5 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %5, align 8, !tbaa.struct !267
  %6 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #18, !range !227
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
  %26 = tail call fastcc zeroext i8 @csi_end_p(ptr %24, i32 %25) #18, !range !227
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %8, label %28, !llvm.loop !268

28:                                               ; preds = %22
  %29 = zext i32 %23 to i64
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi i64 [ 0, %1 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.lto_simple_output_block, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !269
  tail call void @lto_output_uleb128_stream(ptr noundef %33, i64 noundef %31) #17
  store ptr %4, ptr %2, align 8, !tbaa.struct !266
  store i32 0, ptr %5, align 8, !tbaa.struct !267
  %34 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #18, !range !227
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
  %50 = load ptr, ptr %37, align 8, !tbaa !271
  %51 = getelementptr inbounds %struct.lto_out_decl_state, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !272
  %53 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %52, ptr noundef nonnull %41) #17
  %54 = load ptr, ptr %32, align 8, !tbaa !269
  %55 = sext i32 %53 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %54, i64 noundef %55) #17
  %56 = tail call ptr @bitpack_create() #17
  %57 = load i32, ptr %47, align 4, !tbaa !189
  %58 = zext i32 %57 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %58, i32 noundef 2) #17
  %59 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !195
  %61 = zext i32 %60 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %61, i32 noundef 2) #17
  %62 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 2
  %63 = load i8, ptr %62, align 4, !tbaa !194
  %64 = zext i8 %63 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %64, i32 noundef 1) #17
  %65 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !191
  %67 = zext i8 %66 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %67, i32 noundef 1) #17
  %68 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 4
  %69 = load i8, ptr %68, align 2, !tbaa !241
  %70 = zext i8 %69 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %70, i32 noundef 1) #17
  %71 = load ptr, ptr %32, align 8, !tbaa !269
  tail call void @lto_output_bitpack(ptr noundef %71, ptr noundef %56) #17
  tail call void @bitpack_delete(ptr noundef %56) #17
  br label %72

72:                                               ; preds = %38, %46, %49
  call fastcc void @csi_next(ptr noundef nonnull %2) #18
  %73 = load ptr, ptr %2, align 8
  %74 = load i32, ptr %5, align 8
  %75 = tail call fastcc zeroext i8 @csi_end_p(ptr %73, i32 %74) #18, !range !227
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %38, label %77, !llvm.loop !274

77:                                               ; preds = %72, %30
  tail call void @lto_destroy_simple_output_block(ptr noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pure_const_read_summary() #1 !prof !264 !PGOFuncName !275 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #17
  tail call fastcc void @register_hooks() #18
  %4 = load ptr, ptr %3, align 8, !tbaa !180
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
  %22 = load ptr, ptr %16, align 8, !tbaa !276
  %23 = call ptr @lto_cgraph_encoder_deref(ptr noundef %22, i32 noundef %21) #17
  call fastcc void @set_function_state(ptr noundef %23, ptr noundef %19) #18
  %24 = call ptr @lto_input_bitpack(ptr noundef nonnull %9) #17
  %25 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 2) #17
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %19, align 4, !tbaa !189
  %27 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 2) #17
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 1
  store i32 %28, ptr %29, align 4, !tbaa !195
  %30 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 2
  store i8 %31, ptr %32, align 4, !tbaa !194
  %33 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  store i8 %34, ptr %35, align 1, !tbaa !191
  %36 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 4
  store i8 %37, ptr %38, align 2, !tbaa !241
  call void @bitpack_delete(ptr noundef %24) #17
  %39 = add nuw i32 %18, 1
  %40 = icmp eq i32 %39, %13
  br i1 %40, label %41, label %17, !llvm.loop !278

41:                                               ; preds = %17, %11
  %42 = load ptr, ptr %1, align 8, !tbaa !180
  %43 = load i64, ptr %2, align 8, !tbaa !279
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %7, i32 noundef 5, ptr noundef nonnull %9, ptr noundef %42, i64 noundef %43) #17
  br label %44

44:                                               ; preds = %41, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  %45 = add i32 %8, 1
  %46 = zext i32 %8 to i64
  %47 = getelementptr inbounds ptr, ptr %3, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !180
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %6, !llvm.loop !280

50:                                               ; preds = %44, %0
  ret void
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
define internal fastcc ptr @get_function_state(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !281 !PGOFuncName !282 {
  %2 = load ptr, ptr @funct_state_vec, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !283

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef nonnull %2) #18
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !284
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %11, !prof !285

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
define internal fastcc noundef zeroext i8 @self_recursive_p(ptr noundef readonly %0) unnamed_addr #4 !prof !286 !PGOFuncName !287 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !180
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9, !prof !288

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !180
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !289, !llvm.loop !290

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %5, !prof !291

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
define internal zeroext i8 @ignore_edge(ptr nocapture noundef readonly %0) #7 !prof !292 !PGOFuncName !293 {
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
define internal fastcc void @VEC_funct_state_heap_free() unnamed_addr #8 !prof !183 !PGOFuncName !294 {
  %1 = load ptr, ptr @funct_state_vec, align 8, !tbaa !180
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !295

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @funct_state_vec, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @finish_state() unnamed_addr #8 !prof !183 !PGOFuncName !296 {
  %1 = load ptr, ptr @funct_state_vec, align 8, !tbaa !180
  tail call void @free(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_funct_state_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !297 !PGOFuncName !298 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !299

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !300
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_funct_state_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !302 !PGOFuncName !303 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_hooks() unnamed_addr #1 !prof !183 !PGOFuncName !304 {
  %1 = load i1, ptr @register_hooks.init_p, align 1
  br i1 %1, label %6, label %2, !prof !295

2:                                                ; preds = %0
  store i1 true, ptr @register_hooks.init_p, align 1
  %3 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @remove_node_data, ptr noundef null) #17
  store ptr %3, ptr @node_removal_hook_holder, align 8, !tbaa !180
  %4 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @duplicate_node_data, ptr noundef null) #17
  store ptr %4, ptr @node_duplication_hook_holder, align 8, !tbaa !180
  %5 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #17
  store ptr %5, ptr @function_insertion_hook_holder, align 8, !tbaa !180
  br label %6

6:                                                ; preds = %0, %2
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_function_state(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !305 !PGOFuncName !306 {
  %3 = load ptr, ptr @funct_state_vec, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !307

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !284
  br label %13

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef nonnull %3) #18
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !284
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %19, label %13, !prof !308

13:                                               ; preds = %5, %8
  %14 = phi i32 [ %7, %5 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %16 = add nsw i32 %14, 1
  tail call fastcc void @VEC_funct_state_heap_safe_grow_cleared(i32 noundef %16) #18
  %17 = load ptr, ptr @funct_state_vec, align 8
  %18 = load i32, ptr %15, align 8, !tbaa !284
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ %18, %13 ], [ %11, %8 ]
  %21 = phi ptr [ %17, %13 ], [ %3, %8 ]
  tail call fastcc void @VEC_funct_state_base_replace(ptr noundef %21, i32 noundef %20, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @analyze_function(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !prof !309 !PGOFuncName !310 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.loop_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !206
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %8 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 12) #17
  store i32 0, ptr %8, align 4, !tbaa !189
  %9 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 1
  store i32 2, ptr %9, align 4, !tbaa !195
  %10 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 2
  store i8 1, ptr %10, align 4, !tbaa !194
  %11 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 3
  store i8 0, ptr %11, align 1, !tbaa !191
  %12 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 4
  store i8 0, ptr %12, align 2, !tbaa !241
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !311

15:                                               ; preds = %2
  %16 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #17
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.10, ptr noundef %16) #18
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !312
  tail call void @push_cfun(ptr noundef %20) #17
  store ptr %6, ptr @current_function_decl, align 8, !tbaa !180
  %21 = load ptr, ptr @cfun, align 8, !tbaa !180
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !313
  %24 = load ptr, ptr %23, align 8, !tbaa !315
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !317
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !319
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %56, label %30, !prof !320

30:                                               ; preds = %18, %47
  %31 = phi ptr [ %49, %47 ], [ %26, %18 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %31) #18
  %32 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !227
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %47, !prof !321

34:                                               ; preds = %30, %44
  call fastcc void @check_stmt(ptr noundef nonnull %3, ptr noundef nonnull %8, i8 noundef zeroext %1) #18
  %35 = load i32, ptr %8, align 4, !tbaa !189
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %44, !prof !322

37:                                               ; preds = %34
  %38 = load i8, ptr %11, align 1, !tbaa !191
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40, !prof !323

40:                                               ; preds = %37
  %41 = load i8, ptr %12, align 2, !tbaa !241
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43, !prof !324

43:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %56

44:                                               ; preds = %34, %37, %40
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %45 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !227
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %34, label %47, !prof !325, !llvm.loop !326

47:                                               ; preds = %44, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !317
  %50 = load ptr, ptr @cfun, align 8, !tbaa !180
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !313
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !319
  %55 = icmp eq ptr %49, %54
  br i1 %55, label %56, label %30, !prof !327, !llvm.loop !328

56:                                               ; preds = %47, %18, %43
  %57 = load i32, ptr %8, align 4, !tbaa !189
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %98, label %59, !prof !329

59:                                               ; preds = %56
  %60 = tail call zeroext i8 @mark_dfs_back_edges() #17
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %98, label %62, !prof !330

62:                                               ; preds = %59
  tail call void @loop_optimizer_init(i32 noundef 15) #17
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65, !prof !331

65:                                               ; preds = %62
  %66 = load i32, ptr @dump_flags, align 4, !tbaa !175
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @flow_loops_dump(ptr noundef nonnull %63, ptr noundef null, i32 noundef 0) #17
  br label %70

70:                                               ; preds = %69, %65, %62
  %71 = tail call zeroext i8 @mark_irreducible_loops() #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73, !prof !331

73:                                               ; preds = %70
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 26, i64 1, ptr nonnull %74)
  br label %78

78:                                               ; preds = %76, %73
  store i8 1, ptr %11, align 1, !tbaa !191
  br label %97

79:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  tail call void @scev_initialize() #17
  call fastcc void @fel_init(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %80 = load ptr, ptr %5, align 8, !tbaa !180
  %81 = icmp eq ptr %80, null
  br i1 %81, label %96, label %82, !prof !332

82:                                               ; preds = %79, %93
  %83 = phi ptr [ %94, %93 ], [ %80, %79 ]
  %84 = tail call zeroext i8 @finite_loop_p(ptr noundef nonnull %83) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %93, !prof !333

86:                                               ; preds = %82
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89, !prof !334

89:                                               ; preds = %86
  %90 = load i32, ptr %83, align 8, !tbaa !335
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.12, i32 noundef %90) #18
  br label %92

92:                                               ; preds = %89, %86
  store i8 1, ptr %11, align 1, !tbaa !191
  br label %96

93:                                               ; preds = %82
  call fastcc void @fel_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %94 = load ptr, ptr %5, align 8, !tbaa !180
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %82, !prof !339, !llvm.loop !340

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
  br i1 %101, label %108, label %102, !prof !341

102:                                              ; preds = %98
  store i32 0, ptr %8, align 4, !tbaa !189
  store i32 0, ptr %9, align 4, !tbaa !195
  %103 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 268435456
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108, !prof !342

107:                                              ; preds = %102
  store i8 0, ptr %11, align 1, !tbaa !191
  store i8 0, ptr %10, align 4, !tbaa !194
  br label %108

108:                                              ; preds = %102, %107, %98
  %109 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 134217728
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113, !prof !343

113:                                              ; preds = %108
  %114 = load i32, ptr %8, align 4, !tbaa !189
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116, !prof !344

116:                                              ; preds = %113
  store i32 1, ptr %8, align 4, !tbaa !189
  br label %117

117:                                              ; preds = %116, %113
  store i32 1, ptr %9, align 4, !tbaa !195
  %118 = load i32, ptr %109, align 8
  %119 = and i32 %118, 268435456
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122, !prof !345

121:                                              ; preds = %117
  store i8 0, ptr %11, align 1, !tbaa !191
  store i8 0, ptr %10, align 4, !tbaa !194
  br label %122

122:                                              ; preds = %117, %121, %108
  %123 = load i64, ptr %6, align 8
  %124 = and i64 %123, 33554432
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %127, label %126, !prof !346

126:                                              ; preds = %122
  store i8 0, ptr %12, align 2, !tbaa !241
  br label %127

127:                                              ; preds = %126, %122
  tail call void @pop_cfun() #17
  store ptr %7, ptr @current_function_decl, align 8, !tbaa !180
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %129 = icmp eq ptr %128, null
  br i1 %129, label %154, label %130, !prof !311

130:                                              ; preds = %127
  %131 = load i8, ptr %11, align 1, !tbaa !191
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 29, i64 1, ptr nonnull %128)
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i8, ptr %12, align 2, !tbaa !241
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %140 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 30, i64 1, ptr %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, ptr %8, align 4, !tbaa !189
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %146 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 27, i64 1, ptr %145)
  %147 = load i32, ptr %8, align 4, !tbaa !189
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi i32 [ %147, %144 ], [ %142, %141 ]
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %153 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 26, i64 1, ptr %152)
  br label %154

154:                                              ; preds = %127, %151, %148
  ret ptr %8
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_node_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 !prof !347 !PGOFuncName !348 {
  %3 = tail call fastcc ptr @get_function_state(ptr noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !349

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
define internal void @duplicate_node_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 !prof !350 !PGOFuncName !351 {
  %4 = tail call fastcc ptr @get_function_state(ptr noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !352

6:                                                ; preds = %3
  %7 = tail call ptr @xmalloc(i64 noundef 12) #17
  %8 = tail call fastcc ptr @get_function_state(ptr noundef %1) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !353

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 621, ptr noundef nonnull @.str.9) #17
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
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #1 !prof !264 !PGOFuncName !354 {
  %3 = tail call i32 @cgraph_function_body_availability(ptr noundef %0) #17
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @pointer_set_create() #17
  store ptr %6, ptr @visited_nodes, align 8, !tbaa !180
  %7 = tail call fastcc ptr @analyze_function(ptr noundef %0, i8 noundef zeroext 1) #18
  tail call fastcc void @set_function_state(ptr noundef %0, ptr noundef %7) #18
  %8 = load ptr, ptr @visited_nodes, align 8, !tbaa !180
  tail call void @pointer_set_destroy(ptr noundef %8) #17
  store ptr null, ptr @visited_nodes, align 8, !tbaa !180
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
define internal fastcc void @VEC_funct_state_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #1 !prof !355 !PGOFuncName !356 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !180
  %3 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef %2) #18
  tail call fastcc void @VEC_funct_state_heap_safe_grow(i32 noundef %0) #18
  %4 = load ptr, ptr @funct_state_vec, align 8, !tbaa !180
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
define internal fastcc void @VEC_funct_state_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !305 !PGOFuncName !357 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !180
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_funct_state_heap_safe_grow(i32 noundef %0) unnamed_addr #1 !prof !355 !PGOFuncName !358 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !180
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !359

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !300
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_funct_state_heap_reserve_exact(i32 noundef %8) #18
  %9 = load ptr, ptr @funct_state_vec, align 8, !tbaa !180, !nonnull !360, !noundef !360
  store i32 %0, ptr %9, align 8, !tbaa !300
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_funct_state_base_address(ptr noundef readnone %0) unnamed_addr #11 !prof !355 !PGOFuncName !361 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !362
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_funct_state_heap_reserve_exact(i32 noundef %0) unnamed_addr #1 !prof !355 !PGOFuncName !363 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !180
  %3 = tail call fastcc i32 @VEC_funct_state_base_space(ptr noundef %2, i32 noundef %0) #18, !range !364
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !365

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #17
  store ptr %6, ptr @funct_state_vec, align 8, !tbaa !180
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_funct_state_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !355 !PGOFuncName !366 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !359

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !367
  %7 = load i32, ptr %0, align 8, !tbaa !300
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
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #13 !prof !368 !PGOFuncName !369 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !370
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !372
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !373
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !374 !PGOFuncName !375 {
  %2 = load ptr, ptr %0, align 8, !tbaa !370
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_stmt(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !376 !PGOFuncName !377 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %5 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %4) #18, !range !227
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %87, !prof !378

7:                                                ; preds = %3
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !378

10:                                               ; preds = %7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 12, i64 1, ptr nonnull %8)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !180
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %4, i32 noundef 0, i32 noundef 0) #17
  br label %13

13:                                               ; preds = %10, %7
  %14 = tail call zeroext i8 @walk_stmt_load_store_ops(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @check_load, ptr noundef nonnull @check_store) #17
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %4) #18, !range !379
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %40, label %17, !prof !380

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %4) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %40, label %20, !prof !381

20:                                               ; preds = %17
  %21 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !175
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 22, i64 1, ptr nonnull %24)
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 3
  store i8 1, ptr %29, align 1, !tbaa !191
  br label %30

30:                                               ; preds = %28, %20
  %31 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef %4) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %34)
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 4
  store i8 1, ptr %39, align 2, !tbaa !241
  br label %40

40:                                               ; preds = %30, %38, %17, %13
  %41 = tail call fastcc i32 @gimple_code(ptr noundef %4) #18, !range !379
  %42 = trunc i32 %41 to i8
  switch i8 %42, label %87 [
    i8 8, label %46
    i8 4, label %47
    i8 7, label %43
  ], !prof !382

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %4) #18, !range !379
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
  br i1 %52, label %87, label %53, !prof !383

53:                                               ; preds = %47
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 36, i64 1, ptr nonnull %54)
  br label %58

58:                                               ; preds = %56, %53
  store i32 2, ptr %1, align 4, !tbaa !189
  br label %87

59:                                               ; preds = %43, %73
  %60 = phi i32 [ %74, %73 ], [ 0, %43 ]
  %61 = tail call fastcc ptr @gimple_asm_clobber_op(ptr noundef %4, i32 noundef %60) #18
  %62 = getelementptr inbounds %struct.tree_list, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !312
  %64 = load ptr, ptr @memory_identifier_string, align 8, !tbaa !180
  %65 = tail call i32 @simple_cst_equal(ptr noundef %63, ptr noundef %64) #17
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 40, i64 1, ptr nonnull %68)
  br label %72

72:                                               ; preds = %70, %67
  store i32 2, ptr %1, align 4, !tbaa !189
  br label %73

73:                                               ; preds = %72, %59
  %74 = add nuw nsw i32 %60, 1
  %75 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %4) #18, !range !379
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %59, label %77, !llvm.loop !384

77:                                               ; preds = %73, %43
  %78 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %4) #18, !range !227
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 30, i64 1, ptr nonnull %81)
  br label %85

85:                                               ; preds = %83, %80
  store i32 2, ptr %1, align 4, !tbaa !189
  %86 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 3
  store i8 1, ptr %86, align 1, !tbaa !191
  br label %87

87:                                               ; preds = %46, %58, %47, %40, %77, %85, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #13 !prof !376 !PGOFuncName !385 {
  %2 = load ptr, ptr %0, align 8, !tbaa !370
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  store ptr %4, ptr %0, align 8, !tbaa !370
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
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !388 !PGOFuncName !389 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !390
  %4 = load ptr, ptr @cfun, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !392
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !393

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !394
  store ptr null, ptr %1, align 8, !tbaa !180
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #18
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #18
  store ptr %11, ptr %0, align 8, !tbaa !394
  %12 = load ptr, ptr @cfun, align 8, !tbaa !180
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !392
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !395
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !335
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !397

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !394
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #18
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !398
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !399

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !400
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !401

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !402, !llvm.loop !403

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @finite_loop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !404 !PGOFuncName !405 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !390
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !394
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #18, !range !364
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !406

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !390
  %13 = load i32, ptr %3, align 4, !tbaa !175
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #18
  store ptr %14, ptr %1, align 8, !tbaa !180
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !407, !llvm.loop !408

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #18
  store ptr null, ptr %1, align 8, !tbaa !180
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
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !368 !PGOFuncName !409 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !410
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !411

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !312
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !412

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !413
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 !prof !368 !PGOFuncName !415 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !412

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !416
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !376 !PGOFuncName !418 {
  %2 = load ptr, ptr %0, align 8, !tbaa !370
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !376 !PGOFuncName !420 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !379
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @walk_stmt_load_store_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @check_load(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 !prof !421 !PGOFuncName !422 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !175
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10, !prof !423

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
define internal noundef zeroext i8 @check_store(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 !prof !424 !PGOFuncName !425 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !175
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10, !prof !426

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
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !427 !PGOFuncName !428 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_call(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !429 !PGOFuncName !430 {
  %4 = tail call i32 @gimple_call_flags(ptr noundef %1) #17
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #18
  %6 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %1) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %44, label %8, !prof !431

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
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 31, i64 1, ptr nonnull %28)
  br label %32

32:                                               ; preds = %30, %27
  store i8 1, ptr %14, align 1, !tbaa !191
  br label %33

33:                                               ; preds = %32, %24
  br i1 %10, label %34, label %40

34:                                               ; preds = %33
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 33, i64 1, ptr nonnull %35)
  br label %39

39:                                               ; preds = %37, %34
  store i8 1, ptr %15, align 2, !tbaa !241
  br label %40

40:                                               ; preds = %16, %20, %39, %33
  %41 = add nuw i32 %17, 1
  %42 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #18
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %16, label %44, !llvm.loop !432

44:                                               ; preds = %40, %8, %3
  %45 = phi i1 [ false, %3 ], [ %10, %8 ], [ %10, %40 ]
  %46 = icmp ne ptr %5, null
  br i1 %46, label %47, label %71, !prof !433

47:                                               ; preds = %44
  %48 = tail call i32 @setjmp_call_p(ptr noundef nonnull %5) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50, !prof !434

50:                                               ; preds = %47
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !435

53:                                               ; preds = %50
  %54 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 29, i64 1, ptr nonnull %51)
  br label %55

55:                                               ; preds = %53, %50
  %56 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %56, align 1, !tbaa !191
  store i32 2, ptr %0, align 4, !tbaa !189
  br label %57

57:                                               ; preds = %55, %47
  %58 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 6144
  %61 = icmp eq i32 %60, 6144
  br i1 %61, label %62, label %71, !prof !436

62:                                               ; preds = %57
  %63 = and i32 %59, 2047
  switch i32 %63, label %71 [
    i32 490, label %64
    i32 522, label %64
  ], !prof !437

64:                                               ; preds = %62, %62
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 48, i64 1, ptr nonnull %65)
  br label %69

69:                                               ; preds = %67, %64
  store i32 2, ptr %0, align 4, !tbaa !189
  %70 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %70, align 1, !tbaa !191
  br label %71

71:                                               ; preds = %57, %62, %69, %44
  %72 = icmp ne i8 %2, 0
  %73 = load ptr, ptr @current_function_decl, align 8
  %74 = icmp ne ptr %5, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %78, label %76, !prof !438

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %77, align 1, !tbaa !191
  br label %144

78:                                               ; preds = %71
  %79 = and i1 %72, %46
  br i1 %79, label %144, label %80, !prof !439

80:                                               ; preds = %78
  br i1 %7, label %91, label %81, !prof !440

81:                                               ; preds = %80
  %82 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !175
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 23, i64 1, ptr nonnull %85)
  br label %89

89:                                               ; preds = %87, %84
  %90 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %90, align 1, !tbaa !191
  br label %91

91:                                               ; preds = %89, %81, %80
  br i1 %45, label %92, label %106, !prof !441

92:                                               ; preds = %91
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %1) #17
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %93, ptr noundef nonnull @.str.37, i32 noundef %96) #18
  br i1 %46, label %98, label %104

98:                                               ; preds = %95
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %100 = tail call ptr @decl_assembler_name(ptr noundef nonnull %5) #17
  %101 = getelementptr inbounds %struct.tree_identifier, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !312
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.38, ptr noundef %102) #18
  br label %104

104:                                              ; preds = %95, %98, %92
  %105 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 4
  store i8 1, ptr %105, align 2, !tbaa !241
  br label %106

106:                                              ; preds = %104, %91
  %107 = and i32 %4, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %109, !prof !442

109:                                              ; preds = %106
  br i1 %46, label %110, label %144, !prof !443

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 268435456
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %144, label %115, !prof !444

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %116, align 1, !tbaa !191
  br label %144

117:                                              ; preds = %106
  %118 = and i32 %4, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %137, label %120, !prof !445

120:                                              ; preds = %117
  br i1 %46, label %121, label %128, !prof !446

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 268435456
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126, !prof !447

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %127, align 1, !tbaa !191
  br label %128

128:                                              ; preds = %126, %121, %120
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !446

131:                                              ; preds = %128
  %132 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 36, i64 1, ptr nonnull %129)
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i32, ptr %0, align 4, !tbaa !189
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144, !prof !448

136:                                              ; preds = %133
  store i32 1, ptr %0, align 4, !tbaa !189
  br label %144

137:                                              ; preds = %117
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140, !prof !449

140:                                              ; preds = %137
  %141 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 43, i64 1, ptr nonnull %138)
  br label %142

142:                                              ; preds = %140, %137
  store i32 2, ptr %0, align 4, !tbaa !189
  %143 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %143, align 1, !tbaa !191
  br label %144

144:                                              ; preds = %78, %142, %136, %133, %109, %110, %115, %76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #1 !prof !450 !PGOFuncName !451 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !264 !PGOFuncName !452 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !312
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !264 !PGOFuncName !453 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !312
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 2688, ptr noundef nonnull @.str.9) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !312
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !312
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #18
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !264 !PGOFuncName !454 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @check_decl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #14 !prof !455 !PGOFuncName !456 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 524288
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7, !prof !457

7:                                                ; preds = %3
  store i32 2, ptr %0, align 4, !tbaa !189
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10, !prof !458

10:                                               ; preds = %7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 38, i64 1, ptr nonnull %8)
  br label %69

12:                                               ; preds = %3
  %13 = and i64 %4, 67108864
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %14, i1 %18, i1 false
  br i1 %19, label %69, label %20, !prof !459

20:                                               ; preds = %12
  %21 = and i64 %16, 8192
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23, !prof !460

23:                                               ; preds = %20
  store i32 2, ptr %0, align 4, !tbaa !189
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %25 = icmp eq ptr %24, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 50, i64 1, ptr nonnull %24)
  br label %69

28:                                               ; preds = %20
  %29 = icmp eq i8 %2, 0
  br i1 %29, label %35, label %30, !prof !461

30:                                               ; preds = %28
  store i32 2, ptr %0, align 4, !tbaa !189
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %32 = icmp eq ptr %31, null
  br i1 %32, label %69, label %33, !prof !462

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 49, i64 1, ptr nonnull %31)
  br label %69

35:                                               ; preds = %28
  %36 = and i64 %16, 33554432
  %37 = and i64 %4, 134217728
  %38 = or disjoint i64 %36, %37
  %39 = icmp eq i64 %38, 0
  %40 = and i64 %4, 1048576
  %41 = icmp eq i64 %40, 0
  br i1 %39, label %59, label %42, !prof !463

42:                                               ; preds = %35
  br i1 %41, label %50, label %43, !prof !464

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !312
  %46 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 2048
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %50, !prof !465

50:                                               ; preds = %43, %42
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !466

53:                                               ; preds = %50
  %54 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 36, i64 1, ptr nonnull %51)
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, ptr %0, align 4, !tbaa !189
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69, !prof !467

58:                                               ; preds = %55
  store i32 1, ptr %0, align 4, !tbaa !189
  br label %69

59:                                               ; preds = %35
  br i1 %41, label %60, label %69, !prof !468

60:                                               ; preds = %59
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !469

63:                                               ; preds = %60
  %64 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 36, i64 1, ptr nonnull %61)
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, ptr %0, align 4, !tbaa !189
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69, !prof !470

68:                                               ; preds = %65
  store i32 1, ptr %0, align 4, !tbaa !189
  br label %69

69:                                               ; preds = %12, %65, %68, %59, %58, %55, %43, %30, %33, %23, %26, %7, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_op(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !471 !PGOFuncName !472 {
  %4 = tail call ptr @get_base_address(ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6, !prof !473

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 524288
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10, !prof !474

10:                                               ; preds = %6
  store i32 2, ptr %0, align 4, !tbaa !189
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 44, i64 1, ptr nonnull %11)
  br label %50

15:                                               ; preds = %6
  %16 = trunc i64 %7 to i32
  %17 = and i32 %16, 65535
  %18 = add nsw i32 %17, -47
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %34, !prof !475

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !312
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %34, !prof !476

26:                                               ; preds = %20
  %27 = tail call zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef nonnull %22) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34, !prof !477

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32, !prof !478

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 39, i64 1, ptr nonnull %30)
  br label %50

34:                                               ; preds = %15, %3, %26, %20
  %35 = icmp eq i8 %2, 0
  br i1 %35, label %41, label %36, !prof !479

36:                                               ; preds = %34
  store i32 2, ptr %0, align 4, !tbaa !189
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39, !prof !480

39:                                               ; preds = %36
  %40 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 41, i64 1, ptr nonnull %37)
  br label %50

41:                                               ; preds = %34
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !481

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 35, i64 1, ptr nonnull %42)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, ptr %0, align 4, !tbaa !189
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !prof !482

49:                                               ; preds = %46
  store i32 1, ptr %0, align 4, !tbaa !189
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
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !429 !PGOFuncName !483 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #18
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !433

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !312
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !264 !PGOFuncName !484 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !312
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !485 !PGOFuncName !486 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !227
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !487

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !180
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
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !429 !PGOFuncName !488 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !485 !PGOFuncName !489 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !379
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !485 !PGOFuncName !490 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !279
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !487

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !485 !PGOFuncName !491 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !379
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !485 !PGOFuncName !492 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !175
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !388 !PGOFuncName !493 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !prof !388 !PGOFuncName !494 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !180
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !392
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !393

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !495
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #18
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !496 !PGOFuncName !497 {
  %3 = load i32, ptr %0, align 4, !tbaa !498
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !498
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !500 !PGOFuncName !501 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !502
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !503

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
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !504 !PGOFuncName !505 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !506

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !507
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !509 !PGOFuncName !510 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !404 !PGOFuncName !511 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !512

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !498
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !513

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !175
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !175
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #0 !prof !514 !PGOFuncName !515 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !392
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !495
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !516 !PGOFuncName !517 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !518

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !180
  ret void
}

; Function Attrs: optsize
declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #11 !prof !264 !PGOFuncName !519 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 !prof !264 !PGOFuncName !520 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !521
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #18
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 !prof !264 !PGOFuncName !523 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !521
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !264 !PGOFuncName !524 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !390
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !390
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
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !264 !PGOFuncName !525 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !526
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !264 !PGOFuncName !528 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !180
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

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @local_pure_const() #1 !prof !529 !PGOFuncName !530 {
  %1 = tail call zeroext i8 @function_called_by_processed_nodes_p() #17
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3, !prof !531

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %5 = icmp eq ptr %4, null
  br i1 %5, label %125, label %6, !prof !532

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 45, i64 1, ptr nonnull %4)
  br label %125

8:                                                ; preds = %0
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %10 = tail call ptr @cgraph_node(ptr noundef %9) #17
  %11 = tail call i32 @cgraph_function_body_availability(ptr noundef %10) #17
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %18, !prof !533

13:                                               ; preds = %8
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %15 = icmp eq ptr %14, null
  br i1 %15, label %125, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 40, i64 1, ptr nonnull %14)
  br label %125

18:                                               ; preds = %8
  %19 = tail call fastcc ptr @analyze_function(ptr noundef %10, i8 noundef zeroext 0) #18
  %20 = load i32, ptr %19, align 4, !tbaa !189
  switch i32 %20, label %91 [
    i32 0, label %21
    i32 1, label %56
  ], !prof !534

21:                                               ; preds = %18
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 1048576
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39, !prof !535

26:                                               ; preds = %21
  tail call void @cgraph_set_readonly_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %27 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !191
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext %28) #17
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %30 = icmp eq ptr %29, null
  br i1 %30, label %91, label %31, !prof !536

31:                                               ; preds = %26
  %32 = load i8, ptr %27, align 1, !tbaa !191
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr @.str.4, ptr @.str.3
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !537
  %36 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %37 = tail call ptr %35(ptr noundef %36, i32 noundef 2) #17
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.2, ptr noundef nonnull %34, ptr noundef %37) #18
  br label %91

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.tree_function_decl, ptr %22, i64 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44, !prof !545

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !191
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %91, !prof !546

48:                                               ; preds = %44
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext 0) #17
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %50 = icmp eq ptr %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !537
  %53 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %54 = tail call ptr %52(ptr noundef %53, i32 noundef 2) #17
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.45, ptr noundef %54) #18
  br label %91

56:                                               ; preds = %18
  %57 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 1048576
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %74, !prof !547

61:                                               ; preds = %56
  tail call void @cgraph_set_pure_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %62 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !191
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext %63) #17
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66, !prof !547

66:                                               ; preds = %61
  %67 = load i8, ptr %62, align 1, !tbaa !191
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr @.str.4, ptr @.str.3
  %70 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !537
  %71 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %72 = tail call ptr %70(ptr noundef %71, i32 noundef 2) #17
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.5, ptr noundef nonnull %69, ptr noundef %72) #18
  br label %91

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.tree_function_decl, ptr %57, i64 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 268435456
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %81 = load i8, ptr %80, align 1, !tbaa !191
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext 0) #17
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !537
  %88 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef 2) #17
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %84, ptr noundef nonnull @.str.45, ptr noundef %89) #18
  br label %91

91:                                               ; preds = %18, %66, %61, %83, %86, %79, %74, %31, %26, %48, %51, %44, %39
  %92 = phi i1 [ true, %18 ], [ true, %79 ], [ false, %86 ], [ false, %83 ], [ true, %74 ], [ false, %66 ], [ false, %61 ], [ true, %44 ], [ false, %51 ], [ false, %48 ], [ true, %39 ], [ false, %31 ], [ false, %26 ]
  %93 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 4
  %94 = load i8, ptr %93, align 2, !tbaa !241
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %122, !prof !548

96:                                               ; preds = %91
  %97 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 33554432
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %122, !prof !549

101:                                              ; preds = %96
  tail call void @cgraph_set_nothrow_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %102 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !180
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105, !prof !550

105:                                              ; preds = %101, %105
  %106 = phi ptr [ %111, %105 ], [ %103, %101 ]
  %107 = getelementptr inbounds %struct.cgraph_edge, ptr %106, i64 0, i32 14
  %108 = load i8, ptr %107, align 2
  %109 = and i8 %108, -5
  store i8 %109, ptr %107, align 2
  %110 = getelementptr inbounds %struct.cgraph_edge, ptr %106, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !180
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %105, !prof !551, !llvm.loop !552

113:                                              ; preds = %105, %101
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !180
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116, !prof !553

116:                                              ; preds = %113
  %117 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !537
  %118 = load ptr, ptr @current_function_decl, align 8, !tbaa !180
  %119 = tail call ptr %117(ptr noundef %118, i32 noundef 2) #17
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %114, ptr noundef nonnull @.str.7, ptr noundef %119) #18
  br label %121

121:                                              ; preds = %116, %113
  tail call void @free(ptr noundef %19) #18
  br label %123

122:                                              ; preds = %91, %96
  tail call void @free(ptr noundef nonnull %19) #18
  br i1 %92, label %125, label %123, !prof !554

123:                                              ; preds = %121, %122
  %124 = tail call i32 @execute_fixup_cfg() #17
  br label %125

125:                                              ; preds = %122, %13, %16, %3, %6, %123
  %126 = phi i32 [ %124, %123 ], [ 0, %6 ], [ 0, %3 ], [ 0, %16 ], [ 0, %13 ], [ 0, %122 ]
  ret i32 %126
}

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!172}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!36 = !{ptr @propagate, ptr @xcalloc, i64 1}
!37 = !{ptr @propagate, ptr @cgraph_remove_function_insertion_hook, i64 1}
!38 = !{ptr @propagate, ptr @cgraph_remove_node_duplication_hook, i64 1}
!39 = !{ptr @propagate, ptr @cgraph_remove_node_removal_hook, i64 1}
!40 = !{ptr @propagate, ptr @ipa_utils_reduced_inorder, i64 2}
!41 = !{ptr @propagate, ptr @get_function_state, i64 125752}
!42 = !{ptr @propagate, ptr @cgraph_function_body_availability, i64 107577}
!43 = !{ptr @propagate, ptr @flags_from_decl_or_type, i64 1927}
!44 = !{ptr @propagate, ptr @self_recursive_p, i64 10465}
!45 = !{ptr @propagate, ptr @cgraph_set_readonly_flag, i64 139}
!46 = !{ptr @propagate, ptr @cgraph_set_pure_flag, i64 1025}
!47 = !{ptr @propagate, ptr @cgraph_set_looping_const_or_pure_flag, i64 1165}
!48 = !{ptr @propagate, ptr @free, i64 39922}
!49 = !{ptr @propagate, ptr @cgraph_set_nothrow_flag, i64 205}
!50 = !{ptr @propagate, ptr @VEC_funct_state_heap_free, i64 1}
!51 = !{ptr @propagate, ptr @finish_state, i64 1}
!52 = !{ptr @generate_summary, ptr @register_hooks, i64 1}
!53 = !{ptr @generate_summary, ptr @pointer_set_create, i64 1}
!54 = !{ptr @generate_summary, ptr @cgraph_function_body_availability, i64 3670}
!55 = !{ptr @generate_summary, ptr @analyze_function, i64 3603}
!56 = !{ptr @generate_summary, ptr @set_function_state, i64 3603}
!57 = !{ptr @generate_summary, ptr @pointer_set_destroy, i64 1}
!58 = !{ptr @get_function_state, ptr @VEC_funct_state_base_length, i64 297445}
!59 = !{ptr @get_function_state, ptr @VEC_funct_state_base_index, i64 279837}
!60 = !{ptr @VEC_funct_state_heap_free, ptr @free, i64 1}
!61 = !{ptr @finish_state, ptr @free, i64 1}
!62 = !{ptr @register_hooks, ptr @cgraph_add_node_removal_hook, i64 1}
!63 = !{ptr @register_hooks, ptr @cgraph_add_node_duplication_hook, i64 1}
!64 = !{ptr @register_hooks, ptr @cgraph_add_function_insertion_hook, i64 1}
!65 = !{ptr @set_function_state, ptr @VEC_funct_state_base_length, i64 27258}
!66 = !{ptr @set_function_state, ptr @VEC_funct_state_heap_safe_grow_cleared, i64 17608}
!67 = !{ptr @set_function_state, ptr @VEC_funct_state_base_replace, i64 27260}
!68 = !{ptr @analyze_function, ptr @xcalloc, i64 22425}
!69 = !{ptr @analyze_function, ptr @cgraph_node_name, i64 1}
!70 = !{ptr @analyze_function, ptr @fprintf, i64 2}
!71 = !{ptr @analyze_function, ptr @push_cfun, i64 22425}
!72 = !{ptr @analyze_function, ptr @gsi_start_bb, i64 638560}
!73 = !{ptr @analyze_function, ptr @gsi_end_p, i64 2511174}
!74 = !{ptr @analyze_function, ptr @check_stmt, i64 1872615}
!75 = !{ptr @analyze_function, ptr @gsi_next, i64 1872614}
!76 = !{ptr @analyze_function, ptr @mark_dfs_back_edges, i64 5764}
!77 = !{ptr @analyze_function, ptr @loop_optimizer_init, i64 1532}
!78 = !{ptr @analyze_function, ptr @mark_irreducible_loops, i64 1532}
!79 = !{ptr @analyze_function, ptr @fwrite, i64 3}
!80 = !{ptr @analyze_function, ptr @scev_initialize, i64 1531}
!81 = !{ptr @analyze_function, ptr @fel_init, i64 1531}
!82 = !{ptr @analyze_function, ptr @finite_loop_p, i64 2220}
!83 = !{ptr @analyze_function, ptr @fel_next, i64 785}
!84 = !{ptr @analyze_function, ptr @scev_finalize, i64 1531}
!85 = !{ptr @analyze_function, ptr @loop_optimizer_finalize, i64 1532}
!86 = !{ptr @analyze_function, ptr @pop_cfun, i64 22425}
!87 = !{ptr @remove_node_data, ptr @get_function_state, i64 305}
!88 = !{ptr @remove_node_data, ptr @free, i64 304}
!89 = !{ptr @remove_node_data, ptr @set_function_state, i64 304}
!90 = !{ptr @duplicate_node_data, ptr @get_function_state, i64 59248}
!91 = !{ptr @duplicate_node_data, ptr @xmalloc, i64 19749}
!92 = !{ptr @duplicate_node_data, ptr @fancy_abort, i64 1}
!93 = !{ptr @duplicate_node_data, ptr @set_function_state, i64 19749}
!94 = !{ptr @VEC_funct_state_heap_safe_grow_cleared, ptr @VEC_funct_state_base_length, i64 17608}
!95 = !{ptr @VEC_funct_state_heap_safe_grow_cleared, ptr @VEC_funct_state_heap_safe_grow, i64 17608}
!96 = !{ptr @VEC_funct_state_heap_safe_grow_cleared, ptr @VEC_funct_state_base_address, i64 17608}
!97 = !{ptr @VEC_funct_state_heap_safe_grow, ptr @VEC_funct_state_heap_reserve_exact, i64 17608}
!98 = !{ptr @VEC_funct_state_heap_reserve_exact, ptr @VEC_funct_state_base_space, i64 17608}
!99 = !{ptr @VEC_funct_state_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 17607}
!100 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 638615}
!101 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 638615}
!102 = !{ptr @check_stmt, ptr @gsi_stmt, i64 1872780}
!103 = !{ptr @check_stmt, ptr @is_gimple_debug, i64 1872780}
!104 = !{ptr @check_stmt, ptr @fwrite, i64 8}
!105 = !{ptr @check_stmt, ptr @print_gimple_stmt, i64 1}
!106 = !{ptr @check_stmt, ptr @walk_stmt_load_store_ops, i64 1872779}
!107 = !{ptr @check_stmt, ptr @gimple_code, i64 3745558}
!108 = !{ptr @check_stmt, ptr @stmt_could_throw_p, i64 1625598}
!109 = !{ptr @check_stmt, ptr @stmt_can_throw_external, i64 1}
!110 = !{ptr @check_stmt, ptr @gimple_asm_nclobbers, i64 21}
!111 = !{ptr @check_stmt, ptr @check_call, i64 247180}
!112 = !{ptr @check_stmt, ptr @gimple_label_label, i64 66398}
!113 = !{ptr @check_stmt, ptr @gimple_asm_clobber_op, i64 20}
!114 = !{ptr @check_stmt, ptr @simple_cst_equal, i64 20}
!115 = !{ptr @check_stmt, ptr @gimple_asm_volatile_p, i64 1}
!116 = !{ptr @fel_init, ptr @number_of_loops, i64 1530}
!117 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 1530}
!118 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 5864}
!119 = !{ptr @fel_init, ptr @loop_outer, i64 4675}
!120 = !{ptr @fel_init, ptr @fel_next, i64 1530}
!121 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 2244}
!122 = !{ptr @fel_next, ptr @get_loop, i64 2015}
!123 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 229}
!124 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1872780}
!125 = !{ptr @check_load, ptr @check_decl, i64 194803}
!126 = !{ptr @check_load, ptr @check_op, i64 457123}
!127 = !{ptr @check_store, ptr @check_decl, i64 53943}
!128 = !{ptr @check_store, ptr @check_op, i64 77382}
!129 = !{ptr @check_call, ptr @gimple_call_flags, i64 247180}
!130 = !{ptr @check_call, ptr @gimple_call_fndecl, i64 247180}
!131 = !{ptr @check_call, ptr @stmt_could_throw_p, i64 247180}
!132 = !{ptr @check_call, ptr @stmt_can_throw_external, i64 1}
!133 = !{ptr @check_call, ptr @gimple_num_ops, i64 21}
!134 = !{ptr @check_call, ptr @gimple_op, i64 33}
!135 = !{ptr @check_call, ptr @tree_could_throw_p, i64 13}
!136 = !{ptr @check_call, ptr @fwrite, i64 10}
!137 = !{ptr @check_call, ptr @setjmp_call_p, i64 240188}
!138 = !{ptr @check_call, ptr @lookup_stmt_eh_lp, i64 1}
!139 = !{ptr @check_call, ptr @fprintf, i64 1}
!140 = !{ptr @gimple_label_label, ptr @gimple_op, i64 66397}
!141 = !{ptr @check_decl, ptr @fwrite, i64 5}
!142 = !{ptr @check_op, ptr @get_base_address, i64 534505}
!143 = !{ptr @check_op, ptr @fwrite, i64 4}
!144 = !{ptr @check_op, ptr @ptr_deref_may_alias_global_p, i64 525563}
!145 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 247180}
!146 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 313577}
!147 = !{ptr @gimple_op, ptr @gimple_ops, i64 313576}
!148 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 247180}
!149 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 313577}
!150 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 313577}
!151 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!152 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 313577}
!153 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 313577}
!154 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 1531}
!155 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 1530}
!156 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 3853}
!157 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 2322}
!158 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 2015}
!159 = !{ptr @VEC_int_heap_free, ptr @free, i64 227}
!160 = !{ptr @local_pure_const, ptr @function_called_by_processed_nodes_p, i64 15616}
!161 = !{ptr @local_pure_const, ptr @fwrite, i64 2}
!162 = !{ptr @local_pure_const, ptr @cgraph_node, i64 15219}
!163 = !{ptr @local_pure_const, ptr @cgraph_function_body_availability, i64 15219}
!164 = !{ptr @local_pure_const, ptr @analyze_function, i64 15218}
!165 = !{ptr @local_pure_const, ptr @cgraph_set_readonly_flag, i64 238}
!166 = !{ptr @local_pure_const, ptr @cgraph_set_looping_const_or_pure_flag, i64 1684}
!167 = !{ptr @local_pure_const, ptr @fprintf, i64 3}
!168 = !{ptr @local_pure_const, ptr @cgraph_set_pure_flag, i64 1445}
!169 = !{ptr @local_pure_const, ptr @cgraph_set_nothrow_flag, i64 8566}
!170 = !{ptr @local_pure_const, ptr @free, i64 15218}
!171 = !{ptr @local_pure_const, ptr @execute_fixup_cfg, i64 9181}
!172 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!173 = !{!"function_entry_count", i64 15618}
!174 = !{!"ipa-pure-const.c:gate_pure_const"}
!175 = !{!176, !176, i64 0}
!176 = !{!"int", !177, i64 0}
!177 = !{!"omnipotent char", !178, i64 0}
!178 = !{!"Simple C/C++ TBAA"}
!179 = !{!"branch_weights", i32 1, i32 15619}
!180 = !{!181, !181, i64 0}
!181 = !{!"any pointer", !177, i64 0}
!182 = !{!"branch_weights", i32 15619, i32 1}
!183 = !{!"function_entry_count", i64 1}
!184 = !{!"ipa-pure-const.c:propagate"}
!185 = !{!"branch_weights", i32 2, i32 1}
!186 = !{!"branch_weights", i32 127, i32 1}
!187 = !{!"branch_weights", i32 1, i32 127}
!188 = !{!"branch_weights", i32 1, i32 10772}
!189 = !{!190, !176, i64 0}
!190 = !{!"funct_state_d", !176, i64 0, !176, i64 4, !177, i64 8, !177, i64 9, !177, i64 10}
!191 = !{!190, !177, i64 9}
!192 = !{!"branch_weights", i32 20598, i32 3210}
!193 = !{!"branch_weights", i32 1, i32 23807}
!194 = !{!190, !177, i64 8}
!195 = !{!190, !176, i64 4}
!196 = !{!"branch_weights", i32 12598, i32 11210}
!197 = !{!"branch_weights", i32 10844, i32 367}
!198 = !{!"branch_weights", i32 1, i32 3163}
!199 = !{!200, !181, i64 16}
!200 = !{!"cgraph_edge", !201, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !176, i64 72, !176, i64 76, !176, i64 80, !176, i64 84, !202, i64 88, !176, i64 90, !176, i64 90, !176, i64 90}
!201 = !{!"long", !177, i64 0}
!202 = !{!"short", !177, i64 0}
!203 = !{!"branch_weights", i32 10177, i32 2388}
!204 = !{!"branch_weights", i32 8047, i32 2131}
!205 = !{!"branch_weights", i32 884, i32 1248}
!206 = !{!207, !181, i64 0}
!207 = !{!"cgraph_node", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !181, i64 104, !181, i64 112, !181, i64 120, !181, i64 128, !181, i64 136, !208, i64 144, !210, i64 184, !211, i64 224, !212, i64 232, !213, i64 256, !201, i64 288, !176, i64 296, !176, i64 300, !176, i64 304, !176, i64 308, !176, i64 308, !176, i64 308, !176, i64 308, !176, i64 308, !176, i64 308, !176, i64 308, !176, i64 308, !176, i64 309, !176, i64 309}
!208 = !{!"cgraph_local_info", !181, i64 0, !209, i64 8, !176, i64 32, !176, i64 32, !176, i64 32, !176, i64 32, !176, i64 32, !176, i64 32, !176, i64 32, !176, i64 32}
!209 = !{!"inline_summary", !201, i64 0, !176, i64 8, !176, i64 12, !176, i64 16, !176, i64 20}
!210 = !{!"cgraph_global_info", !201, i64 0, !201, i64 8, !181, i64 16, !176, i64 24, !176, i64 28, !176, i64 32, !177, i64 36}
!211 = !{!"cgraph_rtl_info", !176, i64 0}
!212 = !{!"cgraph_clone_info", !181, i64 0, !181, i64 8, !181, i64 16}
!213 = !{!"cgraph_thunk_info", !201, i64 0, !201, i64 8, !181, i64 16, !177, i64 24, !177, i64 25, !177, i64 26}
!214 = !{!"branch_weights", i32 2388, i32 1}
!215 = !{!"branch_weights", i32 2308, i32 81}
!216 = !{!"branch_weights", i32 9160, i32 521910}
!217 = !{!"branch_weights", i32 3163, i32 9401}
!218 = distinct !{!218, !219}
!219 = !{!"llvm.loop.mustprogress"}
!220 = !{!207, !181, i64 128}
!221 = !{!222, !181, i64 16}
!222 = !{!"ipa_dfs_info", !176, i64 0, !176, i64 4, !177, i64 8, !177, i64 9, !181, i64 16, !181, i64 24}
!223 = !{!"branch_weights", i32 10772, i32 13035}
!224 = !{!"branch_weights", i32 0, i32 -2147483648}
!225 = !{!"branch_weights", i32 89708, i32 58172716}
!226 = !{!"branch_weights", i32 20932, i32 5684}
!227 = !{i8 0, i8 2}
!228 = !{!"branch_weights", i32 1216, i32 25400}
!229 = !{!"branch_weights", i32 24287, i32 279, i32 2051}
!230 = !{!"branch_weights", i32 4, i32 1396}
!231 = !{!"branch_weights", i32 5, i32 2047}
!232 = !{!"branch_weights", i32 5, i32 1}
!233 = !{!"branch_weights", i32 23369, i32 3246}
!234 = distinct !{!234, !219}
!235 = !{!"branch_weights", i32 127, i32 1495553}
!236 = distinct !{!236, !219}
!237 = !{!"branch_weights", i32 171, i32 26615}
!238 = !{!"branch_weights", i32 127, i32 1714113}
!239 = distinct !{!239, !219}
!240 = !{!"branch_weights", i32 1, i32 26614}
!241 = !{!190, !177, i64 10}
!242 = !{!"branch_weights", i32 26615, i32 1}
!243 = !{!"branch_weights", i32 -806486016, i32 131072}
!244 = !{!"branch_weights", i32 97149, i32 12860}
!245 = !{!"branch_weights", i32 97149, i32 1}
!246 = !{!"branch_weights", i32 12860, i32 1}
!247 = !{!"branch_weights", i32 26614, i32 83394}
!248 = distinct !{!248, !219}
!249 = !{!"branch_weights", i32 26614, i32 1}
!250 = !{!"branch_weights", i32 410, i32 26206}
!251 = !{!"branch_weights", i32 1, i32 409}
!252 = !{!"branch_weights", i32 409, i32 10055}
!253 = distinct !{!253, !219}
!254 = !{!"branch_weights", i32 410, i32 1}
!255 = distinct !{!255, !219}
!256 = !{!"branch_weights", i32 127, i32 1703233}
!257 = distinct !{!257, !219}
!258 = !{!"branch_weights", i32 26615, i32 171}
!259 = distinct !{!259, !219}
!260 = !{!"ipa-pure-const.c:generate_summary"}
!261 = !{!"branch_weights", i32 7206, i32 135}
!262 = !{!"branch_weights", i32 127, i32 469633}
!263 = distinct !{!263, !219}
!264 = !{!"function_entry_count", i64 0}
!265 = !{!"ipa-pure-const.c:pure_const_write_summary"}
!266 = !{i64 0, i64 8, !180, i64 8, i64 4, !175}
!267 = !{i64 0, i64 4, !175}
!268 = distinct !{!268, !219}
!269 = !{!270, !181, i64 16}
!270 = !{!"lto_simple_output_block", !176, i64 0, !181, i64 8, !181, i64 16}
!271 = !{!270, !181, i64 8}
!272 = !{!273, !181, i64 168}
!273 = !{!"lto_out_decl_state", !177, i64 0, !181, i64 168, !181, i64 176}
!274 = distinct !{!274, !219}
!275 = !{!"ipa-pure-const.c:pure_const_read_summary"}
!276 = !{!277, !181, i64 16}
!277 = !{!"lto_file_decl_data", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !176, i64 40, !181, i64 48, !181, i64 56}
!278 = distinct !{!278, !219}
!279 = !{!201, !201, i64 0}
!280 = distinct !{!280, !219}
!281 = !{!"function_entry_count", i64 297446}
!282 = !{!"ipa-pure-const.c:get_function_state"}
!283 = !{!"branch_weights", i32 1, i32 297447}
!284 = !{!207, !176, i64 296}
!285 = !{!"branch_weights", i32 279840, i32 17608}
!286 = !{!"function_entry_count", i64 20931}
!287 = !{!"ipa-pure-const.c:self_recursive_p"}
!288 = !{!"branch_weights", i32 1, i32 20697}
!289 = !{!"branch_weights", i32 20697, i32 58816}
!290 = distinct !{!290, !219}
!291 = !{!"branch_weights", i32 235, i32 79279}
!292 = !{!"function_entry_count", i64 110007}
!293 = !{!"ipa-pure-const.c:ignore_edge"}
!294 = !{!"ipa-pure-const.c:VEC_funct_state_heap_free"}
!295 = !{!"branch_weights", i32 1, i32 2}
!296 = !{!"ipa-pure-const.c:finish_state"}
!297 = !{!"function_entry_count", i64 359921}
!298 = !{!"ipa-pure-const.c:VEC_funct_state_base_length"}
!299 = !{!"branch_weights", i32 3, i32 359920}
!300 = !{!301, !176, i64 0}
!301 = !{!"VEC_funct_state_base", !176, i64 0, !176, i64 4, !177, i64 8}
!302 = !{!"function_entry_count", i64 279839}
!303 = !{!"ipa-pure-const.c:VEC_funct_state_base_index"}
!304 = !{!"ipa-pure-const.c:register_hooks"}
!305 = !{!"function_entry_count", i64 27260}
!306 = !{!"ipa-pure-const.c:set_function_state"}
!307 = !{!"branch_weights", i32 2, i32 27260}
!308 = !{!"branch_weights", i32 9653, i32 17608}
!309 = !{!"function_entry_count", i64 22425}
!310 = !{!"ipa-pure-const.c:analyze_function"}
!311 = !{!"branch_weights", i32 22426, i32 1}
!312 = !{!177, !177, i64 0}
!313 = !{!314, !181, i64 8}
!314 = !{!"function", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !176, i64 104, !176, i64 108, !176, i64 112, !176, i64 116, !176, i64 120, !176, i64 124, !181, i64 128, !176, i64 136, !176, i64 137, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139}
!315 = !{!316, !181, i64 0}
!316 = !{!"control_flow_graph", !181, i64 0, !181, i64 8, !181, i64 16, !176, i64 24, !176, i64 28, !176, i64 32, !181, i64 40, !176, i64 48, !177, i64 52, !177, i64 60, !176, i64 68, !176, i64 72}
!317 = !{!318, !181, i64 56}
!318 = !{!"basic_block_def", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !177, i64 32, !181, i64 48, !181, i64 56, !177, i64 64, !201, i64 72, !176, i64 80, !176, i64 84, !176, i64 88, !176, i64 92, !176, i64 96}
!319 = !{!316, !181, i64 8}
!320 = !{!"branch_weights", i32 1, i32 22425}
!321 = !{!"branch_weights", i32 638615, i32 1}
!322 = !{!"branch_weights", i32 1519075, i32 353707}
!323 = !{!"branch_weights", i32 287127, i32 1231949}
!324 = !{!"branch_weights", i32 1231949, i32 1}
!325 = !{!"branch_weights", i32 1234166, i32 638615}
!326 = distinct !{!326, !219}
!327 = !{!"branch_weights", i32 22425, i32 616191}
!328 = distinct !{!328, !219}
!329 = !{!"branch_weights", i32 16662, i32 5765}
!330 = !{!"branch_weights", i32 4234, i32 1532}
!331 = !{!"branch_weights", i32 1532, i32 1}
!332 = !{!"branch_weights", i32 1, i32 228}
!333 = !{!"branch_weights", i32 1304, i32 713}
!334 = !{!"branch_weights", i32 1304, i32 1}
!335 = !{!336, !176, i64 0}
!336 = !{!"loop", !176, i64 0, !176, i64 4, !181, i64 8, !181, i64 16, !337, i64 24, !176, i64 32, !176, i64 36, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !338, i64 80, !338, i64 96, !177, i64 112, !177, i64 113, !176, i64 116, !181, i64 120, !181, i64 128, !177, i64 136, !181, i64 144}
!337 = !{!"lpt_decision", !176, i64 0, !176, i64 4}
!338 = !{!"", !201, i64 0, !201, i64 8}
!339 = !{!"branch_weights", i32 228, i32 1788}
!340 = distinct !{!340, !219}
!341 = !{!"branch_weights", i32 22081, i32 346}
!342 = !{!"branch_weights", i32 342, i32 5}
!343 = !{!"branch_weights", i32 21179, i32 1248}
!344 = !{!"branch_weights", i32 21, i32 1228}
!345 = !{!"branch_weights", i32 786, i32 463}
!346 = !{!"branch_weights", i32 8965, i32 13462}
!347 = !{!"function_entry_count", i64 305}
!348 = !{!"ipa-pure-const.c:remove_node_data"}
!349 = !{!"branch_weights", i32 1, i32 306}
!350 = !{!"function_entry_count", i64 19750}
!351 = !{!"ipa-pure-const.c:duplicate_node_data"}
!352 = !{!"branch_weights", i32 1, i32 19751}
!353 = !{!"branch_weights", i32 19751, i32 1}
!354 = !{!"ipa-pure-const.c:add_new_function"}
!355 = !{!"function_entry_count", i64 17608}
!356 = !{!"ipa-pure-const.c:VEC_funct_state_heap_safe_grow_cleared"}
!357 = !{!"ipa-pure-const.c:VEC_funct_state_base_replace"}
!358 = !{!"ipa-pure-const.c:VEC_funct_state_heap_safe_grow"}
!359 = !{!"branch_weights", i32 2, i32 17608}
!360 = !{}
!361 = !{!"ipa-pure-const.c:VEC_funct_state_base_address"}
!362 = !{!"branch_weights", i32 1, i32 17609}
!363 = !{!"ipa-pure-const.c:VEC_funct_state_heap_reserve_exact"}
!364 = !{i32 0, i32 2}
!365 = !{!"branch_weights", i32 17609, i32 1}
!366 = !{!"ipa-pure-const.c:VEC_funct_state_base_space"}
!367 = !{!301, !176, i64 4}
!368 = !{!"function_entry_count", i64 638615}
!369 = !{!"ipa-pure-const.c:gsi_start_bb"}
!370 = !{!371, !181, i64 0}
!371 = !{!"", !181, i64 0, !181, i64 8, !181, i64 16}
!372 = !{!371, !181, i64 8}
!373 = !{!371, !181, i64 16}
!374 = !{!"function_entry_count", i64 2511395}
!375 = !{!"ipa-pure-const.c:gsi_end_p"}
!376 = !{!"function_entry_count", i64 1872780}
!377 = !{!"ipa-pure-const.c:check_stmt"}
!378 = !{!"branch_weights", i32 1872781, i32 1}
!379 = !{i32 0, i32 256}
!380 = !{!"branch_weights", i32 247181, i32 1625601}
!381 = !{!"branch_weights", i32 1625601, i32 1}
!382 = !{!"branch_weights", i32 1559204, i32 247181, i32 66398, i32 1}
!383 = !{!"branch_weights", i32 66398, i32 1}
!384 = distinct !{!384, !219}
!385 = !{!"ipa-pure-const.c:gsi_next"}
!386 = !{!387, !181, i64 16}
!387 = !{!"gimple_seq_node_d", !181, i64 0, !181, i64 8, !181, i64 16}
!388 = !{!"function_entry_count", i64 1531}
!389 = !{!"ipa-pure-const.c:fel_init"}
!390 = !{!391, !176, i64 8}
!391 = !{!"", !181, i64 0, !176, i64 8}
!392 = !{!314, !181, i64 32}
!393 = !{!"branch_weights", i32 1, i32 1532}
!394 = !{!391, !181, i64 0}
!395 = !{!396, !181, i64 24}
!396 = !{!"loops", !176, i64 0, !181, i64 8, !181, i64 16, !181, i64 24}
!397 = !{!"branch_weights", i32 3150, i32 1532}
!398 = !{!336, !181, i64 48}
!399 = !{!"branch_weights", i32 2359, i32 2323}
!400 = !{!336, !181, i64 56}
!401 = !{!"branch_weights", i32 3854, i32 2359}
!402 = !{!"branch_weights", i32 1532, i32 3149}
!403 = distinct !{!403, !219}
!404 = !{!"function_entry_count", i64 2243}
!405 = !{!"ipa-pure-const.c:fel_next"}
!406 = !{!"branch_weights", i32 229, i32 2016}
!407 = !{!"branch_weights", i32 1, i32 2016}
!408 = distinct !{!408, !219}
!409 = !{!"ipa-pure-const.c:bb_seq"}
!410 = !{!318, !176, i64 96}
!411 = !{!"branch_weights", i32 638616, i32 1}
!412 = !{!"branch_weights", i32 1, i32 638616}
!413 = !{!414, !181, i64 0}
!414 = !{!"gimple_bb_info", !181, i64 0, !181, i64 8}
!415 = !{!"ipa-pure-const.c:gimple_seq_first"}
!416 = !{!417, !181, i64 0}
!417 = !{!"gimple_seq_d", !181, i64 0, !181, i64 8, !181, i64 16}
!418 = !{!"ipa-pure-const.c:gsi_stmt"}
!419 = !{!387, !181, i64 0}
!420 = !{!"ipa-pure-const.c:is_gimple_debug"}
!421 = !{!"function_entry_count", i64 651926}
!422 = !{!"ipa-pure-const.c:check_load"}
!423 = !{!"branch_weights", i32 194804, i32 457124}
!424 = !{!"function_entry_count", i64 131325}
!425 = !{!"ipa-pure-const.c:check_store"}
!426 = !{!"branch_weights", i32 53944, i32 77383}
!427 = !{!"function_entry_count", i64 6559071}
!428 = !{!"ipa-pure-const.c:gimple_code"}
!429 = !{!"function_entry_count", i64 247180}
!430 = !{!"ipa-pure-const.c:check_call"}
!431 = !{!"branch_weights", i32 247181, i32 1}
!432 = distinct !{!432, !219}
!433 = !{!"branch_weights", i32 240190, i32 6992}
!434 = !{!"branch_weights", i32 240187, i32 4}
!435 = !{!"branch_weights", i32 4, i32 1}
!436 = !{!"branch_weights", i32 25882, i32 214309}
!437 = !{!"branch_weights", i32 25882, i32 1, i32 1}
!438 = !{!"branch_weights", i32 -1650846012, i32 58226827}
!439 = !{!"branch_weights", i32 1271793600, i32 -1197493263}
!440 = !{!"branch_weights", i32 171457, i32 1}
!441 = !{!"branch_weights", i32 1, i32 171457}
!442 = !{!"branch_weights", i32 170835, i32 623}
!443 = !{!"branch_weights", i32 623, i32 1}
!444 = !{!"branch_weights", i32 612, i32 12}
!445 = !{!"branch_weights", i32 161448, i32 9388}
!446 = !{!"branch_weights", i32 9388, i32 1}
!447 = !{!"branch_weights", i32 5327, i32 4062}
!448 = !{!"branch_weights", i32 241, i32 9148}
!449 = !{!"branch_weights", i32 161448, i32 1}
!450 = !{!"function_entry_count", i64 66397}
!451 = !{!"ipa-pure-const.c:gimple_label_label"}
!452 = !{!"ipa-pure-const.c:gimple_asm_nclobbers"}
!453 = !{!"ipa-pure-const.c:gimple_asm_clobber_op"}
!454 = !{!"ipa-pure-const.c:gimple_asm_volatile_p"}
!455 = !{!"function_entry_count", i64 248746}
!456 = !{!"ipa-pure-const.c:check_decl"}
!457 = !{!"branch_weights", i32 248722, i32 26}
!458 = !{!"branch_weights", i32 26, i32 1}
!459 = !{!"branch_weights", i32 718100694, i32 -237835113}
!460 = !{!"branch_weights", i32 211319, i32 1}
!461 = !{!"branch_weights", i32 173308, i32 38012}
!462 = !{!"branch_weights", i32 38012, i32 1}
!463 = !{!"branch_weights", i32 734535766, i32 -1296513857}
!464 = !{!"branch_weights", i32 128227, i32 10981}
!465 = !{!"branch_weights", i32 10981, i32 1}
!466 = !{!"branch_weights", i32 128227, i32 1}
!467 = !{!"branch_weights", i32 3913, i32 124315}
!468 = !{!"branch_weights", i32 31300, i32 2803}
!469 = !{!"branch_weights", i32 31300, i32 1}
!470 = !{!"branch_weights", i32 1314, i32 29987}
!471 = !{!"function_entry_count", i64 534505}
!472 = !{!"ipa-pure-const.c:check_op"}
!473 = !{!"branch_weights", i32 8864, i32 525643}
!474 = !{!"branch_weights", i32 525643, i32 1}
!475 = !{!"branch_weights", i32 2102575, i32 1}
!476 = !{!"branch_weights", i32 525567, i32 77}
!477 = !{!"branch_weights", i32 2486, i32 523082}
!478 = !{!"branch_weights", i32 2486, i32 1}
!479 = !{!"branch_weights", i32 455645, i32 76377}
!480 = !{!"branch_weights", i32 76377, i32 1}
!481 = !{!"branch_weights", i32 455645, i32 1}
!482 = !{!"branch_weights", i32 9900, i32 445746}
!483 = !{!"ipa-pure-const.c:gimple_call_fndecl"}
!484 = !{!"ipa-pure-const.c:gimple_num_ops"}
!485 = !{!"function_entry_count", i64 313577}
!486 = !{!"ipa-pure-const.c:gimple_op"}
!487 = !{!"branch_weights", i32 1, i32 313578}
!488 = !{!"ipa-pure-const.c:gimple_call_fn"}
!489 = !{!"ipa-pure-const.c:gimple_has_ops"}
!490 = !{!"ipa-pure-const.c:gimple_ops"}
!491 = !{!"ipa-pure-const.c:gimple_statement_structure"}
!492 = !{!"ipa-pure-const.c:gss_for_code"}
!493 = !{!"ipa-pure-const.c:VEC_int_heap_alloc"}
!494 = !{!"ipa-pure-const.c:number_of_loops"}
!495 = !{!396, !181, i64 8}
!496 = !{!"function_entry_count", i64 3149}
!497 = !{!"ipa-pure-const.c:VEC_int_base_quick_push"}
!498 = !{!499, !176, i64 0}
!499 = !{!"VEC_int_base", !176, i64 0, !176, i64 4, !177, i64 8}
!500 = !{!"function_entry_count", i64 3853}
!501 = !{!"ipa-pure-const.c:loop_outer"}
!502 = !{!336, !181, i64 40}
!503 = !{!"branch_weights", i32 1532, i32 2323}
!504 = !{!"function_entry_count", i64 5384}
!505 = !{!"ipa-pure-const.c:VEC_loop_p_base_length"}
!506 = !{!"branch_weights", i32 1532, i32 3854}
!507 = !{!508, !176, i64 0}
!508 = !{!"VEC_loop_p_base", !176, i64 0, !176, i64 4, !177, i64 8}
!509 = !{!"function_entry_count", i64 4337}
!510 = !{!"ipa-pure-const.c:VEC_loop_p_base_index"}
!511 = !{!"ipa-pure-const.c:VEC_int_base_iterate"}
!512 = !{!"branch_weights", i32 1, i32 2244}
!513 = !{!"branch_weights", i32 2016, i32 229}
!514 = !{!"function_entry_count", i64 2015}
!515 = !{!"ipa-pure-const.c:get_loop"}
!516 = !{!"function_entry_count", i64 228}
!517 = !{!"ipa-pure-const.c:VEC_int_heap_free"}
!518 = !{!"branch_weights", i32 1, i32 229}
!519 = !{!"ipa-pure-const.c:csi_start"}
!520 = !{!"ipa-pure-const.c:csi_end_p"}
!521 = !{!522, !181, i64 8}
!522 = !{!"cgraph_node_set_def", !181, i64 0, !181, i64 8, !181, i64 16}
!523 = !{!"ipa-pure-const.c:csi_node"}
!524 = !{!"ipa-pure-const.c:csi_next"}
!525 = !{!"ipa-pure-const.c:VEC_cgraph_node_ptr_base_length"}
!526 = !{!527, !176, i64 0}
!527 = !{!"VEC_cgraph_node_ptr_base", !176, i64 0, !176, i64 4, !177, i64 8}
!528 = !{!"ipa-pure-const.c:VEC_cgraph_node_ptr_base_index"}
!529 = !{!"function_entry_count", i64 15616}
!530 = !{!"ipa-pure-const.c:local_pure_const"}
!531 = !{!"branch_weights", i32 15221, i32 397}
!532 = !{!"branch_weights", i32 397, i32 1}
!533 = !{!"branch_weights", i32 1, i32 15221}
!534 = !{!"branch_weights", i32 13370, i32 407, i32 1446}
!535 = !{!"branch_weights", i32 239, i32 169}
!536 = !{!"branch_weights", i32 239, i32 1}
!537 = !{!538, !181, i64 176}
!538 = !{!"lang_hooks", !181, i64 0, !201, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !181, i64 104, !181, i64 112, !181, i64 120, !181, i64 128, !181, i64 136, !181, i64 144, !181, i64 152, !181, i64 160, !181, i64 168, !181, i64 176, !181, i64 184, !181, i64 192, !181, i64 200, !181, i64 208, !181, i64 216, !181, i64 224, !181, i64 232, !539, i64 240, !540, i64 248, !541, i64 256, !542, i64 272, !543, i64 432, !544, i64 560, !181, i64 584, !181, i64 592, !181, i64 600, !181, i64 608, !181, i64 616, !181, i64 624, !181, i64 632, !181, i64 640, !181, i64 648, !181, i64 656, !181, i64 664, !177, i64 672}
!539 = !{!"lang_hooks_for_tree_inlining", !181, i64 0}
!540 = !{!"lang_hooks_for_callgraph", !181, i64 0}
!541 = !{!"lang_hooks_for_tree_dump", !181, i64 0, !181, i64 8}
!542 = !{!"lang_hooks_for_decls", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !181, i64 104, !181, i64 112, !181, i64 120, !181, i64 128, !181, i64 136, !181, i64 144, !181, i64 152}
!543 = !{!"lang_hooks_for_types", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !181, i64 104, !181, i64 112, !177, i64 120}
!544 = !{!"lang_hooks_for_lto", !181, i64 0, !181, i64 8, !181, i64 16}
!545 = !{!"branch_weights", i32 167, i32 3}
!546 = !{!"branch_weights", i32 1, i32 3}
!547 = !{!"branch_weights", i32 1446, i32 1}
!548 = !{!"branch_weights", i32 15221, i32 1}
!549 = !{!"branch_weights", i32 8569, i32 6653}
!550 = !{!"branch_weights", i32 1, i32 8568}
!551 = !{!"branch_weights", i32 8568, i32 53099}
!552 = distinct !{!552, !219}
!553 = !{!"branch_weights", i32 8569, i32 1}
!554 = !{!"branch_weights", i32 1949129190, i32 198354458}
