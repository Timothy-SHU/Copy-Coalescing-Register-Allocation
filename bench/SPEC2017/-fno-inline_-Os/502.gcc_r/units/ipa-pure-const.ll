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
define internal zeroext i8 @gate_pure_const() #0 !prof !148 !PGOFuncName !149 {
  %1 = load i32, ptr @flag_ipa_pure_const, align 4, !tbaa !150
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !154

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !150
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !157

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !150
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @propagate() #1 !prof !158 !PGOFuncName !159 {
  %1 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !150
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #17
  %4 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !155
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %4) #17
  %5 = load ptr, ptr @node_duplication_hook_holder, align 8, !tbaa !155
  tail call void @cgraph_remove_node_duplication_hook(ptr noundef %5) #17
  %6 = load ptr, ptr @node_removal_hook_holder, align 8, !tbaa !155
  tail call void @cgraph_remove_node_removal_hook(ptr noundef %6) #17
  %7 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null) #17
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !160

10:                                               ; preds = %0
  tail call void @dump_cgraph(ptr noundef nonnull %8) #17
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !155
  tail call void @ipa_utils_print_order(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef %3, i32 noundef %7) #17
  br label %12

12:                                               ; preds = %10, %0
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %16, !prof !161

14:                                               ; preds = %12
  %15 = zext nneg i32 %7 to i64
  br label %19

16:                                               ; preds = %165, %12
  %17 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %178, label %168, !prof !162

19:                                               ; preds = %14, %165
  %20 = phi i64 [ 0, %14 ], [ %166, %165 ]
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !155
  %23 = icmp eq ptr %22, null
  br i1 %23, label %165, label %24, !prof !163

24:                                               ; preds = %19, %96
  %25 = phi ptr [ %102, %96 ], [ %22, %19 ]
  %26 = phi i32 [ %98, %96 ], [ 0, %19 ]
  %27 = phi i8 [ %97, %96 ], [ 0, %19 ]
  %28 = phi i32 [ %50, %96 ], [ 0, %19 ]
  %29 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %25) #18
  %30 = load i32, ptr %29, align 4, !tbaa !164
  %31 = tail call i32 @llvm.umax.i32(i32 %26, i32 %30)
  %32 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !166
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 %27, i8 1, !prof !157
  %36 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %25) #17
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %45, !prof !154

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 2
  %40 = load i8, ptr %39, align 4, !tbaa !167
  %41 = or i8 %40, %35
  %42 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !168
  %44 = tail call i32 @llvm.umax.i32(i32 %31, i32 %43)
  br label %45

45:                                               ; preds = %38, %24
  %46 = phi i8 [ %35, %24 ], [ %41, %38 ]
  %47 = phi i32 [ %31, %24 ], [ %44, %38 ]
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %104, label %49, !prof !169

49:                                               ; preds = %45
  %50 = add nuw nsw i32 %28, 1
  %51 = icmp eq i32 %28, 0
  %52 = select i1 %51, i8 %46, i8 1, !prof !170
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !155
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %56, !prof !162

56:                                               ; preds = %49, %90
  %57 = phi ptr [ %94, %90 ], [ %54, %49 ]
  %58 = phi i32 [ %92, %90 ], [ %47, %49 ]
  %59 = phi i8 [ %91, %90 ], [ %52, %49 ]
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %57, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !171
  %62 = tail call i32 @cgraph_function_body_availability(ptr noundef %61) #17
  %63 = icmp ugt i32 %62, 2
  br i1 %63, label %64, label %74, !prof !175

64:                                               ; preds = %56
  %65 = tail call fastcc ptr @get_function_state(ptr noundef %61) #18
  %66 = load i32, ptr %65, align 4, !tbaa !164
  %67 = tail call i32 @llvm.umax.i32(i32 %58, i32 %66)
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %96, label %69, !prof !170

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.funct_state_d, ptr %65, i64 0, i32 3
  %71 = load i8, ptr %70, align 1, !tbaa !166
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i8 %59, i8 1
  br label %90

74:                                               ; preds = %56
  %75 = load ptr, ptr %61, align 8, !tbaa !176
  %76 = tail call i32 @flags_from_decl_or_type(ptr noundef %75) #17
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79, !prof !184

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %74
  %81 = phi i8 [ 1, %79 ], [ %59, %74 ]
  %82 = and i32 %76, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90, !prof !184

84:                                               ; preds = %80
  %85 = and i32 %76, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87, !prof !184

87:                                               ; preds = %84
  %88 = icmp eq i32 %58, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %87, %84
  br label %90

90:                                               ; preds = %69, %87, %89, %80
  %91 = phi i8 [ %73, %69 ], [ %81, %87 ], [ 1, %89 ], [ %81, %80 ]
  %92 = phi i32 [ %67, %69 ], [ 1, %87 ], [ 2, %89 ], [ %58, %80 ]
  %93 = getelementptr inbounds %struct.cgraph_edge, ptr %57, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !155
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %56, !prof !185, !llvm.loop !186

96:                                               ; preds = %90, %64, %49
  %97 = phi i8 [ %52, %49 ], [ %59, %64 ], [ %91, %90 ]
  %98 = phi i32 [ %47, %49 ], [ 2, %64 ], [ %92, %90 ]
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 16
  %100 = load ptr, ptr %99, align 8, !tbaa !188
  %101 = getelementptr inbounds %struct.ipa_dfs_info, ptr %100, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !189
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %24, !prof !191

104:                                              ; preds = %96, %45
  %105 = phi i8 [ %97, %96 ], [ %46, %45 ]
  %106 = phi i32 [ %98, %96 ], [ 2, %45 ]
  br i1 %23, label %165, label %107, !prof !192

107:                                              ; preds = %104
  %108 = icmp eq i8 %105, 0
  br label %109

109:                                              ; preds = %107, %159
  %110 = phi ptr [ %22, %107 ], [ %163, %159 ]
  %111 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %110) #18
  %112 = getelementptr inbounds %struct.funct_state_d, ptr %111, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !168
  %114 = icmp ne i32 %113, 2
  %115 = icmp ugt i32 %106, %113
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %118, !prof !163

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %109
  %119 = phi i32 [ %113, %117 ], [ %106, %109 ]
  br i1 %108, label %120, label %122, !prof !193

120:                                              ; preds = %118
  %121 = tail call fastcc zeroext i8 @self_recursive_p(ptr noundef nonnull %110) #18, !range !194
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i8 [ %105, %118 ], [ %121, %120 ]
  %124 = getelementptr inbounds %struct.funct_state_d, ptr %111, i64 0, i32 2
  %125 = load i8, ptr %124, align 4, !tbaa !167
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i8 0, i8 %123, !prof !154
  store i32 %119, ptr %111, align 4, !tbaa !164
  %128 = getelementptr inbounds %struct.funct_state_d, ptr %111, i64 0, i32 3
  store i8 %127, ptr %128, align 1, !tbaa !166
  switch i32 %119, label %159 [
    i32 0, label %129
    i32 1, label %143
  ], !prof !195

129:                                              ; preds = %122
  %130 = load ptr, ptr %110, align 8, !tbaa !176
  %131 = load i64, ptr %130, align 8
  %132 = and i64 %131, 1048576
  %133 = icmp eq i64 %132, 0
  %134 = load ptr, ptr @dump_file, align 8
  %135 = icmp ne ptr %134, null
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = icmp eq i8 %127, 0
  %139 = select i1 %138, ptr @.str.5, ptr @.str.4
  %140 = tail call ptr @cgraph_node_name(ptr noundef nonnull %110) #17
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %134, ptr noundef nonnull @.str.3, ptr noundef nonnull %139, ptr noundef %140) #18
  br label %142

142:                                              ; preds = %137, %129
  tail call void @cgraph_set_readonly_flag(ptr noundef nonnull %110, i8 noundef zeroext 1) #17
  br label %158

143:                                              ; preds = %122
  %144 = load ptr, ptr %110, align 8, !tbaa !176
  %145 = getelementptr inbounds %struct.tree_function_decl, ptr %144, i64 0, i32 5
  %146 = load i32, ptr %145, align 8
  %147 = and i32 %146, 134217728
  %148 = icmp eq i32 %147, 0
  %149 = load ptr, ptr @dump_file, align 8
  %150 = icmp ne ptr %149, null
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = icmp eq i8 %127, 0
  %154 = select i1 %153, ptr @.str.5, ptr @.str.4
  %155 = tail call ptr @cgraph_node_name(ptr noundef nonnull %110) #17
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %149, ptr noundef nonnull @.str.6, ptr noundef nonnull %154, ptr noundef %155) #18
  br label %157

157:                                              ; preds = %152, %143
  tail call void @cgraph_set_pure_flag(ptr noundef nonnull %110, i8 noundef zeroext 1) #17
  br label %158

158:                                              ; preds = %142, %157
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef nonnull %110, i8 noundef zeroext %127) #17
  br label %159

159:                                              ; preds = %158, %122
  %160 = getelementptr inbounds %struct.cgraph_node, ptr %110, i64 0, i32 16
  %161 = load ptr, ptr %160, align 8, !tbaa !188
  %162 = getelementptr inbounds %struct.ipa_dfs_info, ptr %161, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !189
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %109, !prof !196, !llvm.loop !197

165:                                              ; preds = %159, %19, %104
  %166 = add nuw nsw i64 %20, 1
  %167 = icmp eq i64 %166, %15
  br i1 %167, label %16, label %19, !prof !198, !llvm.loop !199

168:                                              ; preds = %16, %174
  %169 = phi ptr [ %176, %174 ], [ %17, %16 ]
  %170 = getelementptr inbounds %struct.cgraph_node, ptr %169, i64 0, i32 16
  %171 = load ptr, ptr %170, align 8, !tbaa !188
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173, !prof !200

173:                                              ; preds = %168
  tail call void @free(ptr noundef nonnull %171) #18
  store ptr null, ptr %170, align 8, !tbaa !188
  br label %174

174:                                              ; preds = %168, %173
  %175 = getelementptr inbounds %struct.cgraph_node, ptr %169, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !155
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %168, !prof !201, !llvm.loop !202

178:                                              ; preds = %174, %16
  %179 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @ignore_edge) #17
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182, !prof !160

182:                                              ; preds = %178
  tail call void @dump_cgraph(ptr noundef nonnull %180) #17
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !155
  tail call void @ipa_utils_print_order(ptr noundef %183, ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %179) #17
  br label %184

184:                                              ; preds = %182, %178
  %185 = icmp sgt i32 %179, 0
  br i1 %185, label %186, label %188, !prof !161

186:                                              ; preds = %184
  %187 = zext nneg i32 %179 to i64
  br label %191

188:                                              ; preds = %298, %184
  %189 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !155
  %190 = icmp eq ptr %189, null
  br i1 %190, label %316, label %301, !prof !162

191:                                              ; preds = %186, %298
  %192 = phi i64 [ 0, %186 ], [ %299, %298 ]
  %193 = getelementptr inbounds ptr, ptr %3, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !155
  %195 = icmp eq ptr %194, null
  br i1 %195, label %298, label %196, !prof !203

196:                                              ; preds = %191, %252
  %197 = phi ptr [ %257, %252 ], [ %194, %191 ]
  %198 = phi i8 [ %253, %252 ], [ 0, %191 ]
  %199 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %197) #18
  %200 = getelementptr inbounds %struct.funct_state_d, ptr %199, i64 0, i32 4
  %201 = load i8, ptr %200, align 2, !tbaa !204
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %259, !prof !157

203:                                              ; preds = %196
  %204 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %197) #17
  %205 = icmp ne i32 %204, 2
  %206 = icmp eq i8 %198, 0
  %207 = select i1 %205, i1 %206, i1 false
  br i1 %207, label %208, label %259, !prof !205

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.cgraph_node, ptr %197, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !155
  %211 = icmp eq ptr %210, null
  br i1 %211, label %252, label %212, !prof !203

212:                                              ; preds = %208, %247
  %213 = phi ptr [ %250, %247 ], [ %210, %208 ]
  %214 = phi i8 [ %248, %247 ], [ 0, %208 ]
  %215 = getelementptr inbounds %struct.cgraph_edge, ptr %213, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !171
  %217 = tail call i32 @cgraph_function_body_availability(ptr noundef %216) #17
  %218 = icmp ugt i32 %217, 2
  br i1 %218, label %219, label %236, !prof !206

219:                                              ; preds = %212
  %220 = icmp eq i8 %214, 0
  br i1 %220, label %221, label %252, !prof !207

221:                                              ; preds = %219
  %222 = tail call fastcc ptr @get_function_state(ptr noundef %216) #18
  %223 = getelementptr inbounds %struct.funct_state_d, ptr %222, i64 0, i32 4
  %224 = load i8, ptr %223, align 2, !tbaa !204
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %247, label %226, !prof !207

226:                                              ; preds = %221
  %227 = load ptr, ptr %197, align 8, !tbaa !176
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 33554432
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.cgraph_edge, ptr %213, i64 0, i32 14
  %233 = load i8, ptr %232, align 2
  %234 = lshr i8 %233, 2
  %235 = and i8 %234, 1
  br label %247

236:                                              ; preds = %212
  %237 = getelementptr inbounds %struct.cgraph_edge, ptr %213, i64 0, i32 14
  %238 = load i8, ptr %237, align 2
  %239 = and i8 %238, 4
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %247, label %241, !prof !208

241:                                              ; preds = %236
  %242 = load ptr, ptr %216, align 8, !tbaa !176
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 33554432
  %245 = icmp eq i64 %244, 0
  %246 = select i1 %245, i8 1, i8 %214
  br label %247

247:                                              ; preds = %226, %221, %231, %241, %236
  %248 = phi i8 [ %246, %241 ], [ %214, %236 ], [ %235, %231 ], [ 0, %221 ], [ 0, %226 ]
  %249 = getelementptr inbounds %struct.cgraph_edge, ptr %213, i64 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !155
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %212, !prof !209, !llvm.loop !210

252:                                              ; preds = %247, %219, %208
  %253 = phi i8 [ 0, %208 ], [ 1, %219 ], [ %248, %247 ]
  %254 = getelementptr inbounds %struct.cgraph_node, ptr %197, i64 0, i32 16
  %255 = load ptr, ptr %254, align 8, !tbaa !188
  %256 = getelementptr inbounds %struct.ipa_dfs_info, ptr %255, i64 0, i32 4
  %257 = load ptr, ptr %256, align 8, !tbaa !189
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %196, !prof !196

259:                                              ; preds = %252, %196, %203
  %260 = phi i8 [ %253, %252 ], [ 1, %196 ], [ 1, %203 ]
  br i1 %195, label %298, label %261, !prof !211

261:                                              ; preds = %259
  %262 = icmp eq i8 %260, 0
  br label %263

263:                                              ; preds = %261, %292
  %264 = phi ptr [ %194, %261 ], [ %296, %292 ]
  %265 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %264) #18
  %266 = load ptr, ptr %264, align 8, !tbaa !176
  %267 = load i64, ptr %266, align 8
  %268 = and i64 %267, 33554432
  %269 = icmp eq i64 %268, 0
  br i1 %262, label %270, label %289, !prof !157

270:                                              ; preds = %263
  br i1 %269, label %271, label %292, !prof !154

271:                                              ; preds = %270
  tail call void @cgraph_set_nothrow_flag(ptr noundef nonnull %264, i8 noundef zeroext 1) #17
  %272 = getelementptr inbounds %struct.cgraph_node, ptr %264, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !155
  %274 = icmp eq ptr %273, null
  br i1 %274, label %283, label %275

275:                                              ; preds = %271, %275
  %276 = phi ptr [ %281, %275 ], [ %273, %271 ]
  %277 = getelementptr inbounds %struct.cgraph_edge, ptr %276, i64 0, i32 14
  %278 = load i8, ptr %277, align 2
  %279 = and i8 %278, -5
  store i8 %279, ptr %277, align 2
  %280 = getelementptr inbounds %struct.cgraph_edge, ptr %276, i64 0, i32 4
  %281 = load ptr, ptr %280, align 8, !tbaa !155
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %275, !llvm.loop !212

283:                                              ; preds = %275, %271
  %284 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %285 = icmp eq ptr %284, null
  br i1 %285, label %292, label %286

286:                                              ; preds = %283
  %287 = tail call ptr @cgraph_node_name(ptr noundef nonnull %264) #17
  %288 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %284, ptr noundef nonnull @.str.8, ptr noundef %287) #18
  br label %292

289:                                              ; preds = %263
  br i1 %269, label %290, label %292

290:                                              ; preds = %289
  %291 = getelementptr inbounds %struct.funct_state_d, ptr %265, i64 0, i32 4
  store i8 1, ptr %291, align 2, !tbaa !204
  br label %292

292:                                              ; preds = %270, %283, %286, %289, %290
  %293 = getelementptr inbounds %struct.cgraph_node, ptr %264, i64 0, i32 16
  %294 = load ptr, ptr %293, align 8, !tbaa !188
  %295 = getelementptr inbounds %struct.ipa_dfs_info, ptr %294, i64 0, i32 4
  %296 = load ptr, ptr %295, align 8, !tbaa !189
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %263, !prof !196, !llvm.loop !213

298:                                              ; preds = %292, %191, %259
  %299 = add nuw nsw i64 %192, 1
  %300 = icmp eq i64 %299, %187
  br i1 %300, label %188, label %191, !prof !198, !llvm.loop !214

301:                                              ; preds = %188, %312
  %302 = phi ptr [ %314, %312 ], [ %189, %188 ]
  %303 = getelementptr inbounds %struct.cgraph_node, ptr %302, i64 0, i32 16
  %304 = load ptr, ptr %303, align 8, !tbaa !188
  %305 = icmp eq ptr %304, null
  br i1 %305, label %307, label %306, !prof !200

306:                                              ; preds = %301
  tail call void @free(ptr noundef nonnull %304) #18
  store ptr null, ptr %303, align 8, !tbaa !188
  br label %307

307:                                              ; preds = %306, %301
  %308 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %302) #17
  %309 = icmp ugt i32 %308, 1
  br i1 %309, label %310, label %312, !prof !215

310:                                              ; preds = %307
  %311 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %302) #18
  tail call void @free(ptr noundef %311) #18
  br label %312

312:                                              ; preds = %307, %310
  %313 = getelementptr inbounds %struct.cgraph_node, ptr %302, i64 0, i32 3
  %314 = load ptr, ptr %313, align 8, !tbaa !155
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %301, !prof !201, !llvm.loop !216

316:                                              ; preds = %312, %188
  tail call void @free(ptr noundef %3) #18
  tail call fastcc void @VEC_funct_state_heap_free() #18
  tail call fastcc void @finish_state() #18
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @generate_summary() #1 !prof !158 !PGOFuncName !217 {
  tail call fastcc void @register_hooks() #18
  %1 = tail call ptr @pointer_set_create() #17
  store ptr %1, ptr @visited_nodes, align 8, !tbaa !155
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !155
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4, !prof !162

4:                                                ; preds = %0, %10
  %5 = phi ptr [ %12, %10 ], [ %2, %0 ]
  %6 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %5) #17
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %10, !prof !218

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @analyze_function(ptr noundef nonnull %5, i8 noundef zeroext 1) #18
  tail call fastcc void @set_function_state(ptr noundef nonnull %5, ptr noundef %9) #18
  br label %10

10:                                               ; preds = %4, %8
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !155
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !prof !219, !llvm.loop !220

14:                                               ; preds = %10
  %15 = load ptr, ptr @visited_nodes, align 8, !tbaa !155
  br label %16

16:                                               ; preds = %14, %0
  %17 = phi ptr [ %15, %14 ], [ %1, %0 ]
  tail call void @pointer_set_destroy(ptr noundef %17) #17
  store ptr null, ptr @visited_nodes, align 8, !tbaa !155
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pure_const_write_summary(ptr noundef %0) #1 !prof !221 !PGOFuncName !222 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  %3 = tail call ptr @lto_create_simple_output_block(i32 noundef 5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %4 = tail call fastcc ptr @csi_start(ptr noundef %0) #18
  store ptr %4, ptr %2, align 8, !tbaa.struct !223
  %5 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %5, align 8, !tbaa.struct !224
  %6 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #18, !range !194
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
  %26 = tail call fastcc zeroext i8 @csi_end_p(ptr %24, i32 %25) #18, !range !194
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %8, label %28, !llvm.loop !225

28:                                               ; preds = %22
  %29 = zext i32 %23 to i64
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi i64 [ 0, %1 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.lto_simple_output_block, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !226
  tail call void @lto_output_uleb128_stream(ptr noundef %33, i64 noundef %31) #17
  store ptr %4, ptr %2, align 8, !tbaa.struct !223
  store i32 0, ptr %5, align 8, !tbaa.struct !224
  %34 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #18, !range !194
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
  %50 = load ptr, ptr %37, align 8, !tbaa !228
  %51 = getelementptr inbounds %struct.lto_out_decl_state, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !229
  %53 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %52, ptr noundef nonnull %41) #17
  %54 = load ptr, ptr %32, align 8, !tbaa !226
  %55 = sext i32 %53 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %54, i64 noundef %55) #17
  %56 = tail call ptr @bitpack_create() #17
  %57 = load i32, ptr %47, align 4, !tbaa !164
  %58 = zext i32 %57 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %58, i32 noundef 2) #17
  %59 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !168
  %61 = zext i32 %60 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %61, i32 noundef 2) #17
  %62 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 2
  %63 = load i8, ptr %62, align 4, !tbaa !167
  %64 = zext i8 %63 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %64, i32 noundef 1) #17
  %65 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !166
  %67 = zext i8 %66 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %67, i32 noundef 1) #17
  %68 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 4
  %69 = load i8, ptr %68, align 2, !tbaa !204
  %70 = zext i8 %69 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %70, i32 noundef 1) #17
  %71 = load ptr, ptr %32, align 8, !tbaa !226
  tail call void @lto_output_bitpack(ptr noundef %71, ptr noundef %56) #17
  tail call void @bitpack_delete(ptr noundef %56) #17
  br label %72

72:                                               ; preds = %38, %46, %49
  call fastcc void @csi_next(ptr noundef nonnull %2) #18
  %73 = load ptr, ptr %2, align 8
  %74 = load i32, ptr %5, align 8
  %75 = tail call fastcc zeroext i8 @csi_end_p(ptr %73, i32 %74) #18, !range !194
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %38, label %77, !llvm.loop !231

77:                                               ; preds = %72, %30
  tail call void @lto_destroy_simple_output_block(ptr noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pure_const_read_summary() #1 !prof !221 !PGOFuncName !232 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #17
  tail call fastcc void @register_hooks() #18
  %4 = load ptr, ptr %3, align 8, !tbaa !155
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
  %22 = load ptr, ptr %16, align 8, !tbaa !233
  %23 = call ptr @lto_cgraph_encoder_deref(ptr noundef %22, i32 noundef %21) #17
  call fastcc void @set_function_state(ptr noundef %23, ptr noundef %19) #18
  %24 = call ptr @lto_input_bitpack(ptr noundef nonnull %9) #17
  %25 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 2) #17
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %19, align 4, !tbaa !164
  %27 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 2) #17
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 1
  store i32 %28, ptr %29, align 4, !tbaa !168
  %30 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 2
  store i8 %31, ptr %32, align 4, !tbaa !167
  %33 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  store i8 %34, ptr %35, align 1, !tbaa !166
  %36 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 4
  store i8 %37, ptr %38, align 2, !tbaa !204
  call void @bitpack_delete(ptr noundef %24) #17
  %39 = add nuw i32 %18, 1
  %40 = icmp eq i32 %39, %13
  br i1 %40, label %41, label %17, !llvm.loop !235

41:                                               ; preds = %17, %11
  %42 = load ptr, ptr %1, align 8, !tbaa !155
  %43 = load i64, ptr %2, align 8, !tbaa !236
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %7, i32 noundef 5, ptr noundef nonnull %9, ptr noundef %42, i64 noundef %43) #17
  br label %44

44:                                               ; preds = %41, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  %45 = add i32 %8, 1
  %46 = zext i32 %8 to i64
  %47 = getelementptr inbounds ptr, ptr %3, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !155
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %6, !llvm.loop !237

50:                                               ; preds = %44, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @local_pure_const() #1 !prof !238 !PGOFuncName !239 {
  %1 = tail call zeroext i8 @function_called_by_processed_nodes_p() #17
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3, !prof !240

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %5 = icmp eq ptr %4, null
  br i1 %5, label %125, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 45, i64 1, ptr nonnull %4)
  br label %125

8:                                                ; preds = %0
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %10 = tail call ptr @cgraph_node(ptr noundef %9) #17
  %11 = tail call i32 @cgraph_function_body_availability(ptr noundef %10) #17
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %18, !prof !241

13:                                               ; preds = %8
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %15 = icmp eq ptr %14, null
  br i1 %15, label %125, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 40, i64 1, ptr nonnull %14)
  br label %125

18:                                               ; preds = %8
  %19 = tail call fastcc ptr @analyze_function(ptr noundef %10, i8 noundef zeroext 0) #18
  %20 = load i32, ptr %19, align 4, !tbaa !164
  switch i32 %20, label %91 [
    i32 0, label %21
    i32 1, label %56
  ], !prof !242

21:                                               ; preds = %18
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 1048576
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39, !prof !160

26:                                               ; preds = %21
  tail call void @cgraph_set_readonly_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %27 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !166
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext %28) #17
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %30 = icmp eq ptr %29, null
  br i1 %30, label %91, label %31, !prof !160

31:                                               ; preds = %26
  %32 = load i8, ptr %27, align 1, !tbaa !166
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr @.str.5, ptr @.str.4
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !243
  %36 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
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
  %46 = load i8, ptr %45, align 1, !tbaa !166
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext 0) #17
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %50 = icmp eq ptr %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !243
  %53 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %54 = tail call ptr %52(ptr noundef %53, i32 noundef 2) #17
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.45, ptr noundef %54) #18
  br label %91

56:                                               ; preds = %18
  %57 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 1048576
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  tail call void @cgraph_set_pure_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %62 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !166
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext %63) #17
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %61
  %67 = load i8, ptr %62, align 1, !tbaa !166
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr @.str.5, ptr @.str.4
  %70 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !243
  %71 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
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
  %81 = load i8, ptr %80, align 1, !tbaa !166
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext 0) #17
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !243
  %88 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef 2) #17
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %84, ptr noundef nonnull @.str.45, ptr noundef %89) #18
  br label %91

91:                                               ; preds = %18, %66, %61, %83, %86, %79, %74, %31, %26, %48, %51, %44, %39
  %92 = phi i1 [ true, %18 ], [ true, %79 ], [ false, %86 ], [ false, %83 ], [ true, %74 ], [ false, %66 ], [ false, %61 ], [ true, %44 ], [ false, %51 ], [ false, %48 ], [ true, %39 ], [ false, %31 ], [ false, %26 ]
  %93 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 4
  %94 = load i8, ptr %93, align 2, !tbaa !204
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %122, !prof !240

96:                                               ; preds = %91
  %97 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 33554432
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %122, !prof !251

101:                                              ; preds = %96
  tail call void @cgraph_set_nothrow_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %102 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !155
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105, !prof !163

105:                                              ; preds = %101, %105
  %106 = phi ptr [ %111, %105 ], [ %103, %101 ]
  %107 = getelementptr inbounds %struct.cgraph_edge, ptr %106, i64 0, i32 14
  %108 = load i8, ptr %107, align 2
  %109 = and i8 %108, -5
  store i8 %109, ptr %107, align 2
  %110 = getelementptr inbounds %struct.cgraph_edge, ptr %106, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !155
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %105, !prof !252, !llvm.loop !253

113:                                              ; preds = %105, %101
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116, !prof !170

116:                                              ; preds = %113
  %117 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !243
  %118 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %119 = tail call ptr %117(ptr noundef %118, i32 noundef 2) #17
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %114, ptr noundef nonnull @.str.8, ptr noundef %119) #18
  br label %121

121:                                              ; preds = %116, %113
  tail call void @free(ptr noundef %19) #18
  br label %123

122:                                              ; preds = %91, %96
  tail call void @free(ptr noundef nonnull %19) #18
  br i1 %92, label %125, label %123, !prof !254

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
define internal fastcc ptr @get_function_state(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !255 !PGOFuncName !256 {
  %2 = load ptr, ptr @funct_state_vec, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !257

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef nonnull %2) #18
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !258
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %11, !prof !259

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
define internal fastcc noundef zeroext i8 @self_recursive_p(ptr noundef readonly %0) unnamed_addr #4 !prof !260 !PGOFuncName !261 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9, !prof !262

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !263, !llvm.loop !264

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !171
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %5, !prof !265

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
define internal zeroext i8 @ignore_edge(ptr nocapture noundef readonly %0) #7 !prof !266 !PGOFuncName !267 {
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
define internal fastcc void @VEC_funct_state_heap_free() unnamed_addr #8 !prof !158 !PGOFuncName !268 {
  %1 = load ptr, ptr @funct_state_vec, align 8, !tbaa !155
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !269

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @funct_state_vec, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @finish_state() unnamed_addr #8 !prof !158 !PGOFuncName !270 {
  %1 = load ptr, ptr @funct_state_vec, align 8, !tbaa !155
  tail call void @free(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_funct_state_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !271 !PGOFuncName !272 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !273

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !274
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_funct_state_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !255 !PGOFuncName !276 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_hooks() unnamed_addr #1 !prof !158 !PGOFuncName !277 {
  %1 = load i1, ptr @register_hooks.init_p, align 1
  br i1 %1, label %6, label %2, !prof !269

2:                                                ; preds = %0
  store i1 true, ptr @register_hooks.init_p, align 1
  %3 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @remove_node_data, ptr noundef null) #17
  store ptr %3, ptr @node_removal_hook_holder, align 8, !tbaa !155
  %4 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @duplicate_node_data, ptr noundef null) #17
  store ptr %4, ptr @node_duplication_hook_holder, align 8, !tbaa !155
  %5 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #17
  store ptr %5, ptr @function_insertion_hook_holder, align 8, !tbaa !155
  br label %6

6:                                                ; preds = %0, %2
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_function_state(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !148 !PGOFuncName !278 {
  %3 = load ptr, ptr @funct_state_vec, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !279

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !258
  br label %13

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef nonnull %3) #18
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !258
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %19, label %13, !prof !280

13:                                               ; preds = %5, %8
  %14 = phi i32 [ %7, %5 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %16 = add nsw i32 %14, 1
  tail call fastcc void @VEC_funct_state_heap_safe_grow_cleared(i32 noundef %16) #18
  %17 = load ptr, ptr @funct_state_vec, align 8
  %18 = load i32, ptr %15, align 8, !tbaa !258
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ %18, %13 ], [ %11, %8 ]
  %21 = phi ptr [ %17, %13 ], [ %3, %8 ]
  tail call fastcc void @VEC_funct_state_base_replace(ptr noundef %21, i32 noundef %20, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @analyze_function(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !prof !281 !PGOFuncName !282 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.loop_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !176
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %8 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 12) #17
  store i32 0, ptr %8, align 4, !tbaa !164
  %9 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 1
  store i32 2, ptr %9, align 4, !tbaa !168
  %10 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 2
  store i8 1, ptr %10, align 4, !tbaa !167
  %11 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 3
  store i8 0, ptr %11, align 1, !tbaa !166
  %12 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 4
  store i8 0, ptr %12, align 2, !tbaa !204
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !283

15:                                               ; preds = %2
  %16 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #17
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.11, ptr noundef %16) #18
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !284
  tail call void @push_cfun(ptr noundef %20) #17
  store ptr %6, ptr @current_function_decl, align 8, !tbaa !155
  %21 = load ptr, ptr @cfun, align 8, !tbaa !155
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !285
  %24 = load ptr, ptr %23, align 8, !tbaa !287
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !289
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !291
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %56, label %30, !prof !292

30:                                               ; preds = %18, %47
  %31 = phi ptr [ %49, %47 ], [ %26, %18 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %31) #18
  %32 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !194
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %47, !prof !293

34:                                               ; preds = %30, %44
  call fastcc void @check_stmt(ptr noundef nonnull %3, ptr noundef nonnull %8, i8 noundef zeroext %1) #18
  %35 = load i32, ptr %8, align 4, !tbaa !164
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %44, !prof !294

37:                                               ; preds = %34
  %38 = load i8, ptr %11, align 1, !tbaa !166
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40, !prof !295

40:                                               ; preds = %37
  %41 = load i8, ptr %12, align 2, !tbaa !204
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43, !prof !296

43:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %56

44:                                               ; preds = %34, %37, %40
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %45 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !194
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %34, label %47, !prof !297, !llvm.loop !298

47:                                               ; preds = %44, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !289
  %50 = load ptr, ptr @cfun, align 8, !tbaa !155
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !285
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !291
  %55 = icmp eq ptr %49, %54
  br i1 %55, label %56, label %30, !prof !299, !llvm.loop !300

56:                                               ; preds = %47, %18, %43
  %57 = load i32, ptr %8, align 4, !tbaa !164
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %98, label %59, !prof !301

59:                                               ; preds = %56
  %60 = tail call zeroext i8 @mark_dfs_back_edges() #17
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %98, label %62, !prof !302

62:                                               ; preds = %59
  tail call void @loop_optimizer_init(i32 noundef 15) #17
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr @dump_flags, align 4, !tbaa !150
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
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 26, i64 1, ptr nonnull %74)
  br label %78

78:                                               ; preds = %76, %73
  store i8 1, ptr %11, align 1, !tbaa !166
  br label %97

79:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  tail call void @scev_initialize() #17
  call fastcc void @fel_init(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %80 = load ptr, ptr %5, align 8, !tbaa !155
  %81 = icmp eq ptr %80, null
  br i1 %81, label %96, label %82

82:                                               ; preds = %79, %93
  %83 = phi ptr [ %94, %93 ], [ %80, %79 ]
  %84 = tail call zeroext i8 @finite_loop_p(ptr noundef nonnull %83) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %83, align 8, !tbaa !303
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.13, i32 noundef %90) #18
  br label %92

92:                                               ; preds = %89, %86
  store i8 1, ptr %11, align 1, !tbaa !166
  br label %96

93:                                               ; preds = %82
  call fastcc void @fel_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %94 = load ptr, ptr %5, align 8, !tbaa !155
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %82, !llvm.loop !307

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
  br i1 %101, label %108, label %102, !prof !283

102:                                              ; preds = %98
  store i32 0, ptr %8, align 4, !tbaa !164
  store i32 0, ptr %9, align 4, !tbaa !168
  %103 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 268435456
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i8 0, ptr %11, align 1, !tbaa !166
  store i8 0, ptr %10, align 4, !tbaa !167
  br label %108

108:                                              ; preds = %102, %107, %98
  %109 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 134217728
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113, !prof !283

113:                                              ; preds = %108
  %114 = load i32, ptr %8, align 4, !tbaa !164
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store i32 1, ptr %8, align 4, !tbaa !164
  br label %117

117:                                              ; preds = %116, %113
  store i32 1, ptr %9, align 4, !tbaa !168
  %118 = load i32, ptr %109, align 8
  %119 = and i32 %118, 268435456
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8 0, ptr %11, align 1, !tbaa !166
  store i8 0, ptr %10, align 4, !tbaa !167
  br label %122

122:                                              ; preds = %117, %121, %108
  %123 = load i64, ptr %6, align 8
  %124 = and i64 %123, 33554432
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %127, label %126, !prof !308

126:                                              ; preds = %122
  store i8 0, ptr %12, align 2, !tbaa !204
  br label %127

127:                                              ; preds = %126, %122
  tail call void @pop_cfun() #17
  store ptr %7, ptr @current_function_decl, align 8, !tbaa !155
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %129 = icmp eq ptr %128, null
  br i1 %129, label %154, label %130, !prof !283

130:                                              ; preds = %127
  %131 = load i8, ptr %11, align 1, !tbaa !166
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr nonnull %128)
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i8, ptr %12, align 2, !tbaa !204
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %140 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 30, i64 1, ptr %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, ptr %8, align 4, !tbaa !164
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %146 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 27, i64 1, ptr %145)
  %147 = load i32, ptr %8, align 4, !tbaa !164
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi i32 [ %147, %144 ], [ %142, %141 ]
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !155
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
define internal void @remove_node_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 !prof !221 !PGOFuncName !309 {
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
define internal void @duplicate_node_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 !prof !310 !PGOFuncName !311 {
  %4 = tail call fastcc ptr @get_function_state(ptr noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !312

6:                                                ; preds = %3
  %7 = tail call ptr @xmalloc(i64 noundef 12) #17
  %8 = tail call fastcc ptr @get_function_state(ptr noundef %1) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !313

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
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #1 !prof !221 !PGOFuncName !314 {
  %3 = tail call i32 @cgraph_function_body_availability(ptr noundef %0) #17
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @pointer_set_create() #17
  store ptr %6, ptr @visited_nodes, align 8, !tbaa !155
  %7 = tail call fastcc ptr @analyze_function(ptr noundef %0, i8 noundef zeroext 1) #18
  tail call fastcc void @set_function_state(ptr noundef %0, ptr noundef %7) #18
  %8 = load ptr, ptr @visited_nodes, align 8, !tbaa !155
  tail call void @pointer_set_destroy(ptr noundef %8) #17
  store ptr null, ptr @visited_nodes, align 8, !tbaa !155
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
define internal fastcc void @VEC_funct_state_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #1 !prof !158 !PGOFuncName !315 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !155
  %3 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef %2) #18
  tail call fastcc void @VEC_funct_state_heap_safe_grow(i32 noundef %0) #18
  %4 = load ptr, ptr @funct_state_vec, align 8, !tbaa !155
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
define internal fastcc void @VEC_funct_state_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !148 !PGOFuncName !316 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_funct_state_heap_safe_grow(i32 noundef %0) unnamed_addr #1 !prof !158 !PGOFuncName !317 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !155
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !160

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !274
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_funct_state_heap_reserve_exact(i32 noundef %8) #18
  %9 = load ptr, ptr @funct_state_vec, align 8, !tbaa !155, !nonnull !318, !noundef !318
  store i32 %0, ptr %9, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_funct_state_base_address(ptr noundef readnone %0) unnamed_addr #11 !prof !158 !PGOFuncName !319 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !269
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_funct_state_heap_reserve_exact(i32 noundef %0) unnamed_addr #1 !prof !158 !PGOFuncName !320 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !155
  %3 = tail call fastcc i32 @VEC_funct_state_base_space(ptr noundef %2, i32 noundef %0) #18, !range !321
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !160

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #17
  store ptr %6, ptr @funct_state_vec, align 8, !tbaa !155
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_funct_state_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !158 !PGOFuncName !322 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !160

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !323
  %7 = load i32, ptr %0, align 8, !tbaa !274
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
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #13 !prof !324 !PGOFuncName !325 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !326
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !328
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !329
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !330 !PGOFuncName !331 {
  %2 = load ptr, ptr %0, align 8, !tbaa !326
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_stmt(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !332 !PGOFuncName !333 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %5 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %4) #18, !range !194
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %87, !prof !334

7:                                                ; preds = %3
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !334

10:                                               ; preds = %7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 12, i64 1, ptr nonnull %8)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !155
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %4, i32 noundef 0, i32 noundef 0) #17
  br label %13

13:                                               ; preds = %10, %7
  %14 = tail call zeroext i8 @walk_stmt_load_store_ops(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @check_load, ptr noundef nonnull @check_store) #17
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %4) #18, !range !335
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %40, label %17, !prof !336

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %4) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %40, label %20, !prof !337

20:                                               ; preds = %17
  %21 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !150
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 22, i64 1, ptr nonnull %24)
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 3
  store i8 1, ptr %29, align 1, !tbaa !166
  br label %30

30:                                               ; preds = %28, %20
  %31 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef %4) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 24, i64 1, ptr nonnull %34)
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 4
  store i8 1, ptr %39, align 2, !tbaa !204
  br label %40

40:                                               ; preds = %30, %38, %17, %13
  %41 = tail call fastcc i32 @gimple_code(ptr noundef %4) #18, !range !335
  %42 = trunc i32 %41 to i8
  switch i8 %42, label %87 [
    i8 8, label %46
    i8 4, label %47
    i8 7, label %43
  ], !prof !338

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %4) #18, !range !335
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
  br i1 %52, label %87, label %53, !prof !339

53:                                               ; preds = %47
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %54)
  br label %58

58:                                               ; preds = %56, %53
  store i32 2, ptr %1, align 4, !tbaa !164
  br label %87

59:                                               ; preds = %43, %73
  %60 = phi i32 [ %74, %73 ], [ 0, %43 ]
  %61 = tail call fastcc ptr @gimple_asm_clobber_op(ptr noundef %4, i32 noundef %60) #18
  %62 = getelementptr inbounds %struct.tree_list, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !284
  %64 = load ptr, ptr @memory_identifier_string, align 8, !tbaa !155
  %65 = tail call i32 @simple_cst_equal(ptr noundef %63, ptr noundef %64) #17
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 40, i64 1, ptr nonnull %68)
  br label %72

72:                                               ; preds = %70, %67
  store i32 2, ptr %1, align 4, !tbaa !164
  br label %73

73:                                               ; preds = %72, %59
  %74 = add nuw nsw i32 %60, 1
  %75 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %4) #18, !range !335
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %59, label %77, !llvm.loop !340

77:                                               ; preds = %73, %43
  %78 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %4) #18, !range !194
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 30, i64 1, ptr nonnull %81)
  br label %85

85:                                               ; preds = %83, %80
  store i32 2, ptr %1, align 4, !tbaa !164
  %86 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 3
  store i8 1, ptr %86, align 1, !tbaa !166
  br label %87

87:                                               ; preds = %46, %58, %47, %40, %77, %85, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #13 !prof !332 !PGOFuncName !341 {
  %2 = load ptr, ptr %0, align 8, !tbaa !326
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !342
  store ptr %4, ptr %0, align 8, !tbaa !326
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
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !221 !PGOFuncName !344 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !345
  %4 = load ptr, ptr @cfun, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !347
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !348
  store ptr null, ptr %1, align 8, !tbaa !155
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #18
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #18
  store ptr %11, ptr %0, align 8, !tbaa !348
  %12 = load ptr, ptr @cfun, align 8, !tbaa !155
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !347
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !349
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !303
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !348
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #18
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !351
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !352
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !353

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @finite_loop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !221 !PGOFuncName !354 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !345
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !348
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #18, !range !321
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !345
  %13 = load i32, ptr %3, align 4, !tbaa !150
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #18
  store ptr %14, ptr %1, align 8, !tbaa !155
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !355

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #18
  store ptr null, ptr %1, align 8, !tbaa !155
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
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !324 !PGOFuncName !356 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !357
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !358

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !284
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !359

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !360
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 !prof !324 !PGOFuncName !362 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !359

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !363
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !332 !PGOFuncName !365 {
  %2 = load ptr, ptr %0, align 8, !tbaa !326
  %3 = load ptr, ptr %2, align 8, !tbaa !366
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !332 !PGOFuncName !367 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !335
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @walk_stmt_load_store_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @check_load(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 !prof !368 !PGOFuncName !369 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !150
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10, !prof !370

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
define internal noundef zeroext i8 @check_store(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 !prof !371 !PGOFuncName !372 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !150
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10, !prof !373

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
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !374 !PGOFuncName !375 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_call(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !376 !PGOFuncName !377 {
  %4 = tail call i32 @gimple_call_flags(ptr noundef %1) #17
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #18
  %6 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %1) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %44, label %8, !prof !378

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
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 31, i64 1, ptr nonnull %28)
  br label %32

32:                                               ; preds = %30, %27
  store i8 1, ptr %14, align 1, !tbaa !166
  br label %33

33:                                               ; preds = %32, %24
  br i1 %10, label %34, label %40

34:                                               ; preds = %33
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 33, i64 1, ptr nonnull %35)
  br label %39

39:                                               ; preds = %37, %34
  store i8 1, ptr %15, align 2, !tbaa !204
  br label %40

40:                                               ; preds = %16, %20, %39, %33
  %41 = add nuw i32 %17, 1
  %42 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #18
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %16, label %44, !llvm.loop !379

44:                                               ; preds = %40, %8, %3
  %45 = phi i1 [ false, %3 ], [ %10, %8 ], [ %10, %40 ]
  %46 = icmp ne ptr %5, null
  br i1 %46, label %47, label %71, !prof !378

47:                                               ; preds = %44
  %48 = tail call i32 @setjmp_call_p(ptr noundef nonnull %5) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50, !prof !378

50:                                               ; preds = %47
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 29, i64 1, ptr nonnull %51)
  br label %55

55:                                               ; preds = %53, %50
  %56 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %56, align 1, !tbaa !166
  store i32 2, ptr %0, align 4, !tbaa !164
  br label %57

57:                                               ; preds = %55, %47
  %58 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 6144
  %61 = icmp eq i32 %60, 6144
  br i1 %61, label %62, label %71, !prof !380

62:                                               ; preds = %57
  %63 = and i32 %59, 2047
  switch i32 %63, label %71 [
    i32 490, label %64
    i32 522, label %64
  ]

64:                                               ; preds = %62, %62
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 48, i64 1, ptr nonnull %65)
  br label %69

69:                                               ; preds = %67, %64
  store i32 2, ptr %0, align 4, !tbaa !164
  %70 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %70, align 1, !tbaa !166
  br label %71

71:                                               ; preds = %57, %62, %69, %44
  %72 = icmp ne i8 %2, 0
  %73 = load ptr, ptr @current_function_decl, align 8
  %74 = icmp ne ptr %5, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %78, label %76, !prof !381

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %77, align 1, !tbaa !166
  br label %144

78:                                               ; preds = %71
  %79 = and i1 %72, %46
  br i1 %79, label %144, label %80, !prof !382

80:                                               ; preds = %78
  br i1 %7, label %91, label %81, !prof !383

81:                                               ; preds = %80
  %82 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !150
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 23, i64 1, ptr nonnull %85)
  br label %89

89:                                               ; preds = %87, %84
  %90 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %90, align 1, !tbaa !166
  br label %91

91:                                               ; preds = %89, %81, %80
  br i1 %45, label %92, label %106, !prof !384

92:                                               ; preds = %91
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %1) #17
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %93, ptr noundef nonnull @.str.38, i32 noundef %96) #18
  br i1 %46, label %98, label %104

98:                                               ; preds = %95
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %100 = tail call ptr @decl_assembler_name(ptr noundef nonnull %5) #17
  %101 = getelementptr inbounds %struct.tree_identifier, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !284
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.39, ptr noundef %102) #18
  br label %104

104:                                              ; preds = %95, %98, %92
  %105 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 4
  store i8 1, ptr %105, align 2, !tbaa !204
  br label %106

106:                                              ; preds = %104, %91
  %107 = and i32 %4, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %109, !prof !383

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
  store i8 1, ptr %116, align 1, !tbaa !166
  br label %144

117:                                              ; preds = %106
  %118 = and i32 %4, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %137, label %120, !prof !383

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
  store i8 1, ptr %127, align 1, !tbaa !166
  br label %128

128:                                              ; preds = %126, %121, %120
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 36, i64 1, ptr nonnull %129)
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i32, ptr %0, align 4, !tbaa !164
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  store i32 1, ptr %0, align 4, !tbaa !164
  br label %144

137:                                              ; preds = %117
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140, !prof !383

140:                                              ; preds = %137
  %141 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 43, i64 1, ptr nonnull %138)
  br label %142

142:                                              ; preds = %140, %137
  store i32 2, ptr %0, align 4, !tbaa !164
  %143 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %143, align 1, !tbaa !166
  br label %144

144:                                              ; preds = %78, %142, %136, %133, %109, %110, %115, %76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #1 !prof !385 !PGOFuncName !386 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !221 !PGOFuncName !387 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !284
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !221 !PGOFuncName !388 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !284
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2688, ptr noundef nonnull @.str.10) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !284
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !284
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #18
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !221 !PGOFuncName !389 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @check_decl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #14 !prof !390 !PGOFuncName !391 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 524288
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7, !prof !392

7:                                                ; preds = %3
  store i32 2, ptr %0, align 4, !tbaa !164
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 38, i64 1, ptr nonnull %8)
  br label %72

12:                                               ; preds = %3
  %13 = and i64 %4, 67108864
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %14, i1 %18, i1 false
  br i1 %19, label %72, label %20, !prof !393

20:                                               ; preds = %12
  %21 = and i64 %16, 8192
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23, !prof !392

23:                                               ; preds = %20
  store i32 2, ptr %0, align 4, !tbaa !164
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %25 = icmp eq ptr %24, null
  br i1 %25, label %72, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 50, i64 1, ptr nonnull %24)
  br label %72

28:                                               ; preds = %20
  %29 = icmp eq i8 %2, 0
  br i1 %29, label %35, label %30, !prof !392

30:                                               ; preds = %28
  store i32 2, ptr %0, align 4, !tbaa !164
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %32 = icmp eq ptr %31, null
  br i1 %32, label %72, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 49, i64 1, ptr nonnull %31)
  br label %72

35:                                               ; preds = %28
  %36 = and i64 %16, 33554432
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41, !prof !394

38:                                               ; preds = %35
  %39 = and i64 %4, 134217728
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %38, %35
  %42 = and i64 %4, 1048576
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %51, label %44, !prof !392

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !284
  %47 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %44, %41
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !392

54:                                               ; preds = %51
  %55 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 36, i64 1, ptr nonnull %52)
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, ptr %0, align 4, !tbaa !164
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %72, !prof !395

59:                                               ; preds = %56
  store i32 1, ptr %0, align 4, !tbaa !164
  br label %72

60:                                               ; preds = %38
  %61 = and i64 %4, 1048576
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 36, i64 1, ptr nonnull %64)
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, ptr %0, align 4, !tbaa !164
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, ptr %0, align 4, !tbaa !164
  br label %72

72:                                               ; preds = %12, %68, %71, %60, %59, %56, %44, %30, %33, %23, %26, %7, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_op(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !396 !PGOFuncName !397 {
  %4 = tail call ptr @get_base_address(ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6, !prof !398

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 524288
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10, !prof !399

10:                                               ; preds = %6
  store i32 2, ptr %0, align 4, !tbaa !164
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !155
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
  br i1 %19, label %20, label %34, !prof !400

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !284
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %34, !prof !399

26:                                               ; preds = %20
  %27 = tail call zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef nonnull %22) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34, !prof !398

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 39, i64 1, ptr nonnull %30)
  br label %50

34:                                               ; preds = %15, %3, %26, %20
  %35 = icmp eq i8 %2, 0
  br i1 %35, label %41, label %36, !prof !401

36:                                               ; preds = %34
  store i32 2, ptr %0, align 4, !tbaa !164
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39, !prof !402

39:                                               ; preds = %36
  %40 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 41, i64 1, ptr nonnull %37)
  br label %50

41:                                               ; preds = %34
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !403

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 35, i64 1, ptr nonnull %42)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, ptr %0, align 4, !tbaa !164
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !prof !404

49:                                               ; preds = %46
  store i32 1, ptr %0, align 4, !tbaa !164
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
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !376 !PGOFuncName !405 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #18
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !378

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !284
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !221 !PGOFuncName !406 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !284
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !407 !PGOFuncName !408 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !194
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !409

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !155
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
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !376 !PGOFuncName !410 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !407 !PGOFuncName !411 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !335
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !407 !PGOFuncName !412 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !236
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !409

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !407 !PGOFuncName !413 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !335
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !407 !PGOFuncName !414 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !150
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !221 !PGOFuncName !415 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !prof !221 !PGOFuncName !416 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !347
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !417
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #18
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !221 !PGOFuncName !418 {
  %3 = load i32, ptr %0, align 4, !tbaa !419
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !419
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !221 !PGOFuncName !421 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !422
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
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !221 !PGOFuncName !423 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !424
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !221 !PGOFuncName !426 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !221 !PGOFuncName !427 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !419
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !150
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !150
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #0 !prof !221 !PGOFuncName !428 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !347
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !221 !PGOFuncName !429 {
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: optsize
declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #11 !prof !221 !PGOFuncName !430 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 !prof !221 !PGOFuncName !431 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !432
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #18
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 !prof !221 !PGOFuncName !434 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !432
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !221 !PGOFuncName !435 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !345
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !345
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
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !221 !PGOFuncName !436 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !437
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !221 !PGOFuncName !439 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !155
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!147}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!35 = !{ptr @propagate, ptr @xcalloc, i64 1}
!36 = !{ptr @propagate, ptr @cgraph_remove_function_insertion_hook, i64 1}
!37 = !{ptr @propagate, ptr @cgraph_remove_node_duplication_hook, i64 1}
!38 = !{ptr @propagate, ptr @cgraph_remove_node_removal_hook, i64 1}
!39 = !{ptr @propagate, ptr @ipa_utils_reduced_inorder, i64 2}
!40 = !{ptr @propagate, ptr @get_function_state, i64 25675}
!41 = !{ptr @propagate, ptr @cgraph_function_body_availability, i64 33719}
!42 = !{ptr @propagate, ptr @flags_from_decl_or_type, i64 210}
!43 = !{ptr @propagate, ptr @self_recursive_p, i64 30}
!44 = !{ptr @propagate, ptr @cgraph_set_looping_const_or_pure_flag, i64 1}
!45 = !{ptr @propagate, ptr @free, i64 121}
!46 = !{ptr @propagate, ptr @VEC_funct_state_heap_free, i64 1}
!47 = !{ptr @propagate, ptr @finish_state, i64 1}
!48 = !{ptr @generate_summary, ptr @register_hooks, i64 1}
!49 = !{ptr @generate_summary, ptr @pointer_set_create, i64 1}
!50 = !{ptr @generate_summary, ptr @cgraph_function_body_availability, i64 38}
!51 = !{ptr @generate_summary, ptr @analyze_function, i64 20}
!52 = !{ptr @generate_summary, ptr @set_function_state, i64 20}
!53 = !{ptr @generate_summary, ptr @pointer_set_destroy, i64 1}
!54 = !{ptr @local_pure_const, ptr @function_called_by_processed_nodes_p, i64 78}
!55 = !{ptr @local_pure_const, ptr @fwrite, i64 2}
!56 = !{ptr @local_pure_const, ptr @cgraph_node, i64 77}
!57 = !{ptr @local_pure_const, ptr @cgraph_function_body_availability, i64 77}
!58 = !{ptr @local_pure_const, ptr @analyze_function, i64 76}
!59 = !{ptr @local_pure_const, ptr @cgraph_set_readonly_flag, i64 1}
!60 = !{ptr @local_pure_const, ptr @cgraph_set_looping_const_or_pure_flag, i64 1}
!61 = !{ptr @local_pure_const, ptr @cgraph_set_nothrow_flag, i64 38}
!62 = !{ptr @local_pure_const, ptr @fprintf, i64 1}
!63 = !{ptr @local_pure_const, ptr @free, i64 76}
!64 = !{ptr @local_pure_const, ptr @execute_fixup_cfg, i64 39}
!65 = !{ptr @get_function_state, ptr @VEC_funct_state_base_length, i64 53346}
!66 = !{ptr @get_function_state, ptr @VEC_funct_state_base_index, i64 53345}
!67 = !{ptr @VEC_funct_state_heap_free, ptr @free, i64 1}
!68 = !{ptr @finish_state, ptr @free, i64 1}
!69 = !{ptr @register_hooks, ptr @cgraph_add_node_removal_hook, i64 1}
!70 = !{ptr @register_hooks, ptr @cgraph_add_node_duplication_hook, i64 1}
!71 = !{ptr @register_hooks, ptr @cgraph_add_function_insertion_hook, i64 1}
!72 = !{ptr @set_function_state, ptr @VEC_funct_state_base_length, i64 78}
!73 = !{ptr @set_function_state, ptr @VEC_funct_state_heap_safe_grow_cleared, i64 3}
!74 = !{ptr @set_function_state, ptr @VEC_funct_state_base_replace, i64 80}
!75 = !{ptr @analyze_function, ptr @xcalloc, i64 117}
!76 = !{ptr @analyze_function, ptr @cgraph_node_name, i64 1}
!77 = !{ptr @analyze_function, ptr @fprintf, i64 1}
!78 = !{ptr @analyze_function, ptr @push_cfun, i64 117}
!79 = !{ptr @analyze_function, ptr @gsi_start_bb, i64 439676}
!80 = !{ptr @analyze_function, ptr @gsi_end_p, i64 1470453}
!81 = !{ptr @analyze_function, ptr @check_stmt, i64 1030778}
!82 = !{ptr @analyze_function, ptr @gsi_next, i64 1030777}
!83 = !{ptr @analyze_function, ptr @mark_dfs_back_edges, i64 39}
!84 = !{ptr @analyze_function, ptr @loop_optimizer_init, i64 1}
!85 = !{ptr @analyze_function, ptr @mark_irreducible_loops, i64 1}
!86 = !{ptr @analyze_function, ptr @finite_loop_p, i64 4}
!87 = !{ptr @analyze_function, ptr @fel_next, i64 4}
!88 = !{ptr @analyze_function, ptr @loop_optimizer_finalize, i64 1}
!89 = !{ptr @analyze_function, ptr @pop_cfun, i64 117}
!90 = !{ptr @analyze_function, ptr @fwrite, i64 2}
!91 = !{ptr @duplicate_node_data, ptr @get_function_state, i64 121}
!92 = !{ptr @duplicate_node_data, ptr @xmalloc, i64 40}
!93 = !{ptr @duplicate_node_data, ptr @fancy_abort, i64 1}
!94 = !{ptr @duplicate_node_data, ptr @set_function_state, i64 40}
!95 = !{ptr @VEC_funct_state_heap_safe_grow_cleared, ptr @VEC_funct_state_base_length, i64 1}
!96 = !{ptr @VEC_funct_state_heap_safe_grow_cleared, ptr @VEC_funct_state_heap_safe_grow, i64 1}
!97 = !{ptr @VEC_funct_state_heap_safe_grow_cleared, ptr @VEC_funct_state_base_address, i64 1}
!98 = !{ptr @VEC_funct_state_heap_safe_grow, ptr @VEC_funct_state_heap_reserve_exact, i64 1}
!99 = !{ptr @VEC_funct_state_heap_reserve_exact, ptr @VEC_funct_state_base_space, i64 1}
!100 = !{ptr @VEC_funct_state_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 1}
!101 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 447205}
!102 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 447205}
!103 = !{ptr @check_stmt, ptr @gsi_stmt, i64 1048432}
!104 = !{ptr @check_stmt, ptr @is_gimple_debug, i64 1048432}
!105 = !{ptr @check_stmt, ptr @fwrite, i64 8}
!106 = !{ptr @check_stmt, ptr @print_gimple_stmt, i64 1}
!107 = !{ptr @check_stmt, ptr @walk_stmt_load_store_ops, i64 1048431}
!108 = !{ptr @check_stmt, ptr @gimple_code, i64 2096862}
!109 = !{ptr @check_stmt, ptr @stmt_could_throw_p, i64 841217}
!110 = !{ptr @check_stmt, ptr @stmt_can_throw_external, i64 1}
!111 = !{ptr @check_stmt, ptr @gimple_asm_nclobbers, i64 21}
!112 = !{ptr @check_stmt, ptr @check_call, i64 207214}
!113 = !{ptr @check_stmt, ptr @gimple_label_label, i64 8822}
!114 = !{ptr @check_stmt, ptr @gimple_asm_clobber_op, i64 20}
!115 = !{ptr @check_stmt, ptr @simple_cst_equal, i64 20}
!116 = !{ptr @check_stmt, ptr @gimple_asm_volatile_p, i64 1}
!117 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1048432}
!118 = !{ptr @check_load, ptr @check_decl, i64 260086}
!119 = !{ptr @check_load, ptr @check_op, i64 586}
!120 = !{ptr @check_store, ptr @check_decl, i64 1}
!121 = !{ptr @check_store, ptr @check_op, i64 41}
!122 = !{ptr @check_call, ptr @gimple_call_flags, i64 207214}
!123 = !{ptr @check_call, ptr @gimple_call_fndecl, i64 207214}
!124 = !{ptr @check_call, ptr @stmt_could_throw_p, i64 207214}
!125 = !{ptr @check_call, ptr @stmt_can_throw_external, i64 1}
!126 = !{ptr @check_call, ptr @gimple_num_ops, i64 21}
!127 = !{ptr @check_call, ptr @gimple_op, i64 33}
!128 = !{ptr @check_call, ptr @tree_could_throw_p, i64 13}
!129 = !{ptr @check_call, ptr @fwrite, i64 9}
!130 = !{ptr @check_call, ptr @setjmp_call_p, i64 207213}
!131 = !{ptr @check_call, ptr @lookup_stmt_eh_lp, i64 1}
!132 = !{ptr @check_call, ptr @fprintf, i64 1}
!133 = !{ptr @gimple_label_label, ptr @gimple_op, i64 8821}
!134 = !{ptr @check_decl, ptr @fwrite, i64 4}
!135 = !{ptr @check_op, ptr @get_base_address, i64 627}
!136 = !{ptr @check_op, ptr @fwrite, i64 4}
!137 = !{ptr @check_op, ptr @ptr_deref_may_alias_global_p, i64 624}
!138 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 207214}
!139 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 216035}
!140 = !{ptr @gimple_op, ptr @gimple_ops, i64 216034}
!141 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 207214}
!142 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 216035}
!143 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 216035}
!144 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!145 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 216035}
!146 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 216035}
!147 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!148 = !{!"function_entry_count", i64 80}
!149 = !{!"ipa-pure-const.c:gate_pure_const"}
!150 = !{!151, !151, i64 0}
!151 = !{!"int", !152, i64 0}
!152 = !{!"omnipotent char", !153, i64 0}
!153 = !{!"Simple C/C++ TBAA"}
!154 = !{!"branch_weights", i32 1, i32 81}
!155 = !{!156, !156, i64 0}
!156 = !{!"any pointer", !152, i64 0}
!157 = !{!"branch_weights", i32 81, i32 1}
!158 = !{!"function_entry_count", i64 1}
!159 = !{!"ipa-pure-const.c:propagate"}
!160 = !{!"branch_weights", i32 2, i32 1}
!161 = !{!"branch_weights", i32 127, i32 1}
!162 = !{!"branch_weights", i32 1, i32 127}
!163 = !{!"branch_weights", i32 1, i32 163}
!164 = !{!165, !151, i64 0}
!165 = !{!"funct_state_d", !151, i64 0, !151, i64 4, !152, i64 8, !152, i64 9, !152, i64 10}
!166 = !{!165, !152, i64 9}
!167 = !{!165, !152, i64 8}
!168 = !{!165, !151, i64 4}
!169 = !{!"branch_weights", i32 41, i32 41}
!170 = !{!"branch_weights", i32 41, i32 1}
!171 = !{!172, !156, i64 16}
!172 = !{!"cgraph_edge", !173, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !151, i64 72, !151, i64 76, !151, i64 80, !151, i64 84, !174, i64 88, !151, i64 90, !151, i64 90, !151, i64 90}
!173 = !{!"long", !152, i64 0}
!174 = !{!"short", !152, i64 0}
!175 = !{!"branch_weights", i32 41, i32 324}
!176 = !{!177, !156, i64 0}
!177 = !{!"cgraph_node", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !156, i64 104, !156, i64 112, !156, i64 120, !156, i64 128, !156, i64 136, !178, i64 144, !180, i64 184, !181, i64 224, !182, i64 232, !183, i64 256, !173, i64 288, !151, i64 296, !151, i64 300, !151, i64 304, !151, i64 308, !151, i64 308, !151, i64 308, !151, i64 308, !151, i64 308, !151, i64 308, !151, i64 308, !151, i64 308, !151, i64 309, !151, i64 309}
!178 = !{!"cgraph_local_info", !156, i64 0, !179, i64 8, !151, i64 32, !151, i64 32, !151, i64 32, !151, i64 32, !151, i64 32, !151, i64 32, !151, i64 32, !151, i64 32}
!179 = !{!"inline_summary", !173, i64 0, !151, i64 8, !151, i64 12, !151, i64 16, !151, i64 20}
!180 = !{!"cgraph_global_info", !173, i64 0, !173, i64 8, !156, i64 16, !151, i64 24, !151, i64 28, !151, i64 32, !152, i64 36}
!181 = !{!"cgraph_rtl_info", !151, i64 0}
!182 = !{!"cgraph_clone_info", !156, i64 0, !156, i64 8, !156, i64 16}
!183 = !{!"cgraph_thunk_info", !173, i64 0, !173, i64 8, !156, i64 16, !152, i64 24, !152, i64 25, !152, i64 26}
!184 = !{!"branch_weights", i32 324, i32 1}
!185 = !{!"branch_weights", i32 127, i32 46465}
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!177, !156, i64 128}
!189 = !{!190, !156, i64 16}
!190 = !{!"ipa_dfs_info", !151, i64 0, !151, i64 4, !152, i64 8, !152, i64 9, !156, i64 16, !156, i64 24}
!191 = !{!"branch_weights", i32 163, i32 161}
!192 = !{!"branch_weights", i32 162652, i32 2147320996}
!193 = !{!"branch_weights", i32 60, i32 22}
!194 = !{i8 0, i8 2}
!195 = !{!"branch_weights", i32 81, i32 1, i32 1}
!196 = !{!"branch_weights", i32 161, i32 1}
!197 = distinct !{!197, !187}
!198 = !{!"branch_weights", i32 127, i32 5057}
!199 = distinct !{!199, !187}
!200 = !{!"branch_weights", i32 36, i32 81}
!201 = !{!"branch_weights", i32 127, i32 7297}
!202 = distinct !{!202, !187}
!203 = !{!"branch_weights", i32 1, i32 161}
!204 = !{!165, !152, i64 10}
!205 = !{!"branch_weights", i32 -1577058304, i32 33554432}
!206 = !{!"branch_weights", i32 52785, i32 16390}
!207 = !{!"branch_weights", i32 52785, i32 1}
!208 = !{!"branch_weights", i32 16390, i32 1}
!209 = !{!"branch_weights", i32 161, i32 138187}
!210 = distinct !{!210, !187}
!211 = !{!"branch_weights", i32 0, i32 -2147483648}
!212 = distinct !{!212, !187}
!213 = distinct !{!213, !187}
!214 = distinct !{!214, !187}
!215 = !{!"branch_weights", i32 81, i32 36}
!216 = distinct !{!216, !187}
!217 = !{!"ipa-pure-const.c:generate_summary"}
!218 = !{!"branch_weights", i32 40, i32 36}
!219 = !{!"branch_weights", i32 127, i32 4673}
!220 = distinct !{!220, !187}
!221 = !{!"function_entry_count", i64 0}
!222 = !{!"ipa-pure-const.c:pure_const_write_summary"}
!223 = !{i64 0, i64 8, !155, i64 8, i64 4, !150}
!224 = !{i64 0, i64 4, !150}
!225 = distinct !{!225, !187}
!226 = !{!227, !156, i64 16}
!227 = !{!"lto_simple_output_block", !151, i64 0, !156, i64 8, !156, i64 16}
!228 = !{!227, !156, i64 8}
!229 = !{!230, !156, i64 168}
!230 = !{!"lto_out_decl_state", !152, i64 0, !156, i64 168, !156, i64 176}
!231 = distinct !{!231, !187}
!232 = !{!"ipa-pure-const.c:pure_const_read_summary"}
!233 = !{!234, !156, i64 16}
!234 = !{!"lto_file_decl_data", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !151, i64 40, !156, i64 48, !156, i64 56}
!235 = distinct !{!235, !187}
!236 = !{!173, !173, i64 0}
!237 = distinct !{!237, !187}
!238 = !{!"function_entry_count", i64 78}
!239 = !{!"ipa-pure-const.c:local_pure_const"}
!240 = !{!"branch_weights", i32 79, i32 1}
!241 = !{!"branch_weights", i32 1, i32 79}
!242 = !{!"branch_weights", i32 78, i32 2, i32 1}
!243 = !{!244, !156, i64 176}
!244 = !{!"lang_hooks", !156, i64 0, !173, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !156, i64 104, !156, i64 112, !156, i64 120, !156, i64 128, !156, i64 136, !156, i64 144, !156, i64 152, !156, i64 160, !156, i64 168, !156, i64 176, !156, i64 184, !156, i64 192, !156, i64 200, !156, i64 208, !156, i64 216, !156, i64 224, !156, i64 232, !245, i64 240, !246, i64 248, !247, i64 256, !248, i64 272, !249, i64 432, !250, i64 560, !156, i64 584, !156, i64 592, !156, i64 600, !156, i64 608, !156, i64 616, !156, i64 624, !156, i64 632, !156, i64 640, !156, i64 648, !156, i64 656, !156, i64 664, !152, i64 672}
!245 = !{!"lang_hooks_for_tree_inlining", !156, i64 0}
!246 = !{!"lang_hooks_for_callgraph", !156, i64 0}
!247 = !{!"lang_hooks_for_tree_dump", !156, i64 0, !156, i64 8}
!248 = !{!"lang_hooks_for_decls", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !156, i64 104, !156, i64 112, !156, i64 120, !156, i64 128, !156, i64 136, !156, i64 144, !156, i64 152}
!249 = !{!"lang_hooks_for_types", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !156, i64 104, !156, i64 112, !152, i64 120}
!250 = !{!"lang_hooks_for_lto", !156, i64 0, !156, i64 8, !156, i64 16}
!251 = !{!"branch_weights", i32 41, i32 39}
!252 = !{!"branch_weights", i32 163, i32 210993}
!253 = distinct !{!253, !187}
!254 = !{!"branch_weights", i32 2119629542, i32 27854106}
!255 = !{!"function_entry_count", i64 53347}
!256 = !{!"ipa-pure-const.c:get_function_state"}
!257 = !{!"branch_weights", i32 1, i32 53348}
!258 = !{!177, !151, i64 296}
!259 = !{!"branch_weights", i32 53348, i32 1}
!260 = !{!"function_entry_count", i64 59}
!261 = !{!"ipa-pure-const.c:self_recursive_p"}
!262 = !{!"branch_weights", i32 1, i32 239}
!263 = !{!"branch_weights", i32 239, i32 269725}
!264 = distinct !{!264, !187}
!265 = !{!"branch_weights", i32 1, i32 67491}
!266 = !{!"function_entry_count", i64 69173}
!267 = !{!"ipa-pure-const.c:ignore_edge"}
!268 = !{!"ipa-pure-const.c:VEC_funct_state_heap_free"}
!269 = !{!"branch_weights", i32 1, i32 2}
!270 = !{!"ipa-pure-const.c:finish_state"}
!271 = !{!"function_entry_count", i64 53428}
!272 = !{!"ipa-pure-const.c:VEC_funct_state_base_length"}
!273 = !{!"branch_weights", i32 3, i32 53427}
!274 = !{!275, !151, i64 0}
!275 = !{!"VEC_funct_state_base", !151, i64 0, !151, i64 4, !152, i64 8}
!276 = !{!"ipa-pure-const.c:VEC_funct_state_base_index"}
!277 = !{!"ipa-pure-const.c:register_hooks"}
!278 = !{!"ipa-pure-const.c:set_function_state"}
!279 = !{!"branch_weights", i32 2, i32 80}
!280 = !{!"branch_weights", i32 80, i32 1}
!281 = !{!"function_entry_count", i64 117}
!282 = !{!"ipa-pure-const.c:analyze_function"}
!283 = !{!"branch_weights", i32 118, i32 1}
!284 = !{!152, !152, i64 0}
!285 = !{!286, !156, i64 8}
!286 = !{!"function", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !151, i64 104, !151, i64 108, !151, i64 112, !151, i64 116, !151, i64 120, !151, i64 124, !156, i64 128, !151, i64 136, !151, i64 137, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 139, !151, i64 139, !151, i64 139, !151, i64 139, !151, i64 139, !151, i64 139, !151, i64 139}
!287 = !{!288, !156, i64 0}
!288 = !{!"control_flow_graph", !156, i64 0, !156, i64 8, !156, i64 16, !151, i64 24, !151, i64 28, !151, i64 32, !156, i64 40, !151, i64 48, !152, i64 52, !152, i64 60, !151, i64 68, !151, i64 72}
!289 = !{!290, !156, i64 56}
!290 = !{!"basic_block_def", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !152, i64 32, !156, i64 48, !156, i64 56, !152, i64 64, !173, i64 72, !151, i64 80, !151, i64 84, !151, i64 88, !151, i64 92, !151, i64 96}
!291 = !{!288, !156, i64 8}
!292 = !{!"branch_weights", i32 1, i32 235}
!293 = !{!"branch_weights", i32 447205, i32 1}
!294 = !{!"branch_weights", i32 693156, i32 355278}
!295 = !{!"branch_weights", i32 4, i32 693153}
!296 = !{!"branch_weights", i32 693153, i32 1}
!297 = !{!"branch_weights", i32 601228, i32 447205}
!298 = distinct !{!298, !187}
!299 = !{!"branch_weights", i32 235, i32 894177}
!300 = distinct !{!300, !187}
!301 = !{!"branch_weights", i32 79, i32 40}
!302 = !{!"branch_weights", i32 40, i32 1}
!303 = !{!304, !151, i64 0}
!304 = !{!"loop", !151, i64 0, !151, i64 4, !156, i64 8, !156, i64 16, !305, i64 24, !151, i64 32, !151, i64 36, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !306, i64 80, !306, i64 96, !152, i64 112, !152, i64 113, !151, i64 116, !156, i64 120, !156, i64 128, !152, i64 136, !156, i64 144}
!305 = !{!"lpt_decision", !151, i64 0, !151, i64 4}
!306 = !{!"", !173, i64 0, !173, i64 8}
!307 = distinct !{!307, !187}
!308 = !{!"branch_weights", i32 41, i32 78}
!309 = !{!"ipa-pure-const.c:remove_node_data"}
!310 = !{!"function_entry_count", i64 41}
!311 = !{!"ipa-pure-const.c:duplicate_node_data"}
!312 = !{!"branch_weights", i32 1, i32 42}
!313 = !{!"branch_weights", i32 42, i32 1}
!314 = !{!"ipa-pure-const.c:add_new_function"}
!315 = !{!"ipa-pure-const.c:VEC_funct_state_heap_safe_grow_cleared"}
!316 = !{!"ipa-pure-const.c:VEC_funct_state_base_replace"}
!317 = !{!"ipa-pure-const.c:VEC_funct_state_heap_safe_grow"}
!318 = !{}
!319 = !{!"ipa-pure-const.c:VEC_funct_state_base_address"}
!320 = !{!"ipa-pure-const.c:VEC_funct_state_heap_reserve_exact"}
!321 = !{i32 0, i32 2}
!322 = !{!"ipa-pure-const.c:VEC_funct_state_base_space"}
!323 = !{!275, !151, i64 4}
!324 = !{!"function_entry_count", i64 447205}
!325 = !{!"ipa-pure-const.c:gsi_start_bb"}
!326 = !{!327, !156, i64 0}
!327 = !{!"", !156, i64 0, !156, i64 8, !156, i64 16}
!328 = !{!327, !156, i64 8}
!329 = !{!327, !156, i64 16}
!330 = !{!"function_entry_count", i64 1495637}
!331 = !{!"ipa-pure-const.c:gsi_end_p"}
!332 = !{!"function_entry_count", i64 1048432}
!333 = !{!"ipa-pure-const.c:check_stmt"}
!334 = !{!"branch_weights", i32 1048433, i32 1}
!335 = !{i32 0, i32 256}
!336 = !{!"branch_weights", i32 207215, i32 841219}
!337 = !{!"branch_weights", i32 841219, i32 1}
!338 = !{!"branch_weights", i32 832398, i32 207215, i32 8822, i32 1}
!339 = !{!"branch_weights", i32 8822, i32 1}
!340 = distinct !{!340, !187}
!341 = !{!"ipa-pure-const.c:gsi_next"}
!342 = !{!343, !156, i64 16}
!343 = !{!"gimple_seq_node_d", !156, i64 0, !156, i64 8, !156, i64 16}
!344 = !{!"ipa-pure-const.c:fel_init"}
!345 = !{!346, !151, i64 8}
!346 = !{!"", !156, i64 0, !151, i64 8}
!347 = !{!286, !156, i64 32}
!348 = !{!346, !156, i64 0}
!349 = !{!350, !156, i64 24}
!350 = !{!"loops", !151, i64 0, !156, i64 8, !156, i64 16, !156, i64 24}
!351 = !{!304, !156, i64 48}
!352 = !{!304, !156, i64 56}
!353 = distinct !{!353, !187}
!354 = !{!"ipa-pure-const.c:fel_next"}
!355 = distinct !{!355, !187}
!356 = !{!"ipa-pure-const.c:bb_seq"}
!357 = !{!290, !151, i64 96}
!358 = !{!"branch_weights", i32 447206, i32 1}
!359 = !{!"branch_weights", i32 1, i32 447206}
!360 = !{!361, !156, i64 0}
!361 = !{!"gimple_bb_info", !156, i64 0, !156, i64 8}
!362 = !{!"ipa-pure-const.c:gimple_seq_first"}
!363 = !{!364, !156, i64 0}
!364 = !{!"gimple_seq_d", !156, i64 0, !156, i64 8, !156, i64 16}
!365 = !{!"ipa-pure-const.c:gsi_stmt"}
!366 = !{!343, !156, i64 0}
!367 = !{!"ipa-pure-const.c:is_gimple_debug"}
!368 = !{!"function_entry_count", i64 260672}
!369 = !{!"ipa-pure-const.c:check_load"}
!370 = !{!"branch_weights", i32 260088, i32 586}
!371 = !{!"function_entry_count", i64 42}
!372 = !{!"ipa-pure-const.c:check_store"}
!373 = !{!"branch_weights", i32 1, i32 43}
!374 = !{!"function_entry_count", i64 3793401}
!375 = !{!"ipa-pure-const.c:gimple_code"}
!376 = !{!"function_entry_count", i64 207214}
!377 = !{!"ipa-pure-const.c:check_call"}
!378 = !{!"branch_weights", i32 207215, i32 1}
!379 = distinct !{!379, !187}
!380 = !{!"branch_weights", i32 1, i32 207215}
!381 = !{!"branch_weights", i32 -718229181, i32 17260}
!382 = !{!"branch_weights", i32 1194704660, i32 -1908461437}
!383 = !{!"branch_weights", i32 138087, i32 1}
!384 = !{!"branch_weights", i32 1, i32 138087}
!385 = !{!"function_entry_count", i64 8821}
!386 = !{!"ipa-pure-const.c:gimple_label_label"}
!387 = !{!"ipa-pure-const.c:gimple_asm_nclobbers"}
!388 = !{!"ipa-pure-const.c:gimple_asm_clobber_op"}
!389 = !{!"ipa-pure-const.c:gimple_asm_volatile_p"}
!390 = !{!"function_entry_count", i64 260087}
!391 = !{!"ipa-pure-const.c:check_decl"}
!392 = !{!"branch_weights", i32 260088, i32 1}
!393 = !{!"branch_weights", i32 16255, i32 -67090557}
!394 = !{!"branch_weights", i32 1, i32 260088}
!395 = !{!"branch_weights", i32 32, i32 260057}
!396 = !{!"function_entry_count", i64 627}
!397 = !{!"ipa-pure-const.c:check_op"}
!398 = !{!"branch_weights", i32 1, i32 628}
!399 = !{!"branch_weights", i32 628, i32 1}
!400 = !{!"branch_weights", i32 2515, i32 1}
!401 = !{!"branch_weights", i32 586, i32 43}
!402 = !{!"branch_weights", i32 43, i32 1}
!403 = !{!"branch_weights", i32 586, i32 1}
!404 = !{!"branch_weights", i32 48, i32 539}
!405 = !{!"ipa-pure-const.c:gimple_call_fndecl"}
!406 = !{!"ipa-pure-const.c:gimple_num_ops"}
!407 = !{!"function_entry_count", i64 216035}
!408 = !{!"ipa-pure-const.c:gimple_op"}
!409 = !{!"branch_weights", i32 1, i32 216036}
!410 = !{!"ipa-pure-const.c:gimple_call_fn"}
!411 = !{!"ipa-pure-const.c:gimple_has_ops"}
!412 = !{!"ipa-pure-const.c:gimple_ops"}
!413 = !{!"ipa-pure-const.c:gimple_statement_structure"}
!414 = !{!"ipa-pure-const.c:gss_for_code"}
!415 = !{!"ipa-pure-const.c:VEC_int_heap_alloc"}
!416 = !{!"ipa-pure-const.c:number_of_loops"}
!417 = !{!350, !156, i64 8}
!418 = !{!"ipa-pure-const.c:VEC_int_base_quick_push"}
!419 = !{!420, !151, i64 0}
!420 = !{!"VEC_int_base", !151, i64 0, !151, i64 4, !152, i64 8}
!421 = !{!"ipa-pure-const.c:loop_outer"}
!422 = !{!304, !156, i64 40}
!423 = !{!"ipa-pure-const.c:VEC_loop_p_base_length"}
!424 = !{!425, !151, i64 0}
!425 = !{!"VEC_loop_p_base", !151, i64 0, !151, i64 4, !152, i64 8}
!426 = !{!"ipa-pure-const.c:VEC_loop_p_base_index"}
!427 = !{!"ipa-pure-const.c:VEC_int_base_iterate"}
!428 = !{!"ipa-pure-const.c:get_loop"}
!429 = !{!"ipa-pure-const.c:VEC_int_heap_free"}
!430 = !{!"ipa-pure-const.c:csi_start"}
!431 = !{!"ipa-pure-const.c:csi_end_p"}
!432 = !{!433, !156, i64 8}
!433 = !{!"cgraph_node_set_def", !156, i64 0, !156, i64 8, !156, i64 16}
!434 = !{!"ipa-pure-const.c:csi_node"}
!435 = !{!"ipa-pure-const.c:csi_next"}
!436 = !{!"ipa-pure-const.c:VEC_cgraph_node_ptr_base_length"}
!437 = !{!438, !151, i64 0}
!438 = !{!"VEC_cgraph_node_ptr_base", !151, i64 0, !151, i64 4, !152, i64 8}
!439 = !{!"ipa-pure-const.c:VEC_cgraph_node_ptr_base_index"}
