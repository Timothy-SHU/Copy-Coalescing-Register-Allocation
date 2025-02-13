; ModuleID = 'cfgrtl.c'
source_filename = "cfgrtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.cfg_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

@x_rtl = external global %struct.rtl_data, align 8
@.str = private unnamed_addr constant [9 x i8] c"cfgrtl.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@pass_free_cfg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr null, ptr @rest_of_pass_free_cfg, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0 } }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"*free_cfg\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Removing jump %i.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Redirecting jump %i from %i to %i.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Replacing insn %i by jump %i\0A\00", align 1
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c";; Start of basic block (\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c") -> %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c";; Pred edge \00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c";; Insn is not within a basic block\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c";; Insn is in multiple basic blocks\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c";; End of basic block %d -> (\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c";; Succ edge \00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\0A;; Insns in epilogue delay list:\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Purged edges from bb %i\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Purged non-fallthru edges from bb %i\0A\00", align 1
@rtl_cfg_hooks = dso_local local_unnamed_addr global %struct.cfg_hooks { ptr @.str.20, ptr @rtl_verify_flow_info, ptr @rtl_dump_bb, ptr @rtl_create_basic_block, ptr @rtl_redirect_edge_and_branch, ptr @rtl_redirect_edge_and_branch_force, ptr @rtl_can_remove_branch_p, ptr @rtl_delete_block, ptr @rtl_split_block, ptr @rtl_move_block_after, ptr @rtl_can_merge_blocks, ptr @rtl_merge_blocks, ptr @rtl_predict_edge, ptr @rtl_predicted_by_p, ptr null, ptr null, ptr @rtl_split_edge, ptr @rtl_make_forwarder_block, ptr @rtl_tidy_fallthru_edge, ptr @rtl_block_ends_with_call_p, ptr @rtl_block_ends_with_condjump_p, ptr @rtl_flow_call_edges_add, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"insn %d outside of basic blocks has non-NULL bb field\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"end insn %d for block %d not found in the insn stream\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"insn %d is in multiple basic blocks (%d and %d)\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"head insn %d for block %d not found in the insn stream\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"missing barrier after block %i\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"verify_flow_info: Incorrect blocks for fallthru %i->%i\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"verify_flow_info: Incorrect fallthru %i->%i\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"wrong insn in the fallthru edge\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"basic blocks not laid down consecutively\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"insn outside basic block\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"return not followed by barrier\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"number of bb notes in insn chain (%d) != n_basic_blocks (%d)\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"BB_RTL flag not set for block %d\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"insn %d basic block pointer is %d, should be %d\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"insn %d in header of bb %d has non-NULL basic block\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"insn %d in footer of bb %d has non-NULL basic block\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"verify_flow_info: REG_BR_PROB does not match cfg %wi %i\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"fallthru edge crosses section boundary (bb %i)\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"missing REG_EH_REGION note in the end of bb %i\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"too many eh edges %i\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"too many outgoing branch edges from bb %i\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"fallthru edge after unconditional jump %i\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"wrong number of branch edges after unconditional jump %i\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"wrong amount of branch edges after conditional jump %i\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"call edges for non-call insn in bb %i\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"abnormal edges for no purpose in bb %i\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"insn %d inside basic block %d but block_for_insn is NULL\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"insn %d inside basic block %d but block_for_insn is %i\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"NOTE_INSN_BASIC_BLOCK is missing for block %d\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"NOTE_INSN_BASIC_BLOCK %d in middle of basic block %d\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"in basic block %d:\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"flow control insn inside a basic block\00", align 1
@currently_expanding_to_rtl = external local_unnamed_addr global i32, align 4
@.str.53 = private unnamed_addr constant [30 x i8] c"Edge %i->%i redirected to %i\0A\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.54 = private unnamed_addr constant [19 x i8] c"deleting block %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"merging block %d into block %d\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@cfg_layout_rtl_cfg_hooks = dso_local local_unnamed_addr global %struct.cfg_hooks { ptr @.str.56, ptr @rtl_verify_flow_info_1, ptr @rtl_dump_bb, ptr @cfg_layout_create_basic_block, ptr @cfg_layout_redirect_edge_and_branch, ptr @cfg_layout_redirect_edge_and_branch_force, ptr @rtl_can_remove_branch_p, ptr @cfg_layout_delete_block, ptr @cfg_layout_split_block, ptr @rtl_move_block_after, ptr @cfg_layout_can_merge_blocks_p, ptr @cfg_layout_merge_blocks, ptr @rtl_predict_edge, ptr @rtl_predicted_by_p, ptr @cfg_layout_can_duplicate_bb_p, ptr @cfg_layout_duplicate_bb, ptr @cfg_layout_split_edge, ptr @rtl_make_forwarder_block, ptr null, ptr @rtl_block_ends_with_call_p, ptr @rtl_block_ends_with_condjump_p, ptr @rtl_flow_call_edges_add, ptr null, ptr null, ptr @duplicate_loop_to_header_edge, ptr @rtl_lv_add_condition_to_bb, ptr null, ptr @rtl_extract_cond_bb_edges, ptr null }, align 8
@.str.56 = private unnamed_addr constant [15 x i8] c"cfglayout mode\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"Redirecting entry edge from bb %i to %i\0A\00", align 1
@.str.58 = private unnamed_addr constant [59 x i8] c"Fallthru edge unified with branch %i->%i redirected to %i\0A\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"Fallthru edge %i->%i redirected to %i\0A\00", align 1
@cfg_layout_function_footer = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [26 x i8] c"Merged blocks %d and %d.\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @delete_insn(ptr noundef %0) local_unnamed_addr #0 !prof !293 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %21, !prof !297

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @can_delete_label_p(ptr noundef nonnull %0) #14, !range !298
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19, !prof !299

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, -65536
  %15 = or disjoint i32 %14, 13
  store i32 %15, ptr %0, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  store i32 1, ptr %16, align 8, !tbaa !294
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  store ptr %12, ptr %17, align 8, !tbaa !294
  tail call void @remove_node_from_expr_list(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10)) #15
  %18 = load i32, ptr %0, align 8
  br label %29

19:                                               ; preds = %7
  tail call void @remove_node_from_expr_list(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10)) #15
  %20 = load i32, ptr %0, align 8
  br label %21

21:                                               ; preds = %1, %19
  %22 = phi i32 [ %4, %1 ], [ %20, %19 ]
  %23 = and i32 %22, 134217728
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !300

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.1) #15
  br label %26

26:                                               ; preds = %21, %25
  tail call void @remove_insn(ptr noundef nonnull %0) #15
  %27 = load i32, ptr %0, align 8
  %28 = or i32 %27, 134217728
  store i32 %28, ptr %0, align 8
  br label %29

29:                                               ; preds = %10, %26
  %30 = phi i32 [ %18, %10 ], [ %28, %26 ]
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %61, !prof !301

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !294
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37, !prof !302

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %41, label %45, !prof !303

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !294
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %42, align 8, !tbaa !294
  br label %45

45:                                               ; preds = %41, %37, %33
  %46 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 9, ptr noundef null) #15
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48, !prof !304

48:                                               ; preds = %45, %55
  %49 = phi ptr [ %59, %55 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !294
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %61, !prof !305

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !294
  %58 = add nsw i32 %57, -1
  store i32 %58, ptr %56, align 8, !tbaa !294
  tail call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %49) #15
  %59 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 9, ptr noundef null) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %48, !prof !306, !llvm.loop !307

61:                                               ; preds = %55, %48, %45, %29
  %62 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef null) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64, !prof !309

64:                                               ; preds = %61, %71
  %65 = phi ptr [ %75, %71 ], [ %62, %61 ]
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !294
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 12
  br i1 %70, label %71, label %77, !prof !310

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !294
  %74 = add nsw i32 %73, -1
  store i32 %74, ptr %72, align 8, !tbaa !294
  tail call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %65) #15
  %75 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef null) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %64, !prof !311, !llvm.loop !312

77:                                               ; preds = %64, %71, %61
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 9
  br i1 %80, label %81, label %115, !prof !301

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !294
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65534
  %86 = icmp eq i32 %85, 20
  br i1 %86, label %87, label %115, !prof !313

87:                                               ; preds = %81
  %88 = and i32 %84, 21
  %89 = icmp eq i32 %88, 21
  %90 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %91 = zext i1 %89 to i64
  %92 = getelementptr inbounds [1 x %union.rtunion_def], ptr %90, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !294
  %94 = load i32, ptr %93, align 8, !tbaa !314
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %87
  %97 = zext nneg i32 %94 to i64
  br label %98

98:                                               ; preds = %96, %112
  %99 = phi i64 [ 0, %96 ], [ %113, %112 ]
  %100 = load ptr, ptr %92, align 8, !tbaa !294
  %101 = getelementptr inbounds %struct.rtvec_def, ptr %100, i64 0, i32 1, i64 %99
  %102 = load ptr, ptr %101, align 8, !tbaa !317
  %103 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !294
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 13
  br i1 %107, label %112, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !294
  %111 = add nsw i32 %110, -1
  store i32 %111, ptr %109, align 8, !tbaa !294
  br label %112

112:                                              ; preds = %108, %98
  %113 = add nuw nsw i64 %99, 1
  %114 = icmp eq i64 %113, %97
  br i1 %114, label %115, label %98, !llvm.loop !319

115:                                              ; preds = %112, %87, %81, %77
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @can_delete_label_p(ptr noundef %0) unnamed_addr #0 !prof !320 !PGOFuncName !321 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 268435456
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14, !prof !322

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !294
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14, !prof !323

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !324
  %11 = tail call i32 @in_expr_list_p(ptr noundef %10, ptr noundef nonnull %0) #15
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i32 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @remove_node_from_expr_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @in_expr_list_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @delete_insn_and_edges(ptr noundef %0) local_unnamed_addr #0 !prof !334 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %10, !prof !335

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !294
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12, !prof !336

10:                                               ; preds = %6, %1
  %11 = tail call ptr @delete_insn(ptr noundef nonnull %0) #14
  br label %22

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !294
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !337
  %17 = icmp eq ptr %16, %0
  %18 = tail call ptr @delete_insn(ptr noundef nonnull %0) #14
  br i1 %17, label %19, label %22, !prof !339

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8, !tbaa !294
  %21 = tail call zeroext i8 @purge_dead_edges(ptr noundef %20) #14, !range !340
  br label %22

22:                                               ; preds = %10, %19, %12
  %23 = phi ptr [ %11, %10 ], [ %18, %19 ], [ %18, %12 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @purge_dead_edges(ptr noundef %0) local_unnamed_addr #0 !prof !341 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %25, !prof !342

12:                                               ; preds = %1
  %13 = load ptr, ptr %6, align 8, !tbaa !343
  %14 = icmp eq ptr %8, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %12, %21
  %16 = phi ptr [ %18, %21 ], [ %8, %12 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !294
  %19 = load i32, ptr %18, align 8
  %20 = trunc i32 %19 to i16
  switch i16 %20, label %25 [
    i16 7, label %21
    i16 13, label %21
  ]

21:                                               ; preds = %15, %15
  %22 = icmp eq ptr %18, %13
  br i1 %22, label %23, label %15, !llvm.loop !344

23:                                               ; preds = %21
  %24 = load i32, ptr %13, align 8
  br label %25

25:                                               ; preds = %15, %23, %12, %1
  %26 = phi i32 [ %9, %12 ], [ %9, %1 ], [ %24, %23 ], [ %19, %15 ]
  %27 = phi ptr [ %8, %12 ], [ %8, %1 ], [ %13, %23 ], [ %18, %15 ]
  %28 = and i32 %26, 65535
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %47, !prof !345

30:                                               ; preds = %25
  %31 = tail call ptr @find_reg_note(ptr noundef nonnull %27, i32 noundef 25, ptr noundef null) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33, !prof !346

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !294
  %36 = tail call i32 @may_trap_p(ptr noundef %35) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %27) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !294
  %44 = tail call i32 @may_trap_p(ptr noundef %43) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %33
  tail call void @remove_note(ptr noundef nonnull %27, ptr noundef nonnull %31) #15
  br label %47

47:                                               ; preds = %38, %41, %46, %30, %25
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %49 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %48) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !347
  %50 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %49, ptr %50, align 8, !tbaa.struct !349
  %51 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %49) #14
  store ptr %51, ptr %2, align 8, !tbaa !317
  %52 = icmp eq ptr %51, null
  br i1 %52, label %92, label %53, !prof !350

53:                                               ; preds = %47, %86
  %54 = phi ptr [ %87, %86 ], [ %49, %47 ]
  %55 = phi i32 [ %88, %86 ], [ 0, %47 ]
  %56 = phi ptr [ %90, %86 ], [ %51, %47 ]
  %57 = phi i8 [ %89, %86 ], [ 0, %47 ]
  %58 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !351
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62, !prof !353

62:                                               ; preds = %53
  %63 = load i32, ptr %27, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = tail call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %27) #15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32, ptr %58, align 8, !tbaa !351
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %27) #15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %83

76:                                               ; preds = %53
  %77 = and i32 %59, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79, !prof !353

79:                                               ; preds = %76
  %80 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %27) #15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83, !prof !354

82:                                               ; preds = %69, %73, %62, %79
  tail call void @remove_edge(ptr noundef nonnull %56) #15
  tail call void @df_set_bb_dirty(ptr noundef %0) #15
  br label %86

83:                                               ; preds = %76, %73, %66, %79
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %84 = load i32, ptr %3, align 8
  %85 = load ptr, ptr %50, align 8
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi ptr [ %54, %82 ], [ %85, %83 ]
  %88 = phi i32 [ %55, %82 ], [ %84, %83 ]
  %89 = phi i8 [ 1, %82 ], [ %57, %83 ]
  %90 = tail call fastcc ptr @ei_safe_edge(i32 %88, ptr %87) #14
  store ptr %90, ptr %2, align 8, !tbaa !317
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %53, !prof !355, !llvm.loop !356

92:                                               ; preds = %86, %47
  %93 = phi i8 [ 0, %47 ], [ %89, %86 ]
  %94 = load i32, ptr %27, align 8
  %95 = trunc i32 %94 to i16
  switch i16 %95, label %254 [
    i16 9, label %96
    i16 10, label %241
  ], !prof !357

96:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %97 = tail call i32 @any_condjump_p(ptr noundef nonnull %27) #15
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105, !prof !358

99:                                               ; preds = %96
  %100 = tail call i32 @returnjump_p(ptr noundef nonnull %27) #15
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105, !prof !359

102:                                              ; preds = %99
  %103 = tail call i32 @simplejump_p(ptr noundef nonnull %27) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %239, label %105, !prof !360

105:                                              ; preds = %102, %99, %96
  %106 = tail call i32 @simplejump_p(ptr noundef nonnull %27) #15
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %119, label %108, !prof !361

108:                                              ; preds = %105
  %109 = tail call ptr @find_reg_note(ptr noundef nonnull %27, i32 noundef 13, ptr noundef null) #15
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !362

111:                                              ; preds = %108
  tail call void @remove_note(ptr noundef nonnull %27, ptr noundef nonnull %109) #15
  br label %112

112:                                              ; preds = %111, %108
  %113 = tail call ptr @find_reg_note(ptr noundef nonnull %27, i32 noundef 16, ptr noundef null) #15
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115, !prof !363

115:                                              ; preds = %112, %115
  %116 = phi ptr [ %117, %115 ], [ %113, %112 ]
  tail call void @remove_note(ptr noundef nonnull %27, ptr noundef nonnull %116) #15
  %117 = tail call ptr @find_reg_note(ptr noundef nonnull %27, i32 noundef 16, ptr noundef null) #15
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %115, !prof !306, !llvm.loop !364

119:                                              ; preds = %115, %112, %105
  store i32 0, ptr %4, align 8, !tbaa.struct !347
  %120 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %49, ptr %120, align 8, !tbaa.struct !349
  %121 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %49) #14
  %122 = icmp eq ptr %121, null
  br i1 %122, label %178, label %123, !prof !365

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %125

125:                                              ; preds = %123, %175
  %126 = phi ptr [ %49, %123 ], [ %131, %175 ]
  %127 = phi i32 [ 0, %123 ], [ %132, %175 ]
  %128 = phi ptr [ %121, %123 ], [ %176, %175 ]
  %129 = phi i8 [ %93, %123 ], [ 1, %175 ]
  br label %130

130:                                              ; preds = %125, %142
  %131 = phi ptr [ %126, %125 ], [ %144, %142 ]
  %132 = phi i32 [ %127, %125 ], [ %143, %142 ]
  %133 = phi ptr [ %128, %125 ], [ %145, %142 ]
  %134 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !351
  %136 = and i32 %135, -3
  store i32 %136, ptr %134, align 8, !tbaa !351
  %137 = and i32 %135, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139, !prof !366

139:                                              ; preds = %130
  %140 = tail call i32 @any_condjump_p(ptr noundef nonnull %27) #15
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142, !prof !367

142:                                              ; preds = %139, %162, %156, %172
  call fastcc void @ei_next(ptr noundef nonnull %4) #14
  %143 = load i32, ptr %4, align 8
  %144 = load ptr, ptr %120, align 8
  %145 = tail call fastcc ptr @ei_safe_edge(i32 %143, ptr %144) #14
  %146 = icmp eq ptr %145, null
  br i1 %146, label %178, label %130, !prof !368, !llvm.loop !369

147:                                              ; preds = %139, %130
  %148 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !370
  %150 = load ptr, ptr @cfun, align 8, !tbaa !317
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !371
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !373
  %155 = icmp eq ptr %149, %154
  br i1 %155, label %162, label %156, !prof !375

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !294
  %159 = load ptr, ptr %158, align 8, !tbaa !343
  %160 = load ptr, ptr %124, align 8, !tbaa !294
  %161 = icmp eq ptr %159, %160
  br i1 %161, label %142, label %165, !prof !376

162:                                              ; preds = %147
  %163 = tail call i32 @returnjump_p(ptr noundef nonnull %27) #15
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %142, !prof !377

165:                                              ; preds = %156, %162
  %166 = load i32, ptr %134, align 8, !tbaa !351
  %167 = and i32 %166, 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169, !prof !378

169:                                              ; preds = %165
  %170 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %27) #15
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr %134, align 8, !tbaa !351
  %174 = or i32 %173, 2
  store i32 %174, ptr %134, align 8, !tbaa !351
  br label %142

175:                                              ; preds = %165, %169
  tail call void @df_set_bb_dirty(ptr noundef %0) #15
  tail call void @remove_edge(ptr noundef nonnull %133) #15
  %176 = tail call fastcc ptr @ei_safe_edge(i32 %132, ptr %131) #14
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %125, !prof !379, !llvm.loop !369

178:                                              ; preds = %175, %142, %119
  %179 = phi i8 [ %93, %119 ], [ %129, %142 ], [ 1, %175 ]
  %180 = load ptr, ptr %48, align 8, !tbaa !380
  %181 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %180) #14
  %182 = icmp ne i32 %181, 0
  %183 = icmp ne i8 %179, 0
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %185, label %239, !prof !382

185:                                              ; preds = %178
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %187 = icmp eq ptr %186, null
  br i1 %187, label %192, label %188, !prof !383

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %190 = load i32, ptr %189, align 8, !tbaa !384
  %191 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %186, ptr noundef nonnull @.str.18, i32 noundef %190) #14
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, ptr @optimize, align 4, !tbaa !348
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %239, label %195, !prof !385

195:                                              ; preds = %192
  %196 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #14, !range !340
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %204, label %198, !prof !385

198:                                              ; preds = %195
  %199 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #14
  %200 = getelementptr inbounds %struct.edge_def, ptr %199, i64 0, i32 8
  store i32 10000, ptr %200, align 4, !tbaa !386
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %202 = load i64, ptr %201, align 8, !tbaa !387
  %203 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #14
  br label %235

204:                                              ; preds = %195
  %205 = tail call ptr @find_reg_note(ptr noundef nonnull %27, i32 noundef 13, ptr noundef null) #15
  %206 = icmp eq ptr %205, null
  br i1 %206, label %239, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr %48, align 8, !tbaa !380
  %209 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %208, i32 noundef 0) #14
  %210 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 7
  %211 = load i32, ptr %210, align 8, !tbaa !351
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  %214 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %208, i32 noundef 1) #14
  %215 = select i1 %213, ptr %209, ptr %214
  %216 = select i1 %213, ptr %214, ptr %209
  %217 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !294
  %219 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %220 = load i64, ptr %219, align 8, !tbaa !294
  %221 = trunc i64 %220 to i32
  %222 = getelementptr inbounds %struct.edge_def, ptr %215, i64 0, i32 8
  store i32 %221, ptr %222, align 4, !tbaa !386
  %223 = sub nsw i32 10000, %221
  %224 = getelementptr inbounds %struct.edge_def, ptr %216, i64 0, i32 8
  store i32 %223, ptr %224, align 4, !tbaa !386
  %225 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %226 = load i64, ptr %225, align 8, !tbaa !387
  %227 = load i32, ptr %222, align 4, !tbaa !386
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %226, %228
  %230 = sdiv i64 %229, 10000
  %231 = getelementptr inbounds %struct.edge_def, ptr %215, i64 0, i32 9
  store i64 %230, ptr %231, align 8, !tbaa !388
  %232 = sext i32 %223 to i64
  %233 = mul nsw i64 %226, %232
  %234 = sdiv i64 %233, 10000
  br label %235

235:                                              ; preds = %207, %198
  %236 = phi ptr [ %203, %198 ], [ %216, %207 ]
  %237 = phi i64 [ %202, %198 ], [ %234, %207 ]
  %238 = getelementptr inbounds %struct.edge_def, ptr %236, i64 0, i32 9
  store i64 %237, ptr %238, align 8, !tbaa !388
  br label %239

239:                                              ; preds = %235, %204, %192, %178, %102
  %240 = phi i8 [ %93, %102 ], [ %179, %178 ], [ 1, %192 ], [ 1, %204 ], [ 1, %235 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %308

241:                                              ; preds = %92
  %242 = and i32 %94, 16777216
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %254, label %244, !prof !389

244:                                              ; preds = %241
  %245 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #14, !range !340
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %248, !prof !390

247:                                              ; preds = %244
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2386, ptr noundef nonnull @.str.1) #15
  br label %248

248:                                              ; preds = %244, %247
  %249 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #14
  %250 = getelementptr inbounds %struct.edge_def, ptr %249, i64 0, i32 7
  %251 = load i32, ptr %250, align 8, !tbaa !351
  %252 = icmp eq i32 %251, 258
  br i1 %252, label %308, label %253, !prof !391

253:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2388, ptr noundef nonnull @.str.1) #15
  br label %308

254:                                              ; preds = %92, %241
  store i32 0, ptr %3, align 8, !tbaa.struct !347
  store ptr %49, ptr %50, align 8, !tbaa.struct !349
  %255 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %49, ptr noundef nonnull %2) #14, !range !340
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %308, label %257, !prof !392

257:                                              ; preds = %254, %263
  %258 = load ptr, ptr %2, align 8, !tbaa !317
  %259 = getelementptr inbounds %struct.edge_def, ptr %258, i64 0, i32 7
  %260 = load i32, ptr %259, align 8, !tbaa !351
  %261 = and i32 %260, 15
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %268, label %263, !prof !393

263:                                              ; preds = %257
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %264 = load i32, ptr %3, align 8
  %265 = load ptr, ptr %50, align 8
  %266 = call fastcc zeroext i8 @ei_cond(i32 %264, ptr %265, ptr noundef nonnull %2) #14, !range !340
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %308, label %257, !prof !394, !llvm.loop !395

268:                                              ; preds = %257
  store i32 0, ptr %3, align 8, !tbaa.struct !347
  store ptr %49, ptr %50, align 8, !tbaa.struct !349
  %269 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %49) #14
  %270 = icmp eq ptr %269, null
  br i1 %270, label %290, label %271, !prof !396

271:                                              ; preds = %268, %284
  %272 = phi ptr [ %285, %284 ], [ %49, %268 ]
  %273 = phi i32 [ %286, %284 ], [ 0, %268 ]
  %274 = phi ptr [ %288, %284 ], [ %269, %268 ]
  %275 = phi i8 [ %287, %284 ], [ %93, %268 ]
  %276 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 7
  %277 = load i32, ptr %276, align 8, !tbaa !351
  %278 = and i32 %277, 17
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281, !prof !397

280:                                              ; preds = %271
  tail call void @df_set_bb_dirty(ptr noundef %0) #15
  tail call void @remove_edge(ptr noundef nonnull %274) #15
  br label %284

281:                                              ; preds = %271
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %282 = load i32, ptr %3, align 8
  %283 = load ptr, ptr %50, align 8
  br label %284

284:                                              ; preds = %281, %280
  %285 = phi ptr [ %283, %281 ], [ %272, %280 ]
  %286 = phi i32 [ %282, %281 ], [ %273, %280 ]
  %287 = phi i8 [ %275, %281 ], [ 1, %280 ]
  %288 = tail call fastcc ptr @ei_safe_edge(i32 %286, ptr %285) #14
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %271, !prof !398, !llvm.loop !399

290:                                              ; preds = %284, %268
  %291 = phi i8 [ %93, %268 ], [ %287, %284 ]
  %292 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #14, !range !340
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %295, !prof !400

294:                                              ; preds = %290
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2424, ptr noundef nonnull @.str.1) #15
  br label %295

295:                                              ; preds = %290, %294
  %296 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #14
  %297 = getelementptr inbounds %struct.edge_def, ptr %296, i64 0, i32 8
  store i32 10000, ptr %297, align 4, !tbaa !386
  %298 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %299 = load i64, ptr %298, align 8, !tbaa !387
  %300 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #14
  %301 = getelementptr inbounds %struct.edge_def, ptr %300, i64 0, i32 9
  store i64 %299, ptr %301, align 8, !tbaa !388
  %302 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %303 = icmp eq ptr %302, null
  br i1 %303, label %308, label %304, !prof !401

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %306 = load i32, ptr %305, align 8, !tbaa !384
  %307 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %302, ptr noundef nonnull @.str.19, i32 noundef %306) #14
  br label %308

308:                                              ; preds = %263, %254, %295, %304, %253, %248, %239
  %309 = phi i8 [ %240, %239 ], [ 0, %248 ], [ 0, %253 ], [ %291, %304 ], [ %291, %295 ], [ %93, %254 ], [ %93, %263 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i8 %309
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_insn_chain(ptr noundef %0, ptr noundef readnone %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !402 {
  %4 = icmp eq i8 %2, 0
  br label %5

5:                                                ; preds = %25, %3
  %6 = phi ptr [ %0, %3 ], [ %18, %25 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 13
  br i1 %9, label %10, label %15, !prof !403

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  %13 = tail call fastcc i32 @can_delete_note_p(ptr noundef nonnull %6) #14, !range !298
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !404

15:                                               ; preds = %10, %5
  %16 = tail call ptr @delete_insn(ptr noundef nonnull %6) #14
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %12, %10 ]
  br i1 %4, label %25, label %19, !prof !405

19:                                               ; preds = %17
  %20 = load i32, ptr %6, align 8
  %21 = and i32 %20, 134217728
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !406

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !294
  br label %25

25:                                               ; preds = %23, %19, %17
  %26 = icmp eq ptr %6, %1
  br i1 %26, label %27, label %5, !prof !407

27:                                               ; preds = %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @can_delete_note_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !408 !PGOFuncName !409 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load i32, ptr %2, align 8, !tbaa !294
  switch i32 %3, label %4 [
    i32 0, label %5
    i32 10, label %5
    i32 6, label %5
  ], !prof !410

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %4
  %6 = phi i32 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_basic_block_structure(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !411 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %30, label %6, !prof !412

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !294
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !413
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !294
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi ptr [ %20, %18 ], [ %0, %14 ]
  %23 = phi ptr [ %2, %18 ], [ %0, %14 ]
  %24 = icmp eq ptr %22, %2
  br i1 %24, label %56, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !294
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %56, label %29

29:                                               ; preds = %25
  tail call void @reorder_insns_nobb(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %22) #15
  br label %56

30:                                               ; preds = %10, %6, %4
  %31 = tail call ptr @alloc_block() #15
  tail call void @init_rtl_bb_info(ptr noundef %31) #14
  %32 = icmp eq ptr %0, null
  br i1 %32, label %33, label %38, !prof !414

33:                                               ; preds = %30
  %34 = icmp eq ptr %1, null
  br i1 %34, label %35, label %38, !prof !415

35:                                               ; preds = %33
  %36 = tail call ptr @get_last_insn() #15
  %37 = tail call ptr @emit_note_after(i32 noundef 10, ptr noundef %36) #15
  br label %51

38:                                               ; preds = %33, %30
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 12
  %42 = icmp ne ptr %1, null
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %48, !prof !416

44:                                               ; preds = %38
  %45 = tail call ptr @emit_note_after(i32 noundef 10, ptr noundef nonnull %0) #15
  %46 = icmp eq ptr %0, %1
  %47 = select i1 %46, ptr %45, ptr %1, !prof !417
  br label %51

48:                                               ; preds = %38
  %49 = tail call ptr @emit_note_before(i32 noundef 10, ptr noundef nonnull %0) #15
  %50 = select i1 %42, ptr %1, ptr %49, !prof !418
  br label %51

51:                                               ; preds = %48, %44, %35
  %52 = phi ptr [ %37, %35 ], [ %45, %44 ], [ %49, %48 ]
  %53 = phi ptr [ %37, %35 ], [ %47, %44 ], [ %50, %48 ]
  %54 = phi ptr [ %37, %35 ], [ %0, %44 ], [ %49, %48 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  store ptr %31, ptr %55, align 8, !tbaa !294
  br label %56

56:                                               ; preds = %21, %25, %29, %51
  %57 = phi ptr [ %52, %51 ], [ %2, %29 ], [ %2, %25 ], [ %2, %21 ]
  %58 = phi ptr [ %53, %51 ], [ %1, %29 ], [ %1, %25 ], [ %1, %21 ]
  %59 = phi ptr [ %31, %51 ], [ %8, %29 ], [ %8, %25 ], [ %8, %21 ]
  %60 = phi ptr [ %54, %51 ], [ %23, %29 ], [ %23, %25 ], [ %23, %21 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !294
  %63 = icmp eq ptr %62, %57
  br i1 %63, label %64, label %65, !prof !419

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %56
  %66 = phi ptr [ %57, %64 ], [ %58, %56 ]
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !294
  store ptr %60, ptr %68, align 8, !tbaa !343
  %69 = load ptr, ptr %67, align 8, !tbaa !294
  %70 = getelementptr inbounds %struct.rtl_bb_info, ptr %69, i64 0, i32 1
  store ptr %66, ptr %70, align 8, !tbaa !337
  %71 = load ptr, ptr @cfun, align 8, !tbaa !317
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !371
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !420
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %74, align 8, !tbaa !420
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  store i32 %75, ptr %77, align 8, !tbaa !384
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 13
  store i32 513, ptr %78, align 8, !tbaa !421
  tail call void @link_block(ptr noundef %59, ptr noundef %3) #15
  %79 = load ptr, ptr @cfun, align 8, !tbaa !317
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !371
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !422
  %84 = load i32, ptr %77, align 8, !tbaa !384
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %83, i32 noundef %84, ptr noundef %59) #14
  %85 = load i32, ptr %77, align 8, !tbaa !384
  tail call void @df_bb_refs_record(i32 noundef %85, i8 noundef zeroext 0) #15
  tail call void @update_bb_for_insn(ptr noundef %59) #14
  %86 = load i32, ptr %78, align 8, !tbaa !421
  %87 = and i32 %86, -97
  store i32 %87, ptr %78, align 8, !tbaa !421
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 2
  store ptr %59, ptr %88, align 8, !tbaa !413
  ret ptr %59
}

; Function Attrs: optsize
declare void @reorder_insns_nobb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_block() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_rtl_bb_info(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !423 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !424

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3064, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #15
  store ptr %7, ptr %2, align 8, !tbaa !294
  ret void
}

; Function Attrs: optsize
declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @link_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !411 !PGOFuncName !425 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !317
  ret void
}

; Function Attrs: optsize
declare void @df_bb_refs_record(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_bb_for_insn(ptr noundef %0) local_unnamed_addr #0 !prof !426 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !337
  tail call fastcc void @update_bb_for_insn_chain(ptr noundef %4, ptr noundef %6, ptr noundef %0) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_bb_for_insn() local_unnamed_addr #5 !prof !427 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !317
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !371
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !429
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !373
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %29, label %17

10:                                               ; preds = %23
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !429
  %13 = load ptr, ptr %2, align 8, !tbaa !371
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !373
  %16 = icmp eq ptr %12, %15
  br i1 %16, label %29, label %17, !llvm.loop !430

17:                                               ; preds = %0, %10
  %18 = phi ptr [ %12, %10 ], [ %6, %0 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !294
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !337
  br label %23

23:                                               ; preds = %23, %17
  %24 = phi ptr [ %20, %17 ], [ %28, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !294
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 1
  store ptr %18, ptr %26, align 8, !tbaa !294
  %27 = icmp eq ptr %25, %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %27, label %10, label %23

29:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @free_bb_for_insn() local_unnamed_addr #0 !prof !431 {
  %1 = tail call ptr @get_insns() #15
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3, !prof !432

3:                                                ; preds = %0, %10
  %4 = phi ptr [ %12, %10 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 11
  br i1 %7, label %10, label %8, !prof !433

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !294
  br label %10

10:                                               ; preds = %3, %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3, !prof !434, !llvm.loop !435

14:                                               ; preds = %10, %0
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_pass_free_cfg() #0 !prof !436 !PGOFuncName !437 {
  %1 = tail call i32 @free_bb_for_insn() #14
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @entry_of_function() local_unnamed_addr #0 !prof !427 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !317
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !371
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !438
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = load ptr, ptr %3, align 8, !tbaa !428
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !429
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  %13 = load ptr, ptr %12, align 8, !tbaa !343
  br label %16

14:                                               ; preds = %0
  %15 = tail call ptr @get_insns() #15
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %13, %7 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_insn_at_entry(ptr noundef %0) local_unnamed_addr #0 !prof !427 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !317
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !371
  %5 = load ptr, ptr %4, align 8, !tbaa !428
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %6) #14
  %8 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %7) #14
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !351
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 466, ptr noundef nonnull @.str.1) #15
  br label %14

14:                                               ; preds = %1, %13
  tail call void @insert_insn_on_edge(ptr noundef %0, ptr noundef nonnull %8) #14
  tail call void @commit_edge_insertions() #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 !prof !439 !PGOFuncName !440 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !441 !PGOFuncName !442 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !340
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !443

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_insn_on_edge(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !444 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !351
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7, !prof !445

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !446
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !380
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #14
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !370
  %16 = load ptr, ptr %15, align 8, !tbaa !447
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #14
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1424, ptr noundef nonnull @.str.1) #15
  br label %20

20:                                               ; preds = %2, %7, %13, %19
  %21 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !294
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !448

24:                                               ; preds = %20
  tail call void @start_sequence() #15
  br label %26

25:                                               ; preds = %20
  tail call void @push_to_sequence(ptr noundef nonnull %22) #15
  br label %26

26:                                               ; preds = %25, %24
  %27 = tail call ptr @emit_insn(ptr noundef %0) #15
  %28 = tail call ptr @get_insns() #15
  store ptr %28, ptr %21, align 8, !tbaa !294
  tail call void @end_sequence() #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @commit_edge_insertions() local_unnamed_addr #0 !prof !449 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !317
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !371
  %6 = load ptr, ptr %5, align 8, !tbaa !317
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !373
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %88, label %10, !prof !450

10:                                               ; preds = %0
  %11 = getelementptr inbounds i8, ptr %2, i64 8
  br label %12

12:                                               ; preds = %10, %32
  %13 = phi ptr [ %6, %10 ], [ %35, %32 ]
  %14 = phi i8 [ 0, %10 ], [ %33, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %16 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %15) #14
  store i32 0, ptr %2, align 8, !tbaa.struct !347
  store ptr %16, ptr %11, align 8, !tbaa.struct !349
  %17 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %16, ptr noundef nonnull %1) #14, !range !340
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %32, label %19, !prof !451

19:                                               ; preds = %12, %26
  %20 = phi i8 [ %27, %26 ], [ %14, %12 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !317
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !294
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !452

25:                                               ; preds = %19
  tail call void @commit_one_edge_insertion(ptr noundef nonnull %21) #14
  br label %26

26:                                               ; preds = %19, %25
  %27 = phi i8 [ 1, %25 ], [ %20, %19 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #14
  %28 = load i32, ptr %2, align 8
  %29 = load ptr, ptr %11, align 8
  %30 = call fastcc zeroext i8 @ei_cond(i32 %28, ptr %29, ptr noundef nonnull %1) #14, !range !340
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %19, !prof !453, !llvm.loop !454

32:                                               ; preds = %26, %12
  %33 = phi i8 [ %14, %12 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !317
  %36 = load ptr, ptr @cfun, align 8, !tbaa !317
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !371
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !373
  %41 = icmp eq ptr %35, %40
  br i1 %41, label %42, label %12, !prof !455, !llvm.loop !456

42:                                               ; preds = %32
  %43 = icmp eq i8 %33, 0
  br i1 %43, label %88, label %44, !prof !457

44:                                               ; preds = %42
  %45 = tail call i32 @current_ir_type() #15
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %88, label %47, !prof !458

47:                                               ; preds = %44
  %48 = load ptr, ptr @cfun, align 8, !tbaa !317
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !371
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !420
  %53 = tail call ptr @sbitmap_alloc(i32 noundef %52) #15
  tail call void @sbitmap_zero(ptr noundef %53) #15
  %54 = load ptr, ptr @cfun, align 8, !tbaa !317
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !371
  %57 = load ptr, ptr %56, align 8, !tbaa !428
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !429
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !373
  %62 = icmp eq ptr %59, %61
  br i1 %62, label %86, label %63, !prof !459

63:                                               ; preds = %47, %77
  %64 = phi ptr [ %78, %77 ], [ %54, %47 ]
  %65 = phi ptr [ %80, %77 ], [ %59, %47 ]
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !413
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69, !prof !460

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !384
  tail call fastcc void @SET_BIT(ptr noundef %53, i32 noundef %71) #14
  %72 = load ptr, ptr %66, align 8, !tbaa !413
  %73 = icmp eq ptr %72, %66
  br i1 %73, label %75, label %74, !prof !461

74:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1594, ptr noundef nonnull @.str.1) #15
  br label %75

75:                                               ; preds = %69, %74
  store ptr null, ptr %66, align 8, !tbaa !413
  %76 = load ptr, ptr @cfun, align 8, !tbaa !317
  br label %77

77:                                               ; preds = %63, %75
  %78 = phi ptr [ %64, %63 ], [ %76, %75 ]
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !429
  %81 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !371
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !373
  %85 = icmp eq ptr %80, %84
  br i1 %85, label %86, label %63, !prof !462, !llvm.loop !463

86:                                               ; preds = %77, %47
  tail call void @find_many_sub_basic_blocks(ptr noundef %53) #15
  %87 = load ptr, ptr %53, align 8, !tbaa !464
  tail call void @free(ptr noundef %87) #14
  tail call void @free(ptr noundef %53) #14
  br label %88

88:                                               ; preds = %0, %44, %42, %86
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !466 !PGOFuncName !467 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !468

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #14
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !469 !PGOFuncName !470 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !471

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !472 !PGOFuncName !473 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !474

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !475
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !477 !PGOFuncName !478 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !479

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !317
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !480 !PGOFuncName !481 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !317
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_bb_for_insn_chain(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !482 !PGOFuncName !483 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %17, label %7, !prof !484

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %15, %13 ], [ %0, %3 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 11
  br i1 %11, label %13, label %12, !prof !485

12:                                               ; preds = %7
  tail call void @df_insn_change_bb(ptr noundef nonnull %8, ptr noundef %2) #15
  br label %13

13:                                               ; preds = %7, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !294
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %17, label %7, !prof !486, !llvm.loop !487

17:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: optsize
declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @block_label(ptr noundef readonly %0) local_unnamed_addr #0 !prof !488 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !317
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !371
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !373
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %23, label %8, !prof !489

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !294
  %11 = load ptr, ptr %10, align 8, !tbaa !343
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %23, label %15, !prof !490

15:                                               ; preds = %8
  %16 = tail call ptr @gen_label_rtx() #15
  %17 = load ptr, ptr %9, align 8, !tbaa !294
  %18 = load ptr, ptr %17, align 8, !tbaa !343
  %19 = tail call ptr @emit_label_before(ptr noundef %16, ptr noundef %18) #15
  %20 = load ptr, ptr %9, align 8, !tbaa !294
  store ptr %19, ptr %20, align 8, !tbaa !343
  %21 = load ptr, ptr %9, align 8, !tbaa !294
  %22 = load ptr, ptr %21, align 8, !tbaa !343
  br label %23

23:                                               ; preds = %8, %15, %1
  %24 = phi ptr [ null, %1 ], [ %22, %15 ], [ %11, %8 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @emit_label_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @try_redirect_by_replacing_jump(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !491 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !446
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !294
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !337
  %11 = tail call ptr @find_reg_note(ptr noundef %10, i32 noundef 29, ptr noundef null) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %242, !prof !492

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !421
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !421
  %18 = xor i32 %17, %15
  %19 = and i32 %18, 96
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %242, !prof !492

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !380
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %23) #14
  %25 = icmp ugt i32 %24, 2
  br i1 %25, label %242, label %26, !prof !493

26:                                               ; preds = %21
  %27 = icmp eq i32 %24, 2
  br i1 %27, label %28, label %36, !prof !494

28:                                               ; preds = %26
  %29 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %23, i32 noundef 0) #14
  %30 = icmp eq ptr %29, %0
  %31 = zext i1 %30 to i32
  %32 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %23, i32 noundef %31) #14
  %33 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !370
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %36, label %242, !prof !495

36:                                               ; preds = %28, %26
  %37 = tail call i32 @onlyjump_p(ptr noundef %10) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %242, label %39, !prof !496

39:                                               ; preds = %36
  %40 = load i32, ptr @optimize, align 4, !tbaa !348
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr @reload_completed, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %45, label %48, !prof !497

45:                                               ; preds = %39
  %46 = tail call zeroext i8 @tablejump_p(ptr noundef %10, ptr noundef null, ptr noundef null) #15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %242, !prof !498

48:                                               ; preds = %39, %45
  %49 = load i32, ptr %10, align 8
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -7
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %53, label %242, !prof !499

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !294
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 23
  br i1 %58, label %62, label %59, !prof !500

59:                                               ; preds = %53
  %60 = tail call ptr @single_set_2(ptr noundef nonnull %10, ptr noundef nonnull %55) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %242, label %62, !prof !501

62:                                               ; preds = %53, %59
  %63 = phi ptr [ %60, %59 ], [ %55, %53 ]
  %64 = tail call i32 @side_effects_p(ptr noundef nonnull %63) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %242, !prof !500

66:                                               ; preds = %62
  %67 = icmp eq i8 %2, 0
  br i1 %67, label %68, label %71, !prof !502

68:                                               ; preds = %66
  %69 = tail call zeroext i8 @can_fallthru(ptr noundef nonnull %6, ptr noundef nonnull %1) #15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %122, label %71, !prof !503

71:                                               ; preds = %68, %66
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74, !prof !504

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !294
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %72, ptr noundef nonnull @.str.4, i32 noundef %76) #14
  br label %78

78:                                               ; preds = %74, %71
  br i1 %67, label %116, label %79, !prof !505

79:                                               ; preds = %78
  %80 = load ptr, ptr %7, align 8, !tbaa !294
  %81 = getelementptr inbounds %struct.rtl_bb_info, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !506
  %83 = getelementptr inbounds %struct.rtl_bb_info, ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !337
  tail call void @delete_insn_chain(ptr noundef nonnull %10, ptr noundef %84, i8 noundef zeroext 0) #14
  %85 = icmp eq ptr %82, null
  br i1 %85, label %222, label %86, !prof !507

86:                                               ; preds = %79, %112
  %87 = phi ptr [ %114, %112 ], [ %82, %79 ]
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 11
  br i1 %90, label %91, label %108, !prof !508

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !294
  %94 = icmp eq ptr %93, null
  %95 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !294
  br i1 %94, label %99, label %97, !prof !508

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %102

99:                                               ; preds = %91
  %100 = load ptr, ptr %7, align 8, !tbaa !294
  %101 = getelementptr inbounds %struct.rtl_bb_info, ptr %100, i64 0, i32 3
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi ptr [ %101, %99 ], [ %98, %97 ]
  store ptr %96, ptr %103, align 8, !tbaa !294
  %104 = icmp eq ptr %96, null
  br i1 %104, label %108, label %105, !prof !508

105:                                              ; preds = %102
  %106 = load ptr, ptr %92, align 8, !tbaa !294
  %107 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %106, ptr %107, align 8, !tbaa !294
  br label %108

108:                                              ; preds = %102, %105, %86
  %109 = load i32, ptr %87, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 12
  br i1 %111, label %222, label %112, !prof !509

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  %114 = load ptr, ptr %113, align 8, !tbaa !294
  %115 = icmp eq ptr %114, null
  br i1 %115, label %222, label %86, !prof !510, !llvm.loop !511

116:                                              ; preds = %78
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !294
  %119 = load ptr, ptr %118, align 8, !tbaa !343
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !294
  tail call void @delete_insn_chain(ptr noundef nonnull %10, ptr noundef %121, i8 noundef zeroext 0) #14
  br label %222

122:                                              ; preds = %68
  %123 = tail call i32 @simplejump_p(ptr noundef nonnull %10) #15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %152, label %125, !prof !512

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !370
  %128 = icmp eq ptr %127, %1
  br i1 %128, label %242, label %129, !prof !513

129:                                              ; preds = %125
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132, !prof !514

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !294
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 9
  %136 = load i32, ptr %135, align 8, !tbaa !384
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !384
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %130, ptr noundef nonnull @.str.5, i32 noundef %134, i32 noundef %136, i32 noundef %138) #14
  br label %140

140:                                              ; preds = %132, %129
  %141 = tail call ptr @block_label(ptr noundef nonnull %1) #14
  %142 = tail call i32 @redirect_jump(ptr noundef nonnull %10, ptr noundef %141, i32 noundef 0) #15
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %222, !prof !515

144:                                              ; preds = %140
  %145 = load ptr, ptr @cfun, align 8, !tbaa !317
  %146 = getelementptr inbounds %struct.function, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !371
  %148 = getelementptr inbounds %struct.control_flow_graph, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !373
  %150 = icmp eq ptr %149, %1
  br i1 %150, label %242, label %151

151:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 837, ptr noundef nonnull @.str.1) #15
  br label %242

152:                                              ; preds = %122
  %153 = load ptr, ptr @cfun, align 8, !tbaa !317
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !371
  %156 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !373
  %158 = icmp eq ptr %157, %1
  br i1 %158, label %242, label %159, !prof !516

159:                                              ; preds = %152
  %160 = tail call ptr @block_label(ptr noundef nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %161 = tail call ptr @gen_jump(ptr noundef %160) #15
  %162 = tail call ptr @emit_jump_insn_after_noloc(ptr noundef %161, ptr noundef nonnull %10) #15
  %163 = load ptr, ptr %7, align 8, !tbaa !294
  %164 = getelementptr inbounds %struct.rtl_bb_info, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !337
  %166 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %160, ptr %166, align 8, !tbaa !294
  %167 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !294
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %167, align 8, !tbaa !294
  %170 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %171 = icmp eq ptr %170, null
  br i1 %171, label %181, label %172, !prof !517

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !294
  %175 = load ptr, ptr %7, align 8, !tbaa !294
  %176 = getelementptr inbounds %struct.rtl_bb_info, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !337
  %178 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !294
  %180 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %170, ptr noundef nonnull @.str.6, i32 noundef %174, i32 noundef %179) #14
  br label %181

181:                                              ; preds = %172, %159
  tail call void @delete_insn_chain(ptr noundef nonnull %10, ptr noundef nonnull %10, i8 noundef zeroext 0) #14
  %182 = call zeroext i8 @tablejump_p(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %187, label %184, !prof !517

184:                                              ; preds = %181
  %185 = load ptr, ptr %4, align 8, !tbaa !317
  %186 = load ptr, ptr %5, align 8, !tbaa !317
  call void @delete_insn_chain(ptr noundef %185, ptr noundef %186, i8 noundef zeroext 0) #14
  br label %187

187:                                              ; preds = %184, %181
  %188 = load ptr, ptr %7, align 8, !tbaa !294
  %189 = getelementptr inbounds %struct.rtl_bb_info, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !337
  %191 = call ptr @next_nonnote_insn(ptr noundef %190) #15
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193, !prof !516

193:                                              ; preds = %187
  %194 = load i32, ptr %191, align 8
  %195 = and i32 %194, 65535
  %196 = icmp eq i32 %195, 11
  br i1 %196, label %202, label %197, !prof !516

197:                                              ; preds = %193, %187
  %198 = load ptr, ptr %7, align 8, !tbaa !294
  %199 = getelementptr inbounds %struct.rtl_bb_info, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !337
  %201 = call ptr @emit_barrier_after(ptr noundef %200) #15
  br label %221

202:                                              ; preds = %193
  %203 = load ptr, ptr %7, align 8, !tbaa !294
  %204 = getelementptr inbounds %struct.rtl_bb_info, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !337
  %206 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1, i32 0, i32 0, i64 2
  %207 = load ptr, ptr %206, align 8, !tbaa !294
  %208 = icmp eq ptr %191, %207
  br i1 %208, label %221, label %209

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !294
  call fastcc void @update_bb_for_insn_chain(ptr noundef %207, ptr noundef %211, ptr noundef nonnull %6) #14
  %212 = load ptr, ptr %206, align 8, !tbaa !294
  %213 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1, i32 0, i32 0, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !294
  %215 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %212, ptr %215, align 8, !tbaa !294
  %216 = load ptr, ptr %213, align 8, !tbaa !294
  %217 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %216, ptr %217, align 8, !tbaa !294
  store ptr %191, ptr %206, align 8, !tbaa !294
  %218 = load ptr, ptr %210, align 8, !tbaa !294
  %219 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %205, ptr %219, align 8, !tbaa !294
  %220 = load ptr, ptr %210, align 8, !tbaa !294
  store ptr %220, ptr %213, align 8, !tbaa !294
  store ptr %205, ptr %210, align 8, !tbaa !294
  br label %221

221:                                              ; preds = %202, %209, %197
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %222

222:                                              ; preds = %108, %112, %79, %221, %140, %116
  %223 = phi i32 [ 1, %116 ], [ 0, %140 ], [ 0, %221 ], [ 1, %79 ], [ 1, %112 ], [ 1, %108 ]
  %224 = call fastcc zeroext i8 @single_succ_p(ptr noundef %6) #14, !range !340
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %227, !prof !518

226:                                              ; preds = %222
  call void @remove_edge(ptr noundef nonnull %0) #15
  br label %227

227:                                              ; preds = %226, %222
  %228 = call fastcc zeroext i8 @single_succ_p(ptr noundef %6) #14, !range !340
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %231, !prof !519

230:                                              ; preds = %227
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 898, ptr noundef nonnull @.str.1) #15
  br label %231

231:                                              ; preds = %227, %230
  %232 = call fastcc ptr @single_succ_edge(ptr noundef %6) #14
  %233 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 7
  store i32 %223, ptr %233, align 8
  %234 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 8
  store i32 10000, ptr %234, align 4, !tbaa !386
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 8
  %236 = load i64, ptr %235, align 8, !tbaa !387
  %237 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 9
  store i64 %236, ptr %237, align 8, !tbaa !388
  %238 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !370
  %240 = icmp eq ptr %239, %1
  br i1 %240, label %242, label %241, !prof !520

241:                                              ; preds = %231
  call void @redirect_edge_succ(ptr noundef nonnull %232, ptr noundef %1) #15
  br label %242

242:                                              ; preds = %48, %231, %241, %152, %151, %144, %125, %59, %62, %45, %36, %21, %28, %3, %13
  %243 = phi ptr [ null, %13 ], [ null, %3 ], [ null, %28 ], [ null, %21 ], [ null, %36 ], [ null, %45 ], [ null, %62 ], [ null, %59 ], [ null, %125 ], [ null, %144 ], [ null, %151 ], [ null, %152 ], [ %232, %241 ], [ %232, %231 ], [ null, %48 ]
  ret ptr %243
}

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_fallthru(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @redirect_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_jump_insn_after_noloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !521 !PGOFuncName !522 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !380
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #14
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !523 !PGOFuncName !524 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #14, !range !340
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !525

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !380
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #14
  ret ptr %8
}

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_nonfallthru(ptr noundef %0) local_unnamed_addr #0 !prof !526 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  %4 = tail call fastcc ptr @force_nonfallthru_and_redirect(ptr noundef %0, ptr noundef %3) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @force_nonfallthru_and_redirect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !527 !PGOFuncName !528 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = load ptr, ptr @cfun, align 8, !tbaa !317
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !371
  %9 = load ptr, ptr %8, align 8, !tbaa !428
  %10 = icmp eq ptr %5, %9
  br i1 %10, label %75, label %11, !prof !529

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !370
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !373
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %75, label %17, !prof !529

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !294
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !337
  %22 = tail call i32 @any_condjump_p(ptr noundef %21) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %75, label %24, !prof !530

24:                                               ; preds = %17
  %25 = load ptr, ptr %0, align 8, !tbaa !446
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !294
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !337
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !294
  %32 = load ptr, ptr %12, align 8, !tbaa !370
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !294
  %35 = load ptr, ptr %34, align 8, !tbaa !343
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %37, label %75, !prof !531

37:                                               ; preds = %24
  %38 = tail call ptr @unchecked_make_edge(ptr noundef nonnull %25, ptr noundef %1, i32 noundef 0) #15
  %39 = load ptr, ptr %0, align 8, !tbaa !446
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !294
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !337
  %44 = tail call ptr @block_label(ptr noundef %1) #14
  %45 = tail call i32 @redirect_jump(ptr noundef %43, ptr noundef %44, i32 noundef 0) #15
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1127, ptr noundef nonnull @.str.1) #15
  br label %49

49:                                               ; preds = %37, %48
  %50 = load ptr, ptr %0, align 8, !tbaa !446
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !294
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !337
  %55 = tail call ptr @find_reg_note(ptr noundef %54, i32 noundef 13, ptr noundef null) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !294
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !294
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 8
  store i32 %62, ptr %63, align 4, !tbaa !386
  %64 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %65 = load i64, ptr %64, align 8, !tbaa !388
  %66 = shl i64 %61, 32
  %67 = ashr exact i64 %66, 32
  %68 = mul nsw i64 %65, %67
  %69 = sdiv i64 %68, 10000
  %70 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 9
  store i64 %69, ptr %70, align 8, !tbaa !388
  %71 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  store i32 0, ptr %71, align 4, !tbaa !386
  %72 = load i64, ptr %64, align 8, !tbaa !388
  %73 = sub nsw i64 %72, %69
  %74 = tail call i64 @llvm.smax.i64(i64 %73, i64 0)
  store i64 %74, ptr %64, align 8
  br label %75

75:                                               ; preds = %57, %49, %24, %17, %11, %2
  %76 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !351
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80, !prof !532

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !370
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1152, ptr noundef nonnull @.str.1) #15
  %85 = load i32, ptr %76, align 8, !tbaa !351
  br label %86

86:                                               ; preds = %80, %84
  %87 = phi i32 [ %77, %80 ], [ %85, %84 ]
  %88 = and i32 %87, -66
  %89 = and i32 %87, 65
  store i32 %89, ptr %76, align 8, !tbaa !351
  br label %142

90:                                               ; preds = %75
  %91 = and i32 %77, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94, !prof !529

93:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1158, ptr noundef nonnull @.str.1) #15
  br label %94

94:                                               ; preds = %90, %93
  %95 = load ptr, ptr %0, align 8, !tbaa !446
  %96 = load ptr, ptr @cfun, align 8, !tbaa !317
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !371
  %99 = load ptr, ptr %98, align 8, !tbaa !428
  %100 = icmp eq ptr %95, %99
  br i1 %100, label %101, label %142, !prof !529

101:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %102 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !370
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !294
  %106 = load ptr, ptr %105, align 8, !tbaa !343
  %107 = tail call ptr @create_basic_block(ptr noundef %106, ptr noundef null, ptr noundef %95) #15
  store ptr %107, ptr %0, align 8, !tbaa !446
  %108 = load ptr, ptr @cfun, align 8, !tbaa !317
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !371
  %111 = load ptr, ptr %110, align 8, !tbaa !428
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %111, i64 0, i32 1
  %113 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %112) #14
  store i32 0, ptr %4, align 8, !tbaa.struct !347
  %114 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %113, ptr %114, align 8, !tbaa.struct !349
  %115 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %113) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %134, label %117

117:                                              ; preds = %101
  %118 = icmp eq ptr %115, %0
  br i1 %118, label %121, label %129

119:                                              ; preds = %129
  %120 = icmp eq ptr %132, %0
  br i1 %120, label %121, label %129, !llvm.loop !533

121:                                              ; preds = %119, %117
  %122 = phi i32 [ 0, %117 ], [ %130, %119 ]
  %123 = load ptr, ptr @cfun, align 8, !tbaa !317
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !371
  %126 = load ptr, ptr %125, align 8, !tbaa !428
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !380
  tail call fastcc void @VEC_edge_base_unordered_remove(ptr noundef %128, i32 noundef %122) #14
  br label %135

129:                                              ; preds = %117, %119
  call fastcc void @ei_next(ptr noundef nonnull %4) #14
  %130 = load i32, ptr %4, align 8
  %131 = load ptr, ptr %114, align 8
  %132 = tail call fastcc ptr @ei_safe_edge(i32 %130, ptr %131) #14
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %119, !llvm.loop !533

134:                                              ; preds = %129, %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1185, ptr noundef nonnull @.str.1) #15
  br label %135

135:                                              ; preds = %121, %134
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 1
  tail call fastcc void @VEC_edge_gc_safe_push(ptr noundef nonnull %136, ptr noundef nonnull %0) #14
  %137 = load ptr, ptr @cfun, align 8, !tbaa !317
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !371
  %140 = load ptr, ptr %139, align 8, !tbaa !428
  %141 = tail call ptr @make_single_succ_edge(ptr noundef %140, ptr noundef %107, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %142

142:                                              ; preds = %94, %135, %86
  %143 = phi i32 [ %88, %86 ], [ 0, %135 ], [ 0, %94 ]
  %144 = load ptr, ptr %0, align 8, !tbaa !446
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !380
  %147 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %146) #14
  %148 = icmp ugt i32 %147, 1
  %149 = icmp ne i32 %143, 0
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %226, !prof !534

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !294
  %154 = getelementptr inbounds %struct.rtl_bb_info, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !337
  %156 = call zeroext i8 @tablejump_p(ptr noundef %155, ptr noundef null, ptr noundef nonnull %3) #15
  %157 = icmp eq i8 %156, 0
  %158 = load ptr, ptr %0, align 8, !tbaa !446
  br i1 %157, label %159, label %163, !prof !535

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !294
  %162 = getelementptr inbounds %struct.rtl_bb_info, ptr %161, i64 0, i32 1
  br label %163

163:                                              ; preds = %151, %159
  %164 = phi ptr [ %162, %159 ], [ %3, %151 ]
  %165 = load ptr, ptr %164, align 8, !tbaa !317
  %166 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1, i32 0, i32 0, i64 2
  %167 = load ptr, ptr %166, align 8, !tbaa !294
  store ptr %167, ptr %3, align 8, !tbaa !317
  %168 = call ptr @create_basic_block(ptr noundef %167, ptr noundef null, ptr noundef %158) #15
  %169 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %170 = load i64, ptr %169, align 8, !tbaa !388
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 8
  store i64 %170, ptr %171, align 8, !tbaa !387
  %172 = load ptr, ptr %0, align 8, !tbaa !446
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 11
  %174 = load i32, ptr %173, align 8, !tbaa !536
  %175 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %176 = load i32, ptr %175, align 4, !tbaa !386
  %177 = mul nsw i32 %176, %174
  %178 = add nsw i32 %177, 5000
  %179 = sdiv i32 %178, 10000
  %180 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 11
  store i32 %179, ptr %180, align 8, !tbaa !536
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %182 = load i32, ptr %181, align 4, !tbaa !537
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 10
  store i32 %182, ptr %183, align 4, !tbaa !537
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 13
  %185 = load i32, ptr %184, align 8, !tbaa !421
  %186 = and i32 %185, -97
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 13
  %188 = load i32, ptr %187, align 8, !tbaa !421
  %189 = and i32 %188, 96
  %190 = or disjoint i32 %189, %186
  store i32 %190, ptr %184, align 8, !tbaa !421
  %191 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !348
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %219, label %193, !prof !535

193:                                              ; preds = %163
  %194 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1, !tbaa !538
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %219, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 7
  %198 = load ptr, ptr %197, align 8, !tbaa !294
  %199 = getelementptr inbounds %struct.rtl_bb_info, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !337
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 65535
  %203 = icmp eq i32 %202, 9
  br i1 %203, label %204, label %219

204:                                              ; preds = %196
  %205 = call i32 @any_condjump_p(ptr noundef nonnull %200) #15
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !380
  %210 = call fastcc ptr @VEC_edge_base_index(ptr noundef %209, i32 noundef 0) #14
  %211 = getelementptr inbounds %struct.edge_def, ptr %210, i64 0, i32 7
  %212 = load i32, ptr %211, align 8, !tbaa !351
  %213 = and i32 %212, 8192
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %207
  %216 = load ptr, ptr %197, align 8, !tbaa !294
  %217 = getelementptr inbounds %struct.rtl_bb_info, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !337
  call void @add_reg_note(ptr noundef %218, i32 noundef 29, ptr noundef null) #15
  br label %219

219:                                              ; preds = %215, %207, %204, %196, %193, %163
  %220 = load ptr, ptr %0, align 8, !tbaa !446
  %221 = call ptr @make_edge(ptr noundef %220, ptr noundef nonnull %168, i32 noundef 1) #15
  %222 = load i32, ptr %175, align 4, !tbaa !386
  %223 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 8
  store i32 %222, ptr %223, align 4, !tbaa !386
  %224 = load i64, ptr %169, align 8, !tbaa !388
  %225 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 9
  store i64 %224, ptr %225, align 8, !tbaa !388
  call void @redirect_edge_pred(ptr noundef nonnull %0, ptr noundef nonnull %168) #15
  store i32 10000, ptr %175, align 4, !tbaa !386
  br label %226

226:                                              ; preds = %142, %219
  %227 = phi ptr [ %168, %219 ], [ null, %142 ]
  %228 = phi ptr [ %168, %219 ], [ %144, %142 ]
  %229 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 5
  %230 = load i32, ptr %229, align 8, !tbaa !550
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %236, label %232, !prof !551

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 4
  %234 = load ptr, ptr %233, align 8, !tbaa !552
  %235 = icmp eq ptr %234, null
  br i1 %235, label %237, label %236, !prof !553

236:                                              ; preds = %232, %226
  br label %237

237:                                              ; preds = %232, %236
  %238 = phi i32 [ 0, %236 ], [ %230, %232 ]
  %239 = load i32, ptr %76, align 8, !tbaa !351
  %240 = and i32 %239, -2
  store i32 %240, ptr %76, align 8, !tbaa !351
  %241 = load ptr, ptr @cfun, align 8, !tbaa !317
  %242 = getelementptr inbounds %struct.function, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !371
  %244 = getelementptr inbounds %struct.control_flow_graph, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !373
  %246 = icmp eq ptr %245, %1
  br i1 %246, label %247, label %254, !prof !529

247:                                              ; preds = %237
  %248 = call ptr @gen_return() #15
  %249 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 7
  %250 = load ptr, ptr %249, align 8, !tbaa !294
  %251 = getelementptr inbounds %struct.rtl_bb_info, ptr %250, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !337
  %253 = call ptr @emit_jump_insn_after_setloc(ptr noundef %248, ptr noundef %252, i32 noundef %238) #15
  br label %269

254:                                              ; preds = %237
  %255 = call ptr @block_label(ptr noundef %1) #14
  %256 = call ptr @gen_jump(ptr noundef %255) #15
  %257 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 7
  %258 = load ptr, ptr %257, align 8, !tbaa !294
  %259 = getelementptr inbounds %struct.rtl_bb_info, ptr %258, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !337
  %261 = call ptr @emit_jump_insn_after_setloc(ptr noundef %256, ptr noundef %260, i32 noundef %238) #15
  %262 = load ptr, ptr %257, align 8, !tbaa !294
  %263 = getelementptr inbounds %struct.rtl_bb_info, ptr %262, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !337
  %265 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %255, ptr %265, align 8, !tbaa !294
  %266 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1, i32 0, i32 2
  %267 = load i32, ptr %266, align 8, !tbaa !294
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %266, align 8, !tbaa !294
  br label %269

269:                                              ; preds = %254, %247
  %270 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !294
  %272 = getelementptr inbounds %struct.rtl_bb_info, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !337
  %274 = call ptr @emit_barrier_after(ptr noundef %273) #15
  %275 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #15
  br i1 %149, label %276, label %278, !prof !529

276:                                              ; preds = %269
  %277 = call ptr @make_edge(ptr noundef %5, ptr noundef %1, i32 noundef %143) #15
  br label %278

278:                                              ; preds = %276, %269
  call void @df_mark_solutions_dirty() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %227
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unchecked_make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !427 !PGOFuncName !554 {
  %3 = load i32, ptr %0, align 8, !tbaa !475
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !475
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !317
  store ptr %9, ptr %5, align 8, !tbaa !317
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !555 !PGOFuncName !556 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !557

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !558

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !559
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !559
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !427 !PGOFuncName !561 {
  tail call fastcc void @VEC_edge_gc_reserve(ptr noundef %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !317
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @redirect_edge_pred(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_jump_insn_after_setloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_return() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_mark_solutions_dirty() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !427 !PGOFuncName !562 {
  %2 = load ptr, ptr %0, align 8, !tbaa !317
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #15
  store ptr %6, ptr %0, align 8, !tbaa !317
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !427 !PGOFuncName !563 {
  %3 = load i32, ptr %0, align 8, !tbaa !475
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !475
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !317
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !427 !PGOFuncName !564 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !565
  %6 = load i32, ptr %0, align 8, !tbaa !475
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_to_sequence(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @commit_one_edge_insertion(ptr noundef %0) local_unnamed_addr #0 !prof !566 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  store ptr null, ptr %2, align 8, !tbaa !294
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !370
  %6 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %5) #14, !range !340
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %48, label %8, !prof !567

8:                                                ; preds = %1
  %9 = load ptr, ptr @cfun, align 8, !tbaa !317
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !371
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !373
  %14 = icmp eq ptr %5, %13
  br i1 %14, label %48, label %15, !prof !568

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !294
  %18 = load ptr, ptr %17, align 8, !tbaa !343
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 12
  br i1 %21, label %22, label %26, !prof !569

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !294
  %25 = load i32, ptr %24, align 8
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i32 [ %25, %22 ], [ %19, %15 ]
  %28 = phi ptr [ %24, %22 ], [ %18, %15 ]
  %29 = and i32 %27, 65535
  %30 = icmp eq i32 %29, 13
  br i1 %30, label %31, label %38, !prof !570

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1
  %33 = load i32, ptr %32, align 8, !tbaa !294
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %38, !prof !570

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !294
  br label %38

38:                                               ; preds = %35, %31, %26
  %39 = phi ptr [ %37, %35 ], [ %28, %31 ], [ %28, %26 ]
  %40 = icmp eq ptr %39, %18
  br i1 %40, label %119, label %41, !prof !571

41:                                               ; preds = %38
  %42 = icmp eq ptr %39, null
  br i1 %42, label %46, label %43, !prof !571

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !294
  br label %124

46:                                               ; preds = %41
  %47 = tail call ptr @get_last_insn() #15
  br label %124

48:                                               ; preds = %8, %1
  %49 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !351
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %78, !prof !572

53:                                               ; preds = %48
  %54 = load ptr, ptr %0, align 8, !tbaa !446
  %55 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %54) #14, !range !340
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %78, label %57, !prof !573

57:                                               ; preds = %53
  %58 = load ptr, ptr @cfun, align 8, !tbaa !317
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !371
  %61 = load ptr, ptr %60, align 8, !tbaa !428
  %62 = icmp eq ptr %54, %61
  br i1 %62, label %78, label %63, !prof !574

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !294
  %66 = getelementptr inbounds %struct.rtl_bb_info, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !337
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %119, label %71, !prof !575

71:                                               ; preds = %63
  %72 = and i32 %50, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %124, !prof !576

74:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1492, ptr noundef nonnull @.str.1) #15
  %75 = load ptr, ptr %64, align 8, !tbaa !294
  %76 = getelementptr inbounds %struct.rtl_bb_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !337
  br label %124

78:                                               ; preds = %57, %53, %48
  %79 = tail call ptr @split_edge(ptr noundef nonnull %0) #15
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !294
  %82 = getelementptr inbounds %struct.rtl_bb_info, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !337
  %84 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !348
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %124, label %86, !prof !577

86:                                               ; preds = %78
  %87 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1, !tbaa !538
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %124, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %0, align 8, !tbaa !446
  %91 = load ptr, ptr @cfun, align 8, !tbaa !317
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !371
  %94 = load ptr, ptr %93, align 8, !tbaa !428
  %95 = icmp eq ptr %90, %94
  br i1 %95, label %124, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 13
  %98 = load i32, ptr %97, align 8, !tbaa !421
  %99 = and i32 %98, 96
  %100 = icmp eq i32 %99, 64
  br i1 %100, label %101, label %124

101:                                              ; preds = %96
  %102 = load i32, ptr %49, align 8, !tbaa !351
  %103 = and i32 %102, 8192
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i32, ptr %83, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 9
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = tail call i32 @any_condjump_p(ptr noundef nonnull %83) #15
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %79) #14
  %114 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !351
  %116 = and i32 %115, 8192
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  tail call void @add_reg_note(ptr noundef nonnull %83, i32 noundef 29, ptr noundef null) #15
  br label %124

119:                                              ; preds = %38, %63
  %120 = phi ptr [ %54, %63 ], [ %5, %38 ]
  %121 = phi ptr [ %67, %63 ], [ %18, %38 ]
  %122 = tail call ptr @emit_insn_before_noloc(ptr noundef %3, ptr noundef nonnull %121, ptr noundef nonnull %120) #15
  %123 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %121) #15
  br label %128

124:                                              ; preds = %74, %71, %78, %86, %89, %96, %105, %112, %118, %109, %101, %46, %43
  %125 = phi ptr [ %79, %78 ], [ %79, %86 ], [ %79, %89 ], [ %79, %96 ], [ %79, %105 ], [ %79, %112 ], [ %79, %118 ], [ %79, %109 ], [ %79, %101 ], [ %5, %46 ], [ %5, %43 ], [ %54, %71 ], [ %54, %74 ]
  %126 = phi ptr [ %83, %78 ], [ %83, %86 ], [ %83, %89 ], [ %83, %96 ], [ %83, %105 ], [ %83, %112 ], [ %83, %118 ], [ %83, %109 ], [ %83, %101 ], [ %47, %46 ], [ %45, %43 ], [ %67, %71 ], [ %77, %74 ]
  %127 = tail call ptr @emit_insn_after_noloc(ptr noundef %3, ptr noundef %126, ptr noundef nonnull %125) #15
  br label %128

128:                                              ; preds = %124, %119
  %129 = phi i1 [ false, %119 ], [ true, %124 ]
  %130 = phi ptr [ %120, %119 ], [ %125, %124 ]
  %131 = phi ptr [ %121, %119 ], [ null, %124 ]
  %132 = phi ptr [ %123, %119 ], [ %127, %124 ]
  %133 = tail call i32 @returnjump_p(ptr noundef %132) #15
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %163, label %135, !prof !578

135:                                              ; preds = %128
  %136 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %130) #14
  %137 = getelementptr inbounds %struct.edge_def, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !370
  %139 = load ptr, ptr @cfun, align 8, !tbaa !317
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !371
  %142 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !373
  %144 = icmp eq ptr %138, %143
  br i1 %144, label %145, label %153, !prof !579

145:                                              ; preds = %135
  %146 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %130) #14, !range !340
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148, !prof !580

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.edge_def, ptr %136, i64 0, i32 7
  %150 = load i32, ptr %149, align 8, !tbaa !351
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156, !prof !580

153:                                              ; preds = %148, %145, %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1534, ptr noundef nonnull @.str.1) #15
  %154 = getelementptr inbounds %struct.edge_def, ptr %136, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !351
  br label %156

156:                                              ; preds = %148, %153
  %157 = phi i32 [ %150, %148 ], [ %155, %153 ]
  %158 = getelementptr inbounds %struct.edge_def, ptr %136, i64 0, i32 7
  %159 = and i32 %157, -2
  store i32 %159, ptr %158, align 8, !tbaa !351
  %160 = tail call ptr @emit_barrier_after(ptr noundef %132) #15
  br i1 %129, label %168, label %161, !prof !579

161:                                              ; preds = %156
  %162 = tail call ptr @delete_insn(ptr noundef nonnull %131) #14
  br label %168

163:                                              ; preds = %128
  %164 = load i32, ptr %132, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 9
  br i1 %166, label %167, label %168, !prof !581

167:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1543, ptr noundef nonnull @.str.1) #15
  br label %168

168:                                              ; preds = %167, %163, %156, %161
  %169 = tail call i32 @current_ir_type() #15
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %173, label %171, !prof !582

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 2
  store ptr %172, ptr %172, align 8, !tbaa !413
  br label %173

173:                                              ; preds = %171, %168
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !583 !PGOFuncName !584 {
  %2 = load ptr, ptr %0, align 8, !tbaa !447
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !585 !PGOFuncName !586 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !340
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !587

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !317
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !588 !PGOFuncName !589 {
  %3 = load ptr, ptr %0, align 8, !tbaa !464
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !461

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
  %15 = load i64, ptr %14, align 8, !tbaa !590
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !294
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !294
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !590
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !590
  ret void
}

; Function Attrs: optsize
declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_rtl_with_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !427 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr %0)
  br label %185

10:                                               ; preds = %2
  %11 = tail call i32 @get_max_uid() #15
  %12 = sext i32 %11 to i64
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 8) #15
  %14 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 8) #15
  %15 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 4) #15
  %16 = load ptr, ptr @df, align 8, !tbaa !317
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void @df_dump_start(ptr noundef %0) #15
  br label %19

19:                                               ; preds = %18, %10
  %20 = load ptr, ptr @cfun, align 8, !tbaa !317
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !371
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !373
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !591
  %27 = load ptr, ptr %22, align 8, !tbaa !428
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %68, %19
  %30 = getelementptr inbounds i8, ptr %4, i64 8
  %31 = getelementptr inbounds i8, ptr %6, i64 8
  br label %76

32:                                               ; preds = %19, %68
  %33 = phi ptr [ %70, %68 ], [ %26, %19 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !294
  %36 = load ptr, ptr %35, align 8, !tbaa !343
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !294
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %13, i64 %39
  store ptr %33, ptr %40, align 8, !tbaa !317
  %41 = load ptr, ptr %34, align 8, !tbaa !294
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !337
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !294
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %14, i64 %46
  store ptr %33, ptr %47, align 8, !tbaa !317
  %48 = load ptr, ptr %34, align 8, !tbaa !294
  %49 = load ptr, ptr %48, align 8, !tbaa !294
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %55

51:                                               ; preds = %55
  %52 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !294
  %54 = icmp eq ptr %53, null
  br i1 %54, label %68, label %55, !llvm.loop !592

55:                                               ; preds = %32, %51
  %56 = phi ptr [ %53, %51 ], [ %49, %32 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !294
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %15, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !348
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 1, i32 2
  store i32 %63, ptr %60, align 4, !tbaa !348
  %64 = load ptr, ptr %34, align 8, !tbaa !294
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !337
  %67 = icmp eq ptr %56, %66
  br i1 %67, label %68, label %51

68:                                               ; preds = %51, %55, %32
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !591
  %71 = load ptr, ptr @cfun, align 8, !tbaa !317
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !371
  %74 = load ptr, ptr %73, align 8, !tbaa !428
  %75 = icmp eq ptr %70, %74
  br i1 %75, label %29, label %32, !llvm.loop !593

76:                                               ; preds = %29, %180
  %77 = phi ptr [ %1, %29 ], [ %182, %180 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !294
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %13, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !317
  %83 = icmp eq ptr %82, null
  br i1 %83, label %121, label %84

84:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %85 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr %0)
  %86 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %82) #14
  store i32 0, ptr %4, align 8, !tbaa.struct !347
  store ptr %86, ptr %30, align 8, !tbaa.struct !349
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %3) #14, !range !340
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84, %89
  %90 = load ptr, ptr %3, align 8, !tbaa !317
  %91 = load ptr, ptr %90, align 8, !tbaa !446
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %91, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !384
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %93) #14
  call fastcc void @ei_next(ptr noundef nonnull %4) #14
  %95 = load i32, ptr %4, align 8
  %96 = load ptr, ptr %30, align 8
  %97 = call fastcc zeroext i8 @ei_cond(i32 %95, ptr %96, ptr noundef nonnull %3) #14, !range !340
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %89, !llvm.loop !594

99:                                               ; preds = %89, %84
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !384
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %101) #14
  %103 = load ptr, ptr @df, align 8, !tbaa !317
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  tail call void @df_dump_top(ptr noundef nonnull %82, ptr noundef %0) #15
  %106 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #14
  br label %107

107:                                              ; preds = %105, %99
  store i32 0, ptr %4, align 8, !tbaa.struct !347
  store ptr %86, ptr %30, align 8, !tbaa.struct !349
  %108 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %3) #14, !range !340
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %107, %110
  %111 = tail call i32 @fputs(ptr noundef nonnull @.str.11, ptr noundef %0) #14
  %112 = load ptr, ptr %3, align 8, !tbaa !317
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %112, i32 noundef 0) #15
  %113 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #14
  call fastcc void @ei_next(ptr noundef nonnull %4) #14
  %114 = load i32, ptr %4, align 8
  %115 = load ptr, ptr %30, align 8
  %116 = call fastcc zeroext i8 @ei_cond(i32 %114, ptr %115, ptr noundef nonnull %3) #14, !range !340
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %110, !llvm.loop !595

118:                                              ; preds = %110, %107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %119 = load i32, ptr %78, align 8, !tbaa !294
  %120 = sext i32 %119 to i64
  br label %121

121:                                              ; preds = %118, %76
  %122 = phi i64 [ %120, %118 ], [ %80, %76 ]
  %123 = getelementptr inbounds i32, ptr %15, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !348
  switch i32 %124, label %131 [
    i32 0, label %125
    i32 2, label %128
  ]

125:                                              ; preds = %121
  %126 = load i32, ptr %77, align 8
  %127 = trunc i32 %126 to i16
  switch i16 %127, label %128 [
    i16 13, label %131
    i16 11, label %131
  ]

128:                                              ; preds = %121, %125
  %129 = phi ptr [ @.str.12, %125 ], [ @.str.13, %121 ]
  %130 = tail call i64 @fwrite(ptr nonnull %129, i64 36, i64 1, ptr %0)
  br label %131

131:                                              ; preds = %128, %121, %125, %125
  %132 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef nonnull %77) #15
  %133 = load i32, ptr %78, align 8, !tbaa !294
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %14, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !317
  %137 = icmp eq ptr %136, null
  br i1 %137, label %176, label %138

138:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 9
  %140 = load i32, ptr %139, align 8, !tbaa !384
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %140) #14
  %142 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 1
  %143 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %142) #14
  store i32 0, ptr %6, align 8, !tbaa.struct !347
  store ptr %143, ptr %31, align 8, !tbaa.struct !349
  %144 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %143, ptr noundef nonnull %5) #14, !range !340
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %138, %146
  %147 = load ptr, ptr %5, align 8, !tbaa !317
  %148 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !370
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !384
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %151) #14
  call fastcc void @ei_next(ptr noundef nonnull %6) #14
  %153 = load i32, ptr %6, align 8
  %154 = load ptr, ptr %31, align 8
  %155 = call fastcc zeroext i8 @ei_cond(i32 %153, ptr %154, ptr noundef nonnull %5) #14, !range !340
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %146, !llvm.loop !596

157:                                              ; preds = %146, %138
  %158 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 2, i64 1, ptr %0)
  %159 = load ptr, ptr @df, align 8, !tbaa !317
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  tail call void @df_dump_bottom(ptr noundef nonnull %136, ptr noundef %0) #15
  %162 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #14
  br label %163

163:                                              ; preds = %161, %157
  %164 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #14
  store i32 0, ptr %6, align 8, !tbaa.struct !347
  store ptr %143, ptr %31, align 8, !tbaa.struct !349
  %165 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %143, ptr noundef nonnull %5) #14, !range !340
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %163, %167
  %168 = tail call i32 @fputs(ptr noundef nonnull @.str.16, ptr noundef %0) #14
  %169 = load ptr, ptr %5, align 8, !tbaa !317
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %169, i32 noundef 1) #15
  %170 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #14
  call fastcc void @ei_next(ptr noundef nonnull %6) #14
  %171 = load i32, ptr %6, align 8
  %172 = load ptr, ptr %31, align 8
  %173 = call fastcc zeroext i8 @ei_cond(i32 %171, ptr %172, ptr noundef nonnull %5) #14, !range !340
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %167, !llvm.loop !597

175:                                              ; preds = %167, %163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %176

176:                                              ; preds = %175, %131
  %177 = icmp eq i32 %132, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %176
  %179 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #14
  br label %180

180:                                              ; preds = %178, %176
  %181 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 2
  %182 = load ptr, ptr %181, align 8, !tbaa !294
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %76, !llvm.loop !598

184:                                              ; preds = %180
  tail call void @free(ptr noundef %13) #14
  tail call void @free(ptr noundef %14) #14
  tail call void @free(ptr noundef %15) #14
  br label %185

185:                                              ; preds = %184, %8
  %186 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !599
  %187 = icmp eq ptr %186, null
  br i1 %187, label %200, label %188

188:                                              ; preds = %185
  %189 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 35, i64 1, ptr %0)
  %190 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !294
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %188, %192
  %193 = phi ptr [ %198, %192 ], [ %190, %188 ]
  %194 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !294
  %196 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef %195) #15
  %197 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !294
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %192, !llvm.loop !600

200:                                              ; preds = %192, %188, %185
  ret void
}

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_dump_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_dump_top(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_dump_bottom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_br_prob_note(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !601 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %43, !prof !602

9:                                                ; preds = %1
  %10 = tail call ptr @find_reg_note(ptr noundef nonnull %5, i32 noundef 13, ptr noundef null) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12, !prof !603

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !294
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !294
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !380
  %19 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %18, i32 noundef 0) #14
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !351
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !604

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 8
  %26 = load i32, ptr %25, align 4, !tbaa !386
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %16, %27
  br i1 %28, label %43, label %40, !prof !605

29:                                               ; preds = %12
  %30 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %18, i32 noundef 1) #14
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  %32 = load i32, ptr %31, align 4, !tbaa !386
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %16, %33
  br i1 %34, label %43, label %35, !prof !605

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %18, i32 noundef 1) #14
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !386
  %39 = sext i32 %38 to i64
  br label %40

40:                                               ; preds = %24, %35
  %41 = phi i64 [ %27, %24 ], [ %39, %35 ]
  %42 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %41) #15
  store ptr %42, ptr %13, align 8, !tbaa !294
  br label %43

43:                                               ; preds = %29, %9, %24, %1, %40
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_last_bb_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !606 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !294
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !337
  %7 = call zeroext i8 @tablejump_p(ptr noundef %6, ptr noundef null, ptr noundef nonnull %2) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !607

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !317
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %6, %1 ]
  %13 = call ptr @next_nonnote_insn_bb(ptr noundef %12) #15
  store ptr %13, ptr %2, align 8, !tbaa !317
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15, !prof !608

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 11
  br i1 %18, label %23, label %27, !prof !609

19:                                               ; preds = %23
  %20 = load i32, ptr %25, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 11
  br i1 %22, label %23, label %27, !prof !610, !llvm.loop !611

23:                                               ; preds = %15, %19
  %24 = phi ptr [ %25, %19 ], [ %13, %15 ]
  %25 = call ptr @next_nonnote_insn_bb(ptr noundef nonnull %24) #15
  store ptr %25, ptr %2, align 8, !tbaa !317
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19, !prof !612, !llvm.loop !611

27:                                               ; preds = %23, %19, %15, %11
  %28 = phi ptr [ %12, %11 ], [ %12, %15 ], [ %24, %19 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @next_nonnote_insn_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_nonlocal_goto(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @purge_all_dead_edges() local_unnamed_addr #0 !prof !613 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !317
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !371
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !429
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !373
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %23, label %10, !prof !614

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %16, %10 ], [ %6, %0 ]
  %12 = phi i8 [ %14, %10 ], [ 0, %0 ]
  %13 = tail call zeroext i8 @purge_dead_edges(ptr noundef %11) #14, !range !340
  %14 = or i8 %13, %12
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !429
  %17 = load ptr, ptr @cfun, align 8, !tbaa !317
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !371
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !373
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %23, label %10, !prof !615, !llvm.loop !616

23:                                               ; preds = %10, %0
  %24 = phi i8 [ 0, %0 ], [ %14, %10 ]
  ret i8 %24
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @insert_insn_end_bb_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !427 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !294
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !337
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %31 [
    i16 9, label %20
    i16 8, label %9
  ]

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %1) #14, !range !340
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %1) #14
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !351
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, ptr %6, align 8
  br label %31

20:                                               ; preds = %2, %12, %9
  %21 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !294
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65534
  %25 = icmp eq i32 %24, 20
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call ptr @prev_real_insn(ptr noundef nonnull %6) #15
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi ptr [ %27, %26 ], [ %6, %20 ]
  %30 = tail call ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %1) #15
  br label %63

31:                                               ; preds = %18, %2
  %32 = phi i32 [ %19, %18 ], [ %7, %2 ]
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %1) #14, !range !340
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %1) #14
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !351
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %38, %35
  %45 = load ptr, ptr %3, align 8, !tbaa !294
  %46 = load ptr, ptr %45, align 8, !tbaa !343
  %47 = tail call ptr @find_first_parameter_load(ptr noundef nonnull %6, ptr noundef %46) #15
  br label %48

48:                                               ; preds = %56, %44
  %49 = phi ptr [ %47, %44 ], [ %58, %56 ]
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %59 [
    i16 12, label %56
    i16 13, label %52
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %54 = load i32, ptr %53, align 8, !tbaa !294
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %48, %52
  %57 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !294
  br label %48, !llvm.loop !617

59:                                               ; preds = %48, %52
  %60 = tail call ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef nonnull %49, ptr noundef %1) #15
  br label %63

61:                                               ; preds = %38, %31
  %62 = tail call ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %1) #15
  br label %63

63:                                               ; preds = %59, %61, %28
  %64 = phi ptr [ %30, %28 ], [ %60, %59 ], [ %62, %61 ]
  ret ptr %64
}

; Function Attrs: optsize
declare ptr @prev_real_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_first_parameter_load(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rtl_verify_flow_info() #0 !prof !427 !PGOFuncName !618 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = tail call i32 @rtl_verify_flow_info_1() #14, !range !298
  %4 = tail call ptr @get_last_insn() #15
  %5 = tail call ptr @get_insns() #15
  %6 = tail call i32 @get_max_uid() #15
  %7 = sext i32 %6 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 8) #15
  %9 = load ptr, ptr @cfun, align 8, !tbaa !317
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !371
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !373
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !591
  %16 = load ptr, ptr %11, align 8, !tbaa !428
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds i8, ptr %2, i64 8
  br label %24

20:                                               ; preds = %203, %0
  %21 = phi ptr [ %4, %0 ], [ %101, %203 ]
  %22 = phi i32 [ %3, %0 ], [ %204, %203 ]
  %23 = icmp eq ptr %21, null
  br i1 %23, label %230, label %212

24:                                               ; preds = %18, %203
  %25 = phi ptr [ %15, %18 ], [ %206, %203 ]
  %26 = phi i32 [ %3, %18 ], [ %204, %203 ]
  %27 = phi ptr [ %4, %18 ], [ %101, %203 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !294
  %30 = load ptr, ptr %29, align 8, !tbaa !343
  %31 = getelementptr inbounds %struct.rtl_bb_info, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !337
  %33 = icmp eq ptr %27, null
  %34 = icmp eq ptr %27, %32
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %56, label %36

36:                                               ; preds = %24, %49
  %37 = phi i32 [ %50, %49 ], [ %26, %24 ]
  %38 = phi ptr [ %52, %49 ], [ %27, %24 ]
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 11
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !294
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !294
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21, i32 noundef %48) #15
  br label %49

49:                                               ; preds = %36, %42, %46
  %50 = phi i32 [ %37, %36 ], [ 1, %46 ], [ %37, %42 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !294
  %53 = icmp eq ptr %52, null
  %54 = icmp eq ptr %52, %32
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %36, !llvm.loop !619

56:                                               ; preds = %49, %24
  %57 = phi ptr [ %27, %24 ], [ %52, %49 ]
  %58 = phi i32 [ %26, %24 ], [ %50, %49 ]
  %59 = phi i1 [ %33, %24 ], [ %53, %49 ]
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !294
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22, i32 noundef %62, i32 noundef %64) #15
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i32 [ %58, %56 ], [ 1, %60 ]
  %67 = icmp eq ptr %57, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  br label %70

70:                                               ; preds = %68, %90
  %71 = phi i32 [ %66, %68 ], [ %87, %90 ]
  %72 = phi ptr [ %57, %68 ], [ %92, %90 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !294
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %8, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !317
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %70
  %80 = load i32, ptr %69, align 8, !tbaa !384
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23, i32 noundef %74, i32 noundef %80, i32 noundef %82) #15
  %83 = load i32, ptr %73, align 8, !tbaa !294
  %84 = sext i32 %83 to i64
  br label %85

85:                                               ; preds = %79, %70
  %86 = phi i64 [ %84, %79 ], [ %75, %70 ]
  %87 = phi i32 [ 1, %79 ], [ %71, %70 ]
  %88 = getelementptr inbounds ptr, ptr %8, i64 %86
  store ptr %25, ptr %88, align 8, !tbaa !317
  %89 = icmp eq ptr %72, %30
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !294
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %70, !llvm.loop !620

94:                                               ; preds = %65, %90
  %95 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !294
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %96, i32 noundef %98) #15
  unreachable

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !294
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %103 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %102) #14
  store i32 0, ptr %2, align 8, !tbaa.struct !347
  store ptr %103, ptr %19, align 8, !tbaa.struct !349
  %104 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %103, ptr noundef nonnull %1) #14, !range !340
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %99, %112
  %107 = load ptr, ptr %1, align 8, !tbaa !317
  %108 = getelementptr inbounds %struct.edge_def, ptr %107, i64 0, i32 7
  %109 = load i32, ptr %108, align 8, !tbaa !351
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %106
  call fastcc void @ei_next(ptr noundef nonnull %2) #14
  %113 = load i32, ptr %2, align 8
  %114 = load ptr, ptr %19, align 8
  %115 = call fastcc zeroext i8 @ei_cond(i32 %113, ptr %114, ptr noundef nonnull %1) #14, !range !340
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %106, !llvm.loop !621

117:                                              ; preds = %112, %99
  %118 = load ptr, ptr %1, align 8, !tbaa !317
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %145

120:                                              ; preds = %117
  %121 = load ptr, ptr %28, align 8, !tbaa !294
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !337
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 2
  %125 = load ptr, ptr %124, align 8, !tbaa !294
  %126 = icmp eq ptr %125, null
  br i1 %126, label %136, label %127

127:                                              ; preds = %120, %141
  %128 = phi ptr [ %143, %141 ], [ %125, %120 ]
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = trunc i32 %129 to i16
  switch i16 %131, label %141 [
    i16 13, label %132
    i16 11, label %203
  ]

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 1
  %134 = load i32, ptr %133, align 8, !tbaa !294
  %135 = icmp eq i32 %134, 10
  br i1 %135, label %136, label %139

136:                                              ; preds = %141, %132, %120
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %138) #15
  br label %203

139:                                              ; preds = %132
  %140 = icmp eq i32 %130, 11
  br i1 %140, label %203, label %141

141:                                              ; preds = %139, %127
  %142 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1, i32 0, i32 0, i64 2
  %143 = load ptr, ptr %142, align 8, !tbaa !294
  %144 = icmp eq ptr %143, null
  br i1 %144, label %136, label %127

145:                                              ; preds = %106, %117
  %146 = phi ptr [ %118, %117 ], [ %107, %106 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !446
  %148 = load ptr, ptr @cfun, align 8, !tbaa !317
  %149 = getelementptr inbounds %struct.function, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !371
  %151 = load ptr, ptr %150, align 8, !tbaa !428
  %152 = icmp eq ptr %147, %151
  br i1 %152, label %203, label %153

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.edge_def, ptr %146, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !370
  %156 = getelementptr inbounds %struct.control_flow_graph, ptr %150, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !373
  %158 = icmp eq ptr %155, %157
  br i1 %158, label %203, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !429
  %162 = icmp eq ptr %161, %155
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 9
  %165 = load i32, ptr %164, align 8, !tbaa !384
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 9
  %167 = load i32, ptr %166, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %165, i32 noundef %167) #15
  br label %203

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 7
  %170 = load ptr, ptr %169, align 8, !tbaa !294
  %171 = getelementptr inbounds %struct.rtl_bb_info, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !337
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !294
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 7
  %176 = load ptr, ptr %175, align 8, !tbaa !294
  %177 = load ptr, ptr %176, align 8, !tbaa !343
  %178 = icmp eq ptr %174, %177
  br i1 %178, label %203, label %179

179:                                              ; preds = %168, %194
  %180 = phi ptr [ %195, %194 ], [ %155, %168 ]
  %181 = phi ptr [ %198, %194 ], [ %174, %168 ]
  %182 = phi i32 [ %196, %194 ], [ %87, %168 ]
  %183 = load i32, ptr %181, align 8
  %184 = and i32 %183, 65535
  %185 = add nsw i32 %184, -7
  %186 = icmp ult i32 %185, 5
  br i1 %186, label %187, label %194

187:                                              ; preds = %179
  %188 = load ptr, ptr %146, align 8, !tbaa !446
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 9
  %190 = load i32, ptr %189, align 8, !tbaa !384
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 9
  %192 = load i32, ptr %191, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %190, i32 noundef %192) #15
  tail call void @_fatal_insn(ptr noundef nonnull @.str.28, ptr noundef nonnull %181, ptr noundef nonnull @.str, i32 noundef 2144, ptr noundef nonnull @.str.1) #15
  %193 = load ptr, ptr %154, align 8, !tbaa !370
  br label %194

194:                                              ; preds = %179, %187
  %195 = phi ptr [ %193, %187 ], [ %180, %179 ]
  %196 = phi i32 [ 1, %187 ], [ %182, %179 ]
  %197 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 2
  %198 = load ptr, ptr %197, align 8, !tbaa !294
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 7
  %200 = load ptr, ptr %199, align 8, !tbaa !294
  %201 = load ptr, ptr %200, align 8, !tbaa !343
  %202 = icmp eq ptr %198, %201
  br i1 %202, label %203, label %179, !llvm.loop !622

203:                                              ; preds = %194, %127, %139, %168, %163, %136, %145, %153
  %204 = phi i32 [ %87, %153 ], [ %87, %145 ], [ 1, %136 ], [ 1, %163 ], [ %87, %168 ], [ %87, %139 ], [ %87, %127 ], [ %196, %194 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !591
  %207 = load ptr, ptr @cfun, align 8, !tbaa !317
  %208 = getelementptr inbounds %struct.function, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !371
  %210 = load ptr, ptr %209, align 8, !tbaa !428
  %211 = icmp eq ptr %206, %210
  br i1 %211, label %20, label %24, !llvm.loop !623

212:                                              ; preds = %20, %225
  %213 = phi i32 [ %226, %225 ], [ %22, %20 ]
  %214 = phi ptr [ %228, %225 ], [ %21, %20 ]
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 11
  br i1 %217, label %225, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !294
  %221 = icmp eq ptr %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !294
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21, i32 noundef %224) #15
  br label %225

225:                                              ; preds = %212, %218, %222
  %226 = phi i32 [ %213, %212 ], [ 1, %222 ], [ %213, %218 ]
  %227 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 0, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !294
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %212, !llvm.loop !624

230:                                              ; preds = %225, %20
  %231 = phi i32 [ %22, %20 ], [ %226, %225 ]
  tail call void @free(ptr noundef %8) #14
  %232 = load ptr, ptr @cfun, align 8, !tbaa !317
  %233 = getelementptr inbounds %struct.function, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !371
  %235 = icmp eq ptr %5, null
  br i1 %235, label %319, label %236

236:                                              ; preds = %230
  %237 = load ptr, ptr %234, align 8, !tbaa !428
  br label %238

238:                                              ; preds = %236, %310
  %239 = phi ptr [ %313, %310 ], [ %5, %236 ]
  %240 = phi i32 [ %261, %310 ], [ 0, %236 ]
  %241 = phi ptr [ %260, %310 ], [ %237, %236 ]
  %242 = phi ptr [ %311, %310 ], [ null, %236 ]
  %243 = load i32, ptr %239, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 13
  br i1 %245, label %246, label %258

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 1
  %248 = load i32, ptr %247, align 8, !tbaa !294
  %249 = icmp eq i32 %248, 10
  br i1 %249, label %250, label %258

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1, i32 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !294
  %253 = add nsw i32 %240, 1
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %241, i64 0, i32 6
  %255 = load ptr, ptr %254, align 8, !tbaa !429
  %256 = icmp eq ptr %252, %255
  br i1 %256, label %258, label %257

257:                                              ; preds = %250
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.29) #15
  br label %258

258:                                              ; preds = %250, %257, %246, %238
  %259 = phi ptr [ %242, %246 ], [ %242, %238 ], [ %252, %257 ], [ %252, %250 ]
  %260 = phi ptr [ %241, %246 ], [ %241, %238 ], [ %252, %257 ], [ %252, %250 ]
  %261 = phi i32 [ %240, %246 ], [ %240, %238 ], [ %253, %257 ], [ %253, %250 ]
  %262 = icmp eq ptr %259, null
  br i1 %262, label %263, label %282

263:                                              ; preds = %258
  %264 = load i32, ptr %239, align 8
  %265 = trunc i32 %264 to i16
  switch i16 %265, label %281 [
    i16 11, label %282
    i16 13, label %282
    i16 12, label %266
  ]

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1, i32 0, i32 0, i64 2
  %268 = load ptr, ptr %267, align 8, !tbaa !294
  %269 = icmp eq ptr %268, null
  br i1 %269, label %282, label %270

270:                                              ; preds = %266
  %271 = load i32, ptr %268, align 8
  %272 = and i32 %271, 65535
  %273 = icmp eq i32 %272, 9
  br i1 %273, label %274, label %282

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 1
  %276 = load ptr, ptr %275, align 8, !tbaa !294
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 65534
  %279 = icmp eq i32 %278, 20
  %280 = select i1 %279, ptr %268, ptr %239
  br label %282

281:                                              ; preds = %263
  tail call void @_fatal_insn(ptr noundef nonnull @.str.30, ptr noundef nonnull %239, ptr noundef nonnull @.str, i32 noundef 2198, ptr noundef nonnull @.str.1) #15
  br label %282

282:                                              ; preds = %274, %281, %263, %263, %270, %266, %258
  %283 = phi ptr [ %239, %258 ], [ %239, %281 ], [ %239, %270 ], [ %239, %266 ], [ %239, %263 ], [ %239, %263 ], [ %280, %274 ]
  %284 = load i32, ptr %283, align 8
  %285 = and i32 %284, 65535
  %286 = icmp eq i32 %285, 9
  br i1 %286, label %287, label %302

287:                                              ; preds = %282
  %288 = tail call i32 @returnjump_p(ptr noundef nonnull %283) #15
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %302, label %290

290:                                              ; preds = %287
  %291 = tail call i32 @condjump_p(ptr noundef nonnull %283) #15
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %290
  %294 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %283) #15
  %295 = icmp eq ptr %294, null
  br i1 %295, label %301, label %296

296:                                              ; preds = %293
  %297 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %283) #15
  %298 = load i32, ptr %297, align 8
  %299 = and i32 %298, 65535
  %300 = icmp eq i32 %299, 11
  br i1 %300, label %302, label %301

301:                                              ; preds = %296, %293
  tail call void @_fatal_insn(ptr noundef nonnull @.str.31, ptr noundef nonnull %283, ptr noundef nonnull @.str, i32 noundef 2205, ptr noundef nonnull @.str.1) #15
  br label %302

302:                                              ; preds = %301, %296, %290, %287, %282
  br i1 %262, label %310, label %303

303:                                              ; preds = %302
  %304 = getelementptr inbounds %struct.basic_block_def, ptr %259, i64 0, i32 7
  %305 = load ptr, ptr %304, align 8, !tbaa !294
  %306 = getelementptr inbounds %struct.rtl_bb_info, ptr %305, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !337
  %308 = icmp eq ptr %283, %307
  %309 = select i1 %308, ptr null, ptr %259
  br label %310

310:                                              ; preds = %303, %302
  %311 = phi ptr [ %309, %303 ], [ null, %302 ]
  %312 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1, i32 0, i32 0, i64 2
  %313 = load ptr, ptr %312, align 8, !tbaa !294
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %238, !llvm.loop !625

315:                                              ; preds = %310
  %316 = load ptr, ptr @cfun, align 8, !tbaa !317
  %317 = getelementptr inbounds %struct.function, ptr %316, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !371
  br label %319

319:                                              ; preds = %315, %230
  %320 = phi ptr [ %234, %230 ], [ %318, %315 ]
  %321 = phi i32 [ 0, %230 ], [ %261, %315 ]
  %322 = getelementptr inbounds %struct.control_flow_graph, ptr %320, i64 0, i32 3
  %323 = load i32, ptr %322, align 8, !tbaa !438
  %324 = add nsw i32 %323, -2
  %325 = icmp eq i32 %321, %324
  br i1 %325, label %327, label %326

326:                                              ; preds = %319
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.32, i32 noundef %321, i32 noundef %323) #15
  br label %327

327:                                              ; preds = %326, %319
  ret i32 %231
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rtl_dump_bb(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3) #0 !prof !427 !PGOFuncName !626 {
  %5 = load ptr, ptr @df, align 8, !tbaa !317
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  tail call void @df_dump_top(ptr noundef %0, ptr noundef %1) #15
  %8 = tail call i32 @putc(i32 noundef 10, ptr noundef %1) #14
  br label %9

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !294
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !337
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !294
  %16 = load ptr, ptr %11, align 8, !tbaa !294
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %24, label %18

18:                                               ; preds = %9, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %9 ]
  %20 = tail call i32 @print_rtl_single(ptr noundef %1, ptr noundef %19) #15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !294
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %24, label %18, !llvm.loop !627

24:                                               ; preds = %18, %9
  %25 = load ptr, ptr @df, align 8, !tbaa !317
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  tail call void @df_dump_bottom(ptr noundef %0, ptr noundef %1) #15
  %28 = tail call i32 @putc(i32 noundef 10, ptr noundef %1) #14
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rtl_create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !411 !PGOFuncName !628 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !317
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !371
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !420
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !422
  %12 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %11) #14
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %22, label %15, !prof !629

15:                                               ; preds = %3
  %16 = add nsw i32 %8, 3
  %17 = sdiv i32 %16, 4
  %18 = add nsw i32 %17, %8
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %10, i32 noundef %18) #14
  %19 = load ptr, ptr @cfun, align 8, !tbaa !317
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !371
  br label %22

22:                                               ; preds = %15, %3
  %23 = phi ptr [ %21, %15 ], [ %6, %3 ]
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !438
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !438
  %27 = tail call ptr @create_basic_block_structure(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2) #14
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !413
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rtl_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #0 !prof !630 !PGOFuncName !631 {
  %3 = load ptr, ptr %0, align 8, !tbaa !446
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !351
  %6 = and i32 %5, 12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20, !prof !632

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !370
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %20, label %12, !prof !633

12:                                               ; preds = %8
  %13 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 0) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !634

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @redirect_branch_edge(ptr noundef nonnull %0, ptr noundef %1) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !635

18:                                               ; preds = %15, %12
  %19 = phi ptr [ %13, %12 ], [ %16, %15 ]
  tail call void @df_set_bb_dirty(ptr noundef %3) #15
  br label %20

20:                                               ; preds = %18, %15, %8, %2
  %21 = phi ptr [ null, %2 ], [ %0, %8 ], [ null, %15 ], [ %19, %18 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rtl_redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) #0 !prof !636 !PGOFuncName !637 {
  %3 = tail call ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12, !prof !638

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !370
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9, !prof !639

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !446
  tail call void @df_set_bb_dirty(ptr noundef %10) #15
  %11 = tail call fastcc ptr @force_nonfallthru_and_redirect(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %12

12:                                               ; preds = %2, %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @rtl_can_remove_branch_p(ptr noundef readonly %0) #0 !prof !640 !PGOFuncName !641 {
  %2 = load ptr, ptr %0, align 8, !tbaa !446
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !380
  %5 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef 0) #14
  %6 = icmp eq ptr %5, %0
  %7 = zext i1 %6 to i32
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %7) #14
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !370
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !337
  %15 = load ptr, ptr @cfun, align 8, !tbaa !317
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !371
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !373
  %20 = icmp eq ptr %10, %19
  br i1 %20, label %62, label %21, !prof !642

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !351
  %24 = and i32 %23, 12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %62, !prof !643

26:                                               ; preds = %21
  %27 = tail call ptr @find_reg_note(ptr noundef %14, i32 noundef 29, ptr noundef null) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %62, !prof !643

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !421
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !421
  %34 = xor i32 %33, %31
  %35 = and i32 %34, 96
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %62, !prof !643

37:                                               ; preds = %29
  %38 = tail call i32 @onlyjump_p(ptr noundef %14) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %62, label %40, !prof !642

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @tablejump_p(ptr noundef %14, ptr noundef null, ptr noundef null) #15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %62, !prof !643

43:                                               ; preds = %40
  %44 = load i32, ptr %14, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %62, !prof !644

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !294
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 23
  br i1 %53, label %57, label %54, !prof !643

54:                                               ; preds = %48
  %55 = tail call ptr @single_set_2(ptr noundef nonnull %14, ptr noundef nonnull %50) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57, !prof !645

57:                                               ; preds = %48, %54
  %58 = phi ptr [ %55, %54 ], [ %50, %48 ]
  %59 = tail call i32 @side_effects_p(ptr noundef nonnull %58) #15
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i8
  br label %62

62:                                               ; preds = %43, %57, %54, %37, %40, %26, %29, %21, %1
  %63 = phi i8 [ 0, %1 ], [ 0, %21 ], [ 0, %29 ], [ 0, %26 ], [ 0, %40 ], [ 0, %37 ], [ 0, %54 ], [ %61, %57 ], [ 0, %43 ]
  ret i8 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rtl_delete_block(ptr nocapture noundef readonly %0) #0 !prof !606 !PGOFuncName !646 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  %5 = tail call ptr @get_last_bb_insn(ptr noundef %0) #14
  %6 = load ptr, ptr %2, align 8, !tbaa !294
  store ptr null, ptr %6, align 8, !tbaa !343
  tail call void @delete_insn_chain(ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1) #14
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !607

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !384
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.54, i32 noundef %11) #14
  br label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !384
  tail call void @df_bb_delete(i32 noundef %15) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rtl_split_block(ptr noundef %0, ptr noundef %1) #0 !prof !647 !PGOFuncName !648 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %41, !prof !649

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @first_insn_after_basic_block_note(ptr noundef %0) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9, !prof !650

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !294
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !294
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !337
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %41, label %17, !prof !651

17:                                               ; preds = %9
  %18 = load i32, ptr %7, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %41, !prof !652

21:                                               ; preds = %17
  %22 = load i32, ptr %15, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = icmp eq ptr %7, %15
  br i1 %26, label %36, label %27

27:                                               ; preds = %25, %32
  %28 = phi ptr [ %34, %32 ], [ %7, %25 ]
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 7
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !294
  %35 = icmp eq ptr %34, %15
  br i1 %35, label %36, label %27, !llvm.loop !653

36:                                               ; preds = %32, %25
  %37 = phi ptr [ %7, %25 ], [ %15, %32 ]
  %38 = tail call ptr @emit_note_after(i32 noundef 0, ptr noundef nonnull %37) #15
  br label %41

39:                                               ; preds = %6
  %40 = tail call ptr @get_last_insn() #15
  br label %41

41:                                               ; preds = %27, %9, %17, %21, %36, %39, %2
  %42 = phi ptr [ %1, %2 ], [ %40, %39 ], [ %11, %36 ], [ %11, %21 ], [ %11, %17 ], [ %11, %9 ], [ %11, %27 ]
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !294
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !337
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %53, !prof !654

48:                                               ; preds = %41
  %49 = tail call ptr @emit_note_after(i32 noundef 0, ptr noundef %42) #15
  %50 = load ptr, ptr %43, align 8, !tbaa !294
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !337
  br label %53

53:                                               ; preds = %48, %41
  %54 = phi ptr [ %52, %48 ], [ %46, %41 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !294
  %57 = tail call ptr @create_basic_block(ptr noundef %56, ptr noundef %54, ptr noundef nonnull %0) #15
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 13
  %59 = load i32, ptr %58, align 8, !tbaa !421
  %60 = and i32 %59, -97
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %62 = load i32, ptr %61, align 8, !tbaa !421
  %63 = and i32 %62, 96
  %64 = or disjoint i32 %63, %60
  store i32 %64, ptr %58, align 8, !tbaa !421
  %65 = load ptr, ptr %43, align 8, !tbaa !294
  %66 = getelementptr inbounds %struct.rtl_bb_info, ptr %65, i64 0, i32 1
  store ptr %42, ptr %66, align 8, !tbaa !337
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !380
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !380
  store ptr null, ptr %67, align 8, !tbaa !380
  %70 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %69) #14
  store i32 0, ptr %4, align 8, !tbaa.struct !347
  %71 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %70, ptr %71, align 8, !tbaa.struct !349
  %72 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %70, ptr noundef nonnull %3) #14, !range !340
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74, !prof !655

74:                                               ; preds = %53, %74
  %75 = load ptr, ptr %3, align 8, !tbaa !317
  store ptr %57, ptr %75, align 8, !tbaa !446
  call fastcc void @ei_next(ptr noundef nonnull %4) #14
  %76 = load i32, ptr %4, align 8
  %77 = load ptr, ptr %71, align 8
  %78 = call fastcc zeroext i8 @ei_cond(i32 %76, ptr %77, ptr noundef nonnull %3) #14, !range !340
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %74, !prof !656, !llvm.loop !657

80:                                               ; preds = %74, %53
  tail call void @df_set_bb_dirty(ptr noundef %0) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @rtl_move_block_after(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !prof !658 !PGOFuncName !659 {
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @rtl_can_merge_blocks(ptr noundef readonly %0, ptr noundef readonly %1) #0 !prof !427 !PGOFuncName !660 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !421
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !421
  %7 = xor i32 %6, %4
  %8 = and i32 %7, 96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %2
  %11 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #14, !range !340
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #14
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %1) #14, !range !340
  %18 = icmp eq i8 %17, 0
  %19 = icmp eq ptr %0, %1
  %20 = or i1 %19, %18
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #14
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !351
  %25 = and i32 %24, 14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !429
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load ptr, ptr @cfun, align 8, !tbaa !317
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !371
  %35 = load ptr, ptr %34, align 8, !tbaa !428
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %60, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !373
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %60, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !294
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !337
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load i32, ptr @reload_completed, align 4, !tbaa !348
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @simplejump_p(ptr noundef nonnull %45) #15
  br label %56

54:                                               ; preds = %49
  %55 = tail call i32 @onlyjump_p(ptr noundef nonnull %45) #15
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %10, %13, %16, %21, %27, %31, %37, %56, %41, %2
  %61 = phi i8 [ 0, %2 ], [ 0, %37 ], [ 0, %31 ], [ 0, %27 ], [ 0, %21 ], [ 0, %16 ], [ 0, %13 ], [ 0, %10 ], [ 1, %41 ], [ %59, %56 ]
  ret i8 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rtl_merge_blocks(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !661 !PGOFuncName !662 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !294
  %5 = load ptr, ptr %4, align 8, !tbaa !343
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !337
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !294
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !337
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !663

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !384
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !384
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.55, i32 noundef %16, i32 noundef %18) #14
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, ptr %7, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %31, !prof !664

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %27, %24 ], [ %7, %20 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !294
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %24, label %31, !prof !665, !llvm.loop !666

31:                                               ; preds = %24, %20
  %32 = phi ptr [ %7, %20 ], [ %27, %24 ]
  %33 = phi ptr [ %7, %20 ], [ %25, %24 ]
  %34 = load i32, ptr %5, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %45, !prof !667

37:                                               ; preds = %31
  %38 = icmp eq ptr %5, %32
  br i1 %38, label %39, label %40, !prof !668

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ 1, %39 ], [ 0, %37 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !294
  %44 = load i32, ptr %43, align 8
  br label %45

45:                                               ; preds = %40, %31
  %46 = phi i32 [ %44, %40 ], [ %34, %31 ]
  %47 = phi ptr [ %5, %40 ], [ null, %31 ]
  %48 = phi ptr [ %43, %40 ], [ %5, %31 ]
  %49 = phi i32 [ %41, %40 ], [ 0, %31 ]
  %50 = and i32 %46, 65535
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %52, label %61, !prof !663

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 1
  %54 = load i32, ptr %53, align 8, !tbaa !294
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %61, !prof !663

56:                                               ; preds = %52
  %57 = icmp eq ptr %48, %32
  %58 = select i1 %57, i32 1, i32 %49, !prof !669
  %59 = icmp eq ptr %47, null
  %60 = select i1 %59, ptr %48, ptr %47, !prof !670
  br label %61

61:                                               ; preds = %56, %52, %45
  %62 = phi ptr [ %60, %56 ], [ %47, %52 ], [ %47, %45 ]
  %63 = phi ptr [ %48, %56 ], [ %47, %52 ], [ %47, %45 ]
  %64 = phi i32 [ %58, %56 ], [ %49, %52 ], [ %49, %45 ]
  %65 = load i32, ptr %11, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %68, label %89, !prof !671

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !294
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 13
  br i1 %73, label %80, label %96, !prof !672

74:                                               ; preds = %85
  %75 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !294
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 13
  br i1 %79, label %80, label %96, !prof !665

80:                                               ; preds = %68, %74
  %81 = phi ptr [ %76, %74 ], [ %70, %68 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 1
  %83 = load i32, ptr %82, align 8, !tbaa !294
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %8, align 8, !tbaa !294
  %87 = load ptr, ptr %86, align 8, !tbaa !343
  %88 = icmp eq ptr %81, %87
  br i1 %88, label %96, label %74

89:                                               ; preds = %61
  %90 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !294
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %96, !prof !673

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %74, %80, %85, %68, %89, %95
  %97 = phi ptr [ %11, %95 ], [ %11, %89 ], [ %70, %68 ], [ %70, %85 ], [ %70, %80 ], [ %70, %74 ]
  %98 = phi ptr [ %91, %95 ], [ %62, %89 ], [ %11, %68 ], [ %11, %85 ], [ %11, %80 ], [ %11, %74 ]
  %99 = load ptr, ptr %3, align 8, !tbaa !294
  store ptr null, ptr %99, align 8, !tbaa !343
  tail call void @delete_insn_chain(ptr noundef %98, ptr noundef %63, i8 noundef zeroext 1) #14
  %100 = icmp eq i32 %64, 0
  br i1 %100, label %101, label %102, !prof !674

101:                                              ; preds = %96
  tail call fastcc void @update_bb_for_insn_chain(ptr noundef nonnull %97, ptr noundef nonnull %7, ptr noundef %0) #14
  br label %112

102:                                              ; preds = %96
  %103 = icmp eq ptr %32, %7
  br i1 %103, label %112, label %104, !prof !675

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 2
  %106 = load ptr, ptr %105, align 8, !tbaa !294
  %107 = icmp eq ptr %106, %33
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !294
  tail call void @reorder_insns_nobb(ptr noundef %106, ptr noundef %110, ptr noundef nonnull %7) #15
  br label %111

111:                                              ; preds = %108, %104
  tail call fastcc void @update_bb_for_insn_chain(ptr noundef %33, ptr noundef nonnull %7, ptr noundef %0) #14
  br label %112

112:                                              ; preds = %102, %111, %101
  %113 = phi ptr [ %7, %111 ], [ %97, %102 ], [ %7, %101 ]
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !384
  tail call void @df_bb_delete(i32 noundef %115) #15
  %116 = load ptr, ptr %8, align 8, !tbaa !294
  %117 = getelementptr inbounds %struct.rtl_bb_info, ptr %116, i64 0, i32 1
  store ptr %113, ptr %117, align 8, !tbaa !337
  ret void
}

; Function Attrs: optsize
declare void @rtl_predict_edge(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare zeroext i8 @rtl_predicted_by_p(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @rtl_split_edge(ptr noundef %0) #0 !prof !676 !PGOFuncName !677 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !351
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !678

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1362, ptr noundef nonnull @.str.1) #15
  %9 = load i32, ptr %4, align 8, !tbaa !351
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi i32 [ %5, %1 ], [ %9, %8 ]
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39, !prof !679

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !370
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef %16) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !347
  %18 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !349
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %2) #14, !range !340
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %32, label %21, !prof !680

21:                                               ; preds = %14, %27
  %22 = load ptr, ptr %2, align 8, !tbaa !317
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !351
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35, !prof !681

27:                                               ; preds = %21
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %28 = load i32, ptr %3, align 8
  %29 = load ptr, ptr %18, align 8
  %30 = call fastcc zeroext i8 @ei_cond(i32 %28, ptr %29, ptr noundef nonnull %2) #14, !range !340
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %21, !prof !682, !llvm.loop !683

32:                                               ; preds = %27, %14
  %33 = load ptr, ptr %2, align 8, !tbaa !317
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35, !prof !684

35:                                               ; preds = %21, %32
  %36 = phi ptr [ %33, %32 ], [ %22, %21 ]
  %37 = tail call ptr @force_nonfallthru(ptr noundef nonnull %36) #14
  br label %38

38:                                               ; preds = %35, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %38, %10
  %40 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !370
  %42 = load ptr, ptr @cfun, align 8, !tbaa !317
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !371
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !373
  %47 = icmp eq ptr %41, %46
  br i1 %47, label %48, label %52, !prof !685

48:                                               ; preds = %39
  %49 = load i32, ptr %4, align 8, !tbaa !351
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %74, label %56, !prof !679

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !294
  %55 = load ptr, ptr %54, align 8, !tbaa !343
  br label %74

56:                                               ; preds = %48
  %57 = load ptr, ptr %0, align 8, !tbaa !446
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !294
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !337
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !294
  %64 = tail call ptr @create_basic_block(ptr noundef %63, ptr noundef null, ptr noundef %57) #15
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 13
  %66 = load i32, ptr %65, align 8, !tbaa !421
  %67 = and i32 %66, -97
  %68 = load ptr, ptr %0, align 8, !tbaa !446
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 13
  %70 = load i32, ptr %69, align 8, !tbaa !421
  %71 = and i32 %70, 96
  %72 = or disjoint i32 %71, %67
  store i32 %72, ptr %65, align 8, !tbaa !421
  %73 = load ptr, ptr %40, align 8, !tbaa !370
  br label %87

74:                                               ; preds = %52, %48
  %75 = phi ptr [ null, %48 ], [ %55, %52 ]
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !591
  %78 = tail call ptr @create_basic_block(ptr noundef %75, ptr noundef null, ptr noundef %77) #15
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 13
  %80 = load i32, ptr %79, align 8, !tbaa !421
  %81 = and i32 %80, -97
  %82 = load ptr, ptr %40, align 8, !tbaa !370
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 13
  %84 = load i32, ptr %83, align 8, !tbaa !421
  %85 = and i32 %84, 96
  %86 = or disjoint i32 %85, %81
  store i32 %86, ptr %79, align 8, !tbaa !421
  br label %87

87:                                               ; preds = %74, %56
  %88 = phi ptr [ %73, %56 ], [ %82, %74 ]
  %89 = phi ptr [ %64, %56 ], [ %78, %74 ]
  %90 = tail call ptr @make_single_succ_edge(ptr noundef nonnull %89, ptr noundef %88, i32 noundef 1) #15
  %91 = load i32, ptr %4, align 8, !tbaa !351
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98, !prof !679

94:                                               ; preds = %87
  %95 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef nonnull %89) #15
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99, !prof !686

97:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1407, ptr noundef nonnull @.str.1) #15
  br label %99

98:                                               ; preds = %87
  tail call void @redirect_edge_succ(ptr noundef nonnull %0, ptr noundef nonnull %89) #15
  br label %99

99:                                               ; preds = %97, %94, %98
  ret ptr %89
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @rtl_make_forwarder_block(ptr nocapture readnone %0) #6 !prof !687 !PGOFuncName !688 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rtl_tidy_fallthru_edge(ptr nocapture noundef %0) #0 !prof !689 !PGOFuncName !690 {
  %2 = load ptr, ptr %0, align 8, !tbaa !446
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !429
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !337
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !294
  %11 = load ptr, ptr %10, align 8, !tbaa !343
  br label %12

12:                                               ; preds = %17, %1
  %13 = phi ptr [ %8, %1 ], [ %15, %17 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !294
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %22, label %17, !prof !691

17:                                               ; preds = %12
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %52, label %12

22:                                               ; preds = %12
  %23 = load i32, ptr %8, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %26, label %38, !prof !691

26:                                               ; preds = %22
  %27 = tail call i32 @onlyjump_p(ptr noundef nonnull %8) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29, !prof !692

29:                                               ; preds = %26
  %30 = tail call i32 @any_uncondjump_p(ptr noundef nonnull %8) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35, !prof !691

32:                                               ; preds = %29
  %33 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %2) #14, !range !340
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35, !prof !691

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !294
  br label %38

38:                                               ; preds = %35, %32, %26, %22
  %39 = phi ptr [ %37, %35 ], [ %8, %32 ], [ %8, %26 ], [ %8, %22 ]
  %40 = load ptr, ptr %9, align 8, !tbaa !294
  %41 = load ptr, ptr %40, align 8, !tbaa !343
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !294
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %48, label %45, !prof !691

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !294
  tail call void @delete_insn_chain(ptr noundef %47, ptr noundef %43, i8 noundef zeroext 0) #14
  br label %48

48:                                               ; preds = %45, %38
  %49 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !351
  %51 = or i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !351
  br label %52

52:                                               ; preds = %17, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @rtl_block_ends_with_call_p(ptr nocapture noundef readonly %0) #0 !prof !693 !PGOFuncName !694 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %35, label %9, !prof !695

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !294
  %11 = load ptr, ptr %10, align 8, !tbaa !343
  %12 = icmp eq ptr %5, %11
  br i1 %12, label %30, label %17, !prof !365

13:                                               ; preds = %24
  %14 = load ptr, ptr %2, align 8, !tbaa !294
  %15 = load ptr, ptr %14, align 8, !tbaa !343
  %16 = icmp eq ptr %26, %15
  br i1 %16, label %30, label %17, !prof !696, !llvm.loop !697

17:                                               ; preds = %9, %13
  %18 = phi ptr [ %26, %13 ], [ %5, %9 ]
  %19 = tail call zeroext i8 @keep_with_call_p(ptr noundef nonnull %18) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24, !prof !698

21:                                               ; preds = %17
  %22 = load i32, ptr %18, align 8
  %23 = trunc i32 %22 to i16
  switch i16 %23, label %30 [
    i16 13, label %24
    i16 7, label %24
  ], !prof !699

24:                                               ; preds = %21, %21, %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !294
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %13, !prof !700, !llvm.loop !697

30:                                               ; preds = %24, %13, %21, %9
  %31 = phi i32 [ %6, %9 ], [ %27, %24 ], [ %27, %13 ], [ %22, %21 ]
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 10
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %30, %1
  %36 = phi i8 [ %34, %30 ], [ 1, %1 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @rtl_block_ends_with_condjump_p(ptr nocapture noundef readonly %0) #0 !prof !427 !PGOFuncName !701 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  %6 = tail call i32 @any_condjump_p(ptr noundef %5) #15
  %7 = trunc i32 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rtl_flow_call_edges_add(ptr noundef readonly %0) #0 !prof !427 !PGOFuncName !702 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !317
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !371
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !420
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !438
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %147, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %0, null
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !373
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !591
  br i1 %11, label %28, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !384
  %19 = lshr i32 %18, 6
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !590
  %23 = and i32 %18, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %22
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %10, %16
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !294
  %31 = getelementptr inbounds %struct.rtl_bb_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !294
  %33 = load ptr, ptr %30, align 8, !tbaa !343
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %28, %39
  %36 = phi ptr [ %41, %39 ], [ %32, %28 ]
  %37 = tail call zeroext i8 @keep_with_call_p(ptr noundef %36) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !294
  %42 = load ptr, ptr %29, align 8, !tbaa !294
  %43 = load ptr, ptr %42, align 8, !tbaa !343
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %45, label %35, !llvm.loop !703

45:                                               ; preds = %35, %39, %28
  %46 = phi ptr [ %32, %28 ], [ %41, %39 ], [ %36, %35 ]
  %47 = tail call fastcc zeroext i8 @need_fake_edge_p(ptr noundef %46) #14, !range !340
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @cfun, align 8, !tbaa !317
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !371
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !373
  %55 = tail call ptr @find_edge(ptr noundef nonnull %15, ptr noundef %54) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !317
  %59 = tail call ptr @gen_use(ptr noundef %58) #15
  tail call void @insert_insn_on_edge(ptr noundef %59, ptr noundef nonnull %55) #14
  tail call void @commit_edge_insertions() #14
  br label %60

60:                                               ; preds = %45, %57, %49, %16
  %61 = icmp sgt i32 %6, 2
  br i1 %61, label %62, label %147

62:                                               ; preds = %60, %140
  %63 = phi i32 [ %142, %140 ], [ 2, %60 ]
  %64 = phi i32 [ %141, %140 ], [ 0, %60 ]
  %65 = load ptr, ptr @cfun, align 8, !tbaa !317
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !371
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !422
  %70 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %69, i32 noundef %63) #14
  %71 = icmp eq ptr %70, null
  br i1 %71, label %140, label %72

72:                                               ; preds = %62
  br i1 %11, label %83, label %73

73:                                               ; preds = %72
  %74 = lshr i32 %63, 6
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !590
  %78 = and i32 %63, 63
  %79 = zext nneg i32 %78 to i64
  %80 = shl nuw i64 1, %79
  %81 = and i64 %77, %80
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %140, label %83

83:                                               ; preds = %73, %72
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !294
  %86 = getelementptr inbounds %struct.rtl_bb_info, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !337
  br label %88

88:                                               ; preds = %135, %83
  %89 = phi i32 [ %64, %83 ], [ %136, %135 ]
  %90 = phi ptr [ %87, %83 ], [ %92, %135 ]
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !294
  %93 = tail call fastcc zeroext i8 @need_fake_edge_p(ptr noundef %90) #14, !range !340
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %135, label %95

95:                                               ; preds = %88
  %96 = load i32, ptr %90, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 10
  %99 = load ptr, ptr %84, align 8, !tbaa !294
  br i1 %98, label %100, label %116

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.rtl_bb_info, ptr %99, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !337
  %103 = icmp eq ptr %90, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %100, %111
  %105 = phi ptr [ %112, %111 ], [ %90, %100 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 2
  %107 = load ptr, ptr %106, align 8, !tbaa !294
  %108 = tail call zeroext i8 @keep_with_call_p(ptr noundef %107) #15
  %109 = icmp eq i8 %108, 0
  %110 = load ptr, ptr %84, align 8, !tbaa !294
  br i1 %109, label %116, label %111

111:                                              ; preds = %104
  %112 = load ptr, ptr %106, align 8, !tbaa !294
  %113 = getelementptr inbounds %struct.rtl_bb_info, ptr %110, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !337
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %116, label %104, !llvm.loop !704

116:                                              ; preds = %111, %104, %100, %95
  %117 = phi ptr [ %99, %95 ], [ %99, %100 ], [ %110, %104 ], [ %110, %111 ]
  %118 = phi ptr [ %90, %95 ], [ %90, %100 ], [ %112, %111 ], [ %105, %104 ]
  %119 = getelementptr inbounds %struct.rtl_bb_info, ptr %117, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !337
  %121 = icmp eq ptr %118, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = tail call ptr @split_block(ptr noundef nonnull %70, ptr noundef %118) #15
  %124 = icmp ne ptr %123, null
  %125 = zext i1 %124 to i32
  %126 = add nsw i32 %89, %125
  br label %127

127:                                              ; preds = %122, %116
  %128 = phi i32 [ %89, %116 ], [ %126, %122 ]
  %129 = load ptr, ptr @cfun, align 8, !tbaa !317
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !371
  %132 = getelementptr inbounds %struct.control_flow_graph, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !373
  %134 = tail call ptr @make_edge(ptr noundef nonnull %70, ptr noundef %133, i32 noundef 16) #15
  br label %135

135:                                              ; preds = %127, %88
  %136 = phi i32 [ %128, %127 ], [ %89, %88 ]
  %137 = load ptr, ptr %84, align 8, !tbaa !294
  %138 = load ptr, ptr %137, align 8, !tbaa !343
  %139 = icmp eq ptr %90, %138
  br i1 %139, label %140, label %88

140:                                              ; preds = %135, %73, %62
  %141 = phi i32 [ %64, %62 ], [ %64, %73 ], [ %136, %135 ]
  %142 = add nuw nsw i32 %63, 1
  %143 = icmp eq i32 %142, %6
  br i1 %143, label %144, label %62, !llvm.loop !705

144:                                              ; preds = %140
  %145 = icmp eq i32 %141, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %144
  tail call void @verify_flow_info() #15
  br label %147

147:                                              ; preds = %60, %144, %146, %1
  %148 = phi i32 [ 0, %1 ], [ %141, %146 ], [ 0, %144 ], [ 0, %60 ]
  ret i32 %148
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rtl_verify_flow_info_1() #0 !prof !427 !PGOFuncName !706 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !317
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !371
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !373
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !591
  %10 = load ptr, ptr %5, align 8, !tbaa !428
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %522, label %21

12:                                               ; preds = %120, %98
  %13 = phi i32 [ %100, %98 ], [ %121, %120 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !591
  %16 = load ptr, ptr @cfun, align 8, !tbaa !317
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !371
  %19 = load ptr, ptr %18, align 8, !tbaa !428
  %20 = icmp eq ptr %15, %19
  br i1 %20, label %125, label %21, !llvm.loop !707

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %15, %12 ], [ %9, %0 ]
  %23 = phi i32 [ %13, %12 ], [ 0, %0 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !421
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.33, i32 noundef %30) #15
  br label %31

31:                                               ; preds = %28, %21
  %32 = phi i32 [ %23, %21 ], [ 1, %28 ]
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !294
  %35 = load ptr, ptr %34, align 8, !tbaa !294
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  br label %39

39:                                               ; preds = %37, %62
  %40 = phi ptr [ %35, %37 ], [ %65, %62 ]
  %41 = phi i32 [ %32, %37 ], [ %63, %62 ]
  %42 = load ptr, ptr %33, align 8, !tbaa !294
  %43 = getelementptr inbounds %struct.rtl_bb_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !337
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !294
  %47 = icmp eq ptr %40, %46
  br i1 %47, label %69, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !294
  %51 = icmp eq ptr %50, %22
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !294
  %55 = icmp eq ptr %50, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !384
  br label %59

59:                                               ; preds = %52, %56
  %60 = phi i32 [ %58, %56 ], [ 0, %52 ]
  %61 = load i32, ptr %38, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.34, i32 noundef %54, i32 noundef %60, i32 noundef %61) #15
  br label %62

62:                                               ; preds = %48, %59
  %63 = phi i32 [ 1, %59 ], [ %41, %48 ]
  %64 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %65 = load ptr, ptr %64, align 8, !tbaa !294
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %39, !llvm.loop !708

67:                                               ; preds = %62
  %68 = load ptr, ptr %33, align 8, !tbaa !294
  br label %69

69:                                               ; preds = %39, %67, %31
  %70 = phi ptr [ %34, %31 ], [ %68, %67 ], [ %42, %39 ]
  %71 = phi i32 [ %32, %31 ], [ %63, %67 ], [ %41, %39 ]
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %70, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !294
  %74 = icmp eq ptr %73, null
  br i1 %74, label %98, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  br label %77

77:                                               ; preds = %75, %91
  %78 = phi ptr [ %73, %75 ], [ %94, %91 ]
  %79 = phi i32 [ %71, %75 ], [ %92, %91 ]
  %80 = load i32, ptr %78, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 11
  br i1 %82, label %91, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !294
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !294
  %90 = load i32, ptr %76, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.35, i32 noundef %89, i32 noundef %90) #15
  br label %91

91:                                               ; preds = %77, %83, %87
  %92 = phi i32 [ %79, %77 ], [ 1, %87 ], [ %79, %83 ]
  %93 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !294
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %77, !llvm.loop !709

96:                                               ; preds = %91
  %97 = load ptr, ptr %33, align 8, !tbaa !294
  br label %98

98:                                               ; preds = %96, %69
  %99 = phi ptr [ %70, %69 ], [ %97, %96 ]
  %100 = phi i32 [ %71, %69 ], [ %92, %96 ]
  %101 = getelementptr inbounds %struct.rtl_bb_info, ptr %99, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !294
  %103 = icmp eq ptr %102, null
  br i1 %103, label %12, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  br label %106

106:                                              ; preds = %104, %120
  %107 = phi ptr [ %102, %104 ], [ %123, %120 ]
  %108 = phi i32 [ %100, %104 ], [ %121, %120 ]
  %109 = load i32, ptr %107, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 11
  br i1 %111, label %120, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !294
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !294
  %119 = load i32, ptr %105, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.36, i32 noundef %118, i32 noundef %119) #15
  br label %120

120:                                              ; preds = %106, %112, %116
  %121 = phi i32 [ %108, %106 ], [ 1, %116 ], [ %108, %112 ]
  %122 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 2
  %123 = load ptr, ptr %122, align 8, !tbaa !294
  %124 = icmp eq ptr %123, null
  br i1 %124, label %12, label %106, !llvm.loop !710

125:                                              ; preds = %12
  %126 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !373
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !591
  %130 = icmp eq ptr %129, %15
  br i1 %130, label %522, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds i8, ptr %2, i64 8
  br label %133

133:                                              ; preds = %131, %513
  %134 = phi ptr [ %129, %131 ], [ %516, %513 ]
  %135 = phi i32 [ %13, %131 ], [ %514, %513 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !294
  %138 = getelementptr inbounds %struct.rtl_bb_info, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !337
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %143, label %190

143:                                              ; preds = %133
  %144 = tail call ptr @find_reg_note(ptr noundef nonnull %139, i32 noundef 13, ptr noundef null) #15
  %145 = icmp eq ptr %144, null
  br i1 %145, label %190, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !380
  %149 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %148) #14
  %150 = icmp ugt i32 %149, 1
  br i1 %150, label %151, label %190

151:                                              ; preds = %146
  %152 = load ptr, ptr %136, align 8, !tbaa !294
  %153 = getelementptr inbounds %struct.rtl_bb_info, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !337
  %155 = tail call i32 @any_condjump_p(ptr noundef %154) #15
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %190, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !294
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !294
  %162 = load ptr, ptr %147, align 8, !tbaa !380
  %163 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %162, i32 noundef 0) #14
  %164 = getelementptr inbounds %struct.edge_def, ptr %163, i64 0, i32 7
  %165 = load i32, ptr %164, align 8, !tbaa !351
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  %169 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %162, i32 noundef 1) #14
  br label %170

170:                                              ; preds = %157, %168
  %171 = phi ptr [ %169, %168 ], [ %163, %157 ]
  %172 = getelementptr inbounds %struct.edge_def, ptr %171, i64 0, i32 8
  %173 = load i32, ptr %172, align 4, !tbaa !386
  %174 = sext i32 %173 to i64
  %175 = icmp eq i64 %161, %174
  br i1 %175, label %190, label %176

176:                                              ; preds = %170
  %177 = load ptr, ptr @cfun, align 8, !tbaa !317
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !371
  %180 = getelementptr inbounds %struct.control_flow_graph, ptr %179, i64 0, i32 7
  %181 = load i32, ptr %180, align 8, !tbaa !711
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %176
  br i1 %167, label %186, label %184

184:                                              ; preds = %183
  %185 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %162, i32 noundef 1) #14
  br label %186

186:                                              ; preds = %183, %184
  %187 = phi ptr [ %185, %184 ], [ %163, %183 ]
  %188 = getelementptr inbounds %struct.edge_def, ptr %187, i64 0, i32 8
  %189 = load i32, ptr %188, align 4, !tbaa !386
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.37, i64 noundef %161, i32 noundef %189) #15
  br label %190

190:                                              ; preds = %170, %176, %186, %151, %146, %143, %133
  %191 = phi i32 [ 1, %186 ], [ %135, %176 ], [ %135, %170 ], [ %135, %151 ], [ %135, %146 ], [ %135, %143 ], [ %135, %133 ]
  %192 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 1
  %193 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %192) #14
  store i32 0, ptr %2, align 8, !tbaa.struct !347
  store ptr %193, ptr %132, align 8, !tbaa.struct !349
  %194 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %193, ptr noundef nonnull %1) #14, !range !340
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %319, label %196

196:                                              ; preds = %190, %238
  %197 = phi i32 [ %242, %238 ], [ %191, %190 ]
  %198 = phi ptr [ %241, %238 ], [ null, %190 ]
  %199 = phi i32 [ %246, %238 ], [ 0, %190 ]
  %200 = phi i32 [ %257, %238 ], [ 0, %190 ]
  %201 = phi i32 [ %249, %238 ], [ 0, %190 ]
  %202 = phi i32 [ %255, %238 ], [ 0, %190 ]
  %203 = phi i32 [ %240, %238 ], [ 0, %190 ]
  %204 = load ptr, ptr %1, align 8, !tbaa !317
  %205 = getelementptr inbounds %struct.edge_def, ptr %204, i64 0, i32 7
  %206 = load i32, ptr %205, align 8, !tbaa !351
  %207 = and i32 %206, 1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %238, label %209

209:                                              ; preds = %196
  %210 = add nsw i32 %203, 1
  %211 = and i32 %206, 8192
  %212 = icmp eq i32 %211, 0
  %213 = load ptr, ptr %204, align 8, !tbaa !446
  br i1 %212, label %214, label %234

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.basic_block_def, ptr %213, i64 0, i32 13
  %216 = load i32, ptr %215, align 8, !tbaa !421
  %217 = getelementptr inbounds %struct.edge_def, ptr %204, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !370
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 13
  %220 = load i32, ptr %219, align 8, !tbaa !421
  %221 = xor i32 %220, %216
  %222 = and i32 %221, 96
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %238, label %224

224:                                              ; preds = %214
  %225 = load ptr, ptr @cfun, align 8, !tbaa !317
  %226 = getelementptr inbounds %struct.function, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !371
  %228 = load ptr, ptr %227, align 8, !tbaa !428
  %229 = icmp eq ptr %213, %228
  br i1 %229, label %238, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.control_flow_graph, ptr %227, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !373
  %233 = icmp eq ptr %218, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %230, %209
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %213, i64 0, i32 9
  %236 = load i32, ptr %235, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.38, i32 noundef %236) #15
  %237 = load i32, ptr %205, align 8, !tbaa !351
  br label %238

238:                                              ; preds = %214, %224, %230, %234, %196
  %239 = phi i32 [ %237, %234 ], [ %206, %230 ], [ %206, %224 ], [ %206, %214 ], [ %206, %196 ]
  %240 = phi i32 [ %210, %234 ], [ %210, %230 ], [ %210, %224 ], [ %210, %214 ], [ %203, %196 ]
  %241 = phi ptr [ %204, %234 ], [ %204, %230 ], [ %204, %224 ], [ %204, %214 ], [ %198, %196 ]
  %242 = phi i32 [ 1, %234 ], [ %197, %230 ], [ %197, %224 ], [ %197, %214 ], [ %197, %196 ]
  %243 = and i32 %239, -8929
  %244 = icmp eq i32 %243, 0
  %245 = zext i1 %244 to i32
  %246 = add nuw nsw i32 %199, %245
  %247 = lshr i32 %239, 2
  %248 = and i32 %247, 1
  %249 = add i32 %248, %201
  %250 = and i32 %239, 8
  %251 = icmp eq i32 %250, 0
  %252 = lshr i32 %239, 1
  %253 = and i32 %252, 1
  %254 = lshr exact i32 %250, 3
  %255 = add i32 %202, %254
  %256 = select i1 %251, i32 %253, i32 0
  %257 = add i32 %200, %256
  call fastcc void @ei_next(ptr noundef nonnull %2) #14
  %258 = load i32, ptr %2, align 8
  %259 = load ptr, ptr %132, align 8
  %260 = call fastcc zeroext i8 @ei_cond(i32 %258, ptr %259, ptr noundef nonnull %1) #14, !range !340
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %196, !llvm.loop !712

262:                                              ; preds = %238
  %263 = icmp eq i32 %255, 0
  br i1 %263, label %279, label %264

264:                                              ; preds = %262
  %265 = load ptr, ptr %136, align 8, !tbaa !294
  %266 = getelementptr inbounds %struct.rtl_bb_info, ptr %265, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !337
  %268 = tail call ptr @find_reg_note(ptr noundef %267, i32 noundef 25, ptr noundef null) #15
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %272 = load i32, ptr %271, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.39, i32 noundef %272) #15
  br label %273

273:                                              ; preds = %270, %264
  %274 = phi i32 [ %242, %264 ], [ 1, %270 ]
  %275 = icmp sgt i32 %255, 1
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %278 = load i32, ptr %277, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40, i32 noundef %278) #15
  br label %279

279:                                              ; preds = %262, %276, %273
  %280 = phi i32 [ 1, %276 ], [ %274, %273 ], [ %242, %262 ]
  %281 = icmp eq i32 %246, 0
  br i1 %281, label %303, label %282

282:                                              ; preds = %279
  %283 = load ptr, ptr %136, align 8, !tbaa !294
  %284 = getelementptr inbounds %struct.rtl_bb_info, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !337
  %286 = load i32, ptr %285, align 8
  %287 = and i32 %286, 65535
  %288 = icmp eq i32 %287, 9
  br i1 %288, label %289, label %300

289:                                              ; preds = %282
  %290 = icmp eq i32 %246, 1
  br i1 %290, label %303, label %291

291:                                              ; preds = %289
  %292 = tail call i32 @any_uncondjump_p(ptr noundef nonnull %285) #15
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %291
  %295 = load ptr, ptr %136, align 8, !tbaa !294
  %296 = getelementptr inbounds %struct.rtl_bb_info, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !337
  %298 = tail call i32 @any_condjump_p(ptr noundef %297) #15
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %294, %291, %282
  %301 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %302 = load i32, ptr %301, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.41, i32 noundef %302) #15
  br label %303

303:                                              ; preds = %300, %294, %289, %279
  %304 = phi i32 [ %246, %300 ], [ %246, %294 ], [ 1, %289 ], [ 0, %279 ]
  %305 = phi i32 [ 1, %300 ], [ %280, %294 ], [ %280, %289 ], [ %280, %279 ]
  %306 = icmp eq i32 %240, 0
  br i1 %306, label %316, label %307

307:                                              ; preds = %303
  %308 = load ptr, ptr %136, align 8, !tbaa !294
  %309 = getelementptr inbounds %struct.rtl_bb_info, ptr %308, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !337
  %311 = tail call i32 @any_uncondjump_p(ptr noundef %310) #15
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %315 = load i32, ptr %314, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.42, i32 noundef %315) #15
  br label %316

316:                                              ; preds = %313, %307, %303
  %317 = phi i32 [ 1, %313 ], [ %305, %307 ], [ %305, %303 ]
  %318 = icmp eq i32 %304, 1
  br i1 %318, label %354, label %319

319:                                              ; preds = %190, %316
  %320 = phi i32 [ %317, %316 ], [ %191, %190 ]
  %321 = phi i32 [ %249, %316 ], [ 0, %190 ]
  %322 = phi i32 [ %257, %316 ], [ 0, %190 ]
  %323 = phi ptr [ %241, %316 ], [ null, %190 ]
  %324 = load ptr, ptr %136, align 8, !tbaa !294
  %325 = getelementptr inbounds %struct.rtl_bb_info, ptr %324, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !337
  %327 = tail call i32 @any_uncondjump_p(ptr noundef %326) #15
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %319
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %331 = load i32, ptr %330, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.43, i32 noundef %331) #15
  br label %332

332:                                              ; preds = %329, %319
  %333 = phi i32 [ %320, %319 ], [ 1, %329 ]
  %334 = load ptr, ptr %136, align 8, !tbaa !294
  %335 = getelementptr inbounds %struct.rtl_bb_info, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !337
  %337 = tail call i32 @any_condjump_p(ptr noundef %336) #15
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %354, label %339

339:                                              ; preds = %332
  %340 = load ptr, ptr %136, align 8, !tbaa !294
  %341 = getelementptr inbounds %struct.rtl_bb_info, ptr %340, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !337
  %343 = getelementptr inbounds %struct.rtx_def, ptr %342, i64 1, i32 1, i32 0, i32 0, i64 2
  %344 = load ptr, ptr %343, align 8, !tbaa !294
  %345 = getelementptr inbounds %struct.edge_def, ptr %323, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !370
  %347 = getelementptr inbounds %struct.basic_block_def, ptr %346, i64 0, i32 7
  %348 = load ptr, ptr %347, align 8, !tbaa !294
  %349 = load ptr, ptr %348, align 8, !tbaa !343
  %350 = icmp eq ptr %344, %349
  br i1 %350, label %354, label %351

351:                                              ; preds = %339
  %352 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %353 = load i32, ptr %352, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.44, i32 noundef %353) #15
  br label %354

354:                                              ; preds = %316, %351, %339, %332
  %355 = phi i32 [ %321, %351 ], [ %321, %339 ], [ %321, %332 ], [ %249, %316 ]
  %356 = phi i32 [ %322, %351 ], [ %322, %339 ], [ %322, %332 ], [ %257, %316 ]
  %357 = phi i32 [ 1, %351 ], [ %333, %339 ], [ %333, %332 ], [ %317, %316 ]
  %358 = icmp eq i32 %355, 0
  br i1 %358, label %369, label %359

359:                                              ; preds = %354
  %360 = load ptr, ptr %136, align 8, !tbaa !294
  %361 = getelementptr inbounds %struct.rtl_bb_info, ptr %360, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !337
  %363 = load i32, ptr %362, align 8
  %364 = and i32 %363, 65535
  %365 = icmp eq i32 %364, 10
  br i1 %365, label %369, label %366

366:                                              ; preds = %359
  %367 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %368 = load i32, ptr %367, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.45, i32 noundef %368) #15
  br label %369

369:                                              ; preds = %366, %359, %354
  %370 = phi i32 [ %357, %359 ], [ 1, %366 ], [ %357, %354 ]
  %371 = icmp eq i32 %356, 0
  br i1 %371, label %395, label %372

372:                                              ; preds = %369
  %373 = load ptr, ptr %136, align 8, !tbaa !294
  %374 = getelementptr inbounds %struct.rtl_bb_info, ptr %373, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !337
  %376 = load i32, ptr %375, align 8
  %377 = and i32 %376, 65535
  %378 = icmp eq i32 %377, 10
  %379 = icmp eq i32 %355, %356
  %380 = select i1 %378, i1 true, i1 %379
  br i1 %380, label %395, label %381

381:                                              ; preds = %372
  %382 = icmp eq i32 %377, 9
  br i1 %382, label %383, label %392

383:                                              ; preds = %381
  %384 = tail call i32 @any_condjump_p(ptr noundef nonnull %375) #15
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %383
  %387 = load ptr, ptr %136, align 8, !tbaa !294
  %388 = getelementptr inbounds %struct.rtl_bb_info, ptr %387, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !337
  %390 = tail call i32 @any_uncondjump_p(ptr noundef %389) #15
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %386, %383, %381
  %393 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %394 = load i32, ptr %393, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.46, i32 noundef %394) #15
  br label %395

395:                                              ; preds = %392, %386, %372, %369
  %396 = phi i32 [ %370, %372 ], [ 1, %392 ], [ %370, %386 ], [ %370, %369 ]
  %397 = load ptr, ptr %136, align 8, !tbaa !294
  %398 = load ptr, ptr %397, align 8, !tbaa !294
  %399 = getelementptr inbounds %struct.rtl_bb_info, ptr %397, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !337
  %401 = getelementptr inbounds %struct.rtx_def, ptr %400, i64 0, i32 1, i32 0, i32 0, i64 2
  %402 = load ptr, ptr %401, align 8, !tbaa !294
  %403 = icmp eq ptr %398, %402
  br i1 %403, label %438, label %404

404:                                              ; preds = %395
  %405 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  br label %406

406:                                              ; preds = %404, %426
  %407 = phi ptr [ %398, %404 ], [ %429, %426 ]
  %408 = phi i32 [ %396, %404 ], [ %427, %426 ]
  %409 = load i32, ptr %407, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 11
  br i1 %411, label %426, label %412

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1, i32 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !294
  %415 = icmp eq ptr %414, %134
  br i1 %415, label %426, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1
  tail call void @debug_rtx(ptr noundef nonnull %407) #15
  %418 = load ptr, ptr %413, align 8, !tbaa !294
  %419 = icmp eq ptr %418, null
  %420 = load i32, ptr %417, align 8, !tbaa !294
  %421 = load i32, ptr %405, align 8, !tbaa !384
  br i1 %419, label %422, label %423

422:                                              ; preds = %416
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.47, i32 noundef %420, i32 noundef %421) #15
  br label %426

423:                                              ; preds = %416
  %424 = getelementptr inbounds %struct.basic_block_def, ptr %418, i64 0, i32 9
  %425 = load i32, ptr %424, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.48, i32 noundef %420, i32 noundef %421, i32 noundef %425) #15
  br label %426

426:                                              ; preds = %422, %423, %406, %412
  %427 = phi i32 [ %408, %406 ], [ %408, %412 ], [ 1, %423 ], [ 1, %422 ]
  %428 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1, i32 0, i32 0, i64 2
  %429 = load ptr, ptr %428, align 8, !tbaa !294
  %430 = load ptr, ptr %136, align 8, !tbaa !294
  %431 = getelementptr inbounds %struct.rtl_bb_info, ptr %430, i64 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !337
  %433 = getelementptr inbounds %struct.rtx_def, ptr %432, i64 0, i32 1, i32 0, i32 0, i64 2
  %434 = load ptr, ptr %433, align 8, !tbaa !294
  %435 = icmp eq ptr %429, %434
  br i1 %435, label %436, label %406, !llvm.loop !713

436:                                              ; preds = %426
  %437 = load ptr, ptr %430, align 8, !tbaa !343
  br label %438

438:                                              ; preds = %436, %395
  %439 = phi ptr [ %398, %395 ], [ %437, %436 ]
  %440 = phi i32 [ %396, %395 ], [ %427, %436 ]
  %441 = phi ptr [ %400, %395 ], [ %432, %436 ]
  %442 = load i32, ptr %439, align 8
  %443 = and i32 %442, 65535
  %444 = icmp eq i32 %443, 12
  br i1 %444, label %445, label %455

445:                                              ; preds = %438
  %446 = icmp eq ptr %441, %439
  br i1 %446, label %447, label %450

447:                                              ; preds = %445
  %448 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %449 = load i32, ptr %448, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.49, i32 noundef %449) #15
  br label %450

450:                                              ; preds = %447, %445
  %451 = phi i32 [ 1, %447 ], [ %440, %445 ]
  %452 = getelementptr inbounds %struct.rtx_def, ptr %439, i64 0, i32 1, i32 0, i32 0, i64 2
  %453 = load ptr, ptr %452, align 8, !tbaa !294
  %454 = load i32, ptr %453, align 8
  br label %455

455:                                              ; preds = %450, %438
  %456 = phi i32 [ %454, %450 ], [ %442, %438 ]
  %457 = phi i32 [ %451, %450 ], [ %440, %438 ]
  %458 = phi ptr [ %453, %450 ], [ %439, %438 ]
  %459 = and i32 %456, 65535
  %460 = icmp eq i32 %459, 13
  br i1 %460, label %461, label %469

461:                                              ; preds = %455
  %462 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 1
  %463 = load i32, ptr %462, align 8, !tbaa !294
  %464 = icmp eq i32 %463, 10
  br i1 %464, label %465, label %469

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 0, i32 1, i32 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !294
  %468 = icmp eq ptr %467, %134
  br i1 %468, label %472, label %469

469:                                              ; preds = %465, %461, %455
  %470 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %471 = load i32, ptr %470, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.49, i32 noundef %471) #15
  br label %472

472:                                              ; preds = %469, %465
  %473 = phi i32 [ 1, %469 ], [ %457, %465 ]
  %474 = load ptr, ptr %136, align 8, !tbaa !294
  %475 = getelementptr inbounds %struct.rtl_bb_info, ptr %474, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !337
  %477 = icmp eq ptr %476, %458
  br i1 %477, label %513, label %478

478:                                              ; preds = %472
  %479 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 0, i32 1, i32 0, i32 0, i64 2
  %480 = load ptr, ptr %479, align 8, !tbaa !294
  %481 = icmp eq ptr %480, null
  br i1 %481, label %513, label %482

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  br label %484

484:                                              ; preds = %482, %509
  %485 = phi ptr [ %480, %482 ], [ %511, %509 ]
  %486 = phi i32 [ %473, %482 ], [ %499, %509 ]
  %487 = load i32, ptr %485, align 8
  %488 = and i32 %487, 65535
  %489 = icmp eq i32 %488, 13
  br i1 %489, label %490, label %498

490:                                              ; preds = %484
  %491 = getelementptr inbounds %struct.rtx_def, ptr %485, i64 1
  %492 = load i32, ptr %491, align 8, !tbaa !294
  %493 = icmp eq i32 %492, 10
  br i1 %493, label %494, label %498

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.rtx_def, ptr %485, i64 0, i32 1
  %496 = load i32, ptr %495, align 8, !tbaa !294
  %497 = load i32, ptr %483, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.50, i32 noundef %496, i32 noundef %497) #15
  br label %498

498:                                              ; preds = %494, %490, %484
  %499 = phi i32 [ 1, %494 ], [ %486, %490 ], [ %486, %484 ]
  %500 = load ptr, ptr %136, align 8, !tbaa !294
  %501 = getelementptr inbounds %struct.rtl_bb_info, ptr %500, i64 0, i32 1
  %502 = load ptr, ptr %501, align 8, !tbaa !337
  %503 = icmp eq ptr %485, %502
  br i1 %503, label %513, label %504

504:                                              ; preds = %498
  %505 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %485) #15
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %504
  %508 = load i32, ptr %483, align 8, !tbaa !384
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.51, i32 noundef %508) #15
  tail call void @_fatal_insn(ptr noundef nonnull @.str.52, ptr noundef nonnull %485, ptr noundef nonnull @.str, i32 noundef 2013, ptr noundef nonnull @.str.1) #15
  br label %509

509:                                              ; preds = %504, %507
  %510 = getelementptr inbounds %struct.rtx_def, ptr %485, i64 0, i32 1, i32 0, i32 0, i64 2
  %511 = load ptr, ptr %510, align 8, !tbaa !294
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %484, !llvm.loop !714

513:                                              ; preds = %498, %509, %478, %472
  %514 = phi i32 [ %473, %472 ], [ %473, %478 ], [ %499, %509 ], [ %499, %498 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  %515 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 5
  %516 = load ptr, ptr %515, align 8, !tbaa !591
  %517 = load ptr, ptr @cfun, align 8, !tbaa !317
  %518 = getelementptr inbounds %struct.function, ptr %517, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !371
  %520 = load ptr, ptr %519, align 8, !tbaa !428
  %521 = icmp eq ptr %516, %520
  br i1 %521, label %522, label %133, !llvm.loop !715

522:                                              ; preds = %513, %0, %125
  %523 = phi i32 [ %13, %125 ], [ 0, %0 ], [ %514, %513 ]
  ret i32 %523
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @debug_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !716 !PGOFuncName !717 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !718

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !719
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !721 !PGOFuncName !722 {
  %3 = load ptr, ptr %0, align 8, !tbaa !317
  %4 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %3) #14
  tail call fastcc void @VEC_basic_block_gc_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !317
  %6 = tail call fastcc ptr @VEC_basic_block_base_address(ptr noundef %5) #14
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !721 !PGOFuncName !723 {
  %3 = load ptr, ptr %0, align 8, !tbaa !317
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !724

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !719
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_basic_block_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #14
  %10 = load ptr, ptr %0, align 8, !tbaa !317, !nonnull !725, !noundef !725
  store i32 %1, ptr %10, align 8, !tbaa !719
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_basic_block_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !721 !PGOFuncName !726 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !724
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !721 !PGOFuncName !727 {
  %3 = load ptr, ptr %0, align 8, !tbaa !317
  %4 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %3, i32 noundef %1) #14, !range !298
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !728

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %3, i32 noundef %1) #15
  store ptr %7, ptr %0, align 8, !tbaa !317
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !721 !PGOFuncName !729 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !724

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !730
  %7 = load i32, ptr %0, align 8, !tbaa !719
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @redirect_branch_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !731 !PGOFuncName !732 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !370
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = load ptr, ptr %6, align 8, !tbaa !343
  %8 = load ptr, ptr %0, align 8, !tbaa !446
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !294
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !337
  %13 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !351
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %72, !prof !733

17:                                               ; preds = %2
  %18 = load i32, ptr %12, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 9
  %21 = load i32, ptr @currently_expanding_to_rtl, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %72, !prof !734

24:                                               ; preds = %17
  br i1 %22, label %25, label %30, !prof !735

25:                                               ; preds = %24
  %26 = load ptr, ptr %10, align 8, !tbaa !294
  %27 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !294
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %53, label %33, !prof !736

30:                                               ; preds = %24
  %31 = tail call fastcc zeroext i8 @patch_jump_insn(ptr noundef nonnull %12, ptr noundef %7, ptr noundef %1) #14, !range !340
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %72, label %53, !prof !737

33:                                               ; preds = %25, %44
  %34 = phi ptr [ %45, %44 ], [ %10, %25 ]
  %35 = phi ptr [ %47, %44 ], [ %26, %25 ]
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %44, !prof !738

39:                                               ; preds = %33
  %40 = tail call fastcc zeroext i8 @patch_jump_insn(ptr noundef nonnull %35, ptr noundef %7, ptr noundef %1) #14, !range !340
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %72, label %42, !prof !739

42:                                               ; preds = %39
  %43 = load ptr, ptr %9, align 8, !tbaa !294
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi ptr [ %43, %42 ], [ %34, %33 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !294
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !337
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !294
  %52 = icmp eq ptr %47, %51
  br i1 %52, label %53, label %33, !prof !740, !llvm.loop !741

53:                                               ; preds = %44, %25, %30
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %55 = icmp eq ptr %54, null
  %56 = load ptr, ptr %3, align 8, !tbaa !370
  br i1 %55, label %67, label %57, !prof !742

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 8, !tbaa !446
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !384
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !384
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !384
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.53, i32 noundef %60, i32 noundef %62, i32 noundef %64) #14
  %66 = load ptr, ptr %3, align 8, !tbaa !370
  br label %67

67:                                               ; preds = %57, %53
  %68 = phi ptr [ %66, %57 ], [ %56, %53 ]
  %69 = icmp eq ptr %68, %1
  br i1 %69, label %72, label %70, !prof !743

70:                                               ; preds = %67
  %71 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %72

72:                                               ; preds = %39, %67, %70, %30, %17, %2
  %73 = phi ptr [ null, %2 ], [ null, %17 ], [ null, %30 ], [ %71, %70 ], [ %0, %67 ], [ null, %39 ]
  ret ptr %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @patch_jump_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !744 !PGOFuncName !745 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = call zeroext i8 @tablejump_p(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4) #15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %100, label %7, !prof !746

7:                                                ; preds = %3
  %8 = call ptr @block_label(ptr noundef %2) #14
  %9 = load ptr, ptr @cfun, align 8, !tbaa !317
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !371
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !373
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %196, label %15, !prof !747

15:                                               ; preds = %7
  %16 = load ptr, ptr %4, align 8, !tbaa !317
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !294
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 20
  br i1 %21, label %22, label %24, !prof !748

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  br label %26

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %23, %22 ], [ %25, %24 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !294
  %29 = load i32, ptr %28, align 8, !tbaa !314
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %51, !prof !749

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 2
  %34 = zext nneg i32 %29 to i64
  br label %35

35:                                               ; preds = %31, %49
  %36 = phi i64 [ %34, %31 ], [ %37, %49 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !317
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !294
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %49, !prof !750

43:                                               ; preds = %35
  %44 = call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %8) #15
  store ptr %44, ptr %38, align 8, !tbaa !317
  %45 = load i32, ptr %32, align 8, !tbaa !294
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %32, align 8, !tbaa !294
  %47 = load i32, ptr %33, align 8, !tbaa !294
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %33, align 8, !tbaa !294
  br label %49

49:                                               ; preds = %35, %43
  %50 = icmp ugt i64 %36, 1
  br i1 %50, label %35, label %51, !prof !751, !llvm.loop !752

51:                                               ; preds = %49, %26
  %52 = load i32, ptr %0, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -7
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %56, label %196, !prof !753

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !294
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 23
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store ptr %58, ptr %4, align 8, !tbaa !317
  br label %66

63:                                               ; preds = %56
  %64 = call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %58) #15
  store ptr %64, ptr %4, align 8, !tbaa !317
  %65 = icmp eq ptr %64, null
  br i1 %65, label %196, label %66, !prof !754

66:                                               ; preds = %62, %63
  %67 = phi ptr [ %58, %62 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !294
  %70 = load ptr, ptr @global_rtl, align 16, !tbaa !317
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %72, label %196, !prof !748

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !294
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %196, !prof !747

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !294
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 44
  br i1 %83, label %84, label %196

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !294
  %87 = icmp eq ptr %86, %1
  br i1 %87, label %88, label %196

88:                                               ; preds = %84
  %89 = call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %8) #15
  %90 = load ptr, ptr %4, align 8, !tbaa !317
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !294
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %89, ptr %93, align 8, !tbaa !294
  %94 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !294
  %96 = add nsw i32 %95, -1
  store i32 %96, ptr %94, align 8, !tbaa !294
  %97 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !294
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %97, align 8, !tbaa !294
  br label %196

100:                                              ; preds = %3
  %101 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !294
  %103 = call ptr @extract_asm_operands(ptr noundef %102) #15
  store ptr %103, ptr %4, align 8, !tbaa !317
  %104 = icmp eq ptr %103, null
  br i1 %104, label %169, label %105, !prof !755

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !294
  %108 = load i32, ptr %107, align 8, !tbaa !314
  %109 = load ptr, ptr @cfun, align 8, !tbaa !317
  %110 = getelementptr inbounds %struct.function, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !371
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !373
  %114 = icmp eq ptr %113, %2
  br i1 %114, label %196, label %115

115:                                              ; preds = %105
  %116 = call ptr @block_label(ptr noundef %2) #14
  %117 = icmp sgt i32 %108, 0
  br i1 %117, label %118, label %150

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %120 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 2
  %121 = zext nneg i32 %108 to i64
  br label %122

122:                                              ; preds = %118, %147
  %123 = phi i64 [ 0, %118 ], [ %148, %147 ]
  %124 = load ptr, ptr %4, align 8, !tbaa !317
  %125 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !294
  %127 = getelementptr inbounds %struct.rtvec_def, ptr %126, i64 0, i32 1, i64 %123
  %128 = load ptr, ptr %127, align 8, !tbaa !317
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 44
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 971, ptr noundef nonnull @.str.1) #15
  br label %133

133:                                              ; preds = %122, %132
  %134 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !294
  %136 = icmp eq ptr %135, %1
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %116) #15
  %139 = load ptr, ptr %4, align 8, !tbaa !317
  %140 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !294
  %142 = getelementptr inbounds %struct.rtvec_def, ptr %141, i64 0, i32 1, i64 %123
  store ptr %138, ptr %142, align 8, !tbaa !317
  %143 = load i32, ptr %119, align 8, !tbaa !294
  %144 = add nsw i32 %143, -1
  store i32 %144, ptr %119, align 8, !tbaa !294
  %145 = load i32, ptr %120, align 8, !tbaa !294
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %120, align 8, !tbaa !294
  br label %147

147:                                              ; preds = %137, %133
  %148 = add nuw nsw i64 %123, 1
  %149 = icmp eq i64 %148, %121
  br i1 %149, label %150, label %122, !llvm.loop !756

150:                                              ; preds = %147, %115
  %151 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !294
  %153 = icmp eq ptr %152, %1
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  store ptr %116, ptr %151, align 8, !tbaa !294
  %155 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 9, ptr noundef %116) #15
  %156 = icmp eq ptr %155, null
  br i1 %156, label %196, label %157

157:                                              ; preds = %154
  call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %155) #15
  br label %196

158:                                              ; preds = %150
  %159 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 9, ptr noundef %1) #15
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %159) #15
  br label %162

162:                                              ; preds = %161, %158
  %163 = load ptr, ptr %151, align 8, !tbaa !294
  %164 = icmp eq ptr %163, %116
  br i1 %164, label %196, label %165

165:                                              ; preds = %162
  %166 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 9, ptr noundef %116) #15
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %196

168:                                              ; preds = %165
  call void @add_reg_note(ptr noundef nonnull %0, i32 noundef 9, ptr noundef %116) #15
  br label %196

169:                                              ; preds = %100
  %170 = call i32 @computed_jump_p(ptr noundef nonnull %0) #15
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %196, !prof !755

172:                                              ; preds = %169
  %173 = call i32 @returnjump_p(ptr noundef nonnull %0) #15
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %196, !prof !755

175:                                              ; preds = %172
  %176 = load i32, ptr @currently_expanding_to_rtl, align 4, !tbaa !348
  %177 = icmp eq i32 %176, 0
  %178 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %179 = load ptr, ptr %178, align 8, !tbaa !294
  %180 = icmp eq ptr %179, %1
  br i1 %177, label %182, label %181, !prof !757

181:                                              ; preds = %175
  br i1 %180, label %184, label %196, !prof !758

182:                                              ; preds = %175
  br i1 %180, label %184, label %183, !prof !759

183:                                              ; preds = %182
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1011, ptr noundef nonnull @.str.1) #15
  br label %184

184:                                              ; preds = %181, %182, %183
  %185 = call ptr @block_label(ptr noundef %2) #14
  %186 = call i32 @redirect_jump(ptr noundef nonnull %0, ptr noundef %185, i32 noundef 0) #15
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %196, !prof !760

188:                                              ; preds = %184
  %189 = load ptr, ptr @cfun, align 8, !tbaa !317
  %190 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !371
  %192 = getelementptr inbounds %struct.control_flow_graph, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !373
  %194 = icmp eq ptr %193, %2
  br i1 %194, label %196, label %195

195:                                              ; preds = %188
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1018, ptr noundef nonnull @.str.1) #15
  br label %196

196:                                              ; preds = %51, %181, %184, %63, %66, %72, %78, %84, %88, %157, %154, %168, %165, %162, %105, %7, %195, %188, %169, %172
  %197 = phi i8 [ 0, %172 ], [ 0, %169 ], [ 0, %188 ], [ 0, %195 ], [ 0, %7 ], [ 0, %105 ], [ 1, %162 ], [ 1, %165 ], [ 1, %168 ], [ 1, %154 ], [ 1, %157 ], [ 1, %88 ], [ 1, %84 ], [ 1, %78 ], [ 1, %72 ], [ 1, %66 ], [ 1, %63 ], [ 1, %184 ], [ 1, %181 ], [ 1, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i8 %197
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_bb_delete(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_insn_after_basic_block_note(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !687 !PGOFuncName !761 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6, !prof !650

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %14, !prof !762

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  %13 = load i32, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %13, %10 ], [ %7, %6 ]
  %16 = phi ptr [ %12, %10 ], [ %4, %6 ]
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %17, 13
  br i1 %18, label %19, label %23, !prof !763

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %21 = load i32, ptr %20, align 8, !tbaa !294
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %24, label %23, !prof !763

23:                                               ; preds = %19, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 513, ptr noundef nonnull @.str.1) #15
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !294
  br label %27

27:                                               ; preds = %1, %24
  %28 = phi ptr [ %26, %24 ], [ null, %1 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !764 !PGOFuncName !765 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !370
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @keep_with_call_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @need_fake_edge_p(ptr noundef %0) unnamed_addr #0 !prof !427 !PGOFuncName !766 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %43

6:                                                ; preds = %1
  %7 = and i32 %2, 16842751
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, -2080374784
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %12, %9, %6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !294
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 134283263
  %21 = icmp eq i32 %20, 134217745
  br i1 %21, label %43, label %22

22:                                               ; preds = %16
  %23 = and i32 %19, 65535
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = tail call i32 @asm_noperands(ptr noundef nonnull %0) #15
  %27 = icmp eq i32 %26, -1
  %28 = load ptr, ptr %17, align 8, !tbaa !294
  br i1 %27, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !294
  %32 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !317
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 134217728
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29, %25, %22
  %38 = phi ptr [ %28, %29 ], [ %28, %25 ], [ %18, %22 ]
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 16
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %1, %29, %37, %16, %12
  %44 = phi i8 [ 0, %1 ], [ 1, %12 ], [ 1, %29 ], [ %42, %37 ], [ 1, %16 ]
  ret i8 %44
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_use(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !427 !PGOFuncName !767 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !317
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @verify_flow_info() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @cfg_layout_create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !768 !PGOFuncName !769 {
  %4 = tail call ptr @rtl_create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @cfg_layout_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #0 !prof !770 !PGOFuncName !771 {
  %3 = load ptr, ptr %0, align 8, !tbaa !446
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !351
  %6 = and i32 %5, 12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %145, !prof !772

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !370
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %145, label %12, !prof !773

12:                                               ; preds = %8
  %13 = load ptr, ptr @cfun, align 8, !tbaa !317
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !371
  %16 = load ptr, ptr %15, align 8, !tbaa !428
  %17 = icmp eq ptr %3, %16
  br i1 %17, label %30, label %18, !prof !773

18:                                               ; preds = %12
  %19 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 1) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !774

21:                                               ; preds = %18
  tail call void @df_set_bb_dirty(ptr noundef %3) #15
  br label %145

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !446
  %24 = load ptr, ptr @cfun, align 8, !tbaa !317
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !371
  %27 = load ptr, ptr %26, align 8, !tbaa !428
  %28 = load i32, ptr %4, align 8, !tbaa !351
  %29 = icmp eq ptr %23, %27
  br i1 %29, label %30, label %47, !prof !775

30:                                               ; preds = %12, %22
  %31 = phi ptr [ %27, %22 ], [ %3, %12 ]
  %32 = phi i32 [ %28, %22 ], [ %5, %12 ]
  %33 = and i32 %32, 15
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !384
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !384
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %36, ptr noundef nonnull @.str.57, i32 noundef %40, i32 noundef %42) #14
  %44 = load ptr, ptr %0, align 8, !tbaa !446
  br label %45

45:                                               ; preds = %38, %35
  %46 = phi ptr [ %44, %38 ], [ %31, %35 ]
  tail call void @df_set_bb_dirty(ptr noundef %46) #15
  tail call void @redirect_edge_succ(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %145

47:                                               ; preds = %30, %22
  %48 = phi i32 [ %32, %30 ], [ %28, %22 ]
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %133, label %51, !prof !776

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !294
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !337
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %89, !prof !777

59:                                               ; preds = %51
  %60 = load ptr, ptr %9, align 8, !tbaa !370
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !294
  %63 = load ptr, ptr %62, align 8, !tbaa !343
  %64 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %63, ptr noundef nonnull %55) #15
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %89, label %66, !prof !778

66:                                               ; preds = %59
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %0, align 8, !tbaa !446
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !384
  %73 = load ptr, ptr %9, align 8, !tbaa !370
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !384
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !384
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %67, ptr noundef nonnull @.str.58, i32 noundef %72, i32 noundef %75, i32 noundef %77) #14
  br label %79

79:                                               ; preds = %69, %66
  %80 = load i32, ptr %4, align 8, !tbaa !351
  %81 = and i32 %80, -2
  store i32 %81, ptr %4, align 8, !tbaa !351
  %82 = tail call fastcc ptr @redirect_branch_edge(ptr noundef nonnull %0, ptr noundef %1) #14
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2519, ptr noundef nonnull @.str.1) #15
  br label %85

85:                                               ; preds = %79, %84
  %86 = load i32, ptr %4, align 8, !tbaa !351
  %87 = or i32 %86, 1
  store i32 %87, ptr %4, align 8, !tbaa !351
  %88 = load ptr, ptr %0, align 8, !tbaa !446
  tail call void @df_set_bb_dirty(ptr noundef %88) #15
  br label %145

89:                                               ; preds = %59, %51
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !380
  %92 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %91) #14
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %119, !prof !777

94:                                               ; preds = %89
  %95 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %91, i32 noundef 0) #14
  %96 = icmp eq ptr %95, %0
  %97 = zext i1 %96 to i32
  %98 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %91, i32 noundef %97) #14
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !370
  %101 = icmp eq ptr %100, %1
  br i1 %101, label %102, label %119, !prof !779

102:                                              ; preds = %94
  %103 = load ptr, ptr %52, align 8, !tbaa !294
  %104 = getelementptr inbounds %struct.rtl_bb_info, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !337
  %106 = tail call i32 @any_condjump_p(ptr noundef %105) #15
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %52, align 8, !tbaa !294
  %110 = getelementptr inbounds %struct.rtl_bb_info, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !337
  %112 = tail call i32 @onlyjump_p(ptr noundef %111) #15
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %52, align 8, !tbaa !294
  %116 = getelementptr inbounds %struct.rtl_bb_info, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !337
  %118 = tail call ptr @delete_insn(ptr noundef %117) #14
  br label %119

119:                                              ; preds = %94, %102, %108, %114, %89
  %120 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #15
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %122 = icmp eq ptr %121, null
  br i1 %122, label %135, label %123, !prof !780

123:                                              ; preds = %119
  %124 = load ptr, ptr %0, align 8, !tbaa !446
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 8, !tbaa !384
  %127 = load ptr, ptr %9, align 8, !tbaa !370
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 9
  %129 = load i32, ptr %128, align 8, !tbaa !384
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %131 = load i32, ptr %130, align 8, !tbaa !384
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %121, ptr noundef nonnull @.str.59, i32 noundef %126, i32 noundef %129, i32 noundef %131) #14
  br label %135

133:                                              ; preds = %47
  %134 = tail call fastcc ptr @redirect_branch_edge(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %135

135:                                              ; preds = %119, %123, %133
  %136 = phi ptr [ %120, %123 ], [ %120, %119 ], [ %134, %133 ]
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %138 = load ptr, ptr %137, align 8, !tbaa !294
  %139 = getelementptr inbounds %struct.rtl_bb_info, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !337
  %141 = tail call i32 @simplejump_p(ptr noundef %140) #15
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143, !prof !781

143:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2545, ptr noundef nonnull @.str.1) #15
  br label %144

144:                                              ; preds = %135, %143
  tail call void @df_set_bb_dirty(ptr noundef nonnull %3) #15
  br label %145

145:                                              ; preds = %8, %2, %144, %85, %45, %21
  %146 = phi ptr [ %19, %21 ], [ %0, %85 ], [ %136, %144 ], [ %0, %45 ], [ null, %2 ], [ %0, %8 ]
  ret ptr %146
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @cfg_layout_redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) #0 !prof !782 !PGOFuncName !783 {
  %3 = tail call ptr @cfg_layout_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !784

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2557, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %2, %5
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cfg_layout_delete_block(ptr nocapture noundef readonly %0) #0 !prof !785 !PGOFuncName !786 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !787
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !788

10:                                               ; preds = %1
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12, !prof !789

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %8, ptr %13, align 8, !tbaa !294
  br label %15

14:                                               ; preds = %10
  tail call void @set_first_insn(ptr noundef nonnull %8) #15
  br label %15

15:                                               ; preds = %14, %12
  %16 = load ptr, ptr %2, align 8, !tbaa !294
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !787
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %6, ptr %19, align 8, !tbaa !294
  %20 = load ptr, ptr %2, align 8, !tbaa !294
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !787
  br label %23

23:                                               ; preds = %23, %15
  %24 = phi ptr [ %22, %15 ], [ %26, %23 ]
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !294
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !prof !790, !llvm.loop !791

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %29, align 8, !tbaa !294
  store ptr %24, ptr %5, align 8, !tbaa !294
  %30 = load ptr, ptr %2, align 8, !tbaa !294
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi ptr [ %30, %28 ], [ %3, %1 ]
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !337
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !294
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !506
  %39 = icmp eq ptr %38, null
  br i1 %39, label %94, label %40, !prof !792

40:                                               ; preds = %31, %66
  %41 = phi ptr [ %68, %66 ], [ %38, %31 ]
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 11
  br i1 %44, label %45, label %62, !prof !793

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !294
  %48 = icmp eq ptr %47, null
  %49 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !294
  br i1 %48, label %53, label %51, !prof !793

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %56

53:                                               ; preds = %45
  %54 = load ptr, ptr %2, align 8, !tbaa !294
  %55 = getelementptr inbounds %struct.rtl_bb_info, ptr %54, i64 0, i32 3
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi ptr [ %55, %53 ], [ %52, %51 ]
  store ptr %50, ptr %57, align 8, !tbaa !294
  %58 = icmp eq ptr %50, null
  br i1 %58, label %62, label %59, !prof !793

59:                                               ; preds = %56
  %60 = load ptr, ptr %46, align 8, !tbaa !294
  %61 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %60, ptr %61, align 8, !tbaa !294
  br label %62

62:                                               ; preds = %56, %59, %40
  %63 = load i32, ptr %41, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 12
  br i1 %65, label %70, label %66, !prof !794

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %68 = load ptr, ptr %67, align 8, !tbaa !294
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %40, !prof !795, !llvm.loop !796

70:                                               ; preds = %62, %66
  %71 = load ptr, ptr %2, align 8, !tbaa !294
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !506
  %74 = icmp eq ptr %73, null
  br i1 %74, label %94, label %75, !prof !793

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !337
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %73, ptr %78, align 8, !tbaa !294
  %79 = load ptr, ptr %2, align 8, !tbaa !294
  %80 = getelementptr inbounds %struct.rtl_bb_info, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !506
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %77, ptr %82, align 8, !tbaa !294
  br label %83

83:                                               ; preds = %83, %75
  %84 = phi ptr [ %77, %75 ], [ %86, %83 ]
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !294
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %83, !llvm.loop !797

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %36, ptr %89, align 8, !tbaa !294
  %90 = icmp eq ptr %36, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %84, ptr %92, align 8, !tbaa !294
  br label %94

93:                                               ; preds = %88
  tail call void @set_last_insn(ptr noundef nonnull %84) #15
  br label %94

94:                                               ; preds = %70, %93, %91, %31
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !429
  %97 = load ptr, ptr @cfun, align 8, !tbaa !317
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !371
  %100 = getelementptr inbounds %struct.control_flow_graph, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !373
  %102 = icmp eq ptr %96, %101
  br i1 %102, label %107, label %103, !prof !798

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !294
  %106 = getelementptr inbounds %struct.rtl_bb_info, ptr %105, i64 0, i32 2
  br label %107

107:                                              ; preds = %94, %103
  %108 = phi ptr [ %106, %103 ], [ @cfg_layout_function_footer, %94 ]
  tail call void @rtl_delete_block(ptr noundef nonnull %0) #14
  %109 = icmp eq ptr %6, null
  br i1 %109, label %113, label %110, !prof !799

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %112 = load ptr, ptr %111, align 8, !tbaa !294
  br label %115

113:                                              ; preds = %107
  %114 = tail call ptr @get_insns() #15
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi ptr [ %112, %110 ], [ %114, %113 ]
  %117 = icmp eq ptr %36, null
  br i1 %117, label %121, label %118, !prof !798

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !294
  br label %123

121:                                              ; preds = %115
  %122 = tail call ptr @get_last_insn() #15
  br label %123

123:                                              ; preds = %121, %118
  %124 = phi ptr [ %120, %118 ], [ %122, %121 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %144, label %126, !prof !799

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 2
  %128 = load ptr, ptr %127, align 8, !tbaa !294
  %129 = icmp eq ptr %128, %116
  br i1 %129, label %144, label %130, !prof !800

130:                                              ; preds = %126
  %131 = tail call ptr @unlink_insn_chain(ptr noundef %116, ptr noundef nonnull %124) #15
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi ptr [ %131, %130 ], [ %135, %132 ]
  %134 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 2
  %135 = load ptr, ptr %134, align 8, !tbaa !294
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %132, !prof !801, !llvm.loop !802

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 2
  %139 = load ptr, ptr %108, align 8, !tbaa !317
  store ptr %139, ptr %138, align 8, !tbaa !294
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141, !prof !803

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %133, ptr %142, align 8, !tbaa !294
  br label %143

143:                                              ; preds = %141, %137
  store ptr %131, ptr %108, align 8, !tbaa !317
  br label %144

144:                                              ; preds = %143, %126, %123
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @cfg_layout_split_block(ptr noundef %0, ptr noundef %1) #0 !prof !687 !PGOFuncName !804 {
  %3 = tail call ptr @rtl_split_block(ptr noundef %0, ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !506
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !294
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !506
  %11 = load ptr, ptr %4, align 8, !tbaa !294
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !506
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @cfg_layout_can_merge_blocks_p(ptr noundef readonly %0, ptr noundef readonly %1) #0 !prof !764 !PGOFuncName !805 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !421
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !421
  %7 = xor i32 %6, %4
  %8 = and i32 %7, 96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %59, !prof !806

10:                                               ; preds = %2
  %11 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #14, !range !340
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %59, label %13, !prof !807

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #14
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %59, !prof !806

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %1) #14, !range !340
  %18 = icmp eq i8 %17, 0
  %19 = icmp eq ptr %0, %1
  %20 = or i1 %19, %18
  br i1 %20, label %59, label %21, !prof !808

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #14
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !351
  %25 = and i32 %24, 14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %59, !prof !809

27:                                               ; preds = %21
  %28 = load ptr, ptr @cfun, align 8, !tbaa !317
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !371
  %31 = load ptr, ptr %30, align 8, !tbaa !428
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %59, label %33, !prof !810

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !373
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %59, label %37, !prof !810

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !294
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !337
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %59, !prof !811

45:                                               ; preds = %37
  %46 = load i32, ptr @optimize, align 4, !tbaa !348
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr @reload_completed, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %53, !prof !812

51:                                               ; preds = %45
  %52 = tail call i32 @simplejump_p(ptr noundef nonnull %41) #15
  br label %55

53:                                               ; preds = %45
  %54 = tail call i32 @onlyjump_p(ptr noundef nonnull %41) #15
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %10, %13, %16, %21, %27, %33, %55, %37, %2
  %60 = phi i8 [ 0, %2 ], [ 0, %33 ], [ 0, %27 ], [ 0, %21 ], [ 0, %16 ], [ 0, %13 ], [ 0, %10 ], [ 1, %37 ], [ %58, %55 ]
  ret i8 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cfg_layout_merge_blocks(ptr noundef %0, ptr noundef %1) #0 !prof !813 !PGOFuncName !814 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !809

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !384
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !384
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.55, i32 noundef %7, i32 noundef %9) #14
  br label %11

11:                                               ; preds = %5, %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !294
  %14 = load ptr, ptr %13, align 8, !tbaa !343
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %20, !prof !815

18:                                               ; preds = %11
  %19 = tail call ptr @delete_insn(ptr noundef nonnull %14) #14
  br label %20

20:                                               ; preds = %18, %11
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !294
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !337
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %37, !prof !811

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !380
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %30, i32 noundef 0) #14
  %32 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef %31, ptr noundef nonnull %1, i8 noundef zeroext 1) #14
  %33 = load ptr, ptr %21, align 8, !tbaa !294
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !337
  %36 = load i32, ptr %35, align 8
  br label %37

37:                                               ; preds = %28, %20
  %38 = phi i32 [ %36, %28 ], [ %25, %20 ]
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %42, !prof !810

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2700, ptr noundef nonnull @.str.1) #15
  br label %42

42:                                               ; preds = %37, %41
  %43 = load i32, ptr @optimize, align 4, !tbaa !348
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %114, !prof !810

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !380
  %48 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %47, i32 noundef 0) #14
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !550
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %114, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %21, align 8, !tbaa !294
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %53, align 8, !tbaa !343
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !294
  %58 = load ptr, ptr %54, align 8, !tbaa !294
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %77, label %60

60:                                               ; preds = %52, %70
  %61 = phi ptr [ %72, %70 ], [ %58, %52 ]
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -7
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !294
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60, %66
  %71 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !294
  %73 = icmp eq ptr %72, %57
  br i1 %73, label %77, label %60, !llvm.loop !816

74:                                               ; preds = %66
  %75 = tail call zeroext i8 @locator_eq(i32 noundef %68, i32 noundef %50) #15
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %70, %52, %74
  %78 = load ptr, ptr %12, align 8, !tbaa !294
  %79 = getelementptr inbounds %struct.rtl_bb_info, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !337
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !294
  %83 = load ptr, ptr %78, align 8, !tbaa !294
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %102, label %85

85:                                               ; preds = %77, %91
  %86 = phi ptr [ %93, %91 ], [ %83, %77 ]
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = add nsw i32 %88, -7
  %90 = icmp ult i32 %89, 4
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 2
  %93 = load ptr, ptr %92, align 8, !tbaa !294
  %94 = icmp eq ptr %93, %82
  br i1 %94, label %102, label %85, !llvm.loop !817

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !294
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = tail call zeroext i8 @locator_eq(i32 noundef %97, i32 noundef %50) #15
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %91, %77, %95, %99
  %103 = tail call ptr @gen_nop() #15
  %104 = load ptr, ptr %21, align 8, !tbaa !294
  %105 = getelementptr inbounds %struct.rtl_bb_info, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !337
  %107 = tail call ptr @emit_insn_after_noloc(ptr noundef %103, ptr noundef %106, ptr noundef %0) #15
  %108 = load ptr, ptr %21, align 8, !tbaa !294
  %109 = getelementptr inbounds %struct.rtl_bb_info, ptr %108, i64 0, i32 1
  store ptr %107, ptr %109, align 8, !tbaa !337
  %110 = load ptr, ptr %21, align 8, !tbaa !294
  %111 = getelementptr inbounds %struct.rtl_bb_info, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !337
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 2
  store i32 %50, ptr %113, align 8, !tbaa !294
  br label %114

114:                                              ; preds = %99, %74, %102, %45, %42
  %115 = load ptr, ptr %12, align 8, !tbaa !294
  %116 = getelementptr inbounds %struct.rtl_bb_info, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !787
  %118 = icmp eq ptr %117, null
  %119 = load ptr, ptr %21, align 8, !tbaa !294
  br i1 %118, label %130, label %120, !prof !818

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.rtl_bb_info, ptr %119, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !337
  %123 = tail call ptr @emit_insn_after_noloc(ptr noundef nonnull %117, ptr noundef %122, ptr noundef nonnull %0) #15
  %124 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 2
  %125 = load ptr, ptr %124, align 8, !tbaa !294
  tail call void @delete_insn_chain(ptr noundef %125, ptr noundef %123, i8 noundef zeroext 0) #14
  %126 = load ptr, ptr %12, align 8, !tbaa !294
  %127 = getelementptr inbounds %struct.rtl_bb_info, ptr %126, i64 0, i32 2
  store ptr null, ptr %127, align 8, !tbaa !787
  %128 = load ptr, ptr %21, align 8, !tbaa !294
  %129 = load ptr, ptr %12, align 8, !tbaa !294
  br label %130

130:                                              ; preds = %120, %114
  %131 = phi ptr [ %129, %120 ], [ %115, %114 ]
  %132 = phi ptr [ %128, %120 ], [ %119, %114 ]
  %133 = getelementptr inbounds %struct.rtl_bb_info, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !337
  %135 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 2
  %136 = load ptr, ptr %135, align 8, !tbaa !294
  %137 = load ptr, ptr %131, align 8, !tbaa !343
  %138 = icmp eq ptr %136, %137
  %139 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !337
  br i1 %138, label %175, label %141, !prof !819

141:                                              ; preds = %130
  %142 = tail call ptr @unlink_insn_chain(ptr noundef %137, ptr noundef %140) #15
  %143 = load ptr, ptr %21, align 8, !tbaa !294
  %144 = getelementptr inbounds %struct.rtl_bb_info, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !337
  %146 = tail call ptr @emit_insn_after_noloc(ptr noundef %142, ptr noundef %145, ptr noundef nonnull %0) #15
  %147 = load i32, ptr %142, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 13
  br i1 %149, label %150, label %154, !prof !820

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 1
  %152 = load i32, ptr %151, align 8, !tbaa !294
  %153 = icmp eq i32 %152, 10
  br i1 %153, label %158, label %154, !prof !821

154:                                              ; preds = %150, %141
  %155 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 2
  %156 = load ptr, ptr %155, align 8, !tbaa !294
  %157 = load i32, ptr %156, align 8
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i32 [ %147, %150 ], [ %157, %154 ]
  %160 = phi ptr [ %142, %150 ], [ %156, %154 ]
  %161 = and i32 %159, 65535
  %162 = icmp eq i32 %161, 13
  br i1 %162, label %163, label %167, !prof !820

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 1
  %165 = load i32, ptr %164, align 8, !tbaa !294
  %166 = icmp eq i32 %165, 10
  br i1 %166, label %168, label %167, !prof !820

167:                                              ; preds = %163, %158
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2749, ptr noundef nonnull @.str.1) #15
  br label %168

168:                                              ; preds = %163, %167
  %169 = load ptr, ptr %12, align 8, !tbaa !294
  store ptr null, ptr %169, align 8, !tbaa !343
  %170 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 0, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !294
  %172 = load ptr, ptr %12, align 8, !tbaa !294
  %173 = getelementptr inbounds %struct.rtl_bb_info, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !337
  tail call fastcc void @update_bb_for_insn_chain(ptr noundef %171, ptr noundef %174, ptr noundef nonnull %0) #14
  br label %207

175:                                              ; preds = %130
  tail call fastcc void @update_bb_for_insn_chain(ptr noundef %136, ptr noundef %140, ptr noundef nonnull %0) #14
  %176 = load ptr, ptr %12, align 8, !tbaa !294
  %177 = load ptr, ptr %176, align 8, !tbaa !343
  %178 = load i32, ptr %177, align 8
  %179 = and i32 %178, 65535
  %180 = icmp eq i32 %179, 13
  br i1 %180, label %181, label %185, !prof !822

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 1
  %183 = load i32, ptr %182, align 8, !tbaa !294
  %184 = icmp eq i32 %183, 10
  br i1 %184, label %189, label %185, !prof !823

185:                                              ; preds = %181, %175
  %186 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 0, i32 1, i32 0, i32 0, i64 2
  %187 = load ptr, ptr %186, align 8, !tbaa !294
  %188 = load i32, ptr %187, align 8
  br label %189

189:                                              ; preds = %185, %181
  %190 = phi i32 [ %178, %181 ], [ %188, %185 ]
  %191 = phi ptr [ %177, %181 ], [ %187, %185 ]
  %192 = and i32 %190, 65535
  %193 = icmp eq i32 %192, 13
  br i1 %193, label %194, label %198, !prof !822

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 1
  %196 = load i32, ptr %195, align 8, !tbaa !294
  %197 = icmp eq i32 %196, 10
  br i1 %197, label %200, label %198, !prof !822

198:                                              ; preds = %194, %189
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2771, ptr noundef nonnull @.str.1) #15
  %199 = load ptr, ptr %12, align 8, !tbaa !294
  br label %200

200:                                              ; preds = %194, %198
  %201 = phi ptr [ %176, %194 ], [ %199, %198 ]
  store ptr null, ptr %201, align 8, !tbaa !343
  %202 = load ptr, ptr %12, align 8, !tbaa !294
  %203 = getelementptr inbounds %struct.rtl_bb_info, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !337
  %205 = load ptr, ptr %21, align 8, !tbaa !294
  %206 = getelementptr inbounds %struct.rtl_bb_info, ptr %205, i64 0, i32 1
  store ptr %204, ptr %206, align 8, !tbaa !337
  br label %207

207:                                              ; preds = %200, %168
  %208 = phi ptr [ %191, %200 ], [ %160, %168 ]
  %209 = tail call ptr @delete_insn(ptr noundef nonnull %208) #14
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %211 = load i32, ptr %210, align 8, !tbaa !384
  tail call void @df_bb_delete(i32 noundef %211) #15
  %212 = load ptr, ptr %12, align 8, !tbaa !294
  %213 = getelementptr inbounds %struct.rtl_bb_info, ptr %212, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !506
  %215 = icmp eq ptr %214, null
  br i1 %215, label %236, label %216, !prof !824

216:                                              ; preds = %207
  %217 = load ptr, ptr %21, align 8, !tbaa !294
  %218 = getelementptr inbounds %struct.rtl_bb_info, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !506
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %222, !prof !825

221:                                              ; preds = %216
  store ptr %214, ptr %218, align 8, !tbaa !506
  br label %233

222:                                              ; preds = %216, %222
  %223 = phi ptr [ %225, %222 ], [ %219, %216 ]
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 2
  %225 = load ptr, ptr %224, align 8, !tbaa !294
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %222, !llvm.loop !826

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %214, ptr %228, align 8, !tbaa !294
  %229 = load ptr, ptr %12, align 8, !tbaa !294
  %230 = getelementptr inbounds %struct.rtl_bb_info, ptr %229, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !506
  %232 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %223, ptr %232, align 8, !tbaa !294
  br label %233

233:                                              ; preds = %227, %221
  %234 = load ptr, ptr %12, align 8, !tbaa !294
  %235 = getelementptr inbounds %struct.rtl_bb_info, ptr %234, i64 0, i32 3
  store ptr null, ptr %235, align 8, !tbaa !506
  br label %236

236:                                              ; preds = %233, %207
  %237 = load ptr, ptr @dump_file, align 8, !tbaa !317
  %238 = icmp eq ptr %237, null
  br i1 %238, label %244, label %239, !prof !809

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %241 = load i32, ptr %240, align 8, !tbaa !384
  %242 = load i32, ptr %210, align 8, !tbaa !384
  %243 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %237, ptr noundef nonnull @.str.60, i32 noundef %241, i32 noundef %242) #14
  br label %244

244:                                              ; preds = %239, %236
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cfg_layout_can_duplicate_bb_p(ptr noundef) #2

; Function Attrs: optsize
declare ptr @cfg_layout_duplicate_bb(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @cfg_layout_split_edge(ptr noundef %0) #0 !prof !827 !PGOFuncName !828 {
  %2 = load ptr, ptr %0, align 8, !tbaa !446
  %3 = load ptr, ptr @cfun, align 8, !tbaa !317
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !371
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  %7 = icmp eq ptr %2, %6
  br i1 %7, label %15, label %8, !prof !571

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !294
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !337
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !294
  br label %18

15:                                               ; preds = %1
  %16 = tail call ptr @get_insns() #15
  %17 = load ptr, ptr %0, align 8, !tbaa !446
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi ptr [ %2, %8 ], [ %17, %15 ]
  %20 = phi ptr [ %14, %8 ], [ %16, %15 ]
  %21 = tail call ptr @create_basic_block(ptr noundef %20, ptr noundef null, ptr noundef %19) #15
  %22 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !370
  %24 = load ptr, ptr @cfun, align 8, !tbaa !317
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !371
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !373
  %29 = icmp eq ptr %23, %28
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !421
  br i1 %29, label %32, label %34, !prof !571

32:                                               ; preds = %18
  %33 = load ptr, ptr %0, align 8, !tbaa !446
  br label %34

34:                                               ; preds = %18, %32
  %35 = phi ptr [ %33, %32 ], [ %23, %18 ]
  %36 = and i32 %31, -97
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 13
  %38 = load i32, ptr %37, align 8, !tbaa !421
  %39 = and i32 %38, 96
  %40 = or disjoint i32 %39, %36
  store i32 %40, ptr %30, align 8, !tbaa !421
  %41 = tail call ptr @make_edge(ptr noundef nonnull %21, ptr noundef %23, i32 noundef 1) #15
  %42 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %0, ptr noundef nonnull %21) #15
  ret ptr %21
}

; Function Attrs: optsize
declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rtl_lv_add_condition_to_bb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !prof !427 !PGOFuncName !829 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !294
  %9 = load i32, ptr %3, align 8
  %10 = tail call ptr @block_label(ptr noundef %0) #14
  %11 = load i32, ptr %6, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, ptr %8, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i32 [ %18, %15 ], [ %13, %4 ]
  %21 = and i32 %9, 65535
  tail call void @start_sequence() #15
  %22 = tail call ptr @force_operand(ptr noundef nonnull %6, ptr noundef null) #15
  %23 = tail call ptr @force_operand(ptr noundef %8, ptr noundef null) #15
  tail call void @do_compare_rtx_and_jump(ptr noundef %22, ptr noundef %23, i32 noundef %21, i32 noundef 0, i32 noundef %20, ptr noundef null, ptr noundef null, ptr noundef %10, i32 noundef -1) #15
  %24 = tail call ptr @get_last_insn() #15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %10, ptr %25, align 8, !tbaa !294
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !294
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !294
  %29 = tail call ptr @get_insns() #15
  tail call void @end_sequence() #15
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !294
  %32 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !337
  %34 = tail call ptr @emit_insn_after(ptr noundef %29, ptr noundef %33) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rtl_extract_cond_bb_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #9 !prof !427 !PGOFuncName !830 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !380
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 0) #14
  %7 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !351
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr %1, ptr %2
  %12 = select i1 %10, ptr %2, ptr %1
  store ptr %6, ptr %11, align 8, !tbaa !317
  %13 = load ptr, ptr %4, align 8, !tbaa !380
  %14 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %13, i32 noundef 1) #14
  store ptr %14, ptr %12, align 8, !tbaa !317
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_first_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_last_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unlink_insn_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @locator_eq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_nop() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!292}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!36 = !{ptr @delete_insn, ptr @can_delete_label_p, i64 100819}
!37 = !{ptr @delete_insn, ptr @remove_node_from_expr_list, i64 100819}
!38 = !{ptr @delete_insn, ptr @fancy_abort, i64 1}
!39 = !{ptr @delete_insn, ptr @remove_insn, i64 838348}
!40 = !{ptr @delete_insn, ptr @find_reg_note, i64 1052940}
!41 = !{ptr @delete_insn, ptr @remove_note, i64 1}
!42 = !{ptr @can_delete_label_p, ptr @in_expr_list_p, i64 94814}
!43 = !{ptr @delete_insn_and_edges, ptr @delete_insn, i64 93813}
!44 = !{ptr @delete_insn_and_edges, ptr @purge_dead_edges, i64 6980}
!45 = !{ptr @purge_dead_edges, ptr @find_reg_note, i64 593107}
!46 = !{ptr @purge_dead_edges, ptr @may_trap_p, i64 1}
!47 = !{ptr @purge_dead_edges, ptr @find_reg_equal_equiv_note, i64 1}
!48 = !{ptr @purge_dead_edges, ptr @remove_note, i64 7}
!49 = !{ptr @purge_dead_edges, ptr @ei_start_1, i64 1117756}
!50 = !{ptr @purge_dead_edges, ptr @ei_safe_edge, i64 5000930}
!51 = !{ptr @purge_dead_edges, ptr @can_nonlocal_goto, i64 1}
!52 = !{ptr @purge_dead_edges, ptr @can_throw_internal, i64 2}
!53 = !{ptr @purge_dead_edges, ptr @remove_edge, i64 11112}
!54 = !{ptr @purge_dead_edges, ptr @df_set_bb_dirty, i64 11112}
!55 = !{ptr @purge_dead_edges, ptr @ei_next, i64 3422073}
!56 = !{ptr @purge_dead_edges, ptr @any_condjump_p, i64 1367128}
!57 = !{ptr @purge_dead_edges, ptr @returnjump_p, i64 189018}
!58 = !{ptr @purge_dead_edges, ptr @simplejump_p, i64 948469}
!59 = !{ptr @purge_dead_edges, ptr @VEC_edge_base_length, i64 771972}
!60 = !{ptr @purge_dead_edges, ptr @fprintf, i64 2}
!61 = !{ptr @purge_dead_edges, ptr @single_succ_p, i64 11620}
!62 = !{ptr @purge_dead_edges, ptr @single_succ_edge, i64 16022}
!63 = !{ptr @purge_dead_edges, ptr @VEC_edge_base_index, i64 2}
!64 = !{ptr @purge_dead_edges, ptr @fancy_abort, i64 3}
!65 = !{ptr @purge_dead_edges, ptr @ei_cond, i64 659562}
!66 = !{ptr @delete_insn_chain, ptr @can_delete_note_p, i64 130127}
!67 = !{ptr @delete_insn_chain, ptr @delete_insn, i64 525146}
!68 = !{ptr @create_basic_block_structure, ptr @alloc_block, i64 159443}
!69 = !{ptr @create_basic_block_structure, ptr @init_rtl_bb_info, i64 159443}
!70 = !{ptr @create_basic_block_structure, ptr @get_last_insn, i64 269}
!71 = !{ptr @create_basic_block_structure, ptr @emit_note_after, i64 10530}
!72 = !{ptr @create_basic_block_structure, ptr @emit_note_before, i64 148913}
!73 = !{ptr @create_basic_block_structure, ptr @link_block, i64 159443}
!74 = !{ptr @create_basic_block_structure, ptr @VEC_basic_block_base_replace, i64 159443}
!75 = !{ptr @create_basic_block_structure, ptr @df_bb_refs_record, i64 159443}
!76 = !{ptr @create_basic_block_structure, ptr @update_bb_for_insn, i64 159443}
!77 = !{ptr @init_rtl_bb_info, ptr @fancy_abort, i64 1}
!78 = !{ptr @init_rtl_bb_info, ptr @ggc_alloc_cleared_stat, i64 412404}
!79 = !{ptr @update_bb_for_insn, ptr @update_bb_for_insn_chain, i64 419624}
!80 = !{ptr @free_bb_for_insn, ptr @get_insns, i64 13304}
!81 = !{ptr @rest_of_pass_free_cfg, ptr @free_bb_for_insn, i64 6652}
!82 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 5002867}
!83 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 3110757}
!84 = !{ptr @insert_insn_on_edge, ptr @VEC_edge_base_length, i64 1}
!85 = !{ptr @insert_insn_on_edge, ptr @start_sequence, i64 84258}
!86 = !{ptr @insert_insn_on_edge, ptr @push_to_sequence, i64 8462}
!87 = !{ptr @insert_insn_on_edge, ptr @emit_insn, i64 92720}
!88 = !{ptr @insert_insn_on_edge, ptr @get_insns, i64 92720}
!89 = !{ptr @insert_insn_on_edge, ptr @end_sequence, i64 92720}
!90 = !{ptr @commit_edge_insertions, ptr @ei_start_1, i64 966292}
!91 = !{ptr @commit_edge_insertions, ptr @ei_cond, i64 2505679}
!92 = !{ptr @commit_edge_insertions, ptr @commit_one_edge_insertion, i64 33810}
!93 = !{ptr @commit_edge_insertions, ptr @ei_next, i64 1539387}
!94 = !{ptr @commit_edge_insertions, ptr @current_ir_type, i64 9640}
!95 = !{ptr @commit_edge_insertions, ptr @sbitmap_alloc, i64 8532}
!96 = !{ptr @commit_edge_insertions, ptr @sbitmap_zero, i64 8532}
!97 = !{ptr @commit_edge_insertions, ptr @SET_BIT, i64 25782}
!98 = !{ptr @commit_edge_insertions, ptr @fancy_abort, i64 1}
!99 = !{ptr @commit_edge_insertions, ptr @find_many_sub_basic_blocks, i64 8532}
!100 = !{ptr @commit_edge_insertions, ptr @free, i64 17064}
!101 = !{ptr @ei_end_p, ptr @ei_container, i64 54744961}
!102 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 27372481}
!103 = !{ptr @ei_edge, ptr @ei_container, i64 48268857}
!104 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 24134429}
!105 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!106 = !{ptr @update_bb_for_insn_chain, ptr @df_insn_change_bb, i64 2196242}
!107 = !{ptr @block_label, ptr @gen_label_rtx, i64 112882}
!108 = !{ptr @block_label, ptr @emit_label_before, i64 112882}
!109 = !{ptr @try_redirect_by_replacing_jump, ptr @find_reg_note, i64 884445}
!110 = !{ptr @try_redirect_by_replacing_jump, ptr @VEC_edge_base_length, i64 884443}
!111 = !{ptr @try_redirect_by_replacing_jump, ptr @VEC_edge_base_index, i64 514904}
!112 = !{ptr @try_redirect_by_replacing_jump, ptr @onlyjump_p, i64 625287}
!113 = !{ptr @try_redirect_by_replacing_jump, ptr @tablejump_p, i64 522233}
!114 = !{ptr @try_redirect_by_replacing_jump, ptr @single_set_2, i64 1}
!115 = !{ptr @try_redirect_by_replacing_jump, ptr @side_effects_p, i64 593278}
!116 = !{ptr @try_redirect_by_replacing_jump, ptr @can_fallthru, i64 450347}
!117 = !{ptr @try_redirect_by_replacing_jump, ptr @fprintf, i64 3}
!118 = !{ptr @try_redirect_by_replacing_jump, ptr @delete_insn_chain, i64 145689}
!119 = !{ptr @try_redirect_by_replacing_jump, ptr @simplejump_p, i64 447649}
!120 = !{ptr @try_redirect_by_replacing_jump, ptr @block_label, i64 1839}
!121 = !{ptr @try_redirect_by_replacing_jump, ptr @redirect_jump, i64 1778}
!122 = !{ptr @try_redirect_by_replacing_jump, ptr @fancy_abort, i64 2}
!123 = !{ptr @try_redirect_by_replacing_jump, ptr @gen_jump, i64 61}
!124 = !{ptr @try_redirect_by_replacing_jump, ptr @emit_jump_insn_after_noloc, i64 61}
!125 = !{ptr @try_redirect_by_replacing_jump, ptr @next_nonnote_insn, i64 61}
!126 = !{ptr @try_redirect_by_replacing_jump, ptr @emit_barrier_after, i64 60}
!127 = !{ptr @try_redirect_by_replacing_jump, ptr @update_bb_for_insn_chain, i64 1}
!128 = !{ptr @try_redirect_by_replacing_jump, ptr @single_succ_p, i64 294930}
!129 = !{ptr @try_redirect_by_replacing_jump, ptr @remove_edge, i64 153}
!130 = !{ptr @try_redirect_by_replacing_jump, ptr @single_succ_edge, i64 147465}
!131 = !{ptr @try_redirect_by_replacing_jump, ptr @redirect_edge_succ, i64 3736}
!132 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 629474}
!133 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 219134}
!134 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!135 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 219134}
!136 = !{ptr @force_nonfallthru, ptr @force_nonfallthru_and_redirect, i64 185716}
!137 = !{ptr @force_nonfallthru_and_redirect, ptr @any_condjump_p, i64 200960}
!138 = !{ptr @force_nonfallthru_and_redirect, ptr @unchecked_make_edge, i64 1}
!139 = !{ptr @force_nonfallthru_and_redirect, ptr @block_label, i64 200962}
!140 = !{ptr @force_nonfallthru_and_redirect, ptr @redirect_jump, i64 1}
!141 = !{ptr @force_nonfallthru_and_redirect, ptr @find_reg_note, i64 1}
!142 = !{ptr @force_nonfallthru_and_redirect, ptr @fancy_abort, i64 3}
!143 = !{ptr @force_nonfallthru_and_redirect, ptr @create_basic_block, i64 34695}
!144 = !{ptr @force_nonfallthru_and_redirect, ptr @ei_start_1, i64 1}
!145 = !{ptr @force_nonfallthru_and_redirect, ptr @ei_safe_edge, i64 7}
!146 = !{ptr @force_nonfallthru_and_redirect, ptr @ei_next, i64 6}
!147 = !{ptr @force_nonfallthru_and_redirect, ptr @VEC_edge_gc_safe_push, i64 1}
!148 = !{ptr @force_nonfallthru_and_redirect, ptr @make_single_succ_edge, i64 1}
!149 = !{ptr @force_nonfallthru_and_redirect, ptr @VEC_edge_base_length, i64 200962}
!150 = !{ptr @force_nonfallthru_and_redirect, ptr @tablejump_p, i64 34694}
!151 = !{ptr @force_nonfallthru_and_redirect, ptr @make_edge, i64 34695}
!152 = !{ptr @force_nonfallthru_and_redirect, ptr @redirect_edge_pred, i64 34694}
!153 = !{ptr @force_nonfallthru_and_redirect, ptr @gen_return, i64 1}
!154 = !{ptr @force_nonfallthru_and_redirect, ptr @emit_jump_insn_after_setloc, i64 200962}
!155 = !{ptr @force_nonfallthru_and_redirect, ptr @gen_jump, i64 200961}
!156 = !{ptr @force_nonfallthru_and_redirect, ptr @emit_barrier_after, i64 200962}
!157 = !{ptr @force_nonfallthru_and_redirect, ptr @redirect_edge_succ_nodup, i64 200962}
!158 = !{ptr @force_nonfallthru_and_redirect, ptr @df_mark_solutions_dirty, i64 200962}
!159 = !{ptr @ei_next, ptr @ei_container, i64 48174791}
!160 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 24087396}
!161 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!162 = !{ptr @commit_one_edge_insertion, ptr @single_pred_p, i64 84253}
!163 = !{ptr @commit_one_edge_insertion, ptr @get_last_insn, i64 1}
!164 = !{ptr @commit_one_edge_insertion, ptr @single_succ_p, i64 78343}
!165 = !{ptr @commit_one_edge_insertion, ptr @fancy_abort, i64 5}
!166 = !{ptr @commit_one_edge_insertion, ptr @split_edge, i64 44936}
!167 = !{ptr @commit_one_edge_insertion, ptr @emit_insn_before_noloc, i64 13940}
!168 = !{ptr @commit_one_edge_insertion, ptr @prev_nonnote_insn, i64 13940}
!169 = !{ptr @commit_one_edge_insertion, ptr @emit_insn_after_noloc, i64 70313}
!170 = !{ptr @commit_one_edge_insertion, ptr @returnjump_p, i64 84253}
!171 = !{ptr @commit_one_edge_insertion, ptr @single_succ_edge, i64 6261}
!172 = !{ptr @commit_one_edge_insertion, ptr @emit_barrier_after, i64 6261}
!173 = !{ptr @commit_one_edge_insertion, ptr @delete_insn, i64 1}
!174 = !{ptr @commit_one_edge_insertion, ptr @current_ir_type, i64 84253}
!175 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 109607}
!176 = !{ptr @ei_cond, ptr @ei_end_p, i64 22369614}
!177 = !{ptr @ei_cond, ptr @ei_edge, i64 21023671}
!178 = !{ptr @update_br_prob_note, ptr @find_reg_note, i64 67942}
!179 = !{ptr @update_br_prob_note, ptr @VEC_edge_base_index, i64 91913}
!180 = !{ptr @update_br_prob_note, ptr @gen_rtx_CONST_INT, i64 317}
!181 = !{ptr @get_last_bb_insn, ptr @tablejump_p, i64 125333}
!182 = !{ptr @get_last_bb_insn, ptr @next_nonnote_insn_bb, i64 147127}
!183 = !{ptr @purge_all_dead_edges, ptr @purge_dead_edges, i64 764430}
!184 = !{ptr @rtl_create_basic_block, ptr @VEC_basic_block_base_length, i64 159443}
!185 = !{ptr @rtl_create_basic_block, ptr @VEC_basic_block_gc_safe_grow_cleared, i64 212}
!186 = !{ptr @rtl_create_basic_block, ptr @create_basic_block_structure, i64 159443}
!187 = !{ptr @rtl_redirect_edge_and_branch, ptr @try_redirect_by_replacing_jump, i64 184073}
!188 = !{ptr @rtl_redirect_edge_and_branch, ptr @redirect_branch_edge, i64 182228}
!189 = !{ptr @rtl_redirect_edge_and_branch, ptr @df_set_bb_dirty, i64 49579}
!190 = !{ptr @rtl_redirect_edge_and_branch_force, ptr @redirect_edge_and_branch, i64 15246}
!191 = !{ptr @rtl_redirect_edge_and_branch_force, ptr @df_set_bb_dirty, i64 15244}
!192 = !{ptr @rtl_redirect_edge_and_branch_force, ptr @force_nonfallthru_and_redirect, i64 15244}
!193 = !{ptr @rtl_can_remove_branch_p, ptr @VEC_edge_base_index, i64 156}
!194 = !{ptr @rtl_can_remove_branch_p, ptr @find_reg_note, i64 76}
!195 = !{ptr @rtl_can_remove_branch_p, ptr @onlyjump_p, i64 74}
!196 = !{ptr @rtl_can_remove_branch_p, ptr @tablejump_p, i64 73}
!197 = !{ptr @rtl_can_remove_branch_p, ptr @single_set_2, i64 1}
!198 = !{ptr @rtl_can_remove_branch_p, ptr @side_effects_p, i64 71}
!199 = !{ptr @rtl_delete_block, ptr @get_last_bb_insn, i64 125333}
!200 = !{ptr @rtl_delete_block, ptr @delete_insn_chain, i64 125333}
!201 = !{ptr @rtl_delete_block, ptr @fprintf, i64 1}
!202 = !{ptr @rtl_delete_block, ptr @df_bb_delete, i64 125333}
!203 = !{ptr @rtl_split_block, ptr @first_insn_after_basic_block_note, i64 6757}
!204 = !{ptr @rtl_split_block, ptr @get_last_insn, i64 1}
!205 = !{ptr @rtl_split_block, ptr @emit_note_after, i64 6}
!206 = !{ptr @rtl_split_block, ptr @create_basic_block, i64 44539}
!207 = !{ptr @rtl_split_block, ptr @ei_start_1, i64 44539}
!208 = !{ptr @rtl_split_block, ptr @ei_cond, i64 169809}
!209 = !{ptr @rtl_split_block, ptr @ei_next, i64 125270}
!210 = !{ptr @rtl_split_block, ptr @df_set_bb_dirty, i64 44539}
!211 = !{ptr @rtl_merge_blocks, ptr @fprintf, i64 1}
!212 = !{ptr @rtl_merge_blocks, ptr @delete_insn_chain, i64 1235}
!213 = !{ptr @rtl_merge_blocks, ptr @update_bb_for_insn_chain, i64 1154}
!214 = !{ptr @rtl_merge_blocks, ptr @reorder_insns_nobb, i64 1}
!215 = !{ptr @rtl_merge_blocks, ptr @df_bb_delete, i64 1235}
!216 = !{ptr @rtl_split_edge, ptr @fancy_abort, i64 2}
!217 = !{ptr @rtl_split_edge, ptr @ei_start_1, i64 35791}
!218 = !{ptr @rtl_split_edge, ptr @ei_cond, i64 19029422}
!219 = !{ptr @rtl_split_edge, ptr @ei_next, i64 18993631}
!220 = !{ptr @rtl_split_edge, ptr @force_nonfallthru, i64 33535}
!221 = !{ptr @rtl_split_edge, ptr @create_basic_block, i64 41641}
!222 = !{ptr @rtl_split_edge, ptr @make_single_succ_edge, i64 41641}
!223 = !{ptr @rtl_split_edge, ptr @redirect_edge_and_branch, i64 35791}
!224 = !{ptr @rtl_split_edge, ptr @redirect_edge_succ, i64 5850}
!225 = !{ptr @rtl_tidy_fallthru_edge, ptr @onlyjump_p, i64 110}
!226 = !{ptr @rtl_tidy_fallthru_edge, ptr @any_uncondjump_p, i64 109}
!227 = !{ptr @rtl_tidy_fallthru_edge, ptr @single_succ_p, i64 108}
!228 = !{ptr @rtl_tidy_fallthru_edge, ptr @delete_insn_chain, i64 1}
!229 = !{ptr @rtl_block_ends_with_call_p, ptr @keep_with_call_p, i64 234734}
!230 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_base_length, i64 211}
!231 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_gc_safe_grow, i64 211}
!232 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_base_address, i64 211}
!233 = !{ptr @VEC_basic_block_gc_safe_grow, ptr @VEC_basic_block_gc_reserve_exact, i64 211}
!234 = !{ptr @VEC_basic_block_gc_reserve_exact, ptr @VEC_basic_block_base_space, i64 211}
!235 = !{ptr @VEC_basic_block_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 210}
!236 = !{ptr @redirect_branch_edge, ptr @patch_jump_insn, i64 92246}
!237 = !{ptr @redirect_branch_edge, ptr @fprintf, i64 1}
!238 = !{ptr @redirect_branch_edge, ptr @redirect_edge_succ_nodup, i64 87765}
!239 = !{ptr @patch_jump_insn, ptr @tablejump_p, i64 92248}
!240 = !{ptr @patch_jump_insn, ptr @block_label, i64 88679}
!241 = !{ptr @patch_jump_insn, ptr @gen_rtx_fmt_u_stat, i64 23408}
!242 = !{ptr @patch_jump_insn, ptr @single_set_2, i64 707}
!243 = !{ptr @patch_jump_insn, ptr @extract_asm_operands, i64 90832}
!244 = !{ptr @patch_jump_insn, ptr @fancy_abort, i64 8}
!245 = !{ptr @patch_jump_insn, ptr @computed_jump_p, i64 90831}
!246 = !{ptr @patch_jump_insn, ptr @returnjump_p, i64 90830}
!247 = !{ptr @patch_jump_insn, ptr @redirect_jump, i64 87262}
!248 = !{ptr @first_insn_after_basic_block_note, ptr @fancy_abort, i64 2}
!249 = !{ptr @single_succ, ptr @single_succ_edge, i64 25354}
!250 = !{ptr @cfg_layout_create_basic_block, ptr @rtl_create_basic_block, i64 24803}
!251 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @try_redirect_by_replacing_jump, i64 110972}
!252 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @df_set_bb_dirty, i64 110974}
!253 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @redirect_edge_succ, i64 1}
!254 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @label_is_jump_target_p, i64 51940}
!255 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @fprintf, i64 2}
!256 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @redirect_branch_edge, i64 40035}
!257 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @VEC_edge_base_length, i64 68894}
!258 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @VEC_edge_base_index, i64 103878}
!259 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @any_condjump_p, i64 1}
!260 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @onlyjump_p, i64 1}
!261 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @redirect_edge_succ_nodup, i64 68894}
!262 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @simplejump_p, i64 108928}
!263 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @fancy_abort, i64 1}
!264 = !{ptr @cfg_layout_redirect_edge_and_branch_force, ptr @cfg_layout_redirect_edge_and_branch, i64 28513}
!265 = !{ptr @cfg_layout_redirect_edge_and_branch_force, ptr @fancy_abort, i64 1}
!266 = !{ptr @cfg_layout_delete_block, ptr @set_first_insn, i64 1}
!267 = !{ptr @cfg_layout_delete_block, ptr @rtl_delete_block, i64 93708}
!268 = !{ptr @cfg_layout_delete_block, ptr @get_insns, i64 1}
!269 = !{ptr @cfg_layout_delete_block, ptr @get_last_insn, i64 1322}
!270 = !{ptr @cfg_layout_delete_block, ptr @unlink_insn_chain, i64 78}
!271 = !{ptr @cfg_layout_split_block, ptr @rtl_split_block, i64 6756}
!272 = !{ptr @cfg_layout_can_merge_blocks_p, ptr @single_succ_p, i64 25353}
!273 = !{ptr @cfg_layout_can_merge_blocks_p, ptr @single_succ, i64 25352}
!274 = !{ptr @cfg_layout_can_merge_blocks_p, ptr @single_pred_p, i64 25351}
!275 = !{ptr @cfg_layout_can_merge_blocks_p, ptr @single_succ_edge, i64 24063}
!276 = !{ptr @cfg_layout_can_merge_blocks_p, ptr @simplejump_p, i64 41}
!277 = !{ptr @cfg_layout_can_merge_blocks_p, ptr @onlyjump_p, i64 5109}
!278 = !{ptr @cfg_layout_merge_blocks, ptr @fprintf, i64 2}
!279 = !{ptr @cfg_layout_merge_blocks, ptr @delete_insn, i64 36346}
!280 = !{ptr @cfg_layout_merge_blocks, ptr @VEC_edge_base_index, i64 5153}
!281 = !{ptr @cfg_layout_merge_blocks, ptr @try_redirect_by_replacing_jump, i64 5152}
!282 = !{ptr @cfg_layout_merge_blocks, ptr @fancy_abort, i64 5}
!283 = !{ptr @cfg_layout_merge_blocks, ptr @emit_insn_after_noloc, i64 8616}
!284 = !{ptr @cfg_layout_merge_blocks, ptr @delete_insn_chain, i64 2}
!285 = !{ptr @cfg_layout_merge_blocks, ptr @unlink_insn_chain, i64 8614}
!286 = !{ptr @cfg_layout_merge_blocks, ptr @update_bb_for_insn_chain, i64 24068}
!287 = !{ptr @cfg_layout_merge_blocks, ptr @df_bb_delete, i64 24068}
!288 = !{ptr @cfg_layout_split_edge, ptr @get_insns, i64 1}
!289 = !{ptr @cfg_layout_split_edge, ptr @create_basic_block, i64 12169}
!290 = !{ptr @cfg_layout_split_edge, ptr @make_edge, i64 12169}
!291 = !{ptr @cfg_layout_split_edge, ptr @redirect_edge_and_branch_force, i64 12169}
!292 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!293 = !{!"function_entry_count", i64 844351}
!294 = !{!295, !295, i64 0}
!295 = !{!"omnipotent char", !296, i64 0}
!296 = !{!"Simple C/C++ TBAA"}
!297 = !{!"branch_weights", i32 100819, i32 743534}
!298 = !{i32 0, i32 2}
!299 = !{!"branch_weights", i32 6003, i32 94817}
!300 = !{!"branch_weights", i32 838350, i32 1}
!301 = !{!"branch_weights", i32 208588, i32 635765}
!302 = !{!"branch_weights", i32 3, i32 208586}
!303 = !{!"branch_weights", i32 206932, i32 1655}
!304 = !{!"branch_weights", i32 208587, i32 1}
!305 = !{!"branch_weights", i32 1, i32 208588}
!306 = !{!"branch_weights", i32 1, i32 0}
!307 = distinct !{!307, !308}
!308 = !{!"llvm.loop.mustprogress"}
!309 = !{!"branch_weights", i32 843414, i32 938}
!310 = !{!"branch_weights", i32 938, i32 844352}
!311 = !{!"branch_weights", i32 938, i32 0}
!312 = distinct !{!312, !308}
!313 = !{!"branch_weights", i32 26072, i32 -1575657687}
!314 = !{!315, !316, i64 0}
!315 = !{!"rtvec_def", !316, i64 0, !295, i64 8}
!316 = !{!"int", !295, i64 0}
!317 = !{!318, !318, i64 0}
!318 = !{!"any pointer", !295, i64 0}
!319 = distinct !{!319, !308}
!320 = !{!"function_entry_count", i64 100818}
!321 = !{!"cfgrtl.c:can_delete_label_p"}
!322 = !{!"branch_weights", i32 100819, i32 1}
!323 = !{!"branch_weights", i32 94817, i32 6003}
!324 = !{!325, !318, i64 32}
!325 = !{!"rtl_data", !326, i64 0, !327, i64 40, !328, i64 96, !329, i64 112, !331, i64 208, !332, i64 248, !316, i64 312, !318, i64 320, !318, i64 328, !318, i64 336, !318, i64 344, !318, i64 352, !318, i64 360, !318, i64 368, !318, i64 376, !318, i64 384, !318, i64 392, !333, i64 400, !318, i64 408, !318, i64 416, !318, i64 424, !316, i64 432, !316, i64 436, !316, i64 440, !316, i64 444, !316, i64 448, !316, i64 452, !318, i64 456, !295, i64 464, !295, i64 465, !295, i64 466, !295, i64 467, !295, i64 468, !295, i64 469, !295, i64 470, !295, i64 471, !295, i64 472, !295, i64 473, !295, i64 474, !295, i64 475, !295, i64 476, !295, i64 477, !295, i64 478, !295, i64 479, !295, i64 480, !295, i64 481, !295, i64 482, !295, i64 483, !295, i64 484, !295, i64 485}
!326 = !{!"expr_status", !316, i64 0, !316, i64 4, !316, i64 8, !318, i64 16, !318, i64 24, !318, i64 32}
!327 = !{!"emit_status", !316, i64 0, !316, i64 4, !318, i64 8, !318, i64 16, !318, i64 24, !316, i64 32, !316, i64 36, !316, i64 40, !316, i64 44, !318, i64 48}
!328 = !{!"varasm_status", !318, i64 0, !316, i64 8}
!329 = !{!"incoming_args", !316, i64 0, !316, i64 4, !316, i64 8, !318, i64 16, !330, i64 24, !318, i64 88}
!330 = !{!"ix86_args", !316, i64 0, !316, i64 4, !316, i64 8, !316, i64 12, !316, i64 16, !316, i64 20, !316, i64 24, !316, i64 28, !316, i64 32, !316, i64 36, !316, i64 40, !316, i64 44, !316, i64 48, !316, i64 52, !316, i64 56, !316, i64 60}
!331 = !{!"function_subsections", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32}
!332 = !{!"rtl_eh", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40, !295, i64 48}
!333 = !{!"long", !295, i64 0}
!334 = !{!"function_entry_count", i64 93813}
!335 = !{!"branch_weights", i32 1952092319, i32 10201}
!336 = !{!"branch_weights", i32 1, i32 93814}
!337 = !{!338, !318, i64 8}
!338 = !{!"rtl_bb_info", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !316, i64 32}
!339 = !{!"branch_weights", i32 159779076, i32 1987704572}
!340 = !{i8 0, i8 2}
!341 = !{!"function_entry_count", i64 1117756}
!342 = !{!"branch_weights", i32 1, i32 1117757}
!343 = !{!338, !318, i64 0}
!344 = distinct !{!344, !308}
!345 = !{!"branch_weights", i32 246883, i32 870875}
!346 = !{!"branch_weights", i32 246883, i32 1}
!347 = !{i64 0, i64 4, !348, i64 8, i64 8, !317}
!348 = !{!316, !316, i64 0}
!349 = !{i64 0, i64 8, !317}
!350 = !{!"branch_weights", i32 1, i32 1117756}
!351 = !{!352, !316, i64 48}
!352 = !{!"edge_def", !318, i64 0, !318, i64 8, !295, i64 16, !318, i64 24, !318, i64 32, !316, i64 40, !316, i64 44, !316, i64 48, !316, i64 52, !333, i64 56}
!353 = !{!"branch_weights", i32 1736530, i32 1}
!354 = !{!"branch_weights", i32 796918219, i32 1350565429}
!355 = !{!"branch_weights", i32 1117756, i32 618774}
!356 = distinct !{!356, !308}
!357 = !{!"branch_weights", i32 1543718274, i32 -146810177, i32 288094975}
!358 = !{!"branch_weights", i32 182763, i32 592599}
!359 = !{!"branch_weights", i32 176499, i32 6265}
!360 = !{!"branch_weights", i32 3388, i32 173112}
!361 = !{!"branch_weights", i32 598863, i32 173112}
!362 = !{!"branch_weights", i32 173108, i32 5}
!363 = !{!"branch_weights", i32 173111, i32 1}
!364 = distinct !{!364, !308}
!365 = !{!"branch_weights", i32 1, i32 127}
!366 = !{!"branch_weights", i32 776839, i32 592629}
!367 = !{!"branch_weights", i32 31, i32 592599}
!368 = !{!"branch_weights", i32 771973, i32 597494}
!369 = distinct !{!369, !308}
!370 = !{!352, !318, i64 8}
!371 = !{!372, !318, i64 8}
!372 = !{!"function", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40, !318, i64 48, !318, i64 56, !318, i64 64, !318, i64 72, !318, i64 80, !318, i64 88, !318, i64 96, !316, i64 104, !316, i64 108, !316, i64 112, !316, i64 116, !316, i64 120, !316, i64 124, !318, i64 128, !316, i64 136, !316, i64 137, !316, i64 138, !316, i64 138, !316, i64 138, !316, i64 138, !316, i64 138, !316, i64 138, !316, i64 138, !316, i64 139, !316, i64 139, !316, i64 139, !316, i64 139, !316, i64 139, !316, i64 139, !316, i64 139}
!373 = !{!374, !318, i64 8}
!374 = !{!"control_flow_graph", !318, i64 0, !318, i64 8, !318, i64 16, !316, i64 24, !316, i64 28, !316, i64 32, !318, i64 40, !316, i64 48, !295, i64 52, !295, i64 60, !316, i64 68, !316, i64 72}
!375 = !{!"branch_weights", i32 6265, i32 770605}
!376 = !{!"branch_weights", i32 761881, i32 8725}
!377 = !{!"branch_weights", i32 1, i32 6265}
!378 = !{!"branch_weights", i32 8725, i32 1}
!379 = !{!"branch_weights", i32 127, i32 98812417}
!380 = !{!381, !318, i64 8}
!381 = !{!"basic_block_def", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !295, i64 32, !318, i64 48, !318, i64 56, !295, i64 64, !333, i64 72, !316, i64 80, !316, i64 84, !316, i64 88, !316, i64 92, !316, i64 96}
!382 = !{!"branch_weights", i32 6019136, i32 -1984621166}
!383 = !{!"branch_weights", i32 2006, i32 1}
!384 = !{!381, !316, i64 80}
!385 = !{!"branch_weights", i32 1, i32 2006}
!386 = !{!352, !316, i64 52}
!387 = !{!381, !333, i64 72}
!388 = !{!352, !333, i64 56}
!389 = !{!"branch_weights", i32 46635, i32 7216}
!390 = !{!"branch_weights", i32 1, i32 7216}
!391 = !{!"branch_weights", i32 7216, i32 1}
!392 = !{!"branch_weights", i32 8341, i32 324460}
!393 = !{!"branch_weights", i32 2382, i32 322079}
!394 = !{!"branch_weights", i32 324460, i32 0}
!395 = distinct !{!395, !308}
!396 = !{!"branch_weights", i32 1, i32 2381}
!397 = !{!"branch_weights", i32 2382, i32 2382}
!398 = !{!"branch_weights", i32 2381, i32 2382}
!399 = distinct !{!399, !308}
!400 = !{!"branch_weights", i32 1, i32 2382}
!401 = !{!"branch_weights", i32 2382, i32 1}
!402 = !{!"function_entry_count", i64 328723}
!403 = !{!"branch_weights", i32 130127, i32 395085}
!404 = !{!"branch_weights", i32 64, i32 130064}
!405 = !{!"branch_weights", i32 210047, i32 315165}
!406 = !{!"branch_weights", i32 193, i32 314973}
!407 = !{!"branch_weights", i32 328724, i32 196488}
!408 = !{!"function_entry_count", i64 130126}
!409 = !{!"cfgrtl.c:can_delete_note_p"}
!410 = !{!"branch_weights", i32 64, i32 2984, i32 126569, i32 513}
!411 = !{!"function_entry_count", i64 159443}
!412 = !{!"branch_weights", i32 159444, i32 1}
!413 = !{!381, !318, i64 16}
!414 = !{!"branch_weights", i32 270, i32 159175}
!415 = !{!"branch_weights", i32 270, i32 1}
!416 = !{!"branch_weights", i32 238375856, i32 -835445909}
!417 = !{!"branch_weights", i32 4954, i32 5308}
!418 = !{!"branch_weights", i32 60599, i32 88317}
!419 = !{!"branch_weights", i32 1, i32 159444}
!420 = !{!374, !316, i64 32}
!421 = !{!381, !316, i64 96}
!422 = !{!374, !318, i64 16}
!423 = !{!"function_entry_count", i64 412404}
!424 = !{!"branch_weights", i32 412405, i32 1}
!425 = !{!"cfgrtl.c:VEC_basic_block_base_replace"}
!426 = !{!"function_entry_count", i64 419624}
!427 = !{!"function_entry_count", i64 0}
!428 = !{!374, !318, i64 0}
!429 = !{!381, !318, i64 56}
!430 = distinct !{!430, !308}
!431 = !{!"function_entry_count", i64 13304}
!432 = !{!"branch_weights", i32 1, i32 13304}
!433 = !{!"branch_weights", i32 64075, i32 1693315}
!434 = !{!"branch_weights", i32 13304, i32 1744085}
!435 = distinct !{!435, !308}
!436 = !{!"function_entry_count", i64 6652}
!437 = !{!"cfgrtl.c:rest_of_pass_free_cfg"}
!438 = !{!374, !316, i64 24}
!439 = !{!"function_entry_count", i64 3273980}
!440 = !{!"cfgrtl.c:ei_start_1"}
!441 = !{!"function_entry_count", i64 5002867}
!442 = !{!"cfgrtl.c:ei_safe_edge"}
!443 = !{!"branch_weights", i32 3110758, i32 1892111}
!444 = !{!"function_entry_count", i64 92720}
!445 = !{!"branch_weights", i32 92721, i32 1}
!446 = !{!352, !318, i64 0}
!447 = !{!381, !318, i64 0}
!448 = !{!"branch_weights", i32 84260, i32 8462}
!449 = !{!"function_entry_count", i64 14325}
!450 = !{!"branch_weights", i32 1, i32 14325}
!451 = !{!"branch_weights", i32 1, i32 966358}
!452 = !{!"branch_weights", i32 1505683, i32 33812}
!453 = !{!"branch_weights", i32 966358, i32 573136}
!454 = distinct !{!454, !308}
!455 = !{!"branch_weights", i32 14325, i32 952034}
!456 = distinct !{!456, !308}
!457 = !{!"branch_weights", i32 702286807, i32 1445196841}
!458 = !{!"branch_weights", i32 1108, i32 8534}
!459 = !{!"branch_weights", i32 1, i32 8533}
!460 = !{!"branch_weights", i32 486284, i32 25788}
!461 = !{!"branch_weights", i32 25788, i32 1}
!462 = !{!"branch_weights", i32 8533, i32 503538}
!463 = distinct !{!463, !308}
!464 = !{!465, !318, i64 0}
!465 = !{!"simple_bitmap_def", !318, i64 0, !316, i64 8, !316, i64 12, !295, i64 16}
!466 = !{!"function_entry_count", i64 27372481}
!467 = !{!"cfgrtl.c:ei_end_p"}
!468 = !{!"branch_weights", i32 1, i32 27372482}
!469 = !{!"function_entry_count", i64 24134429}
!470 = !{!"cfgrtl.c:ei_edge"}
!471 = !{!"branch_weights", i32 1, i32 24134430}
!472 = !{!"function_entry_count", i64 55007824}
!473 = !{!"cfgrtl.c:VEC_edge_base_length"}
!474 = !{!"branch_weights", i32 1, i32 55007825}
!475 = !{!476, !316, i64 0}
!476 = !{!"VEC_edge_base", !316, i64 0, !316, i64 4, !295, i64 8}
!477 = !{!"function_entry_count", i64 151188612}
!478 = !{!"cfgrtl.c:ei_container"}
!479 = !{!"branch_weights", i32 1, i32 151188613}
!480 = !{!"function_entry_count", i64 25102452}
!481 = !{!"cfgrtl.c:VEC_edge_base_index"}
!482 = !{!"function_entry_count", i64 444846}
!483 = !{!"cfgrtl.c:update_bb_for_insn_chain"}
!484 = !{!"branch_weights", i32 1, i32 444846}
!485 = !{!"branch_weights", i32 27228, i32 2196248}
!486 = !{!"branch_weights", i32 444846, i32 1778629}
!487 = distinct !{!487, !308}
!488 = !{!"function_entry_count", i64 401835}
!489 = !{!"branch_weights", i32 2332, i32 399505}
!490 = !{!"branch_weights", i32 286623, i32 112883}
!491 = !{!"function_entry_count", i64 884445}
!492 = !{!"branch_weights", i32 884446, i32 1}
!493 = !{!"branch_weights", i32 1857, i32 882590}
!494 = !{!"branch_weights", i32 257453, i32 625138}
!495 = !{!"branch_weights", i32 153, i32 257301}
!496 = !{!"branch_weights", i32 32008, i32 593283}
!497 = !{!"branch_weights", i32 -1874664663, i32 329587246}
!498 = !{!"branch_weights", i32 522176, i32 1}
!499 = !{!"branch_weights", i32 -1183196111, i32 2622}
!500 = !{!"branch_weights", i32 593283, i32 1}
!501 = !{!"branch_weights", i32 1074335052, i32 1073148596}
!502 = !{!"branch_weights", i32 450353, i32 142931}
!503 = !{!"branch_weights", i32 447656, i32 2698}
!504 = !{!"branch_weights", i32 145628, i32 1}
!505 = !{!"branch_weights", i32 2698, i32 142931}
!506 = !{!338, !318, i64 24}
!507 = !{!"branch_weights", i32 2069, i32 140862}
!508 = !{!"branch_weights", i32 140862, i32 1}
!509 = !{!"branch_weights", i32 1, i32 140862}
!510 = !{!"branch_weights", i32 140862, i32 0}
!511 = distinct !{!511, !308}
!512 = !{!"branch_weights", i32 62, i32 447595}
!513 = !{!"branch_weights", i32 445818, i32 1778}
!514 = !{!"branch_weights", i32 1778, i32 1}
!515 = !{!"branch_weights", i32 1, i32 1778}
!516 = !{!"branch_weights", i32 1, i32 62}
!517 = !{!"branch_weights", i32 62, i32 1}
!518 = !{!"branch_weights", i32 153, i32 147314}
!519 = !{!"branch_weights", i32 1, i32 147466}
!520 = !{!"branch_weights", i32 143731, i32 3736}
!521 = !{!"function_entry_count", i64 629474}
!522 = !{!"cfgrtl.c:single_succ_p"}
!523 = !{!"function_entry_count", i64 219134}
!524 = !{!"cfgrtl.c:single_succ_edge"}
!525 = !{!"branch_weights", i32 1, i32 219135}
!526 = !{!"function_entry_count", i64 185716}
!527 = !{!"function_entry_count", i64 200962}
!528 = !{!"cfgrtl.c:force_nonfallthru_and_redirect"}
!529 = !{!"branch_weights", i32 1, i32 200963}
!530 = !{!"branch_weights", i32 166303, i32 34661}
!531 = !{!"branch_weights", i32 1, i32 34661}
!532 = !{!"branch_weights", i32 200963, i32 1}
!533 = distinct !{!533, !308}
!534 = !{!"branch_weights", i32 721080095, i32 -839211616}
!535 = !{!"branch_weights", i32 34693, i32 1}
!536 = !{!381, !316, i64 88}
!537 = !{!381, !316, i64 84}
!538 = !{!539, !295, i64 2025}
!539 = !{!"gcc_target", !540, i64 0, !542, i64 368, !543, i64 664, !316, i64 744, !318, i64 752, !318, i64 760, !318, i64 768, !318, i64 776, !318, i64 784, !318, i64 792, !318, i64 800, !318, i64 808, !318, i64 816, !318, i64 824, !318, i64 832, !318, i64 840, !318, i64 848, !318, i64 856, !318, i64 864, !318, i64 872, !318, i64 880, !318, i64 888, !318, i64 896, !318, i64 904, !318, i64 912, !318, i64 920, !318, i64 928, !318, i64 936, !318, i64 944, !318, i64 952, !318, i64 960, !318, i64 968, !318, i64 976, !318, i64 984, !318, i64 992, !318, i64 1000, !318, i64 1008, !318, i64 1016, !318, i64 1024, !318, i64 1032, !318, i64 1040, !318, i64 1048, !318, i64 1056, !333, i64 1064, !333, i64 1072, !318, i64 1080, !318, i64 1088, !318, i64 1096, !318, i64 1104, !318, i64 1112, !318, i64 1120, !318, i64 1128, !318, i64 1136, !318, i64 1144, !318, i64 1152, !318, i64 1160, !318, i64 1168, !544, i64 1176, !318, i64 1232, !318, i64 1240, !318, i64 1248, !318, i64 1256, !318, i64 1264, !318, i64 1272, !318, i64 1280, !318, i64 1288, !318, i64 1296, !318, i64 1304, !318, i64 1312, !318, i64 1320, !318, i64 1328, !318, i64 1336, !318, i64 1344, !318, i64 1352, !318, i64 1360, !318, i64 1368, !318, i64 1376, !318, i64 1384, !318, i64 1392, !318, i64 1400, !318, i64 1408, !318, i64 1416, !318, i64 1424, !318, i64 1432, !318, i64 1440, !318, i64 1448, !318, i64 1456, !333, i64 1464, !545, i64 1472, !318, i64 1664, !318, i64 1672, !318, i64 1680, !318, i64 1688, !318, i64 1696, !318, i64 1704, !318, i64 1712, !318, i64 1720, !318, i64 1728, !318, i64 1736, !318, i64 1744, !318, i64 1752, !318, i64 1760, !318, i64 1768, !318, i64 1776, !546, i64 1784, !547, i64 1792, !548, i64 1896, !549, i64 1968, !318, i64 2016, !295, i64 2024, !295, i64 2025, !295, i64 2026, !295, i64 2027, !295, i64 2028, !295, i64 2029, !295, i64 2030, !295, i64 2031, !295, i64 2032, !295, i64 2033, !295, i64 2034, !295, i64 2035}
!540 = !{!"asm_out", !318, i64 0, !318, i64 8, !318, i64 16, !541, i64 24, !541, i64 56, !318, i64 88, !318, i64 96, !318, i64 104, !318, i64 112, !318, i64 120, !318, i64 128, !318, i64 136, !318, i64 144, !318, i64 152, !318, i64 160, !318, i64 168, !318, i64 176, !318, i64 184, !318, i64 192, !318, i64 200, !318, i64 208, !318, i64 216, !318, i64 224, !318, i64 232, !318, i64 240, !318, i64 248, !318, i64 256, !318, i64 264, !318, i64 272, !318, i64 280, !318, i64 288, !318, i64 296, !318, i64 304, !318, i64 312, !318, i64 320, !318, i64 328, !318, i64 336, !318, i64 344, !318, i64 352, !318, i64 360}
!541 = !{!"asm_int_op", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24}
!542 = !{!"sched", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40, !318, i64 48, !318, i64 56, !318, i64 64, !318, i64 72, !318, i64 80, !318, i64 88, !318, i64 96, !318, i64 104, !318, i64 112, !318, i64 120, !318, i64 128, !318, i64 136, !318, i64 144, !318, i64 152, !318, i64 160, !318, i64 168, !318, i64 176, !318, i64 184, !318, i64 192, !318, i64 200, !318, i64 208, !318, i64 216, !318, i64 224, !318, i64 232, !318, i64 240, !318, i64 248, !318, i64 256, !318, i64 264, !318, i64 272, !318, i64 280, !318, i64 288}
!543 = !{!"vectorize", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40, !318, i64 48, !318, i64 56, !318, i64 64, !318, i64 72}
!544 = !{!"addr_space", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40, !318, i64 48}
!545 = !{!"calls", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40, !318, i64 48, !318, i64 56, !318, i64 64, !318, i64 72, !318, i64 80, !318, i64 88, !318, i64 96, !318, i64 104, !318, i64 112, !318, i64 120, !318, i64 128, !318, i64 136, !318, i64 144, !318, i64 152, !318, i64 160, !318, i64 168, !318, i64 176, !318, i64 184}
!546 = !{!"c", !318, i64 0}
!547 = !{!"cxx", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40, !318, i64 48, !318, i64 56, !318, i64 64, !318, i64 72, !318, i64 80, !318, i64 88, !318, i64 96}
!548 = !{!"emutls", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40, !318, i64 48, !318, i64 56, !295, i64 64, !295, i64 65}
!549 = !{!"target_option_hooks", !318, i64 0, !318, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !318, i64 40}
!550 = !{!352, !316, i64 40}
!551 = !{!"branch_weights", i32 186689, i32 14275}
!552 = !{!352, !318, i64 32}
!553 = !{!"branch_weights", i32 14275, i32 1}
!554 = !{!"cfgrtl.c:VEC_edge_base_unordered_remove"}
!555 = !{!"function_entry_count", i64 24087396}
!556 = !{!"cfgrtl.c:ei_next"}
!557 = !{!"branch_weights", i32 1, i32 24087397}
!558 = !{!"branch_weights", i32 24087397, i32 1}
!559 = !{!560, !316, i64 0}
!560 = !{!"", !316, i64 0, !318, i64 8}
!561 = !{!"cfgrtl.c:VEC_edge_gc_safe_push"}
!562 = !{!"cfgrtl.c:VEC_edge_gc_reserve"}
!563 = !{!"cfgrtl.c:VEC_edge_base_quick_push"}
!564 = !{!"cfgrtl.c:VEC_edge_base_space"}
!565 = !{!476, !316, i64 4}
!566 = !{!"function_entry_count", i64 84253}
!567 = !{!"branch_weights", i32 66462, i32 17793}
!568 = !{!"branch_weights", i32 5624, i32 12170}
!569 = !{!"branch_weights", i32 1246, i32 10925}
!570 = !{!"branch_weights", i32 12170, i32 1}
!571 = !{!"branch_weights", i32 1, i32 12170}
!572 = !{!"branch_weights", i32 72085, i32 1}
!573 = !{!"branch_weights", i32 44929, i32 27157}
!574 = !{!"branch_weights", i32 8, i32 27150}
!575 = !{!"branch_weights", i32 13941, i32 13210}
!576 = !{!"branch_weights", i32 1, i32 13210}
!577 = !{!"branch_weights", i32 44936, i32 1}
!578 = !{!"branch_weights", i32 77994, i32 6261}
!579 = !{!"branch_weights", i32 6261, i32 1}
!580 = !{!"branch_weights", i32 1, i32 6261}
!581 = !{!"branch_weights", i32 1, i32 77994}
!582 = !{!"branch_weights", i32 6546, i32 77709}
!583 = !{!"function_entry_count", i64 109607}
!584 = !{!"cfgrtl.c:single_pred_p"}
!585 = !{!"function_entry_count", i64 22369614}
!586 = !{!"cfgrtl.c:ei_cond"}
!587 = !{!"branch_weights", i32 21023673, i32 1345943}
!588 = !{!"function_entry_count", i64 25787}
!589 = !{!"cfgrtl.c:SET_BIT"}
!590 = !{!333, !333, i64 0}
!591 = !{!381, !318, i64 48}
!592 = distinct !{!592, !308}
!593 = distinct !{!593, !308}
!594 = distinct !{!594, !308}
!595 = distinct !{!595, !308}
!596 = distinct !{!596, !308}
!597 = distinct !{!597, !308}
!598 = distinct !{!598, !308}
!599 = !{!325, !318, i64 456}
!600 = distinct !{!600, !308}
!601 = !{!"function_entry_count", i64 75436}
!602 = !{!"branch_weights", i32 67944, i32 7494}
!603 = !{!"branch_weights", i32 5863, i32 62082}
!604 = !{!"branch_weights", i32 32399, i32 29684}
!605 = !{!"branch_weights", i32 61766, i32 317}
!606 = !{!"function_entry_count", i64 125333}
!607 = !{!"branch_weights", i32 125334, i32 1}
!608 = !{!"branch_weights", i32 1, i32 5835}
!609 = !{!"branch_weights", i32 21798, i32 103536}
!610 = !{!"branch_weights", i32 0, i32 21798}
!611 = distinct !{!611, !308}
!612 = !{!"branch_weights", i32 5835, i32 135461}
!613 = !{!"function_entry_count", i64 14802}
!614 = !{!"branch_weights", i32 1, i32 14802}
!615 = !{!"branch_weights", i32 14802, i32 749680}
!616 = distinct !{!616, !308}
!617 = distinct !{!617, !308}
!618 = !{!"cfgrtl.c:rtl_verify_flow_info"}
!619 = distinct !{!619, !308}
!620 = distinct !{!620, !308}
!621 = distinct !{!621, !308}
!622 = distinct !{!622, !308}
!623 = distinct !{!623, !308}
!624 = distinct !{!624, !308}
!625 = distinct !{!625, !308}
!626 = !{!"cfgrtl.c:rtl_dump_bb"}
!627 = distinct !{!627, !308}
!628 = !{!"cfgrtl.c:rtl_create_basic_block"}
!629 = !{!"branch_weights", i32 159233, i32 212}
!630 = !{!"function_entry_count", i64 184075}
!631 = !{!"cfgrtl.c:rtl_redirect_edge_and_branch"}
!632 = !{!"branch_weights", i32 184076, i32 1}
!633 = !{!"branch_weights", i32 1, i32 184076}
!634 = !{!"branch_weights", i32 182232, i32 1845}
!635 = !{!"branch_weights", i32 134498, i32 47735}
!636 = !{!"function_entry_count", i64 15246}
!637 = !{!"cfgrtl.c:rtl_redirect_edge_and_branch_force"}
!638 = !{!"branch_weights", i32 15247, i32 1}
!639 = !{!"branch_weights", i32 1, i32 15247}
!640 = !{!"function_entry_count", i64 78}
!641 = !{!"cfgrtl.c:rtl_can_remove_branch_p"}
!642 = !{!"branch_weights", i32 1, i32 79}
!643 = !{!"branch_weights", i32 79, i32 1}
!644 = !{!"branch_weights", i32 1017759, i32 6241}
!645 = !{!"branch_weights", i32 1107165423, i32 1040318225}
!646 = !{!"cfgrtl.c:rtl_delete_block"}
!647 = !{!"function_entry_count", i64 44539}
!648 = !{!"cfgrtl.c:rtl_split_block"}
!649 = !{!"branch_weights", i32 6757, i32 37784}
!650 = !{!"branch_weights", i32 1, i32 6757}
!651 = !{!"branch_weights", i32 6, i32 6752}
!652 = !{!"branch_weights", i32 1, i32 6752}
!653 = distinct !{!653, !308}
!654 = !{!"branch_weights", i32 6, i32 44535}
!655 = !{!"branch_weights", i32 1, i32 44539}
!656 = !{!"branch_weights", i32 44539, i32 80734}
!657 = distinct !{!657, !308}
!658 = !{!"function_entry_count", i64 7427}
!659 = !{!"cfgrtl.c:rtl_move_block_after"}
!660 = !{!"cfgrtl.c:rtl_can_merge_blocks"}
!661 = !{!"function_entry_count", i64 1235}
!662 = !{!"cfgrtl.c:rtl_merge_blocks"}
!663 = !{!"branch_weights", i32 1236, i32 1}
!664 = !{!"branch_weights", i32 1, i32 1235}
!665 = !{!"branch_weights", i32 0, i32 1}
!666 = distinct !{!666, !308}
!667 = !{!"branch_weights", i32 930, i32 307}
!668 = !{!"branch_weights", i32 1, i32 930}
!669 = !{!"branch_weights", i32 82, i32 1155}
!670 = !{!"branch_weights", i32 307, i32 930}
!671 = !{!"branch_weights", i32 43, i32 1194}
!672 = !{!"branch_weights", i32 1, i32 42}
!673 = !{!"branch_weights", i32 1, i32 1194}
!674 = !{!"branch_weights", i32 1155, i32 82}
!675 = !{!"branch_weights", i32 82, i32 1}
!676 = !{!"function_entry_count", i64 41641}
!677 = !{!"cfgrtl.c:rtl_split_edge"}
!678 = !{!"branch_weights", i32 41642, i32 1}
!679 = !{!"branch_weights", i32 35793, i32 5850}
!680 = !{!"branch_weights", i32 1, i32 2245}
!681 = !{!"branch_weights", i32 19000902, i32 33548}
!682 = !{!"branch_weights", i32 2245, i32 19032204}
!683 = distinct !{!683, !308}
!684 = !{!"branch_weights", i32 2147482120, i32 1528}
!685 = !{!"branch_weights", i32 62, i32 41581}
!686 = !{!"branch_weights", i32 1, i32 35793}
!687 = !{!"function_entry_count", i64 6756}
!688 = !{!"cfgrtl.c:rtl_make_forwarder_block"}
!689 = !{!"function_entry_count", i64 111}
!690 = !{!"cfgrtl.c:rtl_tidy_fallthru_edge"}
!691 = !{!"branch_weights", i32 112, i32 1}
!692 = !{!"branch_weights", i32 1, i32 112}
!693 = !{!"function_entry_count", i64 235287}
!694 = !{!"cfgrtl.c:rtl_block_ends_with_call_p"}
!695 = !{!"branch_weights", i32 1, i32 14201}
!696 = !{!"branch_weights", i32 127, i32 3547985}
!697 = distinct !{!697, !308}
!698 = !{!"branch_weights", i32 221757, i32 1}
!699 = !{!"branch_weights", i32 -1043875356, i32 9999059, i32 9368265}
!700 = !{!"branch_weights", i32 14201, i32 207563}
!701 = !{!"cfgrtl.c:rtl_block_ends_with_condjump_p"}
!702 = !{!"cfgrtl.c:rtl_flow_call_edges_add"}
!703 = distinct !{!703, !308}
!704 = distinct !{!704, !308}
!705 = distinct !{!705, !308}
!706 = !{!"cfgrtl.c:rtl_verify_flow_info_1"}
!707 = distinct !{!707, !308}
!708 = distinct !{!708, !308}
!709 = distinct !{!709, !308}
!710 = distinct !{!710, !308}
!711 = !{!374, !316, i64 48}
!712 = distinct !{!712, !308}
!713 = distinct !{!713, !308}
!714 = distinct !{!714, !308}
!715 = distinct !{!715, !308}
!716 = !{!"function_entry_count", i64 159865}
!717 = !{!"cfgrtl.c:VEC_basic_block_base_length"}
!718 = !{!"branch_weights", i32 1, i32 159866}
!719 = !{!720, !316, i64 0}
!720 = !{!"VEC_basic_block_base", !316, i64 0, !316, i64 4, !295, i64 8}
!721 = !{!"function_entry_count", i64 211}
!722 = !{!"cfgrtl.c:VEC_basic_block_gc_safe_grow_cleared"}
!723 = !{!"cfgrtl.c:VEC_basic_block_gc_safe_grow"}
!724 = !{!"branch_weights", i32 1, i32 212}
!725 = !{}
!726 = !{!"cfgrtl.c:VEC_basic_block_base_address"}
!727 = !{!"cfgrtl.c:VEC_basic_block_gc_reserve_exact"}
!728 = !{!"branch_weights", i32 212, i32 1}
!729 = !{!"cfgrtl.c:VEC_basic_block_base_space"}
!730 = !{!720, !316, i64 4}
!731 = !{!"function_entry_count", i64 222266}
!732 = !{!"cfgrtl.c:redirect_branch_edge"}
!733 = !{!"branch_weights", i32 87770, i32 134498}
!734 = !{!"branch_weights", i32 114978701, i32 1309}
!735 = !{!"branch_weights", i32 31594, i32 56177}
!736 = !{!"branch_weights", i32 1, i32 31593}
!737 = !{!"branch_weights", i32 1, i32 56177}
!738 = !{!"branch_weights", i32 36073, i32 174300}
!739 = !{!"branch_weights", i32 1, i32 36073}
!740 = !{!"branch_weights", i32 31593, i32 178779}
!741 = distinct !{!741, !308}
!742 = !{!"branch_weights", i32 87770, i32 1}
!743 = !{!"branch_weights", i32 1, i32 87770}
!744 = !{!"function_entry_count", i64 92248}
!745 = !{!"cfgrtl.c:patch_jump_insn"}
!746 = !{!"branch_weights", i32 90834, i32 1416}
!747 = !{!"branch_weights", i32 1, i32 1416}
!748 = !{!"branch_weights", i32 1416, i32 1}
!749 = !{!"branch_weights", i32 1415, i32 1}
!750 = !{!"branch_weights", i32 23420, i32 76108}
!751 = !{!"branch_weights", i32 98112, i32 1415}
!752 = distinct !{!752, !308}
!753 = !{!"branch_weights", i32 -1450791111, i32 1002528}
!754 = !{!"branch_weights", i32 1518188, i32 2145965460}
!755 = !{!"branch_weights", i32 90834, i32 1}
!756 = distinct !{!756, !308}
!757 = !{!"branch_weights", i32 55146, i32 35689}
!758 = !{!"branch_weights", i32 32123, i32 3567}
!759 = !{!"branch_weights", i32 2147444707, i32 38941}
!760 = !{!"branch_weights", i32 1, i32 87268}
!761 = !{!"cfgrtl.c:first_insn_after_basic_block_note"}
!762 = !{!"branch_weights", i32 6275, i32 483}
!763 = !{!"branch_weights", i32 6757, i32 1}
!764 = !{!"function_entry_count", i64 25354}
!765 = !{!"cfgrtl.c:single_succ"}
!766 = !{!"cfgrtl.c:need_fake_edge_p"}
!767 = !{!"cfgrtl.c:VEC_basic_block_base_index"}
!768 = !{!"function_entry_count", i64 24803}
!769 = !{!"cfgrtl.c:cfg_layout_create_basic_block"}
!770 = !{!"function_entry_count", i64 110975}
!771 = !{!"cfgrtl.c:cfg_layout_redirect_edge_and_branch"}
!772 = !{!"branch_weights", i32 110976, i32 1}
!773 = !{!"branch_weights", i32 1, i32 110976}
!774 = !{!"branch_weights", i32 108933, i32 2044}
!775 = !{!"branch_weights", i32 0, i32 -2147483648}
!776 = !{!"branch_weights", i32 40036, i32 68898}
!777 = !{!"branch_weights", i32 51943, i32 16956}
!778 = !{!"branch_weights", i32 51943, i32 1}
!779 = !{!"branch_weights", i32 1, i32 51943}
!780 = !{!"branch_weights", i32 68898, i32 1}
!781 = !{!"branch_weights", i32 108933, i32 1}
!782 = !{!"function_entry_count", i64 28513}
!783 = !{!"cfgrtl.c:cfg_layout_redirect_edge_and_branch_force"}
!784 = !{!"branch_weights", i32 1, i32 28514}
!785 = !{!"function_entry_count", i64 93708}
!786 = !{!"cfgrtl.c:cfg_layout_delete_block"}
!787 = !{!338, !318, i64 16}
!788 = !{!"branch_weights", i32 93664, i32 46}
!789 = !{!"branch_weights", i32 1, i32 46}
!790 = !{!"branch_weights", i32 46, i32 161}
!791 = distinct !{!791, !308}
!792 = !{!"branch_weights", i32 54562, i32 39148}
!793 = !{!"branch_weights", i32 39148, i32 1}
!794 = !{!"branch_weights", i32 1, i32 39148}
!795 = !{!"branch_weights", i32 39148, i32 0}
!796 = distinct !{!796, !308}
!797 = distinct !{!797, !308}
!798 = !{!"branch_weights", i32 1322, i32 92388}
!799 = !{!"branch_weights", i32 1, i32 93709}
!800 = !{!"branch_weights", i32 93632, i32 78}
!801 = !{!"branch_weights", i32 78, i32 207}
!802 = distinct !{!802, !308}
!803 = !{!"branch_weights", i32 75, i32 4}
!804 = !{!"cfgrtl.c:cfg_layout_split_block"}
!805 = !{!"cfgrtl.c:cfg_layout_can_merge_blocks_p"}
!806 = !{!"branch_weights", i32 25355, i32 1}
!807 = !{!"branch_weights", i32 1, i32 25355}
!808 = !{!"branch_weights", i32 31002159, i32 579316761}
!809 = !{!"branch_weights", i32 24069, i32 1}
!810 = !{!"branch_weights", i32 1, i32 24069}
!811 = !{!"branch_weights", i32 5152, i32 18918}
!812 = !{!"branch_weights", i32 211233, i32 26342176}
!813 = !{!"function_entry_count", i64 24068}
!814 = !{!"cfgrtl.c:cfg_layout_merge_blocks"}
!815 = !{!"branch_weights", i32 12279, i32 11791}
!816 = distinct !{!816, !308}
!817 = distinct !{!817, !308}
!818 = !{!"branch_weights", i32 24068, i32 2}
!819 = !{!"branch_weights", i32 15455, i32 8615}
!820 = !{!"branch_weights", i32 8615, i32 1}
!821 = !{!"branch_weights", i32 6951, i32 1665}
!822 = !{!"branch_weights", i32 15455, i32 1}
!823 = !{!"branch_weights", i32 14303, i32 1153}
!824 = !{!"branch_weights", i32 18649, i32 5421}
!825 = !{!"branch_weights", i32 5421, i32 1}
!826 = distinct !{!826, !308}
!827 = !{!"function_entry_count", i64 12169}
!828 = !{!"cfgrtl.c:cfg_layout_split_edge"}
!829 = !{!"cfgrtl.c:rtl_lv_add_condition_to_bb"}
!830 = !{!"cfgrtl.c:rtl_extract_cond_bb_edges"}
