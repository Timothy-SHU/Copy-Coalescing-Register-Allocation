; ModuleID = 'cfgcleanup.c'
source_filename = "cfgcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.replace_label_data = type { ptr, ptr, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"cfgcleanup.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Dead jumptable %i removed\0A\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@crossjumps_occured = internal unnamed_addr global i1 false, align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@first_pass = internal unnamed_addr global i1 false, align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\0A\0Atry_optimize_cfg iteration %i\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Deleted label in block %i.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Deleting fallthru block %i.\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Merged %d and %d without moving.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Moved block %d after %d and merged.\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Moved block %d before %d and merged.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Simplifying condjump %i around jump %i\0A\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Infinite loop in BB %i.\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Conditionals threaded.\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Forwarding edge %i->%i to %i failed.\0A\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"Splitting bb %i before %i insns\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Cross jumping from bb %i to bb %i; %i common insns\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"Outcomes of branch in bb %i and %i differ too much (%i %i)\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Conditionals in bb %i and %i match.\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Tablejumps in bb %i and %i match.\0A\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@pass_jump = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.19, ptr null, ptr @rest_of_handle_jump, ptr null, ptr null, i32 0, i32 119, i32 0, i32 0, i32 0, i32 2, i32 8 } }, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"sibling\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@pass_jump2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.20, ptr null, ptr @rest_of_handle_jump2, ptr null, ptr null, i32 0, i32 119, i32 0, i32 0, i32 0, i32 2, i32 1025 } }, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_thread_jumps = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  tail call void @find_unreachable_blocks() #17
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %59, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @current_ir_type() #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = load ptr, ptr %13, align 8, !tbaa !19
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %92, label %20

20:                                               ; preds = %10, %51
  %21 = phi ptr [ %53, %51 ], [ %17, %10 ]
  %22 = phi i8 [ %52, %51 ], [ 0, %10 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !20
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %20
  %30 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef nonnull %21) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @delete_basic_block(ptr noundef nonnull %21) #17
  br label %51

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  %34 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef nonnull %21) #17
  store ptr %34, ptr %1, align 8, !tbaa !10
  %35 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %34) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33, %46
  %38 = tail call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %34) #19
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !20
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2095, ptr noundef nonnull @.str.1) #17
  br label %46

46:                                               ; preds = %37, %45
  tail call void @delete_basic_block(ptr noundef nonnull %38) #17
  %47 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %34) #19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %37, !llvm.loop !21

49:                                               ; preds = %46, %33
  %50 = phi ptr [ %24, %33 ], [ %40, %46 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  br label %51

51:                                               ; preds = %32, %49, %20
  %52 = phi i8 [ %22, %20 ], [ 1, %49 ], [ 1, %32 ]
  %53 = phi ptr [ %24, %20 ], [ %50, %49 ], [ %24, %32 ]
  %54 = load ptr, ptr @cfun, align 8, !tbaa !10
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !12
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  %58 = icmp eq ptr %53, %57
  br i1 %58, label %88, label %20, !llvm.loop !23

59:                                               ; preds = %7, %4, %0
  %60 = load ptr, ptr @cfun, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !12
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !16
  %67 = load ptr, ptr %62, align 8, !tbaa !19
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %92, label %69

69:                                               ; preds = %59, %81
  %70 = phi ptr [ %82, %81 ], [ %60, %59 ]
  %71 = phi ptr [ %74, %81 ], [ %66, %59 ]
  %72 = phi i8 [ %83, %81 ], [ 0, %59 ]
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !16
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !20
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  tail call void @delete_basic_block(ptr noundef nonnull %71) #17
  %80 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %81

81:                                               ; preds = %69, %79
  %82 = phi ptr [ %70, %69 ], [ %80, %79 ]
  %83 = phi i8 [ %72, %69 ], [ 1, %79 ]
  %84 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !12
  %86 = load ptr, ptr %85, align 8, !tbaa !19
  %87 = icmp eq ptr %74, %86
  br i1 %87, label %88, label %69, !llvm.loop !24

88:                                               ; preds = %51, %81
  %89 = phi i8 [ %83, %81 ], [ %52, %51 ]
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void @tidy_fallthru_edges() #17
  br label %92

92:                                               ; preds = %10, %59, %91, %88
  %93 = phi i8 [ %89, %91 ], [ 0, %88 ], [ 0, %59 ], [ 0, %10 ]
  ret i8 %93
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @find_unreachable_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_all_dominated_blocks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !25
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8, !tbaa !25
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !25
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  ret ptr %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @tidy_fallthru_edges() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_dead_jumptables() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %78, label %10

10:                                               ; preds = %0, %69
  %11 = phi ptr [ %70, %69 ], [ %1, %0 ]
  %12 = phi ptr [ %72, %69 ], [ %6, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %10, %64
  %21 = phi ptr [ %65, %64 ], [ %18, %10 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %27 = load i32, ptr %26, align 8, !tbaa !28
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %67, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  br label %64

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = icmp eq i32 %23, 12
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !28
  %40 = lshr i32 %22, 28
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i32, ptr %35, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !28
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65534
  %52 = icmp eq i32 %51, 20
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %33, align 8, !tbaa !28
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.2, i32 noundef %57) #19
  br label %59

59:                                               ; preds = %56, %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !28
  %62 = tail call ptr @delete_insn(ptr noundef nonnull %35) #17
  %63 = tail call ptr @delete_insn(ptr noundef nonnull %21) #17
  br label %64

64:                                               ; preds = %29, %47, %32, %37, %43, %59
  %65 = phi ptr [ %61, %59 ], [ %35, %43 ], [ %35, %37 ], [ %35, %32 ], [ %35, %47 ], [ %31, %29 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %20, !llvm.loop !31

67:                                               ; preds = %64, %25
  %68 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %69

69:                                               ; preds = %67, %10
  %70 = phi ptr [ %68, %67 ], [ %11, %10 ]
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !27
  %73 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !12
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !14
  %77 = icmp eq ptr %72, %76
  br i1 %77, label %78, label %10, !llvm.loop !32

78:                                               ; preds = %69, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cleanup_cfg(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @current_ir_type() #17
  %3 = icmp eq i32 %2, 2
  %4 = or i32 %0, 32
  %5 = select i1 %3, i32 %4, i32 %0
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !28
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 23) #17
  br label %9

9:                                                ; preds = %8, %1
  %10 = tail call zeroext i8 @delete_unreachable_blocks() #19, !range !33
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = and i32 %5, 16
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr @reload_completed, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @get_insns() #17
  %20 = tail call i32 @max_reg_num() #17
  %21 = tail call i32 @delete_trivially_dead_insns(ptr noundef %19, i32 noundef %20) #17
  br label %22

22:                                               ; preds = %12, %18, %9
  %23 = phi i8 [ 1, %12 ], [ 1, %18 ], [ 0, %9 ]
  tail call void @compact_blocks() #17
  %24 = and i32 %5, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @add_noreturn_fake_exit_edges() #17
  br label %27

27:                                               ; preds = %26, %22
  %28 = tail call zeroext i8 @dbg_cnt(i32 noundef 2) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc zeroext i8 @try_optimize_cfg(i32 noundef %5) #19, !range !33
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %30
  %34 = and i32 %5, 16
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %5, 1
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %33, %53
  %39 = tail call zeroext i8 @delete_unreachable_blocks() #19, !range !33
  br i1 %35, label %40, label %56

40:                                               ; preds = %38
  %41 = load i32, ptr @reload_completed, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %37, i1 true, i1 %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = tail call ptr @get_insns() #17
  %46 = tail call i32 @max_reg_num() #17
  %47 = tail call i32 @delete_trivially_dead_insns(ptr noundef %45, i32 noundef %46) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44, %40
  %50 = load i1, ptr @crossjumps_occured, align 1
  %51 = select i1 %25, i1 %50, i1 false
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @run_fast_dce() #17
  br label %53

53:                                               ; preds = %52, %49
  %54 = tail call fastcc zeroext i8 @try_optimize_cfg(i32 noundef %5) #19, !range !33
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %38, !llvm.loop !34

56:                                               ; preds = %53, %44, %38, %30
  %57 = phi i8 [ %23, %30 ], [ 1, %38 ], [ 1, %44 ], [ 1, %53 ]
  br i1 %25, label %58, label %59

58:                                               ; preds = %56
  tail call void @remove_fake_exit_edges() #17
  br label %59

59:                                               ; preds = %58, %56
  %60 = and i32 %5, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void @delete_dead_jumptables() #19
  br label %63

63:                                               ; preds = %59, %62
  %64 = load i8, ptr @timevar_enable, align 1, !tbaa !28
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @timevar_pop_1(i32 noundef 23) #17
  br label %67

67:                                               ; preds = %63, %66, %27
  %68 = phi i8 [ %23, %27 ], [ %57, %66 ], [ %57, %63 ]
  ret i8 %68
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @delete_trivially_dead_insns(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @try_optimize_cfg(i32 noundef %0) unnamed_addr #0 {
  %2 = and i32 %0, 10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @clear_bb_flags() #17
  br label %5

5:                                                ; preds = %4, %1
  store i1 false, ptr @crossjumps_occured, align 1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %18, %15 ], [ %11, %5 ]
  tail call fastcc void @update_forwarder_flag(ptr noundef %16) #19
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !27
  %19 = load ptr, ptr @cfun, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %15, !llvm.loop !35

25:                                               ; preds = %15, %5
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !36
  %27 = tail call zeroext i8 %26() #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %352

29:                                               ; preds = %25
  store i1 true, ptr @first_pass, align 1
  %30 = and i32 %0, 32
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %0, 33
  %33 = icmp eq i32 %32, 1
  %34 = lshr exact i32 %30, 5
  %35 = trunc i32 %34 to i8
  %36 = and i32 %0, 2
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %348, %29
  %39 = phi i32 [ 0, %29 ], [ %41, %348 ]
  %40 = phi i8 [ 0, %29 ], [ %350, %348 ]
  %41 = add nuw nsw i32 %39, 1
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.3, i32 noundef %41) #19
  br label %46

46:                                               ; preds = %44, %38
  %47 = load ptr, ptr @cfun, align 8, !tbaa !10
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  %50 = load ptr, ptr %49, align 8, !tbaa !19
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %341, label %56

56:                                               ; preds = %46, %332
  %57 = phi ptr [ %337, %332 ], [ %49, %46 ]
  %58 = phi i8 [ %334, %332 ], [ 0, %46 ]
  %59 = phi ptr [ %333, %332 ], [ %52, %46 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %60) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !49
  %66 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %65) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = tail call fastcc zeroext i8 @trivially_empty_bb_p(ptr noundef nonnull %59) #19, !range !33
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %57, align 8, !tbaa !19
  %73 = tail call fastcc ptr @single_succ_edge(ptr noundef %72) #19
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %89, label %77

77:                                               ; preds = %71, %56
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !16
  tail call void @delete_basic_block(ptr noundef nonnull %59) #17
  %80 = select i1 %31, i8 1, i8 %58
  %81 = load ptr, ptr @cfun, align 8, !tbaa !10
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !12
  %84 = load ptr, ptr %83, align 8, !tbaa !19
  %85 = icmp eq ptr %79, %84
  br i1 %85, label %86, label %332, !llvm.loop !52

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !27
  br label %332, !llvm.loop !52

89:                                               ; preds = %71, %68, %63
  %90 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %59) #19, !range !33
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %161, label %92

92:                                               ; preds = %89
  %93 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %94 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 7
  %95 = load i32, ptr %94, align 8, !tbaa !53
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %161, label %98

98:                                               ; preds = %92
  %99 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !53
  %102 = and i32 %101, 14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %161

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !28
  %107 = load ptr, ptr %106, align 8, !tbaa !54
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %161

111:                                              ; preds = %104
  %112 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %113 = load ptr, ptr @cfun, align 8, !tbaa !10
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !12
  %116 = load ptr, ptr %115, align 8, !tbaa !19
  %117 = icmp eq ptr %112, %116
  br i1 %117, label %137, label %118

118:                                              ; preds = %111
  %119 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !28
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !29
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = icmp eq i32 %125, 9
  br i1 %126, label %127, label %137

127:                                              ; preds = %118
  %128 = load ptr, ptr %105, align 8, !tbaa !28
  %129 = load ptr, ptr %128, align 8, !tbaa !54
  %130 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !28
  %133 = getelementptr inbounds %struct.rtl_bb_info, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !29
  %135 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %129, ptr noundef %134) #17
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %127, %118, %111
  %138 = load ptr, ptr %105, align 8, !tbaa !28
  %139 = load ptr, ptr %138, align 8, !tbaa !54
  tail call void @delete_insn_chain(ptr noundef %139, ptr noundef %139, i8 noundef zeroext 0) #17
  %140 = load ptr, ptr %105, align 8, !tbaa !28
  %141 = load ptr, ptr %140, align 8, !tbaa !54
  %142 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 1
  %143 = load i32, ptr %142, align 8, !tbaa !28
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %154

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1, i32 0, i32 0, i64 2
  %147 = load ptr, ptr %146, align 8, !tbaa !28
  tail call void @reorder_insns_nobb(ptr noundef %139, ptr noundef %139, ptr noundef %147) #17
  %148 = load ptr, ptr %105, align 8, !tbaa !28
  store ptr %147, ptr %148, align 8, !tbaa !54
  %149 = load ptr, ptr %105, align 8, !tbaa !28
  %150 = getelementptr inbounds %struct.rtl_bb_info, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !29
  %152 = icmp eq ptr %151, %147
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  store ptr %139, ptr %150, align 8, !tbaa !29
  br label %154

154:                                              ; preds = %145, %153, %137
  %155 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %159 = load i32, ptr %158, align 8, !tbaa !55
  %160 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %155, ptr noundef nonnull @.str.4, i32 noundef %159) #19
  br label %161

161:                                              ; preds = %154, %157, %127, %104, %98, %92, %89
  br i1 %31, label %162, label %220

162:                                              ; preds = %161
  %163 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %59) #19, !range !33
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %220, label %165

165:                                              ; preds = %162
  %166 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %167 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 7
  %168 = load i32, ptr %167, align 8, !tbaa !53
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %220, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !28
  %174 = load ptr, ptr %173, align 8, !tbaa !54
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 65535
  %177 = icmp eq i32 %176, 12
  br i1 %177, label %220, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 13
  %180 = load i32, ptr %179, align 8, !tbaa !20
  %181 = and i32 %180, 1024
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %220, label %183

183:                                              ; preds = %178
  %184 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %59) #19
  %185 = getelementptr inbounds %struct.edge_def, ptr %184, i64 0, i32 7
  %186 = load i32, ptr %185, align 8, !tbaa !53
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %220, label %189

189:                                              ; preds = %183
  %190 = load ptr, ptr @cfun, align 8, !tbaa !10
  %191 = getelementptr inbounds %struct.function, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !12
  %193 = getelementptr inbounds %struct.control_flow_graph, ptr %192, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !56
  %195 = icmp sgt i32 %194, 3
  br i1 %195, label %196, label %220

196:                                              ; preds = %189
  %197 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %198 = icmp eq ptr %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %201 = load i32, ptr %200, align 8, !tbaa !55
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %197, ptr noundef nonnull @.str.5, i32 noundef %201) #19
  %203 = load ptr, ptr @cfun, align 8, !tbaa !10
  %204 = getelementptr inbounds %struct.function, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !12
  br label %206

206:                                              ; preds = %199, %196
  %207 = phi ptr [ %205, %199 ], [ %192, %196 ]
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 5
  %209 = load ptr, ptr %208, align 8, !tbaa !16
  %210 = load ptr, ptr %207, align 8, !tbaa !19
  %211 = icmp eq ptr %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 6
  %214 = load ptr, ptr %213, align 8, !tbaa !27
  br label %215

215:                                              ; preds = %206, %212
  %216 = phi ptr [ %214, %212 ], [ %209, %206 ]
  %217 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %218 = tail call fastcc ptr @single_succ(ptr noundef nonnull %59) #19
  %219 = tail call ptr @redirect_edge_succ_nodup(ptr noundef %217, ptr noundef %218) #17
  tail call void @delete_basic_block(ptr noundef nonnull %59) #17
  br label %332, !llvm.loop !52

220:                                              ; preds = %189, %183, %178, %171, %165, %162, %161
  %221 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %59) #19, !range !33
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %278, label %223

223:                                              ; preds = %220
  %224 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %59) #19
  %225 = icmp eq ptr %224, null
  br i1 %225, label %278, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.edge_def, ptr %224, i64 0, i32 7
  %228 = load i32, ptr %227, align 8, !tbaa !53
  %229 = and i32 %228, 14
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %278

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.edge_def, ptr %224, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !50
  %234 = load ptr, ptr @cfun, align 8, !tbaa !10
  %235 = getelementptr inbounds %struct.function, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !12
  %237 = getelementptr inbounds %struct.control_flow_graph, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !14
  %239 = icmp eq ptr %233, %238
  br i1 %239, label %278, label %240

240:                                              ; preds = %231
  %241 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %233) #19, !range !33
  %242 = icmp eq i8 %241, 0
  %243 = icmp eq ptr %59, %233
  %244 = or i1 %243, %242
  br i1 %244, label %278, label %245

245:                                              ; preds = %240
  br i1 %31, label %250, label %246

246:                                              ; preds = %245
  %247 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef nonnull %59, ptr noundef %233) #17
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %285, label %249

249:                                              ; preds = %246
  tail call void @merge_blocks(ptr noundef nonnull %59, ptr noundef %233) #17
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %59) #19
  br label %285

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %252 = load ptr, ptr %251, align 8, !tbaa !28
  %253 = getelementptr inbounds %struct.rtl_bb_info, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !29
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 9
  br i1 %257, label %258, label %273

258:                                              ; preds = %250
  %259 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = tail call i32 @simplejump_p(ptr noundef nonnull %254) #17
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %278, label %273

264:                                              ; preds = %258
  %265 = tail call i32 @onlyjump_p(ptr noundef nonnull %254) #17
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %278, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr %251, align 8, !tbaa !28
  %269 = getelementptr inbounds %struct.rtl_bb_info, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !29
  %271 = tail call zeroext i8 @tablejump_p(ptr noundef %270, ptr noundef null, ptr noundef null) #17
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %267, %261, %250
  %274 = tail call fastcc ptr @merge_blocks_move(ptr noundef nonnull %224, ptr noundef nonnull %59, ptr noundef %233, i32 noundef %0) #19
  %275 = icmp ne ptr %274, null
  %276 = select i1 %275, ptr %274, ptr %59
  %277 = zext i1 %275 to i8
  br label %278

278:                                              ; preds = %273, %267, %264, %261, %240, %231, %226, %223, %220
  %279 = phi ptr [ %59, %226 ], [ %59, %261 ], [ %59, %267 ], [ %59, %264 ], [ %59, %240 ], [ %59, %231 ], [ %59, %223 ], [ %59, %220 ], [ %276, %273 ]
  %280 = phi i8 [ 0, %226 ], [ 0, %261 ], [ 0, %267 ], [ 0, %264 ], [ 0, %240 ], [ 0, %231 ], [ 0, %223 ], [ 0, %220 ], [ %277, %273 ]
  br i1 %33, label %281, label %285

281:                                              ; preds = %278
  %282 = tail call fastcc zeroext i8 @try_simplify_condjump(ptr noundef nonnull %279) #19, !range !33
  %283 = icmp eq i8 %282, 0
  %284 = select i1 %283, i8 %280, i8 1
  br label %285

285:                                              ; preds = %249, %246, %281, %278
  %286 = phi ptr [ %279, %278 ], [ %279, %281 ], [ %59, %246 ], [ %59, %249 ]
  %287 = phi i8 [ %280, %278 ], [ %284, %281 ], [ 0, %246 ], [ 1, %249 ]
  %288 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %286) #19, !range !33
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %317, label %290

290:                                              ; preds = %285
  %291 = tail call fastcc ptr @single_succ(ptr noundef nonnull %286) #19
  %292 = load ptr, ptr @cfun, align 8, !tbaa !10
  %293 = getelementptr inbounds %struct.function, ptr %292, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !12
  %295 = getelementptr inbounds %struct.control_flow_graph, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !14
  %297 = icmp eq ptr %291, %296
  br i1 %297, label %317, label %298

298:                                              ; preds = %290
  %299 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 7
  %300 = load ptr, ptr %299, align 8, !tbaa !28
  %301 = getelementptr inbounds %struct.rtl_bb_info, ptr %300, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !29
  %303 = tail call i32 @onlyjump_p(ptr noundef %302) #17
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %317, label %305

305:                                              ; preds = %298
  %306 = load ptr, ptr %299, align 8, !tbaa !28
  %307 = getelementptr inbounds %struct.rtl_bb_info, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !29
  %309 = tail call ptr @find_reg_note(ptr noundef %308, i32 noundef 29, ptr noundef null) #17
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %317

311:                                              ; preds = %305
  %312 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %286) #19
  %313 = tail call fastcc ptr @single_succ(ptr noundef nonnull %286) #19
  %314 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef %312, ptr noundef %313, i8 noundef zeroext %35) #17
  %315 = icmp eq ptr %314, null
  br i1 %315, label %317, label %316

316:                                              ; preds = %311
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %286) #19
  br label %317

317:                                              ; preds = %316, %311, %305, %298, %290, %285
  %318 = phi i8 [ %287, %305 ], [ 1, %316 ], [ %287, %311 ], [ %287, %298 ], [ %287, %290 ], [ %287, %285 ]
  %319 = tail call fastcc zeroext i8 @try_forward_edges(i32 noundef %0, ptr noundef nonnull %286) #19
  %320 = icmp eq i8 %319, 0
  %321 = select i1 %320, i8 %318, i8 1
  br i1 %37, label %327, label %322

322:                                              ; preds = %317
  %323 = tail call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef nonnull %286) #19, !range !33
  %324 = icmp eq i8 %323, 0
  %325 = icmp eq i8 %321, 0
  %326 = select i1 %324, i1 %325, i1 false
  br i1 %326, label %329, label %332

327:                                              ; preds = %317
  %328 = icmp eq i8 %321, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %322, %327
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 6
  %331 = load ptr, ptr %330, align 8, !tbaa !27
  br label %332

332:                                              ; preds = %322, %329, %327, %86, %77, %215
  %333 = phi ptr [ %216, %215 ], [ %88, %86 ], [ %79, %77 ], [ %331, %329 ], [ %286, %327 ], [ %286, %322 ]
  %334 = phi i8 [ 1, %215 ], [ %80, %86 ], [ %80, %77 ], [ %58, %329 ], [ 1, %327 ], [ 1, %322 ]
  %335 = load ptr, ptr @cfun, align 8, !tbaa !10
  %336 = getelementptr inbounds %struct.function, ptr %335, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !12
  %338 = getelementptr inbounds %struct.control_flow_graph, ptr %337, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !14
  %340 = icmp eq ptr %333, %339
  br i1 %340, label %341, label %56

341:                                              ; preds = %332, %46
  %342 = phi i8 [ 0, %46 ], [ %334, %332 ]
  %343 = phi ptr [ %52, %46 ], [ %333, %332 ]
  br i1 %37, label %348, label %344

344:                                              ; preds = %341
  %345 = tail call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef %343) #19, !range !33
  %346 = icmp eq i8 %345, 0
  %347 = select i1 %346, i8 %342, i8 1
  br label %348

348:                                              ; preds = %344, %341
  %349 = phi i8 [ %342, %341 ], [ %347, %344 ]
  %350 = or i8 %349, %40
  store i1 false, ptr @first_pass, align 1
  %351 = icmp eq i8 %349, 0
  br i1 %351, label %352, label %38, !llvm.loop !57

352:                                              ; preds = %348, %25
  %353 = phi i8 [ 0, %25 ], [ %350, %348 ]
  %354 = load ptr, ptr @cfun, align 8, !tbaa !10
  %355 = getelementptr inbounds %struct.function, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !12
  %357 = load ptr, ptr %356, align 8, !tbaa !10
  %358 = icmp eq ptr %357, null
  br i1 %358, label %367, label %359

359:                                              ; preds = %352, %359
  %360 = phi ptr [ %365, %359 ], [ %357, %352 ]
  %361 = getelementptr inbounds %struct.basic_block_def, ptr %360, i64 0, i32 13
  %362 = load i32, ptr %361, align 8, !tbaa !20
  %363 = and i32 %362, -3073
  store i32 %363, ptr %361, align 8, !tbaa !20
  %364 = getelementptr inbounds %struct.basic_block_def, ptr %360, i64 0, i32 6
  %365 = load ptr, ptr %364, align 8, !tbaa !10
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %359, !llvm.loop !58

367:                                              ; preds = %359, %352
  ret i8 %353
}

; Function Attrs: optsize
declare void @run_fast_dce() local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_bb_flags() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_forwarder_flag(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @forwarder_block_p(ptr noundef %0) #17
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = and i32 %5, -1025
  %7 = select i1 %3, i32 0, i32 1024
  %8 = or disjoint i32 %6, %7
  store i32 %8, ptr %4, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !59
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @trivially_empty_bb_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %3, align 8, !tbaa !54
  %6 = load ptr, ptr %4, align 8, !tbaa !28
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %17, label %12

8:                                                ; preds = %12
  %9 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %17, label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %8, label %17

17:                                               ; preds = %8, %12, %1
  %18 = phi i8 [ 1, %1 ], [ 0, %12 ], [ 1, %8 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !33
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #19, !range !33
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 655, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_insn_chain(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reorder_insns_nobb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @merge_blocks_move(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !20
  %11 = xor i32 %10, %8
  %12 = and i32 %11, 96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %122

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !55
  tail call void @merge_blocks(ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %1) #19
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %23) #19
  br label %28

28:                                               ; preds = %26, %19
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = load ptr, ptr @cfun, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !12
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = icmp eq ptr %30, %34
  %36 = select i1 %35, ptr %1, ptr %30
  br label %122

37:                                               ; preds = %14
  %38 = and i32 %3, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %122, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %41 = or i32 %10, %8
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %120

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !62
  %47 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %46, ptr %47, align 8, !tbaa.struct !63
  %48 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %5) #19, !range !33
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %44, %56
  %51 = load ptr, ptr %5, align 8, !tbaa !10
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !53
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %57 = load i32, ptr %6, align 8
  %58 = load ptr, ptr %47, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %5) #19, !range !33
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %50, !llvm.loop !64

61:                                               ; preds = %56, %44
  %62 = load ptr, ptr %5, align 8, !tbaa !10
  br label %63

63:                                               ; preds = %50, %61
  %64 = phi ptr [ %62, %61 ], [ %51, %50 ]
  %65 = icmp eq ptr %64, null
  %66 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !62
  store ptr %66, ptr %47, align 8, !tbaa.struct !63
  %67 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %66, ptr noundef nonnull %5) #19, !range !33
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %63, %75
  %70 = load ptr, ptr %5, align 8, !tbaa !10
  %71 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !53
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %76 = load i32, ptr %6, align 8
  %77 = load ptr, ptr %47, align 8
  %78 = call fastcc zeroext i8 @ei_cond(i32 %76, ptr %77, ptr noundef nonnull %5) #19, !range !33
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %69, !llvm.loop !65

80:                                               ; preds = %75, %63
  %81 = load ptr, ptr %5, align 8, !tbaa !10
  br label %82

82:                                               ; preds = %69, %80
  %83 = phi ptr [ %81, %80 ], [ %70, %69 ]
  %84 = icmp eq ptr %83, null
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !16
  %87 = icmp eq ptr %86, %2
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !16
  br label %91

91:                                               ; preds = %88, %82
  %92 = phi ptr [ %90, %88 ], [ %86, %82 ]
  br i1 %65, label %93, label %99

93:                                               ; preds = %91
  tail call fastcc void @merge_blocks_move_successor_nojumps(ptr noundef nonnull %1, ptr noundef %2) #19
  %94 = load ptr, ptr @cfun, align 8, !tbaa !10
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !12
  %97 = load ptr, ptr %96, align 8, !tbaa !19
  %98 = icmp eq ptr %92, %97
  br i1 %98, label %117, label %120

99:                                               ; preds = %91
  br i1 %84, label %111, label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr %83, align 8, !tbaa !61
  %102 = load ptr, ptr @cfun, align 8, !tbaa !10
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !12
  %105 = load ptr, ptr %104, align 8, !tbaa !19
  %106 = icmp eq ptr %101, %105
  br i1 %106, label %120, label %107

107:                                              ; preds = %100
  %108 = tail call ptr @force_nonfallthru(ptr noundef nonnull %83) #17
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call fastcc void @notice_new_block(ptr noundef nonnull %108) #19
  br label %111

111:                                              ; preds = %110, %107, %99
  tail call fastcc void @merge_blocks_move_predecessor_nojumps(ptr noundef nonnull %1, ptr noundef %2) #19
  %112 = load ptr, ptr @cfun, align 8, !tbaa !10
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !12
  %115 = load ptr, ptr %114, align 8, !tbaa !19
  %116 = icmp eq ptr %92, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %93
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !27
  br label %120

120:                                              ; preds = %117, %100, %111, %93, %40
  %121 = phi ptr [ null, %40 ], [ %92, %93 ], [ %92, %111 ], [ null, %100 ], [ %119, %117 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %122

122:                                              ; preds = %37, %4, %120, %28
  %123 = phi ptr [ %36, %28 ], [ %121, %120 ], [ null, %4 ], [ null, %37 ]
  ret ptr %123
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_simplify_condjump(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %92

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = tail call i32 @any_condjump_p(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %92, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %2, align 8, !tbaa !49
  %15 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 0) #19
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !53
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 1) #19
  %21 = select i1 %19, ptr %20, ptr %15
  %22 = select i1 %19, ptr %15, ptr %20
  %23 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %24) #19, !range !33
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %92, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !27
  %30 = load ptr, ptr @cfun, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = icmp eq ptr %29, %34
  br i1 %35, label %92, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %38 = load i32, ptr %37, align 8, !tbaa !20
  %39 = and i32 %38, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %92, label %41

41:                                               ; preds = %36
  %42 = tail call fastcc ptr @single_succ(ptr noundef nonnull %24) #19
  %43 = load i32, ptr %37, align 8, !tbaa !20
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !20
  %46 = xor i32 %45, %43
  %47 = and i32 %46, 96
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !53
  %52 = and i32 %51, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = load ptr, ptr @cfun, align 8, !tbaa !10
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !14
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %92, label %63

63:                                               ; preds = %54
  %64 = tail call zeroext i8 @can_fallthru(ptr noundef nonnull %24, ptr noundef %56) #17
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %63
  %67 = tail call ptr @block_label(ptr noundef nonnull %42) #17
  %68 = tail call i32 @invert_jump(ptr noundef %10, ptr noundef %67, i32 noundef 0) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !28
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !28
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !29
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !28
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.10, i32 noundef %75, i32 noundef %81) #19
  br label %83

83:                                               ; preds = %73, %70
  %84 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %22, ptr noundef %56) #17
  %85 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %21, ptr noundef nonnull %42) #17
  %86 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !53
  %88 = or i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !53
  %89 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !53
  %91 = and i32 %90, -2
  store i32 %91, ptr %89, align 8, !tbaa !53
  tail call void @update_br_prob_note(ptr noundef nonnull %0) #17
  tail call void @delete_basic_block(ptr noundef nonnull %24) #17
  tail call void @tidy_fallthru_edge(ptr noundef %84) #17
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %0) #19
  br label %92

92:                                               ; preds = %66, %54, %63, %41, %49, %13, %27, %36, %6, %1, %83
  %93 = phi i8 [ 1, %83 ], [ 0, %1 ], [ 0, %6 ], [ 0, %36 ], [ 0, %27 ], [ 0, %13 ], [ 0, %49 ], [ 0, %41 ], [ 0, %63 ], [ 0, %54 ], [ 0, %66 ]
  ret i8 %93
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @try_redirect_by_replacing_jump(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @try_forward_edges(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = tail call ptr @find_reg_note(ptr noundef %7, i32 noundef 29, ptr noundef null) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %359

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %12 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !62
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !63
  %14 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %12) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %359, label %16

16:                                               ; preds = %10
  %17 = and i32 %0, 8
  %18 = icmp ne i32 %17, 0
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  br label %22

22:                                               ; preds = %16, %349
  %23 = phi ptr [ %14, %16 ], [ %354, %349 ]
  %24 = phi i8 [ 0, %16 ], [ %351, %349 ]
  %25 = phi ptr [ null, %16 ], [ %350, %349 ]
  %26 = load i1, ptr @first_pass, align 1
  %27 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %1) #17
  %28 = zext i1 %26 to i8
  %29 = or i8 %27, %28
  %30 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !53
  %32 = and i32 %31, 14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %349, !llvm.loop !66

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !67
  %40 = load ptr, ptr @cfun, align 8, !tbaa !10
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !12
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  %45 = icmp eq ptr %37, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !28
  %49 = getelementptr inbounds %struct.rtl_bb_info, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = tail call ptr @find_reg_note(ptr noundef %50, i32 noundef 29, ptr noundef null) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %359

53:                                               ; preds = %46
  %54 = load ptr, ptr @cfun, align 8, !tbaa !10
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !12
  br label %57

57:                                               ; preds = %53, %35
  %58 = phi ptr [ %56, %53 ], [ %42, %35 ]
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !56
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %231

62:                                               ; preds = %57, %204
  %63 = phi ptr [ %205, %204 ], [ %25, %57 ]
  %64 = phi i8 [ %71, %204 ], [ %29, %57 ]
  %65 = phi i32 [ %208, %204 ], [ 0, %57 ]
  %66 = phi i8 [ %212, %204 ], [ 0, %57 ]
  %67 = phi i32 [ %209, %204 ], [ %39, %57 ]
  %68 = phi i32 [ %211, %204 ], [ 2, %57 ]
  %69 = phi ptr [ %207, %204 ], [ %37, %57 ]
  %70 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %69) #17
  %71 = or i8 %70, %64
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 13
  %73 = load i32, ptr %72, align 8, !tbaa !20
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %148, label %76

76:                                               ; preds = %62
  %77 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %69) #19
  %78 = getelementptr inbounds %struct.edge_def, ptr %77, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !53
  %80 = and i32 %79, 8192
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %148

82:                                               ; preds = %76
  %83 = tail call fastcc ptr @single_succ(ptr noundef nonnull %69) #19
  %84 = load ptr, ptr @cfun, align 8, !tbaa !10
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !12
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !14
  %89 = icmp eq ptr %83, %88
  br i1 %89, label %148, label %90

90:                                               ; preds = %82
  %91 = tail call fastcc ptr @single_succ(ptr noundef nonnull %69) #19
  %92 = icmp eq ptr %69, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load ptr, ptr @cfun, align 8, !tbaa !10
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !12
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %96, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !56
  br label %204

99:                                               ; preds = %90
  %100 = load i32, ptr @optimize, align 4, !tbaa !6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %196

102:                                              ; preds = %99
  %103 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %69) #19
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !67
  %106 = icmp ne i32 %105, 0
  %107 = icmp ne i32 %67, 0
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %118

109:                                              ; preds = %102
  %110 = tail call zeroext i8 @locator_eq(i32 noundef %105, i32 noundef %67) #17
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load ptr, ptr @cfun, align 8, !tbaa !10
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !12
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %115, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !56
  br label %120

118:                                              ; preds = %109, %102
  %119 = select i1 %106, i32 %105, i32 %67
  br label %120

120:                                              ; preds = %118, %112
  %121 = phi i32 [ %117, %112 ], [ %68, %118 ]
  %122 = phi i32 [ %67, %112 ], [ %119, %118 ]
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 7
  %124 = load ptr, ptr %123, align 8, !tbaa !28
  %125 = getelementptr inbounds %struct.rtl_bb_info, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !29
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = add nsw i32 %128, -7
  %130 = icmp ult i32 %129, 4
  br i1 %130, label %131, label %196

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !28
  %134 = icmp ne i32 %133, 0
  %135 = icmp ne i32 %122, 0
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = tail call zeroext i8 @locator_eq(i32 noundef %133, i32 noundef %122) #17
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load ptr, ptr @cfun, align 8, !tbaa !10
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !12
  %144 = getelementptr inbounds %struct.control_flow_graph, ptr %143, i64 0, i32 3
  %145 = load i32, ptr %144, align 8, !tbaa !56
  br label %196

146:                                              ; preds = %137, %131
  %147 = select i1 %134, i32 %133, i32 %122
  br label %196

148:                                              ; preds = %82, %76, %62
  %149 = icmp ne i8 %71, 0
  %150 = select i1 %18, i1 %149, i1 false
  br i1 %150, label %151, label %219

151:                                              ; preds = %148
  %152 = tail call fastcc ptr @thread_jump(ptr noundef nonnull %23, ptr noundef nonnull %69) #19
  %153 = icmp eq ptr %152, null
  br i1 %153, label %219, label %154

154:                                              ; preds = %151
  %155 = icmp eq ptr %63, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %154
  %157 = icmp sgt i32 %65, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %156
  %159 = zext nneg i32 %65 to i64
  br label %172

160:                                              ; preds = %154
  %161 = load ptr, ptr @cfun, align 8, !tbaa !10
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !12
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 3
  %165 = load i32, ptr %164, align 8, !tbaa !56
  %166 = sext i32 %165 to i64
  %167 = shl nsw i64 %166, 3
  %168 = tail call ptr @xmalloc(i64 noundef %167) #17
  br label %177

169:                                              ; preds = %172
  %170 = add nuw nsw i64 %173, 1
  %171 = icmp eq i64 %170, %159
  br i1 %171, label %177, label %172, !llvm.loop !68

172:                                              ; preds = %158, %169
  %173 = phi i64 [ 0, %158 ], [ %170, %169 ]
  %174 = getelementptr inbounds ptr, ptr %63, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !10
  %176 = icmp eq ptr %175, %152
  br i1 %176, label %241, label %169

177:                                              ; preds = %169, %156, %160
  %178 = phi ptr [ %168, %160 ], [ %63, %156 ], [ %63, %169 ]
  %179 = getelementptr inbounds %struct.edge_def, ptr %152, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !50
  %181 = icmp eq ptr %180, %1
  br i1 %181, label %219, label %182

182:                                              ; preds = %177
  %183 = load ptr, ptr @cfun, align 8, !tbaa !10
  %184 = getelementptr inbounds %struct.function, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !12
  %186 = getelementptr inbounds %struct.control_flow_graph, ptr %185, i64 0, i32 3
  %187 = load i32, ptr %186, align 8, !tbaa !56
  %188 = add nsw i32 %187, -2
  %189 = icmp slt i32 %65, %188
  br i1 %189, label %191, label %190

190:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #17
  br label %191

191:                                              ; preds = %182, %190
  %192 = add nsw i32 %65, 1
  %193 = sext i32 %65 to i64
  %194 = getelementptr inbounds ptr, ptr %178, i64 %193
  store ptr %152, ptr %194, align 8, !tbaa !10
  %195 = load ptr, ptr %179, align 8, !tbaa !50
  br label %196

196:                                              ; preds = %191, %146, %120, %140, %99
  %197 = phi i32 [ %68, %99 ], [ %145, %140 ], [ %121, %120 ], [ %121, %146 ], [ %68, %191 ]
  %198 = phi i32 [ %67, %99 ], [ %122, %140 ], [ %122, %120 ], [ %147, %146 ], [ %67, %191 ]
  %199 = phi i32 [ %65, %99 ], [ %65, %140 ], [ %65, %120 ], [ %65, %146 ], [ %192, %191 ]
  %200 = phi ptr [ %91, %99 ], [ %91, %140 ], [ %91, %120 ], [ %91, %146 ], [ %195, %191 ]
  %201 = phi i8 [ 0, %99 ], [ 0, %140 ], [ 0, %120 ], [ 0, %146 ], [ 1, %191 ]
  %202 = phi ptr [ %63, %99 ], [ %63, %140 ], [ %63, %120 ], [ %63, %146 ], [ %178, %191 ]
  %203 = icmp eq ptr %200, null
  br i1 %203, label %219, label %204

204:                                              ; preds = %93, %196
  %205 = phi ptr [ %63, %93 ], [ %202, %196 ]
  %206 = phi i8 [ 0, %93 ], [ %201, %196 ]
  %207 = phi ptr [ %69, %93 ], [ %200, %196 ]
  %208 = phi i32 [ %65, %93 ], [ %199, %196 ]
  %209 = phi i32 [ %67, %93 ], [ %198, %196 ]
  %210 = phi i32 [ %98, %93 ], [ %197, %196 ]
  %211 = add nsw i32 %210, 1
  %212 = or i8 %206, %66
  %213 = load ptr, ptr @cfun, align 8, !tbaa !10
  %214 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !12
  %216 = getelementptr inbounds %struct.control_flow_graph, ptr %215, i64 0, i32 3
  %217 = load i32, ptr %216, align 8, !tbaa !56
  %218 = icmp slt i32 %211, %217
  br i1 %218, label %62, label %219

219:                                              ; preds = %151, %148, %177, %196, %204
  %220 = phi ptr [ %69, %151 ], [ %69, %148 ], [ %69, %177 ], [ %69, %196 ], [ %207, %204 ]
  %221 = phi i8 [ %66, %151 ], [ %66, %148 ], [ %66, %177 ], [ %66, %196 ], [ %212, %204 ]
  %222 = phi i32 [ %68, %151 ], [ %68, %148 ], [ %68, %177 ], [ %197, %196 ], [ %211, %204 ]
  %223 = phi i32 [ %67, %151 ], [ %67, %148 ], [ %67, %177 ], [ %198, %196 ], [ %209, %204 ]
  %224 = phi i32 [ %65, %151 ], [ %65, %148 ], [ %65, %177 ], [ %199, %196 ], [ %208, %204 ]
  %225 = phi ptr [ %63, %151 ], [ %63, %148 ], [ %178, %177 ], [ %202, %196 ], [ %205, %204 ]
  %226 = load ptr, ptr @cfun, align 8, !tbaa !10
  %227 = getelementptr inbounds %struct.function, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !12
  %229 = getelementptr inbounds %struct.control_flow_graph, ptr %228, i64 0, i32 3
  %230 = load i32, ptr %229, align 8, !tbaa !56
  br label %231

231:                                              ; preds = %219, %57
  %232 = phi i32 [ %60, %57 ], [ %230, %219 ]
  %233 = phi ptr [ %58, %57 ], [ %228, %219 ]
  %234 = phi ptr [ %37, %57 ], [ %220, %219 ]
  %235 = phi i8 [ 0, %57 ], [ %221, %219 ]
  %236 = phi i32 [ 2, %57 ], [ %222, %219 ]
  %237 = phi i32 [ %39, %57 ], [ %223, %219 ]
  %238 = phi i32 [ 0, %57 ], [ %224, %219 ]
  %239 = phi ptr [ %25, %57 ], [ %225, %219 ]
  %240 = icmp slt i32 %236, %232
  br i1 %240, label %250, label %241

241:                                              ; preds = %172, %231
  %242 = phi ptr [ %239, %231 ], [ %63, %172 ]
  %243 = phi ptr [ %234, %231 ], [ %69, %172 ]
  %244 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %245 = icmp eq ptr %244, null
  br i1 %245, label %347, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %243, i64 0, i32 9
  %248 = load i32, ptr %247, align 8, !tbaa !55
  %249 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %244, ptr noundef nonnull @.str.11, i32 noundef %248) #19
  br label %347

250:                                              ; preds = %231
  %251 = icmp eq ptr %234, %37
  br i1 %251, label %347, label %252

252:                                              ; preds = %250
  %253 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 9
  %254 = load i64, ptr %253, align 8, !tbaa !69
  %255 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 8
  %256 = load i32, ptr %255, align 4, !tbaa !70
  store i32 %237, ptr %38, align 8, !tbaa !67
  %257 = icmp eq i8 %235, 0
  br i1 %257, label %268, label %258

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.control_flow_graph, ptr %233, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !14
  %261 = icmp eq ptr %234, %260
  br i1 %261, label %268, label %262

262:                                              ; preds = %258
  %263 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %23, ptr noundef %234) #17
  tail call fastcc void @notice_new_block(ptr noundef %263) #19
  %264 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %265 = icmp eq ptr %264, null
  br i1 %265, label %283, label %266

266:                                              ; preds = %262
  %267 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 23, i64 1, ptr nonnull %264)
  br label %283

268:                                              ; preds = %258, %252
  %269 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %23, ptr noundef %234) #17
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %273 = icmp eq ptr %272, null
  br i1 %273, label %282, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %21, align 8, !tbaa !55
  %276 = load ptr, ptr %36, align 8, !tbaa !50
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %276, i64 0, i32 9
  %278 = load i32, ptr %277, align 8, !tbaa !55
  %279 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 9
  %280 = load i32, ptr %279, align 8, !tbaa !55
  %281 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %272, ptr noundef nonnull @.str.13, i32 noundef %275, i32 noundef %278, i32 noundef %280) #19
  br label %282

282:                                              ; preds = %274, %271
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %349, !llvm.loop !66

283:                                              ; preds = %268, %262, %266
  %284 = load i32, ptr %19, align 8, !tbaa !71
  %285 = mul nsw i32 %284, %256
  %286 = add nsw i32 %285, 5000
  %287 = sdiv i32 %286, 10000
  %288 = load i32, ptr %20, align 8, !tbaa !20
  %289 = and i32 %288, 1024
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %283
  %292 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %1) #17
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %20, align 8, !tbaa !20
  %296 = or i32 %295, 1024
  store i32 %296, ptr %20, align 8, !tbaa !20
  br label %297

297:                                              ; preds = %294, %291, %283
  br label %298

298:                                              ; preds = %297, %336
  %299 = phi ptr [ %344, %336 ], [ %37, %297 ]
  %300 = phi i32 [ %337, %336 ], [ 0, %297 ]
  %301 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %299) #19, !range !33
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %298
  %304 = icmp slt i32 %300, %238
  br i1 %304, label %306, label %305

305:                                              ; preds = %303
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.1) #17
  br label %306

306:                                              ; preds = %303, %305
  %307 = add nsw i32 %300, 1
  %308 = sext i32 %300 to i64
  %309 = getelementptr inbounds ptr, ptr %239, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !10
  %311 = load ptr, ptr %310, align 8, !tbaa !61
  %312 = icmp eq ptr %311, %299
  br i1 %312, label %314, label %313

313:                                              ; preds = %306
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 602, ptr noundef nonnull @.str.1) #17
  br label %314

314:                                              ; preds = %306, %313
  tail call void @update_bb_profile_for_threading(ptr noundef %299, i32 noundef %287, i64 noundef %254, ptr noundef nonnull %310) #17
  tail call void @update_br_prob_note(ptr noundef %299) #17
  br label %336

315:                                              ; preds = %298
  %316 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 8
  %317 = load i64, ptr %316, align 8, !tbaa !72
  %318 = sub nsw i64 %317, %254
  %319 = tail call i64 @llvm.smax.i64(i64 %318, i64 0)
  store i64 %319, ptr %316, align 8, !tbaa !72
  %320 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 11
  %321 = load i32, ptr %320, align 8, !tbaa !71
  %322 = sub nsw i32 %321, %287
  %323 = tail call i32 @llvm.smax.i32(i32 %322, i32 0)
  store i32 %323, ptr %320, align 8, !tbaa !71
  %324 = icmp slt i32 %300, %238
  br i1 %324, label %325, label %333

325:                                              ; preds = %315
  %326 = sext i32 %300 to i64
  %327 = getelementptr inbounds ptr, ptr %239, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !10
  %329 = load ptr, ptr %328, align 8, !tbaa !61
  %330 = icmp eq ptr %299, %329
  %331 = zext i1 %330 to i32
  %332 = add nsw i32 %300, %331
  br label %333

333:                                              ; preds = %325, %315
  %334 = phi i32 [ %300, %315 ], [ %332, %325 ]
  %335 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %299) #19
  br label %336

336:                                              ; preds = %333, %314
  %337 = phi i32 [ %334, %333 ], [ %307, %314 ]
  %338 = phi ptr [ %335, %333 ], [ %310, %314 ]
  %339 = getelementptr inbounds %struct.edge_def, ptr %338, i64 0, i32 9
  %340 = load i64, ptr %339, align 8, !tbaa !69
  %341 = sub nsw i64 %340, %254
  %342 = tail call i64 @llvm.smax.i64(i64 %341, i64 0)
  store i64 %342, ptr %339, align 8, !tbaa !69
  %343 = getelementptr inbounds %struct.edge_def, ptr %338, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !50
  %345 = icmp eq ptr %344, %234
  br i1 %345, label %346, label %298, !llvm.loop !73

346:                                              ; preds = %336
  br label %349, !llvm.loop !66

347:                                              ; preds = %250, %241, %246
  %348 = phi ptr [ %239, %250 ], [ %242, %241 ], [ %242, %246 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %349

349:                                              ; preds = %282, %346, %347, %34
  %350 = phi ptr [ %25, %34 ], [ %348, %347 ], [ %239, %346 ], [ %239, %282 ]
  %351 = phi i8 [ %24, %34 ], [ %24, %347 ], [ 1, %346 ], [ %24, %282 ]
  %352 = load i32, ptr %3, align 8
  %353 = load ptr, ptr %13, align 8
  %354 = tail call fastcc ptr @ei_safe_edge(i32 %352, ptr %353) #19
  %355 = icmp eq ptr %354, null
  br i1 %355, label %356, label %22

356:                                              ; preds = %349
  %357 = icmp eq ptr %350, null
  br i1 %357, label %359, label %358

358:                                              ; preds = %356
  tail call void @free(ptr noundef nonnull %350) #19
  br label %359

359:                                              ; preds = %46, %10, %356, %358, %2
  %360 = phi i8 [ 0, %2 ], [ %351, %358 ], [ %351, %356 ], [ 0, %10 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i8 %360
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = load ptr, ptr %1, align 8, !tbaa !48
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #19
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %158, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %1) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @cfun, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = tail call i32 @computed_jump_p(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %158

25:                                               ; preds = %18, %11, %8
  %26 = load ptr, ptr %1, align 8, !tbaa !48
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 0) #19
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !20
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 1) #19
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !20
  %35 = xor i32 %34, %30
  %36 = and i32 %35, 96
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %158

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !53
  %41 = and i32 %40, 8192
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %158

43:                                               ; preds = %38
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 53, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !74
  %47 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %26) #19
  %48 = icmp ugt i32 %47, %46
  br i1 %48, label %158, label %49

49:                                               ; preds = %43
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !62
  %51 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %50, ptr %51, align 8, !tbaa.struct !63
  %52 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %3) #19, !range !33
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49, %60
  %55 = load ptr, ptr %3, align 8, !tbaa !10
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !53
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %61 = load i32, ptr %4, align 8
  %62 = load ptr, ptr %51, align 8
  %63 = call fastcc zeroext i8 @ei_cond(i32 %61, ptr %62, ptr noundef nonnull %3) #19, !range !33
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %54, !llvm.loop !76

65:                                               ; preds = %60, %54, %49
  %66 = phi ptr [ null, %49 ], [ %55, %54 ], [ null, %60 ]
  %67 = load ptr, ptr %1, align 8, !tbaa !48
  %68 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %67) #19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %158, label %70

70:                                               ; preds = %65
  %71 = icmp eq ptr %66, null
  br label %72

72:                                               ; preds = %70, %148
  %73 = phi ptr [ %67, %70 ], [ %151, %148 ]
  %74 = phi i8 [ 0, %70 ], [ %150, %148 ]
  %75 = phi i32 [ 0, %70 ], [ %149, %148 ]
  br label %76

76:                                               ; preds = %72, %84
  %77 = phi ptr [ %73, %72 ], [ %85, %84 ]
  %78 = phi ptr [ %73, %72 ], [ %86, %84 ]
  %79 = phi i32 [ %75, %72 ], [ %81, %84 ]
  %80 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %78, i32 noundef %79) #19
  %81 = add nuw i32 %79, 1
  br i1 %71, label %106, label %82

82:                                               ; preds = %76
  %83 = icmp eq ptr %80, %66
  br i1 %83, label %84, label %89

84:                                               ; preds = %99, %82, %106
  %85 = phi ptr [ %100, %99 ], [ %77, %82 ], [ %107, %106 ]
  %86 = phi ptr [ %100, %99 ], [ %78, %82 ], [ %107, %106 ]
  %87 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %86) #19
  %88 = icmp ult i32 %81, %87
  br i1 %88, label %76, label %154, !llvm.loop !77

89:                                               ; preds = %82
  %90 = load i1, ptr @first_pass, align 1
  br i1 %90, label %101, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %80, align 8, !tbaa !61
  %93 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %92) #17
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load ptr, ptr %66, align 8, !tbaa !61
  %97 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %96) #17
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load ptr, ptr %1, align 8, !tbaa !48
  br label %84

101:                                              ; preds = %95, %91, %89
  %102 = tail call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr noundef %80, ptr noundef nonnull %66) #19, !range !33
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %148, !llvm.loop !77

104:                                              ; preds = %101
  %105 = load ptr, ptr %1, align 8, !tbaa !48
  br label %106

106:                                              ; preds = %104, %76
  %107 = phi ptr [ %105, %104 ], [ %77, %76 ]
  %108 = load ptr, ptr %80, align 8, !tbaa !61
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !49
  %111 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %110, i32 noundef 0) #19
  %112 = icmp eq ptr %111, %80
  br i1 %112, label %113, label %84

113:                                              ; preds = %106
  %114 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %107) #19
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %148, label %116

116:                                              ; preds = %113, %124
  %117 = phi ptr [ %125, %124 ], [ %107, %113 ]
  %118 = phi i32 [ %120, %124 ], [ 0, %113 ]
  %119 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %117, i32 noundef %118) #19
  %120 = add nuw i32 %118, 1
  %121 = icmp eq ptr %119, %80
  %122 = icmp eq ptr %119, %66
  %123 = or i1 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %116, %128, %141, %145
  %125 = load ptr, ptr %1, align 8, !tbaa !48
  %126 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %125) #19
  %127 = icmp ult i32 %120, %126
  br i1 %127, label %116, label %148, !llvm.loop !78

128:                                              ; preds = %116
  %129 = load ptr, ptr %80, align 8, !tbaa !61
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 9
  %131 = load i32, ptr %130, align 8, !tbaa !55
  %132 = load ptr, ptr %119, align 8, !tbaa !61
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !55
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %124, label %136

136:                                              ; preds = %128
  %137 = load i1, ptr @first_pass, align 1
  br i1 %137, label %145, label %138

138:                                              ; preds = %136
  %139 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef nonnull %129) #17
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load ptr, ptr %119, align 8, !tbaa !61
  %143 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %142) #17
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %124, label %145

145:                                              ; preds = %141, %138, %136
  %146 = tail call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr noundef nonnull %80, ptr noundef nonnull %119) #19, !range !33
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %124, label %148

148:                                              ; preds = %101, %145, %124, %113
  %149 = phi i32 [ %81, %113 ], [ 0, %145 ], [ %81, %124 ], [ 0, %101 ]
  %150 = phi i8 [ %74, %113 ], [ 1, %145 ], [ %74, %124 ], [ 1, %101 ]
  %151 = load ptr, ptr %1, align 8, !tbaa !48
  %152 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %151) #19
  %153 = icmp ult i32 %149, %152
  br i1 %153, label %72, label %154, !llvm.loop !77

154:                                              ; preds = %148, %84
  %155 = phi i8 [ %74, %84 ], [ %150, %148 ]
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  store i1 true, ptr @crossjumps_occured, align 1
  br label %158

158:                                              ; preds = %65, %154, %157, %43, %25, %38, %18, %2
  %159 = phi i8 [ 0, %2 ], [ 0, %18 ], [ 0, %38 ], [ 0, %25 ], [ 0, %43 ], [ %155, %157 ], [ 0, %154 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i8 %159
}

; Function Attrs: optsize
declare zeroext i8 @forwarder_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !33
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !79
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_blocks_move_successor_nojumps(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = xor i32 %8, %6
  %10 = and i32 %9, 96
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  %17 = call zeroext i8 @tablejump_p(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %3, align 8, !tbaa !10
  %21 = call ptr @prev_active_insn(ptr noundef %20) #17
  %22 = load ptr, ptr %13, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = icmp eq ptr %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 8, !tbaa !10
  store ptr %27, ptr %23, align 8, !tbaa !29
  br label %28

28:                                               ; preds = %26, %19, %12
  %29 = load ptr, ptr %13, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.rtl_bb_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !28
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr %33, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 11
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call ptr @delete_insn(ptr noundef nonnull %33) #17
  %41 = load ptr, ptr %13, align 8, !tbaa !28
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  br label %44

44:                                               ; preds = %39, %35, %28
  %45 = phi ptr [ %43, %39 ], [ %31, %35 ], [ %31, %28 ]
  %46 = phi ptr [ %41, %39 ], [ %29, %35 ], [ %29, %28 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !28
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !29
  call void @reorder_insns_nobb(ptr noundef %47, ptr noundef %45, ptr noundef %51) #17
  %52 = load ptr, ptr %13, align 8, !tbaa !28
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  store ptr %16, ptr %53, align 8, !tbaa !29
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !55
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !55
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.8, i32 noundef %58, i32 noundef %60) #19
  br label %62

62:                                               ; preds = %56, %44
  call void @merge_blocks(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %63

63:                                               ; preds = %2, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @notice_new_block(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %0) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = or i32 %8, 1024
  store i32 %9, ptr %7, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %1, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_blocks_move_predecessor_nojumps(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = xor i32 %6, %4
  %8 = and i32 %7, 96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  %15 = tail call ptr @next_nonnote_insn(ptr noundef %14) #17
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 11
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @.str.1) #17
  br label %20

20:                                               ; preds = %10, %19
  %21 = tail call ptr @delete_insn(ptr noundef nonnull %15) #17
  %22 = load ptr, ptr %11, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr %22, align 8, !tbaa !54
  tail call void @reorder_insns_nobb(ptr noundef %32, ptr noundef %24, ptr noundef %29) #17
  br label %33

33:                                               ; preds = %31, %20
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #17
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !55
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.9, i32 noundef %38, i32 noundef %40) #19
  br label %42

42:                                               ; preds = %36, %33
  tail call void @unlink_block(ptr noundef nonnull %0) #17
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !16
  tail call void @link_block(ptr noundef nonnull %0, ptr noundef %44) #17
  tail call void @merge_blocks(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %45

45:                                               ; preds = %2, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @prev_active_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unlink_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @link_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_fallthru(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @block_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tidy_fallthru_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !33
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @df_get_bb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @locator_eq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @thread_jump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %270

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %13) #19
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %270

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %18) #19
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = or disjoint i32 %7, 2048
  store i32 %22, ptr %6, align 8, !tbaa !20
  br label %270

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct.rtl_bb_info, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !29
  %28 = tail call i32 @any_condjump_p(ptr noundef %27) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %270, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !29
  %35 = tail call i32 @any_condjump_p(ptr noundef %34) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %31, align 8, !tbaa !28
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %41 = tail call i32 @onlyjump_p(ptr noundef %40) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %30
  %44 = load i32, ptr %6, align 8, !tbaa !20
  %45 = or i32 %44, 2048
  store i32 %45, ptr %6, align 8, !tbaa !20
  br label %270

46:                                               ; preds = %37
  %47 = load ptr, ptr %0, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !28
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !29
  %52 = tail call ptr @pc_set(ptr noundef %51) #17
  %53 = load ptr, ptr %31, align 8, !tbaa !28
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !29
  %56 = tail call ptr @pc_set(ptr noundef %55) #17
  %57 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !28
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !28
  %63 = load ptr, ptr @global_rtl, align 16, !tbaa !10
  %64 = icmp eq ptr %62, %63
  %65 = and i32 %58, 1
  %66 = icmp eq i32 %65, 0
  %67 = xor i1 %66, %64
  %68 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !28
  %70 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !28
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !28
  store ptr %73, ptr %3, align 8, !tbaa !10
  br i1 %67, label %81, label %74

74:                                               ; preds = %46
  %75 = load ptr, ptr %0, align 8, !tbaa !61
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !28
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !29
  %80 = tail call i32 @reversed_comparison_code(ptr noundef %69, ptr noundef %79) #17
  br label %84

81:                                               ; preds = %46
  %82 = load i32, ptr %69, align 8
  %83 = and i32 %82, 65535
  br label %84

84:                                               ; preds = %81, %74
  %85 = phi i32 [ %80, %74 ], [ %83, %81 ]
  %86 = load i32, ptr %73, align 8
  %87 = and i32 %86, 65535
  %88 = load ptr, ptr %31, align 8, !tbaa !28
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !29
  %91 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %73, ptr noundef %90) #17
  %92 = tail call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %87) #17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = tail call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %91) #17
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %270, label %97

97:                                               ; preds = %94, %84
  %98 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !28
  %100 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !28
  %102 = tail call i32 @rtx_equal_p(ptr noundef %99, ptr noundef %101) #17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %270, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !28
  %107 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !28
  %109 = tail call i32 @rtx_equal_p(ptr noundef %106, ptr noundef %108) #17
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %270, label %111

111:                                              ; preds = %104
  %112 = load ptr, ptr %31, align 8, !tbaa !28
  %113 = load ptr, ptr %112, align 8, !tbaa !54
  %114 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 2
  %115 = load ptr, ptr %114, align 8, !tbaa !28
  %116 = getelementptr inbounds %struct.rtl_bb_info, ptr %112, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !29
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !28
  %120 = icmp eq ptr %115, %119
  br i1 %120, label %147, label %121

121:                                              ; preds = %111, %138
  %122 = phi ptr [ %139, %138 ], [ %112, %111 ]
  %123 = phi ptr [ %141, %138 ], [ %115, %111 ]
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -7
  %127 = icmp ult i32 %126, 4
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !28
  %131 = tail call i32 @side_effects_p(ptr noundef %130) #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load ptr, ptr %31, align 8, !tbaa !28
  br label %138

135:                                              ; preds = %128
  %136 = load i32, ptr %6, align 8, !tbaa !20
  %137 = or i32 %136, 2048
  store i32 %137, ptr %6, align 8, !tbaa !20
  br label %270

138:                                              ; preds = %133, %121
  %139 = phi ptr [ %134, %133 ], [ %122, %121 ]
  %140 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 2
  %141 = load ptr, ptr %140, align 8, !tbaa !28
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %139, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !29
  %144 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 2
  %145 = load ptr, ptr %144, align 8, !tbaa !28
  %146 = icmp eq ptr %141, %145
  br i1 %146, label %147, label %121, !llvm.loop !81

147:                                              ; preds = %138, %111
  tail call void @cselib_init(i32 noundef 0) #17
  %148 = load ptr, ptr %0, align 8, !tbaa !61
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !28
  %151 = load ptr, ptr %150, align 8, !tbaa !54
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 2
  %153 = load ptr, ptr %152, align 8, !tbaa !28
  %154 = getelementptr inbounds %struct.rtl_bb_info, ptr %150, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !29
  %156 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %157 = load ptr, ptr %156, align 8, !tbaa !28
  %158 = icmp eq ptr %153, %157
  br i1 %158, label %179, label %159

159:                                              ; preds = %147, %168
  %160 = phi ptr [ %169, %168 ], [ %148, %147 ]
  %161 = phi ptr [ %171, %168 ], [ %153, %147 ]
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = add nsw i32 %163, -7
  %165 = icmp ult i32 %164, 4
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  tail call void @cselib_process_insn(ptr noundef nonnull %161) #17
  %167 = load ptr, ptr %0, align 8, !tbaa !61
  br label %168

168:                                              ; preds = %159, %166
  %169 = phi ptr [ %160, %159 ], [ %167, %166 ]
  %170 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1, i32 0, i32 0, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !28
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !28
  %174 = getelementptr inbounds %struct.rtl_bb_info, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !29
  %176 = getelementptr inbounds %struct.rtx_def, ptr %175, i64 0, i32 1, i32 0, i32 0, i64 2
  %177 = load ptr, ptr %176, align 8, !tbaa !28
  %178 = icmp eq ptr %171, %177
  br i1 %178, label %179, label %159, !llvm.loop !82

179:                                              ; preds = %168, %147
  %180 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @bitmap_clear(ptr noundef %180) #17
  %181 = load ptr, ptr %31, align 8, !tbaa !28
  %182 = load ptr, ptr %181, align 8, !tbaa !54
  %183 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1, i32 0, i32 0, i64 2
  %184 = load ptr, ptr %183, align 8, !tbaa !28
  %185 = getelementptr inbounds %struct.rtl_bb_info, ptr %181, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !29
  %187 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !28
  %189 = icmp eq ptr %184, %188
  br i1 %189, label %242, label %190

190:                                              ; preds = %179, %225
  %191 = phi ptr [ %229, %225 ], [ %184, %179 ]
  %192 = phi i32 [ %226, %225 ], [ undef, %179 ]
  %193 = load i32, ptr %191, align 8
  %194 = and i32 %193, 65535
  %195 = add nsw i32 %194, -7
  %196 = icmp ult i32 %195, 4
  br i1 %196, label %197, label %225

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !28
  %200 = load i32, ptr %199, align 8
  %201 = and i32 %200, 65535
  %202 = icmp eq i32 %201, 15
  br i1 %202, label %203, label %221

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !28
  %206 = load i32, ptr %205, align 8, !tbaa !83
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %225, label %208

208:                                              ; preds = %203, %208
  %209 = phi i64 [ %216, %208 ], [ 0, %203 ]
  %210 = phi ptr [ %217, %208 ], [ %205, %203 ]
  %211 = phi i8 [ %215, %208 ], [ 0, %203 ]
  %212 = getelementptr inbounds %struct.rtvec_def, ptr %210, i64 0, i32 1, i64 %209
  %213 = load ptr, ptr %212, align 8, !tbaa !10
  %214 = tail call fastcc zeroext i8 @mark_effect(ptr noundef %213, ptr noundef %180) #19, !range !33
  %215 = or i8 %214, %211
  %216 = add nuw nsw i64 %209, 1
  %217 = load ptr, ptr %204, align 8, !tbaa !28
  %218 = load i32, ptr %217, align 8, !tbaa !83
  %219 = zext i32 %218 to i64
  %220 = icmp ult i64 %216, %219
  br i1 %220, label %208, label %223, !llvm.loop !85

221:                                              ; preds = %197
  %222 = tail call fastcc zeroext i8 @mark_effect(ptr noundef nonnull %199, ptr noundef %180) #19, !range !33
  br label %225

223:                                              ; preds = %208
  %224 = trunc i64 %216 to i32
  br label %225

225:                                              ; preds = %223, %203, %190, %221
  %226 = phi i32 [ %192, %190 ], [ %192, %221 ], [ 0, %203 ], [ %224, %223 ]
  %227 = phi i8 [ 0, %190 ], [ %222, %221 ], [ 0, %203 ], [ %215, %223 ]
  tail call void @cselib_process_insn(ptr noundef nonnull %191) #17
  %228 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 2
  %229 = load ptr, ptr %228, align 8, !tbaa !28
  %230 = load ptr, ptr %31, align 8, !tbaa !28
  %231 = getelementptr inbounds %struct.rtl_bb_info, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !29
  %233 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 2
  %234 = load ptr, ptr %233, align 8, !tbaa !28
  %235 = icmp ne ptr %229, %234
  %236 = icmp eq i8 %227, 0
  %237 = select i1 %235, i1 %236, i1 false
  br i1 %237, label %190, label %238, !llvm.loop !86

238:                                              ; preds = %225
  store i32 %226, ptr %4, align 4, !tbaa !6
  br i1 %236, label %242, label %239

239:                                              ; preds = %238
  %240 = load i32, ptr %6, align 8, !tbaa !20
  %241 = or i32 %240, 2048
  store i32 %241, ptr %6, align 8, !tbaa !20
  br label %269

242:                                              ; preds = %179, %238
  %243 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @mentions_nonequal_regs, ptr noundef %180) #17
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %269

245:                                              ; preds = %242
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %180, ptr noundef nonnull %4) #19
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !33
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %245
  call void @bitmap_obstack_free(ptr noundef %180) #17
  call void @cselib_finish() #17
  %249 = call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %87) #17
  %250 = icmp ne i32 %249, 0
  %251 = load ptr, ptr %70, align 8, !tbaa !28
  %252 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !28
  %254 = load ptr, ptr @global_rtl, align 16, !tbaa !10
  %255 = icmp ne ptr %253, %254
  %256 = xor i1 %250, %255
  %257 = load ptr, ptr %17, align 8, !tbaa !49
  %258 = call fastcc ptr @VEC_edge_base_index(ptr noundef %257, i32 noundef 0) #19
  %259 = getelementptr inbounds %struct.edge_def, ptr %258, i64 0, i32 7
  %260 = load i32, ptr %259, align 8, !tbaa !53
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  br i1 %256, label %266, label %263

263:                                              ; preds = %248
  br i1 %262, label %270, label %264

264:                                              ; preds = %263
  %265 = call fastcc ptr @VEC_edge_base_index(ptr noundef %257, i32 noundef 1) #19
  br label %270

266:                                              ; preds = %248
  br i1 %262, label %267, label %270

267:                                              ; preds = %266
  %268 = call fastcc ptr @VEC_edge_base_index(ptr noundef %257, i32 noundef 1) #19
  br label %270

269:                                              ; preds = %245, %242, %239
  call void @bitmap_obstack_free(ptr noundef %180) #17
  call void @cselib_finish() #17
  br label %270

270:                                              ; preds = %266, %263, %267, %264, %97, %104, %94, %23, %10, %2, %269, %135, %43, %21
  %271 = phi ptr [ null, %21 ], [ null, %135 ], [ null, %269 ], [ null, %43 ], [ null, %2 ], [ null, %10 ], [ null, %23 ], [ null, %94 ], [ null, %104 ], [ null, %97 ], [ %265, %264 ], [ %268, %267 ], [ %258, %263 ], [ %258, %266 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret ptr %271
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_bb_profile_for_threading(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @comparison_dominates_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mark_effect(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %68 [
    i16 25, label %5
    i16 23, label %32
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %68

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #19
  %13 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %12) #17
  %14 = icmp slt i32 %12, 53
  br i1 %14, label %15, label %68

15:                                               ; preds = %11
  %16 = sext i32 %12 to i64
  %17 = load i32, ptr %7, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !28
  %23 = icmp ugt i8 %22, 1
  br i1 %23, label %24, label %68

24:                                               ; preds = %15
  %25 = zext i8 %22 to i32
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ %28, %26 ], [ %25, %24 ]
  %28 = add nsw i32 %27, -1
  %29 = add nsw i32 %28, %12
  %30 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %29) #17
  %31 = icmp ugt i32 %27, 2
  br i1 %31, label %26, label %68, !llvm.loop !87

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !28
  %37 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %34, ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !28
  %41 = load ptr, ptr @global_rtl, align 16, !tbaa !10
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %68, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %40, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %40) #19
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %48) #17
  %50 = icmp slt i32 %48, 53
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = sext i32 %48 to i64
  %53 = load i32, ptr %40, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %52, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !28
  %59 = icmp ugt i8 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %51
  %61 = zext i8 %58 to i32
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i32 [ %64, %62 ], [ %61, %60 ]
  %64 = add nsw i32 %63, -1
  %65 = add nsw i32 %64, %48
  %66 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %65) #17
  %67 = icmp ugt i32 %63, 2
  br i1 %67, label %62, label %68, !llvm.loop !88

68:                                               ; preds = %62, %26, %51, %15, %2, %47, %43, %39, %32, %5, %11
  %69 = phi i8 [ 0, %11 ], [ 0, %5 ], [ 0, %32 ], [ 0, %39 ], [ 1, %43 ], [ 0, %47 ], [ 0, %2 ], [ 0, %15 ], [ 0, %51 ], [ 0, %26 ], [ 0, %62 ]
  ret i8 %69
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mentions_nonequal_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #19
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %8) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = icmp slt i32 %8, 53
  br i1 %12, label %13, label %31

13:                                               ; preds = %11
  %14 = sext i32 %8 to i64
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %14, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !28
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %26, %13
  %24 = phi i32 [ %22, %13 ], [ %27, %26 ]
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = add nsw i32 %24, -1
  %28 = add nsw i32 %27, %8
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %28) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %31, !llvm.loop !89

31:                                               ; preds = %23, %26, %11, %2, %7
  %32 = phi i32 [ 1, %7 ], [ 0, %2 ], [ 0, %11 ], [ 0, %23 ], [ 1, %26 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %4, ptr %0, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !94
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !92
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !95
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !97
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !99
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !99
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !100

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !6
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !6
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !97
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !92
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !97
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !98
  store i64 %35, ptr %3, align 8, !tbaa !99
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !6
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !6
  %40 = load i32, ptr %23, align 8, !tbaa !97
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !97
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !101

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !102
  store ptr %44, ptr %0, align 8, !tbaa !92
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !95
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !6
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !99
  store i32 %16, ptr %1, align 4, !tbaa !6
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !28
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_for_cselib_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.replace_label_data, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.edge_iterator, align 8
  %16 = load ptr, ptr %1, align 8, !tbaa !61
  %17 = load ptr, ptr %2, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  store ptr null, ptr %5, align 8, !tbaa !10
  store ptr null, ptr %4, align 8, !tbaa !10
  %18 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !6
  %19 = icmp ne i32 %18, 0
  %20 = load i32, ptr @reload_completed, align 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %431, label %23

23:                                               ; preds = %3
  %24 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %16) #19, !range !33
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !20
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %16) #19
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  br label %34

34:                                               ; preds = %31, %26, %23
  %35 = phi ptr [ %33, %31 ], [ %16, %26 ], [ %16, %23 ]
  %36 = phi ptr [ %32, %31 ], [ %1, %26 ], [ %1, %23 ]
  %37 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %17) #19, !range !33
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !20
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %17) #19
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  br label %47

47:                                               ; preds = %44, %39, %34
  %48 = phi ptr [ %46, %44 ], [ %17, %39 ], [ %17, %34 ]
  %49 = phi ptr [ %45, %44 ], [ %2, %39 ], [ %2, %34 ]
  %50 = load ptr, ptr @cfun, align 8, !tbaa !10
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = load ptr, ptr %52, align 8, !tbaa !19
  %54 = icmp eq ptr %35, %53
  %55 = icmp eq ptr %48, %53
  %56 = select i1 %54, i1 true, i1 %55
  %57 = icmp eq ptr %35, %48
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %431, label %59

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 13
  %63 = load i32, ptr %62, align 8, !tbaa !20
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = tail call fastcc ptr @single_succ(ptr noundef nonnull %61) #19
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 13
  %69 = load i32, ptr %68, align 8, !tbaa !20
  %70 = and i32 %69, 1024
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %431

72:                                               ; preds = %66, %59
  %73 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !20
  %77 = and i32 %76, 1024
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = tail call fastcc ptr @single_succ(ptr noundef nonnull %74) #19
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 13
  %82 = load i32, ptr %81, align 8, !tbaa !20
  %83 = and i32 %82, 1024
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %431

85:                                               ; preds = %79, %72
  %86 = load ptr, ptr %35, align 8, !tbaa !48
  %87 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %86) #19
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %431, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %48, align 8, !tbaa !48
  %91 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %90) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %431, label %93

93:                                               ; preds = %89
  %94 = tail call fastcc zeroext i8 @outgoing_edges_match(i32 noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %48) #19
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %431, label %96

96:                                               ; preds = %93
  %97 = call fastcc i32 @flow_find_cross_jump(i32 noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %48, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %98 = load ptr, ptr @compiler_params, align 8, !tbaa !10
  %99 = getelementptr inbounds %struct.param_info, ptr %98, i64 54, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !74
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load ptr, ptr %4, align 8, !tbaa !10
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !28
  %106 = load ptr, ptr %105, align 8, !tbaa !54
  %107 = icmp eq ptr %103, %106
  br i1 %107, label %108, label %431

108:                                              ; preds = %102, %96
  %109 = load ptr, ptr %60, align 8, !tbaa !50
  %110 = tail call fastcc zeroext i8 @block_has_preserve_label(ptr noundef %109) #19, !range !33
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %114 = load i32, ptr %113, align 8, !tbaa !53
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %431

117:                                              ; preds = %112, %108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !28
  %120 = getelementptr inbounds %struct.rtl_bb_info, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !29
  %122 = call zeroext i8 @tablejump_p(ptr noundef %121, ptr noundef nonnull %8, ptr noundef nonnull %10) #17
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %155, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !28
  %127 = getelementptr inbounds %struct.rtl_bb_info, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !29
  %129 = call zeroext i8 @tablejump_p(ptr noundef %128, ptr noundef nonnull %9, ptr noundef nonnull %11) #17
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %155, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr %8, align 8, !tbaa !10
  %133 = load ptr, ptr %9, align 8, !tbaa !10
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %155, label %135

135:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  store ptr %132, ptr %12, align 8, !tbaa !103
  %136 = getelementptr inbounds %struct.replace_label_data, ptr %12, i64 0, i32 1
  store ptr %133, ptr %136, align 8, !tbaa !105
  %137 = getelementptr inbounds %struct.replace_label_data, ptr %12, i64 0, i32 2
  store i8 1, ptr %137, align 8, !tbaa !106
  %138 = call ptr @get_insns() #17
  store ptr %138, ptr %13, align 8, !tbaa !10
  %139 = icmp eq ptr %138, null
  br i1 %139, label %154, label %140

140:                                              ; preds = %135, %149
  %141 = phi ptr [ %152, %149 ], [ %138, %135 ]
  %142 = load ptr, ptr %118, align 8, !tbaa !28
  %143 = getelementptr inbounds %struct.rtl_bb_info, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !29
  %145 = icmp eq ptr %141, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = call i32 @for_each_rtx(ptr noundef nonnull %13, ptr noundef nonnull @replace_label, ptr noundef nonnull %12) #17
  %148 = load ptr, ptr %13, align 8, !tbaa !10
  br label %149

149:                                              ; preds = %140, %146
  %150 = phi ptr [ %141, %140 ], [ %148, %146 ]
  %151 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1, i32 0, i32 0, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !28
  store ptr %152, ptr %13, align 8, !tbaa !10
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %140, !llvm.loop !107

154:                                              ; preds = %149, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %155

155:                                              ; preds = %154, %131, %124, %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  %156 = load ptr, ptr %5, align 8, !tbaa !28
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !28
  %159 = load ptr, ptr %158, align 8, !tbaa !54
  %160 = icmp eq ptr %156, %159
  br i1 %160, label %161, label %201

161:                                              ; preds = %155
  %162 = load ptr, ptr %48, align 8, !tbaa !48
  %163 = call fastcc ptr @VEC_edge_base_index(ptr noundef %162, i32 noundef 0) #19
  %164 = getelementptr inbounds %struct.edge_def, ptr %163, i64 0, i32 7
  %165 = load i32, ptr %164, align 8, !tbaa !53
  %166 = and i32 %165, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %215, label %168

168:                                              ; preds = %161
  %169 = load i32, ptr %156, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 12
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !28
  store ptr %174, ptr %5, align 8, !tbaa !10
  br label %175

175:                                              ; preds = %172, %168
  %176 = phi ptr [ %156, %168 ], [ %174, %172 ]
  br label %177

177:                                              ; preds = %175, %181
  %178 = phi ptr [ %183, %181 ], [ %176, %175 ]
  %179 = load i32, ptr %178, align 8
  %180 = trunc i32 %179 to i16
  switch i16 %180, label %187 [
    i16 7, label %181
    i16 13, label %184
  ]

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 2
  %183 = load ptr, ptr %182, align 8, !tbaa !28
  br label %177, !llvm.loop !108

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 2
  %186 = load ptr, ptr %185, align 8, !tbaa !28
  br label %187

187:                                              ; preds = %177, %184
  %188 = phi ptr [ %186, %184 ], [ %178, %177 ]
  store ptr %188, ptr %5, align 8, !tbaa !10
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 7
  br i1 %191, label %192, label %199

192:                                              ; preds = %187, %192
  %193 = phi ptr [ %195, %192 ], [ %188, %187 ]
  %194 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 2
  %195 = load ptr, ptr %194, align 8, !tbaa !28
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 7
  br i1 %198, label %192, label %199, !llvm.loop !109

199:                                              ; preds = %192, %187
  %200 = phi ptr [ %188, %187 ], [ %195, %192 ]
  store ptr %200, ptr %5, align 8, !tbaa !10
  br label %201

201:                                              ; preds = %199, %155
  %202 = phi ptr [ %200, %199 ], [ %156, %155 ]
  %203 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !55
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %203, ptr noundef nonnull @.str.14, i32 noundef %207, i32 noundef %97) #19
  br label %209

209:                                              ; preds = %205, %201
  %210 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !28
  %212 = call ptr @split_block(ptr noundef nonnull %48, ptr noundef %211) #17
  %213 = getelementptr inbounds %struct.edge_def, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !50
  br label %215

215:                                              ; preds = %161, %209
  %216 = phi ptr [ %214, %209 ], [ %48, %161 ]
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %218 = icmp eq ptr %217, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %221 = load i32, ptr %220, align 8, !tbaa !55
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %223 = load i32, ptr %222, align 8, !tbaa !55
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %217, ptr noundef nonnull @.str.15, i32 noundef %221, i32 noundef %223, i32 noundef %97) #19
  br label %225

225:                                              ; preds = %219, %215
  call void @df_set_bb_dirty(ptr noundef %216) #17
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 1
  %227 = call fastcc ptr @ei_start_1(ptr noundef nonnull %226) #19
  store i32 0, ptr %7, align 8, !tbaa.struct !62
  %228 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %227, ptr %228, align 8, !tbaa.struct !63
  %229 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %227, ptr noundef nonnull %6) #19, !range !33
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %372, label %231

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %233 = getelementptr inbounds i8, ptr %15, i64 8
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 11
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 11
  br label %236

236:                                              ; preds = %231, %366
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  %237 = load ptr, ptr %6, align 8, !tbaa !10
  %238 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !50
  %240 = getelementptr inbounds %struct.basic_block_def, ptr %239, i64 0, i32 13
  %241 = load i32, ptr %240, align 8, !tbaa !20
  %242 = and i32 %241, 1024
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %236
  %245 = call fastcc ptr @single_succ(ptr noundef nonnull %239) #19
  br label %246

246:                                              ; preds = %244, %236
  %247 = phi ptr [ %245, %244 ], [ %239, %236 ]
  %248 = call fastcc ptr @ei_start_1(ptr noundef nonnull %232) #19
  store i32 0, ptr %15, align 8, !tbaa.struct !62
  store ptr %248, ptr %233, align 8, !tbaa.struct !63
  %249 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %248, ptr noundef nonnull %14) #19, !range !33
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %269, label %251

251:                                              ; preds = %246, %264
  %252 = load ptr, ptr %14, align 8, !tbaa !10
  %253 = getelementptr inbounds %struct.edge_def, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !50
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %254, i64 0, i32 13
  %256 = load i32, ptr %255, align 8, !tbaa !20
  %257 = and i32 %256, 1024
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %251
  %260 = call fastcc ptr @single_succ(ptr noundef nonnull %254) #19
  br label %261

261:                                              ; preds = %259, %251
  %262 = phi ptr [ %260, %259 ], [ %254, %251 ]
  %263 = icmp eq ptr %247, %262
  br i1 %263, label %269, label %264

264:                                              ; preds = %261
  call fastcc void @ei_next(ptr noundef nonnull %15) #19
  %265 = load i32, ptr %15, align 8
  %266 = load ptr, ptr %233, align 8
  %267 = call fastcc zeroext i8 @ei_cond(i32 %265, ptr %266, ptr noundef nonnull %14) #19, !range !33
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %251, !llvm.loop !110

269:                                              ; preds = %264, %261, %246
  %270 = load ptr, ptr %14, align 8, !tbaa !10
  %271 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 9
  %272 = load i64, ptr %271, align 8, !tbaa !69
  %273 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 9
  %274 = load i64, ptr %273, align 8, !tbaa !69
  %275 = add nsw i64 %274, %272
  store i64 %275, ptr %273, align 8, !tbaa !69
  %276 = load ptr, ptr %238, align 8, !tbaa !50
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %276, i64 0, i32 13
  %278 = load i32, ptr %277, align 8, !tbaa !20
  %279 = and i32 %278, 1024
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %303, label %281

281:                                              ; preds = %269
  %282 = load i64, ptr %271, align 8, !tbaa !69
  %283 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %276) #19
  %284 = getelementptr inbounds %struct.edge_def, ptr %283, i64 0, i32 9
  %285 = load i64, ptr %284, align 8, !tbaa !69
  %286 = add nsw i64 %285, %282
  store i64 %286, ptr %284, align 8, !tbaa !69
  %287 = load i64, ptr %271, align 8, !tbaa !69
  %288 = load ptr, ptr %238, align 8, !tbaa !50
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 8
  %290 = load i64, ptr %289, align 8, !tbaa !72
  %291 = add nsw i64 %290, %287
  store i64 %291, ptr %289, align 8, !tbaa !72
  %292 = load ptr, ptr %237, align 8, !tbaa !61
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 11
  %294 = load i32, ptr %293, align 8, !tbaa !71
  %295 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %296 = load i32, ptr %295, align 4, !tbaa !70
  %297 = mul nsw i32 %296, %294
  %298 = add nsw i32 %297, 5000
  %299 = sdiv i32 %298, 10000
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 11
  %301 = load i32, ptr %300, align 8, !tbaa !71
  %302 = add nsw i32 %299, %301
  store i32 %302, ptr %300, align 8, !tbaa !71
  br label %303

303:                                              ; preds = %281, %269
  %304 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !50
  %306 = getelementptr inbounds %struct.basic_block_def, ptr %305, i64 0, i32 13
  %307 = load i32, ptr %306, align 8, !tbaa !20
  %308 = and i32 %307, 1024
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %345, label %310

310:                                              ; preds = %303
  %311 = load i64, ptr %271, align 8, !tbaa !69
  %312 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %305) #19
  %313 = getelementptr inbounds %struct.edge_def, ptr %312, i64 0, i32 9
  %314 = load i64, ptr %313, align 8, !tbaa !69
  %315 = sub nsw i64 %314, %311
  store i64 %315, ptr %313, align 8, !tbaa !69
  %316 = load ptr, ptr %304, align 8, !tbaa !50
  %317 = call fastcc ptr @single_succ_edge(ptr noundef %316) #19
  %318 = getelementptr inbounds %struct.edge_def, ptr %317, i64 0, i32 9
  %319 = load i64, ptr %318, align 8, !tbaa !69
  %320 = icmp slt i64 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %310
  %322 = load ptr, ptr %304, align 8, !tbaa !50
  %323 = call fastcc ptr @single_succ_edge(ptr noundef %322) #19
  %324 = getelementptr inbounds %struct.edge_def, ptr %323, i64 0, i32 9
  store i64 0, ptr %324, align 8, !tbaa !69
  br label %325

325:                                              ; preds = %321, %310
  %326 = load i64, ptr %271, align 8, !tbaa !69
  %327 = load ptr, ptr %304, align 8, !tbaa !50
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 8
  %329 = load i64, ptr %328, align 8, !tbaa !72
  %330 = sub nsw i64 %329, %326
  store i64 %330, ptr %328, align 8, !tbaa !72
  %331 = load ptr, ptr %237, align 8, !tbaa !61
  %332 = getelementptr inbounds %struct.basic_block_def, ptr %331, i64 0, i32 11
  %333 = load i32, ptr %332, align 8, !tbaa !71
  %334 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %335 = load i32, ptr %334, align 4, !tbaa !70
  %336 = mul nsw i32 %335, %333
  %337 = add nsw i32 %336, 5000
  %338 = sdiv i32 %337, -10000
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 11
  %340 = load i32, ptr %339, align 8, !tbaa !71
  %341 = add i32 %338, %340
  %342 = call i32 @llvm.smax.i32(i32 %341, i32 0)
  store i32 %342, ptr %339, align 8
  %343 = icmp slt i64 %330, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %325
  store i64 0, ptr %328, align 8, !tbaa !72
  br label %345

345:                                              ; preds = %325, %344, %303
  %346 = load i32, ptr %234, align 8, !tbaa !71
  %347 = icmp eq i32 %346, 0
  %348 = load i32, ptr %235, align 8, !tbaa !71
  %349 = icmp eq i32 %348, 0
  %350 = select i1 %347, i1 %349, i1 false
  %351 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %352 = load i32, ptr %351, align 4, !tbaa !70
  br i1 %350, label %353, label %358

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 8
  %355 = load i32, ptr %354, align 4, !tbaa !70
  %356 = add nsw i32 %355, %352
  %357 = sdiv i32 %356, 2
  br label %366

358:                                              ; preds = %345
  %359 = mul nsw i32 %352, %346
  %360 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 8
  %361 = load i32, ptr %360, align 4, !tbaa !70
  %362 = mul nsw i32 %348, %361
  %363 = add nsw i32 %362, %359
  %364 = add nsw i32 %348, %346
  %365 = sdiv i32 %363, %364
  br label %366

366:                                              ; preds = %358, %353
  %367 = phi i32 [ %365, %358 ], [ %357, %353 ]
  store i32 %367, ptr %351, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call fastcc void @ei_next(ptr noundef nonnull %7) #19
  %368 = load i32, ptr %7, align 8
  %369 = load ptr, ptr %228, align 8
  %370 = call fastcc zeroext i8 @ei_cond(i32 %368, ptr %369, ptr noundef nonnull %6) #19, !range !33
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %236, !llvm.loop !111

372:                                              ; preds = %366, %225
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 8
  %374 = load i64, ptr %373, align 8, !tbaa !72
  %375 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 8
  %376 = load i64, ptr %375, align 8, !tbaa !72
  %377 = add nsw i64 %376, %374
  store i64 %377, ptr %375, align 8, !tbaa !72
  %378 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 11
  %379 = load i32, ptr %378, align 8, !tbaa !71
  %380 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 11
  %381 = load i32, ptr %380, align 8, !tbaa !71
  %382 = add nsw i32 %381, %379
  %383 = call i32 @llvm.smin.i32(i32 %382, i32 10000)
  store i32 %383, ptr %380, align 8, !tbaa !71
  call void @update_br_prob_note(ptr noundef %216) #17
  %384 = load ptr, ptr %4, align 8, !tbaa !28
  %385 = load i32, ptr %384, align 8
  %386 = and i32 %385, 65535
  %387 = icmp eq i32 %386, 12
  br i1 %387, label %388, label %391

388:                                              ; preds = %372
  %389 = getelementptr inbounds %struct.rtx_def, ptr %384, i64 0, i32 1, i32 0, i32 0, i64 2
  %390 = load ptr, ptr %389, align 8, !tbaa !28
  store ptr %390, ptr %4, align 8, !tbaa !10
  br label %391

391:                                              ; preds = %388, %372
  %392 = phi ptr [ %384, %372 ], [ %390, %388 ]
  br label %393

393:                                              ; preds = %391, %397
  %394 = phi ptr [ %399, %397 ], [ %392, %391 ]
  %395 = load i32, ptr %394, align 8
  %396 = trunc i32 %395 to i16
  switch i16 %396, label %407 [
    i16 7, label %397
    i16 13, label %400
  ]

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 2
  %399 = load ptr, ptr %398, align 8, !tbaa !28
  br label %393, !llvm.loop !112

400:                                              ; preds = %393
  store ptr %394, ptr %4, align 8, !tbaa !10
  %401 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 1
  %402 = load i32, ptr %401, align 8, !tbaa !28
  %403 = icmp eq i32 %402, 10
  br i1 %403, label %404, label %408

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 2
  %406 = load ptr, ptr %405, align 8, !tbaa !28
  store ptr %406, ptr %4, align 8, !tbaa !10
  br label %408

407:                                              ; preds = %393
  store ptr %394, ptr %4, align 8, !tbaa !10
  br label %408

408:                                              ; preds = %407, %404, %400
  %409 = phi ptr [ %394, %407 ], [ %406, %404 ], [ %394, %400 ]
  %410 = load i32, ptr %409, align 8
  %411 = and i32 %410, 65535
  %412 = icmp eq i32 %411, 7
  br i1 %412, label %413, label %420

413:                                              ; preds = %408, %413
  %414 = phi ptr [ %416, %413 ], [ %409, %408 ]
  %415 = getelementptr inbounds %struct.rtx_def, ptr %414, i64 0, i32 1, i32 0, i32 0, i64 2
  %416 = load ptr, ptr %415, align 8, !tbaa !28
  %417 = load i32, ptr %416, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 7
  br i1 %419, label %413, label %420, !llvm.loop !113

420:                                              ; preds = %413, %408
  %421 = phi ptr [ %409, %408 ], [ %416, %413 ]
  store ptr %421, ptr %4, align 8, !tbaa !10
  %422 = getelementptr inbounds %struct.rtx_def, ptr %421, i64 0, i32 1, i32 0, i32 0, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !28
  %424 = call ptr @split_block(ptr noundef nonnull %35, ptr noundef %423) #17
  %425 = load ptr, ptr %424, align 8, !tbaa !61
  %426 = call fastcc ptr @single_succ(ptr noundef %425) #19
  %427 = call fastcc ptr @single_succ_edge(ptr noundef %425) #19
  %428 = call ptr @redirect_edge_and_branch_force(ptr noundef %427, ptr noundef %216) #17
  call void @delete_basic_block(ptr noundef %426) #17
  call fastcc void @update_forwarder_flag(ptr noundef %425) #19
  %429 = icmp eq ptr %216, %48
  br i1 %429, label %431, label %430

430:                                              ; preds = %420
  call fastcc void @update_forwarder_flag(ptr noundef nonnull %48) #19
  br label %431

431:                                              ; preds = %420, %430, %112, %102, %93, %85, %89, %79, %66, %47, %3
  %432 = phi i8 [ 0, %3 ], [ 0, %47 ], [ 0, %66 ], [ 0, %79 ], [ 0, %89 ], [ 0, %85 ], [ 0, %93 ], [ 0, %102 ], [ 0, %112 ], [ 1, %430 ], [ 1, %420 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %432
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @outgoing_edges_match(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.replace_label_data, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %13 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #19, !range !33
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #19
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !53
  %19 = and i32 %18, 30
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = tail call i32 @simplejump_p(ptr noundef nonnull %25) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %29, %21
  %33 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %2) #19, !range !33
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %567, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @single_succ_edge(ptr noundef %2) #19
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !53
  %39 = and i32 %38, 30
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %567

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !29
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %567

49:                                               ; preds = %41
  %50 = tail call i32 @simplejump_p(ptr noundef nonnull %45) #17
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i8
  br label %567

53:                                               ; preds = %29, %15, %3
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  %56 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %55) #19
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %285

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !28
  %61 = getelementptr inbounds %struct.rtl_bb_info, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !29
  %63 = tail call i32 @any_condjump_p(ptr noundef %62) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %285, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr %59, align 8, !tbaa !28
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !29
  %69 = tail call i32 @onlyjump_p(ptr noundef %68) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %285, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !49
  %74 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %73) #19
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %567

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !28
  %79 = getelementptr inbounds %struct.rtl_bb_info, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !29
  %81 = tail call i32 @any_condjump_p(ptr noundef %80) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %567, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %77, align 8, !tbaa !28
  %85 = getelementptr inbounds %struct.rtl_bb_info, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !29
  %87 = tail call i32 @onlyjump_p(ptr noundef %86) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %567, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %54, align 8, !tbaa !49
  %91 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 0) #19
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !53
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %89
  %97 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 1) #19
  br label %98

98:                                               ; preds = %89, %96
  %99 = phi ptr [ %97, %96 ], [ %91, %89 ]
  %100 = load ptr, ptr %72, align 8, !tbaa !49
  %101 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 0) #19
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !53
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 1) #19
  br label %108

108:                                              ; preds = %98, %106
  %109 = phi ptr [ %107, %106 ], [ %101, %98 ]
  br i1 %95, label %110, label %112

110:                                              ; preds = %108
  %111 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 1) #19
  br label %112

112:                                              ; preds = %108, %110
  %113 = phi ptr [ %111, %110 ], [ %91, %108 ]
  br i1 %105, label %114, label %116

114:                                              ; preds = %112
  %115 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 1) #19
  br label %116

116:                                              ; preds = %112, %114
  %117 = phi ptr [ %115, %114 ], [ %101, %112 ]
  %118 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !50
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 13
  %121 = load i32, ptr %120, align 8, !tbaa !20
  %122 = and i32 %121, 1024
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %116
  %125 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %119) #19
  br label %126

126:                                              ; preds = %124, %116
  %127 = phi ptr [ %125, %124 ], [ %113, %116 ]
  %128 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !50
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 13
  %131 = load i32, ptr %130, align 8, !tbaa !20
  %132 = and i32 %131, 1024
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %126
  %135 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %129) #19
  br label %136

136:                                              ; preds = %134, %126
  %137 = phi ptr [ %135, %134 ], [ %117, %126 ]
  %138 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !50
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 13
  %141 = load i32, ptr %140, align 8, !tbaa !20
  %142 = and i32 %141, 1024
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %567

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !50
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 13
  %148 = load i32, ptr %147, align 8, !tbaa !20
  %149 = and i32 %148, 1024
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %567

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !50
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 13
  %155 = load i32, ptr %154, align 8, !tbaa !20
  %156 = and i32 %155, 1024
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %567

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !50
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 13
  %162 = load i32, ptr %161, align 8, !tbaa !20
  %163 = and i32 %162, 1024
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %567

165:                                              ; preds = %158
  %166 = icmp eq ptr %139, %146
  %167 = icmp eq ptr %153, %160
  %168 = and i1 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = icmp eq ptr %139, %160
  %171 = icmp eq ptr %153, %146
  %172 = and i1 %171, %170
  br i1 %172, label %173, label %567

173:                                              ; preds = %169, %165
  %174 = phi i8 [ 1, %165 ], [ 0, %169 ]
  %175 = phi i8 [ 0, %165 ], [ 1, %169 ]
  %176 = load ptr, ptr %59, align 8, !tbaa !28
  %177 = getelementptr inbounds %struct.rtl_bb_info, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !29
  %179 = tail call ptr @pc_set(ptr noundef %178) #17
  %180 = load ptr, ptr %77, align 8, !tbaa !28
  %181 = getelementptr inbounds %struct.rtl_bb_info, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !29
  %183 = tail call ptr @pc_set(ptr noundef %182) #17
  %184 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !28
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !28
  %188 = load ptr, ptr @global_rtl, align 16, !tbaa !10
  %189 = icmp eq ptr %187, %188
  %190 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !28
  %192 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !28
  %194 = icmp ne ptr %193, %188
  %195 = xor i1 %189, %194
  %196 = select i1 %195, i8 %175, i8 %174
  %197 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !28
  %199 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !28
  %201 = load i32, ptr %198, align 8
  %202 = and i32 %201, 65535
  %203 = icmp eq i8 %196, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %173
  %205 = load ptr, ptr %77, align 8, !tbaa !28
  %206 = getelementptr inbounds %struct.rtl_bb_info, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !29
  %208 = tail call i32 @reversed_comparison_code(ptr noundef %200, ptr noundef %207) #17
  br label %212

209:                                              ; preds = %173
  %210 = load i32, ptr %200, align 8
  %211 = and i32 %210, 65535
  br label %212

212:                                              ; preds = %209, %204
  %213 = phi i32 [ %208, %204 ], [ %211, %209 ]
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %567, label %215

215:                                              ; preds = %212
  %216 = icmp eq i32 %202, %213
  br i1 %216, label %217, label %231

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !28
  %220 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !28
  %222 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %219, ptr noundef %221) #17
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1, i32 0, i32 0, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !28
  %227 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !28
  %229 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %226, ptr noundef %228) #17
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %224, %217, %215
  %232 = tail call i32 @swap_condition(i32 noundef %213) #17
  %233 = icmp eq i32 %202, %232
  br i1 %233, label %234, label %567

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1, i32 0, i32 0, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !28
  %237 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !28
  %239 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %236, ptr noundef %238) #17
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %567, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !28
  %244 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  %245 = load ptr, ptr %244, align 8, !tbaa !28
  %246 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %243, ptr noundef %245) #17
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %567, label %248

248:                                              ; preds = %224, %241
  %249 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %1) #17
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %276, label %251

251:                                              ; preds = %248
  %252 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %2) #17
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %276, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %152, align 8, !tbaa !50
  %256 = load ptr, ptr %159, align 8, !tbaa !50
  %257 = icmp eq ptr %255, %256
  %258 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 8
  %259 = load i32, ptr %258, align 4, !tbaa !70
  %260 = sub nsw i32 10000, %259
  %261 = select i1 %257, i32 %259, i32 %260
  %262 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 8
  %263 = load i32, ptr %262, align 4, !tbaa !70
  %264 = sub nsw i32 %263, %261
  %265 = tail call i32 @llvm.abs.i32(i32 %264, i1 true)
  %266 = icmp ult i32 %265, 5001
  br i1 %266, label %276, label %267

267:                                              ; preds = %254
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %269 = icmp eq ptr %268, null
  br i1 %269, label %567, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %272 = load i32, ptr %271, align 8, !tbaa !55
  %273 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %274 = load i32, ptr %273, align 8, !tbaa !55
  %275 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %268, ptr noundef nonnull @.str.16, i32 noundef %272, i32 noundef %274, i32 noundef %263, i32 noundef %261) #19
  br label %567

276:                                              ; preds = %254, %251, %248
  %277 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %278 = icmp eq ptr %277, null
  br i1 %278, label %567, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %281 = load i32, ptr %280, align 8, !tbaa !55
  %282 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %283 = load i32, ptr %282, align 8, !tbaa !55
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %277, ptr noundef nonnull @.str.17, i32 noundef %281, i32 noundef %283) #19
  br label %567

285:                                              ; preds = %65, %58, %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %287 = load ptr, ptr %286, align 8, !tbaa !28
  %288 = getelementptr inbounds %struct.rtl_bb_info, ptr %287, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !29
  %290 = call zeroext i8 @tablejump_p(ptr noundef %289, ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %415, label %292

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %294 = load ptr, ptr %293, align 8, !tbaa !28
  %295 = getelementptr inbounds %struct.rtl_bb_info, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !29
  %297 = call zeroext i8 @tablejump_p(ptr noundef %296, ptr noundef nonnull %7, ptr noundef nonnull %9) #17
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %415, label %299

299:                                              ; preds = %292
  %300 = load ptr, ptr %8, align 8, !tbaa !10
  %301 = getelementptr inbounds %struct.rtx_def, ptr %300, i64 1
  %302 = load ptr, ptr %301, align 8, !tbaa !28
  %303 = load i32, ptr %302, align 8
  %304 = load ptr, ptr %9, align 8, !tbaa !10
  %305 = getelementptr inbounds %struct.rtx_def, ptr %304, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !28
  %307 = load i32, ptr %306, align 8
  %308 = xor i32 %307, %303
  %309 = and i32 %308, 65535
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %415

311:                                              ; preds = %299
  %312 = load ptr, ptr %6, align 8, !tbaa !10
  %313 = load ptr, ptr %7, align 8, !tbaa !10
  %314 = icmp eq ptr %312, %313
  br i1 %314, label %413, label %315

315:                                              ; preds = %311
  %316 = load ptr, ptr %286, align 8, !tbaa !28
  %317 = getelementptr inbounds %struct.rtl_bb_info, ptr %316, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !29
  %319 = call i32 @rtx_referenced_p(ptr noundef %313, ptr noundef %318) #17
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %413

321:                                              ; preds = %315
  %322 = load ptr, ptr %8, align 8, !tbaa !10
  %323 = getelementptr inbounds %struct.rtx_def, ptr %322, i64 1
  %324 = load ptr, ptr %323, align 8, !tbaa !28
  %325 = load ptr, ptr %9, align 8, !tbaa !10
  %326 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !28
  %328 = load i32, ptr %324, align 8
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 20
  br i1 %330, label %331, label %336

331:                                              ; preds = %321
  %332 = call i32 @rtx_equal_p(ptr noundef nonnull %324, ptr noundef %327) #17
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %382

334:                                              ; preds = %331
  %335 = load i32, ptr %324, align 8
  br label %336

336:                                              ; preds = %334, %321
  %337 = phi i32 [ %335, %334 ], [ %328, %321 ]
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 21
  br i1 %339, label %340, label %413

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1, i32 0, i32 0, i64 1
  %342 = load ptr, ptr %341, align 8, !tbaa !28
  %343 = load i32, ptr %342, align 8, !tbaa !83
  %344 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 0, i32 1, i32 0, i32 0, i64 1
  %345 = load ptr, ptr %344, align 8, !tbaa !28
  %346 = load i32, ptr %345, align 8, !tbaa !83
  %347 = icmp eq i32 %343, %346
  br i1 %347, label %348, label %413

348:                                              ; preds = %340
  %349 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1, i32 0, i32 0, i64 2
  %350 = load ptr, ptr %349, align 8, !tbaa !28
  %351 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 0, i32 1, i32 0, i32 0, i64 2
  %352 = load ptr, ptr %351, align 8, !tbaa !28
  %353 = call i32 @rtx_equal_p(ptr noundef %350, ptr noundef %352) #17
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %413, label %355

355:                                              ; preds = %348
  %356 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1, i32 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !28
  %358 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 0, i32 1, i32 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !28
  %360 = call i32 @rtx_equal_p(ptr noundef %357, ptr noundef %359) #17
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %413, label %362

362:                                              ; preds = %355
  %363 = load ptr, ptr %341, align 8, !tbaa !28
  %364 = load i32, ptr %363, align 8, !tbaa !83
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %382

366:                                              ; preds = %362
  %367 = zext nneg i32 %364 to i64
  br label %368

368:                                              ; preds = %366, %368
  %369 = phi i64 [ %367, %366 ], [ %370, %368 ]
  %370 = add nsw i64 %369, -1
  %371 = load ptr, ptr %341, align 8, !tbaa !28
  %372 = getelementptr inbounds %struct.rtvec_def, ptr %371, i64 0, i32 1, i64 %370
  %373 = load ptr, ptr %372, align 8, !tbaa !10
  %374 = load ptr, ptr %344, align 8, !tbaa !28
  %375 = getelementptr inbounds %struct.rtvec_def, ptr %374, i64 0, i32 1, i64 %370
  %376 = load ptr, ptr %375, align 8, !tbaa !10
  %377 = call i32 @rtx_equal_p(ptr noundef %373, ptr noundef %376) #17
  %378 = icmp ne i32 %377, 0
  %379 = icmp ugt i64 %369, 1
  %380 = select i1 %379, i1 %378, i1 false
  br i1 %380, label %368, label %381, !llvm.loop !114

381:                                              ; preds = %368
  br i1 %378, label %382, label %413

382:                                              ; preds = %362, %331, %381
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  %383 = load ptr, ptr %6, align 8, !tbaa !10
  store ptr %383, ptr %10, align 8, !tbaa !103
  %384 = load ptr, ptr %7, align 8, !tbaa !10
  %385 = getelementptr inbounds %struct.replace_label_data, ptr %10, i64 0, i32 1
  store ptr %384, ptr %385, align 8, !tbaa !105
  %386 = getelementptr inbounds %struct.replace_label_data, ptr %10, i64 0, i32 2
  store i8 0, ptr %386, align 8, !tbaa !106
  %387 = load ptr, ptr %286, align 8, !tbaa !28
  %388 = getelementptr inbounds %struct.rtl_bb_info, ptr %387, i64 0, i32 1
  %389 = call i32 @for_each_rtx(ptr noundef nonnull %388, ptr noundef nonnull @replace_label, ptr noundef nonnull %10) #17
  %390 = load ptr, ptr %286, align 8, !tbaa !28
  %391 = getelementptr inbounds %struct.rtl_bb_info, ptr %390, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !29
  %393 = load ptr, ptr %293, align 8, !tbaa !28
  %394 = getelementptr inbounds %struct.rtl_bb_info, ptr %393, i64 0, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !29
  %396 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %392, ptr noundef %395) #19, !range !33
  %397 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %398 = icmp ne ptr %397, null
  %399 = icmp ne i8 %396, 0
  %400 = and i1 %399, %398
  br i1 %400, label %401, label %407

401:                                              ; preds = %382
  %402 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %403 = load i32, ptr %402, align 8, !tbaa !55
  %404 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %405 = load i32, ptr %404, align 8, !tbaa !55
  %406 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %397, ptr noundef nonnull @.str.18, i32 noundef %403, i32 noundef %405) #19
  br label %407

407:                                              ; preds = %382, %401
  %408 = load ptr, ptr %7, align 8, !tbaa !10
  store ptr %408, ptr %10, align 8, !tbaa !103
  %409 = load ptr, ptr %6, align 8, !tbaa !10
  store ptr %409, ptr %385, align 8, !tbaa !105
  %410 = load ptr, ptr %286, align 8, !tbaa !28
  %411 = getelementptr inbounds %struct.rtl_bb_info, ptr %410, i64 0, i32 1
  %412 = call i32 @for_each_rtx(ptr noundef nonnull %411, ptr noundef nonnull @replace_label, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  br label %413

413:                                              ; preds = %407, %315, %311, %381, %355, %348, %340, %336
  %414 = phi i8 [ 0, %311 ], [ 0, %315 ], [ %396, %407 ], [ 0, %381 ], [ 0, %355 ], [ 0, %348 ], [ 0, %340 ], [ 0, %336 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %567

415:                                              ; preds = %299, %292, %285
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %416 = load ptr, ptr %286, align 8, !tbaa !28
  %417 = getelementptr inbounds %struct.rtl_bb_info, ptr %416, i64 0, i32 1
  %418 = load ptr, ptr %417, align 8, !tbaa !29
  %419 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %420 = load ptr, ptr %419, align 8, !tbaa !28
  %421 = getelementptr inbounds %struct.rtl_bb_info, ptr %420, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !29
  %423 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %418, ptr noundef %422) #19, !range !33
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %567, label %425

425:                                              ; preds = %415
  %426 = load ptr, ptr %54, align 8, !tbaa !49
  %427 = call fastcc i32 @VEC_edge_base_length(ptr noundef %426) #19
  %428 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !49
  %430 = call fastcc i32 @VEC_edge_base_length(ptr noundef %429) #19
  %431 = icmp eq i32 %427, %430
  br i1 %431, label %432, label %567

432:                                              ; preds = %425
  %433 = call fastcc ptr @ei_start_1(ptr noundef nonnull %54) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !62
  %434 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %433, ptr %434, align 8, !tbaa.struct !63
  %435 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %433, ptr noundef nonnull %4) #19, !range !33
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %493, label %437

437:                                              ; preds = %432, %437
  %438 = phi i32 [ %462, %437 ], [ 0, %432 ]
  %439 = phi i32 [ %450, %437 ], [ 0, %432 ]
  %440 = phi i32 [ %455, %437 ], [ 0, %432 ]
  %441 = phi ptr [ %458, %437 ], [ null, %432 ]
  %442 = phi ptr [ %461, %437 ], [ null, %432 ]
  %443 = load ptr, ptr %428, align 8, !tbaa !49
  %444 = call fastcc ptr @VEC_edge_base_index(ptr noundef %443, i32 noundef %438) #19
  %445 = load ptr, ptr %4, align 8, !tbaa !10
  %446 = getelementptr inbounds %struct.edge_def, ptr %445, i64 0, i32 7
  %447 = load i32, ptr %446, align 8, !tbaa !53
  %448 = lshr i32 %447, 3
  %449 = and i32 %448, 1
  %450 = add i32 %449, %439
  %451 = getelementptr inbounds %struct.edge_def, ptr %444, i64 0, i32 7
  %452 = load i32, ptr %451, align 8, !tbaa !53
  %453 = lshr i32 %452, 3
  %454 = and i32 %453, 1
  %455 = add i32 %454, %440
  %456 = and i32 %447, 1
  %457 = icmp eq i32 %456, 0
  %458 = select i1 %457, ptr %441, ptr %445
  %459 = and i32 %452, 1
  %460 = icmp eq i32 %459, 0
  %461 = select i1 %460, ptr %442, ptr %444
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %462 = load i32, ptr %5, align 8
  %463 = load ptr, ptr %434, align 8
  %464 = call fastcc zeroext i8 @ei_cond(i32 %462, ptr %463, ptr noundef nonnull %4) #19, !range !33
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %466, label %437, !llvm.loop !115

466:                                              ; preds = %437
  %467 = icmp eq i32 %450, %455
  br i1 %467, label %468, label %567

468:                                              ; preds = %466
  %469 = icmp ne ptr %458, null
  %470 = icmp eq ptr %461, null
  %471 = xor i1 %470, %469
  br i1 %471, label %472, label %567

472:                                              ; preds = %468
  br i1 %469, label %473, label %493

473:                                              ; preds = %472
  %474 = getelementptr inbounds %struct.edge_def, ptr %458, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !50
  %476 = call zeroext i8 @forwarder_block_p(ptr noundef %475) #17
  %477 = icmp eq i8 %476, 0
  %478 = load ptr, ptr %474, align 8, !tbaa !50
  br i1 %477, label %481, label %479

479:                                              ; preds = %473
  %480 = call fastcc ptr @single_succ(ptr noundef %478) #19
  br label %481

481:                                              ; preds = %473, %479
  %482 = phi ptr [ %480, %479 ], [ %478, %473 ]
  %483 = getelementptr inbounds %struct.edge_def, ptr %461, i64 0, i32 1
  %484 = load ptr, ptr %483, align 8, !tbaa !50
  %485 = call zeroext i8 @forwarder_block_p(ptr noundef %484) #17
  %486 = icmp eq i8 %485, 0
  %487 = load ptr, ptr %483, align 8, !tbaa !50
  br i1 %486, label %490, label %488

488:                                              ; preds = %481
  %489 = call fastcc ptr @single_succ(ptr noundef %487) #19
  br label %490

490:                                              ; preds = %481, %488
  %491 = phi ptr [ %489, %488 ], [ %487, %481 ]
  %492 = icmp eq ptr %482, %491
  br i1 %492, label %493, label %567

493:                                              ; preds = %432, %490, %472
  %494 = load ptr, ptr %286, align 8, !tbaa !28
  %495 = getelementptr inbounds %struct.rtl_bb_info, ptr %494, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !29
  %497 = call ptr @find_reg_note(ptr noundef %496, i32 noundef 25, ptr noundef null) #17
  %498 = load ptr, ptr %419, align 8, !tbaa !28
  %499 = getelementptr inbounds %struct.rtl_bb_info, ptr %498, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !29
  %501 = call ptr @find_reg_note(ptr noundef %500, i32 noundef 25, ptr noundef null) #17
  %502 = icmp eq ptr %497, null
  %503 = icmp ne ptr %501, null
  %504 = select i1 %502, i1 %503, i1 false
  br i1 %504, label %567, label %505

505:                                              ; preds = %493
  br i1 %502, label %513, label %506

506:                                              ; preds = %505
  br i1 %503, label %507, label %567

507:                                              ; preds = %506
  %508 = getelementptr inbounds %struct.rtx_def, ptr %497, i64 0, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !28
  %510 = getelementptr inbounds %struct.rtx_def, ptr %501, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !28
  %512 = icmp eq ptr %509, %511
  br i1 %512, label %513, label %567

513:                                              ; preds = %507, %505
  %514 = call fastcc ptr @ei_start_1(ptr noundef nonnull %428) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !62
  store ptr %514, ptr %434, align 8, !tbaa.struct !63
  %515 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %514, ptr noundef nonnull %4) #19, !range !33
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %567, label %517

517:                                              ; preds = %513
  %518 = getelementptr inbounds i8, ptr %12, i64 8
  br label %519

519:                                              ; preds = %517, %562
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  %520 = load ptr, ptr %4, align 8, !tbaa !10
  %521 = getelementptr inbounds %struct.edge_def, ptr %520, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !50
  %523 = getelementptr inbounds %struct.basic_block_def, ptr %522, i64 0, i32 13
  %524 = load i32, ptr %523, align 8, !tbaa !20
  %525 = and i32 %524, 1024
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %533, label %527

527:                                              ; preds = %519
  %528 = getelementptr inbounds %struct.basic_block_def, ptr %522, i64 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !49
  %530 = call fastcc ptr @VEC_edge_base_index(ptr noundef %529, i32 noundef 0) #19
  %531 = getelementptr inbounds %struct.edge_def, ptr %530, i64 0, i32 1
  %532 = load ptr, ptr %531, align 8, !tbaa !50
  br label %533

533:                                              ; preds = %527, %519
  %534 = phi ptr [ %532, %527 ], [ %522, %519 ]
  store i32 0, ptr %12, align 8, !tbaa.struct !62
  store ptr %433, ptr %518, align 8, !tbaa.struct !63
  %535 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %433, ptr noundef nonnull %11) #19, !range !33
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %559, label %537

537:                                              ; preds = %533, %554
  %538 = load ptr, ptr %11, align 8, !tbaa !10
  %539 = getelementptr inbounds %struct.edge_def, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !50
  %541 = getelementptr inbounds %struct.basic_block_def, ptr %540, i64 0, i32 13
  %542 = load i32, ptr %541, align 8, !tbaa !20
  %543 = and i32 %542, 1024
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %551, label %545

545:                                              ; preds = %537
  %546 = getelementptr inbounds %struct.basic_block_def, ptr %540, i64 0, i32 1
  %547 = load ptr, ptr %546, align 8, !tbaa !49
  %548 = call fastcc ptr @VEC_edge_base_index(ptr noundef %547, i32 noundef 0) #19
  %549 = getelementptr inbounds %struct.edge_def, ptr %548, i64 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !50
  br label %551

551:                                              ; preds = %545, %537
  %552 = phi ptr [ %550, %545 ], [ %540, %537 ]
  %553 = icmp eq ptr %534, %552
  br i1 %553, label %559, label %554

554:                                              ; preds = %551
  call fastcc void @ei_next(ptr noundef nonnull %12) #19
  %555 = load i32, ptr %12, align 8
  %556 = load ptr, ptr %518, align 8
  %557 = call fastcc zeroext i8 @ei_cond(i32 %555, ptr %556, ptr noundef nonnull %11) #19, !range !33
  %558 = icmp eq i8 %557, 0
  br i1 %558, label %559, label %537, !llvm.loop !116

559:                                              ; preds = %554, %551, %533
  %560 = load ptr, ptr %11, align 8, !tbaa !10
  %561 = icmp eq ptr %560, null
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br i1 %561, label %567, label %562

562:                                              ; preds = %559
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %563 = load i32, ptr %5, align 8
  %564 = load ptr, ptr %434, align 8
  %565 = call fastcc zeroext i8 @ei_cond(i32 %563, ptr %564, ptr noundef nonnull %4) #19, !range !33
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %567, label %519, !llvm.loop !117

567:                                              ; preds = %559, %562, %513, %506, %507, %493, %231, %234, %241, %413, %270, %267, %466, %468, %425, %415, %83, %76, %71, %158, %151, %144, %136, %169, %212, %279, %276, %32, %35, %49, %41, %490
  %568 = phi i8 [ 0, %490 ], [ 0, %35 ], [ 0, %32 ], [ 1, %41 ], [ %52, %49 ], [ 0, %83 ], [ 0, %76 ], [ 0, %71 ], [ 0, %158 ], [ 0, %151 ], [ 0, %144 ], [ 0, %136 ], [ 0, %169 ], [ 0, %212 ], [ 1, %279 ], [ 1, %276 ], [ 0, %415 ], [ 0, %425 ], [ 0, %468 ], [ 0, %466 ], [ 0, %267 ], [ 0, %270 ], [ %414, %413 ], [ 0, %241 ], [ 0, %234 ], [ 0, %231 ], [ 0, %493 ], [ 0, %507 ], [ 0, %506 ], [ 1, %513 ], [ 0, %559 ], [ 1, %562 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %568
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @flow_find_cross_jump(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  %10 = tail call i32 @onlyjump_p(ptr noundef %9) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = tail call i32 @returnjump_p(ptr noundef %9) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  %18 = tail call i32 @side_effects_p(ptr noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %5
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  br label %23

23:                                               ; preds = %20, %15, %12
  %24 = phi ptr [ %9, %20 ], [ null, %15 ], [ null, %12 ]
  %25 = phi ptr [ %22, %20 ], [ %9, %15 ], [ %9, %12 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !29
  %30 = tail call i32 @onlyjump_p(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = tail call i32 @returnjump_p(ptr noundef %29) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !28
  %38 = tail call i32 @side_effects_p(ptr noundef %37) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35, %23
  %41 = tail call i32 @simplejump_p(ptr noundef %29) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = tail call i32 @returnjump_p(ptr noundef %29) #17
  %45 = icmp eq i32 %44, 0
  %46 = icmp ne ptr %24, null
  %47 = and i1 %46, %45
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %40, %43, %139
  %50 = phi ptr [ %100, %139 ], [ %29, %43 ], [ %29, %40 ]
  %51 = phi ptr [ %140, %139 ], [ %24, %43 ], [ %24, %40 ]
  %52 = phi ptr [ %141, %139 ], [ %29, %43 ], [ %29, %40 ]
  %53 = phi i32 [ %142, %139 ], [ %48, %43 ], [ 0, %40 ]
  %54 = phi ptr [ %144, %139 ], [ %25, %43 ], [ %25, %40 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !28
  br label %57

57:                                               ; preds = %49, %32, %35
  %58 = phi ptr [ %24, %35 ], [ %24, %32 ], [ %51, %49 ]
  %59 = phi ptr [ null, %35 ], [ null, %32 ], [ %52, %49 ]
  %60 = phi i32 [ 0, %35 ], [ 0, %32 ], [ %53, %49 ]
  %61 = phi ptr [ %29, %35 ], [ %29, %32 ], [ %56, %49 ]
  %62 = phi ptr [ %25, %35 ], [ %25, %32 ], [ %54, %49 ]
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -11
  %66 = icmp ult i32 %65, -3
  br i1 %66, label %67, label %80

67:                                               ; preds = %57
  %68 = load ptr, ptr %6, align 8, !tbaa !28
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  br label %70

70:                                               ; preds = %67, %73
  %71 = phi ptr [ %62, %67 ], [ %75, %73 ]
  %72 = icmp eq ptr %71, %69
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !28
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = add nsw i32 %77, -11
  %79 = icmp ult i32 %78, -3
  br i1 %79, label %70, label %80, !llvm.loop !118

80:                                               ; preds = %70, %73, %57
  %81 = phi ptr [ %62, %57 ], [ %75, %73 ], [ %69, %70 ]
  %82 = load i32, ptr %61, align 8
  %83 = and i32 %82, 65535
  %84 = add nsw i32 %83, -11
  %85 = icmp ult i32 %84, -3
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load ptr, ptr %26, align 8, !tbaa !28
  %88 = load ptr, ptr %87, align 8, !tbaa !54
  br label %89

89:                                               ; preds = %86, %92
  %90 = phi ptr [ %61, %86 ], [ %94, %92 ]
  %91 = icmp eq ptr %90, %88
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !28
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = add nsw i32 %96, -11
  %98 = icmp ult i32 %97, -3
  br i1 %98, label %89, label %99, !llvm.loop !119

99:                                               ; preds = %89, %92, %80
  %100 = phi ptr [ %61, %80 ], [ %94, %92 ], [ %88, %89 ]
  %101 = load ptr, ptr %6, align 8, !tbaa !28
  %102 = load ptr, ptr %101, align 8, !tbaa !54
  %103 = icmp eq ptr %81, %102
  br i1 %103, label %145, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %26, align 8, !tbaa !28
  %106 = load ptr, ptr %105, align 8, !tbaa !54
  %107 = icmp eq ptr %100, %106
  br i1 %107, label %145, label %108

108:                                              ; preds = %104
  %109 = tail call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef nonnull %81, ptr noundef nonnull %100) #19, !range !33
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %108
  tail call fastcc void @merge_memattrs(ptr noundef nonnull %81, ptr noundef nonnull %100) #19
  %112 = load i32, ptr %81, align 8
  %113 = and i32 %112, 65535
  %114 = add nsw i32 %113, -7
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %139

116:                                              ; preds = %111
  %117 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %81) #17
  %118 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %100) #17
  %119 = icmp eq ptr %117, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  tail call void @remove_note(ptr noundef nonnull %81, ptr noundef nonnull %117) #17
  br label %137

123:                                              ; preds = %116
  %124 = select i1 %119, i1 %120, i1 false
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  tail call void @remove_note(ptr noundef nonnull %100, ptr noundef nonnull %118) #17
  br label %137

126:                                              ; preds = %123
  %127 = icmp ne ptr %117, null
  %128 = select i1 %127, i1 %120, i1 false
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !28
  %132 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !28
  %134 = tail call i32 @rtx_equal_p(ptr noundef %131, ptr noundef %133) #17
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  tail call void @remove_note(ptr noundef nonnull %81, ptr noundef nonnull %117) #17
  tail call void @remove_note(ptr noundef nonnull %100, ptr noundef nonnull %118) #17
  br label %137

137:                                              ; preds = %125, %136, %129, %126, %122
  %138 = add nsw i32 %60, 1
  br label %139

139:                                              ; preds = %111, %137
  %140 = phi ptr [ %81, %137 ], [ %58, %111 ]
  %141 = phi ptr [ %100, %137 ], [ %59, %111 ]
  %142 = phi i32 [ %138, %137 ], [ %60, %111 ]
  %143 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !28
  br label %49

145:                                              ; preds = %108, %99, %104
  %146 = icmp eq i32 %60, 0
  br i1 %146, label %176, label %147

147:                                              ; preds = %145
  %148 = load ptr, ptr %6, align 8, !tbaa !28
  %149 = load ptr, ptr %148, align 8, !tbaa !54
  br label %150

150:                                              ; preds = %147, %153
  %151 = phi ptr [ %155, %153 ], [ %58, %147 ]
  %152 = icmp eq ptr %151, %149
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !28
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = add nsw i32 %157, -8
  %159 = icmp ult i32 %158, 3
  br i1 %159, label %160, label %150, !llvm.loop !120

160:                                              ; preds = %150, %153
  %161 = phi ptr [ %151, %153 ], [ %149, %150 ]
  %162 = load ptr, ptr %26, align 8, !tbaa !28
  %163 = load ptr, ptr %162, align 8, !tbaa !54
  br label %164

164:                                              ; preds = %167, %160
  %165 = phi ptr [ %59, %160 ], [ %169, %167 ]
  %166 = icmp eq ptr %165, %163
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1, i32 0, i32 0, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !28
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 65535
  %172 = add nsw i32 %171, -8
  %173 = icmp ult i32 %172, 3
  br i1 %173, label %174, label %164, !llvm.loop !121

174:                                              ; preds = %164, %167
  %175 = phi ptr [ %165, %167 ], [ %163, %164 ]
  store ptr %161, ptr %3, align 8, !tbaa !10
  store ptr %175, ptr %4, align 8, !tbaa !10
  br label %176

176:                                              ; preds = %174, %145
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @block_has_preserve_label(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @block_label(ptr noundef nonnull %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @block_label(ptr noundef nonnull %0) #17
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 28
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  br label %12

12:                                               ; preds = %6, %3, %1
  %13 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: optsize
declare i32 @replace_label(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_renumbered_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: optsize
declare i32 @rtx_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %123

9:                                                ; preds = %3
  %10 = icmp eq i32 %5, 13
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !28
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !28
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %123, label %19

19:                                               ; preds = %15, %11, %9
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = load i32, ptr %21, align 8
  %25 = load i32, ptr %23, align 8
  %26 = xor i32 %25, %24
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %123

29:                                               ; preds = %19
  %30 = icmp eq i32 %5, 10
  br i1 %30, label %31, label %44

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = tail call i32 @rtx_equal_p(ptr noundef %33, ptr noundef %35) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %123, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %1, align 8
  %40 = load i32, ptr %2, align 8
  %41 = xor i32 %40, %39
  %42 = and i32 %41, 16777216
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %123

44:                                               ; preds = %38, %29
  %45 = and i32 %0, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %113, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %1) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %113, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !28
  %53 = icmp eq ptr %52, null
  br i1 %53, label %79, label %54

54:                                               ; preds = %50, %74
  %55 = phi ptr [ %77, %74 ], [ %52, %50 ]
  %56 = phi i64 [ %75, %74 ], [ 0, %50 ]
  %57 = load i32, ptr %55, align 8
  %58 = and i32 %57, 16711680
  %59 = icmp eq i32 %58, 65536
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !28
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %62) #19
  %68 = and i32 %67, -8
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = zext nneg i32 %67 to i64
  %72 = shl nuw nsw i64 1, %71
  %73 = or i64 %72, %56
  br label %74

74:                                               ; preds = %54, %60, %66, %70
  %75 = phi i64 [ %73, %70 ], [ %56, %66 ], [ %56, %60 ], [ %56, %54 ]
  %76 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !28
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %54, !llvm.loop !122

79:                                               ; preds = %74, %50
  %80 = phi i64 [ 0, %50 ], [ %75, %74 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !28
  %83 = icmp eq ptr %82, null
  br i1 %83, label %109, label %84

84:                                               ; preds = %79, %104
  %85 = phi ptr [ %107, %104 ], [ %82, %79 ]
  %86 = phi i64 [ %105, %104 ], [ 0, %79 ]
  %87 = load i32, ptr %85, align 8
  %88 = and i32 %87, 16711680
  %89 = icmp eq i32 %88, 65536
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !28
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 37
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %92) #19
  %98 = and i32 %97, -8
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = zext nneg i32 %97 to i64
  %102 = shl nuw nsw i64 1, %101
  %103 = or i64 %102, %86
  br label %104

104:                                              ; preds = %84, %90, %96, %100
  %105 = phi i64 [ %103, %100 ], [ %86, %96 ], [ %86, %90 ], [ %86, %84 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !28
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %84, !llvm.loop !123

109:                                              ; preds = %104, %79
  %110 = phi i64 [ 0, %79 ], [ %105, %104 ]
  %111 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %80, i64 noundef %110) #19, !range !33
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109, %47, %44
  %114 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = tail call i32 @rtx_renumbered_equal_p(ptr noundef nonnull %21, ptr noundef nonnull %23) #17
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %123

119:                                              ; preds = %113
  %120 = tail call i32 @rtx_equal_p(ptr noundef nonnull %21, ptr noundef nonnull %23) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %116, %119, %31, %38, %19, %15, %3, %109, %122
  %124 = phi i8 [ 0, %122 ], [ 0, %109 ], [ 0, %3 ], [ 1, %15 ], [ 0, %19 ], [ 0, %38 ], [ 0, %31 ], [ 1, %119 ], [ 1, %116 ]
  ret i8 %124
}

; Function Attrs: optsize
declare i32 @stack_regs_mentioned(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_equal_p(i64 noundef %0, i64 noundef %1) unnamed_addr #10 {
  %3 = icmp eq i64 %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_memattrs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %267, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %267, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %267

14:                                               ; preds = %8
  %15 = xor i32 %11, %9
  %16 = and i32 %15, 16711680
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %267

18:                                               ; preds = %14
  %19 = icmp eq i32 %10, 43
  br i1 %19, label %20, label %221

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %221, label %26

26:                                               ; preds = %20
  %27 = icmp eq ptr %22, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store ptr null, ptr %23, align 8, !tbaa !28
  br label %221

29:                                               ; preds = %26
  %30 = icmp eq ptr %24, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  store ptr null, ptr %21, align 8, !tbaa !28
  br label %221

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !124
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %24, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !124
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  tail call void @set_mem_alias_set(ptr noundef nonnull %0, i32 noundef 0) #17
  tail call void @set_mem_alias_set(ptr noundef nonnull %1, i32 noundef 0) #17
  %39 = load ptr, ptr %21, align 8, !tbaa !28
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %39, %38 ], [ %22, %32 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !126
  br label %44

44:                                               ; preds = %38, %41
  %45 = phi ptr [ %43, %41 ], [ null, %38 ]
  %46 = load ptr, ptr %23, align 8, !tbaa !28
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !126
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi ptr [ %49, %48 ], [ null, %44 ]
  %52 = tail call i32 @mem_expr_equal_p(ptr noundef %45, ptr noundef %51) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @set_mem_expr(ptr noundef nonnull %0, ptr noundef null) #17
  tail call void @set_mem_expr(ptr noundef nonnull %1, ptr noundef null) #17
  br label %71

55:                                               ; preds = %50
  %56 = load ptr, ptr %21, align 8, !tbaa !28
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !127
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi ptr [ %60, %58 ], [ null, %55 ]
  %63 = load ptr, ptr %23, align 8, !tbaa !28
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mem_attrs, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !127
  br label %68

68:                                               ; preds = %61, %65
  %69 = phi ptr [ %67, %65 ], [ null, %61 ]
  %70 = icmp eq ptr %62, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %54
  tail call void @set_mem_offset(ptr noundef nonnull %0, ptr noundef null) #17
  tail call void @set_mem_offset(ptr noundef nonnull %1, ptr noundef null) #17
  br label %72

72:                                               ; preds = %71, %68
  %73 = load ptr, ptr %21, align 8, !tbaa !28
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !128
  %78 = icmp eq ptr %77, null
  br i1 %78, label %187, label %91

79:                                               ; preds = %72
  %80 = load i32, ptr %0, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %187, label %84

84:                                               ; preds = %79
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !28
  %88 = zext i8 %87 to i64
  %89 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %88) #17
  %90 = icmp eq ptr %89, null
  br i1 %90, label %187, label %91

91:                                               ; preds = %84, %75
  %92 = load ptr, ptr %23, align 8, !tbaa !28
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.mem_attrs, ptr %92, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !128
  %97 = icmp eq ptr %96, null
  br i1 %97, label %187, label %110

98:                                               ; preds = %91
  %99 = load i32, ptr %1, align 8
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %187, label %103

103:                                              ; preds = %98
  %104 = zext nneg i32 %101 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !28
  %107 = zext i8 %106 to i64
  %108 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %107) #17
  %109 = icmp eq ptr %108, null
  br i1 %109, label %187, label %110

110:                                              ; preds = %103, %94
  %111 = load ptr, ptr %21, align 8, !tbaa !28
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mem_attrs, ptr %111, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !128
  br label %126

116:                                              ; preds = %110
  %117 = load i32, ptr %0, align 8
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = icmp ne i32 %119, 1
  tail call void @llvm.assume(i1 %120)
  %121 = zext nneg i32 %119 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !28
  %124 = zext i8 %123 to i64
  %125 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %124) #17
  br label %126

126:                                              ; preds = %116, %113
  %127 = phi ptr [ %115, %113 ], [ %125, %116 ]
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !28
  %130 = load ptr, ptr %23, align 8, !tbaa !28
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.mem_attrs, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !128
  br label %145

135:                                              ; preds = %126
  %136 = load i32, ptr %1, align 8
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  %139 = icmp ne i32 %138, 1
  tail call void @llvm.assume(i1 %139)
  %140 = zext nneg i32 %138 to i64
  %141 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !28
  %143 = zext i8 %142 to i64
  %144 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %143) #17
  br label %145

145:                                              ; preds = %135, %132
  %146 = phi ptr [ %134, %132 ], [ %144, %135 ]
  %147 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !28
  %149 = icmp sgt i64 %129, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load ptr, ptr %21, align 8, !tbaa !28
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.mem_attrs, ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !128
  br label %182

156:                                              ; preds = %150
  %157 = load i32, ptr %0, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = icmp ne i32 %159, 1
  tail call void @llvm.assume(i1 %160)
  %161 = zext nneg i32 %159 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !28
  %164 = zext i8 %163 to i64
  %165 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %164) #17
  br label %182

166:                                              ; preds = %145
  %167 = load ptr, ptr %23, align 8, !tbaa !28
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.mem_attrs, ptr %167, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !128
  br label %182

172:                                              ; preds = %166
  %173 = load i32, ptr %1, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = icmp ne i32 %175, 1
  tail call void @llvm.assume(i1 %176)
  %177 = zext nneg i32 %175 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !28
  %180 = zext i8 %179 to i64
  %181 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %180) #17
  br label %182

182:                                              ; preds = %169, %172, %153, %156
  %183 = phi ptr [ %155, %153 ], [ %165, %156 ], [ %171, %169 ], [ %181, %172 ]
  %184 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !28
  %186 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %185) #17
  br label %187

187:                                              ; preds = %94, %103, %98, %75, %84, %79, %182
  %188 = phi ptr [ %186, %182 ], [ null, %79 ], [ null, %84 ], [ null, %75 ], [ null, %98 ], [ null, %103 ], [ null, %94 ]
  tail call void @set_mem_size(ptr noundef nonnull %0, ptr noundef %188) #17
  tail call void @set_mem_size(ptr noundef nonnull %1, ptr noundef %188) #17
  %189 = load ptr, ptr %21, align 8, !tbaa !28
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 4
  %193 = load i32, ptr %192, align 4, !tbaa !129
  %194 = load ptr, ptr %23, align 8, !tbaa !28
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %205

196:                                              ; preds = %187
  %197 = load ptr, ptr %23, align 8, !tbaa !28
  %198 = icmp eq ptr %197, null
  br i1 %198, label %212, label %201

199:                                              ; preds = %191
  %200 = tail call i32 @llvm.umin.i32(i32 %193, i32 8)
  br label %212

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.mem_attrs, ptr %197, i64 0, i32 4
  %203 = load i32, ptr %202, align 4, !tbaa !129
  %204 = tail call i32 @llvm.umin.i32(i32 %203, i32 8)
  br label %212

205:                                              ; preds = %191
  %206 = getelementptr inbounds %struct.mem_attrs, ptr %194, i64 0, i32 4
  %207 = load i32, ptr %206, align 4, !tbaa !129
  %208 = icmp ult i32 %193, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 4
  %211 = load i32, ptr %210, align 4, !tbaa !129
  br label %212

212:                                              ; preds = %201, %199, %205, %209, %196
  %213 = phi i32 [ 8, %196 ], [ %211, %209 ], [ %207, %205 ], [ %200, %199 ], [ %204, %201 ]
  tail call void @set_mem_align(ptr noundef nonnull %0, i32 noundef %213) #17
  %214 = load ptr, ptr %21, align 8, !tbaa !28
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.mem_attrs, ptr %214, i64 0, i32 4
  %218 = load i32, ptr %217, align 4, !tbaa !129
  br label %219

219:                                              ; preds = %212, %216
  %220 = phi i32 [ %218, %216 ], [ 8, %212 ]
  tail call void @set_mem_align(ptr noundef nonnull %1, i32 noundef %220) #17
  br label %221

221:                                              ; preds = %28, %219, %31, %20, %18
  %222 = zext nneg i32 %10 to i64
  %223 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !10
  %225 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %222
  %226 = load i8, ptr %225, align 1, !tbaa !28
  %227 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %228 = icmp eq i8 %226, 0
  br i1 %228, label %267, label %229

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %231 = zext i8 %226 to i64
  br label %232

232:                                              ; preds = %229, %265
  %233 = phi i64 [ %231, %229 ], [ %234, %265 ]
  %234 = add nsw i64 %233, -1
  %235 = getelementptr inbounds i8, ptr %224, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !28
  switch i8 %236, label %265 [
    i8 69, label %237
    i8 101, label %260
  ]

237:                                              ; preds = %232
  %238 = getelementptr inbounds [1 x %union.rtunion_def], ptr %227, i64 0, i64 %234
  %239 = load ptr, ptr %238, align 8, !tbaa !28
  %240 = load i32, ptr %239, align 8, !tbaa !83
  %241 = getelementptr inbounds [1 x %union.rtunion_def], ptr %230, i64 0, i64 %234
  %242 = load ptr, ptr %241, align 8, !tbaa !28
  %243 = load i32, ptr %242, align 8, !tbaa !83
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %237
  %246 = icmp sgt i32 %240, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %245, %247
  %248 = phi i64 [ %255, %247 ], [ 0, %245 ]
  %249 = phi ptr [ %256, %247 ], [ %239, %245 ]
  %250 = getelementptr inbounds %struct.rtvec_def, ptr %249, i64 0, i32 1, i64 %248
  %251 = load ptr, ptr %250, align 8, !tbaa !10
  %252 = load ptr, ptr %241, align 8, !tbaa !28
  %253 = getelementptr inbounds %struct.rtvec_def, ptr %252, i64 0, i32 1, i64 %248
  %254 = load ptr, ptr %253, align 8, !tbaa !10
  tail call fastcc void @merge_memattrs(ptr noundef %251, ptr noundef %254) #19
  %255 = add nuw nsw i64 %248, 1
  %256 = load ptr, ptr %238, align 8, !tbaa !28
  %257 = load i32, ptr %256, align 8, !tbaa !83
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %255, %258
  br i1 %259, label %247, label %265, !llvm.loop !130

260:                                              ; preds = %232
  %261 = getelementptr inbounds [1 x %union.rtunion_def], ptr %227, i64 0, i64 %234
  %262 = load ptr, ptr %261, align 8, !tbaa !28
  %263 = getelementptr inbounds [1 x %union.rtunion_def], ptr %230, i64 0, i64 %234
  %264 = load ptr, ptr %263, align 8, !tbaa !28
  tail call fastcc void @merge_memattrs(ptr noundef %262, ptr noundef %264) #19
  br label %265

265:                                              ; preds = %247, %245, %232, %260
  %266 = icmp sgt i64 %233, 1
  br i1 %266, label %232, label %267, !llvm.loop !131

267:                                              ; preds = %237, %265, %221, %14, %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mem_expr_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_jump() #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 39), align 1, !tbaa !132
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fixup_tail_calls() #17
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: optsize
declare void @fixup_tail_calls() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_jump2() #0 {
  %1 = tail call ptr @get_insns() #17
  %2 = tail call i32 @max_reg_num() #17
  %3 = tail call i32 @delete_trivially_dead_insns(ptr noundef %1, i32 noundef %2) #17
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @dump_flow_info(ptr noundef nonnull %4, i32 noundef %7) #17
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, ptr @optimize, align 4, !tbaa !6
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i32, ptr @flag_thread_jumps, align 4, !tbaa !6
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 8
  %15 = or disjoint i32 %14, %11
  %16 = tail call zeroext i8 @cleanup_cfg(i32 noundef %15) #19, !range !33
  ret i32 0
}

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!14 = !{!15, !11, i64 8}
!15 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!16 = !{!17, !11, i64 48}
!17 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !18, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!18 = !{!"long", !8, i64 0}
!19 = !{!15, !11, i64 0}
!20 = !{!17, !7, i64 96}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = !{!26, !7, i64 0}
!26 = !{!"VEC_basic_block_base", !7, i64 0, !7, i64 4, !8, i64 8}
!27 = !{!17, !11, i64 56}
!28 = !{!8, !8, i64 0}
!29 = !{!30, !11, i64 8}
!30 = !{!"rtl_bb_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = !{i8 0, i8 2}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = !{!37, !11, i64 976}
!37 = !{!"gcc_target", !38, i64 0, !40, i64 368, !41, i64 664, !7, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !18, i64 1064, !18, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !42, i64 1176, !11, i64 1232, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !18, i64 1464, !43, i64 1472, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !11, i64 1704, !11, i64 1712, !11, i64 1720, !11, i64 1728, !11, i64 1736, !11, i64 1744, !11, i64 1752, !11, i64 1760, !11, i64 1768, !11, i64 1776, !44, i64 1784, !45, i64 1792, !46, i64 1896, !47, i64 1968, !11, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!38 = !{!"asm_out", !11, i64 0, !11, i64 8, !11, i64 16, !39, i64 24, !39, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!39 = !{!"asm_int_op", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!40 = !{!"sched", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!41 = !{!"vectorize", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!42 = !{!"addr_space", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!43 = !{!"calls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!44 = !{!"c", !11, i64 0}
!45 = !{!"cxx", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!46 = !{!"emutls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !8, i64 64, !8, i64 65}
!47 = !{!"target_option_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!48 = !{!17, !11, i64 0}
!49 = !{!17, !11, i64 8}
!50 = !{!51, !11, i64 8}
!51 = !{!"edge_def", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !18, i64 56}
!52 = distinct !{!52, !22}
!53 = !{!51, !7, i64 48}
!54 = !{!30, !11, i64 0}
!55 = !{!17, !7, i64 80}
!56 = !{!15, !7, i64 24}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = !{!60, !7, i64 0}
!60 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!61 = !{!51, !11, i64 0}
!62 = !{i64 0, i64 4, !6, i64 8, i64 8, !10}
!63 = !{i64 0, i64 8, !10}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = !{!51, !7, i64 40}
!68 = distinct !{!68, !22}
!69 = !{!51, !18, i64 56}
!70 = !{!51, !7, i64 52}
!71 = !{!17, !7, i64 88}
!72 = !{!17, !18, i64 72}
!73 = distinct !{!73, !22}
!74 = !{!75, !7, i64 8}
!75 = !{!"param_info", !11, i64 0, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 20, !11, i64 24}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = !{!80, !7, i64 0}
!80 = !{!"", !7, i64 0, !11, i64 8}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = !{!84, !7, i64 0}
!84 = !{!"rtvec_def", !7, i64 0, !8, i64 8}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22}
!90 = !{!91, !11, i64 0}
!91 = !{!"bitmap_head_def", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 24}
!92 = !{!93, !11, i64 0}
!93 = !{!"", !11, i64 0, !11, i64 8, !7, i64 16, !18, i64 24}
!94 = !{!93, !11, i64 8}
!95 = !{!96, !7, i64 16}
!96 = !{!"bitmap_element_def", !11, i64 0, !11, i64 8, !7, i64 16, !8, i64 24}
!97 = !{!93, !7, i64 16}
!98 = !{!18, !18, i64 0}
!99 = !{!93, !18, i64 24}
!100 = distinct !{!100, !22}
!101 = distinct !{!101, !22}
!102 = !{!96, !11, i64 0}
!103 = !{!104, !11, i64 0}
!104 = !{!"replace_label_data", !11, i64 0, !11, i64 8, !8, i64 16}
!105 = !{!104, !11, i64 8}
!106 = !{!104, !8, i64 16}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !22}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22}
!116 = distinct !{!116, !22}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22}
!119 = distinct !{!119, !22}
!120 = distinct !{!120, !22}
!121 = distinct !{!121, !22}
!122 = distinct !{!122, !22}
!123 = distinct !{!123, !22}
!124 = !{!125, !7, i64 24}
!125 = !{!"mem_attrs", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !8, i64 32}
!126 = !{!125, !11, i64 0}
!127 = !{!125, !11, i64 8}
!128 = !{!125, !11, i64 16}
!129 = !{!125, !7, i64 28}
!130 = distinct !{!130, !22}
!131 = distinct !{!131, !22}
!132 = !{!133, !8, i64 475}
!133 = !{!"rtl_data", !134, i64 0, !135, i64 40, !136, i64 96, !137, i64 112, !139, i64 208, !140, i64 248, !7, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !18, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !11, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!134 = !{!"expr_status", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!135 = !{!"emit_status", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !11, i64 48}
!136 = !{!"varasm_status", !11, i64 0, !7, i64 8}
!137 = !{!"incoming_args", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16, !138, i64 24, !11, i64 88}
!138 = !{!"ix86_args", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60}
!139 = !{!"function_subsections", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!140 = !{!"rtl_eh", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !8, i64 48}
