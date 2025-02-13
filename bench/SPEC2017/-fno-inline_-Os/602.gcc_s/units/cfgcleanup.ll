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
define dso_local zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #0 !prof !281 {
  %1 = alloca ptr, align 8
  tail call void @find_unreachable_blocks() #17
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !282
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %59, label %4, !prof !286

4:                                                ; preds = %0
  %5 = tail call i32 @current_ir_type() #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !287
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !289
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !291
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !293
  %18 = load ptr, ptr %13, align 8, !tbaa !296
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %92, label %20

20:                                               ; preds = %10, %51
  %21 = phi ptr [ %53, %51 ], [ %17, %10 ]
  %22 = phi i8 [ %52, %51 ], [ 0, %10 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !293
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !297
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
  store ptr %34, ptr %1, align 8, !tbaa !287
  %35 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %34) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33, %46
  %38 = tail call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %34) #19
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !293
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !297
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
  br i1 %48, label %49, label %37, !llvm.loop !298

49:                                               ; preds = %46, %33
  %50 = phi ptr [ %24, %33 ], [ %40, %46 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  br label %51

51:                                               ; preds = %32, %49, %20
  %52 = phi i8 [ %22, %20 ], [ 1, %49 ], [ 1, %32 ]
  %53 = phi ptr [ %24, %20 ], [ %50, %49 ], [ %24, %32 ]
  %54 = load ptr, ptr @cfun, align 8, !tbaa !287
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !289
  %57 = load ptr, ptr %56, align 8, !tbaa !296
  %58 = icmp eq ptr %53, %57
  br i1 %58, label %88, label %20, !llvm.loop !300

59:                                               ; preds = %7, %4, %0
  %60 = load ptr, ptr @cfun, align 8, !tbaa !287
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !289
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !291
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !293
  %67 = load ptr, ptr %62, align 8, !tbaa !296
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %92, label %69, !prof !301

69:                                               ; preds = %59, %81
  %70 = phi ptr [ %82, %81 ], [ %60, %59 ]
  %71 = phi ptr [ %74, %81 ], [ %66, %59 ]
  %72 = phi i8 [ %83, %81 ], [ 0, %59 ]
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !293
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !297
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81, !prof !302

79:                                               ; preds = %69
  tail call void @delete_basic_block(ptr noundef nonnull %71) #17
  %80 = load ptr, ptr @cfun, align 8, !tbaa !287
  br label %81

81:                                               ; preds = %69, %79
  %82 = phi ptr [ %70, %69 ], [ %80, %79 ]
  %83 = phi i8 [ %72, %69 ], [ 1, %79 ]
  %84 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !289
  %86 = load ptr, ptr %85, align 8, !tbaa !296
  %87 = icmp eq ptr %74, %86
  br i1 %87, label %88, label %69, !prof !303, !llvm.loop !304

88:                                               ; preds = %51, %81
  %89 = phi i8 [ %83, %81 ], [ %52, %51 ]
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91, !prof !305

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
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !306 !PGOFuncName !307 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !308
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #4 !prof !306 !PGOFuncName !310 {
  %2 = load i32, ptr %0, align 8, !tbaa !308
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !308
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !287
  ret ptr %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !306 !PGOFuncName !311 {
  %2 = load ptr, ptr %0, align 8, !tbaa !287
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @tidy_fallthru_edges() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_dead_jumptables() local_unnamed_addr #0 !prof !312 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !287
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !289
  %4 = load ptr, ptr %3, align 8, !tbaa !296
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !313
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !291
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %78, label %10, !prof !314

10:                                               ; preds = %0, %69
  %11 = phi ptr [ %70, %69 ], [ %1, %0 ]
  %12 = phi ptr [ %72, %69 ], [ %6, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !315
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !316
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !315
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20, !prof !314

20:                                               ; preds = %10, %64
  %21 = phi ptr [ %65, %64 ], [ %18, %10 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %32, !prof !318

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %27 = load i32, ptr %26, align 8, !tbaa !315
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %67, label %29, !prof !319

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !315
  br label %64

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !315
  %36 = icmp eq i32 %23, 12
  br i1 %36, label %37, label %64, !prof !320

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !315
  %40 = lshr i32 %22, 28
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %64, !prof !321

43:                                               ; preds = %37
  %44 = load i32, ptr %35, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %64, !prof !322

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !315
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65534
  %52 = icmp eq i32 %51, 20
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %33, align 8, !tbaa !315
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.2, i32 noundef %57) #19
  br label %59

59:                                               ; preds = %56, %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !315
  %62 = tail call ptr @delete_insn(ptr noundef nonnull %35) #17
  %63 = tail call ptr @delete_insn(ptr noundef nonnull %21) #17
  br label %64

64:                                               ; preds = %29, %47, %32, %37, %43, %59
  %65 = phi ptr [ %61, %59 ], [ %35, %43 ], [ %35, %37 ], [ %35, %32 ], [ %35, %47 ], [ %31, %29 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %20, !prof !323, !llvm.loop !324

67:                                               ; preds = %64, %25
  %68 = load ptr, ptr @cfun, align 8, !tbaa !287
  br label %69

69:                                               ; preds = %67, %10
  %70 = phi ptr [ %68, %67 ], [ %11, %10 ]
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !313
  %73 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !289
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !291
  %77 = icmp eq ptr %72, %76
  br i1 %77, label %78, label %10, !prof !325, !llvm.loop !326

78:                                               ; preds = %69, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cleanup_cfg(i32 noundef %0) local_unnamed_addr #0 !prof !327 {
  %2 = tail call i32 @current_ir_type() #17
  %3 = icmp eq i32 %2, 2
  %4 = or i32 %0, 32
  %5 = select i1 %3, i32 %4, i32 %0, !prof !328
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !315
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !329

8:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 23) #17
  br label %9

9:                                                ; preds = %8, %1
  %10 = tail call zeroext i8 @delete_unreachable_blocks() #19, !range !330
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12, !prof !331

12:                                               ; preds = %9
  %13 = and i32 %5, 16
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr @reload_completed, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %22, label %18, !prof !332

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
  br i1 %25, label %26, label %27, !prof !333

26:                                               ; preds = %22
  tail call void @add_noreturn_fake_exit_edges() #17
  br label %27

27:                                               ; preds = %26, %22
  %28 = tail call zeroext i8 @dbg_cnt(i32 noundef 2) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %67, label %30, !prof !334

30:                                               ; preds = %27
  %31 = tail call fastcc zeroext i8 @try_optimize_cfg(i32 noundef %5) #19, !range !330
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %56, label %33, !prof !335

33:                                               ; preds = %30
  %34 = and i32 %5, 16
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %33, %53
  %37 = tail call zeroext i8 @delete_unreachable_blocks() #19, !range !330
  br i1 %35, label %38, label %56, !prof !336

38:                                               ; preds = %36
  %39 = and i32 %5, 1
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr @reload_completed, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %49, label %44, !prof !337

44:                                               ; preds = %38
  %45 = tail call ptr @get_insns() #17
  %46 = tail call i32 @max_reg_num() #17
  %47 = tail call i32 @delete_trivially_dead_insns(ptr noundef %45, i32 noundef %46) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49, !prof !338

49:                                               ; preds = %44, %38
  %50 = load i1, ptr @crossjumps_occured, align 1
  %51 = select i1 %25, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !339

52:                                               ; preds = %49
  tail call void @run_fast_dce() #17
  br label %53

53:                                               ; preds = %52, %49
  %54 = tail call fastcc zeroext i8 @try_optimize_cfg(i32 noundef %5) #19, !range !330
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %36, !prof !340, !llvm.loop !341

56:                                               ; preds = %53, %44, %36, %30
  %57 = phi i8 [ %23, %30 ], [ 1, %36 ], [ 1, %44 ], [ 1, %53 ]
  br i1 %25, label %58, label %59, !prof !333

58:                                               ; preds = %56
  tail call void @remove_fake_exit_edges() #17
  br label %59

59:                                               ; preds = %58, %56
  %60 = and i32 %5, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !342

62:                                               ; preds = %59
  tail call void @delete_dead_jumptables() #19
  br label %63

63:                                               ; preds = %59, %62
  %64 = load i8, ptr @timevar_enable, align 1, !tbaa !315
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66, !prof !329

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
define internal fastcc zeroext i8 @try_optimize_cfg(i32 noundef %0) unnamed_addr #0 !prof !343 !PGOFuncName !344 {
  %2 = and i32 %0, 10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !345

4:                                                ; preds = %1
  tail call void @clear_bb_flags() #17
  br label %5

5:                                                ; preds = %4, %1
  store i1 false, ptr @crossjumps_occured, align 1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !287
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  %9 = load ptr, ptr %8, align 8, !tbaa !296
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !313
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !291
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %25, label %15, !prof !346

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %18, %15 ], [ %11, %5 ]
  tail call fastcc void @update_forwarder_flag(ptr noundef %16) #19
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !313
  %19 = load ptr, ptr @cfun, align 8, !tbaa !287
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !289
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !291
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %15, !prof !347, !llvm.loop !348

25:                                               ; preds = %15, %5
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !349
  %27 = tail call zeroext i8 %26() #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %352, !prof !361

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
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !362

44:                                               ; preds = %38
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.3, i32 noundef %41) #19
  br label %46

46:                                               ; preds = %44, %38
  %47 = load ptr, ptr @cfun, align 8, !tbaa !287
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !289
  %50 = load ptr, ptr %49, align 8, !tbaa !296
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !313
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !291
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %341, label %56, !prof !363

56:                                               ; preds = %46, %332
  %57 = phi ptr [ %337, %332 ], [ %49, %46 ]
  %58 = phi i8 [ %334, %332 ], [ 0, %46 ]
  %59 = phi ptr [ %333, %332 ], [ %52, %46 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !364
  %61 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %60) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63, !prof !365

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !366
  %66 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %65) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89, !prof !367

68:                                               ; preds = %63
  %69 = tail call fastcc zeroext i8 @trivially_empty_bb_p(ptr noundef nonnull %59) #19, !range !330
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %89, label %71, !prof !368

71:                                               ; preds = %68
  %72 = load ptr, ptr %57, align 8, !tbaa !296
  %73 = tail call fastcc ptr @single_succ_edge(ptr noundef %72) #19
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !369
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %89, label %77

77:                                               ; preds = %71, %56
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !293
  tail call void @delete_basic_block(ptr noundef nonnull %59) #17
  %80 = select i1 %31, i8 1, i8 %58, !prof !371
  %81 = load ptr, ptr @cfun, align 8, !tbaa !287
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !289
  %84 = load ptr, ptr %83, align 8, !tbaa !296
  %85 = icmp eq ptr %79, %84
  br i1 %85, label %86, label %332, !prof !372, !llvm.loop !373

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !313
  br label %332, !llvm.loop !373

89:                                               ; preds = %71, %68, %63
  %90 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %59) #19, !range !330
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %161, label %92, !prof !374

92:                                               ; preds = %89
  %93 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %94 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 7
  %95 = load i32, ptr %94, align 8, !tbaa !375
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %161, label %98, !prof !376

98:                                               ; preds = %92
  %99 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !375
  %102 = and i32 %101, 14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %161, !prof !377

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !315
  %107 = load ptr, ptr %106, align 8, !tbaa !378
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %161, !prof !379

111:                                              ; preds = %104
  %112 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %113 = load ptr, ptr @cfun, align 8, !tbaa !287
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !289
  %116 = load ptr, ptr %115, align 8, !tbaa !296
  %117 = icmp eq ptr %112, %116
  br i1 %117, label %137, label %118, !prof !380

118:                                              ; preds = %111
  %119 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !315
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !316
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = icmp eq i32 %125, 9
  br i1 %126, label %127, label %137, !prof !381

127:                                              ; preds = %118
  %128 = load ptr, ptr %105, align 8, !tbaa !315
  %129 = load ptr, ptr %128, align 8, !tbaa !378
  %130 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !315
  %133 = getelementptr inbounds %struct.rtl_bb_info, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !316
  %135 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %129, ptr noundef %134) #17
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %161, !prof !382

137:                                              ; preds = %127, %118, %111
  %138 = load ptr, ptr %105, align 8, !tbaa !315
  %139 = load ptr, ptr %138, align 8, !tbaa !378
  tail call void @delete_insn_chain(ptr noundef %139, ptr noundef %139, i8 noundef zeroext 0) #17
  %140 = load ptr, ptr %105, align 8, !tbaa !315
  %141 = load ptr, ptr %140, align 8, !tbaa !378
  %142 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 1
  %143 = load i32, ptr %142, align 8, !tbaa !315
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %154, !prof !383

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1, i32 0, i32 0, i64 2
  %147 = load ptr, ptr %146, align 8, !tbaa !315
  tail call void @reorder_insns_nobb(ptr noundef %139, ptr noundef %139, ptr noundef %147) #17
  %148 = load ptr, ptr %105, align 8, !tbaa !315
  store ptr %147, ptr %148, align 8, !tbaa !378
  %149 = load ptr, ptr %105, align 8, !tbaa !315
  %150 = getelementptr inbounds %struct.rtl_bb_info, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !316
  %152 = icmp eq ptr %151, %147
  br i1 %152, label %153, label %154, !prof !384

153:                                              ; preds = %145
  store ptr %139, ptr %150, align 8, !tbaa !316
  br label %154

154:                                              ; preds = %145, %153, %137
  %155 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157, !prof !385

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %159 = load i32, ptr %158, align 8, !tbaa !386
  %160 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %155, ptr noundef nonnull @.str.4, i32 noundef %159) #19
  br label %161

161:                                              ; preds = %154, %157, %127, %104, %98, %92, %89
  br i1 %31, label %162, label %220, !prof !387

162:                                              ; preds = %161
  %163 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %59) #19, !range !330
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %220, label %165, !prof !388

165:                                              ; preds = %162
  %166 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %167 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 7
  %168 = load i32, ptr %167, align 8, !tbaa !375
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %220, label %171, !prof !389

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !315
  %174 = load ptr, ptr %173, align 8, !tbaa !378
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 65535
  %177 = icmp eq i32 %176, 12
  br i1 %177, label %220, label %178, !prof !390

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 13
  %180 = load i32, ptr %179, align 8, !tbaa !297
  %181 = and i32 %180, 1024
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %220, label %183, !prof !391

183:                                              ; preds = %178
  %184 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %59) #19
  %185 = getelementptr inbounds %struct.edge_def, ptr %184, i64 0, i32 7
  %186 = load i32, ptr %185, align 8, !tbaa !375
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %220, label %189, !prof !392

189:                                              ; preds = %183
  %190 = load ptr, ptr @cfun, align 8, !tbaa !287
  %191 = getelementptr inbounds %struct.function, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !289
  %193 = getelementptr inbounds %struct.control_flow_graph, ptr %192, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !393
  %195 = icmp sgt i32 %194, 3
  br i1 %195, label %196, label %220, !prof !394

196:                                              ; preds = %189
  %197 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %198 = icmp eq ptr %197, null
  br i1 %198, label %206, label %199, !prof !395

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %201 = load i32, ptr %200, align 8, !tbaa !386
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %197, ptr noundef nonnull @.str.5, i32 noundef %201) #19
  %203 = load ptr, ptr @cfun, align 8, !tbaa !287
  %204 = getelementptr inbounds %struct.function, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !289
  br label %206

206:                                              ; preds = %199, %196
  %207 = phi ptr [ %205, %199 ], [ %192, %196 ]
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 5
  %209 = load ptr, ptr %208, align 8, !tbaa !293
  %210 = load ptr, ptr %207, align 8, !tbaa !296
  %211 = icmp eq ptr %209, %210
  br i1 %211, label %212, label %215, !prof !396

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 6
  %214 = load ptr, ptr %213, align 8, !tbaa !313
  br label %215

215:                                              ; preds = %206, %212
  %216 = phi ptr [ %214, %212 ], [ %209, %206 ]
  %217 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %218 = tail call fastcc ptr @single_succ(ptr noundef nonnull %59) #19
  %219 = tail call ptr @redirect_edge_succ_nodup(ptr noundef %217, ptr noundef %218) #17
  tail call void @delete_basic_block(ptr noundef nonnull %59) #17
  br label %332, !llvm.loop !373

220:                                              ; preds = %189, %183, %178, %171, %165, %162, %161
  %221 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %59) #19, !range !330
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %278, label %223, !prof !397

223:                                              ; preds = %220
  %224 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %59) #19
  %225 = icmp eq ptr %224, null
  br i1 %225, label %278, label %226, !prof !398

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.edge_def, ptr %224, i64 0, i32 7
  %228 = load i32, ptr %227, align 8, !tbaa !375
  %229 = and i32 %228, 14
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %278, !prof !399

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.edge_def, ptr %224, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !369
  %234 = load ptr, ptr @cfun, align 8, !tbaa !287
  %235 = getelementptr inbounds %struct.function, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !289
  %237 = getelementptr inbounds %struct.control_flow_graph, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !291
  %239 = icmp eq ptr %233, %238
  br i1 %239, label %278, label %240, !prof !400

240:                                              ; preds = %231
  %241 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %233) #19, !range !330
  %242 = icmp eq i8 %241, 0
  %243 = icmp eq ptr %59, %233
  %244 = or i1 %243, %242
  br i1 %244, label %278, label %245, !prof !401

245:                                              ; preds = %240
  br i1 %31, label %250, label %246, !prof !402

246:                                              ; preds = %245
  %247 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef nonnull %59, ptr noundef %233) #17
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %285, label %249, !prof !403

249:                                              ; preds = %246
  tail call void @merge_blocks(ptr noundef nonnull %59, ptr noundef %233) #17
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %59) #19
  br label %285

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %252 = load ptr, ptr %251, align 8, !tbaa !315
  %253 = getelementptr inbounds %struct.rtl_bb_info, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !316
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 9
  br i1 %257, label %258, label %273, !prof !404

258:                                              ; preds = %250
  %259 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261, !prof !405

261:                                              ; preds = %258
  %262 = tail call i32 @simplejump_p(ptr noundef nonnull %254) #17
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %278, label %273, !prof !405

264:                                              ; preds = %258
  %265 = tail call i32 @onlyjump_p(ptr noundef nonnull %254) #17
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %278, label %267, !prof !405

267:                                              ; preds = %264
  %268 = load ptr, ptr %251, align 8, !tbaa !315
  %269 = getelementptr inbounds %struct.rtl_bb_info, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !316
  %271 = tail call zeroext i8 @tablejump_p(ptr noundef %270, ptr noundef null, ptr noundef null) #17
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %278, !prof !406

273:                                              ; preds = %267, %261, %250
  %274 = tail call fastcc ptr @merge_blocks_move(ptr noundef nonnull %224, ptr noundef nonnull %59, ptr noundef %233, i32 noundef %0) #19
  %275 = icmp ne ptr %274, null
  %276 = select i1 %275, ptr %274, ptr %59, !prof !407
  %277 = zext i1 %275 to i8
  br label %278

278:                                              ; preds = %273, %267, %264, %261, %240, %231, %226, %223, %220
  %279 = phi ptr [ %59, %226 ], [ %59, %261 ], [ %59, %267 ], [ %59, %264 ], [ %59, %240 ], [ %59, %231 ], [ %59, %223 ], [ %59, %220 ], [ %276, %273 ]
  %280 = phi i8 [ 0, %226 ], [ 0, %261 ], [ 0, %267 ], [ 0, %264 ], [ 0, %240 ], [ 0, %231 ], [ 0, %223 ], [ 0, %220 ], [ %277, %273 ]
  br i1 %33, label %281, label %285, !prof !408

281:                                              ; preds = %278
  %282 = tail call fastcc zeroext i8 @try_simplify_condjump(ptr noundef nonnull %279) #19, !range !330
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %285, label %284, !prof !409

284:                                              ; preds = %281
  br label %285

285:                                              ; preds = %249, %246, %278, %284, %281
  %286 = phi ptr [ %279, %284 ], [ %279, %281 ], [ %279, %278 ], [ %59, %246 ], [ %59, %249 ]
  %287 = phi i8 [ 1, %284 ], [ %280, %281 ], [ %280, %278 ], [ 0, %246 ], [ 1, %249 ]
  %288 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %286) #19, !range !330
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %317, label %290, !prof !410

290:                                              ; preds = %285
  %291 = tail call fastcc ptr @single_succ(ptr noundef nonnull %286) #19
  %292 = load ptr, ptr @cfun, align 8, !tbaa !287
  %293 = getelementptr inbounds %struct.function, ptr %292, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !289
  %295 = getelementptr inbounds %struct.control_flow_graph, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !291
  %297 = icmp eq ptr %291, %296
  br i1 %297, label %317, label %298, !prof !411

298:                                              ; preds = %290
  %299 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 7
  %300 = load ptr, ptr %299, align 8, !tbaa !315
  %301 = getelementptr inbounds %struct.rtl_bb_info, ptr %300, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !316
  %303 = tail call i32 @onlyjump_p(ptr noundef %302) #17
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %317, label %305, !prof !412

305:                                              ; preds = %298
  %306 = load ptr, ptr %299, align 8, !tbaa !315
  %307 = getelementptr inbounds %struct.rtl_bb_info, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !316
  %309 = tail call ptr @find_reg_note(ptr noundef %308, i32 noundef 29, ptr noundef null) #17
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %317, !prof !413

311:                                              ; preds = %305
  %312 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %286) #19
  %313 = tail call fastcc ptr @single_succ(ptr noundef nonnull %286) #19
  %314 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef %312, ptr noundef %313, i8 noundef zeroext %35) #17
  %315 = icmp eq ptr %314, null
  br i1 %315, label %317, label %316, !prof !414

316:                                              ; preds = %311
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %286) #19
  br label %317

317:                                              ; preds = %316, %311, %305, %298, %290, %285
  %318 = phi i8 [ %287, %305 ], [ 1, %316 ], [ %287, %311 ], [ %287, %298 ], [ %287, %290 ], [ %287, %285 ]
  %319 = tail call fastcc zeroext i8 @try_forward_edges(i32 noundef %0, ptr noundef nonnull %286) #19
  %320 = icmp eq i8 %319, 0
  %321 = select i1 %320, i8 %318, i8 1, !prof !415
  br i1 %37, label %327, label %322, !prof !416

322:                                              ; preds = %317
  %323 = tail call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef nonnull %286) #19, !range !330
  %324 = icmp eq i8 %323, 0
  %325 = icmp eq i8 %321, 0
  %326 = select i1 %324, i1 %325, i1 false
  br i1 %326, label %329, label %332, !prof !417

327:                                              ; preds = %317
  %328 = icmp eq i8 %321, 0
  br i1 %328, label %329, label %332, !prof !418

329:                                              ; preds = %322, %327
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 6
  %331 = load ptr, ptr %330, align 8, !tbaa !313
  br label %332

332:                                              ; preds = %322, %329, %327, %86, %77, %215
  %333 = phi ptr [ %216, %215 ], [ %88, %86 ], [ %79, %77 ], [ %331, %329 ], [ %286, %327 ], [ %286, %322 ]
  %334 = phi i8 [ 1, %215 ], [ %80, %86 ], [ %80, %77 ], [ %58, %329 ], [ 1, %327 ], [ 1, %322 ]
  %335 = load ptr, ptr @cfun, align 8, !tbaa !287
  %336 = getelementptr inbounds %struct.function, ptr %335, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !289
  %338 = getelementptr inbounds %struct.control_flow_graph, ptr %337, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !291
  %340 = icmp eq ptr %333, %339
  br i1 %340, label %341, label %56, !prof !419

341:                                              ; preds = %332, %46
  %342 = phi i8 [ 0, %46 ], [ %334, %332 ]
  %343 = phi ptr [ %52, %46 ], [ %333, %332 ]
  br i1 %37, label %348, label %344, !prof !420

344:                                              ; preds = %341
  %345 = tail call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef %343) #19, !range !330
  %346 = icmp eq i8 %345, 0
  %347 = select i1 %346, i8 %342, i8 1, !prof !421
  br label %348

348:                                              ; preds = %344, %341
  %349 = phi i8 [ %342, %341 ], [ %347, %344 ]
  %350 = or i8 %349, %40
  store i1 false, ptr @first_pass, align 1
  %351 = icmp eq i8 %349, 0
  br i1 %351, label %352, label %38, !prof !422, !llvm.loop !423

352:                                              ; preds = %348, %25
  %353 = phi i8 [ 0, %25 ], [ %350, %348 ]
  %354 = load ptr, ptr @cfun, align 8, !tbaa !287
  %355 = getelementptr inbounds %struct.function, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !289
  %357 = load ptr, ptr %356, align 8, !tbaa !287
  %358 = icmp eq ptr %357, null
  br i1 %358, label %367, label %359, !prof !346

359:                                              ; preds = %352, %359
  %360 = phi ptr [ %365, %359 ], [ %357, %352 ]
  %361 = getelementptr inbounds %struct.basic_block_def, ptr %360, i64 0, i32 13
  %362 = load i32, ptr %361, align 8, !tbaa !297
  %363 = and i32 %362, -3073
  store i32 %363, ptr %361, align 8, !tbaa !297
  %364 = getelementptr inbounds %struct.basic_block_def, ptr %360, i64 0, i32 6
  %365 = load ptr, ptr %364, align 8, !tbaa !287
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %359, !prof !424, !llvm.loop !425

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
define internal fastcc void @update_forwarder_flag(ptr noundef %0) unnamed_addr #0 !prof !426 !PGOFuncName !427 {
  %2 = tail call zeroext i8 @forwarder_block_p(ptr noundef %0) #17
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !297
  %6 = and i32 %5, -1025
  %7 = select i1 %3, i32 0, i32 1024, !prof !428
  %8 = or disjoint i32 %6, %7
  store i32 %8, ptr %4, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !429 !PGOFuncName !430 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !431

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !432
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @trivially_empty_bb_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !434 !PGOFuncName !435 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !315
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %3, align 8, !tbaa !378
  %6 = load ptr, ptr %4, align 8, !tbaa !315
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %17, label %12, !prof !436

8:                                                ; preds = %12
  %9 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !315
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %17, label %12, !prof !437

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %8, label %17, !prof !438

17:                                               ; preds = %8, %12, %1
  %18 = phi i8 [ 1, %1 ], [ 0, %12 ], [ 1, %8 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !439 !PGOFuncName !440 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !330
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !441

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !366
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !442 !PGOFuncName !443 {
  %2 = load ptr, ptr %0, align 8, !tbaa !364
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !444 !PGOFuncName !445 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #19, !range !330
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !446

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 655, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !364
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !447 !PGOFuncName !448 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !449
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
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !450 !PGOFuncName !451 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !452 !PGOFuncName !453 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !366
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
define internal fastcc ptr @merge_blocks_move(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !454 !PGOFuncName !455 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !297
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !297
  %11 = xor i32 %10, %8
  %12 = and i32 %11, 96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %124, !prof !456

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !375
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19, !prof !404

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !386
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !386
  tail call void @merge_blocks(ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %1) #19
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !457

26:                                               ; preds = %19
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %23) #19
  br label %28

28:                                               ; preds = %26, %19
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !293
  %31 = load ptr, ptr @cfun, align 8, !tbaa !287
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !289
  %34 = load ptr, ptr %33, align 8, !tbaa !296
  %35 = icmp eq ptr %30, %34
  %36 = select i1 %35, ptr %1, ptr %30, !prof !458
  br label %124

37:                                               ; preds = %14
  %38 = and i32 %3, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %124, label %40, !prof !459

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %41 = and i32 %8, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %122, !prof !460

43:                                               ; preds = %40
  %44 = and i32 %10, 1024
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %122, !prof !461

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %48 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %47) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !462
  %49 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %48, ptr %49, align 8, !tbaa.struct !463
  %50 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %48, ptr noundef nonnull %5) #19, !range !330
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %63, label %52, !prof !464

52:                                               ; preds = %46, %58
  %53 = load ptr, ptr %5, align 8, !tbaa !287
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !375
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65, !prof !465

58:                                               ; preds = %52
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %59 = load i32, ptr %6, align 8
  %60 = load ptr, ptr %49, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %5) #19, !range !330
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %52, !prof !466, !llvm.loop !467

63:                                               ; preds = %58, %46
  %64 = load ptr, ptr %5, align 8, !tbaa !287
  br label %65

65:                                               ; preds = %52, %63
  %66 = phi ptr [ %64, %63 ], [ %53, %52 ]
  %67 = icmp eq ptr %66, null
  %68 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !462
  store ptr %68, ptr %49, align 8, !tbaa.struct !463
  %69 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %68, ptr noundef nonnull %5) #19, !range !330
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %82, label %71, !prof !436

71:                                               ; preds = %65, %77
  %72 = load ptr, ptr %5, align 8, !tbaa !287
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !375
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84, !prof !468

77:                                               ; preds = %71
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %78 = load i32, ptr %6, align 8
  %79 = load ptr, ptr %49, align 8
  %80 = call fastcc zeroext i8 @ei_cond(i32 %78, ptr %79, ptr noundef nonnull %5) #19, !range !330
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %71, !prof !469, !llvm.loop !470

82:                                               ; preds = %77, %65
  %83 = load ptr, ptr %5, align 8, !tbaa !287
  br label %84

84:                                               ; preds = %71, %82
  %85 = phi ptr [ %83, %82 ], [ %72, %71 ]
  %86 = icmp eq ptr %85, null
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !293
  %89 = icmp eq ptr %88, %2
  br i1 %89, label %90, label %93, !prof !468

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !293
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi ptr [ %92, %90 ], [ %88, %84 ]
  br i1 %67, label %95, label %101, !prof !471

95:                                               ; preds = %93
  tail call fastcc void @merge_blocks_move_successor_nojumps(ptr noundef nonnull %1, ptr noundef %2) #19
  %96 = load ptr, ptr @cfun, align 8, !tbaa !287
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !289
  %99 = load ptr, ptr %98, align 8, !tbaa !296
  %100 = icmp eq ptr %94, %99
  br i1 %100, label %119, label %122, !prof !472

101:                                              ; preds = %93
  br i1 %86, label %113, label %102, !prof !473

102:                                              ; preds = %101
  %103 = load ptr, ptr %85, align 8, !tbaa !449
  %104 = load ptr, ptr @cfun, align 8, !tbaa !287
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !289
  %107 = load ptr, ptr %106, align 8, !tbaa !296
  %108 = icmp eq ptr %103, %107
  br i1 %108, label %122, label %109, !prof !473

109:                                              ; preds = %102
  %110 = tail call ptr @force_nonfallthru(ptr noundef nonnull %85) #17
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112, !prof !473

112:                                              ; preds = %109
  tail call fastcc void @notice_new_block(ptr noundef nonnull %110) #19
  br label %113

113:                                              ; preds = %112, %109, %101
  tail call fastcc void @merge_blocks_move_predecessor_nojumps(ptr noundef nonnull %1, ptr noundef %2) #19
  %114 = load ptr, ptr @cfun, align 8, !tbaa !287
  %115 = getelementptr inbounds %struct.function, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !289
  %117 = load ptr, ptr %116, align 8, !tbaa !296
  %118 = icmp eq ptr %94, %117
  br i1 %118, label %119, label %122, !prof !473

119:                                              ; preds = %113, %95
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !313
  br label %122

122:                                              ; preds = %119, %102, %113, %95, %40, %43
  %123 = phi ptr [ null, %43 ], [ null, %40 ], [ %94, %95 ], [ %94, %113 ], [ null, %102 ], [ %121, %119 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %124

124:                                              ; preds = %37, %4, %122, %28
  %125 = phi ptr [ %36, %28 ], [ %123, %122 ], [ null, %4 ], [ null, %37 ]
  ret ptr %125
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_simplify_condjump(ptr noundef %0) unnamed_addr #0 !prof !474 !PGOFuncName !475 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !366
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %92, !prof !476

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !315
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !316
  %11 = tail call i32 @any_condjump_p(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %92, label %13, !prof !477

13:                                               ; preds = %6
  %14 = load ptr, ptr %2, align 8, !tbaa !366
  %15 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 0) #19
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !375
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 1) #19
  %21 = select i1 %19, ptr %20, ptr %15, !prof !478
  %22 = select i1 %19, ptr %15, ptr %20, !prof !478
  %23 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !369
  %25 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %24) #19, !range !330
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %92, label %27, !prof !479

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !313
  %30 = load ptr, ptr @cfun, align 8, !tbaa !287
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !289
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !291
  %35 = icmp eq ptr %29, %34
  br i1 %35, label %92, label %36, !prof !480

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %38 = load i32, ptr %37, align 8, !tbaa !297
  %39 = and i32 %38, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %92, label %41, !prof !481

41:                                               ; preds = %36
  %42 = tail call fastcc ptr @single_succ(ptr noundef nonnull %24) #19
  %43 = load i32, ptr %37, align 8, !tbaa !297
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !297
  %46 = xor i32 %45, %43
  %47 = and i32 %46, 96
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %92, !prof !482

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !375
  %52 = and i32 %51, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %92, !prof !482

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !369
  %57 = load ptr, ptr @cfun, align 8, !tbaa !287
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !289
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !291
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %92, label %63, !prof !483

63:                                               ; preds = %54
  %64 = tail call zeroext i8 @can_fallthru(ptr noundef nonnull %24, ptr noundef %56) #17
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %92, label %66, !prof !484

66:                                               ; preds = %63
  %67 = tail call ptr @block_label(ptr noundef nonnull %42) #17
  %68 = tail call i32 @invert_jump(ptr noundef %10, ptr noundef %67, i32 noundef 0) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %92, label %70, !prof !485

70:                                               ; preds = %66
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73, !prof !486

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !315
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !315
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !316
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !315
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.10, i32 noundef %75, i32 noundef %81) #19
  br label %83

83:                                               ; preds = %73, %70
  %84 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %22, ptr noundef %56) #17
  %85 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %21, ptr noundef nonnull %42) #17
  %86 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !375
  %88 = or i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !375
  %89 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !375
  %91 = and i32 %90, -2
  store i32 %91, ptr %89, align 8, !tbaa !375
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
define internal fastcc zeroext i8 @try_forward_edges(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !487 !PGOFuncName !488 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !315
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !316
  %8 = tail call ptr @find_reg_note(ptr noundef %7, i32 noundef 29, ptr noundef null) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %364, !prof !489

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %12 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !462
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !463
  %14 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %12) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %364, label %16, !prof !490

16:                                               ; preds = %10
  %17 = and i32 %0, 8
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %354
  %20 = phi ptr [ %14, %16 ], [ %359, %354 ]
  %21 = phi i8 [ 0, %16 ], [ %356, %354 ]
  %22 = phi ptr [ null, %16 ], [ %355, %354 ]
  %23 = load i1, ptr @first_pass, align 1
  %24 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %1) #17
  %25 = zext i1 %23 to i8
  %26 = or i8 %24, %25
  %27 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !375
  %29 = and i32 %28, 14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !491

31:                                               ; preds = %19
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %354, !llvm.loop !492

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !369
  %35 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !493
  %37 = load ptr, ptr @cfun, align 8, !tbaa !287
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !289
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !291
  %42 = icmp eq ptr %34, %41
  br i1 %42, label %54, label %43, !prof !494

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !315
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !316
  %48 = tail call ptr @find_reg_note(ptr noundef %47, i32 noundef 29, ptr noundef null) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %364, !prof !495

50:                                               ; preds = %43
  %51 = load ptr, ptr @cfun, align 8, !tbaa !287
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !289
  br label %54

54:                                               ; preds = %50, %32
  %55 = phi ptr [ %53, %50 ], [ %39, %32 ]
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !393
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %227, !prof !496

59:                                               ; preds = %54, %200
  %60 = phi ptr [ %201, %200 ], [ %22, %54 ]
  %61 = phi i8 [ %68, %200 ], [ %26, %54 ]
  %62 = phi i32 [ %204, %200 ], [ 0, %54 ]
  %63 = phi i8 [ %208, %200 ], [ 0, %54 ]
  %64 = phi i32 [ %205, %200 ], [ %36, %54 ]
  %65 = phi i32 [ %207, %200 ], [ 2, %54 ]
  %66 = phi ptr [ %203, %200 ], [ %34, %54 ]
  %67 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %66) #17
  %68 = or i8 %67, %61
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 13
  %70 = load i32, ptr %69, align 8, !tbaa !297
  %71 = and i32 %70, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %145, label %73, !prof !497

73:                                               ; preds = %59
  %74 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %66) #19
  %75 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !375
  %77 = and i32 %76, 8192
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %145, !prof !498

79:                                               ; preds = %73
  %80 = tail call fastcc ptr @single_succ(ptr noundef nonnull %66) #19
  %81 = load ptr, ptr @cfun, align 8, !tbaa !287
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !289
  %84 = getelementptr inbounds %struct.control_flow_graph, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !291
  %86 = icmp eq ptr %80, %85
  br i1 %86, label %145, label %87, !prof !499

87:                                               ; preds = %79
  %88 = tail call fastcc ptr @single_succ(ptr noundef nonnull %66) #19
  %89 = icmp eq ptr %66, %88
  br i1 %89, label %90, label %96, !prof !500

90:                                               ; preds = %87
  %91 = load ptr, ptr @cfun, align 8, !tbaa !287
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !289
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !393
  br label %200

96:                                               ; preds = %87
  %97 = load i32, ptr @optimize, align 4, !tbaa !282
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %192, !prof !501

99:                                               ; preds = %96
  %100 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %66) #19
  %101 = getelementptr inbounds %struct.edge_def, ptr %100, i64 0, i32 5
  %102 = load i32, ptr %101, align 8, !tbaa !493
  %103 = icmp ne i32 %102, 0
  %104 = icmp ne i32 %64, 0
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = tail call zeroext i8 @locator_eq(i32 noundef %102, i32 noundef %64) #17
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load ptr, ptr @cfun, align 8, !tbaa !287
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !289
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !393
  br label %117

115:                                              ; preds = %106, %99
  %116 = select i1 %103, i32 %102, i32 %64
  br label %117

117:                                              ; preds = %115, %109
  %118 = phi i32 [ %114, %109 ], [ %65, %115 ]
  %119 = phi i32 [ %64, %109 ], [ %116, %115 ]
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !315
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !316
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -7
  %127 = icmp ult i32 %126, 4
  br i1 %127, label %128, label %192

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !315
  %131 = icmp ne i32 %130, 0
  %132 = icmp ne i32 %119, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = tail call zeroext i8 @locator_eq(i32 noundef %130, i32 noundef %119) #17
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load ptr, ptr @cfun, align 8, !tbaa !287
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !289
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 3
  %142 = load i32, ptr %141, align 8, !tbaa !393
  br label %192

143:                                              ; preds = %134, %128
  %144 = select i1 %131, i32 %130, i32 %119
  br label %192

145:                                              ; preds = %79, %73, %59
  %146 = icmp ne i8 %68, 0
  %147 = select i1 %18, i1 %146, i1 false
  br i1 %147, label %148, label %215, !prof !502

148:                                              ; preds = %145
  %149 = tail call fastcc ptr @thread_jump(ptr noundef nonnull %20, ptr noundef nonnull %66) #19
  %150 = icmp eq ptr %149, null
  br i1 %150, label %215, label %151, !prof !503

151:                                              ; preds = %148
  %152 = icmp eq ptr %60, null
  br i1 %152, label %155, label %153, !prof !504

153:                                              ; preds = %151
  %154 = icmp sgt i32 %62, 0
  br i1 %154, label %168, label %173, !prof !505

155:                                              ; preds = %151
  %156 = load ptr, ptr @cfun, align 8, !tbaa !287
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !289
  %159 = getelementptr inbounds %struct.control_flow_graph, ptr %158, i64 0, i32 3
  %160 = load i32, ptr %159, align 8, !tbaa !393
  %161 = sext i32 %160 to i64
  %162 = shl nsw i64 %161, 3
  %163 = tail call ptr @xmalloc(i64 noundef %162) #17
  br label %173

164:                                              ; preds = %168
  %165 = zext nneg i32 %62 to i64
  %166 = add nuw nsw i64 %169, 1
  %167 = icmp eq i64 %166, %165
  br i1 %167, label %173, label %168, !prof !505, !llvm.loop !506

168:                                              ; preds = %153, %164
  %169 = phi i64 [ %166, %164 ], [ 0, %153 ]
  %170 = getelementptr inbounds ptr, ptr %60, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !287
  %172 = icmp eq ptr %171, %149
  br i1 %172, label %237, label %164, !prof !507

173:                                              ; preds = %164, %153, %155
  %174 = phi ptr [ %163, %155 ], [ %60, %153 ], [ %60, %164 ]
  %175 = getelementptr inbounds %struct.edge_def, ptr %149, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !369
  %177 = icmp eq ptr %176, %1
  br i1 %177, label %215, label %178, !prof !508

178:                                              ; preds = %173
  %179 = load ptr, ptr @cfun, align 8, !tbaa !287
  %180 = getelementptr inbounds %struct.function, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !289
  %182 = getelementptr inbounds %struct.control_flow_graph, ptr %181, i64 0, i32 3
  %183 = load i32, ptr %182, align 8, !tbaa !393
  %184 = add nsw i32 %183, -2
  %185 = icmp slt i32 %62, %184
  br i1 %185, label %187, label %186, !prof !509

186:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #17
  br label %187

187:                                              ; preds = %178, %186
  %188 = add nsw i32 %62, 1
  %189 = sext i32 %62 to i64
  %190 = getelementptr inbounds ptr, ptr %174, i64 %189
  store ptr %149, ptr %190, align 8, !tbaa !287
  %191 = load ptr, ptr %175, align 8, !tbaa !369
  br label %192

192:                                              ; preds = %187, %143, %117, %137, %96
  %193 = phi i32 [ %65, %96 ], [ %142, %137 ], [ %118, %117 ], [ %118, %143 ], [ %65, %187 ]
  %194 = phi i32 [ %64, %96 ], [ %119, %137 ], [ %119, %117 ], [ %144, %143 ], [ %64, %187 ]
  %195 = phi i32 [ %62, %96 ], [ %62, %137 ], [ %62, %117 ], [ %62, %143 ], [ %188, %187 ]
  %196 = phi ptr [ %88, %96 ], [ %88, %137 ], [ %88, %117 ], [ %88, %143 ], [ %191, %187 ]
  %197 = phi i8 [ 0, %96 ], [ 0, %137 ], [ 0, %117 ], [ 0, %143 ], [ 1, %187 ]
  %198 = phi ptr [ %60, %96 ], [ %60, %137 ], [ %60, %117 ], [ %60, %143 ], [ %174, %187 ]
  %199 = icmp eq ptr %196, null
  br i1 %199, label %215, label %200, !prof !510

200:                                              ; preds = %90, %192
  %201 = phi ptr [ %60, %90 ], [ %198, %192 ]
  %202 = phi i8 [ 0, %90 ], [ %197, %192 ]
  %203 = phi ptr [ %66, %90 ], [ %196, %192 ]
  %204 = phi i32 [ %62, %90 ], [ %195, %192 ]
  %205 = phi i32 [ %64, %90 ], [ %194, %192 ]
  %206 = phi i32 [ %95, %90 ], [ %193, %192 ]
  %207 = add nsw i32 %206, 1
  %208 = or i8 %202, %63
  %209 = load ptr, ptr @cfun, align 8, !tbaa !287
  %210 = getelementptr inbounds %struct.function, ptr %209, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !289
  %212 = getelementptr inbounds %struct.control_flow_graph, ptr %211, i64 0, i32 3
  %213 = load i32, ptr %212, align 8, !tbaa !393
  %214 = icmp slt i32 %207, %213
  br i1 %214, label %59, label %215, !prof !511

215:                                              ; preds = %148, %145, %173, %192, %200
  %216 = phi ptr [ %66, %148 ], [ %66, %145 ], [ %66, %173 ], [ %66, %192 ], [ %203, %200 ]
  %217 = phi i8 [ %63, %148 ], [ %63, %145 ], [ %63, %173 ], [ %63, %192 ], [ %208, %200 ]
  %218 = phi i32 [ %65, %148 ], [ %65, %145 ], [ %65, %173 ], [ %193, %192 ], [ %207, %200 ]
  %219 = phi i32 [ %64, %148 ], [ %64, %145 ], [ %64, %173 ], [ %194, %192 ], [ %205, %200 ]
  %220 = phi i32 [ %62, %148 ], [ %62, %145 ], [ %62, %173 ], [ %195, %192 ], [ %204, %200 ]
  %221 = phi ptr [ %60, %148 ], [ %60, %145 ], [ %174, %173 ], [ %198, %192 ], [ %201, %200 ]
  %222 = load ptr, ptr @cfun, align 8, !tbaa !287
  %223 = getelementptr inbounds %struct.function, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !289
  %225 = getelementptr inbounds %struct.control_flow_graph, ptr %224, i64 0, i32 3
  %226 = load i32, ptr %225, align 8, !tbaa !393
  br label %227

227:                                              ; preds = %215, %54
  %228 = phi i32 [ %57, %54 ], [ %226, %215 ]
  %229 = phi ptr [ %55, %54 ], [ %224, %215 ]
  %230 = phi ptr [ %34, %54 ], [ %216, %215 ]
  %231 = phi i8 [ 0, %54 ], [ %217, %215 ]
  %232 = phi i32 [ 2, %54 ], [ %218, %215 ]
  %233 = phi i32 [ %36, %54 ], [ %219, %215 ]
  %234 = phi i32 [ 0, %54 ], [ %220, %215 ]
  %235 = phi ptr [ %22, %54 ], [ %221, %215 ]
  %236 = icmp slt i32 %232, %228
  br i1 %236, label %246, label %237, !prof !512

237:                                              ; preds = %168, %227
  %238 = phi ptr [ %235, %227 ], [ %60, %168 ]
  %239 = phi ptr [ %230, %227 ], [ %66, %168 ]
  %240 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %241 = icmp eq ptr %240, null
  br i1 %241, label %352, label %242, !prof !513

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.basic_block_def, ptr %239, i64 0, i32 9
  %244 = load i32, ptr %243, align 8, !tbaa !386
  %245 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %240, ptr noundef nonnull @.str.11, i32 noundef %244) #19
  br label %352

246:                                              ; preds = %227
  %247 = icmp eq ptr %230, %34
  br i1 %247, label %352, label %248, !prof !514

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 9
  %250 = load i64, ptr %249, align 8, !tbaa !515
  %251 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 8
  %252 = load i32, ptr %251, align 4, !tbaa !516
  store i32 %233, ptr %35, align 8, !tbaa !493
  %253 = icmp eq i8 %231, 0
  br i1 %253, label %264, label %254, !prof !517

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !291
  %257 = icmp eq ptr %230, %256
  br i1 %257, label %264, label %258, !prof !518

258:                                              ; preds = %254
  %259 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %20, ptr noundef %230) #17
  tail call fastcc void @notice_new_block(ptr noundef %259) #19
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %261 = icmp eq ptr %260, null
  br i1 %261, label %280, label %262, !prof !519

262:                                              ; preds = %258
  %263 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 23, i64 1, ptr nonnull %260)
  br label %280

264:                                              ; preds = %254, %248
  %265 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %20, ptr noundef %230) #17
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %280, !prof !520

267:                                              ; preds = %264
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %269 = icmp eq ptr %268, null
  br i1 %269, label %279, label %270, !prof !521

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %272 = load i32, ptr %271, align 8, !tbaa !386
  %273 = load ptr, ptr %33, align 8, !tbaa !369
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %273, i64 0, i32 9
  %275 = load i32, ptr %274, align 8, !tbaa !386
  %276 = getelementptr inbounds %struct.basic_block_def, ptr %230, i64 0, i32 9
  %277 = load i32, ptr %276, align 8, !tbaa !386
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %268, ptr noundef nonnull @.str.13, i32 noundef %272, i32 noundef %275, i32 noundef %277) #19
  br label %279

279:                                              ; preds = %270, %267
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %354, !llvm.loop !492

280:                                              ; preds = %264, %258, %262
  %281 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %282 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %283 = load i32, ptr %281, align 8, !tbaa !522
  %284 = mul nsw i32 %283, %252
  %285 = add nsw i32 %284, 5000
  %286 = sdiv i32 %285, 10000
  %287 = load i32, ptr %282, align 8, !tbaa !297
  %288 = and i32 %287, 1024
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %296, !prof !523

290:                                              ; preds = %280
  %291 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %1) #17
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %296, label %293, !prof !524

293:                                              ; preds = %290
  %294 = load i32, ptr %282, align 8, !tbaa !297
  %295 = or i32 %294, 1024
  store i32 %295, ptr %282, align 8, !tbaa !297
  br label %296

296:                                              ; preds = %293, %290, %280
  br label %297

297:                                              ; preds = %296, %346
  %298 = phi ptr [ %349, %346 ], [ %34, %296 ]
  %299 = phi i32 [ %339, %346 ], [ 0, %296 ]
  %300 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %298) #19, !range !330
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %314, !prof !525

302:                                              ; preds = %297
  %303 = icmp slt i32 %299, %234
  br i1 %303, label %305, label %304, !prof !509

304:                                              ; preds = %302
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.1) #17
  br label %305

305:                                              ; preds = %302, %304
  %306 = add nsw i32 %299, 1
  %307 = sext i32 %299 to i64
  %308 = getelementptr inbounds ptr, ptr %235, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !287
  %310 = load ptr, ptr %309, align 8, !tbaa !449
  %311 = icmp eq ptr %310, %298
  br i1 %311, label %313, label %312, !prof !509

312:                                              ; preds = %305
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 602, ptr noundef nonnull @.str.1) #17
  br label %313

313:                                              ; preds = %305, %312
  tail call void @update_bb_profile_for_threading(ptr noundef %298, i32 noundef %286, i64 noundef %250, ptr noundef nonnull %309) #17
  tail call void @update_br_prob_note(ptr noundef %298) #17
  br label %338

314:                                              ; preds = %297
  %315 = getelementptr inbounds %struct.basic_block_def, ptr %298, i64 0, i32 8
  %316 = load i64, ptr %315, align 8, !tbaa !526
  %317 = sub nsw i64 %316, %250
  %318 = icmp slt i64 %317, 0
  br i1 %318, label %319, label %320, !prof !527

319:                                              ; preds = %314
  br label %320

320:                                              ; preds = %319, %314
  %321 = phi i64 [ 0, %319 ], [ %317, %314 ]
  store i64 %321, ptr %315, align 8, !tbaa !526
  %322 = getelementptr inbounds %struct.basic_block_def, ptr %298, i64 0, i32 11
  %323 = load i32, ptr %322, align 8, !tbaa !522
  %324 = sub nsw i32 %323, %286
  %325 = tail call i32 @llvm.smax.i32(i32 %324, i32 0)
  store i32 %325, ptr %322, align 8, !tbaa !522
  %326 = icmp slt i32 %299, %234
  br i1 %326, label %327, label %335, !prof !527

327:                                              ; preds = %320
  %328 = sext i32 %299 to i64
  %329 = getelementptr inbounds ptr, ptr %235, i64 %328
  %330 = load ptr, ptr %329, align 8, !tbaa !287
  %331 = load ptr, ptr %330, align 8, !tbaa !449
  %332 = icmp eq ptr %298, %331
  %333 = zext i1 %332 to i32
  %334 = add nsw i32 %299, %333
  br label %335

335:                                              ; preds = %327, %320
  %336 = phi i32 [ %299, %320 ], [ %334, %327 ]
  %337 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %298) #19
  br label %338

338:                                              ; preds = %335, %313
  %339 = phi i32 [ %336, %335 ], [ %306, %313 ]
  %340 = phi ptr [ %337, %335 ], [ %309, %313 ]
  %341 = getelementptr inbounds %struct.edge_def, ptr %340, i64 0, i32 9
  %342 = load i64, ptr %341, align 8, !tbaa !515
  %343 = sub nsw i64 %342, %250
  %344 = icmp slt i64 %343, 0
  br i1 %344, label %345, label %346, !prof !528

345:                                              ; preds = %338
  br label %346

346:                                              ; preds = %345, %338
  %347 = phi i64 [ 0, %345 ], [ %343, %338 ]
  store i64 %347, ptr %341, align 8, !tbaa !515
  %348 = getelementptr inbounds %struct.edge_def, ptr %340, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !369
  %350 = icmp eq ptr %349, %230
  br i1 %350, label %351, label %297, !prof !529, !llvm.loop !530

351:                                              ; preds = %346
  br label %354, !llvm.loop !492

352:                                              ; preds = %246, %237, %242
  %353 = phi ptr [ %235, %246 ], [ %238, %237 ], [ %238, %242 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %354

354:                                              ; preds = %279, %351, %352, %31
  %355 = phi ptr [ %22, %31 ], [ %353, %352 ], [ %235, %351 ], [ %235, %279 ]
  %356 = phi i8 [ %21, %31 ], [ %21, %352 ], [ 1, %351 ], [ %21, %279 ]
  %357 = load i32, ptr %3, align 8
  %358 = load ptr, ptr %13, align 8
  %359 = tail call fastcc ptr @ei_safe_edge(i32 %357, ptr %358) #19
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %19, !prof !531

361:                                              ; preds = %354
  %362 = icmp eq ptr %355, null
  br i1 %362, label %364, label %363, !prof !532

363:                                              ; preds = %361
  tail call void @free(ptr noundef nonnull %355) #19
  br label %364

364:                                              ; preds = %43, %10, %361, %363, %2
  %365 = phi i8 [ 0, %2 ], [ %356, %363 ], [ %356, %361 ], [ 0, %10 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i8 %365
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !533 !PGOFuncName !534 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = load ptr, ptr %1, align 8, !tbaa !364
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #19
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %158, label %8, !prof !535

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %1) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11, !prof !536

11:                                               ; preds = %8
  %12 = load ptr, ptr @cfun, align 8, !tbaa !287
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !289
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !291
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %25, label %18, !prof !537

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !315
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !316
  %23 = tail call i32 @computed_jump_p(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %158, !prof !538

25:                                               ; preds = %18, %11, %8
  %26 = load ptr, ptr %1, align 8, !tbaa !364
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 0) #19
  %28 = load ptr, ptr %27, align 8, !tbaa !449
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !297
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 1) #19
  %32 = load ptr, ptr %31, align 8, !tbaa !449
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !297
  %35 = xor i32 %34, %30
  %36 = and i32 %35, 96
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %158, !prof !539

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !375
  %41 = and i32 %40, 8192
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %158, !prof !539

43:                                               ; preds = %38
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !287
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 53, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !540
  %47 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %26) #19
  %48 = icmp ugt i32 %47, %46
  br i1 %48, label %158, label %49, !prof !542

49:                                               ; preds = %43
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !462
  %51 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %50, ptr %51, align 8, !tbaa.struct !463
  %52 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %3) #19, !range !330
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54, !prof !543

54:                                               ; preds = %49, %60
  %55 = load ptr, ptr %3, align 8, !tbaa !287
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !375
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65, !prof !544

60:                                               ; preds = %54
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %61 = load i32, ptr %4, align 8
  %62 = load ptr, ptr %51, align 8
  %63 = call fastcc zeroext i8 @ei_cond(i32 %61, ptr %62, ptr noundef nonnull %3) #19, !range !330
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %54, !prof !545, !llvm.loop !546

65:                                               ; preds = %60, %54, %49
  %66 = phi ptr [ null, %49 ], [ %55, %54 ], [ null, %60 ]
  %67 = load ptr, ptr %1, align 8, !tbaa !364
  %68 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %67) #19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %158, label %70, !prof !436

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
  br i1 %71, label %106, label %82, !prof !547

82:                                               ; preds = %76
  %83 = icmp eq ptr %80, %66
  br i1 %83, label %84, label %89, !prof !548

84:                                               ; preds = %99, %82, %106
  %85 = phi ptr [ %100, %99 ], [ %77, %82 ], [ %107, %106 ]
  %86 = phi ptr [ %100, %99 ], [ %78, %82 ], [ %107, %106 ]
  %87 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %86) #19
  %88 = icmp ult i32 %81, %87
  br i1 %88, label %76, label %154, !prof !549, !llvm.loop !550

89:                                               ; preds = %82
  %90 = load i1, ptr @first_pass, align 1
  br i1 %90, label %101, label %91, !prof !551

91:                                               ; preds = %89
  %92 = load ptr, ptr %80, align 8, !tbaa !449
  %93 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %92) #17
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %101, !prof !552

95:                                               ; preds = %91
  %96 = load ptr, ptr %66, align 8, !tbaa !449
  %97 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %96) #17
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %101, !prof !553

99:                                               ; preds = %95
  %100 = load ptr, ptr %1, align 8, !tbaa !364
  br label %84

101:                                              ; preds = %95, %91, %89
  %102 = tail call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr noundef %80, ptr noundef nonnull %66) #19, !range !330
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %148, !prof !554, !llvm.loop !550

104:                                              ; preds = %101
  %105 = load ptr, ptr %1, align 8, !tbaa !364
  br label %106

106:                                              ; preds = %104, %76
  %107 = phi ptr [ %105, %104 ], [ %77, %76 ]
  %108 = load ptr, ptr %80, align 8, !tbaa !449
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !366
  %111 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %110, i32 noundef 0) #19
  %112 = icmp eq ptr %111, %80
  br i1 %112, label %113, label %84, !prof !555

113:                                              ; preds = %106
  %114 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %107) #19
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %148, label %116, !prof !556

116:                                              ; preds = %113, %124
  %117 = phi ptr [ %125, %124 ], [ %107, %113 ]
  %118 = phi i32 [ %120, %124 ], [ 0, %113 ]
  %119 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %117, i32 noundef %118) #19
  %120 = add nuw i32 %118, 1
  %121 = icmp eq ptr %119, %80
  %122 = icmp eq ptr %119, %66
  %123 = or i1 %121, %122
  br i1 %123, label %124, label %128, !prof !557

124:                                              ; preds = %116, %128, %141, %145
  %125 = load ptr, ptr %1, align 8, !tbaa !364
  %126 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %125) #19
  %127 = icmp ult i32 %120, %126
  br i1 %127, label %116, label %148, !prof !558, !llvm.loop !559

128:                                              ; preds = %116
  %129 = load ptr, ptr %80, align 8, !tbaa !449
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 9
  %131 = load i32, ptr %130, align 8, !tbaa !386
  %132 = load ptr, ptr %119, align 8, !tbaa !449
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !386
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %124, label %136, !prof !560

136:                                              ; preds = %128
  %137 = load i1, ptr @first_pass, align 1
  br i1 %137, label %145, label %138, !prof !561

138:                                              ; preds = %136
  %139 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef nonnull %129) #17
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %145, !prof !562

141:                                              ; preds = %138
  %142 = load ptr, ptr %119, align 8, !tbaa !449
  %143 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %142) #17
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %124, label %145, !prof !563

145:                                              ; preds = %141, %138, %136
  %146 = tail call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr noundef nonnull %80, ptr noundef nonnull %119) #19, !range !330
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %124, label %148, !prof !564

148:                                              ; preds = %101, %145, %124, %113
  %149 = phi i32 [ %81, %113 ], [ 0, %145 ], [ %81, %124 ], [ 0, %101 ]
  %150 = phi i8 [ %74, %113 ], [ 1, %145 ], [ %74, %124 ], [ 1, %101 ]
  %151 = load ptr, ptr %1, align 8, !tbaa !364
  %152 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %151) #19
  %153 = icmp ult i32 %149, %152
  br i1 %153, label %72, label %154, !prof !565, !llvm.loop !550

154:                                              ; preds = %148, %84
  %155 = phi i8 [ %74, %84 ], [ %150, %148 ]
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %158, label %157, !prof !566

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
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !567 !PGOFuncName !568 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !569 !PGOFuncName !570 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !571 !PGOFuncName !572 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !330
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !573

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !287
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !574 !PGOFuncName !575 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !576

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !577

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !578
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !578
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_blocks_move_successor_nojumps(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !580 !PGOFuncName !581 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !297
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !297
  %9 = xor i32 %8, %6
  %10 = and i32 %9, 96
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63, !prof !582

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !315
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !316
  %17 = call zeroext i8 @tablejump_p(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19, !prof !582

19:                                               ; preds = %12
  %20 = load ptr, ptr %3, align 8, !tbaa !287
  %21 = call ptr @prev_active_insn(ptr noundef %20) #17
  %22 = load ptr, ptr %13, align 8, !tbaa !315
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !316
  %25 = icmp eq ptr %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 8, !tbaa !287
  store ptr %27, ptr %23, align 8, !tbaa !316
  br label %28

28:                                               ; preds = %26, %19, %12
  %29 = load ptr, ptr %13, align 8, !tbaa !315
  %30 = getelementptr inbounds %struct.rtl_bb_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !316
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !315
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35, !prof !472

35:                                               ; preds = %28
  %36 = load i32, ptr %33, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 11
  br i1 %38, label %39, label %44, !prof !582

39:                                               ; preds = %35
  %40 = call ptr @delete_insn(ptr noundef nonnull %33) #17
  %41 = load ptr, ptr %13, align 8, !tbaa !315
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !316
  br label %44

44:                                               ; preds = %39, %35, %28
  %45 = phi ptr [ %43, %39 ], [ %31, %35 ], [ %31, %28 ]
  %46 = phi ptr [ %41, %39 ], [ %29, %35 ], [ %29, %28 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !378
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !315
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !316
  call void @reorder_insns_nobb(ptr noundef %47, ptr noundef %45, ptr noundef %51) #17
  %52 = load ptr, ptr %13, align 8, !tbaa !315
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  store ptr %16, ptr %53, align 8, !tbaa !316
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !prof !582

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !386
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !386
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
define internal fastcc void @notice_new_block(ptr noundef %0) unnamed_addr #0 !prof !583 !PGOFuncName !584 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !585

3:                                                ; preds = %1
  %4 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %0) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6, !prof !473

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !297
  %9 = or i32 %8, 1024
  store i32 %9, ptr %7, align 8, !tbaa !297
  br label %10

10:                                               ; preds = %1, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_blocks_move_predecessor_nojumps(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !586 !PGOFuncName !587 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !297
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !297
  %7 = xor i32 %6, %4
  %8 = and i32 %7, 96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %45, !prof !588

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !315
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !316
  %15 = tail call ptr @next_nonnote_insn(ptr noundef %14) #17
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 11
  br i1 %18, label %20, label %19, !prof !588

19:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @.str.1) #17
  br label %20

20:                                               ; preds = %10, %19
  %21 = tail call ptr @delete_insn(ptr noundef nonnull %15) #17
  %22 = load ptr, ptr %11, align 8, !tbaa !315
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !316
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !315
  %27 = load ptr, ptr %26, align 8, !tbaa !378
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !315
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %33, label %31, !prof !473

31:                                               ; preds = %20
  %32 = load ptr, ptr %22, align 8, !tbaa !378
  tail call void @reorder_insns_nobb(ptr noundef %32, ptr noundef %24, ptr noundef %29) #17
  br label %33

33:                                               ; preds = %31, %20
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #17
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36, !prof !588

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !386
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !386
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.9, i32 noundef %38, i32 noundef %40) #19
  br label %42

42:                                               ; preds = %36, %33
  tail call void @unlink_block(ptr noundef nonnull %0) #17
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !293
  tail call void @link_block(ptr noundef nonnull %0, ptr noundef %44) #17
  tail call void @merge_blocks(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %45

45:                                               ; preds = %2, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !589 !PGOFuncName !590 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !591

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !592 !PGOFuncName !593 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !594

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !595 !PGOFuncName !596 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !597

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !287
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
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !598 !PGOFuncName !599 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !330
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !600

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
define internal fastcc ptr @thread_jump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !601 !PGOFuncName !602 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !297
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %270, !prof !603

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !449
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !366
  %14 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %13) #19
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %270, !prof !604

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !366
  %19 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %18) #19
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %23, label %21, !prof !605

21:                                               ; preds = %16
  %22 = or disjoint i32 %7, 2048
  store i32 %22, ptr %6, align 8, !tbaa !297
  br label %270

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !315
  %26 = getelementptr inbounds %struct.rtl_bb_info, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !316
  %28 = tail call i32 @any_condjump_p(ptr noundef %27) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %270, label %30, !prof !606

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !315
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !316
  %35 = tail call i32 @any_condjump_p(ptr noundef %34) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37, !prof !607

37:                                               ; preds = %30
  %38 = load ptr, ptr %31, align 8, !tbaa !315
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !316
  %41 = tail call i32 @onlyjump_p(ptr noundef %40) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46, !prof !608

43:                                               ; preds = %37, %30
  %44 = load i32, ptr %6, align 8, !tbaa !297
  %45 = or i32 %44, 2048
  store i32 %45, ptr %6, align 8, !tbaa !297
  br label %270

46:                                               ; preds = %37
  %47 = load ptr, ptr %0, align 8, !tbaa !449
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !315
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !316
  %52 = tail call ptr @pc_set(ptr noundef %51) #17
  %53 = load ptr, ptr %31, align 8, !tbaa !315
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !316
  %56 = tail call ptr @pc_set(ptr noundef %55) #17
  %57 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !375
  %59 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !315
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !315
  %63 = load ptr, ptr @global_rtl, align 16, !tbaa !287
  %64 = icmp eq ptr %62, %63
  %65 = and i32 %58, 1
  %66 = icmp eq i32 %65, 0
  %67 = xor i1 %66, %64
  %68 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !315
  %70 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !315
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !315
  store ptr %73, ptr %3, align 8, !tbaa !287
  br i1 %67, label %81, label %74, !prof !609

74:                                               ; preds = %46
  %75 = load ptr, ptr %0, align 8, !tbaa !449
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !315
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !316
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
  %88 = load ptr, ptr %31, align 8, !tbaa !315
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !316
  %91 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %73, ptr noundef %90) #17
  %92 = tail call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %87) #17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97, !prof !610

94:                                               ; preds = %84
  %95 = tail call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %91) #17
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %270, label %97, !prof !611

97:                                               ; preds = %94, %84
  %98 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !315
  %100 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !315
  %102 = tail call i32 @rtx_equal_p(ptr noundef %99, ptr noundef %101) #17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %270, label %104, !prof !612

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !315
  %107 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !315
  %109 = tail call i32 @rtx_equal_p(ptr noundef %106, ptr noundef %108) #17
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %270, label %111, !prof !613

111:                                              ; preds = %104
  %112 = load ptr, ptr %31, align 8, !tbaa !315
  %113 = load ptr, ptr %112, align 8, !tbaa !378
  %114 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 2
  %115 = load ptr, ptr %114, align 8, !tbaa !315
  %116 = getelementptr inbounds %struct.rtl_bb_info, ptr %112, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !316
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !315
  %120 = icmp eq ptr %115, %119
  br i1 %120, label %147, label %121, !prof !614

121:                                              ; preds = %111, %138
  %122 = phi ptr [ %139, %138 ], [ %112, %111 ]
  %123 = phi ptr [ %141, %138 ], [ %115, %111 ]
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -7
  %127 = icmp ult i32 %126, 4
  br i1 %127, label %128, label %138, !prof !615

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !315
  %131 = tail call i32 @side_effects_p(ptr noundef %130) #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135, !prof !616

133:                                              ; preds = %128
  %134 = load ptr, ptr %31, align 8, !tbaa !315
  br label %138

135:                                              ; preds = %128
  %136 = load i32, ptr %6, align 8, !tbaa !297
  %137 = or i32 %136, 2048
  store i32 %137, ptr %6, align 8, !tbaa !297
  br label %270

138:                                              ; preds = %133, %121
  %139 = phi ptr [ %134, %133 ], [ %122, %121 ]
  %140 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 2
  %141 = load ptr, ptr %140, align 8, !tbaa !315
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %139, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !316
  %144 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 2
  %145 = load ptr, ptr %144, align 8, !tbaa !315
  %146 = icmp eq ptr %141, %145
  br i1 %146, label %147, label %121, !prof !617, !llvm.loop !618

147:                                              ; preds = %138, %111
  tail call void @cselib_init(i32 noundef 0) #17
  %148 = load ptr, ptr %0, align 8, !tbaa !449
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !315
  %151 = load ptr, ptr %150, align 8, !tbaa !378
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 2
  %153 = load ptr, ptr %152, align 8, !tbaa !315
  %154 = getelementptr inbounds %struct.rtl_bb_info, ptr %150, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !316
  %156 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %157 = load ptr, ptr %156, align 8, !tbaa !315
  %158 = icmp eq ptr %153, %157
  br i1 %158, label %179, label %159, !prof !614

159:                                              ; preds = %147, %168
  %160 = phi ptr [ %169, %168 ], [ %148, %147 ]
  %161 = phi ptr [ %171, %168 ], [ %153, %147 ]
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = add nsw i32 %163, -7
  %165 = icmp ult i32 %164, 4
  br i1 %165, label %166, label %168, !prof !619

166:                                              ; preds = %159
  tail call void @cselib_process_insn(ptr noundef nonnull %161) #17
  %167 = load ptr, ptr %0, align 8, !tbaa !449
  br label %168

168:                                              ; preds = %159, %166
  %169 = phi ptr [ %160, %159 ], [ %167, %166 ]
  %170 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1, i32 0, i32 0, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !315
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !315
  %174 = getelementptr inbounds %struct.rtl_bb_info, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !316
  %176 = getelementptr inbounds %struct.rtx_def, ptr %175, i64 0, i32 1, i32 0, i32 0, i64 2
  %177 = load ptr, ptr %176, align 8, !tbaa !315
  %178 = icmp eq ptr %171, %177
  br i1 %178, label %179, label %159, !prof !620, !llvm.loop !621

179:                                              ; preds = %168, %147
  %180 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @bitmap_clear(ptr noundef %180) #17
  %181 = load ptr, ptr %31, align 8, !tbaa !315
  %182 = load ptr, ptr %181, align 8, !tbaa !378
  %183 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1, i32 0, i32 0, i64 2
  %184 = load ptr, ptr %183, align 8, !tbaa !315
  %185 = getelementptr inbounds %struct.rtl_bb_info, ptr %181, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !316
  %187 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !315
  %189 = icmp eq ptr %184, %188
  br i1 %189, label %242, label %190, !prof !614

190:                                              ; preds = %179, %225
  %191 = phi ptr [ %229, %225 ], [ %184, %179 ]
  %192 = phi i32 [ %226, %225 ], [ undef, %179 ]
  %193 = load i32, ptr %191, align 8
  %194 = and i32 %193, 65535
  %195 = add nsw i32 %194, -7
  %196 = icmp ult i32 %195, 4
  br i1 %196, label %197, label %225, !prof !622

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !315
  %200 = load i32, ptr %199, align 8
  %201 = and i32 %200, 65535
  %202 = icmp eq i32 %201, 15
  br i1 %202, label %203, label %221, !prof !623

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !315
  %206 = load i32, ptr %205, align 8, !tbaa !624
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %225, label %208, !prof !626

208:                                              ; preds = %203, %208
  %209 = phi i64 [ %216, %208 ], [ 0, %203 ]
  %210 = phi ptr [ %217, %208 ], [ %205, %203 ]
  %211 = phi i8 [ %215, %208 ], [ 0, %203 ]
  %212 = getelementptr inbounds %struct.rtvec_def, ptr %210, i64 0, i32 1, i64 %209
  %213 = load ptr, ptr %212, align 8, !tbaa !287
  %214 = tail call fastcc zeroext i8 @mark_effect(ptr noundef %213, ptr noundef %180) #19, !range !330
  %215 = or i8 %214, %211
  %216 = add nuw nsw i64 %209, 1
  %217 = load ptr, ptr %204, align 8, !tbaa !315
  %218 = load i32, ptr %217, align 8, !tbaa !624
  %219 = zext i32 %218 to i64
  %220 = icmp ult i64 %216, %219
  br i1 %220, label %208, label %223, !prof !627, !llvm.loop !628

221:                                              ; preds = %197
  %222 = tail call fastcc zeroext i8 @mark_effect(ptr noundef nonnull %199, ptr noundef %180) #19, !range !330
  br label %225

223:                                              ; preds = %208
  %224 = trunc i64 %216 to i32
  br label %225

225:                                              ; preds = %223, %203, %190, %221
  %226 = phi i32 [ %192, %190 ], [ %192, %221 ], [ 0, %203 ], [ %224, %223 ]
  %227 = phi i8 [ 0, %190 ], [ %222, %221 ], [ 0, %203 ], [ %215, %223 ]
  tail call void @cselib_process_insn(ptr noundef nonnull %191) #17
  %228 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 2
  %229 = load ptr, ptr %228, align 8, !tbaa !315
  %230 = load ptr, ptr %31, align 8, !tbaa !315
  %231 = getelementptr inbounds %struct.rtl_bb_info, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !316
  %233 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 2
  %234 = load ptr, ptr %233, align 8, !tbaa !315
  %235 = icmp ne ptr %229, %234
  %236 = icmp eq i8 %227, 0
  %237 = select i1 %235, i1 %236, i1 false, !prof !629
  br i1 %237, label %190, label %238, !prof !630, !llvm.loop !631

238:                                              ; preds = %225
  store i32 %226, ptr %4, align 4, !tbaa !282
  br i1 %236, label %242, label %239, !prof !632

239:                                              ; preds = %238
  %240 = load i32, ptr %6, align 8, !tbaa !297
  %241 = or i32 %240, 2048
  store i32 %241, ptr %6, align 8, !tbaa !297
  br label %269

242:                                              ; preds = %179, %238
  %243 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @mentions_nonequal_regs, ptr noundef %180) #17
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %269, !prof !633

245:                                              ; preds = %242
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %180, ptr noundef nonnull %4) #19
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !330
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %269, !prof !634

248:                                              ; preds = %245
  call void @bitmap_obstack_free(ptr noundef %180) #17
  call void @cselib_finish() #17
  %249 = call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %87) #17
  %250 = icmp ne i32 %249, 0
  %251 = load ptr, ptr %70, align 8, !tbaa !315
  %252 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !315
  %254 = load ptr, ptr @global_rtl, align 16, !tbaa !287
  %255 = icmp ne ptr %253, %254
  %256 = xor i1 %250, %255
  %257 = load ptr, ptr %17, align 8, !tbaa !366
  %258 = call fastcc ptr @VEC_edge_base_index(ptr noundef %257, i32 noundef 0) #19
  %259 = getelementptr inbounds %struct.edge_def, ptr %258, i64 0, i32 7
  %260 = load i32, ptr %259, align 8, !tbaa !375
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  br i1 %256, label %266, label %263, !prof !635

263:                                              ; preds = %248
  br i1 %262, label %270, label %264, !prof !636

264:                                              ; preds = %263
  %265 = call fastcc ptr @VEC_edge_base_index(ptr noundef %257, i32 noundef 1) #19
  br label %270

266:                                              ; preds = %248
  br i1 %262, label %267, label %270, !prof !637

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
define internal fastcc noundef zeroext i8 @mark_effect(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !638 !PGOFuncName !639 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %68 [
    i16 25, label %5
    i16 23, label %32
  ], !prof !640

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !315
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %68, !prof !641

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #19
  %13 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %12) #17
  %14 = icmp slt i32 %12, 53
  br i1 %14, label %15, label %68, !prof !642

15:                                               ; preds = %11
  %16 = sext i32 %12 to i64
  %17 = load i32, ptr %7, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !315
  %23 = icmp ugt i8 %22, 1
  br i1 %23, label %24, label %68, !prof !643

24:                                               ; preds = %15
  %25 = zext i8 %22 to i32
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ %28, %26 ], [ %25, %24 ]
  %28 = add nsw i32 %27, -1
  %29 = add nsw i32 %28, %12
  %30 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %29) #17
  %31 = icmp ugt i32 %27, 2
  br i1 %31, label %26, label %68, !prof !644, !llvm.loop !645

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !315
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !315
  %37 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %34, ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %68, !prof !646

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !315
  %41 = load ptr, ptr @global_rtl, align 16, !tbaa !287
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %68, label %43, !prof !647

43:                                               ; preds = %39
  %44 = load i32, ptr %40, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %68, !prof !648

47:                                               ; preds = %43
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %40) #19
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %48) #17
  %50 = icmp slt i32 %48, 53
  br i1 %50, label %51, label %68, !prof !649

51:                                               ; preds = %47
  %52 = sext i32 %48 to i64
  %53 = load i32, ptr %40, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %52, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !315
  %59 = icmp ugt i8 %58, 1
  br i1 %59, label %60, label %68, !prof !650

60:                                               ; preds = %51
  %61 = zext i8 %58 to i32
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i32 [ %64, %62 ], [ %61, %60 ]
  %64 = add nsw i32 %63, -1
  %65 = add nsw i32 %64, %48
  %66 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %65) #17
  %67 = icmp ugt i32 %63, 2
  br i1 %67, label %62, label %68, !prof !644, !llvm.loop !651

68:                                               ; preds = %62, %26, %51, %15, %2, %47, %43, %39, %32, %5, %11
  %69 = phi i8 [ 0, %11 ], [ 0, %5 ], [ 0, %32 ], [ 0, %39 ], [ 1, %43 ], [ 0, %47 ], [ 0, %2 ], [ 0, %15 ], [ 0, %51 ], [ 0, %26 ], [ 0, %62 ]
  ret i8 %69
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mentions_nonequal_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !652 !PGOFuncName !653 {
  %3 = load ptr, ptr %0, align 8, !tbaa !287
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %31, !prof !654

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #19
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %8) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31, !prof !633

11:                                               ; preds = %7
  %12 = icmp slt i32 %8, 53
  br i1 %12, label %13, label %31, !prof !655

13:                                               ; preds = %11
  %14 = sext i32 %8 to i64
  %15 = load ptr, ptr %0, align 8, !tbaa !287
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %14, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !315
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %26, %13
  %24 = phi i32 [ %22, %13 ], [ %27, %26 ]
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %31, label %26, !prof !655

26:                                               ; preds = %23
  %27 = add nsw i32 %24, -1
  %28 = add nsw i32 %27, %8
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %28) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %31, !llvm.loop !656

31:                                               ; preds = %23, %26, %11, %2, %7
  %32 = phi i32 [ 1, %7 ], [ 0, %2 ], [ 0, %11 ], [ 0, %23 ], [ 1, %26 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !657 !PGOFuncName !658 {
  %4 = load ptr, ptr %1, align 8, !tbaa !659
  store ptr %4, ptr %0, align 8, !tbaa !661
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !663
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !634

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !661
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !664
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !666
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !667
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !668
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !282
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !657 !PGOFuncName !669 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !668
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !670

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !671

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !282
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !672, !llvm.loop !673

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !282
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !282
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !666
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !661
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !666
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !518

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !667
  store i64 %35, ptr %3, align 8, !tbaa !668
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !674

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !282
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !282
  %40 = load i32, ptr %23, align 8, !tbaa !666
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !666
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !675, !llvm.loop !676

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !677
  store ptr %44, ptr %0, align 8, !tbaa !661
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !509

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !664
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !282
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !668
  store i32 %16, ptr %1, align 4, !tbaa !282
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !678 !PGOFuncName !679 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !315
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
define internal fastcc noundef zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !680 !PGOFuncName !681 {
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
  %16 = load ptr, ptr %1, align 8, !tbaa !449
  %17 = load ptr, ptr %2, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  store ptr null, ptr %5, align 8, !tbaa !287
  store ptr null, ptr %4, align 8, !tbaa !287
  %18 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !282
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !682

20:                                               ; preds = %3
  %21 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %434

23:                                               ; preds = %20, %3
  %24 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %16) #19, !range !330
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26, !prof !683

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !297
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !684

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %16) #19
  %33 = load ptr, ptr %32, align 8, !tbaa !449
  br label %34

34:                                               ; preds = %31, %26, %23
  %35 = phi ptr [ %33, %31 ], [ %16, %26 ], [ %16, %23 ]
  %36 = phi ptr [ %32, %31 ], [ %1, %26 ], [ %1, %23 ]
  %37 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %17) #19, !range !330
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %47, label %39, !prof !685

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !297
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44, !prof !686

44:                                               ; preds = %39
  %45 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %17) #19
  %46 = load ptr, ptr %45, align 8, !tbaa !449
  br label %47

47:                                               ; preds = %44, %39, %34
  %48 = phi ptr [ %46, %44 ], [ %17, %39 ], [ %17, %34 ]
  %49 = phi ptr [ %45, %44 ], [ %2, %39 ], [ %2, %34 ]
  %50 = load ptr, ptr @cfun, align 8, !tbaa !287
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !289
  %53 = load ptr, ptr %52, align 8, !tbaa !296
  %54 = icmp eq ptr %35, %53
  %55 = icmp eq ptr %48, %53
  %56 = select i1 %54, i1 true, i1 %55
  %57 = icmp eq ptr %35, %48
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %434, label %59, !prof !687

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !369
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 13
  %63 = load i32, ptr %62, align 8, !tbaa !297
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66, !prof !688

66:                                               ; preds = %59
  %67 = tail call fastcc ptr @single_succ(ptr noundef nonnull %61) #19
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 13
  %69 = load i32, ptr %68, align 8, !tbaa !297
  %70 = and i32 %69, 1024
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %434, !prof !689

72:                                               ; preds = %66, %59
  %73 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !369
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !297
  %77 = and i32 %76, 1024
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79, !prof !690

79:                                               ; preds = %72
  %80 = tail call fastcc ptr @single_succ(ptr noundef nonnull %74) #19
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 13
  %82 = load i32, ptr %81, align 8, !tbaa !297
  %83 = and i32 %82, 1024
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %434, !prof !691

85:                                               ; preds = %79, %72
  %86 = load ptr, ptr %35, align 8, !tbaa !364
  %87 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %86) #19
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %434, label %89, !prof !692

89:                                               ; preds = %85
  %90 = load ptr, ptr %48, align 8, !tbaa !364
  %91 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %90) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %434, label %93, !prof !693

93:                                               ; preds = %89
  %94 = tail call fastcc zeroext i8 @outgoing_edges_match(i32 noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %48) #19
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %434, label %96, !prof !694

96:                                               ; preds = %93
  %97 = call fastcc i32 @flow_find_cross_jump(i32 noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %48, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %98 = load ptr, ptr @compiler_params, align 8, !tbaa !287
  %99 = getelementptr inbounds %struct.param_info, ptr %98, i64 54, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !540
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %108, !prof !695

102:                                              ; preds = %96
  %103 = load ptr, ptr %4, align 8, !tbaa !287
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !315
  %106 = load ptr, ptr %105, align 8, !tbaa !378
  %107 = icmp eq ptr %103, %106
  br i1 %107, label %108, label %434, !prof !696

108:                                              ; preds = %102, %96
  %109 = load ptr, ptr %60, align 8, !tbaa !369
  %110 = tail call fastcc zeroext i8 @block_has_preserve_label(ptr noundef %109) #19, !range !330
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %117, label %112, !prof !697

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %114 = load i32, ptr %113, align 8, !tbaa !375
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %434

117:                                              ; preds = %112, %108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !315
  %120 = getelementptr inbounds %struct.rtl_bb_info, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !316
  %122 = call zeroext i8 @tablejump_p(ptr noundef %121, ptr noundef nonnull %8, ptr noundef nonnull %10) #17
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %155, label %124, !prof !697

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !315
  %127 = getelementptr inbounds %struct.rtl_bb_info, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !316
  %129 = call zeroext i8 @tablejump_p(ptr noundef %128, ptr noundef nonnull %9, ptr noundef nonnull %11) #17
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %155, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr %8, align 8, !tbaa !287
  %133 = load ptr, ptr %9, align 8, !tbaa !287
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %155, label %135

135:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  store ptr %132, ptr %12, align 8, !tbaa !698
  %136 = getelementptr inbounds %struct.replace_label_data, ptr %12, i64 0, i32 1
  store ptr %133, ptr %136, align 8, !tbaa !700
  %137 = getelementptr inbounds %struct.replace_label_data, ptr %12, i64 0, i32 2
  store i8 1, ptr %137, align 8, !tbaa !701
  %138 = call ptr @get_insns() #17
  store ptr %138, ptr %13, align 8, !tbaa !287
  %139 = icmp eq ptr %138, null
  br i1 %139, label %154, label %140

140:                                              ; preds = %135, %149
  %141 = phi ptr [ %152, %149 ], [ %138, %135 ]
  %142 = load ptr, ptr %118, align 8, !tbaa !315
  %143 = getelementptr inbounds %struct.rtl_bb_info, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !316
  %145 = icmp eq ptr %141, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = call i32 @for_each_rtx(ptr noundef nonnull %13, ptr noundef nonnull @replace_label, ptr noundef nonnull %12) #17
  %148 = load ptr, ptr %13, align 8, !tbaa !287
  br label %149

149:                                              ; preds = %140, %146
  %150 = phi ptr [ %141, %140 ], [ %148, %146 ]
  %151 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1, i32 0, i32 0, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !315
  store ptr %152, ptr %13, align 8, !tbaa !287
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %140, !llvm.loop !702

154:                                              ; preds = %149, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %155

155:                                              ; preds = %154, %131, %124, %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  %156 = load ptr, ptr %5, align 8, !tbaa !315
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !315
  %159 = load ptr, ptr %158, align 8, !tbaa !378
  %160 = icmp eq ptr %156, %159
  br i1 %160, label %161, label %201, !prof !703

161:                                              ; preds = %155
  %162 = load ptr, ptr %48, align 8, !tbaa !364
  %163 = call fastcc ptr @VEC_edge_base_index(ptr noundef %162, i32 noundef 0) #19
  %164 = getelementptr inbounds %struct.edge_def, ptr %163, i64 0, i32 7
  %165 = load i32, ptr %164, align 8, !tbaa !375
  %166 = and i32 %165, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %215, label %168, !prof !704

168:                                              ; preds = %161
  %169 = load i32, ptr %156, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 12
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !315
  store ptr %174, ptr %5, align 8, !tbaa !287
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
  %183 = load ptr, ptr %182, align 8, !tbaa !315
  br label %177, !llvm.loop !705

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 2
  %186 = load ptr, ptr %185, align 8, !tbaa !315
  br label %187

187:                                              ; preds = %177, %184
  %188 = phi ptr [ %186, %184 ], [ %178, %177 ]
  store ptr %188, ptr %5, align 8, !tbaa !287
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 7
  br i1 %191, label %192, label %199

192:                                              ; preds = %187, %192
  %193 = phi ptr [ %195, %192 ], [ %188, %187 ]
  %194 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 2
  %195 = load ptr, ptr %194, align 8, !tbaa !315
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 7
  br i1 %198, label %192, label %199, !llvm.loop !706

199:                                              ; preds = %192, %187
  %200 = phi ptr [ %188, %187 ], [ %195, %192 ]
  store ptr %200, ptr %5, align 8, !tbaa !287
  br label %201

201:                                              ; preds = %199, %155
  %202 = phi ptr [ %200, %199 ], [ %156, %155 ]
  %203 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205, !prof !707

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !386
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %203, ptr noundef nonnull @.str.14, i32 noundef %207, i32 noundef %97) #19
  br label %209

209:                                              ; preds = %205, %201
  %210 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !315
  %212 = call ptr @split_block(ptr noundef nonnull %48, ptr noundef %211) #17
  %213 = getelementptr inbounds %struct.edge_def, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !369
  br label %215

215:                                              ; preds = %161, %209
  %216 = phi ptr [ %214, %209 ], [ %48, %161 ]
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %218 = icmp eq ptr %217, null
  br i1 %218, label %225, label %219, !prof !697

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %221 = load i32, ptr %220, align 8, !tbaa !386
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %223 = load i32, ptr %222, align 8, !tbaa !386
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %217, ptr noundef nonnull @.str.15, i32 noundef %221, i32 noundef %223, i32 noundef %97) #19
  br label %225

225:                                              ; preds = %219, %215
  call void @df_set_bb_dirty(ptr noundef %216) #17
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 1
  %227 = call fastcc ptr @ei_start_1(ptr noundef nonnull %226) #19
  store i32 0, ptr %7, align 8, !tbaa.struct !462
  %228 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %227, ptr %228, align 8, !tbaa.struct !463
  %229 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %227, ptr noundef nonnull %6) #19, !range !330
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %372, label %231, !prof !708

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %233 = getelementptr inbounds i8, ptr %15, i64 8
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 11
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 11
  br label %236

236:                                              ; preds = %231, %366
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  %237 = load ptr, ptr %6, align 8, !tbaa !287
  %238 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !369
  %240 = getelementptr inbounds %struct.basic_block_def, ptr %239, i64 0, i32 13
  %241 = load i32, ptr %240, align 8, !tbaa !297
  %242 = and i32 %241, 1024
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244, !prof !709

244:                                              ; preds = %236
  %245 = call fastcc ptr @single_succ(ptr noundef nonnull %239) #19
  br label %246

246:                                              ; preds = %244, %236
  %247 = phi ptr [ %245, %244 ], [ %239, %236 ]
  %248 = call fastcc ptr @ei_start_1(ptr noundef nonnull %232) #19
  store i32 0, ptr %15, align 8, !tbaa.struct !462
  store ptr %248, ptr %233, align 8, !tbaa.struct !463
  %249 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %248, ptr noundef nonnull %14) #19, !range !330
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %269, label %251, !prof !436

251:                                              ; preds = %246, %264
  %252 = load ptr, ptr %14, align 8, !tbaa !287
  %253 = getelementptr inbounds %struct.edge_def, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !369
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %254, i64 0, i32 13
  %256 = load i32, ptr %255, align 8, !tbaa !297
  %257 = and i32 %256, 1024
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259, !prof !710

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
  %267 = call fastcc zeroext i8 @ei_cond(i32 %265, ptr %266, ptr noundef nonnull %14) #19, !range !330
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %251, !prof !711, !llvm.loop !712

269:                                              ; preds = %264, %261, %246
  %270 = load ptr, ptr %14, align 8, !tbaa !287
  %271 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 9
  %272 = load i64, ptr %271, align 8, !tbaa !515
  %273 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 9
  %274 = load i64, ptr %273, align 8, !tbaa !515
  %275 = add nsw i64 %274, %272
  store i64 %275, ptr %273, align 8, !tbaa !515
  %276 = load ptr, ptr %238, align 8, !tbaa !369
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %276, i64 0, i32 13
  %278 = load i32, ptr %277, align 8, !tbaa !297
  %279 = and i32 %278, 1024
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %303, label %281, !prof !709

281:                                              ; preds = %269
  %282 = load i64, ptr %271, align 8, !tbaa !515
  %283 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %276) #19
  %284 = getelementptr inbounds %struct.edge_def, ptr %283, i64 0, i32 9
  %285 = load i64, ptr %284, align 8, !tbaa !515
  %286 = add nsw i64 %285, %282
  store i64 %286, ptr %284, align 8, !tbaa !515
  %287 = load i64, ptr %271, align 8, !tbaa !515
  %288 = load ptr, ptr %238, align 8, !tbaa !369
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 8
  %290 = load i64, ptr %289, align 8, !tbaa !526
  %291 = add nsw i64 %290, %287
  store i64 %291, ptr %289, align 8, !tbaa !526
  %292 = load ptr, ptr %237, align 8, !tbaa !449
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 11
  %294 = load i32, ptr %293, align 8, !tbaa !522
  %295 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %296 = load i32, ptr %295, align 4, !tbaa !516
  %297 = mul nsw i32 %296, %294
  %298 = add nsw i32 %297, 5000
  %299 = sdiv i32 %298, 10000
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 11
  %301 = load i32, ptr %300, align 8, !tbaa !522
  %302 = add nsw i32 %299, %301
  store i32 %302, ptr %300, align 8, !tbaa !522
  br label %303

303:                                              ; preds = %281, %269
  %304 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !369
  %306 = getelementptr inbounds %struct.basic_block_def, ptr %305, i64 0, i32 13
  %307 = load i32, ptr %306, align 8, !tbaa !297
  %308 = and i32 %307, 1024
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %345, label %310, !prof !713

310:                                              ; preds = %303
  %311 = load i64, ptr %271, align 8, !tbaa !515
  %312 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %305) #19
  %313 = getelementptr inbounds %struct.edge_def, ptr %312, i64 0, i32 9
  %314 = load i64, ptr %313, align 8, !tbaa !515
  %315 = sub nsw i64 %314, %311
  store i64 %315, ptr %313, align 8, !tbaa !515
  %316 = load ptr, ptr %304, align 8, !tbaa !369
  %317 = call fastcc ptr @single_succ_edge(ptr noundef %316) #19
  %318 = getelementptr inbounds %struct.edge_def, ptr %317, i64 0, i32 9
  %319 = load i64, ptr %318, align 8, !tbaa !515
  %320 = icmp slt i64 %319, 0
  br i1 %320, label %321, label %325, !prof !714

321:                                              ; preds = %310
  %322 = load ptr, ptr %304, align 8, !tbaa !369
  %323 = call fastcc ptr @single_succ_edge(ptr noundef %322) #19
  %324 = getelementptr inbounds %struct.edge_def, ptr %323, i64 0, i32 9
  store i64 0, ptr %324, align 8, !tbaa !515
  br label %325

325:                                              ; preds = %321, %310
  %326 = load i64, ptr %271, align 8, !tbaa !515
  %327 = load ptr, ptr %304, align 8, !tbaa !369
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 8
  %329 = load i64, ptr %328, align 8, !tbaa !526
  %330 = sub nsw i64 %329, %326
  store i64 %330, ptr %328, align 8, !tbaa !526
  %331 = load ptr, ptr %237, align 8, !tbaa !449
  %332 = getelementptr inbounds %struct.basic_block_def, ptr %331, i64 0, i32 11
  %333 = load i32, ptr %332, align 8, !tbaa !522
  %334 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %335 = load i32, ptr %334, align 4, !tbaa !516
  %336 = mul nsw i32 %335, %333
  %337 = add nsw i32 %336, 5000
  %338 = sdiv i32 %337, -10000
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 11
  %340 = load i32, ptr %339, align 8, !tbaa !522
  %341 = add i32 %338, %340
  %342 = call i32 @llvm.smax.i32(i32 %341, i32 0)
  store i32 %342, ptr %339, align 8
  %343 = icmp slt i64 %330, 0
  br i1 %343, label %344, label %345, !prof !714

344:                                              ; preds = %325
  store i64 0, ptr %328, align 8, !tbaa !526
  br label %345

345:                                              ; preds = %325, %344, %303
  %346 = load i32, ptr %234, align 8, !tbaa !522
  %347 = icmp eq i32 %346, 0
  %348 = load i32, ptr %235, align 8, !tbaa !522
  %349 = icmp eq i32 %348, 0
  %350 = select i1 %347, i1 %349, i1 false
  %351 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %352 = load i32, ptr %351, align 4, !tbaa !516
  br i1 %350, label %353, label %358, !prof !715

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 8
  %355 = load i32, ptr %354, align 4, !tbaa !516
  %356 = add nsw i32 %355, %352
  %357 = sdiv i32 %356, 2
  br label %366

358:                                              ; preds = %345
  %359 = mul nsw i32 %352, %346
  %360 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 8
  %361 = load i32, ptr %360, align 4, !tbaa !516
  %362 = mul nsw i32 %348, %361
  %363 = add nsw i32 %362, %359
  %364 = add nsw i32 %348, %346
  %365 = sdiv i32 %363, %364
  br label %366

366:                                              ; preds = %358, %353
  %367 = phi i32 [ %365, %358 ], [ %357, %353 ]
  store i32 %367, ptr %351, align 4, !tbaa !516
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call fastcc void @ei_next(ptr noundef nonnull %7) #19
  %368 = load i32, ptr %7, align 8
  %369 = load ptr, ptr %228, align 8
  %370 = call fastcc zeroext i8 @ei_cond(i32 %368, ptr %369, ptr noundef nonnull %6) #19, !range !330
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %236, !prof !716, !llvm.loop !717

372:                                              ; preds = %366, %225
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 8
  %374 = load i64, ptr %373, align 8, !tbaa !526
  %375 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 8
  %376 = load i64, ptr %375, align 8, !tbaa !526
  %377 = add nsw i64 %376, %374
  store i64 %377, ptr %375, align 8, !tbaa !526
  %378 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 11
  %379 = load i32, ptr %378, align 8, !tbaa !522
  %380 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 11
  %381 = load i32, ptr %380, align 8, !tbaa !522
  %382 = add nsw i32 %381, %379
  %383 = icmp sgt i32 %382, 10000
  br i1 %383, label %384, label %385, !prof !718

384:                                              ; preds = %372
  br label %385

385:                                              ; preds = %384, %372
  %386 = phi i32 [ 10000, %384 ], [ %382, %372 ]
  store i32 %386, ptr %380, align 8, !tbaa !522
  call void @update_br_prob_note(ptr noundef nonnull %216) #17
  %387 = load ptr, ptr %4, align 8, !tbaa !315
  %388 = load i32, ptr %387, align 8
  %389 = and i32 %388, 65535
  %390 = icmp eq i32 %389, 12
  br i1 %390, label %391, label %394, !prof !719

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.rtx_def, ptr %387, i64 0, i32 1, i32 0, i32 0, i64 2
  %393 = load ptr, ptr %392, align 8, !tbaa !315
  store ptr %393, ptr %4, align 8, !tbaa !287
  br label %394

394:                                              ; preds = %391, %385
  %395 = phi ptr [ %387, %385 ], [ %393, %391 ]
  br label %396

396:                                              ; preds = %394, %400
  %397 = phi ptr [ %402, %400 ], [ %395, %394 ]
  %398 = load i32, ptr %397, align 8
  %399 = trunc i32 %398 to i16
  switch i16 %399, label %410 [
    i16 7, label %400
    i16 13, label %403
  ], !prof !720

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.rtx_def, ptr %397, i64 0, i32 1, i32 0, i32 0, i64 2
  %402 = load ptr, ptr %401, align 8, !tbaa !315
  br label %396, !llvm.loop !721

403:                                              ; preds = %396
  store ptr %397, ptr %4, align 8, !tbaa !287
  %404 = getelementptr inbounds %struct.rtx_def, ptr %397, i64 1
  %405 = load i32, ptr %404, align 8, !tbaa !315
  %406 = icmp eq i32 %405, 10
  br i1 %406, label %407, label %411, !prof !722

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.rtx_def, ptr %397, i64 0, i32 1, i32 0, i32 0, i64 2
  %409 = load ptr, ptr %408, align 8, !tbaa !315
  store ptr %409, ptr %4, align 8, !tbaa !287
  br label %411

410:                                              ; preds = %396
  store ptr %397, ptr %4, align 8, !tbaa !287
  br label %411

411:                                              ; preds = %410, %407, %403
  %412 = phi ptr [ %397, %410 ], [ %409, %407 ], [ %397, %403 ]
  %413 = load i32, ptr %412, align 8
  %414 = and i32 %413, 65535
  %415 = icmp eq i32 %414, 7
  br i1 %415, label %416, label %423, !prof !708

416:                                              ; preds = %411, %416
  %417 = phi ptr [ %419, %416 ], [ %412, %411 ]
  %418 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1, i32 0, i32 0, i64 2
  %419 = load ptr, ptr %418, align 8, !tbaa !315
  %420 = load i32, ptr %419, align 8
  %421 = and i32 %420, 65535
  %422 = icmp eq i32 %421, 7
  br i1 %422, label %416, label %423, !prof !644, !llvm.loop !723

423:                                              ; preds = %416, %411
  %424 = phi ptr [ %412, %411 ], [ %419, %416 ]
  store ptr %424, ptr %4, align 8, !tbaa !287
  %425 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1, i32 0, i32 0, i64 1
  %426 = load ptr, ptr %425, align 8, !tbaa !315
  %427 = call ptr @split_block(ptr noundef nonnull %35, ptr noundef %426) #17
  %428 = load ptr, ptr %427, align 8, !tbaa !449
  %429 = call fastcc ptr @single_succ(ptr noundef %428) #19
  %430 = call fastcc ptr @single_succ_edge(ptr noundef %428) #19
  %431 = call ptr @redirect_edge_and_branch_force(ptr noundef %430, ptr noundef %216) #17
  call void @delete_basic_block(ptr noundef %429) #17
  call fastcc void @update_forwarder_flag(ptr noundef %428) #19
  %432 = icmp eq ptr %216, %48
  br i1 %432, label %434, label %433, !prof !703

433:                                              ; preds = %423
  call fastcc void @update_forwarder_flag(ptr noundef nonnull %48) #19
  br label %434

434:                                              ; preds = %423, %433, %112, %102, %93, %85, %89, %79, %66, %47, %20
  %435 = phi i8 [ 0, %20 ], [ 0, %47 ], [ 0, %66 ], [ 0, %79 ], [ 0, %89 ], [ 0, %85 ], [ 0, %93 ], [ 0, %102 ], [ 0, %112 ], [ 1, %433 ], [ 1, %423 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %435
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @outgoing_edges_match(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !724 !PGOFuncName !725 {
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
  %13 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #19, !range !330
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %53, label %15, !prof !726

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #19
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !375
  %19 = and i32 %18, 30
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %53, !prof !727

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !315
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !316
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %32, !prof !728

29:                                               ; preds = %21
  %30 = tail call i32 @simplejump_p(ptr noundef nonnull %25) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32, !prof !729

32:                                               ; preds = %29, %21
  %33 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %2) #19, !range !330
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %579, label %35, !prof !730

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @single_succ_edge(ptr noundef %2) #19
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !375
  %39 = and i32 %38, 30
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %579, !prof !731

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !315
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !316
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %579, !prof !732

49:                                               ; preds = %41
  %50 = tail call i32 @simplejump_p(ptr noundef nonnull %45) #17
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i8
  br label %579

53:                                               ; preds = %29, %15, %3
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !366
  %56 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %55) #19
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %287, !prof !733

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !315
  %61 = getelementptr inbounds %struct.rtl_bb_info, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !316
  %63 = tail call i32 @any_condjump_p(ptr noundef %62) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %287, label %65, !prof !734

65:                                               ; preds = %58
  %66 = load ptr, ptr %59, align 8, !tbaa !315
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !316
  %69 = tail call i32 @onlyjump_p(ptr noundef %68) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %287, label %71, !prof !735

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !366
  %74 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %73) #19
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %579, !prof !736

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !315
  %79 = getelementptr inbounds %struct.rtl_bb_info, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !316
  %81 = tail call i32 @any_condjump_p(ptr noundef %80) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %579, label %83, !prof !737

83:                                               ; preds = %76
  %84 = load ptr, ptr %77, align 8, !tbaa !315
  %85 = getelementptr inbounds %struct.rtl_bb_info, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !316
  %87 = tail call i32 @onlyjump_p(ptr noundef %86) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %579, label %89, !prof !738

89:                                               ; preds = %83
  %90 = load ptr, ptr %54, align 8, !tbaa !366
  %91 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 0) #19
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !375
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96, !prof !739

96:                                               ; preds = %89
  %97 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 1) #19
  br label %98

98:                                               ; preds = %89, %96
  %99 = phi ptr [ %97, %96 ], [ %91, %89 ]
  %100 = load ptr, ptr %72, align 8, !tbaa !366
  %101 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 0) #19
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !375
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106, !prof !740

106:                                              ; preds = %98
  %107 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 1) #19
  br label %108

108:                                              ; preds = %98, %106
  %109 = phi ptr [ %107, %106 ], [ %101, %98 ]
  br i1 %95, label %110, label %112, !prof !739

110:                                              ; preds = %108
  %111 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 1) #19
  br label %112

112:                                              ; preds = %108, %110
  %113 = phi ptr [ %111, %110 ], [ %91, %108 ]
  br i1 %105, label %114, label %116, !prof !740

114:                                              ; preds = %112
  %115 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 1) #19
  br label %116

116:                                              ; preds = %112, %114
  %117 = phi ptr [ %115, %114 ], [ %101, %112 ]
  %118 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !369
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 13
  %121 = load i32, ptr %120, align 8, !tbaa !297
  %122 = and i32 %121, 1024
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124, !prof !741

124:                                              ; preds = %116
  %125 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %119) #19
  br label %126

126:                                              ; preds = %124, %116
  %127 = phi ptr [ %125, %124 ], [ %113, %116 ]
  %128 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !369
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 13
  %131 = load i32, ptr %130, align 8, !tbaa !297
  %132 = and i32 %131, 1024
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134, !prof !742

134:                                              ; preds = %126
  %135 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %129) #19
  br label %136

136:                                              ; preds = %134, %126
  %137 = phi ptr [ %135, %134 ], [ %117, %126 ]
  %138 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !369
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 13
  %141 = load i32, ptr %140, align 8, !tbaa !297
  %142 = and i32 %141, 1024
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %579, !prof !743

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !369
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 13
  %148 = load i32, ptr %147, align 8, !tbaa !297
  %149 = and i32 %148, 1024
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %579, !prof !744

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !369
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 13
  %155 = load i32, ptr %154, align 8, !tbaa !297
  %156 = and i32 %155, 1024
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %579, !prof !745

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !369
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 13
  %162 = load i32, ptr %161, align 8, !tbaa !297
  %163 = and i32 %162, 1024
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %579, !prof !746

165:                                              ; preds = %158
  %166 = icmp eq ptr %139, %146
  %167 = icmp eq ptr %153, %160
  %168 = and i1 %166, %167
  br i1 %168, label %173, label %169, !prof !747

169:                                              ; preds = %165
  %170 = icmp eq ptr %139, %160
  %171 = icmp eq ptr %153, %146
  %172 = and i1 %171, %170
  br i1 %172, label %173, label %579, !prof !748

173:                                              ; preds = %169, %165
  %174 = phi i8 [ 1, %165 ], [ 0, %169 ]
  %175 = phi i8 [ 0, %165 ], [ 1, %169 ]
  %176 = load ptr, ptr %59, align 8, !tbaa !315
  %177 = getelementptr inbounds %struct.rtl_bb_info, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !316
  %179 = tail call ptr @pc_set(ptr noundef %178) #17
  %180 = load ptr, ptr %77, align 8, !tbaa !315
  %181 = getelementptr inbounds %struct.rtl_bb_info, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !316
  %183 = tail call ptr @pc_set(ptr noundef %182) #17
  %184 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !315
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !315
  %188 = load ptr, ptr @global_rtl, align 16, !tbaa !287
  %189 = icmp eq ptr %187, %188
  %190 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !315
  %192 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !315
  %194 = icmp ne ptr %193, %188
  %195 = xor i1 %189, %194
  br i1 %195, label %197, label %196, !prof !749

196:                                              ; preds = %173
  br label %197

197:                                              ; preds = %196, %173
  %198 = phi i8 [ %174, %196 ], [ %175, %173 ]
  %199 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !315
  %201 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !315
  %203 = load i32, ptr %200, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i8 %198, 0
  br i1 %205, label %211, label %206, !prof !750

206:                                              ; preds = %197
  %207 = load ptr, ptr %77, align 8, !tbaa !315
  %208 = getelementptr inbounds %struct.rtl_bb_info, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !316
  %210 = tail call i32 @reversed_comparison_code(ptr noundef %202, ptr noundef %209) #17
  br label %214

211:                                              ; preds = %197
  %212 = load i32, ptr %202, align 8
  %213 = and i32 %212, 65535
  br label %214

214:                                              ; preds = %211, %206
  %215 = phi i32 [ %210, %206 ], [ %213, %211 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %579, label %217, !prof !751

217:                                              ; preds = %214
  %218 = icmp eq i32 %204, %215
  br i1 %218, label %219, label %233, !prof !752

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !315
  %222 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !315
  %224 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %221, ptr noundef %223) #17
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %233, label %226, !prof !753

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !315
  %229 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !315
  %231 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %228, ptr noundef %230) #17
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %250, !prof !754

233:                                              ; preds = %226, %219, %217
  %234 = tail call i32 @swap_condition(i32 noundef %215) #17
  %235 = icmp eq i32 %204, %234
  br i1 %235, label %236, label %579, !prof !755

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !315
  %239 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !315
  %241 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %238, ptr noundef %240) #17
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %579, label %243, !prof !756

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !315
  %246 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %247 = load ptr, ptr %246, align 8, !tbaa !315
  %248 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %245, ptr noundef %247) #17
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %579, label %250, !prof !510

250:                                              ; preds = %226, %243
  %251 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %1) #17
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %278, label %253, !prof !757

253:                                              ; preds = %250
  %254 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %2) #17
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %278, label %256, !prof !758

256:                                              ; preds = %253
  %257 = load ptr, ptr %152, align 8, !tbaa !369
  %258 = load ptr, ptr %159, align 8, !tbaa !369
  %259 = icmp eq ptr %257, %258
  %260 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 8
  %261 = load i32, ptr %260, align 4, !tbaa !516
  %262 = sub nsw i32 10000, %261
  %263 = select i1 %259, i32 %261, i32 %262, !prof !759
  %264 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 8
  %265 = load i32, ptr %264, align 4, !tbaa !516
  %266 = sub nsw i32 %265, %263
  %267 = tail call i32 @llvm.abs.i32(i32 %266, i1 true)
  %268 = icmp ult i32 %267, 5001
  br i1 %268, label %278, label %269, !prof !760

269:                                              ; preds = %256
  %270 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %271 = icmp eq ptr %270, null
  br i1 %271, label %579, label %272, !prof !761

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %274 = load i32, ptr %273, align 8, !tbaa !386
  %275 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %276 = load i32, ptr %275, align 8, !tbaa !386
  %277 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %270, ptr noundef nonnull @.str.16, i32 noundef %274, i32 noundef %276, i32 noundef %265, i32 noundef %263) #19
  br label %579

278:                                              ; preds = %256, %253, %250
  %279 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %280 = icmp eq ptr %279, null
  br i1 %280, label %579, label %281, !prof !762

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %283 = load i32, ptr %282, align 8, !tbaa !386
  %284 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %285 = load i32, ptr %284, align 8, !tbaa !386
  %286 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %279, ptr noundef nonnull @.str.17, i32 noundef %283, i32 noundef %285) #19
  br label %579

287:                                              ; preds = %65, %58, %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %288 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %289 = load ptr, ptr %288, align 8, !tbaa !315
  %290 = getelementptr inbounds %struct.rtl_bb_info, ptr %289, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !316
  %292 = call zeroext i8 @tablejump_p(ptr noundef %291, ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %417, label %294, !prof !763

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %296 = load ptr, ptr %295, align 8, !tbaa !315
  %297 = getelementptr inbounds %struct.rtl_bb_info, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !316
  %299 = call zeroext i8 @tablejump_p(ptr noundef %298, ptr noundef nonnull %7, ptr noundef nonnull %9) #17
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %417, label %301, !prof !764

301:                                              ; preds = %294
  %302 = load ptr, ptr %8, align 8, !tbaa !287
  %303 = getelementptr inbounds %struct.rtx_def, ptr %302, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !315
  %305 = load i32, ptr %304, align 8
  %306 = load ptr, ptr %9, align 8, !tbaa !287
  %307 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !315
  %309 = load i32, ptr %308, align 8
  %310 = xor i32 %309, %305
  %311 = and i32 %310, 65535
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %417, !prof !765

313:                                              ; preds = %301
  %314 = load ptr, ptr %6, align 8, !tbaa !287
  %315 = load ptr, ptr %7, align 8, !tbaa !287
  %316 = icmp eq ptr %314, %315
  br i1 %316, label %415, label %317, !prof !766

317:                                              ; preds = %313
  %318 = load ptr, ptr %288, align 8, !tbaa !315
  %319 = getelementptr inbounds %struct.rtl_bb_info, ptr %318, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !316
  %321 = call i32 @rtx_referenced_p(ptr noundef %315, ptr noundef %320) #17
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %415, !prof !765

323:                                              ; preds = %317
  %324 = load ptr, ptr %8, align 8, !tbaa !287
  %325 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 1
  %326 = load ptr, ptr %325, align 8, !tbaa !315
  %327 = load ptr, ptr %9, align 8, !tbaa !287
  %328 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !315
  %330 = load i32, ptr %326, align 8
  %331 = and i32 %330, 65535
  %332 = icmp eq i32 %331, 20
  br i1 %332, label %333, label %338, !prof !765

333:                                              ; preds = %323
  %334 = call i32 @rtx_equal_p(ptr noundef nonnull %326, ptr noundef %329) #17
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %384, !prof !765

336:                                              ; preds = %333
  %337 = load i32, ptr %326, align 8
  br label %338

338:                                              ; preds = %336, %323
  %339 = phi i32 [ %337, %336 ], [ %330, %323 ]
  %340 = and i32 %339, 65535
  %341 = icmp eq i32 %340, 21
  br i1 %341, label %342, label %415, !prof !766

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %344 = load ptr, ptr %343, align 8, !tbaa !315
  %345 = load i32, ptr %344, align 8, !tbaa !624
  %346 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 0, i32 1, i32 0, i32 0, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !315
  %348 = load i32, ptr %347, align 8, !tbaa !624
  %349 = icmp eq i32 %345, %348
  br i1 %349, label %350, label %415

350:                                              ; preds = %342
  %351 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 2
  %352 = load ptr, ptr %351, align 8, !tbaa !315
  %353 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 0, i32 1, i32 0, i32 0, i64 2
  %354 = load ptr, ptr %353, align 8, !tbaa !315
  %355 = call i32 @rtx_equal_p(ptr noundef %352, ptr noundef %354) #17
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %415, label %357

357:                                              ; preds = %350
  %358 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !315
  %360 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 0, i32 1, i32 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !315
  %362 = call i32 @rtx_equal_p(ptr noundef %359, ptr noundef %361) #17
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %415, label %364

364:                                              ; preds = %357
  %365 = load ptr, ptr %343, align 8, !tbaa !315
  %366 = load i32, ptr %365, align 8, !tbaa !624
  %367 = icmp sgt i32 %366, 0
  br i1 %367, label %368, label %384, !prof !767

368:                                              ; preds = %364
  %369 = zext nneg i32 %366 to i64
  br label %370

370:                                              ; preds = %368, %370
  %371 = phi i64 [ %369, %368 ], [ %372, %370 ]
  %372 = add nsw i64 %371, -1
  %373 = load ptr, ptr %343, align 8, !tbaa !315
  %374 = getelementptr inbounds %struct.rtvec_def, ptr %373, i64 0, i32 1, i64 %372
  %375 = load ptr, ptr %374, align 8, !tbaa !287
  %376 = load ptr, ptr %346, align 8, !tbaa !315
  %377 = getelementptr inbounds %struct.rtvec_def, ptr %376, i64 0, i32 1, i64 %372
  %378 = load ptr, ptr %377, align 8, !tbaa !287
  %379 = call i32 @rtx_equal_p(ptr noundef %375, ptr noundef %378) #17
  %380 = icmp ne i32 %379, 0
  %381 = icmp ugt i64 %371, 1
  %382 = select i1 %381, i1 %380, i1 false
  br i1 %382, label %370, label %383, !llvm.loop !768

383:                                              ; preds = %370
  br i1 %380, label %384, label %415, !prof !510

384:                                              ; preds = %364, %333, %383
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  %385 = load ptr, ptr %6, align 8, !tbaa !287
  store ptr %385, ptr %10, align 8, !tbaa !698
  %386 = load ptr, ptr %7, align 8, !tbaa !287
  %387 = getelementptr inbounds %struct.replace_label_data, ptr %10, i64 0, i32 1
  store ptr %386, ptr %387, align 8, !tbaa !700
  %388 = getelementptr inbounds %struct.replace_label_data, ptr %10, i64 0, i32 2
  store i8 0, ptr %388, align 8, !tbaa !701
  %389 = load ptr, ptr %288, align 8, !tbaa !315
  %390 = getelementptr inbounds %struct.rtl_bb_info, ptr %389, i64 0, i32 1
  %391 = call i32 @for_each_rtx(ptr noundef nonnull %390, ptr noundef nonnull @replace_label, ptr noundef nonnull %10) #17
  %392 = load ptr, ptr %288, align 8, !tbaa !315
  %393 = getelementptr inbounds %struct.rtl_bb_info, ptr %392, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !316
  %395 = load ptr, ptr %295, align 8, !tbaa !315
  %396 = getelementptr inbounds %struct.rtl_bb_info, ptr %395, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !316
  %398 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %394, ptr noundef %397) #19, !range !330
  %399 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %400 = icmp ne ptr %399, null
  %401 = icmp ne i8 %398, 0
  %402 = and i1 %401, %400
  br i1 %402, label %403, label %409

403:                                              ; preds = %384
  %404 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %405 = load i32, ptr %404, align 8, !tbaa !386
  %406 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %407 = load i32, ptr %406, align 8, !tbaa !386
  %408 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %399, ptr noundef nonnull @.str.18, i32 noundef %405, i32 noundef %407) #19
  br label %409

409:                                              ; preds = %384, %403
  %410 = load ptr, ptr %7, align 8, !tbaa !287
  store ptr %410, ptr %10, align 8, !tbaa !698
  %411 = load ptr, ptr %6, align 8, !tbaa !287
  store ptr %411, ptr %387, align 8, !tbaa !700
  %412 = load ptr, ptr %288, align 8, !tbaa !315
  %413 = getelementptr inbounds %struct.rtl_bb_info, ptr %412, i64 0, i32 1
  %414 = call i32 @for_each_rtx(ptr noundef nonnull %413, ptr noundef nonnull @replace_label, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  br label %415

415:                                              ; preds = %409, %317, %313, %383, %357, %350, %342, %338
  %416 = phi i8 [ 0, %313 ], [ 0, %317 ], [ %398, %409 ], [ 0, %383 ], [ 0, %357 ], [ 0, %350 ], [ 0, %342 ], [ 0, %338 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %579

417:                                              ; preds = %301, %294, %287
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %418 = load ptr, ptr %288, align 8, !tbaa !315
  %419 = getelementptr inbounds %struct.rtl_bb_info, ptr %418, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !316
  %421 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %422 = load ptr, ptr %421, align 8, !tbaa !315
  %423 = getelementptr inbounds %struct.rtl_bb_info, ptr %422, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !316
  %425 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %420, ptr noundef %424) #19, !range !330
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %579, label %427, !prof !769

427:                                              ; preds = %417
  %428 = load ptr, ptr %54, align 8, !tbaa !366
  %429 = call fastcc i32 @VEC_edge_base_length(ptr noundef %428) #19
  %430 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !366
  %432 = call fastcc i32 @VEC_edge_base_length(ptr noundef %431) #19
  %433 = icmp eq i32 %429, %432
  br i1 %433, label %434, label %579, !prof !770

434:                                              ; preds = %427
  %435 = call fastcc ptr @ei_start_1(ptr noundef nonnull %54) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !462
  %436 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %435, ptr %436, align 8, !tbaa.struct !463
  %437 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %435, ptr noundef nonnull %4) #19, !range !330
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %505, label %439, !prof !771

439:                                              ; preds = %434, %472
  %440 = phi i32 [ %474, %472 ], [ 0, %434 ]
  %441 = phi i32 [ %455, %472 ], [ 0, %434 ]
  %442 = phi i32 [ %463, %472 ], [ 0, %434 ]
  %443 = phi ptr [ %468, %472 ], [ null, %434 ]
  %444 = phi ptr [ %473, %472 ], [ null, %434 ]
  %445 = load ptr, ptr %430, align 8, !tbaa !366
  %446 = call fastcc ptr @VEC_edge_base_index(ptr noundef %445, i32 noundef %440) #19
  %447 = load ptr, ptr %4, align 8, !tbaa !287
  %448 = getelementptr inbounds %struct.edge_def, ptr %447, i64 0, i32 7
  %449 = load i32, ptr %448, align 8, !tbaa !375
  %450 = and i32 %449, 8
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %454, label %452, !prof !770

452:                                              ; preds = %439
  %453 = add nsw i32 %441, 1
  br label %454

454:                                              ; preds = %452, %439
  %455 = phi i32 [ %453, %452 ], [ %441, %439 ]
  %456 = getelementptr inbounds %struct.edge_def, ptr %446, i64 0, i32 7
  %457 = load i32, ptr %456, align 8, !tbaa !375
  %458 = and i32 %457, 8
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %462, label %460, !prof !770

460:                                              ; preds = %454
  %461 = add nsw i32 %442, 1
  br label %462

462:                                              ; preds = %460, %454
  %463 = phi i32 [ %461, %460 ], [ %442, %454 ]
  %464 = and i32 %449, 1
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %467, label %466, !prof !770

466:                                              ; preds = %462
  br label %467

467:                                              ; preds = %466, %462
  %468 = phi ptr [ %447, %466 ], [ %443, %462 ]
  %469 = and i32 %457, 1
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %472, label %471, !prof !770

471:                                              ; preds = %467
  br label %472

472:                                              ; preds = %467, %471
  %473 = phi ptr [ %446, %471 ], [ %444, %467 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %474 = load i32, ptr %5, align 8
  %475 = load ptr, ptr %436, align 8
  %476 = call fastcc zeroext i8 @ei_cond(i32 %474, ptr %475, ptr noundef nonnull %4) #19, !range !330
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %478, label %439, !prof !772, !llvm.loop !773

478:                                              ; preds = %472
  %479 = icmp eq i32 %455, %463
  br i1 %479, label %480, label %579, !prof !774

480:                                              ; preds = %478
  %481 = icmp ne ptr %468, null
  %482 = icmp eq ptr %473, null
  %483 = xor i1 %482, %481
  br i1 %483, label %484, label %579, !prof !770

484:                                              ; preds = %480
  br i1 %481, label %485, label %505, !prof !775

485:                                              ; preds = %484
  %486 = getelementptr inbounds %struct.edge_def, ptr %468, i64 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !369
  %488 = call zeroext i8 @forwarder_block_p(ptr noundef %487) #17
  %489 = icmp eq i8 %488, 0
  %490 = load ptr, ptr %486, align 8, !tbaa !369
  br i1 %489, label %493, label %491

491:                                              ; preds = %485
  %492 = call fastcc ptr @single_succ(ptr noundef %490) #19
  br label %493

493:                                              ; preds = %485, %491
  %494 = phi ptr [ %492, %491 ], [ %490, %485 ]
  %495 = getelementptr inbounds %struct.edge_def, ptr %473, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !369
  %497 = call zeroext i8 @forwarder_block_p(ptr noundef %496) #17
  %498 = icmp eq i8 %497, 0
  %499 = load ptr, ptr %495, align 8, !tbaa !369
  br i1 %498, label %502, label %500

500:                                              ; preds = %493
  %501 = call fastcc ptr @single_succ(ptr noundef %499) #19
  br label %502

502:                                              ; preds = %493, %500
  %503 = phi ptr [ %501, %500 ], [ %499, %493 ]
  %504 = icmp eq ptr %494, %503
  br i1 %504, label %505, label %579

505:                                              ; preds = %434, %502, %484
  %506 = load ptr, ptr %288, align 8, !tbaa !315
  %507 = getelementptr inbounds %struct.rtl_bb_info, ptr %506, i64 0, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !316
  %509 = call ptr @find_reg_note(ptr noundef %508, i32 noundef 25, ptr noundef null) #17
  %510 = load ptr, ptr %421, align 8, !tbaa !315
  %511 = getelementptr inbounds %struct.rtl_bb_info, ptr %510, i64 0, i32 1
  %512 = load ptr, ptr %511, align 8, !tbaa !316
  %513 = call ptr @find_reg_note(ptr noundef %512, i32 noundef 25, ptr noundef null) #17
  %514 = icmp eq ptr %509, null
  %515 = icmp ne ptr %513, null
  %516 = select i1 %514, i1 %515, i1 false
  br i1 %516, label %579, label %517, !prof !776

517:                                              ; preds = %505
  br i1 %514, label %525, label %518, !prof !777

518:                                              ; preds = %517
  br i1 %515, label %519, label %579, !prof !778

519:                                              ; preds = %518
  %520 = getelementptr inbounds %struct.rtx_def, ptr %509, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !315
  %522 = getelementptr inbounds %struct.rtx_def, ptr %513, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !315
  %524 = icmp eq ptr %521, %523
  br i1 %524, label %525, label %579, !prof !778

525:                                              ; preds = %519, %517
  %526 = call fastcc ptr @ei_start_1(ptr noundef nonnull %430) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !462
  store ptr %526, ptr %436, align 8, !tbaa.struct !463
  %527 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %526, ptr noundef nonnull %4) #19, !range !330
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %579, label %529, !prof !771

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, ptr %12, i64 8
  br label %531

531:                                              ; preds = %529, %574
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  %532 = load ptr, ptr %4, align 8, !tbaa !287
  %533 = getelementptr inbounds %struct.edge_def, ptr %532, i64 0, i32 1
  %534 = load ptr, ptr %533, align 8, !tbaa !369
  %535 = getelementptr inbounds %struct.basic_block_def, ptr %534, i64 0, i32 13
  %536 = load i32, ptr %535, align 8, !tbaa !297
  %537 = and i32 %536, 1024
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %545, label %539, !prof !770

539:                                              ; preds = %531
  %540 = getelementptr inbounds %struct.basic_block_def, ptr %534, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !366
  %542 = call fastcc ptr @VEC_edge_base_index(ptr noundef %541, i32 noundef 0) #19
  %543 = getelementptr inbounds %struct.edge_def, ptr %542, i64 0, i32 1
  %544 = load ptr, ptr %543, align 8, !tbaa !369
  br label %545

545:                                              ; preds = %539, %531
  %546 = phi ptr [ %544, %539 ], [ %534, %531 ]
  store i32 0, ptr %12, align 8, !tbaa.struct !462
  store ptr %435, ptr %530, align 8, !tbaa.struct !463
  %547 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %435, ptr noundef nonnull %11) #19, !range !330
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %571, label %549, !prof !436

549:                                              ; preds = %545, %566
  %550 = load ptr, ptr %11, align 8, !tbaa !287
  %551 = getelementptr inbounds %struct.edge_def, ptr %550, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !369
  %553 = getelementptr inbounds %struct.basic_block_def, ptr %552, i64 0, i32 13
  %554 = load i32, ptr %553, align 8, !tbaa !297
  %555 = and i32 %554, 1024
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %563, label %557, !prof !770

557:                                              ; preds = %549
  %558 = getelementptr inbounds %struct.basic_block_def, ptr %552, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !366
  %560 = call fastcc ptr @VEC_edge_base_index(ptr noundef %559, i32 noundef 0) #19
  %561 = getelementptr inbounds %struct.edge_def, ptr %560, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !369
  br label %563

563:                                              ; preds = %557, %549
  %564 = phi ptr [ %562, %557 ], [ %552, %549 ]
  %565 = icmp eq ptr %546, %564
  br i1 %565, label %571, label %566

566:                                              ; preds = %563
  call fastcc void @ei_next(ptr noundef nonnull %12) #19
  %567 = load i32, ptr %12, align 8
  %568 = load ptr, ptr %530, align 8
  %569 = call fastcc zeroext i8 @ei_cond(i32 %567, ptr %568, ptr noundef nonnull %11) #19, !range !330
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %571, label %549, !prof !779, !llvm.loop !780

571:                                              ; preds = %566, %563, %545
  %572 = load ptr, ptr %11, align 8, !tbaa !287
  %573 = icmp eq ptr %572, null
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br i1 %573, label %579, label %574

574:                                              ; preds = %571
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %575 = load i32, ptr %5, align 8
  %576 = load ptr, ptr %436, align 8
  %577 = call fastcc zeroext i8 @ei_cond(i32 %575, ptr %576, ptr noundef nonnull %4) #19, !range !330
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %579, label %531, !prof !772, !llvm.loop !781

579:                                              ; preds = %571, %574, %243, %525, %236, %233, %518, %519, %505, %415, %272, %269, %478, %480, %427, %417, %83, %76, %71, %158, %151, %144, %136, %169, %214, %281, %278, %32, %35, %49, %41, %502
  %580 = phi i8 [ 0, %502 ], [ 0, %35 ], [ 0, %32 ], [ 1, %41 ], [ %52, %49 ], [ 0, %83 ], [ 0, %76 ], [ 0, %71 ], [ 0, %158 ], [ 0, %151 ], [ 0, %144 ], [ 0, %136 ], [ 0, %169 ], [ 0, %214 ], [ 1, %281 ], [ 1, %278 ], [ 0, %417 ], [ 0, %427 ], [ 0, %480 ], [ 0, %478 ], [ 0, %269 ], [ 0, %272 ], [ %416, %415 ], [ 0, %505 ], [ 0, %519 ], [ 0, %518 ], [ 0, %233 ], [ 0, %236 ], [ 1, %525 ], [ 0, %243 ], [ 0, %571 ], [ 1, %574 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %580
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @flow_find_cross_jump(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !782 !PGOFuncName !783 {
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !315
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !316
  %10 = tail call i32 @onlyjump_p(ptr noundef %9) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !784

12:                                               ; preds = %5
  %13 = tail call i32 @returnjump_p(ptr noundef %9) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15, !prof !785

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !315
  %18 = tail call i32 @side_effects_p(ptr noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %5
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !315
  br label %23

23:                                               ; preds = %20, %15, %12
  %24 = phi ptr [ %9, %20 ], [ null, %15 ], [ null, %12 ]
  %25 = phi ptr [ %22, %20 ], [ %9, %15 ], [ %9, %12 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !315
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !316
  %30 = tail call i32 @onlyjump_p(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40, !prof !786

32:                                               ; preds = %23
  %33 = tail call i32 @returnjump_p(ptr noundef %29) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %57, label %35, !prof !787

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !315
  %38 = tail call i32 @side_effects_p(ptr noundef %37) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35, %23
  %41 = tail call i32 @simplejump_p(ptr noundef %29) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49, !prof !788

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
  %56 = load ptr, ptr %55, align 8, !tbaa !315
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
  br i1 %66, label %67, label %80, !prof !789

67:                                               ; preds = %57
  %68 = load ptr, ptr %6, align 8, !tbaa !315
  %69 = load ptr, ptr %68, align 8, !tbaa !378
  br label %70

70:                                               ; preds = %67, %73
  %71 = phi ptr [ %62, %67 ], [ %75, %73 ]
  %72 = icmp eq ptr %71, %69
  br i1 %72, label %80, label %73, !prof !790

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !315
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = add nsw i32 %77, -11
  %79 = icmp ult i32 %78, -3
  br i1 %79, label %70, label %80, !prof !791, !llvm.loop !792

80:                                               ; preds = %70, %73, %57
  %81 = phi ptr [ %62, %57 ], [ %75, %73 ], [ %69, %70 ]
  %82 = load i32, ptr %61, align 8
  %83 = and i32 %82, 65535
  %84 = add nsw i32 %83, -11
  %85 = icmp ult i32 %84, -3
  br i1 %85, label %86, label %99, !prof !793

86:                                               ; preds = %80
  %87 = load ptr, ptr %26, align 8, !tbaa !315
  %88 = load ptr, ptr %87, align 8, !tbaa !378
  br label %89

89:                                               ; preds = %86, %92
  %90 = phi ptr [ %61, %86 ], [ %94, %92 ]
  %91 = icmp eq ptr %90, %88
  br i1 %91, label %99, label %92, !prof !794

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !315
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = add nsw i32 %96, -11
  %98 = icmp ult i32 %97, -3
  br i1 %98, label %89, label %99, !prof !795, !llvm.loop !796

99:                                               ; preds = %89, %92, %80
  %100 = phi ptr [ %61, %80 ], [ %94, %92 ], [ %88, %89 ]
  %101 = load ptr, ptr %6, align 8, !tbaa !315
  %102 = load ptr, ptr %101, align 8, !tbaa !378
  %103 = icmp eq ptr %81, %102
  br i1 %103, label %145, label %104, !prof !797

104:                                              ; preds = %99
  %105 = load ptr, ptr %26, align 8, !tbaa !315
  %106 = load ptr, ptr %105, align 8, !tbaa !378
  %107 = icmp eq ptr %100, %106
  br i1 %107, label %145, label %108, !prof !798

108:                                              ; preds = %104
  %109 = tail call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef nonnull %81, ptr noundef nonnull %100) #19, !range !330
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %145, label %111, !prof !799

111:                                              ; preds = %108
  tail call fastcc void @merge_memattrs(ptr noundef nonnull %81, ptr noundef nonnull %100) #19
  %112 = load i32, ptr %81, align 8
  %113 = and i32 %112, 65535
  %114 = add nsw i32 %113, -7
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %139, !prof !800

116:                                              ; preds = %111
  %117 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %81) #17
  %118 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %100) #17
  %119 = icmp eq ptr %117, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %123, label %122, !prof !801

122:                                              ; preds = %116
  tail call void @remove_note(ptr noundef nonnull %81, ptr noundef nonnull %117) #17
  br label %137

123:                                              ; preds = %116
  %124 = select i1 %119, i1 %120, i1 false
  br i1 %124, label %125, label %126, !prof !802

125:                                              ; preds = %123
  tail call void @remove_note(ptr noundef nonnull %100, ptr noundef nonnull %118) #17
  br label %137

126:                                              ; preds = %123
  %127 = icmp ne ptr %117, null
  %128 = select i1 %127, i1 %120, i1 false
  br i1 %128, label %129, label %137, !prof !803

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !315
  %132 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !315
  %134 = tail call i32 @rtx_equal_p(ptr noundef %131, ptr noundef %133) #17
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137, !prof !804

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
  %144 = load ptr, ptr %143, align 8, !tbaa !315
  br label %49

145:                                              ; preds = %108, %99, %104
  %146 = icmp eq i32 %60, 0
  br i1 %146, label %176, label %147, !prof !805

147:                                              ; preds = %145
  %148 = load ptr, ptr %6, align 8, !tbaa !315
  %149 = load ptr, ptr %148, align 8, !tbaa !378
  br label %150

150:                                              ; preds = %147, %153
  %151 = phi ptr [ %155, %153 ], [ %58, %147 ]
  %152 = icmp eq ptr %151, %149
  br i1 %152, label %160, label %153, !prof !806

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !315
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = add nsw i32 %157, -8
  %159 = icmp ult i32 %158, 3
  br i1 %159, label %160, label %150, !prof !807, !llvm.loop !808

160:                                              ; preds = %150, %153
  %161 = phi ptr [ %151, %153 ], [ %149, %150 ]
  %162 = load ptr, ptr %26, align 8, !tbaa !315
  %163 = load ptr, ptr %162, align 8, !tbaa !378
  br label %164

164:                                              ; preds = %167, %160
  %165 = phi ptr [ %59, %160 ], [ %169, %167 ]
  %166 = icmp eq ptr %165, %163
  br i1 %166, label %174, label %167, !prof !809

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1, i32 0, i32 0, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !315
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 65535
  %172 = add nsw i32 %171, -8
  %173 = icmp ult i32 %172, 3
  br i1 %173, label %174, label %164, !prof !810, !llvm.loop !811

174:                                              ; preds = %164, %167
  %175 = phi ptr [ %165, %167 ], [ %163, %164 ]
  store ptr %161, ptr %3, align 8, !tbaa !287
  store ptr %175, ptr %4, align 8, !tbaa !287
  br label %176

176:                                              ; preds = %174, %145
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @block_has_preserve_label(ptr noundef %0) unnamed_addr #0 !prof !812 !PGOFuncName !813 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !814

3:                                                ; preds = %1
  %4 = tail call ptr @block_label(ptr noundef nonnull %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !815

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
define internal fastcc noundef zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !816 !PGOFuncName !817 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %123, !prof !818

9:                                                ; preds = %3
  %10 = icmp eq i32 %5, 13
  br i1 %10, label %11, label %19, !prof !819

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !315
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !315
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %123, label %19

19:                                               ; preds = %15, %11, %9
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !315
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !315
  %24 = load i32, ptr %21, align 8
  %25 = load i32, ptr %23, align 8
  %26 = xor i32 %25, %24
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %123, !prof !820

29:                                               ; preds = %19
  %30 = icmp eq i32 %5, 10
  br i1 %30, label %31, label %44, !prof !821

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !315
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !315
  %36 = tail call i32 @rtx_equal_p(ptr noundef %33, ptr noundef %35) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %123, label %38, !prof !822

38:                                               ; preds = %31
  %39 = load i32, ptr %1, align 8
  %40 = load i32, ptr %2, align 8
  %41 = xor i32 %40, %39
  %42 = and i32 %41, 16777216
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %123, !prof !823

44:                                               ; preds = %38, %29
  %45 = and i32 %0, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %113, label %47, !prof !824

47:                                               ; preds = %44
  %48 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %1) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %113, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !315
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
  %62 = load ptr, ptr %61, align 8, !tbaa !315
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
  %77 = load ptr, ptr %76, align 8, !tbaa !315
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %54, !llvm.loop !825

79:                                               ; preds = %74, %50
  %80 = phi i64 [ 0, %50 ], [ %75, %74 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !315
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
  %92 = load ptr, ptr %91, align 8, !tbaa !315
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
  %107 = load ptr, ptr %106, align 8, !tbaa !315
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %84, !llvm.loop !826

109:                                              ; preds = %104, %79
  %110 = phi i64 [ 0, %79 ], [ %105, %104 ]
  %111 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %80, i64 noundef %110) #19, !range !330
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109, %47, %44
  %114 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116, !prof !824

116:                                              ; preds = %113
  %117 = tail call i32 @rtx_renumbered_equal_p(ptr noundef nonnull %21, ptr noundef nonnull %23) #17
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %123, !prof !824

119:                                              ; preds = %113
  %120 = tail call i32 @rtx_equal_p(ptr noundef nonnull %21, ptr noundef nonnull %23) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123, !prof !827

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %116, %119, %31, %38, %19, %15, %3, %109, %122
  %124 = phi i8 [ 0, %122 ], [ 0, %109 ], [ 0, %3 ], [ 1, %15 ], [ 0, %19 ], [ 0, %38 ], [ 0, %31 ], [ 1, %119 ], [ 1, %116 ]
  ret i8 %124
}

; Function Attrs: optsize
declare i32 @stack_regs_mentioned(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_equal_p(i64 noundef %0, i64 noundef %1) unnamed_addr #10 !prof !306 !PGOFuncName !828 {
  %3 = icmp eq i64 %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_memattrs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !829 !PGOFuncName !830 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %267, label %4, !prof !831

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %267, label %8, !prof !832

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %267, !prof !833

14:                                               ; preds = %8
  %15 = xor i32 %11, %9
  %16 = and i32 %15, 16711680
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %267, !prof !834

18:                                               ; preds = %14
  %19 = icmp eq i32 %10, 43
  br i1 %19, label %20, label %221, !prof !835

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !315
  %23 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !315
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %221, label %26, !prof !836

26:                                               ; preds = %20
  %27 = icmp eq ptr %22, null
  br i1 %27, label %28, label %29, !prof !837

28:                                               ; preds = %26
  store ptr null, ptr %23, align 8, !tbaa !315
  br label %221

29:                                               ; preds = %26
  %30 = icmp eq ptr %24, null
  br i1 %30, label %31, label %32, !prof !838

31:                                               ; preds = %29
  store ptr null, ptr %21, align 8, !tbaa !315
  br label %221

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !839
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %24, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !839
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %41, label %38, !prof !841

38:                                               ; preds = %32
  tail call void @set_mem_alias_set(ptr noundef nonnull %0, i32 noundef 0) #17
  tail call void @set_mem_alias_set(ptr noundef nonnull %1, i32 noundef 0) #17
  %39 = load ptr, ptr %21, align 8, !tbaa !315
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41, !prof !842

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %39, %38 ], [ %22, %32 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !843
  br label %44

44:                                               ; preds = %38, %41
  %45 = phi ptr [ %43, %41 ], [ null, %38 ]
  %46 = load ptr, ptr %23, align 8, !tbaa !315
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !844

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !843
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi ptr [ %49, %48 ], [ null, %44 ]
  %52 = tail call i32 @mem_expr_equal_p(ptr noundef %45, ptr noundef %51) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55, !prof !845

54:                                               ; preds = %50
  tail call void @set_mem_expr(ptr noundef nonnull %0, ptr noundef null) #17
  tail call void @set_mem_expr(ptr noundef nonnull %1, ptr noundef null) #17
  br label %71

55:                                               ; preds = %50
  %56 = load ptr, ptr %21, align 8, !tbaa !315
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58, !prof !846

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !847
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi ptr [ %60, %58 ], [ null, %55 ]
  %63 = load ptr, ptr %23, align 8, !tbaa !315
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65, !prof !846

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mem_attrs, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !847
  br label %68

68:                                               ; preds = %61, %65
  %69 = phi ptr [ %67, %65 ], [ null, %61 ]
  %70 = icmp eq ptr %62, %69
  br i1 %70, label %72, label %71, !prof !848

71:                                               ; preds = %68, %54
  tail call void @set_mem_offset(ptr noundef nonnull %0, ptr noundef null) #17
  tail call void @set_mem_offset(ptr noundef nonnull %1, ptr noundef null) #17
  br label %72

72:                                               ; preds = %71, %68
  %73 = load ptr, ptr %21, align 8, !tbaa !315
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75, !prof !849

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !850
  %78 = icmp eq ptr %77, null
  br i1 %78, label %187, label %91, !prof !851

79:                                               ; preds = %72
  %80 = load i32, ptr %0, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %187, label %84, !prof !852

84:                                               ; preds = %79
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !315
  %88 = zext i8 %87 to i64
  %89 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %88) #17
  %90 = icmp eq ptr %89, null
  br i1 %90, label %187, label %91, !prof !853

91:                                               ; preds = %84, %75
  %92 = load ptr, ptr %23, align 8, !tbaa !315
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94, !prof !849

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.mem_attrs, ptr %92, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !850
  %97 = icmp eq ptr %96, null
  br i1 %97, label %187, label %110, !prof !851

98:                                               ; preds = %91
  %99 = load i32, ptr %1, align 8
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %187, label %103, !prof !852

103:                                              ; preds = %98
  %104 = zext nneg i32 %101 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !315
  %107 = zext i8 %106 to i64
  %108 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %107) #17
  %109 = icmp eq ptr %108, null
  br i1 %109, label %187, label %110, !prof !853

110:                                              ; preds = %103, %94
  %111 = load ptr, ptr %21, align 8, !tbaa !315
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113, !prof !854

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mem_attrs, ptr %111, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !850
  br label %126

116:                                              ; preds = %110
  %117 = load i32, ptr %0, align 8
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = icmp ne i32 %119, 1
  tail call void @llvm.assume(i1 %120)
  %121 = zext nneg i32 %119 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !315
  %124 = zext i8 %123 to i64
  %125 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %124) #17
  br label %126

126:                                              ; preds = %116, %113
  %127 = phi ptr [ %115, %113 ], [ %125, %116 ]
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !315
  %130 = load ptr, ptr %23, align 8, !tbaa !315
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132, !prof !855

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.mem_attrs, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !850
  br label %145

135:                                              ; preds = %126
  %136 = load i32, ptr %1, align 8
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  %139 = icmp ne i32 %138, 1
  tail call void @llvm.assume(i1 %139)
  %140 = zext nneg i32 %138 to i64
  %141 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !315
  %143 = zext i8 %142 to i64
  %144 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %143) #17
  br label %145

145:                                              ; preds = %135, %132
  %146 = phi ptr [ %134, %132 ], [ %144, %135 ]
  %147 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !315
  %149 = icmp sgt i64 %129, %148
  br i1 %149, label %150, label %166, !prof !853

150:                                              ; preds = %145
  %151 = load ptr, ptr %21, align 8, !tbaa !315
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153, !prof !856

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.mem_attrs, ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !850
  br label %182

156:                                              ; preds = %150
  %157 = load i32, ptr %0, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = icmp ne i32 %159, 1
  tail call void @llvm.assume(i1 %160)
  %161 = zext nneg i32 %159 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !315
  %164 = zext i8 %163 to i64
  %165 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %164) #17
  br label %182

166:                                              ; preds = %145
  %167 = load ptr, ptr %23, align 8, !tbaa !315
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169, !prof !855

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.mem_attrs, ptr %167, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !850
  br label %182

172:                                              ; preds = %166
  %173 = load i32, ptr %1, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = icmp ne i32 %175, 1
  tail call void @llvm.assume(i1 %176)
  %177 = zext nneg i32 %175 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !315
  %180 = zext i8 %179 to i64
  %181 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %180) #17
  br label %182

182:                                              ; preds = %169, %172, %153, %156
  %183 = phi ptr [ %155, %153 ], [ %165, %156 ], [ %171, %169 ], [ %181, %172 ]
  %184 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !315
  %186 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %185) #17
  br label %187

187:                                              ; preds = %94, %103, %98, %75, %84, %79, %182
  %188 = phi ptr [ %186, %182 ], [ null, %79 ], [ null, %84 ], [ null, %75 ], [ null, %98 ], [ null, %103 ], [ null, %94 ]
  tail call void @set_mem_size(ptr noundef nonnull %0, ptr noundef %188) #17
  tail call void @set_mem_size(ptr noundef nonnull %1, ptr noundef %188) #17
  %189 = load ptr, ptr %21, align 8, !tbaa !315
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191, !prof !854

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 4
  %193 = load i32, ptr %192, align 4, !tbaa !857
  %194 = load ptr, ptr %23, align 8, !tbaa !315
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %205, !prof !854

196:                                              ; preds = %187
  %197 = load ptr, ptr %23, align 8, !tbaa !315
  %198 = icmp eq ptr %197, null
  br i1 %198, label %212, label %201, !prof !854

199:                                              ; preds = %191
  %200 = icmp ult i32 %193, 8
  br i1 %200, label %209, label %212, !prof !858

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.mem_attrs, ptr %197, i64 0, i32 4
  %203 = load i32, ptr %202, align 4, !tbaa !857
  %204 = tail call i32 @llvm.umin.i32(i32 %203, i32 8)
  br label %212

205:                                              ; preds = %191
  %206 = getelementptr inbounds %struct.mem_attrs, ptr %194, i64 0, i32 4
  %207 = load i32, ptr %206, align 4, !tbaa !857
  %208 = icmp ult i32 %193, %207
  br i1 %208, label %209, label %212, !prof !844

209:                                              ; preds = %205, %199
  %210 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 4
  %211 = load i32, ptr %210, align 4, !tbaa !857
  br label %212

212:                                              ; preds = %201, %205, %196, %199, %209
  %213 = phi i32 [ %211, %209 ], [ 8, %199 ], [ 8, %196 ], [ %207, %205 ], [ %204, %201 ]
  tail call void @set_mem_align(ptr noundef nonnull %0, i32 noundef %213) #17
  %214 = load ptr, ptr %21, align 8, !tbaa !315
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216, !prof !854

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.mem_attrs, ptr %214, i64 0, i32 4
  %218 = load i32, ptr %217, align 4, !tbaa !857
  br label %219

219:                                              ; preds = %212, %216
  %220 = phi i32 [ %218, %216 ], [ 8, %212 ]
  tail call void @set_mem_align(ptr noundef nonnull %1, i32 noundef %220) #17
  br label %221

221:                                              ; preds = %28, %219, %31, %20, %18
  %222 = zext nneg i32 %10 to i64
  %223 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !287
  %225 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %222
  %226 = load i8, ptr %225, align 1, !tbaa !315
  %227 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %228 = icmp eq i8 %226, 0
  br i1 %228, label %267, label %229, !prof !859

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %231 = zext i8 %226 to i64
  br label %232

232:                                              ; preds = %229, %265
  %233 = phi i64 [ %231, %229 ], [ %234, %265 ]
  %234 = add nsw i64 %233, -1
  %235 = getelementptr inbounds i8, ptr %224, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !315
  switch i8 %236, label %265 [
    i8 69, label %237
    i8 101, label %260
  ], !prof !860

237:                                              ; preds = %232
  %238 = getelementptr inbounds [1 x %union.rtunion_def], ptr %227, i64 0, i64 %234
  %239 = load ptr, ptr %238, align 8, !tbaa !315
  %240 = load i32, ptr %239, align 8, !tbaa !624
  %241 = getelementptr inbounds [1 x %union.rtunion_def], ptr %230, i64 0, i64 %234
  %242 = load ptr, ptr %241, align 8, !tbaa !315
  %243 = load i32, ptr %242, align 8, !tbaa !624
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %267, !prof !861

245:                                              ; preds = %237
  %246 = icmp sgt i32 %240, 0
  br i1 %246, label %247, label %265, !prof !862

247:                                              ; preds = %245, %247
  %248 = phi i64 [ %255, %247 ], [ 0, %245 ]
  %249 = phi ptr [ %256, %247 ], [ %239, %245 ]
  %250 = getelementptr inbounds %struct.rtvec_def, ptr %249, i64 0, i32 1, i64 %248
  %251 = load ptr, ptr %250, align 8, !tbaa !287
  %252 = load ptr, ptr %241, align 8, !tbaa !315
  %253 = getelementptr inbounds %struct.rtvec_def, ptr %252, i64 0, i32 1, i64 %248
  %254 = load ptr, ptr %253, align 8, !tbaa !287
  tail call fastcc void @merge_memattrs(ptr noundef %251, ptr noundef %254) #19
  %255 = add nuw nsw i64 %248, 1
  %256 = load ptr, ptr %238, align 8, !tbaa !315
  %257 = load i32, ptr %256, align 8, !tbaa !624
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %255, %258
  br i1 %259, label %247, label %265, !prof !863, !llvm.loop !864

260:                                              ; preds = %232
  %261 = getelementptr inbounds [1 x %union.rtunion_def], ptr %227, i64 0, i64 %234
  %262 = load ptr, ptr %261, align 8, !tbaa !315
  %263 = getelementptr inbounds [1 x %union.rtunion_def], ptr %230, i64 0, i64 %234
  %264 = load ptr, ptr %263, align 8, !tbaa !315
  tail call fastcc void @merge_memattrs(ptr noundef %262, ptr noundef %264) #19
  br label %265

265:                                              ; preds = %247, %245, %232, %260
  %266 = icmp sgt i64 %233, 1
  br i1 %266, label %232, label %267, !prof !865, !llvm.loop !866

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
define internal noundef i32 @rest_of_handle_jump() #0 !prof !867 !PGOFuncName !868 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 39), align 1, !tbaa !869
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !878

3:                                                ; preds = %0
  tail call void @fixup_tail_calls() #17
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: optsize
declare void @fixup_tail_calls() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_jump2() #0 !prof !867 !PGOFuncName !879 {
  %1 = tail call ptr @get_insns() #17
  %2 = tail call i32 @max_reg_num() #17
  %3 = tail call i32 @delete_trivially_dead_insns(ptr noundef %1, i32 noundef %2) #17
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !287
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !880

6:                                                ; preds = %0
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !282
  tail call void @dump_flow_info(ptr noundef nonnull %4, i32 noundef %7) #17
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, ptr @optimize, align 4, !tbaa !282
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i32, ptr @flag_thread_jumps, align 4, !tbaa !282
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 8
  %15 = or disjoint i32 %14, %11
  %16 = tail call zeroext i8 @cleanup_cfg(i32 noundef %15) #19, !range !330
  ret i32 0
}

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!280}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!36 = !{ptr @delete_unreachable_blocks, ptr @find_unreachable_blocks, i64 178725}
!37 = !{ptr @delete_unreachable_blocks, ptr @current_ir_type, i64 1}
!38 = !{ptr @delete_unreachable_blocks, ptr @first_dom_son, i64 2}
!39 = !{ptr @delete_unreachable_blocks, ptr @delete_basic_block, i64 5626}
!40 = !{ptr @delete_unreachable_blocks, ptr @get_all_dominated_blocks, i64 1}
!41 = !{ptr @delete_unreachable_blocks, ptr @VEC_basic_block_base_length, i64 30}
!42 = !{ptr @delete_unreachable_blocks, ptr @VEC_basic_block_base_pop, i64 29}
!43 = !{ptr @delete_unreachable_blocks, ptr @fancy_abort, i64 15}
!44 = !{ptr @delete_unreachable_blocks, ptr @VEC_basic_block_heap_free, i64 1}
!45 = !{ptr @delete_unreachable_blocks, ptr @tidy_fallthru_edges, i64 4645}
!46 = !{ptr @delete_dead_jumptables, ptr @fprintf, i64 1}
!47 = !{ptr @delete_dead_jumptables, ptr @delete_insn, i64 2}
!48 = !{ptr @cleanup_cfg, ptr @current_ir_type, i64 91668}
!49 = !{ptr @cleanup_cfg, ptr @timevar_push_1, i64 1}
!50 = !{ptr @cleanup_cfg, ptr @delete_unreachable_blocks, i64 115208}
!51 = !{ptr @cleanup_cfg, ptr @get_insns, i64 4894}
!52 = !{ptr @cleanup_cfg, ptr @max_reg_num, i64 4894}
!53 = !{ptr @cleanup_cfg, ptr @delete_trivially_dead_insns, i64 4894}
!54 = !{ptr @cleanup_cfg, ptr @compact_blocks, i64 91668}
!55 = !{ptr @cleanup_cfg, ptr @add_noreturn_fake_exit_edges, i64 6653}
!56 = !{ptr @cleanup_cfg, ptr @dbg_cnt, i64 91668}
!57 = !{ptr @cleanup_cfg, ptr @try_optimize_cfg, i64 114604}
!58 = !{ptr @cleanup_cfg, ptr @run_fast_dce, i64 1831}
!59 = !{ptr @cleanup_cfg, ptr @remove_fake_exit_edges, i64 6653}
!60 = !{ptr @cleanup_cfg, ptr @delete_dead_jumptables, i64 19956}
!61 = !{ptr @cleanup_cfg, ptr @timevar_pop_1, i64 1}
!62 = !{ptr @try_optimize_cfg, ptr @clear_bb_flags, i64 15132}
!63 = !{ptr @try_optimize_cfg, ptr @update_forwarder_flag, i64 5562012}
!64 = !{ptr @try_optimize_cfg, ptr @fprintf, i64 3}
!65 = !{ptr @try_optimize_cfg, ptr @VEC_edge_base_length, i64 16086008}
!66 = !{ptr @try_optimize_cfg, ptr @trivially_empty_bb_p, i64 73289}
!67 = !{ptr @try_optimize_cfg, ptr @single_succ_edge, i64 3764385}
!68 = !{ptr @try_optimize_cfg, ptr @delete_basic_block, i64 79459}
!69 = !{ptr @try_optimize_cfg, ptr @single_pred_p, i64 13026043}
!70 = !{ptr @try_optimize_cfg, ptr @single_pred_edge, i64 11210038}
!71 = !{ptr @try_optimize_cfg, ptr @single_pred, i64 96711}
!72 = !{ptr @try_optimize_cfg, ptr @label_is_jump_target_p, i64 31994}
!73 = !{ptr @try_optimize_cfg, ptr @delete_insn_chain, i64 32358}
!74 = !{ptr @try_optimize_cfg, ptr @reorder_insns_nobb, i64 3050}
!75 = !{ptr @try_optimize_cfg, ptr @single_succ, i64 3636153}
!76 = !{ptr @try_optimize_cfg, ptr @redirect_edge_succ_nodup, i64 5691}
!77 = !{ptr @try_optimize_cfg, ptr @single_succ_p, i64 16000858}
!78 = !{ptr @try_optimize_cfg, ptr @can_merge_blocks_p, i64 23402}
!79 = !{ptr @try_optimize_cfg, ptr @merge_blocks, i64 23401}
!80 = !{ptr @try_optimize_cfg, ptr @simplejump_p, i64 1}
!81 = !{ptr @try_optimize_cfg, ptr @onlyjump_p, i64 2874308}
!82 = !{ptr @try_optimize_cfg, ptr @tablejump_p, i64 1}
!83 = !{ptr @try_optimize_cfg, ptr @merge_blocks_move, i64 1194}
!84 = !{ptr @try_optimize_cfg, ptr @try_simplify_condjump, i64 973949}
!85 = !{ptr @try_optimize_cfg, ptr @find_reg_note, i64 584238}
!86 = !{ptr @try_optimize_cfg, ptr @try_redirect_by_replacing_jump, i64 584237}
!87 = !{ptr @try_optimize_cfg, ptr @try_forward_edges, i64 8000429}
!88 = !{ptr @try_optimize_cfg, ptr @try_crossjump_bb, i64 1191745}
!89 = !{ptr @update_forwarder_flag, ptr @forwarder_block_p, i64 5580254}
!90 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 10299079}
!91 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!92 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 10299079}
!93 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 28261936}
!94 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 11761232}
!95 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!96 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 11761232}
!97 = !{ptr @single_pred, ptr @single_pred_edge, i64 96711}
!98 = !{ptr @single_succ, ptr @single_succ_edge, i64 4773413}
!99 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 28284226}
!100 = !{ptr @merge_blocks_move, ptr @merge_blocks, i64 1194}
!101 = !{ptr @merge_blocks_move, ptr @update_forwarder_flag, i64 1194}
!102 = !{ptr @merge_blocks_move, ptr @fprintf, i64 1}
!103 = !{ptr @merge_blocks_move, ptr @ei_start_1, i64 84}
!104 = !{ptr @merge_blocks_move, ptr @ei_cond, i64 115}
!105 = !{ptr @merge_blocks_move, ptr @ei_next, i64 31}
!106 = !{ptr @merge_blocks_move, ptr @merge_blocks_move_successor_nojumps, i64 17}
!107 = !{ptr @merge_blocks_move, ptr @force_nonfallthru, i64 23}
!108 = !{ptr @merge_blocks_move, ptr @notice_new_block, i64 22}
!109 = !{ptr @merge_blocks_move, ptr @merge_blocks_move_predecessor_nojumps, i64 24}
!110 = !{ptr @try_simplify_condjump, ptr @VEC_edge_base_length, i64 973959}
!111 = !{ptr @try_simplify_condjump, ptr @any_condjump_p, i64 589890}
!112 = !{ptr @try_simplify_condjump, ptr @VEC_edge_base_index, i64 1179610}
!113 = !{ptr @try_simplify_condjump, ptr @single_pred_p, i64 589805}
!114 = !{ptr @try_simplify_condjump, ptr @single_succ, i64 39053}
!115 = !{ptr @try_simplify_condjump, ptr @can_fallthru, i64 39050}
!116 = !{ptr @try_simplify_condjump, ptr @block_label, i64 112}
!117 = !{ptr @try_simplify_condjump, ptr @invert_jump, i64 112}
!118 = !{ptr @try_simplify_condjump, ptr @fprintf, i64 1}
!119 = !{ptr @try_simplify_condjump, ptr @redirect_edge_succ_nodup, i64 222}
!120 = !{ptr @try_simplify_condjump, ptr @update_br_prob_note, i64 111}
!121 = !{ptr @try_simplify_condjump, ptr @delete_basic_block, i64 111}
!122 = !{ptr @try_simplify_condjump, ptr @tidy_fallthru_edge, i64 111}
!123 = !{ptr @try_simplify_condjump, ptr @update_forwarder_flag, i64 111}
!124 = !{ptr @try_forward_edges, ptr @find_reg_note, i64 20919963}
!125 = !{ptr @try_forward_edges, ptr @ei_start_1, i64 8000511}
!126 = !{ptr @try_forward_edges, ptr @ei_safe_edge, i64 21123637}
!127 = !{ptr @try_forward_edges, ptr @df_get_bb_dirty, i64 26412728}
!128 = !{ptr @try_forward_edges, ptr @ei_next, i64 13026702}
!129 = !{ptr @try_forward_edges, ptr @single_succ_edge, i64 498975}
!130 = !{ptr @try_forward_edges, ptr @single_succ, i64 621799}
!131 = !{ptr @try_forward_edges, ptr @thread_jump, i64 429517}
!132 = !{ptr @try_forward_edges, ptr @xmalloc, i64 252}
!133 = !{ptr @try_forward_edges, ptr @fancy_abort, i64 3}
!134 = !{ptr @try_forward_edges, ptr @fprintf, i64 2}
!135 = !{ptr @try_forward_edges, ptr @redirect_edge_and_branch_force, i64 253}
!136 = !{ptr @try_forward_edges, ptr @notice_new_block, i64 253}
!137 = !{ptr @try_forward_edges, ptr @fwrite, i64 1}
!138 = !{ptr @try_forward_edges, ptr @redirect_edge_and_branch, i64 215422}
!139 = !{ptr @try_forward_edges, ptr @forwarder_block_p, i64 95297}
!140 = !{ptr @try_forward_edges, ptr @single_succ_p, i64 120839}
!141 = !{ptr @try_forward_edges, ptr @update_bb_profile_for_threading, i64 255}
!142 = !{ptr @try_forward_edges, ptr @update_br_prob_note, i64 255}
!143 = !{ptr @try_forward_edges, ptr @free, i64 254}
!144 = !{ptr @try_crossjump_bb, ptr @VEC_edge_base_length, i64 8150976}
!145 = !{ptr @try_crossjump_bb, ptr @optimize_bb_for_size_p, i64 324678}
!146 = !{ptr @try_crossjump_bb, ptr @computed_jump_p, i64 104394}
!147 = !{ptr @try_crossjump_bb, ptr @VEC_edge_base_index, i64 7279674}
!148 = !{ptr @try_crossjump_bb, ptr @ei_start_1, i64 324222}
!149 = !{ptr @try_crossjump_bb, ptr @ei_cond, i64 742102}
!150 = !{ptr @try_crossjump_bb, ptr @ei_next, i64 417880}
!151 = !{ptr @try_crossjump_bb, ptr @df_get_bb_dirty, i64 1662823}
!152 = !{ptr @try_crossjump_bb, ptr @try_crossjump_to_edge, i64 2073154}
!153 = !{ptr @ei_cond, ptr @ei_end_p, i64 809369}
!154 = !{ptr @ei_cond, ptr @ei_edge, i64 726863}
!155 = !{ptr @ei_next, ptr @ei_container, i64 26907717}
!156 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 13453859}
!157 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!158 = !{ptr @merge_blocks_move_successor_nojumps, ptr @tablejump_p, i64 16}
!159 = !{ptr @merge_blocks_move_successor_nojumps, ptr @prev_active_insn, i64 1}
!160 = !{ptr @merge_blocks_move_successor_nojumps, ptr @delete_insn, i64 14}
!161 = !{ptr @merge_blocks_move_successor_nojumps, ptr @reorder_insns_nobb, i64 16}
!162 = !{ptr @merge_blocks_move_successor_nojumps, ptr @fprintf, i64 1}
!163 = !{ptr @merge_blocks_move_successor_nojumps, ptr @merge_blocks, i64 16}
!164 = !{ptr @notice_new_block, ptr @forwarder_block_p, i64 26}
!165 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @next_nonnote_insn, i64 24}
!166 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @fancy_abort, i64 1}
!167 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @delete_insn, i64 24}
!168 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @reorder_insns_nobb, i64 23}
!169 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @df_set_bb_dirty, i64 24}
!170 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @fprintf, i64 1}
!171 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @unlink_block, i64 24}
!172 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @link_block, i64 24}
!173 = !{ptr @merge_blocks_move_predecessor_nojumps, ptr @merge_blocks, i64 24}
!174 = !{ptr @ei_end_p, ptr @ei_container, i64 43866004}
!175 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 21933011}
!176 = !{ptr @ei_edge, ptr @ei_container, i64 27699987}
!177 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 13849994}
!178 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!179 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 21123642}
!180 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 13123130}
!181 = !{ptr @thread_jump, ptr @VEC_edge_base_length, i64 661784}
!182 = !{ptr @thread_jump, ptr @any_condjump_p, i64 348518}
!183 = !{ptr @thread_jump, ptr @onlyjump_p, i64 174215}
!184 = !{ptr @thread_jump, ptr @pc_set, i64 348428}
!185 = !{ptr @thread_jump, ptr @reversed_comparison_code, i64 269452}
!186 = !{ptr @thread_jump, ptr @comparison_dominates_p, i64 264505}
!187 = !{ptr @thread_jump, ptr @rtx_equal_p, i64 298245}
!188 = !{ptr @thread_jump, ptr @side_effects_p, i64 498110}
!189 = !{ptr @thread_jump, ptr @cselib_init, i64 115533}
!190 = !{ptr @thread_jump, ptr @cselib_process_insn, i64 941434}
!191 = !{ptr @thread_jump, ptr @bitmap_obstack_alloc_stat, i64 115533}
!192 = !{ptr @thread_jump, ptr @bitmap_clear, i64 115533}
!193 = !{ptr @thread_jump, ptr @mark_effect, i64 399786}
!194 = !{ptr @thread_jump, ptr @for_each_rtx, i64 110041}
!195 = !{ptr @thread_jump, ptr @bmp_iter_set_init, i64 261}
!196 = !{ptr @thread_jump, ptr @bmp_iter_set, i64 261}
!197 = !{ptr @thread_jump, ptr @bitmap_obstack_free, i64 115533}
!198 = !{ptr @thread_jump, ptr @cselib_finish, i64 115533}
!199 = !{ptr @thread_jump, ptr @VEC_edge_base_index, i64 377}
!200 = !{ptr @mark_effect, ptr @rhs_regno, i64 286010}
!201 = !{ptr @mark_effect, ptr @bitmap_clear_bit, i64 36722}
!202 = !{ptr @mark_effect, ptr @rtx_equal_for_cselib_p, i64 366276}
!203 = !{ptr @mark_effect, ptr @bitmap_set_bit, i64 249290}
!204 = !{ptr @mentions_nonequal_regs, ptr @rhs_regno, i64 110935}
!205 = !{ptr @mentions_nonequal_regs, ptr @bitmap_bit_p, i64 110936}
!206 = !{ptr @try_crossjump_to_edge, ptr @single_pred_p, i64 2884716}
!207 = !{ptr @try_crossjump_to_edge, ptr @single_pred_edge, i64 454367}
!208 = !{ptr @try_crossjump_to_edge, ptr @single_succ, i64 536223}
!209 = !{ptr @try_crossjump_to_edge, ptr @VEC_edge_base_length, i64 2875451}
!210 = !{ptr @try_crossjump_to_edge, ptr @outgoing_edges_match, i64 1431001}
!211 = !{ptr @try_crossjump_to_edge, ptr @flow_find_cross_jump, i64 353896}
!212 = !{ptr @try_crossjump_to_edge, ptr @block_has_preserve_label, i64 14961}
!213 = !{ptr @try_crossjump_to_edge, ptr @tablejump_p, i64 14961}
!214 = !{ptr @try_crossjump_to_edge, ptr @for_each_rtx, i64 5}
!215 = !{ptr @try_crossjump_to_edge, ptr @VEC_edge_base_index, i64 13028}
!216 = !{ptr @try_crossjump_to_edge, ptr @fprintf, i64 2}
!217 = !{ptr @try_crossjump_to_edge, ptr @split_block, i64 16893}
!218 = !{ptr @try_crossjump_to_edge, ptr @df_set_bb_dirty, i64 14960}
!219 = !{ptr @try_crossjump_to_edge, ptr @ei_start_1, i64 31524}
!220 = !{ptr @try_crossjump_to_edge, ptr @ei_cond, i64 556710}
!221 = !{ptr @try_crossjump_to_edge, ptr @ei_next, i64 525186}
!222 = !{ptr @try_crossjump_to_edge, ptr @single_succ_edge, i64 17960}
!223 = !{ptr @try_crossjump_to_edge, ptr @update_br_prob_note, i64 14960}
!224 = !{ptr @try_crossjump_to_edge, ptr @redirect_edge_and_branch_force, i64 14960}
!225 = !{ptr @try_crossjump_to_edge, ptr @delete_basic_block, i64 14960}
!226 = !{ptr @try_crossjump_to_edge, ptr @update_forwarder_flag, i64 16892}
!227 = !{ptr @outgoing_edges_match, ptr @single_succ_p, i64 1863283}
!228 = !{ptr @outgoing_edges_match, ptr @single_succ_edge, i64 1243298}
!229 = !{ptr @outgoing_edges_match, ptr @simplejump_p, i64 676270}
!230 = !{ptr @outgoing_edges_match, ptr @VEC_edge_base_length, i64 1968268}
!231 = !{ptr @outgoing_edges_match, ptr @any_condjump_p, i64 1602629}
!232 = !{ptr @outgoing_edges_match, ptr @onlyjump_p, i64 1602505}
!233 = !{ptr @outgoing_edges_match, ptr @VEC_edge_base_index, i64 2611076}
!234 = !{ptr @outgoing_edges_match, ptr @pc_set, i64 51680}
!235 = !{ptr @outgoing_edges_match, ptr @reversed_comparison_code, i64 9258}
!236 = !{ptr @outgoing_edges_match, ptr @rtx_renumbered_equal_p, i64 39944}
!237 = !{ptr @outgoing_edges_match, ptr @swap_condition, i64 6571}
!238 = !{ptr @outgoing_edges_match, ptr @optimize_bb_for_speed_p, i64 31013}
!239 = !{ptr @outgoing_edges_match, ptr @fprintf, i64 2}
!240 = !{ptr @outgoing_edges_match, ptr @tablejump_p, i64 64825}
!241 = !{ptr @outgoing_edges_match, ptr @rtx_referenced_p, i64 451}
!242 = !{ptr @outgoing_edges_match, ptr @rtx_equal_p, i64 455}
!243 = !{ptr @outgoing_edges_match, ptr @for_each_rtx, i64 2}
!244 = !{ptr @outgoing_edges_match, ptr @old_insns_match_p, i64 46343}
!245 = !{ptr @outgoing_edges_match, ptr @ei_start_1, i64 17585}
!246 = !{ptr @outgoing_edges_match, ptr @ei_cond, i64 313090}
!247 = !{ptr @outgoing_edges_match, ptr @ei_next, i64 286715}
!248 = !{ptr @outgoing_edges_match, ptr @forwarder_block_p, i64 2}
!249 = !{ptr @outgoing_edges_match, ptr @single_succ, i64 2}
!250 = !{ptr @outgoing_edges_match, ptr @find_reg_note, i64 17586}
!251 = !{ptr @flow_find_cross_jump, ptr @onlyjump_p, i64 707794}
!252 = !{ptr @flow_find_cross_jump, ptr @returnjump_p, i64 119840}
!253 = !{ptr @flow_find_cross_jump, ptr @side_effects_p, i64 2}
!254 = !{ptr @flow_find_cross_jump, ptr @simplejump_p, i64 262165}
!255 = !{ptr @flow_find_cross_jump, ptr @old_insns_match_p, i64 492186}
!256 = !{ptr @flow_find_cross_jump, ptr @merge_memattrs, i64 169317}
!257 = !{ptr @flow_find_cross_jump, ptr @find_reg_equal_equiv_note, i64 338632}
!258 = !{ptr @flow_find_cross_jump, ptr @remove_note, i64 708}
!259 = !{ptr @flow_find_cross_jump, ptr @rtx_equal_p, i64 16774}
!260 = !{ptr @block_has_preserve_label, ptr @block_label, i64 27935}
!261 = !{ptr @old_insns_match_p, ptr @rtx_equal_p, i64 514503}
!262 = !{ptr @old_insns_match_p, ptr @stack_regs_mentioned, i64 1}
!263 = !{ptr @old_insns_match_p, ptr @rhs_regno, i64 6}
!264 = !{ptr @old_insns_match_p, ptr @hard_reg_set_equal_p, i64 1}
!265 = !{ptr @old_insns_match_p, ptr @rtx_renumbered_equal_p, i64 1}
!266 = !{ptr @merge_memattrs, ptr @set_mem_alias_set, i64 60}
!267 = !{ptr @merge_memattrs, ptr @mem_expr_equal_p, i64 5608}
!268 = !{ptr @merge_memattrs, ptr @set_mem_expr, i64 11188}
!269 = !{ptr @merge_memattrs, ptr @set_mem_offset, i64 11208}
!270 = !{ptr @merge_memattrs, ptr @gen_rtx_CONST_INT, i64 11}
!271 = !{ptr @merge_memattrs, ptr @set_mem_size, i64 11216}
!272 = !{ptr @merge_memattrs, ptr @set_mem_align, i64 11216}
!273 = !{ptr @merge_memattrs, ptr @merge_memattrs, i64 3010670}
!274 = !{ptr @rest_of_handle_jump, ptr @fixup_tail_calls, i64 1007}
!275 = !{ptr @rest_of_handle_jump2, ptr @get_insns, i64 6652}
!276 = !{ptr @rest_of_handle_jump2, ptr @max_reg_num, i64 6652}
!277 = !{ptr @rest_of_handle_jump2, ptr @delete_trivially_dead_insns, i64 6652}
!278 = !{ptr @rest_of_handle_jump2, ptr @dump_flow_info, i64 1}
!279 = !{ptr @rest_of_handle_jump2, ptr @cleanup_cfg, i64 6652}
!280 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!281 = !{!"function_entry_count", i64 178725}
!282 = !{!283, !283, i64 0}
!283 = !{!"int", !284, i64 0}
!284 = !{!"omnipotent char", !285, i64 0}
!285 = !{!"Simple C/C++ TBAA"}
!286 = !{!"branch_weights", i32 178726, i32 1}
!287 = !{!288, !288, i64 0}
!288 = !{!"any pointer", !284, i64 0}
!289 = !{!290, !288, i64 8}
!290 = !{!"function", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40, !288, i64 48, !288, i64 56, !288, i64 64, !288, i64 72, !288, i64 80, !288, i64 88, !288, i64 96, !283, i64 104, !283, i64 108, !283, i64 112, !283, i64 116, !283, i64 120, !283, i64 124, !288, i64 128, !283, i64 136, !283, i64 137, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 139, !283, i64 139, !283, i64 139, !283, i64 139, !283, i64 139, !283, i64 139, !283, i64 139}
!291 = !{!292, !288, i64 8}
!292 = !{!"control_flow_graph", !288, i64 0, !288, i64 8, !288, i64 16, !283, i64 24, !283, i64 28, !283, i64 32, !288, i64 40, !283, i64 48, !284, i64 52, !284, i64 60, !283, i64 68, !283, i64 72}
!293 = !{!294, !288, i64 48}
!294 = !{!"basic_block_def", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !284, i64 32, !288, i64 48, !288, i64 56, !284, i64 64, !295, i64 72, !283, i64 80, !283, i64 84, !283, i64 88, !283, i64 92, !283, i64 96}
!295 = !{!"long", !284, i64 0}
!296 = !{!292, !288, i64 0}
!297 = !{!294, !283, i64 96}
!298 = distinct !{!298, !299}
!299 = !{!"llvm.loop.mustprogress"}
!300 = distinct !{!300, !299}
!301 = !{!"branch_weights", i32 1, i32 178725}
!302 = !{!"branch_weights", i32 5596, i32 8857039}
!303 = !{!"branch_weights", i32 178725, i32 8683909}
!304 = distinct !{!304, !299}
!305 = !{!"branch_weights", i32 2091671587, i32 55812061}
!306 = !{!"function_entry_count", i64 0}
!307 = !{!"cfgcleanup.c:VEC_basic_block_base_length"}
!308 = !{!309, !283, i64 0}
!309 = !{!"VEC_basic_block_base", !283, i64 0, !283, i64 4, !284, i64 8}
!310 = !{!"cfgcleanup.c:VEC_basic_block_base_pop"}
!311 = !{!"cfgcleanup.c:VEC_basic_block_heap_free"}
!312 = !{!"function_entry_count", i64 38208}
!313 = !{!294, !288, i64 56}
!314 = !{!"branch_weights", i32 1, i32 38208}
!315 = !{!284, !284, i64 0}
!316 = !{!317, !288, i64 8}
!317 = !{!"rtl_bb_info", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !283, i64 32}
!318 = !{!"branch_weights", i32 1517099, i32 1134346}
!319 = !{!"branch_weights", i32 1523028, i32 1166625}
!320 = !{!"branch_weights", i32 -2147483648, i32 0}
!321 = !{!"branch_weights", i32 22554, i32 743091}
!322 = !{!"branch_weights", i32 1, i32 22554}
!323 = !{!"branch_weights", i32 38208, i32 2613236}
!324 = distinct !{!324, !299}
!325 = !{!"branch_weights", i32 38208, i32 1484820}
!326 = distinct !{!326, !299}
!327 = !{!"function_entry_count", i64 91668}
!328 = !{!"branch_weights", i32 71713, i32 19957}
!329 = !{!"branch_weights", i32 91669, i32 1}
!330 = !{i8 0, i8 2}
!331 = !{!"branch_weights", i32 87378, i32 4292}
!332 = !{!"branch_weights", i32 8585, i32 18421264}
!333 = !{!"branch_weights", i32 6653, i32 85017}
!334 = !{!"branch_weights", i32 1, i32 91669}
!335 = !{!"branch_weights", i32 67683, i32 23387}
!336 = !{!"branch_weights", i32 23387, i32 1}
!337 = !{!"branch_weights", i32 180891744, i32 4762200}
!338 = !{!"branch_weights", i32 600, i32 1}
!339 = !{!"branch_weights", i32 3326960, i32 38354121}
!340 = !{!"branch_weights", i32 23387, i32 0}
!341 = distinct !{!341, !299}
!342 = !{!"branch_weights", i32 19957, i32 71713}
!343 = !{!"function_entry_count", i64 114455}
!344 = !{!"cfgcleanup.c:try_optimize_cfg"}
!345 = !{!"branch_weights", i32 99325, i32 15132}
!346 = !{!"branch_weights", i32 1, i32 114455}
!347 = !{!"branch_weights", i32 114455, i32 5285777}
!348 = distinct !{!348, !299}
!349 = !{!350, !288, i64 976}
!350 = !{!"gcc_target", !351, i64 0, !353, i64 368, !354, i64 664, !283, i64 744, !288, i64 752, !288, i64 760, !288, i64 768, !288, i64 776, !288, i64 784, !288, i64 792, !288, i64 800, !288, i64 808, !288, i64 816, !288, i64 824, !288, i64 832, !288, i64 840, !288, i64 848, !288, i64 856, !288, i64 864, !288, i64 872, !288, i64 880, !288, i64 888, !288, i64 896, !288, i64 904, !288, i64 912, !288, i64 920, !288, i64 928, !288, i64 936, !288, i64 944, !288, i64 952, !288, i64 960, !288, i64 968, !288, i64 976, !288, i64 984, !288, i64 992, !288, i64 1000, !288, i64 1008, !288, i64 1016, !288, i64 1024, !288, i64 1032, !288, i64 1040, !288, i64 1048, !288, i64 1056, !295, i64 1064, !295, i64 1072, !288, i64 1080, !288, i64 1088, !288, i64 1096, !288, i64 1104, !288, i64 1112, !288, i64 1120, !288, i64 1128, !288, i64 1136, !288, i64 1144, !288, i64 1152, !288, i64 1160, !288, i64 1168, !355, i64 1176, !288, i64 1232, !288, i64 1240, !288, i64 1248, !288, i64 1256, !288, i64 1264, !288, i64 1272, !288, i64 1280, !288, i64 1288, !288, i64 1296, !288, i64 1304, !288, i64 1312, !288, i64 1320, !288, i64 1328, !288, i64 1336, !288, i64 1344, !288, i64 1352, !288, i64 1360, !288, i64 1368, !288, i64 1376, !288, i64 1384, !288, i64 1392, !288, i64 1400, !288, i64 1408, !288, i64 1416, !288, i64 1424, !288, i64 1432, !288, i64 1440, !288, i64 1448, !288, i64 1456, !295, i64 1464, !356, i64 1472, !288, i64 1664, !288, i64 1672, !288, i64 1680, !288, i64 1688, !288, i64 1696, !288, i64 1704, !288, i64 1712, !288, i64 1720, !288, i64 1728, !288, i64 1736, !288, i64 1744, !288, i64 1752, !288, i64 1760, !288, i64 1768, !288, i64 1776, !357, i64 1784, !358, i64 1792, !359, i64 1896, !360, i64 1968, !288, i64 2016, !284, i64 2024, !284, i64 2025, !284, i64 2026, !284, i64 2027, !284, i64 2028, !284, i64 2029, !284, i64 2030, !284, i64 2031, !284, i64 2032, !284, i64 2033, !284, i64 2034, !284, i64 2035}
!351 = !{!"asm_out", !288, i64 0, !288, i64 8, !288, i64 16, !352, i64 24, !352, i64 56, !288, i64 88, !288, i64 96, !288, i64 104, !288, i64 112, !288, i64 120, !288, i64 128, !288, i64 136, !288, i64 144, !288, i64 152, !288, i64 160, !288, i64 168, !288, i64 176, !288, i64 184, !288, i64 192, !288, i64 200, !288, i64 208, !288, i64 216, !288, i64 224, !288, i64 232, !288, i64 240, !288, i64 248, !288, i64 256, !288, i64 264, !288, i64 272, !288, i64 280, !288, i64 288, !288, i64 296, !288, i64 304, !288, i64 312, !288, i64 320, !288, i64 328, !288, i64 336, !288, i64 344, !288, i64 352, !288, i64 360}
!352 = !{!"asm_int_op", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24}
!353 = !{!"sched", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40, !288, i64 48, !288, i64 56, !288, i64 64, !288, i64 72, !288, i64 80, !288, i64 88, !288, i64 96, !288, i64 104, !288, i64 112, !288, i64 120, !288, i64 128, !288, i64 136, !288, i64 144, !288, i64 152, !288, i64 160, !288, i64 168, !288, i64 176, !288, i64 184, !288, i64 192, !288, i64 200, !288, i64 208, !288, i64 216, !288, i64 224, !288, i64 232, !288, i64 240, !288, i64 248, !288, i64 256, !288, i64 264, !288, i64 272, !288, i64 280, !288, i64 288}
!354 = !{!"vectorize", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40, !288, i64 48, !288, i64 56, !288, i64 64, !288, i64 72}
!355 = !{!"addr_space", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40, !288, i64 48}
!356 = !{!"calls", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40, !288, i64 48, !288, i64 56, !288, i64 64, !288, i64 72, !288, i64 80, !288, i64 88, !288, i64 96, !288, i64 104, !288, i64 112, !288, i64 120, !288, i64 128, !288, i64 136, !288, i64 144, !288, i64 152, !288, i64 160, !288, i64 168, !288, i64 176, !288, i64 184}
!357 = !{!"c", !288, i64 0}
!358 = !{!"cxx", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40, !288, i64 48, !288, i64 56, !288, i64 64, !288, i64 72, !288, i64 80, !288, i64 88, !288, i64 96}
!359 = !{!"emutls", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40, !288, i64 48, !288, i64 56, !284, i64 64, !284, i64 65}
!360 = !{!"target_option_hooks", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40}
!361 = !{!"branch_weights", i32 114456, i32 1}
!362 = !{!"branch_weights", i32 139936, i32 1}
!363 = !{!"branch_weights", i32 1, i32 139935}
!364 = !{!294, !288, i64 0}
!365 = !{!"branch_weights", i32 73768, i32 8006204}
!366 = !{!294, !288, i64 8}
!367 = !{!"branch_weights", i32 73290, i32 7932915}
!368 = !{!"branch_weights", i32 73290, i32 1}
!369 = !{!370, !288, i64 8}
!370 = !{!"edge_def", !288, i64 0, !288, i64 8, !284, i64 16, !288, i64 24, !288, i64 32, !283, i64 40, !283, i64 44, !283, i64 48, !283, i64 52, !295, i64 56}
!371 = !{!"branch_weights", i32 10418, i32 63351}
!372 = !{!"branch_weights", i32 1, i32 73768}
!373 = distinct !{!373, !299}
!374 = !{!"branch_weights", i32 2335385, i32 5670820}
!375 = !{!370, !283, i64 48}
!376 = !{!"branch_weights", i32 1686654, i32 3984167}
!377 = !{!"branch_weights", i32 3984167, i32 1}
!378 = !{!317, !288, i64 0}
!379 = !{!"branch_weights", i32 32359, i32 3951809}
!380 = !{!"branch_weights", i32 1, i32 32359}
!381 = !{!"branch_weights", i32 31996, i32 364}
!382 = !{!"branch_weights", i32 31996, i32 1}
!383 = !{!"branch_weights", i32 3050, i32 29310}
!384 = !{!"branch_weights", i32 1, i32 3050}
!385 = !{!"branch_weights", i32 32359, i32 1}
!386 = !{!294, !283, i64 80}
!387 = !{!"branch_weights", i32 2159144, i32 5847061}
!388 = !{!"branch_weights", i32 609665, i32 1549480}
!389 = !{!"branch_weights", i32 395833, i32 1153648}
!390 = !{!"branch_weights", i32 1, i32 1153648}
!391 = !{!"branch_weights", i32 1030343, i32 123306}
!392 = !{!"branch_weights", i32 117495, i32 5812}
!393 = !{!292, !283, i64 24}
!394 = !{!"branch_weights", i32 5692, i32 121}
!395 = !{!"branch_weights", i32 5692, i32 1}
!396 = !{!"branch_weights", i32 8, i32 5685}
!397 = !{!"branch_weights", i32 4943638, i32 3056876}
!398 = !{!"branch_weights", i32 1, i32 3056876}
!399 = !{!"branch_weights", i32 3015228, i32 41649}
!400 = !{!"branch_weights", i32 154394, i32 2860835}
!401 = !{!"branch_weights", i32 -1836095565, i32 49187428}
!402 = !{!"branch_weights", i32 32705, i32 23403}
!403 = !{!"branch_weights", i32 1, i32 23403}
!404 = !{!"branch_weights", i32 31512, i32 1194}
!405 = !{!"branch_weights", i32 31512, i32 1}
!406 = !{!"branch_weights", i32 1, i32 -1}
!407 = !{!"branch_weights", i32 1236, i32 31470}
!408 = !{!"branch_weights", i32 262195454, i32 1885288194}
!409 = !{!"branch_weights", i32 973849, i32 112}
!410 = !{!"branch_weights", i32 4954257, i32 3046257}
!411 = !{!"branch_weights", i32 203428, i32 2842830}
!412 = !{!"branch_weights", i32 2258586, i32 584245}
!413 = !{!"branch_weights", i32 584245, i32 1}
!414 = !{!"branch_weights", i32 445818, i32 138428}
!415 = !{!"branch_weights", i32 7905697, i32 94817}
!416 = !{!"branch_weights", i32 6821020, i32 1179494}
!417 = !{!"branch_weights", i32 -1964707133, i32 85345596}
!418 = !{!"branch_weights", i32 2080908583, i32 66575065}
!419 = !{!"branch_weights", i32 139935, i32 7940036}
!420 = !{!"branch_weights", i32 127673, i32 12264}
!421 = !{!"branch_weights", i32 11801, i32 464}
!422 = !{!"branch_weights", i32 114456, i32 25481}
!423 = distinct !{!423, !299}
!424 = !{!"branch_weights", i32 114455, i32 5412437}
!425 = distinct !{!425, !299}
!426 = !{!"function_entry_count", i64 5580254}
!427 = !{!"cfgcleanup.c:update_forwarder_flag"}
!428 = !{!"branch_weights", i32 5413220, i32 167036}
!429 = !{!"function_entry_count", i64 120730399}
!430 = !{!"cfgcleanup.c:VEC_edge_base_length"}
!431 = !{!"branch_weights", i32 67, i32 120730334}
!432 = !{!433, !283, i64 0}
!433 = !{!"VEC_edge_base", !283, i64 0, !283, i64 4, !284, i64 8}
!434 = !{!"function_entry_count", i64 73289}
!435 = !{!"cfgcleanup.c:trivially_empty_bb_p"}
!436 = !{!"branch_weights", i32 1, i32 127}
!437 = !{!"branch_weights", i32 127, i32 9380993}
!438 = !{!"branch_weights", i32 1, i32 73290}
!439 = !{!"function_entry_count", i64 10299079}
!440 = !{!"cfgcleanup.c:single_succ_edge"}
!441 = !{!"branch_weights", i32 1, i32 10299080}
!442 = !{!"function_entry_count", i64 28261936}
!443 = !{!"cfgcleanup.c:single_pred_p"}
!444 = !{!"function_entry_count", i64 11761232}
!445 = !{!"cfgcleanup.c:single_pred_edge"}
!446 = !{!"branch_weights", i32 1, i32 11761233}
!447 = !{!"function_entry_count", i64 96711}
!448 = !{!"cfgcleanup.c:single_pred"}
!449 = !{!370, !288, i64 0}
!450 = !{!"function_entry_count", i64 4773413}
!451 = !{!"cfgcleanup.c:single_succ"}
!452 = !{!"function_entry_count", i64 28284226}
!453 = !{!"cfgcleanup.c:single_succ_p"}
!454 = !{!"function_entry_count", i64 32704}
!455 = !{!"cfgcleanup.c:merge_blocks_move"}
!456 = !{!"branch_weights", i32 32705, i32 1}
!457 = !{!"branch_weights", i32 1194, i32 1}
!458 = !{!"branch_weights", i32 2, i32 1193}
!459 = !{!"branch_weights", i32 21261, i32 10252}
!460 = !{!"branch_weights", i32 64, i32 10189}
!461 = !{!"branch_weights", i32 43, i32 22}
!462 = !{i64 0, i64 4, !282, i64 8, i64 8, !287}
!463 = !{i64 0, i64 8, !287}
!464 = !{!"branch_weights", i32 1, i32 143}
!465 = !{!"branch_weights", i32 25, i32 26}
!466 = !{!"branch_weights", i32 143, i32 257}
!467 = distinct !{!467, !299}
!468 = !{!"branch_weights", i32 1, i32 43}
!469 = !{!"branch_weights", i32 127, i32 5377}
!470 = distinct !{!470, !299}
!471 = !{!"branch_weights", i32 18, i32 26}
!472 = !{!"branch_weights", i32 1, i32 18}
!473 = !{!"branch_weights", i32 1, i32 26}
!474 = !{!"function_entry_count", i64 973959}
!475 = !{!"cfgcleanup.c:try_simplify_condjump"}
!476 = !{!"branch_weights", i32 589891, i32 384070}
!477 = !{!"branch_weights", i32 85, i32 589807}
!478 = !{!"branch_weights", i32 254733, i32 335075}
!479 = !{!"branch_weights", i32 93225, i32 496583}
!480 = !{!"branch_weights", i32 772, i32 495812}
!481 = !{!"branch_weights", i32 456760, i32 39053}
!482 = !{!"branch_weights", i32 39053, i32 1}
!483 = !{!"branch_weights", i32 1, i32 39053}
!484 = !{!"branch_weights", i32 38942, i32 112}
!485 = !{!"branch_weights", i32 1, i32 112}
!486 = !{!"branch_weights", i32 112, i32 1}
!487 = !{!"function_entry_count", i64 8000512}
!488 = !{!"cfgcleanup.c:try_forward_edges"}
!489 = !{!"branch_weights", i32 8000513, i32 1}
!490 = !{!"branch_weights", i32 1, i32 8000512}
!491 = !{!"branch_weights", i32 13081210, i32 41922}
!492 = distinct !{!492, !299}
!493 = !{!370, !283, i64 40}
!494 = !{!"branch_weights", i32 161754, i32 12919457}
!495 = !{!"branch_weights", i32 12919457, i32 1}
!496 = !{!"branch_weights", i32 370, i32 1}
!497 = !{!"branch_weights", i32 12945755, i32 379402}
!498 = !{!"branch_weights", i32 379402, i32 1}
!499 = !{!"branch_weights", i32 135340, i32 244063}
!500 = !{!"branch_weights", i32 354, i32 243710}
!501 = !{!"branch_weights", i32 1, i32 243710}
!502 = !{!"branch_weights", i32 116798656, i32 -864112949}
!503 = !{!"branch_weights", i32 430413, i32 255}
!504 = !{!"branch_weights", i32 254, i32 2}
!505 = !{!"branch_weights", i32 127, i32 1}
!506 = distinct !{!506, !299}
!507 = !{!"branch_weights", i32 1, i32 2}
!508 = !{!"branch_weights", i32 1, i32 255}
!509 = !{!"branch_weights", i32 255, i32 1}
!510 = !{!"branch_weights", i32 0, i32 -2147483648}
!511 = !{!"branch_weights", i32 13324786, i32 370}
!512 = !{!"branch_weights", i32 2147422852, i32 60796}
!513 = !{!"branch_weights", i32 371, i32 1}
!514 = !{!"branch_weights", i32 12865166, i32 215675}
!515 = !{!370, !295, i64 56}
!516 = !{!370, !283, i64 52}
!517 = !{!"branch_weights", i32 215422, i32 254}
!518 = !{!"branch_weights", i32 1, i32 254}
!519 = !{!"branch_weights", i32 254, i32 1}
!520 = !{!"branch_weights", i32 119252, i32 96171}
!521 = !{!"branch_weights", i32 119252, i32 1}
!522 = !{!294, !283, i64 88}
!523 = !{!"branch_weights", i32 95298, i32 1127}
!524 = !{!"branch_weights", i32 95298, i32 1}
!525 = !{!"branch_weights", i32 255, i32 120585}
!526 = !{!294, !295, i64 72}
!527 = !{!"branch_weights", i32 1, i32 120585}
!528 = !{!"branch_weights", i32 1, i32 120839}
!529 = !{!"branch_weights", i32 96424, i32 24416}
!530 = distinct !{!530, !299}
!531 = !{!"branch_weights", i32 8000512, i32 5122619}
!532 = !{!"branch_weights", i32 2147415470, i32 68178}
!533 = !{!"function_entry_count", i64 1191756}
!534 = !{!"cfgcleanup.c:try_crossjump_bb"}
!535 = !{!"branch_weights", i32 867079, i32 324679}
!536 = !{!"branch_weights", i32 219895, i32 104785}
!537 = !{!"branch_weights", i32 391, i32 104395}
!538 = !{!"branch_weights", i32 104395, i32 1}
!539 = !{!"branch_weights", i32 324679, i32 1}
!540 = !{!541, !283, i64 8}
!541 = !{!"param_info", !288, i64 0, !283, i64 8, !284, i64 12, !283, i64 16, !283, i64 20, !288, i64 24}
!542 = !{!"branch_weights", i32 453, i32 324227}
!543 = !{!"branch_weights", i32 1, i32 49939}
!544 = !{!"branch_weights", i32 391372, i32 274288}
!545 = !{!"branch_weights", i32 49939, i32 615720}
!546 = distinct !{!546, !299}
!547 = !{!"branch_weights", i32 188601, i32 834622}
!548 = !{!"branch_weights", i32 281359, i32 553264}
!549 = !{!"branch_weights", i32 698996, i32 324226}
!550 = distinct !{!550, !299}
!551 = !{!"branch_weights", i32 264294, i32 288971}
!552 = !{!"branch_weights", i32 237024, i32 51948}
!553 = !{!"branch_weights", i32 211594, i32 25431}
!554 = !{!"branch_weights", i32 334986, i32 6686}
!555 = !{!"branch_weights", i32 308804, i32 214783}
!556 = !{!"branch_weights", i32 1, i32 300529}
!557 = !{!"branch_weights", i32 676555608, i32 -831755518}
!558 = !{!"branch_weights", i32 2766782, i32 300529}
!559 = distinct !{!559, !299}
!560 = !{!"branch_weights", i32 1304180, i32 1261848}
!561 = !{!"branch_weights", i32 814354, i32 447495}
!562 = !{!"branch_weights", i32 184055, i32 263441}
!563 = !{!"branch_weights", i32 161159, i32 22897}
!564 = !{!"branch_weights", i32 1092416, i32 8275}
!565 = !{!"branch_weights", i32 41500801, i32 127}
!566 = !{!"branch_weights", i32 2109212849, i32 38270799}
!567 = !{!"function_entry_count", i64 49084530}
!568 = !{!"cfgcleanup.c:VEC_edge_base_index"}
!569 = !{!"function_entry_count", i64 8382729}
!570 = !{!"cfgcleanup.c:ei_start_1"}
!571 = !{!"function_entry_count", i64 809369}
!572 = !{!"cfgcleanup.c:ei_cond"}
!573 = !{!"branch_weights", i32 726865, i32 82506}
!574 = !{!"function_entry_count", i64 13453859}
!575 = !{!"cfgcleanup.c:ei_next"}
!576 = !{!"branch_weights", i32 1, i32 13453860}
!577 = !{!"branch_weights", i32 13453860, i32 1}
!578 = !{!579, !283, i64 0}
!579 = !{!"", !283, i64 0, !288, i64 8}
!580 = !{!"function_entry_count", i64 17}
!581 = !{!"cfgcleanup.c:merge_blocks_move_successor_nojumps"}
!582 = !{!"branch_weights", i32 18, i32 1}
!583 = !{!"function_entry_count", i64 278}
!584 = !{!"cfgcleanup.c:notice_new_block"}
!585 = !{!"branch_weights", i32 254, i32 26}
!586 = !{!"function_entry_count", i64 25}
!587 = !{!"cfgcleanup.c:merge_blocks_move_predecessor_nojumps"}
!588 = !{!"branch_weights", i32 26, i32 1}
!589 = !{!"function_entry_count", i64 21933011}
!590 = !{!"cfgcleanup.c:ei_end_p"}
!591 = !{!"branch_weights", i32 18, i32 21932995}
!592 = !{!"function_entry_count", i64 13849994}
!593 = !{!"cfgcleanup.c:ei_edge"}
!594 = !{!"branch_weights", i32 1, i32 13849995}
!595 = !{!"function_entry_count", i64 98473711}
!596 = !{!"cfgcleanup.c:ei_container"}
!597 = !{!"branch_weights", i32 1, i32 98473712}
!598 = !{!"function_entry_count", i64 21123642}
!599 = !{!"cfgcleanup.c:ei_safe_edge"}
!600 = !{!"branch_weights", i32 13123131, i32 8000513}
!601 = !{!"function_entry_count", i64 430666}
!602 = !{!"cfgcleanup.c:thread_jump"}
!603 = !{!"branch_weights", i32 381143, i32 49525}
!604 = !{!"branch_weights", i32 280645, i32 100499}
!605 = !{!"branch_weights", i32 174282, i32 106364}
!606 = !{!"branch_weights", i32 42, i32 174241}
!607 = !{!"branch_weights", i32 23, i32 174219}
!608 = !{!"branch_weights", i32 1, i32 174219}
!609 = !{!"branch_weights", i32 78979, i32 95241}
!610 = !{!"branch_weights", i32 90042, i32 84178}
!611 = !{!"branch_weights", i32 17218, i32 72825}
!612 = !{!"branch_weights", i32 15749, i32 141254}
!613 = !{!"branch_weights", i32 1, i32 141254}
!614 = !{!"branch_weights", i32 1, i32 116471}
!615 = !{!"branch_weights", i32 -1915111745, i32 412966542}
!616 = !{!"branch_weights", i32 455286, i32 24783}
!617 = !{!"branch_weights", i32 116471, i32 446902}
!618 = distinct !{!618, !299}
!619 = !{!"branch_weights", i32 -755620127, i32 442843136}
!620 = !{!"branch_weights", i32 116471, i32 460068}
!621 = distinct !{!621, !299}
!622 = !{!"branch_weights", i32 -1203415266, i32 595224140}
!623 = !{!"branch_weights", i32 36727, i32 329435}
!624 = !{!625, !283, i64 0}
!625 = !{!"rtvec_def", !283, i64 0, !284, i64 8}
!626 = !{!"branch_weights", i32 1, i32 36726}
!627 = !{!"branch_weights", i32 36874, i32 36726}
!628 = distinct !{!628, !299}
!629 = !{!"branch_weights", i32 442196, i32 110936}
!630 = !{!"branch_weights", i32 320189, i32 116471}
!631 = distinct !{!631, !299}
!632 = !{!"branch_weights", i32 110936, i32 5537}
!633 = !{!"branch_weights", i32 263, i32 110674}
!634 = !{!"branch_weights", i32 255, i32 9}
!635 = !{!"branch_weights", i32 128, i32 128}
!636 = !{!"branch_weights", i32 67, i32 62}
!637 = !{!"branch_weights", i32 66, i32 63}
!638 = !{!"function_entry_count", i64 403033}
!639 = !{!"cfgcleanup.c:mark_effect"}
!640 = !{!"branch_weights", i32 6, i32 36751, i32 366279}
!641 = !{!"branch_weights", i32 36722, i32 30}
!642 = !{!"branch_weights", i32 36699, i32 24}
!643 = !{!"branch_weights", i32 1, i32 36698}
!644 = !{!"branch_weights", i32 0, i32 1}
!645 = distinct !{!645, !299}
!646 = !{!"branch_weights", i32 365764, i32 516}
!647 = !{!"branch_weights", i32 110936, i32 254829}
!648 = !{!"branch_weights", i32 249293, i32 5537}
!649 = !{!"branch_weights", i32 121257, i32 128037}
!650 = !{!"branch_weights", i32 1, i32 121256}
!651 = distinct !{!651, !299}
!652 = !{!"function_entry_count", i64 222132}
!653 = !{!"cfgcleanup.c:mentions_nonequal_regs"}
!654 = !{!"branch_weights", i32 110936, i32 111198}
!655 = !{!"branch_weights", i32 263, i32 1}
!656 = distinct !{!656, !299}
!657 = !{!"function_entry_count", i64 262}
!658 = !{!"cfgcleanup.c:bmp_iter_set_init"}
!659 = !{!660, !288, i64 0}
!660 = !{!"bitmap_head_def", !288, i64 0, !288, i64 8, !283, i64 16, !288, i64 24}
!661 = !{!662, !288, i64 0}
!662 = !{!"", !288, i64 0, !288, i64 8, !283, i64 16, !295, i64 24}
!663 = !{!662, !288, i64 8}
!664 = !{!665, !283, i64 16}
!665 = !{!"bitmap_element_def", !288, i64 0, !288, i64 8, !283, i64 16, !284, i64 24}
!666 = !{!662, !283, i64 16}
!667 = !{!295, !295, i64 0}
!668 = !{!662, !295, i64 24}
!669 = !{!"cfgcleanup.c:bmp_iter_set"}
!670 = !{!"branch_weights", i32 260, i32 4}
!671 = !{!"branch_weights", i32 143, i32 1}
!672 = !{!"branch_weights", i32 3425, i32 143}
!673 = distinct !{!673, !299}
!674 = !{!"branch_weights", i32 255, i32 6}
!675 = !{!"branch_weights", i32 254, i32 6}
!676 = distinct !{!676, !299}
!677 = !{!665, !288, i64 0}
!678 = !{!"function_entry_count", i64 396948}
!679 = !{!"cfgcleanup.c:rhs_regno"}
!680 = !{!"function_entry_count", i64 1442359}
!681 = !{!"cfgcleanup.c:try_crossjump_to_edge"}
!682 = !{!"branch_weights", i32 1442360, i32 1}
!683 = !{!"branch_weights", i32 305026, i32 1137335}
!684 = !{!"branch_weights", i32 847463, i32 289873}
!685 = !{!"branch_weights", i32 414857, i32 1027504}
!686 = !{!"branch_weights", i32 863010, i32 164495}
!687 = !{!"branch_weights", i32 27125, i32 -1500379054}
!688 = !{!"branch_weights", i32 1150945, i32 291405}
!689 = !{!"branch_weights", i32 291200, i32 206}
!690 = !{!"branch_weights", i32 1276248, i32 165897}
!691 = !{!"branch_weights", i32 165798, i32 100}
!692 = !{!"branch_weights", i32 8625, i32 1433421}
!693 = !{!"branch_weights", i32 2412, i32 1431010}
!694 = !{!"branch_weights", i32 1077113, i32 353898}
!695 = !{!"branch_weights", i32 351792, i32 2107}
!696 = !{!"branch_weights", i32 12854, i32 338939}
!697 = !{!"branch_weights", i32 14960, i32 1}
!698 = !{!699, !288, i64 0}
!699 = !{!"replace_label_data", !288, i64 0, !288, i64 8, !284, i64 16}
!700 = !{!699, !288, i64 8}
!701 = !{!699, !284, i64 16}
!702 = distinct !{!702, !299}
!703 = !{!"branch_weights", i32 13029, i32 1932}
!704 = !{!"branch_weights", i32 13029, i32 1}
!705 = distinct !{!705, !299}
!706 = distinct !{!706, !299}
!707 = !{!"branch_weights", i32 1932, i32 1}
!708 = !{!"branch_weights", i32 1, i32 14959}
!709 = !{!"branch_weights", i32 16320, i32 245}
!710 = !{!"branch_weights", i32 15964, i32 2205}
!711 = !{!"branch_weights", i32 127, i32 2325377}
!712 = distinct !{!712, !299}
!713 = !{!"branch_weights", i32 15188, i32 1377}
!714 = !{!"branch_weights", i32 1, i32 1377}
!715 = !{!"branch_weights", i32 9402260, i32 46040795}
!716 = !{!"branch_weights", i32 14959, i32 1605}
!717 = distinct !{!717, !299}
!718 = !{!"branch_weights", i32 29, i32 14932}
!719 = !{!"branch_weights", i32 7706, i32 7255}
!720 = !{!"branch_weights", i32 13015200, i32 14961, i32 210801360}
!721 = distinct !{!721, !299}
!722 = !{!"branch_weights", i32 13942, i32 150}
!723 = distinct !{!723, !299}
!724 = !{!"function_entry_count", i64 1431009}
!725 = !{!"cfgcleanup.c:outgoing_edges_match"}
!726 = !{!"branch_weights", i32 969973, i32 461038}
!727 = !{!"branch_weights", i32 433454, i32 27585}
!728 = !{!"branch_weights", i32 433334, i32 121}
!729 = !{!"branch_weights", i32 1178, i32 432157}
!730 = !{!"branch_weights", i32 106399, i32 325879}
!731 = !{!"branch_weights", i32 325879, i32 1}
!732 = !{!"branch_weights", i32 242942, i32 82938}
!733 = !{!"branch_weights", i32 951983, i32 46752}
!734 = !{!"branch_weights", i32 41, i32 951943}
!735 = !{!"branch_weights", i32 1, i32 951943}
!736 = !{!"branch_weights", i32 650648, i32 301296}
!737 = !{!"branch_weights", i32 83, i32 650566}
!738 = !{!"branch_weights", i32 1, i32 650566}
!739 = !{!"branch_weights", i32 504625, i32 145942}
!740 = !{!"branch_weights", i32 380610, i32 269957}
!741 = !{!"branch_weights", i32 379013, i32 271554}
!742 = !{!"branch_weights", i32 465732, i32 184835}
!743 = !{!"branch_weights", i32 649392, i32 1175}
!744 = !{!"branch_weights", i32 648314, i32 1079}
!745 = !{!"branch_weights", i32 639827, i32 8488}
!746 = !{!"branch_weights", i32 637480, i32 2348}
!747 = !{!"branch_weights", i32 67929668, i32 -1751535734}
!748 = !{!"branch_weights", i32 34354702, i32 -2025262825}
!749 = !{!"branch_weights", i32 25840, i32 1}
!750 = !{!"branch_weights", i32 16583, i32 9258}
!751 = !{!"branch_weights", i32 1, i32 25840}
!752 = !{!"branch_weights", i32 19873, i32 5968}
!753 = !{!"branch_weights", i32 602, i32 19272}
!754 = !{!"branch_weights", i32 1, i32 19272}
!755 = !{!"branch_weights", i32 801, i32 5769}
!756 = !{!"branch_weights", i32 801, i32 1}
!757 = !{!"branch_weights", i32 7528, i32 11745}
!758 = !{!"branch_weights", i32 849, i32 10897}
!759 = !{!"branch_weights", i32 5515, i32 5383}
!760 = !{!"branch_weights", i32 10850, i32 48}
!761 = !{!"branch_weights", i32 48, i32 1}
!762 = !{!"branch_weights", i32 25793, i32 1}
!763 = !{!"branch_weights", i32 28762, i32 18031}
!764 = !{!"branch_weights", i32 17579, i32 453}
!765 = !{!"branch_weights", i32 453, i32 1}
!766 = !{!"branch_weights", i32 1, i32 453}
!767 = !{!"branch_weights", i32 2123211988, i32 24271660}
!768 = distinct !{!768, !299}
!769 = !{!"branch_weights", i32 37545, i32 8796}
!770 = !{!"branch_weights", i32 8796, i32 1}
!771 = !{!"branch_weights", i32 1, i32 8795}
!772 = !{!"branch_weights", i32 8795, i32 1}
!773 = distinct !{!773, !299}
!774 = !{!"branch_weights", i32 2147239506, i32 244142}
!775 = !{!"branch_weights", i32 244142, i32 2147239506}
!776 = !{!"branch_weights", i32 114, i32 1011541}
!777 = !{!"branch_weights", i32 114, i32 8683}
!778 = !{!"branch_weights", i32 8683, i32 1}
!779 = !{!"branch_weights", i32 127, i32 1125761}
!780 = distinct !{!780, !299}
!781 = distinct !{!781, !299}
!782 = !{!"function_entry_count", i64 353897}
!783 = !{!"cfgcleanup.c:flow_find_cross_jump"}
!784 = !{!"branch_weights", i32 8883, i32 345016}
!785 = !{!"branch_weights", i32 8883, i32 1}
!786 = !{!"branch_weights", i32 91733, i32 262166}
!787 = !{!"branch_weights", i32 91733, i32 1}
!788 = !{!"branch_weights", i32 19225, i32 242942}
!789 = !{!"branch_weights", i32 162298927, i32 -1778414724}
!790 = !{!"branch_weights", i32 523215, i32 16698}
!791 = !{!"branch_weights", i32 0, i32 162298927}
!792 = distinct !{!792, !299}
!793 = !{!"branch_weights", i32 320184162, i32 -2094375317}
!794 = !{!"branch_weights", i32 523215, i32 33166}
!795 = !{!"branch_weights", i32 0, i32 320184162}
!796 = distinct !{!796, !299}
!797 = !{!"branch_weights", i32 14145, i32 509071}
!798 = !{!"branch_weights", i32 16883, i32 492189}
!799 = !{!"branch_weights", i32 322872, i32 169318}
!800 = !{!"branch_weights", i32 -2041167822, i32 13309}
!801 = !{!"branch_weights", i32 -1403785489, i32 5696964}
!802 = !{!"branch_weights", i32 2111927, i32 -1081848069}
!803 = !{!"branch_weights", i32 281434176, i32 -1743152043}
!804 = !{!"branch_weights", i32 132, i32 16645}
!805 = !{!"branch_weights", i32 244281, i32 109618}
!806 = !{!"branch_weights", i32 13942, i32 121685}
!807 = !{!"branch_weights", i32 -819461286, i32 1993489690}
!808 = distinct !{!808, !299}
!809 = !{!"branch_weights", i32 29433, i32 138526}
!810 = !{!"branch_weights", i32 1497441520, i32 -1828769655}
!811 = distinct !{!811, !299}
!812 = !{!"function_entry_count", i64 14959}
!813 = !{!"cfgcleanup.c:block_has_preserve_label"}
!814 = !{!"branch_weights", i32 1, i32 14960}
!815 = !{!"branch_weights", i32 1981, i32 12980}
!816 = !{!"function_entry_count", i64 538527}
!817 = !{!"cfgcleanup.c:old_insns_match_p"}
!818 = !{!"branch_weights", i32 496231, i32 42298}
!819 = !{!"branch_weights", i32 1, i32 496231}
!820 = !{!"branch_weights", i32 445927, i32 50305}
!821 = !{!"branch_weights", i32 76742, i32 369186}
!822 = !{!"branch_weights", i32 7534, i32 69209}
!823 = !{!"branch_weights", i32 68583, i32 627}
!824 = !{!"branch_weights", i32 437768, i32 1}
!825 = distinct !{!825, !299}
!826 = distinct !{!826, !299}
!827 = !{!"branch_weights", i32 1, i32 178113}
!828 = !{!"cfgcleanup.c:hard_reg_set_equal_p"}
!829 = !{!"function_entry_count", i64 1523821}
!830 = !{!"cfgcleanup.c:merge_memattrs"}
!831 = !{!"branch_weights", i32 617252, i32 906571}
!832 = !{!"branch_weights", i32 1600460, i32 -1086537956}
!833 = !{!"branch_weights", i32 906076, i32 46}
!834 = !{!"branch_weights", i32 906076, i32 1}
!835 = !{!"branch_weights", i32 123944, i32 782133}
!836 = !{!"branch_weights", i32 118333, i32 5612}
!837 = !{!"branch_weights", i32 1, i32 5612}
!838 = !{!"branch_weights", i32 3, i32 5610}
!839 = !{!840, !283, i64 24}
!840 = !{!"mem_attrs", !288, i64 0, !288, i64 8, !288, i64 16, !283, i64 24, !283, i64 28, !284, i64 32}
!841 = !{!"branch_weights", i32 5581, i32 30}
!842 = !{!"branch_weights", i32 71582707, i32 2075900941}
!843 = !{!840, !288, i64 0}
!844 = !{!"branch_weights", i32 1, i32 5610}
!845 = !{!"branch_weights", i32 5597, i32 14}
!846 = !{!"branch_weights", i32 1, i32 14}
!847 = !{!840, !288, i64 8}
!848 = !{!"branch_weights", i32 4, i32 11}
!849 = !{!"branch_weights", i32 5610, i32 1}
!850 = !{!840, !288, i64 16}
!851 = !{!"branch_weights", i32 5600, i32 1}
!852 = !{!"branch_weights", i32 5590, i32 11}
!853 = !{!"branch_weights", i32 1, i32 11}
!854 = !{!"branch_weights", i32 11, i32 5600}
!855 = !{!"branch_weights", i32 1, i32 5600}
!856 = !{!"branch_weights", i32 11, i32 1}
!857 = !{!840, !283, i64 28}
!858 = !{!"branch_weights", i32 382729, i32 2147100919}
!859 = !{!"branch_weights", i32 1, i32 906075}
!860 = !{!"branch_weights", i32 1, i32 6600, i32 1340708}
!861 = !{!"branch_weights", i32 6600, i32 1}
!862 = !{!"branch_weights", i32 6599, i32 1}
!863 = !{!"branch_weights", i32 7199, i32 6599}
!864 = distinct !{!864, !299}
!865 = !{!"branch_weights", i32 2088625, i32 906075}
!866 = distinct !{!866, !299}
!867 = !{!"function_entry_count", i64 6652}
!868 = !{!"cfgcleanup.c:rest_of_handle_jump"}
!869 = !{!870, !284, i64 475}
!870 = !{!"rtl_data", !871, i64 0, !872, i64 40, !873, i64 96, !874, i64 112, !876, i64 208, !877, i64 248, !283, i64 312, !288, i64 320, !288, i64 328, !288, i64 336, !288, i64 344, !288, i64 352, !288, i64 360, !288, i64 368, !288, i64 376, !288, i64 384, !288, i64 392, !295, i64 400, !288, i64 408, !288, i64 416, !288, i64 424, !283, i64 432, !283, i64 436, !283, i64 440, !283, i64 444, !283, i64 448, !283, i64 452, !288, i64 456, !284, i64 464, !284, i64 465, !284, i64 466, !284, i64 467, !284, i64 468, !284, i64 469, !284, i64 470, !284, i64 471, !284, i64 472, !284, i64 473, !284, i64 474, !284, i64 475, !284, i64 476, !284, i64 477, !284, i64 478, !284, i64 479, !284, i64 480, !284, i64 481, !284, i64 482, !284, i64 483, !284, i64 484, !284, i64 485}
!871 = !{!"expr_status", !283, i64 0, !283, i64 4, !283, i64 8, !288, i64 16, !288, i64 24, !288, i64 32}
!872 = !{!"emit_status", !283, i64 0, !283, i64 4, !288, i64 8, !288, i64 16, !288, i64 24, !283, i64 32, !283, i64 36, !283, i64 40, !283, i64 44, !288, i64 48}
!873 = !{!"varasm_status", !288, i64 0, !283, i64 8}
!874 = !{!"incoming_args", !283, i64 0, !283, i64 4, !283, i64 8, !288, i64 16, !875, i64 24, !288, i64 88}
!875 = !{!"ix86_args", !283, i64 0, !283, i64 4, !283, i64 8, !283, i64 12, !283, i64 16, !283, i64 20, !283, i64 24, !283, i64 28, !283, i64 32, !283, i64 36, !283, i64 40, !283, i64 44, !283, i64 48, !283, i64 52, !283, i64 56, !283, i64 60}
!876 = !{!"function_subsections", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32}
!877 = !{!"rtl_eh", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !288, i64 40, !284, i64 48}
!878 = !{!"branch_weights", i32 5647, i32 1007}
!879 = !{!"cfgcleanup.c:rest_of_handle_jump2"}
!880 = !{!"branch_weights", i32 6653, i32 1}
