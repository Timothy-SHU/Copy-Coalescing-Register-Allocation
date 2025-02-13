; ModuleID = 'bt-load.c'
source_filename = "bt-load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.btr_def_s = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.btr_user_s = type { ptr, ptr, i32, ptr, ptr, i32, i32, i8 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.defs_uses_info = type { ptr, i64, i64, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.btr_def_group_s = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [5 x i8] c"btl1\00", align 1
@pass_branch_target_load_optimize1 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_branch_target_load_optimize1, ptr @rest_of_handle_branch_target_load_optimize1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1027 } }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"btl2\00", align 1
@pass_branch_target_load_optimize2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_handle_branch_target_load_optimize2, ptr @rest_of_handle_branch_target_load_optimize2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@flag_branch_target_load_optimize = external local_unnamed_addr global i32, align 4
@epilogue_completed = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@issue_rate = internal unnamed_addr global i32 0, align 4
@optimize = external local_unnamed_addr global i32, align 4
@migrate_btrl_obstack = internal global %struct.obstack zeroinitializer, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Basic block %d: count = %ld loop-depth = %d idom = %d\0A\00", align 1
@all_btrs = internal unnamed_addr global i64 0, align 8
@first_btr = internal unnamed_addr global i32 0, align 4
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@last_btr = internal unnamed_addr global i32 0, align 4
@btrs_live = internal unnamed_addr global ptr null, align 8
@btrs_live_at_end = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Putting insn %d back on queue with priority %d\0A\00", align 1
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"bt-load.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.6 = private unnamed_addr constant [71 x i8] c"Found target reg definition: sets %u { bb %d, insn %d }%s priority %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c":not const\00", align 1
@btr_reference_found = internal unnamed_addr global ptr null, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@.str.9 = private unnamed_addr constant [36 x i8] c"Uses target reg: { bb %d, insn %d }\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c": unambiguous use of reg %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"BB%d live:\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Def in insn %d reaches use in insn %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"(use %d has multiple reaching defs)\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"Attempting to migrate pt from insn %d (cost = %d, min_cost = %d) ... \00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"it's not migratable\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"it's already combined with another pt\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"trying block %d ...\00", align 1
@flag_btr_bb_exclusive = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"Now btrs live in range are: \00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"giving up because there are no free target registers\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"failed to move\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"Adding end of block %d and rest of %d to live range\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Now live btrs are \00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Adding block %d to live range\0A\00", align 1
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@.str.27 = private unnamed_addr constant [43 x i8] c"migrating to basic block %d, using reg %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"New pt is insn %d, inserted after insn %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"Combining def in insn %d with def in insn %d\0A\00", align 1
@flag_branch_target_load_optimize2 = external local_unnamed_addr global i32, align 4
@rest_of_handle_branch_target_load_optimize2.warned = internal unnamed_addr global i1 false, align 4
@.str.30 = private unnamed_addr constant [73 x i8] c"branch target register load optimization is not intended to be run twice\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_branch_target_load_optimize1() #0 {
  %1 = load i32, ptr @flag_branch_target_load_optimize, align 4, !tbaa !5
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_branch_target_load_optimize1() #1 {
  %1 = load i32, ptr @epilogue_completed, align 4, !tbaa !5
  %2 = trunc i32 %1 to i8
  tail call fastcc void @branch_target_load_optimize(i8 noundef zeroext %2) #20
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_branch_target_load_optimize2() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_branch_target_load_optimize2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_branch_target_load_optimize2() #1 {
  %1 = load i32, ptr @flag_branch_target_load_optimize, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @flag_branch_target_load_optimize2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i1, ptr @rest_of_handle_branch_target_load_optimize2.warned, align 4
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.30) #21
  store i1 true, ptr @rest_of_handle_branch_target_load_optimize2.warned, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, ptr @epilogue_completed, align 4, !tbaa !5
  %12 = trunc i32 %11 to i8
  tail call fastcc void @branch_target_load_optimize(i8 noundef zeroext %12) #20
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @branch_target_load_optimize(i8 noundef zeroext %0) unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 33), align 8, !tbaa !9
  %3 = tail call i32 %2() #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 2), align 8, !tbaa !23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 %6() #21
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi i32 [ %9, %8 ], [ 1, %5 ]
  store i32 %11, ptr @issue_rate, align 4, !tbaa !5
  %12 = icmp eq i8 %0, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, ptr @optimize, align 4, !tbaa !5
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = tail call zeroext i8 @cleanup_cfg(i32 noundef %16) #21
  br label %18

18:                                               ; preds = %13, %10
  tail call void @df_analyze() #21
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 34), align 8, !tbaa !24
  %20 = tail call zeroext i8 %19(i8 noundef zeroext %0) #21
  %21 = zext i8 %20 to i32
  tail call fastcc void @migrate_btr_defs(i32 noundef %3, i32 noundef %21) #20
  tail call void @free_dominance_info(i32 noundef 1) #21
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @migrate_btr_defs(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @fibheap_new() #21
  %4 = tail call i32 @_obstack_begin(ptr noundef nonnull @migrate_btrl_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #21
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @cfun, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !28
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %36

14:                                               ; preds = %7, %14
  %15 = phi ptr [ %32, %14 ], [ %10, %7 ]
  %16 = phi i32 [ %29, %14 ], [ 2, %7 ]
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !30
  %19 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %18, i32 noundef %16) #20
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !31
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 10
  %24 = load i32, ptr %23, align 4, !tbaa !33
  %25 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %19) #21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !34
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.2, i32 noundef %16, i64 noundef %22, i32 noundef %24, i32 noundef %27) #20
  %29 = add nuw nsw i32 %16, 1
  %30 = load ptr, ptr @cfun, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !26
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !28
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %14, label %36, !llvm.loop !35

36:                                               ; preds = %14, %7, %2
  store i64 0, ptr @all_btrs, align 8, !tbaa !37
  store i32 -1, ptr @first_btr, align 4, !tbaa !5
  %37 = sext i32 %0 to i64
  %38 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %37
  %39 = icmp eq i32 %1, 0
  br label %40

40:                                               ; preds = %36, %62
  %41 = phi i64 [ 0, %36 ], [ %63, %62 ]
  %42 = load i64, ptr %38, align 8, !tbaa !37
  %43 = shl nuw nsw i64 1, %41
  %44 = and i64 %42, %43
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %40
  br i1 %39, label %47, label %55

47:                                               ; preds = %46
  %48 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %41
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = trunc i64 %41 to i32
  %53 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %52) #21
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51, %47, %46
  %56 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %57 = or i64 %56, %43
  store i64 %57, ptr @all_btrs, align 8, !tbaa !37
  %58 = trunc i64 %41 to i32
  store i32 %58, ptr @last_btr, align 4, !tbaa !5
  %59 = load i32, ptr @first_btr, align 4, !tbaa !5
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 %58, ptr @first_btr, align 4, !tbaa !5
  br label %62

62:                                               ; preds = %40, %51, %61, %55
  %63 = add nuw nsw i64 %41, 1
  %64 = icmp eq i64 %63, 53
  br i1 %64, label %65, label %40, !llvm.loop !39

65:                                               ; preds = %62
  %66 = load ptr, ptr @cfun, align 8, !tbaa !25
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !26
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !28
  %71 = sext i32 %70 to i64
  %72 = tail call ptr @xcalloc(i64 noundef %71, i64 noundef 8) #21
  store ptr %72, ptr @btrs_live, align 8, !tbaa !25
  %73 = load ptr, ptr @cfun, align 8, !tbaa !25
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !26
  %76 = getelementptr inbounds %struct.control_flow_graph, ptr %75, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !28
  %78 = sext i32 %77 to i64
  %79 = tail call ptr @xcalloc(i64 noundef %78, i64 noundef 8) #21
  store ptr %79, ptr @btrs_live_at_end, align 8, !tbaa !25
  tail call fastcc void @build_btr_def_use_webs(ptr noundef %3) #20
  %80 = tail call i32 @fibheap_empty(ptr noundef %3) #21
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %65, %107
  %83 = tail call ptr @fibheap_extract_min(ptr noundef %3) #21
  %84 = tail call i64 @fibheap_min_key(ptr noundef %3) #21
  %85 = trunc i64 %84 to i32
  %86 = sub i32 0, %85
  %87 = tail call fastcc i32 @migrate_btr_def(ptr noundef %83, i32 noundef %86) #20, !range !40
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.btr_def_s, ptr %83, i64 0, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !41
  %92 = sub nsw i32 0, %91
  %93 = sext i32 %92 to i64
  %94 = tail call ptr @fibheap_insert(ptr noundef %3, i64 noundef %93, ptr noundef %83) #21
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.btr_def_s, ptr %83, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !43
  %100 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !38
  %102 = load i32, ptr %90, align 4, !tbaa !41
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %95, ptr noundef nonnull @.str.3, i32 noundef %101, i32 noundef %102) #20
  br label %107

104:                                              ; preds = %82
  %105 = getelementptr inbounds %struct.btr_def_s, ptr %83, i64 0, i32 13
  %106 = load ptr, ptr %105, align 8, !tbaa !44
  tail call void @bitmap_obstack_free(ptr noundef %106) #21
  store ptr null, ptr %105, align 8, !tbaa !44
  br label %107

107:                                              ; preds = %89, %97, %104
  %108 = tail call i32 @fibheap_empty(ptr noundef %3) #21
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %82, label %110, !llvm.loop !45

110:                                              ; preds = %107, %65
  %111 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  tail call void @free(ptr noundef %111) #20
  %112 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  tail call void @free(ptr noundef %112) #20
  %113 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 1), align 8, !tbaa !46
  %114 = ptrtoint ptr %113 to i64
  %115 = sub i64 0, %114
  store i64 %115, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !49
  %119 = ptrtoint ptr %118 to i64
  %120 = sub i64 %119, %114
  %121 = icmp sgt i64 %120, %115
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = getelementptr inbounds i8, ptr %113, i64 %115
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !50
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !51
  br label %126

124:                                              ; preds = %117, %110
  %125 = getelementptr inbounds i8, ptr %113, i64 %115
  tail call void @obstack_free(ptr noundef nonnull @migrate_btrl_obstack, ptr noundef %125) #21
  br label %126

126:                                              ; preds = %124, %122
  tail call void @fibheap_delete(ptr noundef %3) #21
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @fibheap_new() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  ret ptr %5
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_btr_def_use_webs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call i32 @get_max_uid() #21
  %3 = sext i32 %2 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #21
  %5 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #21
  %6 = load i32, ptr @last_btr, align 4, !tbaa !5
  %7 = load i32, ptr @first_btr, align 4, !tbaa !5
  %8 = add i32 %6, 1
  %9 = sub i32 %8, %7
  %10 = tail call ptr @sbitmap_vector_alloc(i32 noundef %9, i32 noundef %2) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !28
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %2) #21
  %17 = load ptr, ptr @cfun, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !26
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !28
  %22 = sext i32 %21 to i64
  %23 = tail call ptr @xcalloc(i64 noundef %22, i64 noundef 8) #21
  %24 = load i32, ptr @last_btr, align 4, !tbaa !5
  %25 = load i32, ptr @first_btr, align 4, !tbaa !5
  %26 = add i32 %24, 1
  %27 = sub i32 %26, %25
  tail call void @sbitmap_vector_zero(ptr noundef %10, i32 noundef %27) #21
  tail call fastcc void @compute_defs_uses_and_gen(ptr noundef %0, ptr noundef %4, ptr noundef %5, ptr noundef %10, ptr noundef %16, ptr noundef %23) #20
  %28 = load ptr, ptr @cfun, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !28
  %33 = tail call ptr @sbitmap_vector_alloc(i32 noundef %32, i32 noundef %2) #21
  tail call fastcc void @compute_kill(ptr noundef %33, ptr noundef %10, ptr noundef %23) #20
  tail call void @free(ptr noundef %23) #20
  %34 = load ptr, ptr @cfun, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !26
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !28
  %39 = tail call ptr @sbitmap_vector_alloc(i32 noundef %38, i32 noundef %2) #21
  tail call fastcc void @compute_out(ptr noundef %39, ptr noundef %16, ptr noundef %33, i32 noundef %2) #20
  tail call void @free(ptr noundef %16) #20
  tail call void @free(ptr noundef %33) #20
  tail call fastcc void @link_btr_uses(ptr noundef %4, ptr noundef %5, ptr noundef %39, ptr noundef %10, i32 noundef %2) #20
  tail call void @free(ptr noundef %39) #20
  tail call void @free(ptr noundef %10) #20
  tail call void @free(ptr noundef %5) #20
  tail call void @free(ptr noundef %4) #20
  ret void
}

; Function Attrs: optsize
declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @fibheap_min_key(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @migrate_btr_def(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.16, i32 noundef %12, i32 noundef %14, i32 noundef %1) #20
  br label %16

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 9
  %22 = load i8, ptr %21, align 8, !tbaa !53
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20, %16
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %26 = icmp eq ptr %25, null
  br i1 %26, label %175, label %27

27:                                               ; preds = %24
  %28 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 20, i64 1, ptr nonnull %25)
  br label %175

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %175, label %36

36:                                               ; preds = %33
  %37 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 38, i64 1, ptr nonnull %34)
  br label %175

38:                                               ; preds = %29
  call fastcc void @btr_def_live_range(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %40 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 13
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  tail call void @bitmap_copy(ptr noundef %39, ptr noundef %41) #21
  %42 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  %44 = tail call i32 @insn_default_latency(ptr noundef %43) #21
  %45 = load i32, ptr @issue_rate, align 4, !tbaa !5
  %46 = mul nsw i32 %45, %44
  %47 = load ptr, ptr %30, align 8, !tbaa !25
  %48 = icmp eq ptr %47, null
  %49 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  br i1 %48, label %74, label %51

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 3
  br label %53

53:                                               ; preds = %51, %71
  %54 = phi ptr [ %47, %51 ], [ %72, %71 ]
  %55 = getelementptr inbounds %struct.btr_user_s, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = icmp eq ptr %56, %50
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.btr_user_s, ptr %54, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !58
  %61 = load i32, ptr %52, align 8, !tbaa !59
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = add nsw i32 %61, %46
  %65 = icmp sgt i32 %64, %60
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load ptr, ptr %42, align 8, !tbaa !43
  %68 = sub nsw i32 %64, %60
  %69 = tail call fastcc i32 @can_move_up(ptr noundef %50, ptr noundef %67, i32 noundef %68) #20, !range !40
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %53, %58, %63, %66
  %72 = load ptr, ptr %54, align 8, !tbaa !25
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %53, !llvm.loop !60

74:                                               ; preds = %71, %66, %38
  %75 = phi i32 [ 0, %38 ], [ 1, %66 ], [ 0, %71 ]
  %76 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %77 = tail call fastcc i32 @basic_block_freq(ptr noundef %50) #20
  %78 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %50) #21
  %79 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 6
  %80 = icmp eq ptr %78, null
  br i1 %80, label %166, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds i8, ptr %4, i64 8
  br label %83

83:                                               ; preds = %81, %156
  %84 = phi i32 [ %75, %81 ], [ %159, %156 ]
  %85 = phi i32 [ %77, %81 ], [ %158, %156 ]
  %86 = phi ptr [ %78, %81 ], [ %160, %156 ]
  %87 = phi i32 [ 0, %81 ], [ %157, %156 ]
  %88 = load ptr, ptr @cfun, align 8, !tbaa !25
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !26
  %91 = load ptr, ptr %90, align 8, !tbaa !61
  %92 = icmp eq ptr %86, %91
  br i1 %92, label %162, label %93

93:                                               ; preds = %83
  %94 = load i32, ptr %79, align 4, !tbaa !41
  %95 = icmp slt i32 %94, %1
  br i1 %95, label %162, label %96

96:                                               ; preds = %93
  %97 = tail call fastcc i32 @basic_block_freq(ptr noundef nonnull %86) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 1
  %99 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %98) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !62
  store ptr %99, ptr %82, align 8, !tbaa.struct !63
  %100 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %99, ptr noundef nonnull %5) #20, !range !64
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %96, %108
  %103 = load ptr, ptr %5, align 8, !tbaa !25
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !65
  %106 = and i32 %105, 14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %156

108:                                              ; preds = %102
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %109 = load i32, ptr %4, align 8
  %110 = load ptr, ptr %82, align 8
  %111 = call fastcc zeroext i8 @ei_cond(i32 %109, ptr %110, ptr noundef nonnull %5) #20, !range !64
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %102, !llvm.loop !67

113:                                              ; preds = %108, %96
  %114 = load ptr, ptr %5, align 8, !tbaa !25
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %156

116:                                              ; preds = %113
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %121 = load i32, ptr %120, align 8, !tbaa !34
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %117, ptr noundef nonnull @.str.19, i32 noundef %121) #20
  br label %123

123:                                              ; preds = %119, %116
  %124 = icmp slt i32 %97, %85
  br i1 %124, label %129, label %125

125:                                              ; preds = %123
  %126 = icmp eq i32 %97, %85
  %127 = icmp ne i32 %84, 0
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %156

129:                                              ; preds = %125, %123
  %130 = load ptr, ptr %76, align 8, !tbaa !55
  %131 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !5
  call fastcc void @augment_live_range(ptr noundef %39, ptr noundef nonnull %3, ptr noundef %130, ptr noundef nonnull %86, i32 noundef %131) #20
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i64, ptr %3, align 8, !tbaa !37
  br label %141

136:                                              ; preds = %129
  %137 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 28, i64 1, ptr nonnull %132)
  %138 = load i64, ptr %3, align 8, !tbaa !37
  tail call fastcc void @dump_hard_reg_set(i64 noundef %138) #20
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %140 = tail call i32 @fputc(i32 10, ptr %139)
  br label %141

141:                                              ; preds = %134, %136
  %142 = phi i64 [ %135, %134 ], [ %138, %136 ]
  %143 = tail call fastcc i32 @choose_btr(i64 noundef %142) #20
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  call fastcc void @move_btr_def(ptr noundef nonnull %86, i32 noundef %143, ptr noundef nonnull %0, ptr noundef %39, ptr noundef nonnull %3) #20
  %146 = load ptr, ptr %40, align 8, !tbaa !44
  tail call void @bitmap_copy(ptr noundef %39, ptr noundef %146) #21
  %147 = load ptr, ptr %76, align 8, !tbaa !55
  %148 = tail call fastcc i32 @basic_block_freq(ptr noundef %147) #20
  br label %156

149:                                              ; preds = %141
  %150 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 53, i64 1, ptr nonnull %150)
  br label %154

154:                                              ; preds = %152, %149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  %155 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %86) #21
  br label %162

156:                                              ; preds = %102, %125, %145, %113
  %157 = phi i32 [ %87, %113 ], [ %87, %125 ], [ 1, %145 ], [ %87, %102 ]
  %158 = phi i32 [ %85, %113 ], [ %85, %125 ], [ %148, %145 ], [ %85, %102 ]
  %159 = phi i32 [ %84, %113 ], [ %84, %125 ], [ 0, %145 ], [ %84, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  %160 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %86) #21
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %83, !llvm.loop !68

162:                                              ; preds = %93, %156, %83, %154
  %163 = phi i32 [ %87, %154 ], [ %87, %83 ], [ %157, %156 ], [ %87, %93 ]
  %164 = phi i32 [ 1, %154 ], [ 0, %83 ], [ 0, %156 ], [ 0, %93 ]
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %74, %162
  %167 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %167)
  br label %171

171:                                              ; preds = %166, %169, %162
  %172 = phi i32 [ %164, %162 ], [ 1, %169 ], [ 1, %166 ]
  tail call void @bitmap_obstack_free(ptr noundef %39) #21
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i32
  br label %175

175:                                              ; preds = %33, %36, %24, %27, %171
  %176 = phi i32 [ %174, %171 ], [ 0, %27 ], [ 0, %24 ], [ 0, %36 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %176
}

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fibheap_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_defs_uses_and_gen(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #1 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.defs_uses_info, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !28
  tail call void @sbitmap_vector_zero(ptr noundef %4, i32 noundef %15) #21
  %16 = load ptr, ptr @cfun, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !28
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %336

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.defs_uses_info, ptr %8, i64 0, i32 3
  %24 = getelementptr inbounds %struct.defs_uses_info, ptr %8, i64 0, i32 4
  %25 = getelementptr inbounds %struct.defs_uses_info, ptr %8, i64 0, i32 2
  %26 = getelementptr inbounds %struct.defs_uses_info, ptr %8, i64 0, i32 1
  br label %27

27:                                               ; preds = %22, %327
  %28 = phi i64 [ 2, %22 ], [ %328, %327 ]
  %29 = phi ptr [ %18, %22 ], [ %331, %327 ]
  %30 = phi i32 [ 0, %22 ], [ %264, %327 ]
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = trunc i64 %28 to i32
  %34 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %32, i32 noundef %33) #20
  store ptr null, ptr %8, align 8, !tbaa !69
  %35 = getelementptr inbounds ptr, ptr %4, i64 %28
  %36 = load ptr, ptr %35, align 8, !tbaa !25
  store ptr %36, ptr %23, align 8, !tbaa !71
  store ptr %3, ptr %24, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %37 = load i32, ptr @first_btr, align 4, !tbaa !5
  %38 = load i32, ptr @last_btr, align 4, !tbaa !5
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %62, label %40

40:                                               ; preds = %27
  %41 = load i64, ptr @all_btrs, align 8, !tbaa !37
  br label %42

42:                                               ; preds = %40, %57
  %43 = phi i64 [ %58, %57 ], [ %41, %40 ]
  %44 = phi i32 [ %59, %57 ], [ %37, %40 ]
  %45 = zext nneg i32 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = and i64 %43, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = call ptr @df_get_live_in(ptr noundef %34) #21
  %51 = call i32 @bitmap_bit_p(ptr noundef %50, i32 noundef %44) #21
  %52 = icmp eq i32 %51, 0
  %53 = load i64, ptr @all_btrs, align 8, !tbaa !37
  br i1 %52, label %57, label %54

54:                                               ; preds = %49
  %55 = load i64, ptr %25, align 8, !tbaa !73
  %56 = or i64 %55, %46
  store i64 %56, ptr %25, align 8, !tbaa !73
  br label %57

57:                                               ; preds = %42, %49, %54
  %58 = phi i64 [ %43, %42 ], [ %53, %49 ], [ %53, %54 ]
  %59 = add nsw i32 %44, 1
  %60 = load i32, ptr @last_btr, align 4, !tbaa !5
  %61 = icmp slt i32 %44, %60
  br i1 %61, label %42, label %62, !llvm.loop !74

62:                                               ; preds = %57, %27
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !38
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !75
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %68 = load ptr, ptr %67, align 8, !tbaa !38
  %69 = load ptr, ptr %64, align 8, !tbaa !38
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %263, label %71

71:                                               ; preds = %62, %257
  %72 = phi ptr [ %261, %257 ], [ %69, %62 ]
  %73 = phi i32 [ %260, %257 ], [ %30, %62 ]
  %74 = phi ptr [ %258, %257 ], [ null, %62 ]
  %75 = load i32, ptr %72, align 8
  %76 = and i32 %75, 65535
  %77 = add nsw i32 %76, -7
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %79, label %257

79:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  %80 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !38
  %82 = call fastcc i32 @insn_sets_btr_p(ptr noundef nonnull %72, i32 noundef 0, ptr noundef nonnull %9) #20, !range !40
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %117, label %84

84:                                               ; preds = %79
  %85 = load i32, ptr %9, align 4, !tbaa !5
  %86 = load i64, ptr %25, align 8, !tbaa !73
  %87 = zext nneg i32 %85 to i64
  %88 = shl nuw i64 1, %87
  %89 = and i64 %88, %86
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call fastcc ptr @add_btr_def(ptr noundef %0, ptr noundef %34, i32 noundef %73, ptr noundef nonnull %72, i32 noundef %85, i32 noundef %91, ptr noundef nonnull %7) #20
  %93 = sext i32 %81 to i64
  %94 = getelementptr inbounds ptr, ptr %1, i64 %93
  store ptr %92, ptr %94, align 8, !tbaa !25
  %95 = load i32, ptr %9, align 4, !tbaa !5
  %96 = zext nneg i32 %95 to i64
  %97 = shl nuw i64 1, %96
  %98 = load <2 x i64>, ptr %26, align 8, !tbaa !37
  %99 = insertelement <2 x i64> poison, i64 %97, i64 0
  %100 = shufflevector <2 x i64> %99, <2 x i64> poison, <2 x i32> zeroinitializer
  %101 = or <2 x i64> %100, %98
  store <2 x i64> %101, ptr %26, align 8, !tbaa !37
  %102 = load ptr, ptr %35, align 8, !tbaa !25
  %103 = load i32, ptr @first_btr, align 4, !tbaa !5
  %104 = sub nsw i32 %95, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %3, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !25
  call void @sbitmap_difference(ptr noundef %102, ptr noundef %102, ptr noundef %107) #21
  %108 = load ptr, ptr %35, align 8, !tbaa !25
  call fastcc void @SET_BIT(ptr noundef %108, i32 noundef %81) #20
  store ptr %74, ptr %92, align 8, !tbaa !77
  %109 = load i32, ptr %9, align 4, !tbaa !5
  %110 = load i32, ptr @first_btr, align 4, !tbaa !5
  %111 = sub nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %3, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !25
  call fastcc void @SET_BIT(ptr noundef %114, i32 noundef %81) #20
  %115 = load i32, ptr %9, align 4, !tbaa !5
  %116 = load ptr, ptr %8, align 8, !tbaa !69
  call fastcc void @note_other_use_this_block(i32 noundef %115, ptr noundef %116) #20
  br label %255

117:                                              ; preds = %79
  %118 = load ptr, ptr @cfun, align 8, !tbaa !25
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 20
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 1048576
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !38
  br i1 %122, label %149, label %125

125:                                              ; preds = %117
  %126 = load i32, ptr %124, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 19
  br i1 %128, label %129, label %149

129:                                              ; preds = %125
  %130 = load ptr, ptr %8, align 8, !tbaa !25
  %131 = icmp eq ptr %130, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %129, %139
  %133 = phi ptr [ %140, %139 ], [ %130, %129 ]
  %134 = getelementptr inbounds %struct.btr_user_s, ptr %133, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !78
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.btr_user_s, ptr %133, i64 0, i32 7
  store i8 1, ptr %138, align 8, !tbaa !79
  br label %139

139:                                              ; preds = %132, %137
  %140 = load ptr, ptr %133, align 8, !tbaa !25
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %132, !llvm.loop !80

142:                                              ; preds = %139, %129
  %143 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %144 = load <2 x i64>, ptr %26, align 8, !tbaa !37
  %145 = insertelement <2 x i64> poison, i64 %143, i64 0
  %146 = shufflevector <2 x i64> %145, <2 x i64> poison, <2 x i32> zeroinitializer
  %147 = or <2 x i64> %144, %146
  store <2 x i64> %147, ptr %26, align 8, !tbaa !37
  %148 = load ptr, ptr %23, align 8, !tbaa !71
  call void @sbitmap_zero(ptr noundef %148) #21
  br label %255

149:                                              ; preds = %117, %125
  %150 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 1
  %151 = call fastcc i32 @btr_referenced_p(ptr noundef %124, ptr noundef null) #20
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %195, label %153

153:                                              ; preds = %149
  %154 = call fastcc ptr @new_btr_user(ptr noundef %34, i32 noundef %73, ptr noundef nonnull %72) #20
  %155 = sext i32 %81 to i64
  %156 = getelementptr inbounds ptr, ptr %2, i64 %155
  store ptr %154, ptr %156, align 8, !tbaa !25
  %157 = getelementptr inbounds %struct.btr_user_s, ptr %154, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !78
  %159 = icmp eq ptr %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %153
  %161 = call fastcc i32 @rhs_regno(ptr noundef nonnull %158) #20
  %162 = zext nneg i32 %161 to i64
  %163 = shl nuw i64 1, %162
  %164 = load i64, ptr %25, align 8, !tbaa !73
  %165 = or i64 %163, %164
  store i64 %165, ptr %25, align 8, !tbaa !73
  br label %193

166:                                              ; preds = %153
  %167 = load i32, ptr @first_btr, align 4, !tbaa !5
  %168 = load i32, ptr @last_btr, align 4, !tbaa !5
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %191, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.btr_user_s, ptr %154, i64 0, i32 3
  br label %172

172:                                              ; preds = %170, %188
  %173 = phi i32 [ %167, %170 ], [ %179, %188 ]
  %174 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %175 = zext nneg i32 %173 to i64
  %176 = shl nuw i64 1, %175
  %177 = and i64 %174, %176
  %178 = icmp eq i64 %177, 0
  %179 = add nsw i32 %173, 1
  br i1 %178, label %188, label %180

180:                                              ; preds = %172
  %181 = load ptr, ptr %171, align 8, !tbaa !81
  %182 = call i32 @refers_to_regno_p(i32 noundef %173, i32 noundef %179, ptr noundef %181, ptr noundef null) #21
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %8, align 8, !tbaa !69
  call fastcc void @note_other_use_this_block(i32 noundef %173, ptr noundef %185) #20
  %186 = load i64, ptr %25, align 8, !tbaa !73
  %187 = or i64 %186, %176
  store i64 %187, ptr %25, align 8, !tbaa !73
  br label %188

188:                                              ; preds = %172, %180, %184
  %189 = load i32, ptr @last_btr, align 4, !tbaa !5
  %190 = icmp slt i32 %173, %189
  br i1 %190, label %172, label %191, !llvm.loop !82

191:                                              ; preds = %188, %166
  %192 = load ptr, ptr %150, align 8, !tbaa !38
  call void @note_stores(ptr noundef %192, ptr noundef nonnull @note_btr_set, ptr noundef nonnull %8) #21
  br label %193

193:                                              ; preds = %191, %160
  %194 = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %194, ptr %154, align 8, !tbaa !83
  store ptr %154, ptr %8, align 8, !tbaa !69
  br label %195

195:                                              ; preds = %193, %149
  %196 = load i32, ptr %72, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 10
  br i1 %198, label %199, label %255

199:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  %200 = load ptr, ptr %150, align 8, !tbaa !38
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 65535
  %203 = icmp eq i32 %202, 15
  br i1 %203, label %204, label %229

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !38
  %207 = load i32, ptr %206, align 8, !tbaa !84
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %226

209:                                              ; preds = %204
  %210 = load i64, ptr @call_used_reg_set, align 8
  %211 = xor i64 %210, -1
  %212 = zext nneg i32 %207 to i64
  br label %213

213:                                              ; preds = %209, %213
  %214 = phi i64 [ %212, %209 ], [ %217, %213 ]
  %215 = phi ptr [ @call_used_reg_set, %209 ], [ %224, %213 ]
  %216 = phi i64 [ undef, %209 ], [ %223, %213 ]
  %217 = add nsw i64 %214, -1
  %218 = getelementptr inbounds %struct.rtvec_def, ptr %206, i64 0, i32 1, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !25
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 27
  %223 = select i1 %222, i64 %211, i64 %216
  %224 = select i1 %222, ptr %10, ptr %215
  %225 = icmp ugt i64 %214, 1
  br i1 %225, label %213, label %226, !llvm.loop !86

226:                                              ; preds = %213, %204
  %227 = phi i64 [ undef, %204 ], [ %223, %213 ]
  %228 = phi ptr [ @call_used_reg_set, %204 ], [ %224, %213 ]
  store i64 %227, ptr %10, align 8, !tbaa !37
  br label %229

229:                                              ; preds = %226, %199
  %230 = phi ptr [ @call_used_reg_set, %199 ], [ %228, %226 ]
  %231 = load i32, ptr @first_btr, align 4, !tbaa !5
  store i32 %231, ptr %9, align 4, !tbaa !5
  %232 = load i32, ptr @last_btr, align 4, !tbaa !5
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %254, label %234

234:                                              ; preds = %229, %249
  %235 = phi i32 [ %250, %249 ], [ %232, %229 ]
  %236 = phi i32 [ %252, %249 ], [ %231, %229 ]
  %237 = load i64, ptr %230, align 8, !tbaa !37
  %238 = zext nneg i32 %236 to i64
  %239 = shl nuw i64 1, %238
  %240 = and i64 %237, %239
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %234
  %243 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !25
  %244 = sext i32 %236 to i64
  %245 = getelementptr inbounds ptr, ptr %243, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !25
  call void @note_btr_set(ptr noundef %246, ptr poison, ptr noundef nonnull %8) #20
  %247 = load i32, ptr %9, align 4, !tbaa !5
  %248 = load i32, ptr @last_btr, align 4, !tbaa !5
  br label %249

249:                                              ; preds = %234, %242
  %250 = phi i32 [ %235, %234 ], [ %248, %242 ]
  %251 = phi i32 [ %236, %234 ], [ %247, %242 ]
  %252 = add nsw i32 %251, 1
  store i32 %252, ptr %9, align 4, !tbaa !5
  %253 = icmp slt i32 %251, %250
  br i1 %253, label %234, label %254, !llvm.loop !87

254:                                              ; preds = %249, %229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  br label %255

255:                                              ; preds = %142, %254, %195, %84
  %256 = phi ptr [ %92, %84 ], [ %74, %142 ], [ %74, %254 ], [ %74, %195 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  br label %257

257:                                              ; preds = %71, %255
  %258 = phi ptr [ %256, %255 ], [ %74, %71 ]
  %259 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 2
  %260 = add nsw i32 %73, 1
  %261 = load ptr, ptr %259, align 8, !tbaa !38
  %262 = icmp eq ptr %261, %68
  br i1 %262, label %263, label %71, !llvm.loop !88

263:                                              ; preds = %257, %62
  %264 = phi i32 [ %30, %62 ], [ %260, %257 ]
  %265 = load i64, ptr %25, align 8, !tbaa !73
  %266 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %267 = getelementptr inbounds i64, ptr %266, i64 %28
  store i64 %265, ptr %267, align 8, !tbaa !37
  %268 = load i64, ptr %26, align 8, !tbaa !89
  %269 = getelementptr inbounds i64, ptr %5, i64 %28
  store i64 %268, ptr %269, align 8, !tbaa !37
  %270 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  %271 = getelementptr inbounds i64, ptr %270, i64 %28
  store i64 0, ptr %271, align 8, !tbaa !37
  %272 = call ptr @df_get_live_out(ptr noundef %34) #21
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %271, ptr noundef %272) #21
  %273 = load ptr, ptr %63, align 8, !tbaa !38
  %274 = getelementptr inbounds %struct.rtl_bb_info, ptr %273, i64 0, i32 1
  %275 = load ptr, ptr %273, align 8, !tbaa !90
  %276 = load ptr, ptr %274, align 8, !tbaa !38
  %277 = icmp eq ptr %276, %275
  br i1 %277, label %288, label %278

278:                                              ; preds = %263, %284
  %279 = phi ptr [ %286, %284 ], [ %276, %263 ]
  %280 = load i32, ptr %279, align 8
  %281 = and i32 %280, 65535
  %282 = add nsw i32 %281, -7
  %283 = icmp ult i32 %282, 4
  br i1 %283, label %288, label %284

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1, i32 0, i32 0, i64 1
  %286 = load ptr, ptr %285, align 8, !tbaa !38
  %287 = icmp eq ptr %286, %275
  br i1 %287, label %288, label %278, !llvm.loop !91

288:                                              ; preds = %284, %278, %263
  %289 = phi ptr [ %275, %263 ], [ %279, %278 ], [ %275, %284 ]
  %290 = call zeroext i8 @can_throw_internal(ptr noundef %289) #21
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %300, label %292

292:                                              ; preds = %288
  %293 = load i64, ptr @call_used_reg_set, align 8, !tbaa !37
  %294 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %295 = and i64 %294, %293
  %296 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  %297 = getelementptr inbounds i64, ptr %296, i64 %28
  %298 = load i64, ptr %297, align 8, !tbaa !37
  %299 = or i64 %298, %295
  store i64 %299, ptr %297, align 8, !tbaa !37
  br label %304

300:                                              ; preds = %288
  %301 = load i32, ptr %289, align 8
  %302 = and i32 %301, 65535
  %303 = icmp eq i32 %302, 9
  br i1 %303, label %304, label %323

304:                                              ; preds = %292, %300
  %305 = load i32, ptr @first_btr, align 4, !tbaa !5
  %306 = load i32, ptr @last_btr, align 4, !tbaa !5
  %307 = icmp sgt i32 %305, %306
  br i1 %307, label %323, label %308

308:                                              ; preds = %304, %320
  %309 = phi i32 [ %310, %320 ], [ %305, %304 ]
  %310 = add nsw i32 %309, 1
  %311 = call i32 @refers_to_regno_p(i32 noundef %309, i32 noundef %310, ptr noundef %289, ptr noundef null) #21
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %308
  %314 = zext nneg i32 %309 to i64
  %315 = shl nuw i64 1, %314
  %316 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  %317 = getelementptr inbounds i64, ptr %316, i64 %28
  %318 = load i64, ptr %317, align 8, !tbaa !37
  %319 = or i64 %318, %315
  store i64 %319, ptr %317, align 8, !tbaa !37
  br label %320

320:                                              ; preds = %308, %313
  %321 = load i32, ptr @last_btr, align 4, !tbaa !5
  %322 = icmp slt i32 %309, %321
  br i1 %322, label %308, label %323, !llvm.loop !92

323:                                              ; preds = %320, %304, %300
  %324 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %325 = icmp eq ptr %324, null
  br i1 %325, label %327, label %326

326:                                              ; preds = %323
  call fastcc void @dump_btrs_live(i32 noundef %33) #20
  br label %327

327:                                              ; preds = %326, %323
  %328 = add nuw nsw i64 %28, 1
  %329 = load ptr, ptr @cfun, align 8, !tbaa !25
  %330 = getelementptr inbounds %struct.function, ptr %329, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !26
  %332 = getelementptr inbounds %struct.control_flow_graph, ptr %331, i64 0, i32 5
  %333 = load i32, ptr %332, align 8, !tbaa !28
  %334 = sext i32 %333 to i64
  %335 = icmp slt i64 %328, %334
  br i1 %335, label %27, label %336, !llvm.loop !93

336:                                              ; preds = %327, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_kill(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !28
  tail call void @sbitmap_vector_zero(ptr noundef %0, i32 noundef %8) #21
  %9 = load ptr, ptr @cfun, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !28
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %67

15:                                               ; preds = %3
  %16 = load i32, ptr @last_btr, align 4, !tbaa !5
  br label %17

17:                                               ; preds = %15, %56
  %18 = phi ptr [ %9, %15 ], [ %57, %56 ]
  %19 = phi i32 [ %16, %15 ], [ %58, %56 ]
  %20 = phi i32 [ %16, %15 ], [ %59, %56 ]
  %21 = phi i64 [ 2, %15 ], [ %60, %56 ]
  %22 = load i32, ptr @first_btr, align 4, !tbaa !5
  %23 = icmp sgt i32 %22, %20
  br i1 %23, label %56, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds i64, ptr %2, i64 %21
  %26 = getelementptr inbounds ptr, ptr %0, i64 %21
  %27 = load i64, ptr @all_btrs, align 8, !tbaa !37
  br label %28

28:                                               ; preds = %24, %49
  %29 = phi i32 [ %19, %24 ], [ %50, %49 ]
  %30 = phi i64 [ %27, %24 ], [ %51, %49 ]
  %31 = phi i32 [ %22, %24 ], [ %52, %49 ]
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = and i64 %30, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %28
  %37 = load i64, ptr %25, align 8, !tbaa !37
  %38 = and i64 %37, %33
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %26, align 8, !tbaa !25
  %42 = load i32, ptr @first_btr, align 4, !tbaa !5
  %43 = sub nsw i32 %31, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  tail call void @sbitmap_a_or_b(ptr noundef %41, ptr noundef %41, ptr noundef %46) #21
  %47 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %48 = load i32, ptr @last_btr, align 4, !tbaa !5
  br label %49

49:                                               ; preds = %28, %36, %40
  %50 = phi i32 [ %29, %28 ], [ %29, %36 ], [ %48, %40 ]
  %51 = phi i64 [ %30, %28 ], [ %30, %36 ], [ %47, %40 ]
  %52 = add nsw i32 %31, 1
  %53 = icmp slt i32 %31, %50
  br i1 %53, label %28, label %54, !llvm.loop !94

54:                                               ; preds = %49
  %55 = load ptr, ptr @cfun, align 8, !tbaa !25
  br label %56

56:                                               ; preds = %54, %17
  %57 = phi ptr [ %55, %54 ], [ %18, %17 ]
  %58 = phi i32 [ %50, %54 ], [ %19, %17 ]
  %59 = phi i32 [ %50, %54 ], [ %20, %17 ]
  %60 = add nuw nsw i64 %21, 1
  %61 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !26
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !28
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %60, %65
  br i1 %66, label %17, label %67, !llvm.loop !95

67:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_out(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #1 {
  %5 = tail call ptr @sbitmap_alloc(i32 noundef %3) #21
  %6 = load ptr, ptr @cfun, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !28
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %26

12:                                               ; preds = %4, %12
  %13 = phi i64 [ %18, %12 ], [ 2, %4 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds ptr, ptr %1, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  tail call void @sbitmap_copy(ptr noundef %15, ptr noundef %17) #21
  %18 = add nuw nsw i64 %13, 1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !28
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %18, %24
  br i1 %25, label %12, label %26, !llvm.loop !96

26:                                               ; preds = %12, %4
  %27 = phi ptr [ %6, %4 ], [ %19, %12 ]
  br label %30

28:                                               ; preds = %37
  %29 = icmp eq i32 %49, 0
  br i1 %29, label %58, label %30, !llvm.loop !97

30:                                               ; preds = %26, %28
  %31 = phi ptr [ %51, %28 ], [ %27, %26 ]
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !26
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !28
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %37, label %58

37:                                               ; preds = %30, %37
  %38 = phi i64 [ %50, %37 ], [ 2, %30 ]
  %39 = phi i32 [ %49, %37 ], [ 0, %30 ]
  %40 = trunc i64 %38 to i32
  tail call void @sbitmap_union_of_preds(ptr noundef %5, ptr noundef %0, i32 noundef %40) #21
  %41 = getelementptr inbounds ptr, ptr %0, i64 %38
  %42 = load ptr, ptr %41, align 8, !tbaa !25
  %43 = getelementptr inbounds ptr, ptr %1, i64 %38
  %44 = load ptr, ptr %43, align 8, !tbaa !25
  %45 = getelementptr inbounds ptr, ptr %2, i64 %38
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  %47 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %42, ptr noundef %44, ptr noundef %5, ptr noundef %46) #21
  %48 = zext i8 %47 to i32
  %49 = or i32 %39, %48
  %50 = add nuw nsw i64 %38, 1
  %51 = load ptr, ptr @cfun, align 8, !tbaa !25
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !26
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !28
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %50, %56
  br i1 %57, label %37, label %28, !llvm.loop !98

58:                                               ; preds = %30, %28
  %59 = load ptr, ptr %5, align 8, !tbaa !99
  tail call void @free(ptr noundef %59) #20
  tail call void @free(ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_btr_uses(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #1 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sbitmap_iterator, align 8
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %4) #21
  %9 = load ptr, ptr @cfun, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !28
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %189

15:                                               ; preds = %5, %181
  %16 = phi ptr [ %185, %181 ], [ %11, %5 ]
  %17 = phi i32 [ %182, %181 ], [ 2, %5 ]
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %19, i32 noundef %17) #20
  tail call void @sbitmap_union_of_preds(ptr noundef %8, ptr noundef %2, i32 noundef %17) #21
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = load ptr, ptr %22, align 8, !tbaa !38
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %181, label %29

29:                                               ; preds = %15, %177
  %30 = phi ptr [ %179, %177 ], [ %27, %15 ]
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %177

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !38
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = getelementptr inbounds ptr, ptr %1, i64 %38
  %42 = load ptr, ptr %41, align 8, !tbaa !25
  %43 = icmp eq ptr %40, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.btr_def_s, ptr %40, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !101
  %47 = load i32, ptr @first_btr, align 4, !tbaa !5
  %48 = sub nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %3, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  tail call void @sbitmap_difference(ptr noundef %8, ptr noundef %8, ptr noundef %51) #21
  tail call fastcc void @SET_BIT(ptr noundef %8, i32 noundef %37) #20
  br label %52

52:                                               ; preds = %44, %35
  %53 = icmp eq ptr %42, null
  br i1 %53, label %142, label %54

54:                                               ; preds = %52
  %55 = tail call ptr @sbitmap_alloc(i32 noundef %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  %56 = getelementptr inbounds %struct.btr_user_s, ptr %42, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !78
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #20
  %61 = load i32, ptr @first_btr, align 4, !tbaa !5
  %62 = sub i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %3, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !25
  tail call void @sbitmap_a_and_b(ptr noundef %55, ptr noundef %8, ptr noundef %65) #21
  br label %93

66:                                               ; preds = %54
  tail call void @sbitmap_zero(ptr noundef %55) #21
  %67 = load i32, ptr @first_btr, align 4, !tbaa !5
  %68 = load i32, ptr @last_btr, align 4, !tbaa !5
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %93, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.btr_user_s, ptr %42, i64 0, i32 3
  br label %72

72:                                               ; preds = %70, %90
  %73 = phi i32 [ %67, %70 ], [ %79, %90 ]
  %74 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %75 = zext nneg i32 %73 to i64
  %76 = shl nuw i64 1, %75
  %77 = and i64 %74, %76
  %78 = icmp eq i64 %77, 0
  %79 = add nsw i32 %73, 1
  br i1 %78, label %90, label %80

80:                                               ; preds = %72
  %81 = load ptr, ptr %71, align 8, !tbaa !81
  %82 = tail call i32 @refers_to_regno_p(i32 noundef %73, i32 noundef %79, ptr noundef %81, ptr noundef null) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr @first_btr, align 4, !tbaa !5
  %86 = sub nsw i32 %73, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %3, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !25
  tail call void @sbitmap_a_or_b_and_c(ptr noundef %55, ptr noundef %55, ptr noundef %8, ptr noundef %89) #21
  br label %90

90:                                               ; preds = %72, %80, %84
  %91 = load i32, ptr @last_btr, align 4, !tbaa !5
  %92 = icmp slt i32 %73, %91
  br i1 %92, label %72, label %93, !llvm.loop !102

93:                                               ; preds = %90, %66, %59
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %7, ptr noundef %55) #20
  %94 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %7, ptr noundef nonnull %6) #20, !range !64
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %140, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.btr_user_s, ptr %42, i64 0, i32 5
  %98 = getelementptr inbounds %struct.btr_user_s, ptr %42, i64 0, i32 6
  %99 = getelementptr inbounds %struct.btr_user_s, ptr %42, i64 0, i32 7
  br label %100

100:                                              ; preds = %96, %135
  %101 = load i32, ptr %6, align 4, !tbaa !5
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %0, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !25
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %105, ptr noundef nonnull @.str.14, i32 noundef %101, i32 noundef %37) #20
  br label %109

109:                                              ; preds = %107, %100
  %110 = load i32, ptr %97, align 8, !tbaa !103
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %97, align 8, !tbaa !103
  %112 = load ptr, ptr %56, align 8, !tbaa !78
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.btr_def_s, ptr %104, i64 0, i32 9
  store i8 1, ptr %115, align 8, !tbaa !53
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i32, ptr %98, align 4, !tbaa !104
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.btr_def_s, ptr %104, i64 0, i32 9
  store i8 1, ptr %120, align 8, !tbaa !53
  %121 = sext i32 %117 to i64
  %122 = getelementptr inbounds ptr, ptr %0, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !25
  %124 = getelementptr inbounds %struct.btr_def_s, ptr %123, i64 0, i32 9
  store i8 1, ptr %124, align 8, !tbaa !53
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %125, ptr noundef nonnull @.str.15, i32 noundef %37) #20
  br label %130

129:                                              ; preds = %116
  store i32 %101, ptr %98, align 4, !tbaa !104
  br label %130

130:                                              ; preds = %119, %127, %129
  %131 = load i8, ptr %99, align 8, !tbaa !79
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.btr_def_s, ptr %104, i64 0, i32 11
  store i8 1, ptr %134, align 2, !tbaa !105
  br label %135

135:                                              ; preds = %133, %130
  %136 = getelementptr inbounds %struct.btr_def_s, ptr %104, i64 0, i32 8
  %137 = load ptr, ptr %136, align 8, !tbaa !54
  store ptr %137, ptr %42, align 8, !tbaa !83
  store ptr %42, ptr %136, align 8, !tbaa !54
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %7) #20
  %138 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %7, ptr noundef nonnull %6) #20, !range !64
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %100, !llvm.loop !106

140:                                              ; preds = %135, %93
  %141 = load ptr, ptr %55, align 8, !tbaa !99
  tail call void @free(ptr noundef %141) #20
  tail call void @free(ptr noundef %55) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  br label %142

142:                                              ; preds = %140, %52
  %143 = load i32, ptr %30, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 10
  br i1 %145, label %146, label %177

146:                                              ; preds = %142
  %147 = load i32, ptr @first_btr, align 4, !tbaa !5
  %148 = load i32, ptr @last_btr, align 4, !tbaa !5
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %177, label %150

150:                                              ; preds = %146
  %151 = load i64, ptr @all_btrs, align 8, !tbaa !37
  br label %152

152:                                              ; preds = %150, %172
  %153 = phi i32 [ %173, %172 ], [ %148, %150 ]
  %154 = phi i64 [ %174, %172 ], [ %151, %150 ]
  %155 = phi i32 [ %175, %172 ], [ %147, %150 ]
  %156 = zext nneg i32 %155 to i64
  %157 = shl nuw i64 1, %156
  %158 = and i64 %154, %157
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %152
  %161 = load i64, ptr @call_used_reg_set, align 8, !tbaa !37
  %162 = and i64 %161, %157
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr @first_btr, align 4, !tbaa !5
  %166 = sub nsw i32 %155, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %3, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !25
  tail call void @sbitmap_difference(ptr noundef %8, ptr noundef %8, ptr noundef %169) #21
  %170 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %171 = load i32, ptr @last_btr, align 4, !tbaa !5
  br label %172

172:                                              ; preds = %152, %160, %164
  %173 = phi i32 [ %153, %152 ], [ %153, %160 ], [ %171, %164 ]
  %174 = phi i64 [ %154, %152 ], [ %154, %160 ], [ %170, %164 ]
  %175 = add nsw i32 %155, 1
  %176 = icmp slt i32 %155, %173
  br i1 %176, label %152, label %177, !llvm.loop !107

177:                                              ; preds = %172, %146, %29, %142
  %178 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %179 = load ptr, ptr %178, align 8, !tbaa !38
  %180 = icmp eq ptr %179, %26
  br i1 %180, label %181, label %29, !llvm.loop !108

181:                                              ; preds = %177, %15
  %182 = add nuw nsw i32 %17, 1
  %183 = load ptr, ptr @cfun, align 8, !tbaa !25
  %184 = getelementptr inbounds %struct.function, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !26
  %186 = getelementptr inbounds %struct.control_flow_graph, ptr %185, i64 0, i32 5
  %187 = load i32, ptr %186, align 8, !tbaa !28
  %188 = icmp slt i32 %182, %187
  br i1 %188, label %15, label %189, !llvm.loop !109

189:                                              ; preds = %181, %5
  %190 = load ptr, ptr %8, align 8, !tbaa !99
  tail call void @free(ptr noundef %190) #20
  tail call void @free(ptr noundef %8) #20
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @insn_sets_btr_p(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #1 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %58

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %9) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %28, %25 ], [ %22, %16 ]
  %31 = phi ptr [ %27, %25 ], [ %19, %16 ]
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #20
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = and i64 %38, %35
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %34
  %42 = tail call fastcc i32 @btr_referenced_p(ptr noundef %21, ptr noundef null) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 241, ptr noundef nonnull @.str.5) #21
  br label %45

45:                                               ; preds = %41, %44
  %46 = icmp eq i32 %1, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %21, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %54, label %58

54:                                               ; preds = %47, %45
  %55 = icmp eq ptr %2, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #20
  store i32 %57, ptr %2, align 4, !tbaa !5
  br label %58

58:                                               ; preds = %56, %54, %3, %13, %29, %34, %47
  %59 = phi i32 [ 0, %47 ], [ 0, %34 ], [ 0, %29 ], [ 0, %13 ], [ 0, %3 ], [ 1, %54 ], [ 1, %56 ]
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_btr_def(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #1 {
  store i64 80, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !49
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !51
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 80
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  tail call void @_obstack_newchunk(ptr noundef nonnull @migrate_btrl_obstack, i32 noundef 80) #21
  %15 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !51
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %9, %7 ], [ %16, %14 ]
  %19 = phi i64 [ 80, %7 ], [ %15, %14 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !50
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  %25 = or i8 %24, 2
  store i8 %25, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  br label %26

26:                                               ; preds = %17, %23
  %27 = ptrtoint ptr %21 to i64
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %28 = ptrtoint ptr %20 to i64
  %29 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 6), align 8, !tbaa !110
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = xor i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = inttoptr i64 %34 to ptr
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 1), align 8, !tbaa !46
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %34, %37
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !49
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %40, %37
  %42 = icmp sgt i64 %38, %41
  %43 = select i1 %42, ptr %39, ptr %35
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 2
  store ptr %1, ptr %44, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 3
  store i32 %2, ptr %45, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 4
  store ptr %3, ptr %46, align 8, !tbaa !43
  %47 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 5
  store i32 %4, ptr %47, align 8, !tbaa !101
  %48 = tail call fastcc i32 @basic_block_freq(ptr noundef %1) #20
  %49 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 6
  store i32 %48, ptr %49, align 4, !tbaa !41
  %50 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 9
  store i8 0, ptr %50, align 8, !tbaa !53
  %51 = trunc i32 %5 to i8
  %52 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 10
  store i8 %51, ptr %52, align 1, !tbaa !111
  %53 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 11
  store i8 0, ptr %53, align 2, !tbaa !105
  %54 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 8
  store ptr null, ptr %54, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 13
  store ptr null, ptr %55, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  tail call fastcc void @find_btr_def_group(ptr noundef %6, ptr noundef nonnull %21) #20
  %56 = load i32, ptr %49, align 4, !tbaa !41
  %57 = sub nsw i32 0, %56
  %58 = sext i32 %57 to i64
  %59 = tail call ptr @fibheap_insert(ptr noundef %0, i64 noundef %58, ptr noundef nonnull %21) #21
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %26
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.btr_def_s, ptr %21, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, ptr @.str.8, ptr @.str.7
  %71 = load i32, ptr %49, align 4, !tbaa !41
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %60, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %64, i32 noundef %66, ptr noundef nonnull %70, i32 noundef %71) #20
  br label %73

73:                                               ; preds = %62, %26
  ret ptr %21
}

; Function Attrs: optsize
declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !99
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
  %15 = load i64, ptr %14, align 8, !tbaa !37
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !38
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !38
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !37
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !37
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @note_other_use_this_block(i32 noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %14
  %5 = phi ptr [ %15, %14 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.btr_user_s, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #20
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.btr_user_s, ptr %5, i64 0, i32 7
  store i8 1, ptr %13, align 8, !tbaa !79
  br label %14

14:                                               ; preds = %4, %9, %12
  %15 = load ptr, ptr %5, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !112

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @btr_referenced_p(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !25
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @find_btr_reference, ptr noundef %1) #21
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_btr_user(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call fastcc ptr @find_btr_use(ptr noundef %6) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8, !tbaa !38
  %11 = tail call fastcc i32 @btr_referenced_p(ptr noundef %10, ptr noundef nonnull %7) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !25
  br label %15

15:                                               ; preds = %3, %9, %13
  %16 = phi ptr [ %14, %13 ], [ null, %9 ], [ null, %3 ]
  store i64 56, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !49
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !51
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = icmp slt i64 %21, 56
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  tail call void @_obstack_newchunk(ptr noundef nonnull @migrate_btrl_obstack, i32 noundef 56) #21
  %24 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !51
  br label %26

26:                                               ; preds = %15, %23
  %27 = phi ptr [ %18, %15 ], [ %25, %23 ]
  %28 = phi i64 [ 56, %15 ], [ %24, %23 ]
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !50
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  %34 = or i8 %33, 2
  store i8 %34, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  br label %35

35:                                               ; preds = %26, %32
  %36 = ptrtoint ptr %30 to i64
  store i64 %36, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %37 = ptrtoint ptr %29 to i64
  %38 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 6), align 8, !tbaa !110
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = xor i32 %38, -1
  %42 = sext i32 %41 to i64
  %43 = and i64 %40, %42
  %44 = inttoptr i64 %43 to ptr
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 1), align 8, !tbaa !46
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %43, %46
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !49
  %49 = ptrtoint ptr %48 to i64
  %50 = sub i64 %49, %46
  %51 = icmp sgt i64 %47, %50
  %52 = select i1 %51, ptr %48, ptr %44
  store ptr %52, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8
  store ptr %52, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 1
  store ptr %0, ptr %53, align 8, !tbaa !56
  %54 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 2
  store i32 %1, ptr %54, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 3
  store ptr %2, ptr %55, align 8, !tbaa !81
  %56 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 4
  store ptr %16, ptr %56, align 8, !tbaa !78
  %57 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 7
  store i8 0, ptr %57, align 8, !tbaa !79
  store ptr null, ptr %30, align 8, !tbaa !83
  %58 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 5
  store i32 0, ptr %58, align 8, !tbaa !103
  %59 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 6
  store i32 -1, ptr %59, align 4, !tbaa !104
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %35
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !34
  %65 = load i32, ptr %4, align 8, !tbaa !38
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %60, ptr noundef nonnull @.str.9, i32 noundef %64, i32 noundef %65) #20
  %67 = load ptr, ptr %56, align 8, !tbaa !78
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %67) #20
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.10, i32 noundef %71) #20
  br label %73

73:                                               ; preds = %62, %69, %35
  ret ptr %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @refers_to_regno_p(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @note_btr_set(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #1 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #20
  %9 = lshr i32 %4, 16
  %10 = and i32 %9, 255
  %11 = tail call fastcc i32 @end_hard_regno(i32 noundef %10, i32 noundef %8) #20
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.defs_uses_info, ptr %2, i64 0, i32 1
  %15 = getelementptr inbounds %struct.defs_uses_info, ptr %2, i64 0, i32 3
  %16 = getelementptr inbounds %struct.defs_uses_info, ptr %2, i64 0, i32 4
  %17 = load i64, ptr @all_btrs, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %13, %39
  %19 = phi i64 [ %17, %13 ], [ %40, %39 ]
  %20 = phi i32 [ %8, %13 ], [ %41, %39 ]
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = and i64 %19, %22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %2, align 8, !tbaa !69
  tail call fastcc void @note_other_use_this_block(i32 noundef %20, ptr noundef %26) #20
  %27 = load <2 x i64>, ptr %14, align 8, !tbaa !37
  %28 = insertelement <2 x i64> poison, i64 %22, i64 0
  %29 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> zeroinitializer
  %30 = or <2 x i64> %27, %29
  store <2 x i64> %30, ptr %14, align 8, !tbaa !37
  %31 = load ptr, ptr %15, align 8, !tbaa !71
  %32 = load ptr, ptr %16, align 8, !tbaa !72
  %33 = load i32, ptr @first_btr, align 4, !tbaa !5
  %34 = sub nsw i32 %20, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !25
  tail call void @sbitmap_difference(ptr noundef %31, ptr noundef %31, ptr noundef %37) #21
  %38 = load i64, ptr @all_btrs, align 8, !tbaa !37
  br label %39

39:                                               ; preds = %18, %25
  %40 = phi i64 [ %19, %18 ], [ %38, %25 ]
  %41 = add i32 %20, 1
  %42 = icmp eq i32 %41, %11
  br i1 %42, label %43, label %18, !llvm.loop !113

43:                                               ; preds = %39, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_btrs_live(i32 noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %0) #20
  %4 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds i64, ptr %4, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !37
  tail call fastcc void @dump_hard_reg_set(i64 noundef %7) #20
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %9 = tail call i32 @fputc(i32 10, ptr %8)
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @basic_block_freq(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !114
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_btr_def_group(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.btr_def_s, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call fastcc i32 @insn_sets_btr_p(ptr noundef %4, i32 noundef 1, ptr noundef null) #20, !range !40
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %82, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !43
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %10, 10
  tail call void @llvm.assume(i1 %14)
  br label %15

15:                                               ; preds = %7, %13
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @single_set_2(ptr noundef nonnull %8, ptr noundef nonnull %17) #21
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi ptr [ %22, %21 ], [ %17, %15 ]
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  br label %27

27:                                               ; preds = %31, %23
  %28 = phi ptr [ %0, %23 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.btr_def_group_s, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !115
  %34 = tail call i32 @rtx_equal_p(ptr noundef %26, ptr noundef %33) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %27, label %76, !llvm.loop !117

36:                                               ; preds = %27
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !49
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !51
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = icmp slt i64 %41, 24
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  tail call void @_obstack_newchunk(ptr noundef nonnull @migrate_btrl_obstack, i32 noundef 24) #21
  %44 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !51
  br label %46

46:                                               ; preds = %36, %43
  %47 = phi ptr [ %38, %36 ], [ %45, %43 ]
  %48 = phi i64 [ 24, %36 ], [ %44, %43 ]
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !50
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  %54 = or i8 %53, 2
  store i8 %54, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  br label %55

55:                                               ; preds = %46, %52
  %56 = ptrtoint ptr %50 to i64
  store i64 %56, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !48
  %57 = ptrtoint ptr %49 to i64
  %58 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 6), align 8, !tbaa !110
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = xor i32 %58, -1
  %62 = sext i32 %61 to i64
  %63 = and i64 %60, %62
  %64 = inttoptr i64 %63 to ptr
  %65 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 1), align 8, !tbaa !46
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %63, %66
  %68 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !49
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %69, %66
  %71 = icmp sgt i64 %67, %70
  %72 = select i1 %71, ptr %68, ptr %64
  store ptr %72, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8
  store ptr %72, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !50
  %73 = getelementptr inbounds %struct.btr_def_group_s, ptr %50, i64 0, i32 1
  store ptr %26, ptr %73, align 8, !tbaa !115
  %74 = getelementptr inbounds %struct.btr_def_group_s, ptr %50, i64 0, i32 2
  store ptr null, ptr %74, align 8, !tbaa !118
  %75 = load ptr, ptr %0, align 8, !tbaa !25
  store ptr %75, ptr %50, align 8, !tbaa !119
  store ptr %50, ptr %0, align 8, !tbaa !25
  br label %76

76:                                               ; preds = %31, %55
  %77 = phi ptr [ %50, %55 ], [ %29, %31 ]
  %78 = getelementptr inbounds %struct.btr_def_s, ptr %1, i64 0, i32 7
  store ptr %77, ptr %78, align 8, !tbaa !52
  %79 = getelementptr inbounds %struct.btr_def_group_s, ptr %77, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !118
  %81 = getelementptr inbounds %struct.btr_def_s, ptr %1, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !120
  store ptr %1, ptr %79, align 8, !tbaa !118
  br label %84

82:                                               ; preds = %2
  %83 = getelementptr inbounds %struct.btr_def_s, ptr %1, i64 0, i32 7
  store ptr null, ptr %83, align 8, !tbaa !52
  br label %84

84:                                               ; preds = %82, %76
  ret void
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal noundef i32 @find_btr_reference(ptr noundef %0, ptr noundef readnone %1) #10 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !25
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %11 = lshr i32 %6, 16
  %12 = and i32 %11, 255
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #20
  %14 = tail call fastcc zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %10, i32 noundef %12, i32 noundef %13) #20, !range !64
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store ptr %0, ptr @btr_reference_found, align 8, !tbaa !25
  br label %17

17:                                               ; preds = %9, %4, %2, %16
  %18 = phi i32 [ 1, %16 ], [ -1, %2 ], [ 0, %4 ], [ -1, %9 ]
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #20
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi i32 [ %2, %8 ], [ %12, %14 ]
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, %9
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %0
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %10, label %19, !llvm.loop !121

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 1, %3 ], [ 0, %10 ], [ 1, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_btr_use(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @btr_referenced_p(ptr noundef %0, ptr noundef null) #20
  %3 = icmp eq i32 %2, 0
  %4 = load ptr, ptr @btr_reference_found, align 8
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_hard_reg_set(i64 noundef %0) unnamed_addr #9 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %4 = shl nuw nsw i64 1, %3
  %5 = and i64 %4, %0
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %9 = trunc i64 %3 to i32
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %9) #20
  br label %11

11:                                               ; preds = %2, %7
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 53
  br i1 %13, label %14, label %2, !llvm.loop !122

14:                                               ; preds = %11
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_union_of_preds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_a_or_b_and_c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !123
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !126
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !127
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !128
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !37
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !129
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !127
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !123
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !123
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !125
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !125
  %25 = load ptr, ptr %0, align 8, !tbaa !128
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !37
  store i64 %28, ptr %3, align 8, !tbaa !129
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !130

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !131

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !125
  store i64 %34, ptr %3, align 8, !tbaa !129
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !5
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !123
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !129
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !129
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !125
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !125
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @btr_def_live_range(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %54

8:                                                ; preds = %2
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %9, ptr %5, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %13) #21
  %15 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !5
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @btrs_live, align 8
  %18 = load ptr, ptr @btrs_live_at_end, align 8
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load ptr, ptr %10, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !34
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, ptr %19, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !37
  store i64 %25, ptr %1, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %81, label %29

29:                                               ; preds = %8, %49
  %30 = phi ptr [ %52, %49 ], [ %27, %8 ]
  %31 = load ptr, ptr %5, align 8, !tbaa !44
  %32 = load ptr, ptr %10, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.btr_user_s, ptr %30, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !81
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, ptr %39, align 8
  %47 = and i32 %46, 65535
  %48 = icmp ne i32 %47, 9
  br label %49

49:                                               ; preds = %45, %37, %29
  %50 = phi i1 [ true, %37 ], [ true, %29 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  tail call fastcc void @augment_live_range(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %32, ptr noundef %34, i32 noundef %51) #20
  %52 = load ptr, ptr %30, align 8, !tbaa !25
  %53 = icmp eq ptr %52, null
  br i1 %53, label %81, label %29, !llvm.loop !132

54:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %55 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !5
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !34
  br label %62

62:                                               ; preds = %54, %57
  %63 = phi i32 [ %61, %57 ], [ -1, %54 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  store i64 0, ptr %1, align 8, !tbaa !37
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %3) #20
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !64
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @btrs_live_at_end, align 8
  %68 = load ptr, ptr @btrs_live, align 8
  br label %69

69:                                               ; preds = %66, %69
  %70 = phi i64 [ 0, %66 ], [ %77, %69 ]
  %71 = load i32, ptr %3, align 4, !tbaa !5
  %72 = icmp eq i32 %63, %71
  %73 = select i1 %72, ptr %67, ptr %68
  %74 = zext i32 %71 to i64
  %75 = getelementptr inbounds i64, ptr %73, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !37
  %77 = or i64 %70, %76
  store i64 %77, ptr %1, align 8, !tbaa !37
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !64
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %69, !llvm.loop !133

80:                                               ; preds = %69, %62
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %81

81:                                               ; preds = %49, %8, %80
  %82 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 10
  %83 = load i8, ptr %82, align 1, !tbaa !111
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 11
  %87 = load i8, ptr %86, align 2, !tbaa !105
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !101
  %92 = zext nneg i32 %91 to i64
  %93 = shl nuw i64 1, %92
  %94 = xor i64 %93, -1
  %95 = load i64, ptr %1, align 8, !tbaa !37
  %96 = and i64 %95, %94
  store i64 %96, ptr %1, align 8, !tbaa !37
  br label %97

97:                                               ; preds = %89, %85, %81
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @insn_default_latency(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @can_move_up(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp ne ptr %6, %1
  %8 = icmp sgt i32 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %20, %10 ], [ %2, %3 ]
  %12 = phi ptr [ %14, %10 ], [ %1, %3 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -7
  %18 = icmp ult i32 %17, 4
  %19 = sext i1 %18 to i32
  %20 = add nsw i32 %11, %19
  %21 = icmp ne ptr %14, %6
  %22 = icmp ne i32 %20, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %10, label %24, !llvm.loop !134

24:                                               ; preds = %10, %3
  %25 = phi i32 [ %2, %3 ], [ %20, %10 ]
  %26 = icmp slt i32 %25, 1
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #14 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !25
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 738, ptr noundef nonnull @.str.5) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !135
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !135
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @augment_live_range(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.edge_iterator, align 8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !137
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr @xmalloc(i64 noundef %17) #21
  %19 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %3, ptr noundef %2) #21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %5
  %22 = icmp eq ptr %3, %2
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %150, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, ptr %26, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !37
  %32 = load i64, ptr %1, align 8, !tbaa !37
  %33 = or i64 %32, %31
  store i64 %33, ptr %1, align 8, !tbaa !37
  br label %150

34:                                               ; preds = %21
  %35 = getelementptr inbounds ptr, ptr %18, i64 1
  store ptr %3, ptr %18, align 8, !tbaa !25
  br label %91

36:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !34
  %39 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %3) #21
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 922, ptr noundef nonnull @.str.5) #21
  br label %42

42:                                               ; preds = %36, %41
  %43 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !34
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %43, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !37
  %49 = load i64, ptr %1, align 8, !tbaa !37
  %50 = or i64 %49, %48
  store i64 %50, ptr %1, align 8, !tbaa !37
  %51 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %38) #21
  %52 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  %53 = sext i32 %38 to i64
  %54 = getelementptr inbounds i64, ptr %52, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !37
  %56 = load i64, ptr %1, align 8, !tbaa !37
  %57 = or i64 %56, %55
  store i64 %57, ptr %1, align 8, !tbaa !37
  %58 = icmp eq i32 %4, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %42
  %60 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %61 = getelementptr inbounds i64, ptr %60, i64 %53
  %62 = load i64, ptr %61, align 8, !tbaa !37
  %63 = or i64 %62, %57
  store i64 %63, ptr %1, align 8, !tbaa !37
  br label %64

64:                                               ; preds = %59, %42
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %44, align 8, !tbaa !34
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %65, ptr noundef nonnull @.str.24, i32 noundef %38, i32 noundef %68) #20
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %71 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 18, i64 1, ptr %70)
  %72 = load i64, ptr %1, align 8, !tbaa !37
  tail call fastcc void @dump_hard_reg_set(i64 noundef %72) #20
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %74 = tail call i32 @fputc(i32 10, ptr %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %2) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !62
  %77 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %76, ptr %77, align 8, !tbaa.struct !63
  %78 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %76, ptr noundef nonnull %6) #20, !range !64
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %150

81:                                               ; preds = %75, %81
  %82 = phi ptr [ %85, %81 ], [ %18, %75 ]
  %83 = load ptr, ptr %6, align 8, !tbaa !25
  %84 = load ptr, ptr %83, align 8, !tbaa !138
  %85 = getelementptr inbounds ptr, ptr %82, i64 1
  store ptr %84, ptr %82, align 8, !tbaa !25
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %86 = load i32, ptr %7, align 8
  %87 = load ptr, ptr %77, align 8
  %88 = call fastcc zeroext i8 @ei_cond(i32 %86, ptr %87, ptr noundef nonnull %6) #20, !range !64
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %81, !llvm.loop !139

90:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %91

91:                                               ; preds = %90, %34
  %92 = phi ptr [ %35, %34 ], [ %85, %90 ]
  %93 = getelementptr inbounds i8, ptr %9, i64 8
  br label %94

94:                                               ; preds = %91, %147
  %95 = phi ptr [ %92, %91 ], [ %148, %147 ]
  %96 = getelementptr inbounds ptr, ptr %95, i64 -1
  %97 = load ptr, ptr %96, align 8, !tbaa !25
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !34
  %100 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %99) #21
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  %103 = load i32, ptr %98, align 8, !tbaa !34
  %104 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %103) #21
  %105 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %106 = load i32, ptr %98, align 8, !tbaa !34
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, ptr %105, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !37
  %110 = load i64, ptr %1, align 8, !tbaa !37
  %111 = or i64 %110, %109
  store i64 %111, ptr %1, align 8, !tbaa !37
  %112 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  %113 = getelementptr inbounds i64, ptr %112, i64 %107
  %114 = load i64, ptr %113, align 8, !tbaa !37
  %115 = or i64 %114, %111
  store i64 %115, ptr %1, align 8, !tbaa !37
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %102
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %116, ptr noundef nonnull @.str.26, i32 noundef %106) #20
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %121 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 18, i64 1, ptr %120)
  %122 = load i64, ptr %1, align 8, !tbaa !37
  tail call fastcc void @dump_hard_reg_set(i64 noundef %122) #20
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %124 = tail call i32 @fputc(i32 10, ptr %123)
  br label %125

125:                                              ; preds = %118, %102
  %126 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %97) #20
  store i32 0, ptr %9, align 8, !tbaa.struct !62
  store ptr %126, ptr %93, align 8, !tbaa.struct !63
  %127 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %126, ptr noundef nonnull %8) #20, !range !64
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %125, %139
  %130 = phi ptr [ %140, %139 ], [ %96, %125 ]
  %131 = load ptr, ptr %8, align 8, !tbaa !25
  %132 = load ptr, ptr %131, align 8, !tbaa !138
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !34
  %135 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %134) #21
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = getelementptr inbounds ptr, ptr %130, i64 1
  store ptr %132, ptr %130, align 8, !tbaa !25
  br label %139

139:                                              ; preds = %137, %129
  %140 = phi ptr [ %130, %129 ], [ %138, %137 ]
  call fastcc void @ei_next(ptr noundef nonnull %9) #20
  %141 = load i32, ptr %9, align 8
  %142 = load ptr, ptr %93, align 8
  %143 = call fastcc zeroext i8 @ei_cond(i32 %141, ptr %142, ptr noundef nonnull %8) #20, !range !64
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %129, !llvm.loop !140

145:                                              ; preds = %139, %125
  %146 = phi ptr [ %96, %125 ], [ %140, %139 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  br label %147

147:                                              ; preds = %145, %94
  %148 = phi ptr [ %96, %94 ], [ %146, %145 ]
  %149 = icmp eq ptr %148, %18
  br i1 %149, label %150, label %94, !llvm.loop !141

150:                                              ; preds = %147, %80, %23, %25
  tail call void @free(ptr noundef %18) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @choose_btr(i64 noundef %0) unnamed_addr #15 {
  %2 = load i64, ptr @all_btrs, align 8, !tbaa !37
  %3 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %2, i64 noundef %0) #20, !range !64
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %19

5:                                                ; preds = %8
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, 53
  br i1 %7, label %19, label %8, !llvm.loop !142

8:                                                ; preds = %1, %5
  %9 = phi i64 [ %6, %5 ], [ 0, %1 ]
  %10 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw i64 1, %12
  %14 = and i64 %13, %2
  %15 = icmp eq i64 %14, 0
  %16 = and i64 %13, %0
  %17 = icmp ne i64 %16, 0
  %18 = or i1 %15, %17
  br i1 %18, label %5, label %19

19:                                               ; preds = %5, %8, %1
  %20 = phi i32 [ -1, %1 ], [ -1, %5 ], [ %11, %8 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_btr_def(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.btr_def_s, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.27, i32 noundef %15, i32 noundef %1) #20
  br label %17

17:                                               ; preds = %13, %5
  tail call fastcc void @clear_btr_from_live_range(ptr noundef nonnull %2) #20
  %18 = getelementptr inbounds %struct.btr_def_s, ptr %2, i64 0, i32 5
  store i32 %1, ptr %18, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.btr_def_s, ptr %2, i64 0, i32 2
  store ptr %0, ptr %19, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.btr_def_s, ptr %2, i64 0, i32 3
  store i32 0, ptr %20, align 8, !tbaa !59
  %21 = tail call fastcc i32 @basic_block_freq(ptr noundef nonnull %0) #20
  %22 = getelementptr inbounds %struct.btr_def_s, ptr %2, i64 0, i32 6
  store i32 %21, ptr %22, align 4, !tbaa !41
  %23 = getelementptr inbounds %struct.btr_def_s, ptr %2, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void @bitmap_copy(ptr noundef %24, ptr noundef %3) #21
  tail call fastcc void @combine_btr_defs(ptr noundef nonnull %2, ptr noundef %4) #20
  %25 = load i32, ptr %18, align 8, !tbaa !101
  %26 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, ptr %26, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !37
  %32 = zext nneg i32 %25 to i64
  %33 = shl nuw i64 1, %32
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.btr_def_s, ptr %2, i64 0, i32 10
  store i8 %36, ptr %37, align 1, !tbaa !111
  tail call fastcc void @add_btr_to_live_range(ptr noundef nonnull %2) #20
  %38 = load i32, ptr %8, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %41, label %44

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  br label %44

44:                                               ; preds = %41, %17
  %45 = phi ptr [ %43, %41 ], [ %8, %17 ]
  %46 = load i8, ptr %37, align 1, !tbaa !111
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %6, align 8, !tbaa !38
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !38
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -7
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %69, label %56

56:                                               ; preds = %48, %62
  %57 = phi ptr [ %64, %62 ], [ %51, %48 ]
  %58 = load ptr, ptr %6, align 8, !tbaa !38
  %59 = load ptr, ptr %58, align 8, !tbaa !90
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1189, ptr noundef nonnull @.str.5) #21
  br label %62

62:                                               ; preds = %56, %61
  %63 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !38
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %56, !llvm.loop !143

69:                                               ; preds = %62, %48
  %70 = phi ptr [ %51, %48 ], [ %64, %62 ]
  %71 = phi i32 [ %53, %48 ], [ %66, %62 ]
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %70) #21
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73, %69
  %77 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  br label %79

79:                                               ; preds = %44, %76, %73
  %80 = phi ptr [ %78, %76 ], [ %70, %73 ], [ %45, %44 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 23
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = tail call ptr @single_set_2(ptr noundef nonnull %10, ptr noundef nonnull %82) #21
  br label %88

88:                                               ; preds = %79, %86
  %89 = phi ptr [ %87, %86 ], [ %82, %79 ]
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %91 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !38
  %93 = load ptr, ptr %90, align 8, !tbaa !38
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = tail call ptr @gen_rtx_REG(i32 noundef %96, i32 noundef %25) #21
  %98 = tail call ptr @gen_move_insn(ptr noundef %97, ptr noundef %92) #21
  %99 = tail call ptr @emit_insn_after(ptr noundef %98, ptr noundef %80) #21
  store ptr %99, ptr %9, align 8, !tbaa !43
  tail call void @df_set_regs_ever_live(i32 noundef %25, i8 noundef zeroext 1) #21
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %88
  %103 = load ptr, ptr %9, align 8, !tbaa !43
  %104 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !38
  %106 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !38
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.28, i32 noundef %105, i32 noundef %107) #20
  br label %109

109:                                              ; preds = %102, %88
  %110 = tail call ptr @delete_insn(ptr noundef nonnull %10) #21
  %111 = getelementptr inbounds %struct.btr_def_s, ptr %2, i64 0, i32 8
  %112 = load ptr, ptr %111, align 8, !tbaa !25
  %113 = icmp eq ptr %112, null
  br i1 %113, label %138, label %114

114:                                              ; preds = %109, %130
  %115 = phi ptr [ %136, %130 ], [ %112, %109 ]
  %116 = getelementptr inbounds %struct.btr_user_s, ptr %115, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !78
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  %121 = load i32, ptr %97, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = icmp eq i32 %120, %123
  %125 = icmp eq i32 %120, 0
  %126 = or i1 %125, %124
  br i1 %126, label %130, label %127

127:                                              ; preds = %114
  %128 = tail call ptr @gen_rtx_REG(i32 noundef %120, i32 noundef %25) #21
  %129 = load ptr, ptr %116, align 8, !tbaa !78
  br label %130

130:                                              ; preds = %114, %127
  %131 = phi ptr [ %129, %127 ], [ %117, %114 ]
  %132 = phi ptr [ %128, %127 ], [ %97, %114 ]
  %133 = getelementptr inbounds %struct.btr_user_s, ptr %115, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !81
  %135 = tail call i32 @validate_replace_rtx(ptr noundef %131, ptr noundef %132, ptr noundef %134) #21
  store ptr %132, ptr %116, align 8, !tbaa !78
  %136 = load ptr, ptr %115, align 8, !tbaa !25
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %114, !llvm.loop !144

138:                                              ; preds = %130, %109
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #16 {
  %4 = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %4, ptr %0, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !149
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !147
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !150
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !152
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !37
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !153
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !153
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !154

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !5
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !5
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !152
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !147
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !152
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !37
  store i64 %35, ptr %3, align 8, !tbaa !153
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !5
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !5
  %40 = load i32, ptr %23, align 8, !tbaa !152
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !152
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !155

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !156
  store ptr %44, ptr %0, align 8, !tbaa !147
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !150
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !5
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !153
  store i32 %16, ptr %1, align 4, !tbaa !5
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !153
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !153
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !157
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 687, ptr noundef nonnull @.str.5) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !25
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_subset_p(i64 noundef %0, i64 noundef %1) unnamed_addr #14 {
  %3 = xor i64 %1, -1
  %4 = and i64 %3, %0
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @clear_btr_from_live_range(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %2) #20
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 10
  %10 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 11
  %11 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %8, %42
  %13 = load i8, ptr %9, align 1, !tbaa !111
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8, ptr %10, align 2, !tbaa !105
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, ptr %2, align 4, !tbaa !5
  br label %24

20:                                               ; preds = %15, %12
  %21 = load i32, ptr %2, align 4, !tbaa !5
  %22 = tail call fastcc i32 @block_at_edge_of_live_range_p(i32 noundef %21, ptr noundef nonnull %0) #20, !range !40
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %18, %20
  %25 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %26 = load i32, ptr %11, align 8, !tbaa !101
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw i64 1, %27
  %29 = xor i64 %28, -1
  %30 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %31 = zext i32 %25 to i64
  %32 = getelementptr inbounds i64, ptr %30, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !37
  %34 = and i64 %33, %29
  store i64 %34, ptr %32, align 8, !tbaa !37
  %35 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  %36 = getelementptr inbounds i64, ptr %35, i64 %31
  %37 = load i64, ptr %36, align 8, !tbaa !37
  %38 = and i64 %37, %29
  store i64 %38, ptr %36, align 8, !tbaa !37
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  tail call fastcc void @dump_btrs_live(i32 noundef %25) #20
  br label %42

42:                                               ; preds = %20, %41, %24
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #20
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !64
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %12, !llvm.loop !159

45:                                               ; preds = %42, %1
  %46 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 12
  %47 = load i8, ptr %46, align 1, !tbaa !160
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !101
  %52 = zext nneg i32 %51 to i64
  %53 = shl nuw i64 1, %52
  %54 = xor i64 %53, -1
  %55 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !34
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %55, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !37
  %63 = and i64 %62, %54
  store i64 %63, ptr %61, align 8, !tbaa !37
  br label %64

64:                                               ; preds = %49, %45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_btr_defs(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.btr_def_group_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %130, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 13
  %13 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 8
  %16 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 11
  br label %17

17:                                               ; preds = %10, %126
  %18 = phi ptr [ %8, %10 ], [ %128, %126 ]
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %126, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %22, null
  br i1 %23, label %126, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 9
  %26 = load i8, ptr %25, align 8, !tbaa !53
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %126

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = load ptr, ptr %11, align 8, !tbaa !55
  %32 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %30, ptr noundef %31) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %126, label %34

34:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %35 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %36 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call fastcc void @btr_def_live_range(ptr noundef nonnull %18, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i64, ptr %1, align 8, !tbaa !37
  store i64 %41, ptr %3, align 8, !tbaa !37
  %42 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @bitmap_copy(ptr noundef %35, ptr noundef %42) #21
  %43 = load ptr, ptr %21, align 8, !tbaa !25
  %44 = icmp eq ptr %43, null
  br i1 %44, label %71, label %45

45:                                               ; preds = %40, %64
  %46 = phi ptr [ %67, %64 ], [ %43, %40 ]
  %47 = load ptr, ptr %11, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.btr_user_s, ptr %46, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.btr_user_s, ptr %46, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct.rtl_bb_info, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = icmp eq ptr %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, ptr %54, align 8
  %62 = and i32 %61, 65535
  %63 = icmp ne i32 %62, 9
  br label %64

64:                                               ; preds = %60, %52, %45
  %65 = phi i1 [ true, %52 ], [ true, %45 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  call fastcc void @augment_live_range(ptr noundef %35, ptr noundef nonnull %3, ptr noundef %47, ptr noundef %49, i32 noundef %66) #20
  %67 = load ptr, ptr %46, align 8, !tbaa !25
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %45, !llvm.loop !161

69:                                               ; preds = %64
  %70 = load i64, ptr %3, align 8, !tbaa !37
  br label %71

71:                                               ; preds = %69, %40
  %72 = phi i64 [ %70, %69 ], [ %41, %40 ]
  %73 = tail call fastcc i32 @choose_btr(i64 noundef %72) #20
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %125, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !43
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !38
  %83 = load ptr, ptr %13, align 8, !tbaa !43
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !38
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %76, ptr noundef nonnull @.str.29, i32 noundef %82, i32 noundef %85) #20
  br label %87

87:                                               ; preds = %78, %75
  store i32 %73, ptr %14, align 8, !tbaa !101
  %88 = load ptr, ptr %21, align 8, !tbaa !54
  %89 = icmp eq ptr %88, null
  %90 = load ptr, ptr %15, align 8, !tbaa !25
  br i1 %89, label %97, label %91

91:                                               ; preds = %87, %91
  %92 = phi ptr [ %93, %91 ], [ %90, %87 ]
  %93 = phi ptr [ %94, %91 ], [ %88, %87 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !83
  store ptr %92, ptr %93, align 8, !tbaa !83
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %91, !llvm.loop !162

96:                                               ; preds = %91
  store ptr %93, ptr %15, align 8, !tbaa !54
  br label %99

97:                                               ; preds = %87
  %98 = icmp eq ptr %90, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %96, %97
  %100 = phi ptr [ %90, %97 ], [ %93, %96 ]
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi ptr [ %109, %101 ], [ %100, %99 ]
  %103 = getelementptr inbounds %struct.btr_user_s, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !81
  %105 = getelementptr inbounds %struct.btr_user_s, ptr %102, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !78
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef %106) #20
  %108 = tail call ptr @find_regno_note(ptr noundef %104, i32 noundef 1, i32 noundef %107) #21
  tail call void @remove_note(ptr noundef %104, ptr noundef %108) #21
  %109 = load ptr, ptr %102, align 8, !tbaa !25
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %101, !llvm.loop !163

111:                                              ; preds = %101, %97
  tail call fastcc void @clear_btr_from_live_range(ptr noundef nonnull %18) #20
  store ptr null, ptr %21, align 8, !tbaa !54
  %112 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @bitmap_copy(ptr noundef %112, ptr noundef %35) #21
  %113 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 5
  %114 = load i32, ptr %113, align 8, !tbaa !101
  %115 = icmp eq i32 %114, %73
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 11
  %118 = load i8, ptr %117, align 2, !tbaa !105
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  store i8 1, ptr %16, align 2, !tbaa !105
  br label %121

121:                                              ; preds = %120, %116, %111
  store i64 %72, ptr %1, align 8, !tbaa !37
  %122 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !43
  %124 = tail call ptr @delete_insn(ptr noundef %123) #21
  br label %125

125:                                              ; preds = %121, %71
  tail call void @bitmap_obstack_free(ptr noundef %35) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %126

126:                                              ; preds = %17, %20, %24, %28, %125
  %127 = getelementptr inbounds %struct.btr_def_s, ptr %18, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !25
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %17, !llvm.loop !164

130:                                              ; preds = %126, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @add_btr_to_live_range(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %2) #20
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !64
  %7 = icmp eq i8 %6, 0
  %8 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  br i1 %7, label %39, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !25
  br label %13

13:                                               ; preds = %9, %33
  %14 = phi ptr [ %12, %9 ], [ %34, %33 ]
  %15 = phi ptr [ %8, %9 ], [ %35, %33 ]
  %16 = phi ptr [ %11, %9 ], [ %36, %33 ]
  %17 = load i32, ptr %10, align 8, !tbaa !101
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 1, %18
  %20 = load i32, ptr %2, align 4, !tbaa !5
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, ptr %16, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !37
  %24 = or i64 %23, %19
  store i64 %24, ptr %22, align 8, !tbaa !37
  %25 = getelementptr inbounds i64, ptr %15, i64 %21
  %26 = load i64, ptr %25, align 8, !tbaa !37
  %27 = or i64 %26, %19
  store i64 %27, ptr %25, align 8, !tbaa !37
  %28 = icmp eq ptr %14, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %13
  tail call fastcc void @dump_btrs_live(i32 noundef %20) #20
  %30 = load ptr, ptr @btrs_live, align 8, !tbaa !25
  %31 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !25
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !25
  br label %33

33:                                               ; preds = %13, %29
  %34 = phi ptr [ null, %13 ], [ %32, %29 ]
  %35 = phi ptr [ %15, %13 ], [ %31, %29 ]
  %36 = phi ptr [ %16, %13 ], [ %30, %29 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #20
  %37 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %13, !llvm.loop !165

39:                                               ; preds = %33, %1
  %40 = phi ptr [ %8, %1 ], [ %35, %33 ]
  %41 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !101
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw i64 1, %43
  %45 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !34
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %40, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !37
  %52 = or i64 %51, %44
  store i64 %52, ptr %50, align 8, !tbaa !37
  %53 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 12
  store i8 1, ptr %53, align 1, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @validate_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @block_at_edge_of_live_range_p(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.btr_def_s, ptr %1, i64 0, i32 10
  %4 = load i8, ptr %3, align 1, !tbaa !111
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @cfun, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !30
  %12 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef %0) #20
  %13 = getelementptr inbounds %struct.btr_def_s, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %6, %2
  %17 = getelementptr inbounds %struct.btr_def_s, ptr %1, i64 0, i32 11
  %18 = load i8, ptr %17, align 2, !tbaa !105
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.btr_def_s, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr @cfun, align 8
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  br label %24

24:                                               ; preds = %28, %20
  %25 = phi ptr [ %21, %20 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %23, align 8, !tbaa !26
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef %0) #20
  %33 = getelementptr inbounds %struct.btr_user_s, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %24, !llvm.loop !166

36:                                               ; preds = %24, %28, %16, %6
  %37 = phi i32 [ 1, %6 ], [ 0, %16 ], [ 0, %24 ], [ 1, %28 ]
  ret i32 %37
}

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

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
!9 = !{!10, !12, i64 984}
!10 = !{!"gcc_target", !11, i64 0, !14, i64 368, !15, i64 664, !6, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !12, i64 952, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !16, i64 1064, !16, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !17, i64 1176, !12, i64 1232, !12, i64 1240, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !12, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !12, i64 1424, !12, i64 1432, !12, i64 1440, !12, i64 1448, !12, i64 1456, !16, i64 1464, !18, i64 1472, !12, i64 1664, !12, i64 1672, !12, i64 1680, !12, i64 1688, !12, i64 1696, !12, i64 1704, !12, i64 1712, !12, i64 1720, !12, i64 1728, !12, i64 1736, !12, i64 1744, !12, i64 1752, !12, i64 1760, !12, i64 1768, !12, i64 1776, !19, i64 1784, !20, i64 1792, !21, i64 1896, !22, i64 1968, !12, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!11 = !{!"asm_out", !12, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !13, i64 56, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"asm_int_op", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!14 = !{!"sched", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!15 = !{!"vectorize", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!16 = !{!"long", !7, i64 0}
!17 = !{!"addr_space", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!18 = !{!"calls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184}
!19 = !{!"c", !12, i64 0}
!20 = !{!"cxx", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!21 = !{!"emutls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !7, i64 64, !7, i64 65}
!22 = !{!"target_option_hooks", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!23 = !{!10, !12, i64 384}
!24 = !{!10, !12, i64 992}
!25 = !{!12, !12, i64 0}
!26 = !{!27, !12, i64 8}
!27 = !{!"function", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !12, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!28 = !{!29, !6, i64 32}
!29 = !{!"control_flow_graph", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !12, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!30 = !{!29, !12, i64 16}
!31 = !{!32, !16, i64 72}
!32 = !{!"basic_block_def", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !12, i64 48, !12, i64 56, !7, i64 64, !16, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!33 = !{!32, !6, i64 84}
!34 = !{!32, !6, i64 80}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!16, !16, i64 0}
!38 = !{!7, !7, i64 0}
!39 = distinct !{!39, !36}
!40 = !{i32 0, i32 2}
!41 = !{!42, !6, i64 44}
!42 = !{!"btr_def_s", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !12, i64 48, !12, i64 56, !7, i64 64, !7, i64 65, !7, i64 66, !7, i64 67, !12, i64 72}
!43 = !{!42, !12, i64 32}
!44 = !{!42, !12, i64 72}
!45 = distinct !{!45, !36}
!46 = !{!47, !12, i64 8}
!47 = !{!"obstack", !16, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !16, i64 40, !6, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !6, i64 80, !6, i64 80, !6, i64 80}
!48 = !{!47, !16, i64 40}
!49 = !{!47, !12, i64 32}
!50 = !{!47, !12, i64 16}
!51 = !{!47, !12, i64 24}
!52 = !{!42, !12, i64 48}
!53 = !{!42, !7, i64 64}
!54 = !{!42, !12, i64 56}
!55 = !{!42, !12, i64 16}
!56 = !{!57, !12, i64 8}
!57 = !{!"btr_user_s", !12, i64 0, !12, i64 8, !6, i64 16, !12, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !7, i64 48}
!58 = !{!57, !6, i64 16}
!59 = !{!42, !6, i64 24}
!60 = distinct !{!60, !36}
!61 = !{!29, !12, i64 0}
!62 = !{i64 0, i64 4, !5, i64 8, i64 8, !25}
!63 = !{i64 0, i64 8, !25}
!64 = !{i8 0, i8 2}
!65 = !{!66, !6, i64 48}
!66 = !{!"edge_def", !12, i64 0, !12, i64 8, !7, i64 16, !12, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !16, i64 56}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !36}
!69 = !{!70, !12, i64 0}
!70 = !{!"", !12, i64 0, !16, i64 8, !16, i64 16, !12, i64 24, !12, i64 32}
!71 = !{!70, !12, i64 24}
!72 = !{!70, !12, i64 32}
!73 = !{!70, !16, i64 16}
!74 = distinct !{!74, !36}
!75 = !{!76, !12, i64 8}
!76 = !{!"rtl_bb_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !6, i64 32}
!77 = !{!42, !12, i64 0}
!78 = !{!57, !12, i64 32}
!79 = !{!57, !7, i64 48}
!80 = distinct !{!80, !36}
!81 = !{!57, !12, i64 24}
!82 = distinct !{!82, !36}
!83 = !{!57, !12, i64 0}
!84 = !{!85, !6, i64 0}
!85 = !{!"rtvec_def", !6, i64 0, !7, i64 8}
!86 = distinct !{!86, !36}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36}
!89 = !{!70, !16, i64 8}
!90 = !{!76, !12, i64 0}
!91 = distinct !{!91, !36}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = !{!100, !12, i64 0}
!100 = !{!"simple_bitmap_def", !12, i64 0, !6, i64 8, !6, i64 12, !7, i64 16}
!101 = !{!42, !6, i64 40}
!102 = distinct !{!102, !36}
!103 = !{!57, !6, i64 40}
!104 = !{!57, !6, i64 44}
!105 = !{!42, !7, i64 66}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = distinct !{!109, !36}
!110 = !{!47, !6, i64 48}
!111 = !{!42, !7, i64 65}
!112 = distinct !{!112, !36}
!113 = distinct !{!113, !36}
!114 = !{!32, !6, i64 88}
!115 = !{!116, !12, i64 8}
!116 = !{!"btr_def_group_s", !12, i64 0, !12, i64 8, !12, i64 16}
!117 = distinct !{!117, !36}
!118 = !{!116, !12, i64 16}
!119 = !{!116, !12, i64 0}
!120 = !{!42, !12, i64 8}
!121 = distinct !{!121, !36}
!122 = distinct !{!122, !36}
!123 = !{!124, !6, i64 12}
!124 = !{!"", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !16, i64 24}
!125 = !{!124, !6, i64 16}
!126 = !{!100, !6, i64 12}
!127 = !{!124, !6, i64 8}
!128 = !{!124, !12, i64 0}
!129 = !{!124, !16, i64 24}
!130 = distinct !{!130, !36}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36}
!133 = distinct !{!133, !36}
!134 = distinct !{!134, !36}
!135 = !{!136, !6, i64 0}
!136 = !{!"", !6, i64 0, !12, i64 8}
!137 = !{!29, !6, i64 24}
!138 = !{!66, !12, i64 0}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !36}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !36}
!143 = distinct !{!143, !36}
!144 = distinct !{!144, !36}
!145 = !{!146, !12, i64 0}
!146 = !{!"bitmap_head_def", !12, i64 0, !12, i64 8, !6, i64 16, !12, i64 24}
!147 = !{!148, !12, i64 0}
!148 = !{!"", !12, i64 0, !12, i64 8, !6, i64 16, !16, i64 24}
!149 = !{!148, !12, i64 8}
!150 = !{!151, !6, i64 16}
!151 = !{!"bitmap_element_def", !12, i64 0, !12, i64 8, !6, i64 16, !7, i64 24}
!152 = !{!148, !6, i64 16}
!153 = !{!148, !16, i64 24}
!154 = distinct !{!154, !36}
!155 = distinct !{!155, !36}
!156 = !{!151, !12, i64 0}
!157 = !{!158, !6, i64 0}
!158 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
!159 = distinct !{!159, !36}
!160 = !{!42, !7, i64 67}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = distinct !{!164, !36}
!165 = distinct !{!165, !36}
!166 = distinct !{!166, !36}
