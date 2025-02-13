; ModuleID = 'cfgcleanup.c'
source_filename = "cfgcleanup.c"
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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
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
@.str.3 = private unnamed_addr constant [8 x i8] c"sibling\00", align 1
@pass_jump = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr null, ptr @rest_of_handle_jump, ptr null, ptr null, i32 0, i32 119, i32 0, i32 0, i32 0, i32 2, i32 8 } }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@pass_jump2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr null, ptr @rest_of_handle_jump2, ptr null, ptr null, i32 0, i32 119, i32 0, i32 0, i32 0, i32 2, i32 1025 } }, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@first_pass = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\0A\0Atry_optimize_cfg iteration %i\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Deleted label in block %i.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Deleting fallthru block %i.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Merged %d and %d without moving.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Moved block %d after %d and merged.\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Moved block %d before %d and merged.\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Simplifying condjump %i around jump %i\0A\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"Infinite loop in BB %i.\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Conditionals threaded.\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Forwarding edge %i->%i to %i failed.\0A\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"Splitting bb %i before %i insns\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Cross jumping from bb %i to bb %i; %i common insns\0A\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"Outcomes of branch in bb %i and %i differ too much (%i %i)\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Conditionals in bb %i and %i match.\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Tablejumps in bb %i and %i match.\0A\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_thread_jumps = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #0 !prof !255 {
  %1 = alloca ptr, align 8
  tail call void @find_unreachable_blocks() #17
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !256
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %59, label %4, !prof !260

4:                                                ; preds = %0
  %5 = tail call i32 @current_ir_type() #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !261
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !263
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !265
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !267
  %18 = load ptr, ptr %13, align 8, !tbaa !270
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %92, label %20

20:                                               ; preds = %10, %51
  %21 = phi ptr [ %53, %51 ], [ %17, %10 ]
  %22 = phi i8 [ %52, %51 ], [ 0, %10 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !267
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !271
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
  store ptr %34, ptr %1, align 8, !tbaa !261
  %35 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %34) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33, %46
  %38 = tail call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %34) #19
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !267
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !271
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
  br i1 %48, label %49, label %37, !llvm.loop !272

49:                                               ; preds = %46, %33
  %50 = phi ptr [ %24, %33 ], [ %40, %46 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  br label %51

51:                                               ; preds = %32, %49, %20
  %52 = phi i8 [ %22, %20 ], [ 1, %49 ], [ 1, %32 ]
  %53 = phi ptr [ %24, %20 ], [ %50, %49 ], [ %24, %32 ]
  %54 = load ptr, ptr @cfun, align 8, !tbaa !261
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !263
  %57 = load ptr, ptr %56, align 8, !tbaa !270
  %58 = icmp eq ptr %53, %57
  br i1 %58, label %88, label %20, !llvm.loop !274

59:                                               ; preds = %7, %4, %0
  %60 = load ptr, ptr @cfun, align 8, !tbaa !261
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !263
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !265
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !267
  %67 = load ptr, ptr %62, align 8, !tbaa !270
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %92, label %69, !prof !275

69:                                               ; preds = %59, %81
  %70 = phi ptr [ %82, %81 ], [ %60, %59 ]
  %71 = phi ptr [ %74, %81 ], [ %66, %59 ]
  %72 = phi i8 [ %83, %81 ], [ 0, %59 ]
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !267
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !271
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81, !prof !276

79:                                               ; preds = %69
  tail call void @delete_basic_block(ptr noundef nonnull %71) #17
  %80 = load ptr, ptr @cfun, align 8, !tbaa !261
  br label %81

81:                                               ; preds = %69, %79
  %82 = phi ptr [ %70, %69 ], [ %80, %79 ]
  %83 = phi i8 [ %72, %69 ], [ 1, %79 ]
  %84 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !263
  %86 = load ptr, ptr %85, align 8, !tbaa !270
  %87 = icmp eq ptr %74, %86
  br i1 %87, label %88, label %69, !prof !277, !llvm.loop !278

88:                                               ; preds = %51, %81
  %89 = phi i8 [ %83, %81 ], [ %52, %51 ]
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91, !prof !279

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
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !280 !PGOFuncName !281 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !282
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #4 !prof !280 !PGOFuncName !284 {
  %2 = load i32, ptr %0, align 8, !tbaa !282
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !282
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !261
  ret ptr %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !280 !PGOFuncName !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !261
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !261
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @tidy_fallthru_edges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_dead_jumptables() local_unnamed_addr #0 !prof !286 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !261
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  %4 = load ptr, ptr %3, align 8, !tbaa !270
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !287
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !265
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %78, label %10, !prof !288

10:                                               ; preds = %0, %69
  %11 = phi ptr [ %70, %69 ], [ %1, %0 ]
  %12 = phi ptr [ %72, %69 ], [ %6, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !289
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !290
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !289
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20, !prof !288

20:                                               ; preds = %10, %64
  %21 = phi ptr [ %65, %64 ], [ %18, %10 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %32, !prof !292

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %27 = load i32, ptr %26, align 8, !tbaa !289
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %67, label %29, !prof !293

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !289
  br label %64

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !289
  %36 = icmp eq i32 %23, 12
  br i1 %36, label %37, label %64, !prof !294

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !289
  %40 = lshr i32 %22, 28
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %64, !prof !295

43:                                               ; preds = %37
  %44 = load i32, ptr %35, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %64, !prof !296

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !289
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65534
  %52 = icmp eq i32 %51, 20
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %33, align 8, !tbaa !289
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.2, i32 noundef %57) #19
  br label %59

59:                                               ; preds = %56, %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !289
  %62 = tail call ptr @delete_insn(ptr noundef nonnull %35) #17
  %63 = tail call ptr @delete_insn(ptr noundef nonnull %21) #17
  br label %64

64:                                               ; preds = %29, %47, %32, %37, %43, %59
  %65 = phi ptr [ %61, %59 ], [ %35, %43 ], [ %35, %37 ], [ %35, %32 ], [ %35, %47 ], [ %31, %29 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %20, !prof !297, !llvm.loop !298

67:                                               ; preds = %64, %25
  %68 = load ptr, ptr @cfun, align 8, !tbaa !261
  br label %69

69:                                               ; preds = %67, %10
  %70 = phi ptr [ %68, %67 ], [ %11, %10 ]
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !287
  %73 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !263
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !265
  %77 = icmp eq ptr %72, %76
  br i1 %77, label %78, label %10, !prof !299, !llvm.loop !300

78:                                               ; preds = %69, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cleanup_cfg(i32 noundef %0) local_unnamed_addr #0 !prof !301 {
  %2 = tail call i32 @current_ir_type() #17
  %3 = icmp eq i32 %2, 2
  %4 = or i32 %0, 32
  %5 = select i1 %3, i32 %4, i32 %0, !prof !302
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !289
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !303

8:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 23) #17
  br label %9

9:                                                ; preds = %8, %1
  %10 = tail call zeroext i8 @delete_unreachable_blocks() #19, !range !304
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12, !prof !305

12:                                               ; preds = %9
  %13 = and i32 %5, 16
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr @reload_completed, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %22, label %18, !prof !306

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
  br i1 %25, label %26, label %27, !prof !307

26:                                               ; preds = %22
  tail call void @add_noreturn_fake_exit_edges() #17
  br label %27

27:                                               ; preds = %26, %22
  %28 = tail call zeroext i8 @dbg_cnt(i32 noundef 2) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %67, label %30, !prof !308

30:                                               ; preds = %27
  %31 = tail call fastcc zeroext i8 @try_optimize_cfg(i32 noundef %5) #19, !range !304
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %56, label %33, !prof !309

33:                                               ; preds = %30
  %34 = and i32 %5, 16
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %33, %53
  %37 = tail call zeroext i8 @delete_unreachable_blocks() #19, !range !304
  br i1 %35, label %38, label %56, !prof !310

38:                                               ; preds = %36
  %39 = and i32 %5, 1
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr @reload_completed, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %49, label %44, !prof !311

44:                                               ; preds = %38
  %45 = tail call ptr @get_insns() #17
  %46 = tail call i32 @max_reg_num() #17
  %47 = tail call i32 @delete_trivially_dead_insns(ptr noundef %45, i32 noundef %46) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49, !prof !312

49:                                               ; preds = %44, %38
  %50 = load i1, ptr @crossjumps_occured, align 1
  %51 = select i1 %25, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !313

52:                                               ; preds = %49
  tail call void @run_fast_dce() #17
  br label %53

53:                                               ; preds = %52, %49
  %54 = tail call fastcc zeroext i8 @try_optimize_cfg(i32 noundef %5) #19, !range !304
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %36, !prof !314, !llvm.loop !315

56:                                               ; preds = %53, %44, %36, %30
  %57 = phi i8 [ %23, %30 ], [ 1, %36 ], [ 1, %44 ], [ 1, %53 ]
  br i1 %25, label %58, label %59, !prof !307

58:                                               ; preds = %56
  tail call void @remove_fake_exit_edges() #17
  br label %59

59:                                               ; preds = %58, %56
  %60 = and i32 %5, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !316

62:                                               ; preds = %59
  tail call void @delete_dead_jumptables() #19
  br label %63

63:                                               ; preds = %59, %62
  %64 = load i8, ptr @timevar_enable, align 1, !tbaa !289
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66, !prof !303

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
define internal fastcc zeroext i8 @try_optimize_cfg(i32 noundef %0) unnamed_addr #0 !prof !317 !PGOFuncName !318 {
  %2 = and i32 %0, 10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !319

4:                                                ; preds = %1
  tail call void @clear_bb_flags() #17
  br label %5

5:                                                ; preds = %4, %1
  store i1 false, ptr @crossjumps_occured, align 1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !261
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !263
  %9 = load ptr, ptr %8, align 8, !tbaa !270
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !287
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !265
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %25, label %15, !prof !320

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %18, %15 ], [ %11, %5 ]
  tail call fastcc void @update_forwarder_flag(ptr noundef %16) #19
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !287
  %19 = load ptr, ptr @cfun, align 8, !tbaa !261
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !263
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !265
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %15, !prof !321, !llvm.loop !322

25:                                               ; preds = %15, %5
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !323
  %27 = tail call zeroext i8 %26() #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %354, !prof !335

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

38:                                               ; preds = %350, %29
  %39 = phi i32 [ 0, %29 ], [ %41, %350 ]
  %40 = phi i8 [ 0, %29 ], [ %352, %350 ]
  %41 = add nuw nsw i32 %39, 1
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !336

44:                                               ; preds = %38
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.5, i32 noundef %41) #19
  br label %46

46:                                               ; preds = %44, %38
  %47 = load ptr, ptr @cfun, align 8, !tbaa !261
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !263
  %50 = load ptr, ptr %49, align 8, !tbaa !270
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !287
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !265
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %343, label %56, !prof !337

56:                                               ; preds = %46, %334
  %57 = phi ptr [ %339, %334 ], [ %49, %46 ]
  %58 = phi i8 [ %336, %334 ], [ 0, %46 ]
  %59 = phi ptr [ %335, %334 ], [ %52, %46 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !338
  %61 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %60) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63, !prof !339

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !340
  %66 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %65) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %91, !prof !341

68:                                               ; preds = %63
  %69 = tail call fastcc zeroext i8 @trivially_empty_bb_p(ptr noundef nonnull %59) #19, !range !304
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %91, label %71, !prof !342

71:                                               ; preds = %68
  %72 = load ptr, ptr %57, align 8, !tbaa !270
  %73 = tail call fastcc ptr @single_succ_edge(ptr noundef %72) #19
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !343
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %91, label %77

77:                                               ; preds = %71, %56
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !267
  tail call void @delete_basic_block(ptr noundef nonnull %59) #17
  br i1 %31, label %80, label %81, !prof !345

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i8 [ %58, %77 ], [ 1, %80 ]
  %83 = load ptr, ptr @cfun, align 8, !tbaa !261
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !263
  %86 = load ptr, ptr %85, align 8, !tbaa !270
  %87 = icmp eq ptr %79, %86
  br i1 %87, label %88, label %334, !prof !346, !llvm.loop !347

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !287
  br label %334, !llvm.loop !347

91:                                               ; preds = %71, %68, %63
  %92 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %59) #19, !range !304
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %163, label %94, !prof !348

94:                                               ; preds = %91
  %95 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 7
  %97 = load i32, ptr %96, align 8, !tbaa !349
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %163, label %100, !prof !350

100:                                              ; preds = %94
  %101 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !349
  %104 = and i32 %103, 14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %163, !prof !351

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !289
  %109 = load ptr, ptr %108, align 8, !tbaa !352
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 12
  br i1 %112, label %113, label %163, !prof !353

113:                                              ; preds = %106
  %114 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %115 = load ptr, ptr @cfun, align 8, !tbaa !261
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !263
  %118 = load ptr, ptr %117, align 8, !tbaa !270
  %119 = icmp eq ptr %114, %118
  br i1 %119, label %139, label %120, !prof !354

120:                                              ; preds = %113
  %121 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !289
  %124 = getelementptr inbounds %struct.rtl_bb_info, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !290
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 9
  br i1 %128, label %129, label %139, !prof !355

129:                                              ; preds = %120
  %130 = load ptr, ptr %107, align 8, !tbaa !289
  %131 = load ptr, ptr %130, align 8, !tbaa !352
  %132 = tail call fastcc ptr @single_pred(ptr noundef nonnull %59) #19
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !289
  %135 = getelementptr inbounds %struct.rtl_bb_info, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !290
  %137 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %131, ptr noundef %136) #17
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %163, !prof !355

139:                                              ; preds = %129, %120, %113
  %140 = load ptr, ptr %107, align 8, !tbaa !289
  %141 = load ptr, ptr %140, align 8, !tbaa !352
  tail call void @delete_insn_chain(ptr noundef %141, ptr noundef %141, i8 noundef zeroext 0) #17
  %142 = load ptr, ptr %107, align 8, !tbaa !289
  %143 = load ptr, ptr %142, align 8, !tbaa !352
  %144 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 1
  %145 = load i32, ptr %144, align 8, !tbaa !289
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %156, !prof !354

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 2
  %149 = load ptr, ptr %148, align 8, !tbaa !289
  tail call void @reorder_insns_nobb(ptr noundef %141, ptr noundef %141, ptr noundef %149) #17
  %150 = load ptr, ptr %107, align 8, !tbaa !289
  store ptr %149, ptr %150, align 8, !tbaa !352
  %151 = load ptr, ptr %107, align 8, !tbaa !289
  %152 = getelementptr inbounds %struct.rtl_bb_info, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !290
  %154 = icmp eq ptr %153, %149
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  store ptr %141, ptr %152, align 8, !tbaa !290
  br label %156

156:                                              ; preds = %147, %155, %139
  %157 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159, !prof !355

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %161 = load i32, ptr %160, align 8, !tbaa !356
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %157, ptr noundef nonnull @.str.6, i32 noundef %161) #19
  br label %163

163:                                              ; preds = %156, %159, %129, %106, %100, %94, %91
  br i1 %31, label %164, label %222, !prof !357

164:                                              ; preds = %163
  %165 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %59) #19, !range !304
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %222, label %167, !prof !358

167:                                              ; preds = %164
  %168 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %169 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 7
  %170 = load i32, ptr %169, align 8, !tbaa !349
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %222, label %173, !prof !359

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %175 = load ptr, ptr %174, align 8, !tbaa !289
  %176 = load ptr, ptr %175, align 8, !tbaa !352
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 12
  br i1 %179, label %222, label %180, !prof !360

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 13
  %182 = load i32, ptr %181, align 8, !tbaa !271
  %183 = and i32 %182, 1024
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %222, label %185, !prof !361

185:                                              ; preds = %180
  %186 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %59) #19
  %187 = getelementptr inbounds %struct.edge_def, ptr %186, i64 0, i32 7
  %188 = load i32, ptr %187, align 8, !tbaa !349
  %189 = and i32 %188, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %222, label %191, !prof !362

191:                                              ; preds = %185
  %192 = load ptr, ptr @cfun, align 8, !tbaa !261
  %193 = getelementptr inbounds %struct.function, ptr %192, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !263
  %195 = getelementptr inbounds %struct.control_flow_graph, ptr %194, i64 0, i32 3
  %196 = load i32, ptr %195, align 8, !tbaa !363
  %197 = icmp sgt i32 %196, 3
  br i1 %197, label %198, label %222

198:                                              ; preds = %191
  %199 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %203 = load i32, ptr %202, align 8, !tbaa !356
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %199, ptr noundef nonnull @.str.7, i32 noundef %203) #19
  %205 = load ptr, ptr @cfun, align 8, !tbaa !261
  %206 = getelementptr inbounds %struct.function, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !263
  br label %208

208:                                              ; preds = %201, %198
  %209 = phi ptr [ %207, %201 ], [ %194, %198 ]
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !267
  %212 = load ptr, ptr %209, align 8, !tbaa !270
  %213 = icmp eq ptr %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 6
  %216 = load ptr, ptr %215, align 8, !tbaa !287
  br label %217

217:                                              ; preds = %208, %214
  %218 = phi ptr [ %216, %214 ], [ %211, %208 ]
  %219 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %59) #19
  %220 = tail call fastcc ptr @single_succ(ptr noundef nonnull %59) #19
  %221 = tail call ptr @redirect_edge_succ_nodup(ptr noundef %219, ptr noundef %220) #17
  tail call void @delete_basic_block(ptr noundef nonnull %59) #17
  br label %334, !llvm.loop !347

222:                                              ; preds = %191, %185, %180, %173, %167, %164, %163
  %223 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %59) #19, !range !304
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %280, label %225, !prof !364

225:                                              ; preds = %222
  %226 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %59) #19
  %227 = icmp eq ptr %226, null
  br i1 %227, label %280, label %228, !prof !365

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.edge_def, ptr %226, i64 0, i32 7
  %230 = load i32, ptr %229, align 8, !tbaa !349
  %231 = and i32 %230, 14
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %280, !prof !366

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.edge_def, ptr %226, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !343
  %236 = load ptr, ptr @cfun, align 8, !tbaa !261
  %237 = getelementptr inbounds %struct.function, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !263
  %239 = getelementptr inbounds %struct.control_flow_graph, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !265
  %241 = icmp eq ptr %235, %240
  br i1 %241, label %280, label %242, !prof !367

242:                                              ; preds = %233
  %243 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %235) #19, !range !304
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %280, label %245, !prof !368

245:                                              ; preds = %242
  %246 = icmp eq ptr %59, %235
  br i1 %246, label %280, label %247, !prof !369

247:                                              ; preds = %245
  br i1 %31, label %252, label %248, !prof !370

248:                                              ; preds = %247
  %249 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef nonnull %59, ptr noundef %235) #17
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %287, label %251, !prof !371

251:                                              ; preds = %248
  tail call void @merge_blocks(ptr noundef nonnull %59, ptr noundef %235) #17
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %59) #19
  br label %287

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %254 = load ptr, ptr %253, align 8, !tbaa !289
  %255 = getelementptr inbounds %struct.rtl_bb_info, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !290
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 9
  br i1 %259, label %260, label %275, !prof !372

260:                                              ; preds = %252
  %261 = load i32, ptr @reload_completed, align 4, !tbaa !256
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %266, label %263, !prof !373

263:                                              ; preds = %260
  %264 = tail call i32 @simplejump_p(ptr noundef nonnull %256) #17
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %280, label %275, !prof !373

266:                                              ; preds = %260
  %267 = tail call i32 @onlyjump_p(ptr noundef nonnull %256) #17
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %280, label %269, !prof !373

269:                                              ; preds = %266
  %270 = load ptr, ptr %253, align 8, !tbaa !289
  %271 = getelementptr inbounds %struct.rtl_bb_info, ptr %270, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !290
  %273 = tail call zeroext i8 @tablejump_p(ptr noundef %272, ptr noundef null, ptr noundef null) #17
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %280, !prof !374

275:                                              ; preds = %269, %263, %252
  %276 = tail call fastcc ptr @merge_blocks_move(ptr noundef nonnull %226, ptr noundef nonnull %59, ptr noundef %235, i32 noundef %0) #19
  %277 = icmp ne ptr %276, null
  %278 = select i1 %277, ptr %276, ptr %59, !prof !375
  %279 = zext i1 %277 to i8
  br label %280

280:                                              ; preds = %275, %269, %266, %263, %245, %242, %233, %228, %225, %222
  %281 = phi ptr [ %59, %228 ], [ %59, %263 ], [ %59, %269 ], [ %59, %266 ], [ %59, %245 ], [ %59, %242 ], [ %59, %233 ], [ %59, %225 ], [ %59, %222 ], [ %278, %275 ]
  %282 = phi i8 [ 0, %228 ], [ 0, %263 ], [ 0, %269 ], [ 0, %266 ], [ 0, %245 ], [ 0, %242 ], [ 0, %233 ], [ 0, %225 ], [ 0, %222 ], [ %279, %275 ]
  br i1 %33, label %283, label %287, !prof !376

283:                                              ; preds = %280
  %284 = tail call fastcc zeroext i8 @try_simplify_condjump(ptr noundef nonnull %281) #19, !range !304
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %287, label %286, !prof !377

286:                                              ; preds = %283
  br label %287

287:                                              ; preds = %251, %248, %280, %286, %283
  %288 = phi ptr [ %281, %286 ], [ %281, %283 ], [ %281, %280 ], [ %59, %248 ], [ %59, %251 ]
  %289 = phi i8 [ 1, %286 ], [ %282, %283 ], [ %282, %280 ], [ 0, %248 ], [ 1, %251 ]
  %290 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %288) #19, !range !304
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %319, label %292, !prof !378

292:                                              ; preds = %287
  %293 = tail call fastcc ptr @single_succ(ptr noundef nonnull %288) #19
  %294 = load ptr, ptr @cfun, align 8, !tbaa !261
  %295 = getelementptr inbounds %struct.function, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !263
  %297 = getelementptr inbounds %struct.control_flow_graph, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !265
  %299 = icmp eq ptr %293, %298
  br i1 %299, label %319, label %300, !prof !379

300:                                              ; preds = %292
  %301 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 7
  %302 = load ptr, ptr %301, align 8, !tbaa !289
  %303 = getelementptr inbounds %struct.rtl_bb_info, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !290
  %305 = tail call i32 @onlyjump_p(ptr noundef %304) #17
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %319, label %307, !prof !380

307:                                              ; preds = %300
  %308 = load ptr, ptr %301, align 8, !tbaa !289
  %309 = getelementptr inbounds %struct.rtl_bb_info, ptr %308, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !290
  %311 = tail call ptr @find_reg_note(ptr noundef %310, i32 noundef 29, ptr noundef null) #17
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %319, !prof !381

313:                                              ; preds = %307
  %314 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %288) #19
  %315 = tail call fastcc ptr @single_succ(ptr noundef nonnull %288) #19
  %316 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef %314, ptr noundef %315, i8 noundef zeroext %35) #17
  %317 = icmp eq ptr %316, null
  br i1 %317, label %319, label %318, !prof !382

318:                                              ; preds = %313
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %288) #19
  br label %319

319:                                              ; preds = %318, %313, %307, %300, %292, %287
  %320 = phi i8 [ %289, %307 ], [ 1, %318 ], [ %289, %313 ], [ %289, %300 ], [ %289, %292 ], [ %289, %287 ]
  %321 = tail call fastcc zeroext i8 @try_forward_edges(i32 noundef %0, ptr noundef nonnull %288) #19
  %322 = icmp eq i8 %321, 0
  %323 = select i1 %322, i8 %320, i8 1, !prof !383
  br i1 %37, label %329, label %324, !prof !384

324:                                              ; preds = %319
  %325 = tail call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef nonnull %288) #19, !range !304
  %326 = icmp eq i8 %325, 0
  %327 = icmp eq i8 %323, 0
  %328 = select i1 %326, i1 %327, i1 false
  br i1 %328, label %331, label %334, !prof !385

329:                                              ; preds = %319
  %330 = icmp eq i8 %323, 0
  br i1 %330, label %331, label %334, !prof !386

331:                                              ; preds = %324, %329
  %332 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 6
  %333 = load ptr, ptr %332, align 8, !tbaa !287
  br label %334

334:                                              ; preds = %324, %331, %329, %88, %81, %217
  %335 = phi ptr [ %218, %217 ], [ %90, %88 ], [ %79, %81 ], [ %333, %331 ], [ %288, %329 ], [ %288, %324 ]
  %336 = phi i8 [ 1, %217 ], [ %82, %88 ], [ %82, %81 ], [ %58, %331 ], [ 1, %329 ], [ 1, %324 ]
  %337 = load ptr, ptr @cfun, align 8, !tbaa !261
  %338 = getelementptr inbounds %struct.function, ptr %337, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !263
  %340 = getelementptr inbounds %struct.control_flow_graph, ptr %339, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !265
  %342 = icmp eq ptr %335, %341
  br i1 %342, label %343, label %56, !prof !387

343:                                              ; preds = %334, %46
  %344 = phi i8 [ 0, %46 ], [ %336, %334 ]
  %345 = phi ptr [ %52, %46 ], [ %335, %334 ]
  br i1 %37, label %350, label %346, !prof !388

346:                                              ; preds = %343
  %347 = tail call fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef %345) #19, !range !304
  %348 = icmp eq i8 %347, 0
  %349 = select i1 %348, i8 %344, i8 1, !prof !389
  br label %350

350:                                              ; preds = %346, %343
  %351 = phi i8 [ %344, %343 ], [ %349, %346 ]
  %352 = or i8 %351, %40
  store i1 false, ptr @first_pass, align 1
  %353 = icmp eq i8 %351, 0
  br i1 %353, label %354, label %38, !prof !390, !llvm.loop !391

354:                                              ; preds = %350, %25
  %355 = phi i8 [ 0, %25 ], [ %352, %350 ]
  %356 = load ptr, ptr @cfun, align 8, !tbaa !261
  %357 = getelementptr inbounds %struct.function, ptr %356, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !263
  %359 = load ptr, ptr %358, align 8, !tbaa !261
  %360 = icmp eq ptr %359, null
  br i1 %360, label %369, label %361, !prof !320

361:                                              ; preds = %354, %361
  %362 = phi ptr [ %367, %361 ], [ %359, %354 ]
  %363 = getelementptr inbounds %struct.basic_block_def, ptr %362, i64 0, i32 13
  %364 = load i32, ptr %363, align 8, !tbaa !271
  %365 = and i32 %364, -3073
  store i32 %365, ptr %363, align 8, !tbaa !271
  %366 = getelementptr inbounds %struct.basic_block_def, ptr %362, i64 0, i32 6
  %367 = load ptr, ptr %366, align 8, !tbaa !261
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %361, !prof !392, !llvm.loop !393

369:                                              ; preds = %361, %354
  ret i8 %355
}

; Function Attrs: optsize
declare void @run_fast_dce() local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_jump() #0 !prof !394 !PGOFuncName !395 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 39), align 1, !tbaa !396
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !405

3:                                                ; preds = %0
  tail call void @fixup_tail_calls() #17
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_jump2() #0 !prof !394 !PGOFuncName !406 {
  %1 = tail call ptr @get_insns() #17
  %2 = tail call i32 @max_reg_num() #17
  %3 = tail call i32 @delete_trivially_dead_insns(ptr noundef %1, i32 noundef %2) #17
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !407

6:                                                ; preds = %0
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !256
  tail call void @dump_flow_info(ptr noundef nonnull %4, i32 noundef %7) #17
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, ptr @optimize, align 4, !tbaa !256
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i32, ptr @flag_thread_jumps, align 4, !tbaa !256
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 8
  %15 = or disjoint i32 %14, %11
  %16 = tail call zeroext i8 @cleanup_cfg(i32 noundef %15) #19, !range !304
  ret i32 0
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @clear_bb_flags() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_forwarder_flag(ptr noundef %0) unnamed_addr #0 !prof !408 !PGOFuncName !409 {
  %2 = tail call zeroext i8 @forwarder_block_p(ptr noundef %0) #17
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !271
  %6 = and i32 %5, -1025
  %7 = select i1 %3, i32 0, i32 1024, !prof !410
  %8 = or disjoint i32 %6, %7
  store i32 %8, ptr %4, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !411 !PGOFuncName !412 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !413

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !414
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @trivially_empty_bb_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !416 !PGOFuncName !417 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !289
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %3, align 8, !tbaa !352
  %6 = load ptr, ptr %4, align 8, !tbaa !289
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %17, label %12, !prof !418

8:                                                ; preds = %12
  %9 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !289
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %17, label %12, !prof !419

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %8, label %17, !prof !420

17:                                               ; preds = %8, %12, %1
  %18 = phi i8 [ 1, %1 ], [ 0, %12 ], [ 1, %8 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !421 !PGOFuncName !422 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !304
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !423

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !340
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !424 !PGOFuncName !425 {
  %2 = load ptr, ptr %0, align 8, !tbaa !338
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !426 !PGOFuncName !427 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #19, !range !304
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !428

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !338
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !429 !PGOFuncName !430 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !431
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
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !432 !PGOFuncName !433 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !434 !PGOFuncName !435 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !340
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
define internal fastcc ptr @merge_blocks_move(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !436 !PGOFuncName !437 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !271
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !271
  %11 = xor i32 %10, %8
  %12 = and i32 %11, 96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %122, !prof !438

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !349
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19, !prof !372

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !356
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !356
  tail call void @merge_blocks(ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  tail call fastcc void @update_forwarder_flag(ptr noundef nonnull %1) #19
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !439

26:                                               ; preds = %19
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.9, i32 noundef %21, i32 noundef %23) #19
  br label %28

28:                                               ; preds = %26, %19
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !267
  %31 = load ptr, ptr @cfun, align 8, !tbaa !261
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !263
  %34 = load ptr, ptr %33, align 8, !tbaa !270
  %35 = icmp eq ptr %30, %34
  %36 = select i1 %35, ptr %1, ptr %30, !prof !440
  br label %122

37:                                               ; preds = %14
  %38 = and i32 %3, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %122, label %40, !prof !441

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %41 = or i32 %10, %8
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %120, !prof !442

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !443
  %47 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %46, ptr %47, align 8, !tbaa.struct !444
  %48 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %5) #19, !range !304
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %44, %56
  %51 = load ptr, ptr %5, align 8, !tbaa !261
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !349
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %57 = load i32, ptr %6, align 8
  %58 = load ptr, ptr %47, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %5) #19, !range !304
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %50, !llvm.loop !445

61:                                               ; preds = %56, %44
  %62 = load ptr, ptr %5, align 8, !tbaa !261
  br label %63

63:                                               ; preds = %50, %61
  %64 = phi ptr [ %62, %61 ], [ %51, %50 ]
  %65 = icmp eq ptr %64, null
  %66 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !443
  store ptr %66, ptr %47, align 8, !tbaa.struct !444
  %67 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %66, ptr noundef nonnull %5) #19, !range !304
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %63, %75
  %70 = load ptr, ptr %5, align 8, !tbaa !261
  %71 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !349
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %76 = load i32, ptr %6, align 8
  %77 = load ptr, ptr %47, align 8
  %78 = call fastcc zeroext i8 @ei_cond(i32 %76, ptr %77, ptr noundef nonnull %5) #19, !range !304
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %69, !llvm.loop !446

80:                                               ; preds = %75, %63
  %81 = load ptr, ptr %5, align 8, !tbaa !261
  br label %82

82:                                               ; preds = %69, %80
  %83 = phi ptr [ %81, %80 ], [ %70, %69 ]
  %84 = icmp eq ptr %83, null
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !267
  %87 = icmp eq ptr %86, %2
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !267
  br label %91

91:                                               ; preds = %88, %82
  %92 = phi ptr [ %90, %88 ], [ %86, %82 ]
  br i1 %65, label %93, label %99

93:                                               ; preds = %91
  tail call fastcc void @merge_blocks_move_successor_nojumps(ptr noundef nonnull %1, ptr noundef %2) #19
  %94 = load ptr, ptr @cfun, align 8, !tbaa !261
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !263
  %97 = load ptr, ptr %96, align 8, !tbaa !270
  %98 = icmp eq ptr %92, %97
  br i1 %98, label %117, label %120

99:                                               ; preds = %91
  br i1 %84, label %111, label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr %83, align 8, !tbaa !431
  %102 = load ptr, ptr @cfun, align 8, !tbaa !261
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !263
  %105 = load ptr, ptr %104, align 8, !tbaa !270
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
  %112 = load ptr, ptr @cfun, align 8, !tbaa !261
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !263
  %115 = load ptr, ptr %114, align 8, !tbaa !270
  %116 = icmp eq ptr %92, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %93
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !287
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
define internal fastcc noundef zeroext i8 @try_simplify_condjump(ptr noundef %0) unnamed_addr #0 !prof !447 !PGOFuncName !448 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %92, !prof !449

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !290
  %11 = tail call i32 @any_condjump_p(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %92, label %13, !prof !450

13:                                               ; preds = %6
  %14 = load ptr, ptr %2, align 8, !tbaa !340
  %15 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 0) #19
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !349
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 1) #19
  %21 = select i1 %19, ptr %20, ptr %15, !prof !451
  %22 = select i1 %19, ptr %15, ptr %20, !prof !451
  %23 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !343
  %25 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %24) #19, !range !304
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %92, label %27, !prof !452

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !287
  %30 = load ptr, ptr @cfun, align 8, !tbaa !261
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !263
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !265
  %35 = icmp eq ptr %29, %34
  br i1 %35, label %92, label %36, !prof !453

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %38 = load i32, ptr %37, align 8, !tbaa !271
  %39 = and i32 %38, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %92, label %41, !prof !454

41:                                               ; preds = %36
  %42 = tail call fastcc ptr @single_succ(ptr noundef nonnull %24) #19
  %43 = load i32, ptr %37, align 8, !tbaa !271
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !271
  %46 = xor i32 %45, %43
  %47 = and i32 %46, 96
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %92, !prof !455

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !349
  %52 = and i32 %51, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %92, !prof !455

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !343
  %57 = load ptr, ptr @cfun, align 8, !tbaa !261
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !263
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !265
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %92, label %63, !prof !456

63:                                               ; preds = %54
  %64 = tail call zeroext i8 @can_fallthru(ptr noundef nonnull %24, ptr noundef %56) #17
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %92, label %66, !prof !455

66:                                               ; preds = %63
  %67 = tail call ptr @block_label(ptr noundef nonnull %42) #17
  %68 = tail call i32 @invert_jump(ptr noundef %10, ptr noundef %67, i32 noundef 0) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !289
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !289
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !290
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !289
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.12, i32 noundef %75, i32 noundef %81) #19
  br label %83

83:                                               ; preds = %73, %70
  %84 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %22, ptr noundef %56) #17
  %85 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %21, ptr noundef nonnull %42) #17
  %86 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !349
  %88 = or i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !349
  %89 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !349
  %91 = and i32 %90, -2
  store i32 %91, ptr %89, align 8, !tbaa !349
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
define internal fastcc zeroext i8 @try_forward_edges(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !457 !PGOFuncName !458 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !289
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !290
  %8 = tail call ptr @find_reg_note(ptr noundef %7, i32 noundef 29, ptr noundef null) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %368, !prof !459

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %12 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !443
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !444
  %14 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %12) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %368, label %16, !prof !460

16:                                               ; preds = %10
  %17 = and i32 %0, 8
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %358
  %20 = phi ptr [ %14, %16 ], [ %363, %358 ]
  %21 = phi i8 [ 0, %16 ], [ %360, %358 ]
  %22 = phi ptr [ null, %16 ], [ %359, %358 ]
  %23 = load i1, ptr @first_pass, align 1
  %24 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %1) #17
  %25 = zext i1 %23 to i8
  %26 = or i8 %24, %25
  %27 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !349
  %29 = and i32 %28, 14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !461

31:                                               ; preds = %19
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %358, !llvm.loop !462

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !343
  %35 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !463
  %37 = load ptr, ptr @cfun, align 8, !tbaa !261
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !263
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !265
  %42 = icmp eq ptr %34, %41
  br i1 %42, label %54, label %43, !prof !464

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !289
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !290
  %48 = tail call ptr @find_reg_note(ptr noundef %47, i32 noundef 29, ptr noundef null) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %368, !prof !465

50:                                               ; preds = %43
  %51 = load ptr, ptr @cfun, align 8, !tbaa !261
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !263
  br label %54

54:                                               ; preds = %50, %32
  %55 = phi ptr [ %53, %50 ], [ %39, %32 ]
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !363
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %228, !prof !466

59:                                               ; preds = %54, %201
  %60 = phi ptr [ %202, %201 ], [ %22, %54 ]
  %61 = phi i8 [ %68, %201 ], [ %26, %54 ]
  %62 = phi i32 [ %205, %201 ], [ 0, %54 ]
  %63 = phi i8 [ %209, %201 ], [ 0, %54 ]
  %64 = phi i32 [ %206, %201 ], [ %36, %54 ]
  %65 = phi i32 [ %208, %201 ], [ 2, %54 ]
  %66 = phi ptr [ %204, %201 ], [ %34, %54 ]
  %67 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %66) #17
  %68 = or i8 %67, %61
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 13
  %70 = load i32, ptr %69, align 8, !tbaa !271
  %71 = and i32 %70, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %145, label %73, !prof !467

73:                                               ; preds = %59
  %74 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %66) #19
  %75 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !349
  %77 = and i32 %76, 8192
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %145, !prof !468

79:                                               ; preds = %73
  %80 = tail call fastcc ptr @single_succ(ptr noundef nonnull %66) #19
  %81 = load ptr, ptr @cfun, align 8, !tbaa !261
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !263
  %84 = getelementptr inbounds %struct.control_flow_graph, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !265
  %86 = icmp eq ptr %80, %85
  br i1 %86, label %145, label %87, !prof !469

87:                                               ; preds = %79
  %88 = tail call fastcc ptr @single_succ(ptr noundef nonnull %66) #19
  %89 = icmp eq ptr %66, %88
  br i1 %89, label %90, label %96, !prof !470

90:                                               ; preds = %87
  %91 = load ptr, ptr @cfun, align 8, !tbaa !261
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !263
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !363
  br label %201

96:                                               ; preds = %87
  %97 = load i32, ptr @optimize, align 4, !tbaa !256
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %193, !prof !470

99:                                               ; preds = %96
  %100 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %66) #19
  %101 = getelementptr inbounds %struct.edge_def, ptr %100, i64 0, i32 5
  %102 = load i32, ptr %101, align 8, !tbaa !463
  %103 = icmp ne i32 %102, 0
  %104 = icmp ne i32 %64, 0
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = tail call zeroext i8 @locator_eq(i32 noundef %102, i32 noundef %64) #17
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load ptr, ptr @cfun, align 8, !tbaa !261
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !263
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !363
  br label %117

115:                                              ; preds = %106, %99
  %116 = select i1 %103, i32 %102, i32 %64
  br label %117

117:                                              ; preds = %115, %109
  %118 = phi i32 [ %114, %109 ], [ %65, %115 ]
  %119 = phi i32 [ %64, %109 ], [ %116, %115 ]
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !289
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !290
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -7
  %127 = icmp ult i32 %126, 4
  br i1 %127, label %128, label %193

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !289
  %131 = icmp ne i32 %130, 0
  %132 = icmp ne i32 %119, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = tail call zeroext i8 @locator_eq(i32 noundef %130, i32 noundef %119) #17
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load ptr, ptr @cfun, align 8, !tbaa !261
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !263
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 3
  %142 = load i32, ptr %141, align 8, !tbaa !363
  br label %193

143:                                              ; preds = %134, %128
  %144 = select i1 %131, i32 %130, i32 %119
  br label %193

145:                                              ; preds = %79, %73, %59
  %146 = icmp ne i8 %68, 0
  %147 = select i1 %18, i1 %146, i1 false
  br i1 %147, label %148, label %216, !prof !471

148:                                              ; preds = %145
  %149 = tail call fastcc ptr @thread_jump(ptr noundef nonnull %20, ptr noundef nonnull %66) #19
  %150 = icmp eq ptr %149, null
  br i1 %150, label %216, label %151, !prof !472

151:                                              ; preds = %148
  %152 = icmp eq ptr %60, null
  br i1 %152, label %157, label %153, !prof !473

153:                                              ; preds = %151
  %154 = icmp sgt i32 %62, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %153
  %156 = zext nneg i32 %62 to i64
  br label %169

157:                                              ; preds = %151
  %158 = load ptr, ptr @cfun, align 8, !tbaa !261
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !263
  %161 = getelementptr inbounds %struct.control_flow_graph, ptr %160, i64 0, i32 3
  %162 = load i32, ptr %161, align 8, !tbaa !363
  %163 = sext i32 %162 to i64
  %164 = shl nsw i64 %163, 3
  %165 = tail call ptr @xmalloc(i64 noundef %164) #17
  br label %174

166:                                              ; preds = %169
  %167 = add nuw nsw i64 %170, 1
  %168 = icmp eq i64 %167, %156
  br i1 %168, label %174, label %169, !llvm.loop !474

169:                                              ; preds = %155, %166
  %170 = phi i64 [ 0, %155 ], [ %167, %166 ]
  %171 = getelementptr inbounds ptr, ptr %60, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !261
  %173 = icmp eq ptr %172, %149
  br i1 %173, label %238, label %166

174:                                              ; preds = %166, %153, %157
  %175 = phi ptr [ %165, %157 ], [ %60, %153 ], [ %60, %166 ]
  %176 = getelementptr inbounds %struct.edge_def, ptr %149, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !343
  %178 = icmp eq ptr %177, %1
  br i1 %178, label %216, label %179, !prof !475

179:                                              ; preds = %174
  %180 = load ptr, ptr @cfun, align 8, !tbaa !261
  %181 = getelementptr inbounds %struct.function, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !263
  %183 = getelementptr inbounds %struct.control_flow_graph, ptr %182, i64 0, i32 3
  %184 = load i32, ptr %183, align 8, !tbaa !363
  %185 = add nsw i32 %184, -2
  %186 = icmp slt i32 %62, %185
  br i1 %186, label %188, label %187, !prof !473

187:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #17
  br label %188

188:                                              ; preds = %179, %187
  %189 = add nsw i32 %62, 1
  %190 = sext i32 %62 to i64
  %191 = getelementptr inbounds ptr, ptr %175, i64 %190
  store ptr %149, ptr %191, align 8, !tbaa !261
  %192 = load ptr, ptr %176, align 8, !tbaa !343
  br label %193

193:                                              ; preds = %188, %143, %117, %137, %96
  %194 = phi i32 [ %65, %96 ], [ %142, %137 ], [ %118, %117 ], [ %118, %143 ], [ %65, %188 ]
  %195 = phi i32 [ %64, %96 ], [ %119, %137 ], [ %119, %117 ], [ %144, %143 ], [ %64, %188 ]
  %196 = phi i32 [ %62, %96 ], [ %62, %137 ], [ %62, %117 ], [ %62, %143 ], [ %189, %188 ]
  %197 = phi ptr [ %88, %96 ], [ %88, %137 ], [ %88, %117 ], [ %88, %143 ], [ %192, %188 ]
  %198 = phi i8 [ 0, %96 ], [ 0, %137 ], [ 0, %117 ], [ 0, %143 ], [ 1, %188 ]
  %199 = phi ptr [ %60, %96 ], [ %60, %137 ], [ %60, %117 ], [ %60, %143 ], [ %175, %188 ]
  %200 = icmp eq ptr %197, null
  br i1 %200, label %216, label %201, !prof !476

201:                                              ; preds = %90, %193
  %202 = phi ptr [ %60, %90 ], [ %199, %193 ]
  %203 = phi i8 [ 0, %90 ], [ %198, %193 ]
  %204 = phi ptr [ %66, %90 ], [ %197, %193 ]
  %205 = phi i32 [ %62, %90 ], [ %196, %193 ]
  %206 = phi i32 [ %64, %90 ], [ %195, %193 ]
  %207 = phi i32 [ %95, %90 ], [ %194, %193 ]
  %208 = add nsw i32 %207, 1
  %209 = or i8 %203, %63
  %210 = load ptr, ptr @cfun, align 8, !tbaa !261
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !263
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %212, i64 0, i32 3
  %214 = load i32, ptr %213, align 8, !tbaa !363
  %215 = icmp slt i32 %208, %214
  br i1 %215, label %59, label %216, !prof !477

216:                                              ; preds = %148, %145, %174, %193, %201
  %217 = phi ptr [ %66, %148 ], [ %66, %145 ], [ %66, %174 ], [ %66, %193 ], [ %204, %201 ]
  %218 = phi i8 [ %63, %148 ], [ %63, %145 ], [ %63, %174 ], [ %63, %193 ], [ %209, %201 ]
  %219 = phi i32 [ %65, %148 ], [ %65, %145 ], [ %65, %174 ], [ %194, %193 ], [ %208, %201 ]
  %220 = phi i32 [ %64, %148 ], [ %64, %145 ], [ %64, %174 ], [ %195, %193 ], [ %206, %201 ]
  %221 = phi i32 [ %62, %148 ], [ %62, %145 ], [ %62, %174 ], [ %196, %193 ], [ %205, %201 ]
  %222 = phi ptr [ %60, %148 ], [ %60, %145 ], [ %175, %174 ], [ %199, %193 ], [ %202, %201 ]
  %223 = load ptr, ptr @cfun, align 8, !tbaa !261
  %224 = getelementptr inbounds %struct.function, ptr %223, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !263
  %226 = getelementptr inbounds %struct.control_flow_graph, ptr %225, i64 0, i32 3
  %227 = load i32, ptr %226, align 8, !tbaa !363
  br label %228

228:                                              ; preds = %216, %54
  %229 = phi i32 [ %57, %54 ], [ %227, %216 ]
  %230 = phi ptr [ %55, %54 ], [ %225, %216 ]
  %231 = phi ptr [ %34, %54 ], [ %217, %216 ]
  %232 = phi i8 [ 0, %54 ], [ %218, %216 ]
  %233 = phi i32 [ 2, %54 ], [ %219, %216 ]
  %234 = phi i32 [ %36, %54 ], [ %220, %216 ]
  %235 = phi i32 [ 0, %54 ], [ %221, %216 ]
  %236 = phi ptr [ %22, %54 ], [ %222, %216 ]
  %237 = icmp slt i32 %233, %229
  br i1 %237, label %247, label %238, !prof !478

238:                                              ; preds = %169, %228
  %239 = phi ptr [ %236, %228 ], [ %60, %169 ]
  %240 = phi ptr [ %231, %228 ], [ %66, %169 ]
  %241 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %242 = icmp eq ptr %241, null
  br i1 %242, label %356, label %243

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.basic_block_def, ptr %240, i64 0, i32 9
  %245 = load i32, ptr %244, align 8, !tbaa !356
  %246 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %241, ptr noundef nonnull @.str.13, i32 noundef %245) #19
  br label %356

247:                                              ; preds = %228
  %248 = icmp eq ptr %231, %34
  br i1 %248, label %356, label %249, !prof !479

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 9
  %251 = load i64, ptr %250, align 8, !tbaa !480
  %252 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 8
  %253 = load i32, ptr %252, align 4, !tbaa !481
  store i32 %234, ptr %35, align 8, !tbaa !463
  %254 = icmp eq i8 %232, 0
  br i1 %254, label %265, label %255, !prof !482

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.control_flow_graph, ptr %230, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !265
  %258 = icmp eq ptr %231, %257
  br i1 %258, label %265, label %259, !prof !475

259:                                              ; preds = %255
  %260 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %20, ptr noundef %231) #17
  tail call fastcc void @notice_new_block(ptr noundef %260) #19
  %261 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %262 = icmp eq ptr %261, null
  br i1 %262, label %281, label %263, !prof !473

263:                                              ; preds = %259
  %264 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 23, i64 1, ptr nonnull %261)
  br label %281

265:                                              ; preds = %255, %249
  %266 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %20, ptr noundef %231) #17
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %281, !prof !483

268:                                              ; preds = %265
  %269 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %270 = icmp eq ptr %269, null
  br i1 %270, label %280, label %271, !prof !484

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %273 = load i32, ptr %272, align 8, !tbaa !356
  %274 = load ptr, ptr %33, align 8, !tbaa !343
  %275 = getelementptr inbounds %struct.basic_block_def, ptr %274, i64 0, i32 9
  %276 = load i32, ptr %275, align 8, !tbaa !356
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 9
  %278 = load i32, ptr %277, align 8, !tbaa !356
  %279 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %269, ptr noundef nonnull @.str.15, i32 noundef %273, i32 noundef %276, i32 noundef %278) #19
  br label %280

280:                                              ; preds = %271, %268
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %358, !llvm.loop !462

281:                                              ; preds = %265, %259, %263
  %282 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %284 = load i32, ptr %282, align 8, !tbaa !485
  %285 = mul nsw i32 %284, %253
  %286 = add nsw i32 %285, 5000
  %287 = sdiv i32 %286, 10000
  %288 = load i32, ptr %283, align 8, !tbaa !271
  %289 = and i32 %288, 1024
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %297, !prof !486

291:                                              ; preds = %281
  %292 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %1) #17
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %297, label %294, !prof !487

294:                                              ; preds = %291
  %295 = load i32, ptr %283, align 8, !tbaa !271
  %296 = or i32 %295, 1024
  store i32 %296, ptr %283, align 8, !tbaa !271
  br label %297

297:                                              ; preds = %294, %291, %281
  br label %298

298:                                              ; preds = %297, %350
  %299 = phi ptr [ %353, %350 ], [ %34, %297 ]
  %300 = phi i32 [ %343, %350 ], [ 0, %297 ]
  %301 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %299) #19, !range !304
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %303, label %315, !prof !488

303:                                              ; preds = %298
  %304 = icmp slt i32 %300, %235
  br i1 %304, label %306, label %305, !prof !473

305:                                              ; preds = %303
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.1) #17
  br label %306

306:                                              ; preds = %303, %305
  %307 = add nsw i32 %300, 1
  %308 = sext i32 %300 to i64
  %309 = getelementptr inbounds ptr, ptr %236, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !261
  %311 = load ptr, ptr %310, align 8, !tbaa !431
  %312 = icmp eq ptr %311, %299
  br i1 %312, label %314, label %313, !prof !473

313:                                              ; preds = %306
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 602, ptr noundef nonnull @.str.1) #17
  br label %314

314:                                              ; preds = %306, %313
  tail call void @update_bb_profile_for_threading(ptr noundef %299, i32 noundef %287, i64 noundef %251, ptr noundef nonnull %310) #17
  tail call void @update_br_prob_note(ptr noundef %299) #17
  br label %342

315:                                              ; preds = %298
  %316 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 8
  %317 = load i64, ptr %316, align 8, !tbaa !489
  %318 = sub nsw i64 %317, %251
  %319 = icmp slt i64 %318, 0
  br i1 %319, label %320, label %321, !prof !490

320:                                              ; preds = %315
  br label %321

321:                                              ; preds = %320, %315
  %322 = phi i64 [ 0, %320 ], [ %318, %315 ]
  store i64 %322, ptr %316, align 8, !tbaa !489
  %323 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 11
  %324 = load i32, ptr %323, align 8, !tbaa !485
  %325 = sub nsw i32 %324, %287
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %328, !prof !491

327:                                              ; preds = %321
  br label %328

328:                                              ; preds = %327, %321
  %329 = phi i32 [ 0, %327 ], [ %325, %321 ]
  store i32 %329, ptr %323, align 8, !tbaa !485
  %330 = icmp slt i32 %300, %235
  br i1 %330, label %331, label %339, !prof !490

331:                                              ; preds = %328
  %332 = sext i32 %300 to i64
  %333 = getelementptr inbounds ptr, ptr %236, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !261
  %335 = load ptr, ptr %334, align 8, !tbaa !431
  %336 = icmp eq ptr %299, %335
  %337 = zext i1 %336 to i32
  %338 = add nsw i32 %300, %337
  br label %339

339:                                              ; preds = %331, %328
  %340 = phi i32 [ %300, %328 ], [ %338, %331 ]
  %341 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %299) #19
  br label %342

342:                                              ; preds = %339, %314
  %343 = phi i32 [ %340, %339 ], [ %307, %314 ]
  %344 = phi ptr [ %341, %339 ], [ %310, %314 ]
  %345 = getelementptr inbounds %struct.edge_def, ptr %344, i64 0, i32 9
  %346 = load i64, ptr %345, align 8, !tbaa !480
  %347 = sub nsw i64 %346, %251
  %348 = icmp slt i64 %347, 0
  br i1 %348, label %349, label %350, !prof !492

349:                                              ; preds = %342
  br label %350

350:                                              ; preds = %349, %342
  %351 = phi i64 [ 0, %349 ], [ %347, %342 ]
  store i64 %351, ptr %345, align 8, !tbaa !480
  %352 = getelementptr inbounds %struct.edge_def, ptr %344, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !343
  %354 = icmp eq ptr %353, %231
  br i1 %354, label %355, label %298, !prof !493, !llvm.loop !494

355:                                              ; preds = %350
  br label %358, !llvm.loop !462

356:                                              ; preds = %247, %238, %243
  %357 = phi ptr [ %236, %247 ], [ %239, %238 ], [ %239, %243 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  br label %358

358:                                              ; preds = %280, %355, %356, %31
  %359 = phi ptr [ %22, %31 ], [ %357, %356 ], [ %236, %355 ], [ %236, %280 ]
  %360 = phi i8 [ %21, %31 ], [ %21, %356 ], [ 1, %355 ], [ %21, %280 ]
  %361 = load i32, ptr %3, align 8
  %362 = load ptr, ptr %13, align 8
  %363 = tail call fastcc ptr @ei_safe_edge(i32 %361, ptr %362) #19
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %19, !prof !495

365:                                              ; preds = %358
  %366 = icmp eq ptr %359, null
  br i1 %366, label %368, label %367, !prof !496

367:                                              ; preds = %365
  tail call void @free(ptr noundef nonnull %359) #19
  br label %368

368:                                              ; preds = %43, %10, %365, %367, %2
  %369 = phi i8 [ 0, %2 ], [ %360, %367 ], [ %360, %365 ], [ 0, %10 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i8 %369
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @try_crossjump_bb(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !497 !PGOFuncName !498 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = load ptr, ptr %1, align 8, !tbaa !338
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #19
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %158, label %8, !prof !499

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %1) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11, !prof !500

11:                                               ; preds = %8
  %12 = load ptr, ptr @cfun, align 8, !tbaa !261
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !263
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !265
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %25, label %18, !prof !501

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !289
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !290
  %23 = tail call i32 @computed_jump_p(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %158, !prof !502

25:                                               ; preds = %18, %11, %8
  %26 = load ptr, ptr %1, align 8, !tbaa !338
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 0) #19
  %28 = load ptr, ptr %27, align 8, !tbaa !431
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !271
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 1) #19
  %32 = load ptr, ptr %31, align 8, !tbaa !431
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !271
  %35 = xor i32 %34, %30
  %36 = and i32 %35, 96
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %158, !prof !503

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !349
  %41 = and i32 %40, 8192
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %158, !prof !503

43:                                               ; preds = %38
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !261
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 53, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !504
  %47 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %26) #19
  %48 = icmp ugt i32 %47, %46
  br i1 %48, label %158, label %49, !prof !506

49:                                               ; preds = %43
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !443
  %51 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %50, ptr %51, align 8, !tbaa.struct !444
  %52 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %3) #19, !range !304
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54, !prof !507

54:                                               ; preds = %49, %60
  %55 = load ptr, ptr %3, align 8, !tbaa !261
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !349
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65, !prof !508

60:                                               ; preds = %54
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %61 = load i32, ptr %4, align 8
  %62 = load ptr, ptr %51, align 8
  %63 = call fastcc zeroext i8 @ei_cond(i32 %61, ptr %62, ptr noundef nonnull %3) #19, !range !304
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %54, !prof !509, !llvm.loop !510

65:                                               ; preds = %60, %54, %49
  %66 = phi ptr [ null, %49 ], [ %55, %54 ], [ null, %60 ]
  %67 = load ptr, ptr %1, align 8, !tbaa !338
  %68 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %67) #19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %158, label %70, !prof !418

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
  br i1 %71, label %106, label %82, !prof !511

82:                                               ; preds = %76
  %83 = icmp eq ptr %80, %66
  br i1 %83, label %84, label %89, !prof !512

84:                                               ; preds = %99, %82, %106
  %85 = phi ptr [ %100, %99 ], [ %77, %82 ], [ %107, %106 ]
  %86 = phi ptr [ %100, %99 ], [ %78, %82 ], [ %107, %106 ]
  %87 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %86) #19
  %88 = icmp ult i32 %81, %87
  br i1 %88, label %76, label %154, !prof !513, !llvm.loop !514

89:                                               ; preds = %82
  %90 = load i1, ptr @first_pass, align 1
  br i1 %90, label %101, label %91, !prof !515

91:                                               ; preds = %89
  %92 = load ptr, ptr %80, align 8, !tbaa !431
  %93 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %92) #17
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %101, !prof !516

95:                                               ; preds = %91
  %96 = load ptr, ptr %66, align 8, !tbaa !431
  %97 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %96) #17
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %101, !prof !517

99:                                               ; preds = %95
  %100 = load ptr, ptr %1, align 8, !tbaa !338
  br label %84

101:                                              ; preds = %95, %91, %89
  %102 = tail call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr noundef %80, ptr noundef nonnull %66) #19, !range !304
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %148, !prof !518, !llvm.loop !514

104:                                              ; preds = %101
  %105 = load ptr, ptr %1, align 8, !tbaa !338
  br label %106

106:                                              ; preds = %104, %76
  %107 = phi ptr [ %105, %104 ], [ %77, %76 ]
  %108 = load ptr, ptr %80, align 8, !tbaa !431
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !340
  %111 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %110, i32 noundef 0) #19
  %112 = icmp eq ptr %111, %80
  br i1 %112, label %113, label %84, !prof !519

113:                                              ; preds = %106
  %114 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %107) #19
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %148, label %116, !prof !520

116:                                              ; preds = %113, %124
  %117 = phi ptr [ %125, %124 ], [ %107, %113 ]
  %118 = phi i32 [ %120, %124 ], [ 0, %113 ]
  %119 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %117, i32 noundef %118) #19
  %120 = add nuw i32 %118, 1
  %121 = icmp eq ptr %119, %80
  %122 = icmp eq ptr %119, %66
  %123 = or i1 %121, %122
  br i1 %123, label %124, label %128, !prof !521

124:                                              ; preds = %116, %128, %141, %145
  %125 = load ptr, ptr %1, align 8, !tbaa !338
  %126 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %125) #19
  %127 = icmp ult i32 %120, %126
  br i1 %127, label %116, label %148, !prof !522, !llvm.loop !523

128:                                              ; preds = %116
  %129 = load ptr, ptr %80, align 8, !tbaa !431
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 9
  %131 = load i32, ptr %130, align 8, !tbaa !356
  %132 = load ptr, ptr %119, align 8, !tbaa !431
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !356
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %124, label %136, !prof !524

136:                                              ; preds = %128
  %137 = load i1, ptr @first_pass, align 1
  br i1 %137, label %145, label %138, !prof !525

138:                                              ; preds = %136
  %139 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef nonnull %129) #17
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %145, !prof !526

141:                                              ; preds = %138
  %142 = load ptr, ptr %119, align 8, !tbaa !431
  %143 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %142) #17
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %124, label %145, !prof !527

145:                                              ; preds = %141, %138, %136
  %146 = tail call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr noundef nonnull %80, ptr noundef nonnull %119) #19, !range !304
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %124, label %148, !prof !528

148:                                              ; preds = %101, %145, %124, %113
  %149 = phi i32 [ %81, %113 ], [ 0, %145 ], [ %81, %124 ], [ 0, %101 ]
  %150 = phi i8 [ %74, %113 ], [ 1, %145 ], [ %74, %124 ], [ 1, %101 ]
  %151 = load ptr, ptr %1, align 8, !tbaa !338
  %152 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %151) #19
  %153 = icmp ult i32 %149, %152
  br i1 %153, label %72, label %154, !prof !529, !llvm.loop !514

154:                                              ; preds = %148, %84
  %155 = phi i8 [ %74, %84 ], [ %150, %148 ]
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %158, label %157, !prof !530

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
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !531 !PGOFuncName !532 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !261
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !533 !PGOFuncName !534 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !535 !PGOFuncName !536 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !304
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !537

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !261
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !538 !PGOFuncName !539 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !540

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !541

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !542
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !542
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_blocks_move_successor_nojumps(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !280 !PGOFuncName !544 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !271
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !271
  %9 = xor i32 %8, %6
  %10 = and i32 %9, 96
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !289
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !290
  %17 = call zeroext i8 @tablejump_p(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %3, align 8, !tbaa !261
  %21 = call ptr @prev_active_insn(ptr noundef %20) #17
  %22 = load ptr, ptr %13, align 8, !tbaa !289
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !290
  %25 = icmp eq ptr %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 8, !tbaa !261
  store ptr %27, ptr %23, align 8, !tbaa !290
  br label %28

28:                                               ; preds = %26, %19, %12
  %29 = load ptr, ptr %13, align 8, !tbaa !289
  %30 = getelementptr inbounds %struct.rtl_bb_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !290
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !289
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr %33, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 11
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call ptr @delete_insn(ptr noundef nonnull %33) #17
  %41 = load ptr, ptr %13, align 8, !tbaa !289
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !290
  br label %44

44:                                               ; preds = %39, %35, %28
  %45 = phi ptr [ %43, %39 ], [ %31, %35 ], [ %31, %28 ]
  %46 = phi ptr [ %41, %39 ], [ %29, %35 ], [ %29, %28 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !352
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !289
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !290
  call void @reorder_insns_nobb(ptr noundef %47, ptr noundef %45, ptr noundef %51) #17
  %52 = load ptr, ptr %13, align 8, !tbaa !289
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  store ptr %16, ptr %53, align 8, !tbaa !290
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !356
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !356
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.10, i32 noundef %58, i32 noundef %60) #19
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
define internal fastcc void @notice_new_block(ptr noundef %0) unnamed_addr #0 !prof !545 !PGOFuncName !546 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !473

3:                                                ; preds = %1
  %4 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %0) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !271
  %9 = or i32 %8, 1024
  store i32 %9, ptr %7, align 8, !tbaa !271
  br label %10

10:                                               ; preds = %1, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_blocks_move_predecessor_nojumps(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !280 !PGOFuncName !547 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !271
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !271
  %7 = xor i32 %6, %4
  %8 = and i32 %7, 96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !289
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !290
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
  %22 = load ptr, ptr %11, align 8, !tbaa !289
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !290
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !289
  %27 = load ptr, ptr %26, align 8, !tbaa !352
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !289
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr %22, align 8, !tbaa !352
  tail call void @reorder_insns_nobb(ptr noundef %32, ptr noundef %24, ptr noundef %29) #17
  br label %33

33:                                               ; preds = %31, %20
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #17
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !356
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !356
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.11, i32 noundef %38, i32 noundef %40) #19
  br label %42

42:                                               ; preds = %36, %33
  tail call void @unlink_block(ptr noundef nonnull %0) #17
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !267
  tail call void @link_block(ptr noundef nonnull %0, ptr noundef %44) #17
  tail call void @merge_blocks(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %45

45:                                               ; preds = %2, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !548 !PGOFuncName !549 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !550

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !551 !PGOFuncName !552 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !553

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !554 !PGOFuncName !555 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !556

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !261
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
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !557 !PGOFuncName !558 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !304
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !559

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
define internal fastcc ptr @thread_jump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !560 !PGOFuncName !561 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !271
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %270, !prof !562

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !431
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !340
  %14 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %13) #19
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %270, !prof !563

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !340
  %19 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %18) #19
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %23, label %21, !prof !564

21:                                               ; preds = %16
  %22 = or disjoint i32 %7, 2048
  store i32 %22, ptr %6, align 8, !tbaa !271
  br label %270

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !289
  %26 = getelementptr inbounds %struct.rtl_bb_info, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !290
  %28 = tail call i32 @any_condjump_p(ptr noundef %27) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %270, label %30, !prof !565

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !289
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !290
  %35 = tail call i32 @any_condjump_p(ptr noundef %34) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37, !prof !565

37:                                               ; preds = %30
  %38 = load ptr, ptr %31, align 8, !tbaa !289
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !290
  %41 = tail call i32 @onlyjump_p(ptr noundef %40) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46, !prof !565

43:                                               ; preds = %37, %30
  %44 = load i32, ptr %6, align 8, !tbaa !271
  %45 = or i32 %44, 2048
  store i32 %45, ptr %6, align 8, !tbaa !271
  br label %270

46:                                               ; preds = %37
  %47 = load ptr, ptr %0, align 8, !tbaa !431
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !289
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !290
  %52 = tail call ptr @pc_set(ptr noundef %51) #17
  %53 = load ptr, ptr %31, align 8, !tbaa !289
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !290
  %56 = tail call ptr @pc_set(ptr noundef %55) #17
  %57 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !349
  %59 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !289
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !289
  %63 = load ptr, ptr @global_rtl, align 16, !tbaa !261
  %64 = icmp eq ptr %62, %63
  %65 = and i32 %58, 1
  %66 = icmp eq i32 %65, 0
  %67 = xor i1 %66, %64
  %68 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !289
  %70 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !289
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !289
  store ptr %73, ptr %3, align 8, !tbaa !261
  br i1 %67, label %81, label %74, !prof !566

74:                                               ; preds = %46
  %75 = load ptr, ptr %0, align 8, !tbaa !431
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !289
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !290
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
  %88 = load ptr, ptr %31, align 8, !tbaa !289
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !290
  %91 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %73, ptr noundef %90) #17
  %92 = tail call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %87) #17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97, !prof !567

94:                                               ; preds = %84
  %95 = tail call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %91) #17
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %270, label %97, !prof !568

97:                                               ; preds = %94, %84
  %98 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !289
  %100 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !289
  %102 = tail call i32 @rtx_equal_p(ptr noundef %99, ptr noundef %101) #17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %270, label %104, !prof !569

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !289
  %107 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !289
  %109 = tail call i32 @rtx_equal_p(ptr noundef %106, ptr noundef %108) #17
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %270, label %111, !prof !570

111:                                              ; preds = %104
  %112 = load ptr, ptr %31, align 8, !tbaa !289
  %113 = load ptr, ptr %112, align 8, !tbaa !352
  %114 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 2
  %115 = load ptr, ptr %114, align 8, !tbaa !289
  %116 = getelementptr inbounds %struct.rtl_bb_info, ptr %112, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !290
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !289
  %120 = icmp eq ptr %115, %119
  br i1 %120, label %147, label %121, !prof !571

121:                                              ; preds = %111, %138
  %122 = phi ptr [ %139, %138 ], [ %112, %111 ]
  %123 = phi ptr [ %141, %138 ], [ %115, %111 ]
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -7
  %127 = icmp ult i32 %126, 4
  br i1 %127, label %128, label %138, !prof !572

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !289
  %131 = tail call i32 @side_effects_p(ptr noundef %130) #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135, !prof !573

133:                                              ; preds = %128
  %134 = load ptr, ptr %31, align 8, !tbaa !289
  br label %138

135:                                              ; preds = %128
  %136 = load i32, ptr %6, align 8, !tbaa !271
  %137 = or i32 %136, 2048
  store i32 %137, ptr %6, align 8, !tbaa !271
  br label %270

138:                                              ; preds = %133, %121
  %139 = phi ptr [ %134, %133 ], [ %122, %121 ]
  %140 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 2
  %141 = load ptr, ptr %140, align 8, !tbaa !289
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %139, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !290
  %144 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 2
  %145 = load ptr, ptr %144, align 8, !tbaa !289
  %146 = icmp eq ptr %141, %145
  br i1 %146, label %147, label %121, !prof !574, !llvm.loop !575

147:                                              ; preds = %138, %111
  tail call void @cselib_init(i32 noundef 0) #17
  %148 = load ptr, ptr %0, align 8, !tbaa !431
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !289
  %151 = load ptr, ptr %150, align 8, !tbaa !352
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 2
  %153 = load ptr, ptr %152, align 8, !tbaa !289
  %154 = getelementptr inbounds %struct.rtl_bb_info, ptr %150, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !290
  %156 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %157 = load ptr, ptr %156, align 8, !tbaa !289
  %158 = icmp eq ptr %153, %157
  br i1 %158, label %179, label %159, !prof !571

159:                                              ; preds = %147, %168
  %160 = phi ptr [ %169, %168 ], [ %148, %147 ]
  %161 = phi ptr [ %171, %168 ], [ %153, %147 ]
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = add nsw i32 %163, -7
  %165 = icmp ult i32 %164, 4
  br i1 %165, label %166, label %168, !prof !576

166:                                              ; preds = %159
  tail call void @cselib_process_insn(ptr noundef nonnull %161) #17
  %167 = load ptr, ptr %0, align 8, !tbaa !431
  br label %168

168:                                              ; preds = %159, %166
  %169 = phi ptr [ %160, %159 ], [ %167, %166 ]
  %170 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1, i32 0, i32 0, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !289
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !289
  %174 = getelementptr inbounds %struct.rtl_bb_info, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !290
  %176 = getelementptr inbounds %struct.rtx_def, ptr %175, i64 0, i32 1, i32 0, i32 0, i64 2
  %177 = load ptr, ptr %176, align 8, !tbaa !289
  %178 = icmp eq ptr %171, %177
  br i1 %178, label %179, label %159, !prof !577, !llvm.loop !578

179:                                              ; preds = %168, %147
  %180 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @bitmap_clear(ptr noundef %180) #17
  %181 = load ptr, ptr %31, align 8, !tbaa !289
  %182 = load ptr, ptr %181, align 8, !tbaa !352
  %183 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1, i32 0, i32 0, i64 2
  %184 = load ptr, ptr %183, align 8, !tbaa !289
  %185 = getelementptr inbounds %struct.rtl_bb_info, ptr %181, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !290
  %187 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !289
  %189 = icmp eq ptr %184, %188
  br i1 %189, label %242, label %190, !prof !571

190:                                              ; preds = %179, %225
  %191 = phi ptr [ %229, %225 ], [ %184, %179 ]
  %192 = phi i32 [ %226, %225 ], [ undef, %179 ]
  %193 = load i32, ptr %191, align 8
  %194 = and i32 %193, 65535
  %195 = add nsw i32 %194, -7
  %196 = icmp ult i32 %195, 4
  br i1 %196, label %197, label %225, !prof !579

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !289
  %200 = load i32, ptr %199, align 8
  %201 = and i32 %200, 65535
  %202 = icmp eq i32 %201, 15
  br i1 %202, label %203, label %221, !prof !580

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !289
  %206 = load i32, ptr %205, align 8, !tbaa !581
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %225, label %208, !prof !583

208:                                              ; preds = %203, %208
  %209 = phi i64 [ %216, %208 ], [ 0, %203 ]
  %210 = phi ptr [ %217, %208 ], [ %205, %203 ]
  %211 = phi i8 [ %215, %208 ], [ 0, %203 ]
  %212 = getelementptr inbounds %struct.rtvec_def, ptr %210, i64 0, i32 1, i64 %209
  %213 = load ptr, ptr %212, align 8, !tbaa !261
  %214 = tail call fastcc zeroext i8 @mark_effect(ptr noundef %213, ptr noundef %180) #19, !range !304
  %215 = or i8 %214, %211
  %216 = add nuw nsw i64 %209, 1
  %217 = load ptr, ptr %204, align 8, !tbaa !289
  %218 = load i32, ptr %217, align 8, !tbaa !581
  %219 = zext i32 %218 to i64
  %220 = icmp ult i64 %216, %219
  br i1 %220, label %208, label %223, !prof !584, !llvm.loop !585

221:                                              ; preds = %197
  %222 = tail call fastcc zeroext i8 @mark_effect(ptr noundef nonnull %199, ptr noundef %180) #19, !range !304
  br label %225

223:                                              ; preds = %208
  %224 = trunc i64 %216 to i32
  br label %225

225:                                              ; preds = %223, %203, %190, %221
  %226 = phi i32 [ %192, %190 ], [ %192, %221 ], [ 0, %203 ], [ %224, %223 ]
  %227 = phi i8 [ 0, %190 ], [ %222, %221 ], [ 0, %203 ], [ %215, %223 ]
  tail call void @cselib_process_insn(ptr noundef nonnull %191) #17
  %228 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 2
  %229 = load ptr, ptr %228, align 8, !tbaa !289
  %230 = load ptr, ptr %31, align 8, !tbaa !289
  %231 = getelementptr inbounds %struct.rtl_bb_info, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !290
  %233 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 2
  %234 = load ptr, ptr %233, align 8, !tbaa !289
  %235 = icmp ne ptr %229, %234
  %236 = icmp eq i8 %227, 0
  %237 = select i1 %235, i1 %236, i1 false, !prof !586
  br i1 %237, label %190, label %238, !prof !587, !llvm.loop !588

238:                                              ; preds = %225
  store i32 %226, ptr %4, align 4, !tbaa !256
  br i1 %236, label %242, label %239, !prof !589

239:                                              ; preds = %238
  %240 = load i32, ptr %6, align 8, !tbaa !271
  %241 = or i32 %240, 2048
  store i32 %241, ptr %6, align 8, !tbaa !271
  br label %269

242:                                              ; preds = %179, %238
  %243 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @mentions_nonequal_regs, ptr noundef %180) #17
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %269, !prof !590

245:                                              ; preds = %242
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %180, ptr noundef nonnull %4) #19
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !304
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %269, !prof !473

248:                                              ; preds = %245
  call void @bitmap_obstack_free(ptr noundef %180) #17
  call void @cselib_finish() #17
  %249 = call i32 @comparison_dominates_p(i32 noundef %85, i32 noundef %87) #17
  %250 = icmp ne i32 %249, 0
  %251 = load ptr, ptr %70, align 8, !tbaa !289
  %252 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !289
  %254 = load ptr, ptr @global_rtl, align 16, !tbaa !261
  %255 = icmp ne ptr %253, %254
  %256 = xor i1 %250, %255
  %257 = load ptr, ptr %17, align 8, !tbaa !340
  %258 = call fastcc ptr @VEC_edge_base_index(ptr noundef %257, i32 noundef 0) #19
  %259 = getelementptr inbounds %struct.edge_def, ptr %258, i64 0, i32 7
  %260 = load i32, ptr %259, align 8, !tbaa !349
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  br i1 %256, label %266, label %263, !prof !473

263:                                              ; preds = %248
  br i1 %262, label %270, label %264

264:                                              ; preds = %263
  %265 = call fastcc ptr @VEC_edge_base_index(ptr noundef %257, i32 noundef 1) #19
  br label %270

266:                                              ; preds = %248
  br i1 %262, label %267, label %270, !prof !473

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
define internal fastcc noundef zeroext i8 @mark_effect(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !591 !PGOFuncName !592 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %68 [
    i16 25, label %5
    i16 23, label %32
  ], !prof !593

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !289
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %68, !prof !594

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #19
  %13 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %12) #17
  %14 = icmp slt i32 %12, 53
  br i1 %14, label %15, label %68, !prof !594

15:                                               ; preds = %11
  %16 = sext i32 %12 to i64
  %17 = load i32, ptr %7, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !289
  %23 = icmp ugt i8 %22, 1
  br i1 %23, label %24, label %68, !prof !583

24:                                               ; preds = %15
  %25 = zext i8 %22 to i32
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ %28, %26 ], [ %25, %24 ]
  %28 = add nsw i32 %27, -1
  %29 = add nsw i32 %28, %12
  %30 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %29) #17
  %31 = icmp ugt i32 %27, 2
  br i1 %31, label %26, label %68, !prof !595, !llvm.loop !596

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !289
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !289
  %37 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %34, ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %68, !prof !597

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !289
  %41 = load ptr, ptr @global_rtl, align 16, !tbaa !261
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %68, label %43, !prof !598

43:                                               ; preds = %39
  %44 = load i32, ptr %40, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %68, !prof !599

47:                                               ; preds = %43
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %40) #19
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %48) #17
  %50 = icmp slt i32 %48, 53
  br i1 %50, label %51, label %68, !prof !600

51:                                               ; preds = %47
  %52 = sext i32 %48 to i64
  %53 = load i32, ptr %40, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %52, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !289
  %59 = icmp ugt i8 %58, 1
  br i1 %59, label %60, label %68, !prof !601

60:                                               ; preds = %51
  %61 = zext i8 %58 to i32
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i32 [ %64, %62 ], [ %61, %60 ]
  %64 = add nsw i32 %63, -1
  %65 = add nsw i32 %64, %48
  %66 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %65) #17
  %67 = icmp ugt i32 %63, 2
  br i1 %67, label %62, label %68, !prof !595, !llvm.loop !602

68:                                               ; preds = %62, %26, %51, %15, %2, %47, %43, %39, %32, %5, %11
  %69 = phi i8 [ 0, %11 ], [ 0, %5 ], [ 0, %32 ], [ 0, %39 ], [ 1, %43 ], [ 0, %47 ], [ 0, %2 ], [ 0, %15 ], [ 0, %51 ], [ 0, %26 ], [ 0, %62 ]
  ret i8 %69
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mentions_nonequal_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !603 !PGOFuncName !604 {
  %3 = load ptr, ptr %0, align 8, !tbaa !261
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %31, !prof !605

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #19
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %8) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31, !prof !590

11:                                               ; preds = %7
  %12 = icmp slt i32 %8, 53
  br i1 %12, label %13, label %31, !prof !473

13:                                               ; preds = %11
  %14 = sext i32 %8 to i64
  %15 = load ptr, ptr %0, align 8, !tbaa !261
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %14, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !289
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %26, %13
  %24 = phi i32 [ %22, %13 ], [ %27, %26 ]
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %31, label %26, !prof !473

26:                                               ; preds = %23
  %27 = add nsw i32 %24, -1
  %28 = add nsw i32 %27, %8
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %28) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %31, !llvm.loop !606

31:                                               ; preds = %23, %26, %11, %2, %7
  %32 = phi i32 [ 1, %7 ], [ 0, %2 ], [ 0, %11 ], [ 0, %23 ], [ 1, %26 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !545 !PGOFuncName !607 {
  %4 = load ptr, ptr %1, align 8, !tbaa !608
  store ptr %4, ptr %0, align 8, !tbaa !610
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !612
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !473

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !610
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !613
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !615
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !616
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !617
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !256
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !545 !PGOFuncName !618 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !617
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !473

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !256
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !619

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !256
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !256
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !615
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !610
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !615
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !418

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !616
  store i64 %35, ptr %3, align 8, !tbaa !617
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !473

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !256
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !256
  %40 = load i32, ptr %23, align 8, !tbaa !615
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !615
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !466, !llvm.loop !620

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !621
  store ptr %44, ptr %0, align 8, !tbaa !610
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !473

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !613
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !256
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !617
  store i32 %16, ptr %1, align 4, !tbaa !256
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !622 !PGOFuncName !623 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !289
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
define internal fastcc noundef zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !624 !PGOFuncName !625 {
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
  %16 = load ptr, ptr %1, align 8, !tbaa !431
  %17 = load ptr, ptr %2, align 8, !tbaa !431
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  store ptr null, ptr %5, align 8, !tbaa !261
  store ptr null, ptr %4, align 8, !tbaa !261
  %18 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !626

20:                                               ; preds = %3
  %21 = load i32, ptr @reload_completed, align 4, !tbaa !256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %434

23:                                               ; preds = %20, %3
  %24 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %16) #19, !range !304
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26, !prof !627

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !271
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !628

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %16) #19
  %33 = load ptr, ptr %32, align 8, !tbaa !431
  br label %34

34:                                               ; preds = %31, %26, %23
  %35 = phi ptr [ %33, %31 ], [ %16, %26 ], [ %16, %23 ]
  %36 = phi ptr [ %32, %31 ], [ %1, %26 ], [ %1, %23 ]
  %37 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %17) #19, !range !304
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %47, label %39, !prof !629

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !271
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44, !prof !630

44:                                               ; preds = %39
  %45 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %17) #19
  %46 = load ptr, ptr %45, align 8, !tbaa !431
  br label %47

47:                                               ; preds = %44, %39, %34
  %48 = phi ptr [ %46, %44 ], [ %17, %39 ], [ %17, %34 ]
  %49 = phi ptr [ %45, %44 ], [ %2, %39 ], [ %2, %34 ]
  %50 = load ptr, ptr @cfun, align 8, !tbaa !261
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !263
  %53 = load ptr, ptr %52, align 8, !tbaa !270
  %54 = icmp eq ptr %35, %53
  %55 = icmp eq ptr %48, %53
  %56 = select i1 %54, i1 true, i1 %55
  %57 = icmp eq ptr %35, %48
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %434, label %59, !prof !631

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !343
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 13
  %63 = load i32, ptr %62, align 8, !tbaa !271
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66, !prof !632

66:                                               ; preds = %59
  %67 = tail call fastcc ptr @single_succ(ptr noundef nonnull %61) #19
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 13
  %69 = load i32, ptr %68, align 8, !tbaa !271
  %70 = and i32 %69, 1024
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %434, !prof !633

72:                                               ; preds = %66, %59
  %73 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !343
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !271
  %77 = and i32 %76, 1024
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79, !prof !634

79:                                               ; preds = %72
  %80 = tail call fastcc ptr @single_succ(ptr noundef nonnull %74) #19
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 13
  %82 = load i32, ptr %81, align 8, !tbaa !271
  %83 = and i32 %82, 1024
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %434, !prof !635

85:                                               ; preds = %79, %72
  %86 = load ptr, ptr %35, align 8, !tbaa !338
  %87 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %86) #19
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %434, label %89, !prof !636

89:                                               ; preds = %85
  %90 = load ptr, ptr %48, align 8, !tbaa !338
  %91 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %90) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %434, label %93, !prof !637

93:                                               ; preds = %89
  %94 = tail call fastcc zeroext i8 @outgoing_edges_match(i32 noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %48) #19
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %434, label %96, !prof !638

96:                                               ; preds = %93
  %97 = call fastcc i32 @flow_find_cross_jump(i32 noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %48, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %98 = load ptr, ptr @compiler_params, align 8, !tbaa !261
  %99 = getelementptr inbounds %struct.param_info, ptr %98, i64 54, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !504
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %108, !prof !639

102:                                              ; preds = %96
  %103 = load ptr, ptr %4, align 8, !tbaa !261
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !289
  %106 = load ptr, ptr %105, align 8, !tbaa !352
  %107 = icmp eq ptr %103, %106
  br i1 %107, label %108, label %434, !prof !640

108:                                              ; preds = %102, %96
  %109 = load ptr, ptr %60, align 8, !tbaa !343
  %110 = tail call fastcc zeroext i8 @block_has_preserve_label(ptr noundef %109) #19, !range !304
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %117, label %112, !prof !641

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %114 = load i32, ptr %113, align 8, !tbaa !349
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %434

117:                                              ; preds = %112, %108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !289
  %120 = getelementptr inbounds %struct.rtl_bb_info, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !290
  %122 = call zeroext i8 @tablejump_p(ptr noundef %121, ptr noundef nonnull %8, ptr noundef nonnull %10) #17
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %155, label %124, !prof !641

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !289
  %127 = getelementptr inbounds %struct.rtl_bb_info, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !290
  %129 = call zeroext i8 @tablejump_p(ptr noundef %128, ptr noundef nonnull %9, ptr noundef nonnull %11) #17
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %155, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr %8, align 8, !tbaa !261
  %133 = load ptr, ptr %9, align 8, !tbaa !261
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %155, label %135

135:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  store ptr %132, ptr %12, align 8, !tbaa !642
  %136 = getelementptr inbounds %struct.replace_label_data, ptr %12, i64 0, i32 1
  store ptr %133, ptr %136, align 8, !tbaa !644
  %137 = getelementptr inbounds %struct.replace_label_data, ptr %12, i64 0, i32 2
  store i8 1, ptr %137, align 8, !tbaa !645
  %138 = call ptr @get_insns() #17
  store ptr %138, ptr %13, align 8, !tbaa !261
  %139 = icmp eq ptr %138, null
  br i1 %139, label %154, label %140

140:                                              ; preds = %135, %149
  %141 = phi ptr [ %152, %149 ], [ %138, %135 ]
  %142 = load ptr, ptr %118, align 8, !tbaa !289
  %143 = getelementptr inbounds %struct.rtl_bb_info, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !290
  %145 = icmp eq ptr %141, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = call i32 @for_each_rtx(ptr noundef nonnull %13, ptr noundef nonnull @replace_label, ptr noundef nonnull %12) #17
  %148 = load ptr, ptr %13, align 8, !tbaa !261
  br label %149

149:                                              ; preds = %140, %146
  %150 = phi ptr [ %141, %140 ], [ %148, %146 ]
  %151 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1, i32 0, i32 0, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !289
  store ptr %152, ptr %13, align 8, !tbaa !261
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %140, !llvm.loop !646

154:                                              ; preds = %149, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %155

155:                                              ; preds = %154, %131, %124, %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  %156 = load ptr, ptr %5, align 8, !tbaa !289
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !289
  %159 = load ptr, ptr %158, align 8, !tbaa !352
  %160 = icmp eq ptr %156, %159
  br i1 %160, label %161, label %201, !prof !647

161:                                              ; preds = %155
  %162 = load ptr, ptr %48, align 8, !tbaa !338
  %163 = call fastcc ptr @VEC_edge_base_index(ptr noundef %162, i32 noundef 0) #19
  %164 = getelementptr inbounds %struct.edge_def, ptr %163, i64 0, i32 7
  %165 = load i32, ptr %164, align 8, !tbaa !349
  %166 = and i32 %165, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %215, label %168, !prof !648

168:                                              ; preds = %161
  %169 = load i32, ptr %156, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 12
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !289
  store ptr %174, ptr %5, align 8, !tbaa !261
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
  %183 = load ptr, ptr %182, align 8, !tbaa !289
  br label %177, !llvm.loop !649

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 2
  %186 = load ptr, ptr %185, align 8, !tbaa !289
  br label %187

187:                                              ; preds = %177, %184
  %188 = phi ptr [ %186, %184 ], [ %178, %177 ]
  store ptr %188, ptr %5, align 8, !tbaa !261
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 7
  br i1 %191, label %192, label %199

192:                                              ; preds = %187, %192
  %193 = phi ptr [ %195, %192 ], [ %188, %187 ]
  %194 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 2
  %195 = load ptr, ptr %194, align 8, !tbaa !289
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 7
  br i1 %198, label %192, label %199, !llvm.loop !650

199:                                              ; preds = %192, %187
  %200 = phi ptr [ %188, %187 ], [ %195, %192 ]
  store ptr %200, ptr %5, align 8, !tbaa !261
  br label %201

201:                                              ; preds = %199, %155
  %202 = phi ptr [ %200, %199 ], [ %156, %155 ]
  %203 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205, !prof !651

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !356
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %203, ptr noundef nonnull @.str.16, i32 noundef %207, i32 noundef %97) #19
  br label %209

209:                                              ; preds = %205, %201
  %210 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !289
  %212 = call ptr @split_block(ptr noundef nonnull %48, ptr noundef %211) #17
  %213 = getelementptr inbounds %struct.edge_def, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !343
  br label %215

215:                                              ; preds = %161, %209
  %216 = phi ptr [ %214, %209 ], [ %48, %161 ]
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %218 = icmp eq ptr %217, null
  br i1 %218, label %225, label %219, !prof !641

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %221 = load i32, ptr %220, align 8, !tbaa !356
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %223 = load i32, ptr %222, align 8, !tbaa !356
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %217, ptr noundef nonnull @.str.17, i32 noundef %221, i32 noundef %223, i32 noundef %97) #19
  br label %225

225:                                              ; preds = %219, %215
  call void @df_set_bb_dirty(ptr noundef %216) #17
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 1
  %227 = call fastcc ptr @ei_start_1(ptr noundef nonnull %226) #19
  store i32 0, ptr %7, align 8, !tbaa.struct !443
  %228 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %227, ptr %228, align 8, !tbaa.struct !444
  %229 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %227, ptr noundef nonnull %6) #19, !range !304
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %372, label %231, !prof !652

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %233 = getelementptr inbounds i8, ptr %15, i64 8
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 11
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 11
  br label %236

236:                                              ; preds = %231, %366
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  %237 = load ptr, ptr %6, align 8, !tbaa !261
  %238 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !343
  %240 = getelementptr inbounds %struct.basic_block_def, ptr %239, i64 0, i32 13
  %241 = load i32, ptr %240, align 8, !tbaa !271
  %242 = and i32 %241, 1024
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244, !prof !653

244:                                              ; preds = %236
  %245 = call fastcc ptr @single_succ(ptr noundef nonnull %239) #19
  br label %246

246:                                              ; preds = %244, %236
  %247 = phi ptr [ %245, %244 ], [ %239, %236 ]
  %248 = call fastcc ptr @ei_start_1(ptr noundef nonnull %232) #19
  store i32 0, ptr %15, align 8, !tbaa.struct !443
  store ptr %248, ptr %233, align 8, !tbaa.struct !444
  %249 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %248, ptr noundef nonnull %14) #19, !range !304
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %269, label %251, !prof !418

251:                                              ; preds = %246, %264
  %252 = load ptr, ptr %14, align 8, !tbaa !261
  %253 = getelementptr inbounds %struct.edge_def, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !343
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %254, i64 0, i32 13
  %256 = load i32, ptr %255, align 8, !tbaa !271
  %257 = and i32 %256, 1024
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259, !prof !654

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
  %267 = call fastcc zeroext i8 @ei_cond(i32 %265, ptr %266, ptr noundef nonnull %14) #19, !range !304
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %251, !prof !655, !llvm.loop !656

269:                                              ; preds = %264, %261, %246
  %270 = load ptr, ptr %14, align 8, !tbaa !261
  %271 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 9
  %272 = load i64, ptr %271, align 8, !tbaa !480
  %273 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 9
  %274 = load i64, ptr %273, align 8, !tbaa !480
  %275 = add nsw i64 %274, %272
  store i64 %275, ptr %273, align 8, !tbaa !480
  %276 = load ptr, ptr %238, align 8, !tbaa !343
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %276, i64 0, i32 13
  %278 = load i32, ptr %277, align 8, !tbaa !271
  %279 = and i32 %278, 1024
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %303, label %281, !prof !653

281:                                              ; preds = %269
  %282 = load i64, ptr %271, align 8, !tbaa !480
  %283 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %276) #19
  %284 = getelementptr inbounds %struct.edge_def, ptr %283, i64 0, i32 9
  %285 = load i64, ptr %284, align 8, !tbaa !480
  %286 = add nsw i64 %285, %282
  store i64 %286, ptr %284, align 8, !tbaa !480
  %287 = load i64, ptr %271, align 8, !tbaa !480
  %288 = load ptr, ptr %238, align 8, !tbaa !343
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 8
  %290 = load i64, ptr %289, align 8, !tbaa !489
  %291 = add nsw i64 %290, %287
  store i64 %291, ptr %289, align 8, !tbaa !489
  %292 = load ptr, ptr %237, align 8, !tbaa !431
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 11
  %294 = load i32, ptr %293, align 8, !tbaa !485
  %295 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %296 = load i32, ptr %295, align 4, !tbaa !481
  %297 = mul nsw i32 %296, %294
  %298 = add nsw i32 %297, 5000
  %299 = sdiv i32 %298, 10000
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 11
  %301 = load i32, ptr %300, align 8, !tbaa !485
  %302 = add nsw i32 %299, %301
  store i32 %302, ptr %300, align 8, !tbaa !485
  br label %303

303:                                              ; preds = %281, %269
  %304 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !343
  %306 = getelementptr inbounds %struct.basic_block_def, ptr %305, i64 0, i32 13
  %307 = load i32, ptr %306, align 8, !tbaa !271
  %308 = and i32 %307, 1024
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %345, label %310, !prof !657

310:                                              ; preds = %303
  %311 = load i64, ptr %271, align 8, !tbaa !480
  %312 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %305) #19
  %313 = getelementptr inbounds %struct.edge_def, ptr %312, i64 0, i32 9
  %314 = load i64, ptr %313, align 8, !tbaa !480
  %315 = sub nsw i64 %314, %311
  store i64 %315, ptr %313, align 8, !tbaa !480
  %316 = load ptr, ptr %304, align 8, !tbaa !343
  %317 = call fastcc ptr @single_succ_edge(ptr noundef %316) #19
  %318 = getelementptr inbounds %struct.edge_def, ptr %317, i64 0, i32 9
  %319 = load i64, ptr %318, align 8, !tbaa !480
  %320 = icmp slt i64 %319, 0
  br i1 %320, label %321, label %325, !prof !658

321:                                              ; preds = %310
  %322 = load ptr, ptr %304, align 8, !tbaa !343
  %323 = call fastcc ptr @single_succ_edge(ptr noundef %322) #19
  %324 = getelementptr inbounds %struct.edge_def, ptr %323, i64 0, i32 9
  store i64 0, ptr %324, align 8, !tbaa !480
  br label %325

325:                                              ; preds = %321, %310
  %326 = load i64, ptr %271, align 8, !tbaa !480
  %327 = load ptr, ptr %304, align 8, !tbaa !343
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 8
  %329 = load i64, ptr %328, align 8, !tbaa !489
  %330 = sub nsw i64 %329, %326
  store i64 %330, ptr %328, align 8, !tbaa !489
  %331 = load ptr, ptr %237, align 8, !tbaa !431
  %332 = getelementptr inbounds %struct.basic_block_def, ptr %331, i64 0, i32 11
  %333 = load i32, ptr %332, align 8, !tbaa !485
  %334 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %335 = load i32, ptr %334, align 4, !tbaa !481
  %336 = mul nsw i32 %335, %333
  %337 = add nsw i32 %336, 5000
  %338 = sdiv i32 %337, -10000
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 11
  %340 = load i32, ptr %339, align 8, !tbaa !485
  %341 = add i32 %338, %340
  %342 = call i32 @llvm.smax.i32(i32 %341, i32 0)
  store i32 %342, ptr %339, align 8
  %343 = icmp slt i64 %330, 0
  br i1 %343, label %344, label %345, !prof !658

344:                                              ; preds = %325
  store i64 0, ptr %328, align 8, !tbaa !489
  br label %345

345:                                              ; preds = %325, %344, %303
  %346 = load i32, ptr %234, align 8, !tbaa !485
  %347 = icmp eq i32 %346, 0
  %348 = load i32, ptr %235, align 8, !tbaa !485
  %349 = icmp eq i32 %348, 0
  %350 = select i1 %347, i1 %349, i1 false
  %351 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %352 = load i32, ptr %351, align 4, !tbaa !481
  br i1 %350, label %353, label %358, !prof !659

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 8
  %355 = load i32, ptr %354, align 4, !tbaa !481
  %356 = add nsw i32 %355, %352
  %357 = sdiv i32 %356, 2
  br label %366

358:                                              ; preds = %345
  %359 = mul nsw i32 %352, %346
  %360 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 8
  %361 = load i32, ptr %360, align 4, !tbaa !481
  %362 = mul nsw i32 %348, %361
  %363 = add nsw i32 %362, %359
  %364 = add nsw i32 %348, %346
  %365 = sdiv i32 %363, %364
  br label %366

366:                                              ; preds = %358, %353
  %367 = phi i32 [ %365, %358 ], [ %357, %353 ]
  store i32 %367, ptr %351, align 4, !tbaa !481
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call fastcc void @ei_next(ptr noundef nonnull %7) #19
  %368 = load i32, ptr %7, align 8
  %369 = load ptr, ptr %228, align 8
  %370 = call fastcc zeroext i8 @ei_cond(i32 %368, ptr %369, ptr noundef nonnull %6) #19, !range !304
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %236, !prof !660, !llvm.loop !661

372:                                              ; preds = %366, %225
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 8
  %374 = load i64, ptr %373, align 8, !tbaa !489
  %375 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 8
  %376 = load i64, ptr %375, align 8, !tbaa !489
  %377 = add nsw i64 %376, %374
  store i64 %377, ptr %375, align 8, !tbaa !489
  %378 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 11
  %379 = load i32, ptr %378, align 8, !tbaa !485
  %380 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 11
  %381 = load i32, ptr %380, align 8, !tbaa !485
  %382 = add nsw i32 %381, %379
  %383 = icmp sgt i32 %382, 10000
  br i1 %383, label %384, label %385, !prof !662

384:                                              ; preds = %372
  br label %385

385:                                              ; preds = %384, %372
  %386 = phi i32 [ 10000, %384 ], [ %382, %372 ]
  store i32 %386, ptr %380, align 8, !tbaa !485
  call void @update_br_prob_note(ptr noundef nonnull %216) #17
  %387 = load ptr, ptr %4, align 8, !tbaa !289
  %388 = load i32, ptr %387, align 8
  %389 = and i32 %388, 65535
  %390 = icmp eq i32 %389, 12
  br i1 %390, label %391, label %394, !prof !663

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.rtx_def, ptr %387, i64 0, i32 1, i32 0, i32 0, i64 2
  %393 = load ptr, ptr %392, align 8, !tbaa !289
  store ptr %393, ptr %4, align 8, !tbaa !261
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
  ], !prof !664

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.rtx_def, ptr %397, i64 0, i32 1, i32 0, i32 0, i64 2
  %402 = load ptr, ptr %401, align 8, !tbaa !289
  br label %396, !llvm.loop !665

403:                                              ; preds = %396
  store ptr %397, ptr %4, align 8, !tbaa !261
  %404 = getelementptr inbounds %struct.rtx_def, ptr %397, i64 1
  %405 = load i32, ptr %404, align 8, !tbaa !289
  %406 = icmp eq i32 %405, 10
  br i1 %406, label %407, label %411, !prof !666

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.rtx_def, ptr %397, i64 0, i32 1, i32 0, i32 0, i64 2
  %409 = load ptr, ptr %408, align 8, !tbaa !289
  store ptr %409, ptr %4, align 8, !tbaa !261
  br label %411

410:                                              ; preds = %396
  store ptr %397, ptr %4, align 8, !tbaa !261
  br label %411

411:                                              ; preds = %410, %407, %403
  %412 = phi ptr [ %397, %410 ], [ %409, %407 ], [ %397, %403 ]
  %413 = load i32, ptr %412, align 8
  %414 = and i32 %413, 65535
  %415 = icmp eq i32 %414, 7
  br i1 %415, label %416, label %423, !prof !652

416:                                              ; preds = %411, %416
  %417 = phi ptr [ %419, %416 ], [ %412, %411 ]
  %418 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1, i32 0, i32 0, i64 2
  %419 = load ptr, ptr %418, align 8, !tbaa !289
  %420 = load i32, ptr %419, align 8
  %421 = and i32 %420, 65535
  %422 = icmp eq i32 %421, 7
  br i1 %422, label %416, label %423, !prof !595, !llvm.loop !667

423:                                              ; preds = %416, %411
  %424 = phi ptr [ %412, %411 ], [ %419, %416 ]
  store ptr %424, ptr %4, align 8, !tbaa !261
  %425 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1, i32 0, i32 0, i64 1
  %426 = load ptr, ptr %425, align 8, !tbaa !289
  %427 = call ptr @split_block(ptr noundef nonnull %35, ptr noundef %426) #17
  %428 = load ptr, ptr %427, align 8, !tbaa !431
  %429 = call fastcc ptr @single_succ(ptr noundef %428) #19
  %430 = call fastcc ptr @single_succ_edge(ptr noundef %428) #19
  %431 = call ptr @redirect_edge_and_branch_force(ptr noundef %430, ptr noundef %216) #17
  call void @delete_basic_block(ptr noundef %429) #17
  call fastcc void @update_forwarder_flag(ptr noundef %428) #19
  %432 = icmp eq ptr %216, %48
  br i1 %432, label %434, label %433, !prof !647

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
define internal fastcc zeroext i8 @outgoing_edges_match(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !668 !PGOFuncName !669 {
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
  %13 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #19, !range !304
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %53, label %15, !prof !670

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #19
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !349
  %19 = and i32 %18, 30
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %53, !prof !671

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !289
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !290
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %32, !prof !672

29:                                               ; preds = %21
  %30 = tail call i32 @simplejump_p(ptr noundef nonnull %25) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32, !prof !673

32:                                               ; preds = %29, %21
  %33 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %2) #19, !range !304
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %581, label %35, !prof !674

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @single_succ_edge(ptr noundef %2) #19
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !349
  %39 = and i32 %38, 30
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %581, !prof !675

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !289
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !290
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %581, !prof !676

49:                                               ; preds = %41
  %50 = tail call i32 @simplejump_p(ptr noundef nonnull %45) #17
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i8
  br label %581

53:                                               ; preds = %29, %15, %3
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !340
  %56 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %55) #19
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %289, !prof !677

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !289
  %61 = getelementptr inbounds %struct.rtl_bb_info, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !290
  %63 = tail call i32 @any_condjump_p(ptr noundef %62) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %289, label %65, !prof !678

65:                                               ; preds = %58
  %66 = load ptr, ptr %59, align 8, !tbaa !289
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !290
  %69 = tail call i32 @onlyjump_p(ptr noundef %68) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %289, label %71, !prof !678

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !340
  %74 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %73) #19
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %581, !prof !679

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !289
  %79 = getelementptr inbounds %struct.rtl_bb_info, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !290
  %81 = tail call i32 @any_condjump_p(ptr noundef %80) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %581, label %83, !prof !680

83:                                               ; preds = %76
  %84 = load ptr, ptr %77, align 8, !tbaa !289
  %85 = getelementptr inbounds %struct.rtl_bb_info, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !290
  %87 = tail call i32 @onlyjump_p(ptr noundef %86) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %581, label %89, !prof !680

89:                                               ; preds = %83
  %90 = load ptr, ptr %54, align 8, !tbaa !340
  %91 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 0) #19
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !349
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96, !prof !681

96:                                               ; preds = %89
  %97 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 1) #19
  br label %98

98:                                               ; preds = %89, %96
  %99 = phi ptr [ %97, %96 ], [ %91, %89 ]
  %100 = load ptr, ptr %72, align 8, !tbaa !340
  %101 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 0) #19
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !349
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106, !prof !682

106:                                              ; preds = %98
  %107 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 1) #19
  br label %108

108:                                              ; preds = %98, %106
  %109 = phi ptr [ %107, %106 ], [ %101, %98 ]
  br i1 %95, label %110, label %112, !prof !681

110:                                              ; preds = %108
  %111 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %90, i32 noundef 1) #19
  br label %112

112:                                              ; preds = %108, %110
  %113 = phi ptr [ %111, %110 ], [ %91, %108 ]
  br i1 %105, label %114, label %116, !prof !682

114:                                              ; preds = %112
  %115 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %100, i32 noundef 1) #19
  br label %116

116:                                              ; preds = %112, %114
  %117 = phi ptr [ %115, %114 ], [ %101, %112 ]
  %118 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !343
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 13
  %121 = load i32, ptr %120, align 8, !tbaa !271
  %122 = and i32 %121, 1024
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124, !prof !683

124:                                              ; preds = %116
  %125 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %119) #19
  br label %126

126:                                              ; preds = %124, %116
  %127 = phi ptr [ %125, %124 ], [ %113, %116 ]
  %128 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !343
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 13
  %131 = load i32, ptr %130, align 8, !tbaa !271
  %132 = and i32 %131, 1024
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134, !prof !684

134:                                              ; preds = %126
  %135 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %129) #19
  br label %136

136:                                              ; preds = %134, %126
  %137 = phi ptr [ %135, %134 ], [ %117, %126 ]
  %138 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !343
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 13
  %141 = load i32, ptr %140, align 8, !tbaa !271
  %142 = and i32 %141, 1024
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %581, !prof !685

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !343
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 13
  %148 = load i32, ptr %147, align 8, !tbaa !271
  %149 = and i32 %148, 1024
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %581, !prof !686

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !343
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 13
  %155 = load i32, ptr %154, align 8, !tbaa !271
  %156 = and i32 %155, 1024
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %581, !prof !687

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !343
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 13
  %162 = load i32, ptr %161, align 8, !tbaa !271
  %163 = and i32 %162, 1024
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %581, !prof !688

165:                                              ; preds = %158
  %166 = icmp eq ptr %139, %146
  %167 = icmp eq ptr %153, %160
  %168 = and i1 %166, %167
  br i1 %168, label %173, label %169, !prof !689

169:                                              ; preds = %165
  %170 = icmp eq ptr %139, %160
  %171 = icmp eq ptr %153, %146
  %172 = and i1 %171, %170
  br i1 %172, label %173, label %581, !prof !690

173:                                              ; preds = %169, %165
  %174 = phi i8 [ 1, %165 ], [ 0, %169 ]
  %175 = phi i8 [ 0, %165 ], [ 1, %169 ]
  %176 = load ptr, ptr %59, align 8, !tbaa !289
  %177 = getelementptr inbounds %struct.rtl_bb_info, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !290
  %179 = tail call ptr @pc_set(ptr noundef %178) #17
  %180 = load ptr, ptr %77, align 8, !tbaa !289
  %181 = getelementptr inbounds %struct.rtl_bb_info, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !290
  %183 = tail call ptr @pc_set(ptr noundef %182) #17
  %184 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !289
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !289
  %188 = load ptr, ptr @global_rtl, align 16, !tbaa !261
  %189 = icmp eq ptr %187, %188
  %190 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !289
  %192 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !289
  %194 = icmp ne ptr %193, %188
  %195 = xor i1 %189, %194
  br i1 %195, label %197, label %196, !prof !691

196:                                              ; preds = %173
  br label %197

197:                                              ; preds = %196, %173
  %198 = phi i8 [ %174, %196 ], [ %175, %173 ]
  %199 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !289
  %201 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !289
  %203 = load i32, ptr %200, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i8 %198, 0
  br i1 %205, label %211, label %206, !prof !692

206:                                              ; preds = %197
  %207 = load ptr, ptr %77, align 8, !tbaa !289
  %208 = getelementptr inbounds %struct.rtl_bb_info, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !290
  %210 = tail call i32 @reversed_comparison_code(ptr noundef %202, ptr noundef %209) #17
  br label %214

211:                                              ; preds = %197
  %212 = load i32, ptr %202, align 8
  %213 = and i32 %212, 65535
  br label %214

214:                                              ; preds = %211, %206
  %215 = phi i32 [ %210, %206 ], [ %213, %211 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %581, label %217, !prof !693

217:                                              ; preds = %214
  %218 = icmp eq i32 %204, %215
  br i1 %218, label %219, label %233, !prof !694

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !289
  %222 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !289
  %224 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %221, ptr noundef %223) #17
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %233, label %226, !prof !695

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !289
  %229 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !289
  %231 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %228, ptr noundef %230) #17
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %250, !prof !696

233:                                              ; preds = %226, %219, %217
  %234 = tail call i32 @swap_condition(i32 noundef %215) #17
  %235 = icmp eq i32 %204, %234
  br i1 %235, label %236, label %581, !prof !697

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !289
  %239 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !289
  %241 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %238, ptr noundef %240) #17
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %581, label %243, !prof !698

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !289
  %246 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %247 = load ptr, ptr %246, align 8, !tbaa !289
  %248 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %245, ptr noundef %247) #17
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %581, label %250, !prof !476

250:                                              ; preds = %226, %243
  %251 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %1) #17
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %280, label %253, !prof !699

253:                                              ; preds = %250
  %254 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %2) #17
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %280, label %256, !prof !700

256:                                              ; preds = %253
  %257 = load ptr, ptr %152, align 8, !tbaa !343
  %258 = load ptr, ptr %159, align 8, !tbaa !343
  %259 = icmp eq ptr %257, %258
  %260 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 8
  %261 = load i32, ptr %260, align 4, !tbaa !481
  br i1 %259, label %264, label %262, !prof !701

262:                                              ; preds = %256
  %263 = sub nsw i32 10000, %261
  br label %264

264:                                              ; preds = %256, %262
  %265 = phi i32 [ %263, %262 ], [ %261, %256 ]
  %266 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 8
  %267 = load i32, ptr %266, align 4, !tbaa !481
  %268 = sub nsw i32 %267, %265
  %269 = tail call i32 @llvm.abs.i32(i32 %268, i1 true)
  %270 = icmp ult i32 %269, 5001
  br i1 %270, label %280, label %271, !prof !702

271:                                              ; preds = %264
  %272 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %273 = icmp eq ptr %272, null
  br i1 %273, label %581, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %276 = load i32, ptr %275, align 8, !tbaa !356
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %278 = load i32, ptr %277, align 8, !tbaa !356
  %279 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %272, ptr noundef nonnull @.str.18, i32 noundef %276, i32 noundef %278, i32 noundef %267, i32 noundef %265) #19
  br label %581

280:                                              ; preds = %264, %253, %250
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %282 = icmp eq ptr %281, null
  br i1 %282, label %581, label %283, !prof !691

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %285 = load i32, ptr %284, align 8, !tbaa !356
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %287 = load i32, ptr %286, align 8, !tbaa !356
  %288 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %281, ptr noundef nonnull @.str.19, i32 noundef %285, i32 noundef %287) #19
  br label %581

289:                                              ; preds = %65, %58, %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %290 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %291 = load ptr, ptr %290, align 8, !tbaa !289
  %292 = getelementptr inbounds %struct.rtl_bb_info, ptr %291, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !290
  %294 = call zeroext i8 @tablejump_p(ptr noundef %293, ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %419, label %296, !prof !703

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !289
  %299 = getelementptr inbounds %struct.rtl_bb_info, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !290
  %301 = call zeroext i8 @tablejump_p(ptr noundef %300, ptr noundef nonnull %7, ptr noundef nonnull %9) #17
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %419, label %303, !prof !704

303:                                              ; preds = %296
  %304 = load ptr, ptr %8, align 8, !tbaa !261
  %305 = getelementptr inbounds %struct.rtx_def, ptr %304, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !289
  %307 = load i32, ptr %306, align 8
  %308 = load ptr, ptr %9, align 8, !tbaa !261
  %309 = getelementptr inbounds %struct.rtx_def, ptr %308, i64 1
  %310 = load ptr, ptr %309, align 8, !tbaa !289
  %311 = load i32, ptr %310, align 8
  %312 = xor i32 %311, %307
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %419

315:                                              ; preds = %303
  %316 = load ptr, ptr %6, align 8, !tbaa !261
  %317 = load ptr, ptr %7, align 8, !tbaa !261
  %318 = icmp eq ptr %316, %317
  br i1 %318, label %417, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr %290, align 8, !tbaa !289
  %321 = getelementptr inbounds %struct.rtl_bb_info, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !290
  %323 = call i32 @rtx_referenced_p(ptr noundef %317, ptr noundef %322) #17
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %417

325:                                              ; preds = %319
  %326 = load ptr, ptr %8, align 8, !tbaa !261
  %327 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !289
  %329 = load ptr, ptr %9, align 8, !tbaa !261
  %330 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !289
  %332 = load i32, ptr %328, align 8
  %333 = and i32 %332, 65535
  %334 = icmp eq i32 %333, 20
  br i1 %334, label %335, label %340

335:                                              ; preds = %325
  %336 = call i32 @rtx_equal_p(ptr noundef nonnull %328, ptr noundef %331) #17
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %386

338:                                              ; preds = %335
  %339 = load i32, ptr %328, align 8
  br label %340

340:                                              ; preds = %338, %325
  %341 = phi i32 [ %339, %338 ], [ %332, %325 ]
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 21
  br i1 %343, label %344, label %417

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.rtx_def, ptr %328, i64 0, i32 1, i32 0, i32 0, i64 1
  %346 = load ptr, ptr %345, align 8, !tbaa !289
  %347 = load i32, ptr %346, align 8, !tbaa !581
  %348 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1, i32 0, i32 0, i64 1
  %349 = load ptr, ptr %348, align 8, !tbaa !289
  %350 = load i32, ptr %349, align 8, !tbaa !581
  %351 = icmp eq i32 %347, %350
  br i1 %351, label %352, label %417

352:                                              ; preds = %344
  %353 = getelementptr inbounds %struct.rtx_def, ptr %328, i64 0, i32 1, i32 0, i32 0, i64 2
  %354 = load ptr, ptr %353, align 8, !tbaa !289
  %355 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1, i32 0, i32 0, i64 2
  %356 = load ptr, ptr %355, align 8, !tbaa !289
  %357 = call i32 @rtx_equal_p(ptr noundef %354, ptr noundef %356) #17
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %417, label %359

359:                                              ; preds = %352
  %360 = getelementptr inbounds %struct.rtx_def, ptr %328, i64 0, i32 1, i32 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !289
  %362 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1, i32 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !289
  %364 = call i32 @rtx_equal_p(ptr noundef %361, ptr noundef %363) #17
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %417, label %366

366:                                              ; preds = %359
  %367 = load ptr, ptr %345, align 8, !tbaa !289
  %368 = load i32, ptr %367, align 8, !tbaa !581
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %386

370:                                              ; preds = %366
  %371 = zext nneg i32 %368 to i64
  br label %372

372:                                              ; preds = %370, %372
  %373 = phi i64 [ %371, %370 ], [ %374, %372 ]
  %374 = add nsw i64 %373, -1
  %375 = load ptr, ptr %345, align 8, !tbaa !289
  %376 = getelementptr inbounds %struct.rtvec_def, ptr %375, i64 0, i32 1, i64 %374
  %377 = load ptr, ptr %376, align 8, !tbaa !261
  %378 = load ptr, ptr %348, align 8, !tbaa !289
  %379 = getelementptr inbounds %struct.rtvec_def, ptr %378, i64 0, i32 1, i64 %374
  %380 = load ptr, ptr %379, align 8, !tbaa !261
  %381 = call i32 @rtx_equal_p(ptr noundef %377, ptr noundef %380) #17
  %382 = icmp ne i32 %381, 0
  %383 = icmp ugt i64 %373, 1
  %384 = select i1 %383, i1 %382, i1 false
  br i1 %384, label %372, label %385, !llvm.loop !705

385:                                              ; preds = %372
  br i1 %382, label %386, label %417

386:                                              ; preds = %366, %335, %385
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  %387 = load ptr, ptr %6, align 8, !tbaa !261
  store ptr %387, ptr %10, align 8, !tbaa !642
  %388 = load ptr, ptr %7, align 8, !tbaa !261
  %389 = getelementptr inbounds %struct.replace_label_data, ptr %10, i64 0, i32 1
  store ptr %388, ptr %389, align 8, !tbaa !644
  %390 = getelementptr inbounds %struct.replace_label_data, ptr %10, i64 0, i32 2
  store i8 0, ptr %390, align 8, !tbaa !645
  %391 = load ptr, ptr %290, align 8, !tbaa !289
  %392 = getelementptr inbounds %struct.rtl_bb_info, ptr %391, i64 0, i32 1
  %393 = call i32 @for_each_rtx(ptr noundef nonnull %392, ptr noundef nonnull @replace_label, ptr noundef nonnull %10) #17
  %394 = load ptr, ptr %290, align 8, !tbaa !289
  %395 = getelementptr inbounds %struct.rtl_bb_info, ptr %394, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !290
  %397 = load ptr, ptr %297, align 8, !tbaa !289
  %398 = getelementptr inbounds %struct.rtl_bb_info, ptr %397, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !290
  %400 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %396, ptr noundef %399) #19, !range !304
  %401 = load ptr, ptr @dump_file, align 8, !tbaa !261
  %402 = icmp ne ptr %401, null
  %403 = icmp ne i8 %400, 0
  %404 = and i1 %403, %402
  br i1 %404, label %405, label %411

405:                                              ; preds = %386
  %406 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %407 = load i32, ptr %406, align 8, !tbaa !356
  %408 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %409 = load i32, ptr %408, align 8, !tbaa !356
  %410 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %401, ptr noundef nonnull @.str.20, i32 noundef %407, i32 noundef %409) #19
  br label %411

411:                                              ; preds = %386, %405
  %412 = load ptr, ptr %7, align 8, !tbaa !261
  store ptr %412, ptr %10, align 8, !tbaa !642
  %413 = load ptr, ptr %6, align 8, !tbaa !261
  store ptr %413, ptr %389, align 8, !tbaa !644
  %414 = load ptr, ptr %290, align 8, !tbaa !289
  %415 = getelementptr inbounds %struct.rtl_bb_info, ptr %414, i64 0, i32 1
  %416 = call i32 @for_each_rtx(ptr noundef nonnull %415, ptr noundef nonnull @replace_label, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  br label %417

417:                                              ; preds = %411, %319, %315, %385, %359, %352, %344, %340
  %418 = phi i8 [ 0, %315 ], [ 0, %319 ], [ %400, %411 ], [ 0, %385 ], [ 0, %359 ], [ 0, %352 ], [ 0, %344 ], [ 0, %340 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %581

419:                                              ; preds = %303, %296, %289
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %420 = load ptr, ptr %290, align 8, !tbaa !289
  %421 = getelementptr inbounds %struct.rtl_bb_info, ptr %420, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !290
  %423 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %424 = load ptr, ptr %423, align 8, !tbaa !289
  %425 = getelementptr inbounds %struct.rtl_bb_info, ptr %424, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !290
  %427 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %422, ptr noundef %426) #19, !range !304
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %581, label %429, !prof !706

429:                                              ; preds = %419
  %430 = load ptr, ptr %54, align 8, !tbaa !340
  %431 = call fastcc i32 @VEC_edge_base_length(ptr noundef %430) #19
  %432 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %433 = load ptr, ptr %432, align 8, !tbaa !340
  %434 = call fastcc i32 @VEC_edge_base_length(ptr noundef %433) #19
  %435 = icmp eq i32 %431, %434
  br i1 %435, label %436, label %581, !prof !707

436:                                              ; preds = %429
  %437 = call fastcc ptr @ei_start_1(ptr noundef nonnull %54) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !443
  %438 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %437, ptr %438, align 8, !tbaa.struct !444
  %439 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %437, ptr noundef nonnull %4) #19, !range !304
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %507, label %441, !prof !708

441:                                              ; preds = %436, %474
  %442 = phi i32 [ %476, %474 ], [ 0, %436 ]
  %443 = phi i32 [ %457, %474 ], [ 0, %436 ]
  %444 = phi i32 [ %465, %474 ], [ 0, %436 ]
  %445 = phi ptr [ %470, %474 ], [ null, %436 ]
  %446 = phi ptr [ %475, %474 ], [ null, %436 ]
  %447 = load ptr, ptr %432, align 8, !tbaa !340
  %448 = call fastcc ptr @VEC_edge_base_index(ptr noundef %447, i32 noundef %442) #19
  %449 = load ptr, ptr %4, align 8, !tbaa !261
  %450 = getelementptr inbounds %struct.edge_def, ptr %449, i64 0, i32 7
  %451 = load i32, ptr %450, align 8, !tbaa !349
  %452 = and i32 %451, 8
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %456, label %454, !prof !707

454:                                              ; preds = %441
  %455 = add nsw i32 %443, 1
  br label %456

456:                                              ; preds = %454, %441
  %457 = phi i32 [ %455, %454 ], [ %443, %441 ]
  %458 = getelementptr inbounds %struct.edge_def, ptr %448, i64 0, i32 7
  %459 = load i32, ptr %458, align 8, !tbaa !349
  %460 = and i32 %459, 8
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %464, label %462, !prof !707

462:                                              ; preds = %456
  %463 = add nsw i32 %444, 1
  br label %464

464:                                              ; preds = %462, %456
  %465 = phi i32 [ %463, %462 ], [ %444, %456 ]
  %466 = and i32 %451, 1
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %469, label %468, !prof !707

468:                                              ; preds = %464
  br label %469

469:                                              ; preds = %468, %464
  %470 = phi ptr [ %449, %468 ], [ %445, %464 ]
  %471 = and i32 %459, 1
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %474, label %473, !prof !707

473:                                              ; preds = %469
  br label %474

474:                                              ; preds = %469, %473
  %475 = phi ptr [ %448, %473 ], [ %446, %469 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %476 = load i32, ptr %5, align 8
  %477 = load ptr, ptr %438, align 8
  %478 = call fastcc zeroext i8 @ei_cond(i32 %476, ptr %477, ptr noundef nonnull %4) #19, !range !304
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %480, label %441, !prof !709, !llvm.loop !710

480:                                              ; preds = %474
  %481 = icmp eq i32 %457, %465
  br i1 %481, label %482, label %581, !prof !711

482:                                              ; preds = %480
  %483 = icmp ne ptr %470, null
  %484 = icmp eq ptr %475, null
  %485 = xor i1 %484, %483
  br i1 %485, label %486, label %581, !prof !707

486:                                              ; preds = %482
  br i1 %483, label %487, label %507, !prof !712

487:                                              ; preds = %486
  %488 = getelementptr inbounds %struct.edge_def, ptr %470, i64 0, i32 1
  %489 = load ptr, ptr %488, align 8, !tbaa !343
  %490 = call zeroext i8 @forwarder_block_p(ptr noundef %489) #17
  %491 = icmp eq i8 %490, 0
  %492 = load ptr, ptr %488, align 8, !tbaa !343
  br i1 %491, label %495, label %493

493:                                              ; preds = %487
  %494 = call fastcc ptr @single_succ(ptr noundef %492) #19
  br label %495

495:                                              ; preds = %487, %493
  %496 = phi ptr [ %494, %493 ], [ %492, %487 ]
  %497 = getelementptr inbounds %struct.edge_def, ptr %475, i64 0, i32 1
  %498 = load ptr, ptr %497, align 8, !tbaa !343
  %499 = call zeroext i8 @forwarder_block_p(ptr noundef %498) #17
  %500 = icmp eq i8 %499, 0
  %501 = load ptr, ptr %497, align 8, !tbaa !343
  br i1 %500, label %504, label %502

502:                                              ; preds = %495
  %503 = call fastcc ptr @single_succ(ptr noundef %501) #19
  br label %504

504:                                              ; preds = %495, %502
  %505 = phi ptr [ %503, %502 ], [ %501, %495 ]
  %506 = icmp eq ptr %496, %505
  br i1 %506, label %507, label %581

507:                                              ; preds = %436, %504, %486
  %508 = load ptr, ptr %290, align 8, !tbaa !289
  %509 = getelementptr inbounds %struct.rtl_bb_info, ptr %508, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !290
  %511 = call ptr @find_reg_note(ptr noundef %510, i32 noundef 25, ptr noundef null) #17
  %512 = load ptr, ptr %423, align 8, !tbaa !289
  %513 = getelementptr inbounds %struct.rtl_bb_info, ptr %512, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !290
  %515 = call ptr @find_reg_note(ptr noundef %514, i32 noundef 25, ptr noundef null) #17
  %516 = icmp eq ptr %511, null
  %517 = icmp ne ptr %515, null
  %518 = select i1 %516, i1 %517, i1 false
  br i1 %518, label %581, label %519, !prof !713

519:                                              ; preds = %507
  br i1 %516, label %527, label %520, !prof !707

520:                                              ; preds = %519
  br i1 %517, label %521, label %581

521:                                              ; preds = %520
  %522 = getelementptr inbounds %struct.rtx_def, ptr %511, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !289
  %524 = getelementptr inbounds %struct.rtx_def, ptr %515, i64 0, i32 1
  %525 = load ptr, ptr %524, align 8, !tbaa !289
  %526 = icmp eq ptr %523, %525
  br i1 %526, label %527, label %581

527:                                              ; preds = %521, %519
  %528 = call fastcc ptr @ei_start_1(ptr noundef nonnull %432) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !443
  store ptr %528, ptr %438, align 8, !tbaa.struct !444
  %529 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %528, ptr noundef nonnull %4) #19, !range !304
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %581, label %531, !prof !708

531:                                              ; preds = %527
  %532 = getelementptr inbounds i8, ptr %12, i64 8
  br label %533

533:                                              ; preds = %531, %576
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  %534 = load ptr, ptr %4, align 8, !tbaa !261
  %535 = getelementptr inbounds %struct.edge_def, ptr %534, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !343
  %537 = getelementptr inbounds %struct.basic_block_def, ptr %536, i64 0, i32 13
  %538 = load i32, ptr %537, align 8, !tbaa !271
  %539 = and i32 %538, 1024
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %547, label %541, !prof !707

541:                                              ; preds = %533
  %542 = getelementptr inbounds %struct.basic_block_def, ptr %536, i64 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !340
  %544 = call fastcc ptr @VEC_edge_base_index(ptr noundef %543, i32 noundef 0) #19
  %545 = getelementptr inbounds %struct.edge_def, ptr %544, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !343
  br label %547

547:                                              ; preds = %541, %533
  %548 = phi ptr [ %546, %541 ], [ %536, %533 ]
  store i32 0, ptr %12, align 8, !tbaa.struct !443
  store ptr %437, ptr %532, align 8, !tbaa.struct !444
  %549 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %437, ptr noundef nonnull %11) #19, !range !304
  %550 = icmp eq i8 %549, 0
  br i1 %550, label %573, label %551, !prof !418

551:                                              ; preds = %547, %568
  %552 = load ptr, ptr %11, align 8, !tbaa !261
  %553 = getelementptr inbounds %struct.edge_def, ptr %552, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !343
  %555 = getelementptr inbounds %struct.basic_block_def, ptr %554, i64 0, i32 13
  %556 = load i32, ptr %555, align 8, !tbaa !271
  %557 = and i32 %556, 1024
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559, !prof !707

559:                                              ; preds = %551
  %560 = getelementptr inbounds %struct.basic_block_def, ptr %554, i64 0, i32 1
  %561 = load ptr, ptr %560, align 8, !tbaa !340
  %562 = call fastcc ptr @VEC_edge_base_index(ptr noundef %561, i32 noundef 0) #19
  %563 = getelementptr inbounds %struct.edge_def, ptr %562, i64 0, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !343
  br label %565

565:                                              ; preds = %559, %551
  %566 = phi ptr [ %564, %559 ], [ %554, %551 ]
  %567 = icmp eq ptr %548, %566
  br i1 %567, label %573, label %568

568:                                              ; preds = %565
  call fastcc void @ei_next(ptr noundef nonnull %12) #19
  %569 = load i32, ptr %12, align 8
  %570 = load ptr, ptr %532, align 8
  %571 = call fastcc zeroext i8 @ei_cond(i32 %569, ptr %570, ptr noundef nonnull %11) #19, !range !304
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %573, label %551, !prof !714, !llvm.loop !715

573:                                              ; preds = %568, %565, %547
  %574 = load ptr, ptr %11, align 8, !tbaa !261
  %575 = icmp eq ptr %574, null
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br i1 %575, label %581, label %576

576:                                              ; preds = %573
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %577 = load i32, ptr %5, align 8
  %578 = load ptr, ptr %438, align 8
  %579 = call fastcc zeroext i8 @ei_cond(i32 %577, ptr %578, ptr noundef nonnull %4) #19, !range !304
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %581, label %533, !prof !709, !llvm.loop !716

581:                                              ; preds = %573, %576, %243, %527, %236, %233, %520, %521, %507, %417, %274, %271, %480, %482, %429, %419, %83, %76, %71, %158, %151, %144, %136, %169, %214, %283, %280, %32, %35, %49, %41, %504
  %582 = phi i8 [ 0, %504 ], [ 0, %35 ], [ 0, %32 ], [ 1, %41 ], [ %52, %49 ], [ 0, %83 ], [ 0, %76 ], [ 0, %71 ], [ 0, %158 ], [ 0, %151 ], [ 0, %144 ], [ 0, %136 ], [ 0, %169 ], [ 0, %214 ], [ 1, %283 ], [ 1, %280 ], [ 0, %419 ], [ 0, %429 ], [ 0, %482 ], [ 0, %480 ], [ 0, %271 ], [ 0, %274 ], [ %418, %417 ], [ 0, %507 ], [ 0, %521 ], [ 0, %520 ], [ 0, %233 ], [ 0, %236 ], [ 1, %527 ], [ 0, %243 ], [ 0, %573 ], [ 1, %576 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %582
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @flow_find_cross_jump(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !717 !PGOFuncName !718 {
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !289
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !290
  %10 = tail call i32 @onlyjump_p(ptr noundef %9) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !719

12:                                               ; preds = %5
  %13 = tail call i32 @returnjump_p(ptr noundef %9) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15, !prof !707

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !289
  %18 = tail call i32 @side_effects_p(ptr noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %5
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !289
  br label %23

23:                                               ; preds = %20, %15, %12
  %24 = phi ptr [ %9, %20 ], [ null, %15 ], [ null, %12 ]
  %25 = phi ptr [ %22, %20 ], [ %9, %15 ], [ %9, %12 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !289
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !290
  %30 = tail call i32 @onlyjump_p(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40, !prof !720

32:                                               ; preds = %23
  %33 = tail call i32 @returnjump_p(ptr noundef %29) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %57, label %35, !prof !721

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !289
  %38 = tail call i32 @side_effects_p(ptr noundef %37) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35, %23
  %41 = tail call i32 @simplejump_p(ptr noundef %29) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49, !prof !722

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
  %56 = load ptr, ptr %55, align 8, !tbaa !289
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
  br i1 %66, label %67, label %80, !prof !723

67:                                               ; preds = %57
  %68 = load ptr, ptr %6, align 8, !tbaa !289
  %69 = load ptr, ptr %68, align 8, !tbaa !352
  br label %70

70:                                               ; preds = %67, %73
  %71 = phi ptr [ %62, %67 ], [ %75, %73 ]
  %72 = icmp eq ptr %71, %69
  br i1 %72, label %80, label %73, !prof !724

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !289
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = add nsw i32 %77, -11
  %79 = icmp ult i32 %78, -3
  br i1 %79, label %70, label %80, !prof !725, !llvm.loop !726

80:                                               ; preds = %70, %73, %57
  %81 = phi ptr [ %62, %57 ], [ %75, %73 ], [ %69, %70 ]
  %82 = load i32, ptr %61, align 8
  %83 = and i32 %82, 65535
  %84 = add nsw i32 %83, -11
  %85 = icmp ult i32 %84, -3
  br i1 %85, label %86, label %99, !prof !727

86:                                               ; preds = %80
  %87 = load ptr, ptr %26, align 8, !tbaa !289
  %88 = load ptr, ptr %87, align 8, !tbaa !352
  br label %89

89:                                               ; preds = %86, %92
  %90 = phi ptr [ %61, %86 ], [ %94, %92 ]
  %91 = icmp eq ptr %90, %88
  br i1 %91, label %99, label %92, !prof !728

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !289
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = add nsw i32 %96, -11
  %98 = icmp ult i32 %97, -3
  br i1 %98, label %89, label %99, !prof !729, !llvm.loop !730

99:                                               ; preds = %89, %92, %80
  %100 = phi ptr [ %61, %80 ], [ %94, %92 ], [ %88, %89 ]
  %101 = load ptr, ptr %6, align 8, !tbaa !289
  %102 = load ptr, ptr %101, align 8, !tbaa !352
  %103 = icmp eq ptr %81, %102
  br i1 %103, label %145, label %104, !prof !731

104:                                              ; preds = %99
  %105 = load ptr, ptr %26, align 8, !tbaa !289
  %106 = load ptr, ptr %105, align 8, !tbaa !352
  %107 = icmp eq ptr %100, %106
  br i1 %107, label %145, label %108, !prof !732

108:                                              ; preds = %104
  %109 = tail call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef nonnull %81, ptr noundef nonnull %100) #19, !range !304
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %145, label %111, !prof !733

111:                                              ; preds = %108
  tail call fastcc void @merge_memattrs(ptr noundef nonnull %81, ptr noundef nonnull %100) #19
  %112 = load i32, ptr %81, align 8
  %113 = and i32 %112, 65535
  %114 = add nsw i32 %113, -7
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %139, !prof !734

116:                                              ; preds = %111
  %117 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %81) #17
  %118 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %100) #17
  %119 = icmp eq ptr %117, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %123, label %122, !prof !735

122:                                              ; preds = %116
  tail call void @remove_note(ptr noundef nonnull %81, ptr noundef nonnull %117) #17
  br label %137

123:                                              ; preds = %116
  %124 = select i1 %119, i1 %120, i1 false
  br i1 %124, label %125, label %126, !prof !736

125:                                              ; preds = %123
  tail call void @remove_note(ptr noundef nonnull %100, ptr noundef nonnull %118) #17
  br label %137

126:                                              ; preds = %123
  %127 = icmp ne ptr %117, null
  %128 = select i1 %127, i1 %120, i1 false
  br i1 %128, label %129, label %137, !prof !737

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !289
  %132 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !289
  %134 = tail call i32 @rtx_equal_p(ptr noundef %131, ptr noundef %133) #17
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137, !prof !738

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
  %144 = load ptr, ptr %143, align 8, !tbaa !289
  br label %49

145:                                              ; preds = %108, %99, %104
  %146 = icmp eq i32 %60, 0
  br i1 %146, label %176, label %147, !prof !739

147:                                              ; preds = %145
  %148 = load ptr, ptr %6, align 8, !tbaa !289
  %149 = load ptr, ptr %148, align 8, !tbaa !352
  br label %150

150:                                              ; preds = %147, %153
  %151 = phi ptr [ %155, %153 ], [ %58, %147 ]
  %152 = icmp eq ptr %151, %149
  br i1 %152, label %160, label %153, !prof !740

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !289
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = add nsw i32 %157, -8
  %159 = icmp ult i32 %158, 3
  br i1 %159, label %160, label %150, !prof !741, !llvm.loop !742

160:                                              ; preds = %150, %153
  %161 = phi ptr [ %151, %153 ], [ %149, %150 ]
  %162 = load ptr, ptr %26, align 8, !tbaa !289
  %163 = load ptr, ptr %162, align 8, !tbaa !352
  br label %164

164:                                              ; preds = %167, %160
  %165 = phi ptr [ %59, %160 ], [ %169, %167 ]
  %166 = icmp eq ptr %165, %163
  br i1 %166, label %174, label %167, !prof !743

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1, i32 0, i32 0, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !289
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 65535
  %172 = add nsw i32 %171, -8
  %173 = icmp ult i32 %172, 3
  br i1 %173, label %174, label %164, !prof !744, !llvm.loop !745

174:                                              ; preds = %164, %167
  %175 = phi ptr [ %165, %167 ], [ %163, %164 ]
  store ptr %161, ptr %3, align 8, !tbaa !261
  store ptr %175, ptr %4, align 8, !tbaa !261
  br label %176

176:                                              ; preds = %174, %145
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @block_has_preserve_label(ptr noundef %0) unnamed_addr #0 !prof !746 !PGOFuncName !747 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !662

3:                                                ; preds = %1
  %4 = tail call ptr @block_label(ptr noundef nonnull %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !748

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
define internal fastcc noundef zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !749 !PGOFuncName !750 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %123, !prof !751

9:                                                ; preds = %3
  %10 = icmp eq i32 %5, 13
  br i1 %10, label %11, label %19, !prof !752

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !289
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !289
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %123, label %19

19:                                               ; preds = %15, %11, %9
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !289
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !289
  %24 = load i32, ptr %21, align 8
  %25 = load i32, ptr %23, align 8
  %26 = xor i32 %25, %24
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %123, !prof !753

29:                                               ; preds = %19
  %30 = icmp eq i32 %5, 10
  br i1 %30, label %31, label %44, !prof !754

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !289
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !289
  %36 = tail call i32 @rtx_equal_p(ptr noundef %33, ptr noundef %35) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %123, label %38, !prof !755

38:                                               ; preds = %31
  %39 = load i32, ptr %1, align 8
  %40 = load i32, ptr %2, align 8
  %41 = xor i32 %40, %39
  %42 = and i32 %41, 16777216
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %123, !prof !756

44:                                               ; preds = %38, %29
  %45 = and i32 %0, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %113, label %47, !prof !757

47:                                               ; preds = %44
  %48 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %1) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %113, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !289
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
  %62 = load ptr, ptr %61, align 8, !tbaa !289
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
  %77 = load ptr, ptr %76, align 8, !tbaa !289
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %54, !llvm.loop !758

79:                                               ; preds = %74, %50
  %80 = phi i64 [ 0, %50 ], [ %75, %74 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !289
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
  %92 = load ptr, ptr %91, align 8, !tbaa !289
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
  %107 = load ptr, ptr %106, align 8, !tbaa !289
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %84, !llvm.loop !759

109:                                              ; preds = %104, %79
  %110 = phi i64 [ 0, %79 ], [ %105, %104 ]
  %111 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %80, i64 noundef %110) #19, !range !304
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109, %47, %44
  %114 = load i32, ptr @reload_completed, align 4, !tbaa !256
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116, !prof !757

116:                                              ; preds = %113
  %117 = tail call i32 @rtx_renumbered_equal_p(ptr noundef nonnull %21, ptr noundef nonnull %23) #17
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %123, !prof !757

119:                                              ; preds = %113
  %120 = tail call i32 @rtx_equal_p(ptr noundef nonnull %21, ptr noundef nonnull %23) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123, !prof !760

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %116, %119, %31, %38, %19, %15, %3, %109, %122
  %124 = phi i8 [ 0, %122 ], [ 0, %109 ], [ 0, %3 ], [ 1, %15 ], [ 0, %19 ], [ 0, %38 ], [ 0, %31 ], [ 1, %119 ], [ 1, %116 ]
  ret i8 %124
}

; Function Attrs: optsize
declare i32 @stack_regs_mentioned(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_equal_p(i64 noundef %0, i64 noundef %1) unnamed_addr #10 !prof !280 !PGOFuncName !761 {
  %3 = icmp eq i64 %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_memattrs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !762 !PGOFuncName !763 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %267, label %4, !prof !764

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %267, label %8, !prof !765

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %267, !prof !766

14:                                               ; preds = %8
  %15 = xor i32 %11, %9
  %16 = and i32 %15, 16711680
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %267, !prof !766

18:                                               ; preds = %14
  %19 = icmp eq i32 %10, 43
  br i1 %19, label %20, label %221, !prof !767

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !289
  %23 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !289
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %221, label %26, !prof !768

26:                                               ; preds = %20
  %27 = icmp eq ptr %22, null
  br i1 %27, label %28, label %29, !prof !769

28:                                               ; preds = %26
  store ptr null, ptr %23, align 8, !tbaa !289
  br label %221

29:                                               ; preds = %26
  %30 = icmp eq ptr %24, null
  br i1 %30, label %31, label %32, !prof !769

31:                                               ; preds = %29
  store ptr null, ptr %21, align 8, !tbaa !289
  br label %221

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !770
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %24, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !770
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %41, label %38, !prof !312

38:                                               ; preds = %32
  tail call void @set_mem_alias_set(ptr noundef nonnull %0, i32 noundef 0) #17
  tail call void @set_mem_alias_set(ptr noundef nonnull %1, i32 noundef 0) #17
  %39 = load ptr, ptr %21, align 8, !tbaa !289
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41, !prof !294

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %39, %38 ], [ %22, %32 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !772
  br label %44

44:                                               ; preds = %38, %41
  %45 = phi ptr [ %43, %41 ], [ null, %38 ]
  %46 = load ptr, ptr %23, align 8, !tbaa !289
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !769

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !772
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi ptr [ %49, %48 ], [ null, %44 ]
  %52 = tail call i32 @mem_expr_equal_p(ptr noundef %45, ptr noundef %51) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55, !prof !312

54:                                               ; preds = %50
  tail call void @set_mem_expr(ptr noundef nonnull %0, ptr noundef null) #17
  tail call void @set_mem_expr(ptr noundef nonnull %1, ptr noundef null) #17
  br label %71

55:                                               ; preds = %50
  %56 = load ptr, ptr %21, align 8, !tbaa !289
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !773
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi ptr [ %60, %58 ], [ null, %55 ]
  %63 = load ptr, ptr %23, align 8, !tbaa !289
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mem_attrs, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !773
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
  %73 = load ptr, ptr %21, align 8, !tbaa !289
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75, !prof !312

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !774
  %78 = icmp eq ptr %77, null
  br i1 %78, label %187, label %91, !prof !312

79:                                               ; preds = %72
  %80 = load i32, ptr %0, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %187, label %84, !prof !312

84:                                               ; preds = %79
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !289
  %88 = zext i8 %87 to i64
  %89 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %88) #17
  %90 = icmp eq ptr %89, null
  br i1 %90, label %187, label %91

91:                                               ; preds = %84, %75
  %92 = load ptr, ptr %23, align 8, !tbaa !289
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94, !prof !312

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.mem_attrs, ptr %92, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !774
  %97 = icmp eq ptr %96, null
  br i1 %97, label %187, label %110, !prof !312

98:                                               ; preds = %91
  %99 = load i32, ptr %1, align 8
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %187, label %103, !prof !312

103:                                              ; preds = %98
  %104 = zext nneg i32 %101 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !289
  %107 = zext i8 %106 to i64
  %108 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %107) #17
  %109 = icmp eq ptr %108, null
  br i1 %109, label %187, label %110

110:                                              ; preds = %103, %94
  %111 = load ptr, ptr %21, align 8, !tbaa !289
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113, !prof !769

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mem_attrs, ptr %111, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !774
  br label %126

116:                                              ; preds = %110
  %117 = load i32, ptr %0, align 8
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = icmp ne i32 %119, 1
  tail call void @llvm.assume(i1 %120)
  %121 = zext nneg i32 %119 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !289
  %124 = zext i8 %123 to i64
  %125 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %124) #17
  br label %126

126:                                              ; preds = %116, %113
  %127 = phi ptr [ %115, %113 ], [ %125, %116 ]
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !289
  %130 = load ptr, ptr %23, align 8, !tbaa !289
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132, !prof !769

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.mem_attrs, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !774
  br label %145

135:                                              ; preds = %126
  %136 = load i32, ptr %1, align 8
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  %139 = icmp ne i32 %138, 1
  tail call void @llvm.assume(i1 %139)
  %140 = zext nneg i32 %138 to i64
  %141 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !289
  %143 = zext i8 %142 to i64
  %144 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %143) #17
  br label %145

145:                                              ; preds = %135, %132
  %146 = phi ptr [ %134, %132 ], [ %144, %135 ]
  %147 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !289
  %149 = icmp sgt i64 %129, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load ptr, ptr %21, align 8, !tbaa !289
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.mem_attrs, ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !774
  br label %182

156:                                              ; preds = %150
  %157 = load i32, ptr %0, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = icmp ne i32 %159, 1
  tail call void @llvm.assume(i1 %160)
  %161 = zext nneg i32 %159 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !289
  %164 = zext i8 %163 to i64
  %165 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %164) #17
  br label %182

166:                                              ; preds = %145
  %167 = load ptr, ptr %23, align 8, !tbaa !289
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169, !prof !769

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.mem_attrs, ptr %167, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !774
  br label %182

172:                                              ; preds = %166
  %173 = load i32, ptr %1, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = icmp ne i32 %175, 1
  tail call void @llvm.assume(i1 %176)
  %177 = zext nneg i32 %175 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !289
  %180 = zext i8 %179 to i64
  %181 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %180) #17
  br label %182

182:                                              ; preds = %169, %172, %153, %156
  %183 = phi ptr [ %155, %153 ], [ %165, %156 ], [ %171, %169 ], [ %181, %172 ]
  %184 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !289
  %186 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %185) #17
  br label %187

187:                                              ; preds = %94, %103, %98, %75, %84, %79, %182
  %188 = phi ptr [ %186, %182 ], [ null, %79 ], [ null, %84 ], [ null, %75 ], [ null, %98 ], [ null, %103 ], [ null, %94 ]
  tail call void @set_mem_size(ptr noundef nonnull %0, ptr noundef %188) #17
  tail call void @set_mem_size(ptr noundef nonnull %1, ptr noundef %188) #17
  %189 = load ptr, ptr %21, align 8, !tbaa !289
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191, !prof !769

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 4
  %193 = load i32, ptr %192, align 4, !tbaa !775
  %194 = load ptr, ptr %23, align 8, !tbaa !289
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %205, !prof !769

196:                                              ; preds = %187
  %197 = load ptr, ptr %23, align 8, !tbaa !289
  %198 = icmp eq ptr %197, null
  br i1 %198, label %212, label %201, !prof !769

199:                                              ; preds = %191
  %200 = tail call i32 @llvm.umin.i32(i32 %193, i32 8)
  br label %212

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.mem_attrs, ptr %197, i64 0, i32 4
  %203 = load i32, ptr %202, align 4, !tbaa !775
  %204 = tail call i32 @llvm.umin.i32(i32 %203, i32 8)
  br label %212

205:                                              ; preds = %191
  %206 = getelementptr inbounds %struct.mem_attrs, ptr %194, i64 0, i32 4
  %207 = load i32, ptr %206, align 4, !tbaa !775
  %208 = icmp ult i32 %193, %207
  br i1 %208, label %209, label %212, !prof !769

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 4
  %211 = load i32, ptr %210, align 4, !tbaa !775
  br label %212

212:                                              ; preds = %201, %199, %205, %209, %196
  %213 = phi i32 [ 8, %196 ], [ %211, %209 ], [ %207, %205 ], [ %200, %199 ], [ %204, %201 ]
  tail call void @set_mem_align(ptr noundef nonnull %0, i32 noundef %213) #17
  %214 = load ptr, ptr %21, align 8, !tbaa !289
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216, !prof !769

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.mem_attrs, ptr %214, i64 0, i32 4
  %218 = load i32, ptr %217, align 4, !tbaa !775
  br label %219

219:                                              ; preds = %212, %216
  %220 = phi i32 [ %218, %216 ], [ 8, %212 ]
  tail call void @set_mem_align(ptr noundef nonnull %1, i32 noundef %220) #17
  br label %221

221:                                              ; preds = %28, %219, %31, %20, %18
  %222 = zext nneg i32 %10 to i64
  %223 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !261
  %225 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %222
  %226 = load i8, ptr %225, align 1, !tbaa !289
  %227 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %228 = icmp eq i8 %226, 0
  br i1 %228, label %267, label %229, !prof !776

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %231 = zext i8 %226 to i64
  br label %232

232:                                              ; preds = %229, %265
  %233 = phi i64 [ %231, %229 ], [ %234, %265 ]
  %234 = add nsw i64 %233, -1
  %235 = getelementptr inbounds i8, ptr %224, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !289
  switch i8 %236, label %265 [
    i8 69, label %237
    i8 101, label %260
  ], !prof !777

237:                                              ; preds = %232
  %238 = getelementptr inbounds [1 x %union.rtunion_def], ptr %227, i64 0, i64 %234
  %239 = load ptr, ptr %238, align 8, !tbaa !289
  %240 = load i32, ptr %239, align 8, !tbaa !581
  %241 = getelementptr inbounds [1 x %union.rtunion_def], ptr %230, i64 0, i64 %234
  %242 = load ptr, ptr %241, align 8, !tbaa !289
  %243 = load i32, ptr %242, align 8, !tbaa !581
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %267, !prof !778

245:                                              ; preds = %237
  %246 = icmp sgt i32 %240, 0
  br i1 %246, label %247, label %265, !prof !779

247:                                              ; preds = %245, %247
  %248 = phi i64 [ %255, %247 ], [ 0, %245 ]
  %249 = phi ptr [ %256, %247 ], [ %239, %245 ]
  %250 = getelementptr inbounds %struct.rtvec_def, ptr %249, i64 0, i32 1, i64 %248
  %251 = load ptr, ptr %250, align 8, !tbaa !261
  %252 = load ptr, ptr %241, align 8, !tbaa !289
  %253 = getelementptr inbounds %struct.rtvec_def, ptr %252, i64 0, i32 1, i64 %248
  %254 = load ptr, ptr %253, align 8, !tbaa !261
  tail call fastcc void @merge_memattrs(ptr noundef %251, ptr noundef %254) #19
  %255 = add nuw nsw i64 %248, 1
  %256 = load ptr, ptr %238, align 8, !tbaa !289
  %257 = load i32, ptr %256, align 8, !tbaa !581
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %255, %258
  br i1 %259, label %247, label %265, !prof !780, !llvm.loop !781

260:                                              ; preds = %232
  %261 = getelementptr inbounds [1 x %union.rtunion_def], ptr %227, i64 0, i64 %234
  %262 = load ptr, ptr %261, align 8, !tbaa !289
  %263 = getelementptr inbounds [1 x %union.rtunion_def], ptr %230, i64 0, i64 %234
  %264 = load ptr, ptr %263, align 8, !tbaa !289
  tail call fastcc void @merge_memattrs(ptr noundef %262, ptr noundef %264) #19
  br label %265

265:                                              ; preds = %247, %245, %232, %260
  %266 = icmp sgt i64 %233, 1
  br i1 %266, label %232, label %267, !prof !782, !llvm.loop !783

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

; Function Attrs: optsize
declare void @fixup_tail_calls() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!254}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!35 = !{ptr @delete_unreachable_blocks, ptr @find_unreachable_blocks, i64 1075}
!36 = !{ptr @delete_unreachable_blocks, ptr @current_ir_type, i64 1}
!37 = !{ptr @delete_unreachable_blocks, ptr @first_dom_son, i64 2}
!38 = !{ptr @delete_unreachable_blocks, ptr @delete_basic_block, i64 191}
!39 = !{ptr @delete_unreachable_blocks, ptr @get_all_dominated_blocks, i64 1}
!40 = !{ptr @delete_unreachable_blocks, ptr @VEC_basic_block_base_length, i64 30}
!41 = !{ptr @delete_unreachable_blocks, ptr @VEC_basic_block_base_pop, i64 29}
!42 = !{ptr @delete_unreachable_blocks, ptr @fancy_abort, i64 15}
!43 = !{ptr @delete_unreachable_blocks, ptr @VEC_basic_block_heap_free, i64 1}
!44 = !{ptr @delete_unreachable_blocks, ptr @tidy_fallthru_edges, i64 40}
!45 = !{ptr @delete_dead_jumptables, ptr @fprintf, i64 1}
!46 = !{ptr @delete_dead_jumptables, ptr @delete_insn, i64 2}
!47 = !{ptr @cleanup_cfg, ptr @current_ir_type, i64 553}
!48 = !{ptr @cleanup_cfg, ptr @timevar_push_1, i64 1}
!49 = !{ptr @cleanup_cfg, ptr @delete_unreachable_blocks, i64 739}
!50 = !{ptr @cleanup_cfg, ptr @get_insns, i64 46}
!51 = !{ptr @cleanup_cfg, ptr @max_reg_num, i64 46}
!52 = !{ptr @cleanup_cfg, ptr @delete_trivially_dead_insns, i64 46}
!53 = !{ptr @cleanup_cfg, ptr @compact_blocks, i64 553}
!54 = !{ptr @cleanup_cfg, ptr @add_noreturn_fake_exit_edges, i64 39}
!55 = !{ptr @cleanup_cfg, ptr @dbg_cnt, i64 553}
!56 = !{ptr @cleanup_cfg, ptr @try_optimize_cfg, i64 729}
!57 = !{ptr @cleanup_cfg, ptr @run_fast_dce, i64 29}
!58 = !{ptr @cleanup_cfg, ptr @remove_fake_exit_edges, i64 39}
!59 = !{ptr @cleanup_cfg, ptr @delete_dead_jumptables, i64 114}
!60 = !{ptr @cleanup_cfg, ptr @timevar_pop_1, i64 1}
!61 = !{ptr @try_optimize_cfg, ptr @clear_bb_flags, i64 106}
!62 = !{ptr @try_optimize_cfg, ptr @update_forwarder_flag, i64 3581909}
!63 = !{ptr @try_optimize_cfg, ptr @fprintf, i64 2}
!64 = !{ptr @try_optimize_cfg, ptr @VEC_edge_base_length, i64 9747803}
!65 = !{ptr @try_optimize_cfg, ptr @trivially_empty_bb_p, i64 1208}
!66 = !{ptr @try_optimize_cfg, ptr @single_succ_edge, i64 860206}
!67 = !{ptr @try_optimize_cfg, ptr @delete_basic_block, i64 55388}
!68 = !{ptr @try_optimize_cfg, ptr @single_pred_p, i64 6505477}
!69 = !{ptr @try_optimize_cfg, ptr @single_pred_edge, i64 6910911}
!70 = !{ptr @try_optimize_cfg, ptr @single_pred, i64 5514}
!71 = !{ptr @try_optimize_cfg, ptr @label_is_jump_target_p, i64 1837}
!72 = !{ptr @try_optimize_cfg, ptr @delete_insn_chain, i64 1838}
!73 = !{ptr @try_optimize_cfg, ptr @reorder_insns_nobb, i64 1}
!74 = !{ptr @try_optimize_cfg, ptr @single_succ_p, i64 9692414}
!75 = !{ptr @try_optimize_cfg, ptr @can_merge_blocks_p, i64 118}
!76 = !{ptr @try_optimize_cfg, ptr @merge_blocks, i64 117}
!77 = !{ptr @try_optimize_cfg, ptr @simplejump_p, i64 1}
!78 = !{ptr @try_optimize_cfg, ptr @onlyjump_p, i64 726356}
!79 = !{ptr @try_optimize_cfg, ptr @tablejump_p, i64 1}
!80 = !{ptr @try_optimize_cfg, ptr @merge_blocks_move, i64 12}
!81 = !{ptr @try_optimize_cfg, ptr @try_simplify_condjump, i64 310772}
!82 = !{ptr @try_optimize_cfg, ptr @single_succ, i64 846826}
!83 = !{ptr @try_optimize_cfg, ptr @find_reg_note, i64 118883}
!84 = !{ptr @try_optimize_cfg, ptr @try_redirect_by_replacing_jump, i64 118882}
!85 = !{ptr @try_optimize_cfg, ptr @try_forward_edges, i64 4846207}
!86 = !{ptr @try_optimize_cfg, ptr @try_crossjump_bb, i64 622433}
!87 = !{ptr @rest_of_handle_jump, ptr @fixup_tail_calls, i64 2}
!88 = !{ptr @rest_of_handle_jump2, ptr @get_insns, i64 38}
!89 = !{ptr @rest_of_handle_jump2, ptr @max_reg_num, i64 38}
!90 = !{ptr @rest_of_handle_jump2, ptr @delete_trivially_dead_insns, i64 38}
!91 = !{ptr @rest_of_handle_jump2, ptr @dump_flow_info, i64 1}
!92 = !{ptr @rest_of_handle_jump2, ptr @cleanup_cfg, i64 38}
!93 = !{ptr @update_forwarder_flag, ptr @forwarder_block_p, i64 3587217}
!94 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 2267643}
!95 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!96 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 2267643}
!97 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 14309000}
!98 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 6951497}
!99 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!100 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 6951497}
!101 = !{ptr @single_pred, ptr @single_pred_edge, i64 5523}
!102 = !{ptr @single_succ, ptr @single_succ_edge, i64 1110805}
!103 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 12379389}
!104 = !{ptr @merge_blocks_move, ptr @merge_blocks, i64 12}
!105 = !{ptr @merge_blocks_move, ptr @update_forwarder_flag, i64 12}
!106 = !{ptr @merge_blocks_move, ptr @fprintf, i64 1}
!107 = !{ptr @merge_blocks_move, ptr @ei_next, i64 10}
!108 = !{ptr @merge_blocks_move, ptr @ei_cond, i64 10}
!109 = !{ptr @try_simplify_condjump, ptr @VEC_edge_base_length, i64 311308}
!110 = !{ptr @try_simplify_condjump, ptr @any_condjump_p, i64 296357}
!111 = !{ptr @try_simplify_condjump, ptr @VEC_edge_base_index, i64 592712}
!112 = !{ptr @try_simplify_condjump, ptr @single_pred_p, i64 296356}
!113 = !{ptr @try_simplify_condjump, ptr @single_succ, i64 4087}
!114 = !{ptr @try_simplify_condjump, ptr @can_fallthru, i64 4084}
!115 = !{ptr @try_simplify_condjump, ptr @block_label, i64 1}
!116 = !{ptr @try_simplify_condjump, ptr @invert_jump, i64 1}
!117 = !{ptr @try_simplify_condjump, ptr @redirect_edge_succ_nodup, i64 2}
!118 = !{ptr @try_simplify_condjump, ptr @update_br_prob_note, i64 1}
!119 = !{ptr @try_simplify_condjump, ptr @delete_basic_block, i64 1}
!120 = !{ptr @try_simplify_condjump, ptr @tidy_fallthru_edge, i64 1}
!121 = !{ptr @try_simplify_condjump, ptr @update_forwarder_flag, i64 1}
!122 = !{ptr @try_forward_edges, ptr @find_reg_note, i64 13968706}
!123 = !{ptr @try_forward_edges, ptr @ei_start_1, i64 4854580}
!124 = !{ptr @try_forward_edges, ptr @ei_safe_edge, i64 13970533}
!125 = !{ptr @try_forward_edges, ptr @df_get_bb_dirty, i64 18276517}
!126 = !{ptr @try_forward_edges, ptr @ei_next, i64 9047995}
!127 = !{ptr @try_forward_edges, ptr @single_succ_edge, i64 220567}
!128 = !{ptr @try_forward_edges, ptr @single_succ, i64 233004}
!129 = !{ptr @try_forward_edges, ptr @thread_jump, i64 366762}
!130 = !{ptr @try_forward_edges, ptr @xmalloc, i64 7}
!131 = !{ptr @try_forward_edges, ptr @fancy_abort, i64 3}
!132 = !{ptr @try_forward_edges, ptr @fprintf, i64 2}
!133 = !{ptr @try_forward_edges, ptr @redirect_edge_and_branch_force, i64 7}
!134 = !{ptr @try_forward_edges, ptr @notice_new_block, i64 7}
!135 = !{ptr @try_forward_edges, ptr @fwrite, i64 1}
!136 = !{ptr @try_forward_edges, ptr @redirect_edge_and_branch, i64 81220}
!137 = !{ptr @try_forward_edges, ptr @forwarder_block_p, i64 67881}
!138 = !{ptr @try_forward_edges, ptr @single_succ_p, i64 103698}
!139 = !{ptr @try_forward_edges, ptr @update_bb_profile_for_threading, i64 8}
!140 = !{ptr @try_forward_edges, ptr @update_br_prob_note, i64 8}
!141 = !{ptr @try_forward_edges, ptr @free, i64 8}
!142 = !{ptr @try_crossjump_bb, ptr @VEC_edge_base_length, i64 2115034}
!143 = !{ptr @try_crossjump_bb, ptr @optimize_bb_for_size_p, i64 190592}
!144 = !{ptr @try_crossjump_bb, ptr @computed_jump_p, i64 132461}
!145 = !{ptr @try_crossjump_bb, ptr @VEC_edge_base_index, i64 1641204}
!146 = !{ptr @try_crossjump_bb, ptr @ei_start_1, i64 190537}
!147 = !{ptr @try_crossjump_bb, ptr @ei_cond, i64 352716}
!148 = !{ptr @try_crossjump_bb, ptr @ei_next, i64 162179}
!149 = !{ptr @try_crossjump_bb, ptr @df_get_bb_dirty, i64 453603}
!150 = !{ptr @try_crossjump_bb, ptr @try_crossjump_to_edge, i64 307273}
!151 = !{ptr @ei_cond, ptr @ei_end_p, i64 351586}
!152 = !{ptr @ei_cond, ptr @ei_edge, i64 342175}
!153 = !{ptr @ei_next, ptr @ei_container, i64 18414811}
!154 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 9207406}
!155 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!156 = !{ptr @notice_new_block, ptr @forwarder_block_p, i64 1}
!157 = !{ptr @ei_end_p, ptr @ei_container, i64 28644249}
!158 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 14322125}
!159 = !{ptr @ei_edge, ptr @ei_container, i64 18916267}
!160 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 9458134}
!161 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!162 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 13970539}
!163 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 9115958}
!164 = !{ptr @thread_jump, ptr @VEC_edge_base_length, i64 632194}
!165 = !{ptr @thread_jump, ptr @any_condjump_p, i64 429391}
!166 = !{ptr @thread_jump, ptr @onlyjump_p, i64 214694}
!167 = !{ptr @thread_jump, ptr @pc_set, i64 429386}
!168 = !{ptr @thread_jump, ptr @reversed_comparison_code, i64 351901}
!169 = !{ptr @thread_jump, ptr @comparison_dominates_p, i64 295571}
!170 = !{ptr @thread_jump, ptr @rtx_equal_p, i64 427440}
!171 = !{ptr @thread_jump, ptr @side_effects_p, i64 635253}
!172 = !{ptr @thread_jump, ptr @cselib_init, i64 143864}
!173 = !{ptr @thread_jump, ptr @cselib_process_insn, i64 1088523}
!174 = !{ptr @thread_jump, ptr @bitmap_obstack_alloc_stat, i64 143864}
!175 = !{ptr @thread_jump, ptr @bitmap_clear, i64 143864}
!176 = !{ptr @thread_jump, ptr @mark_effect, i64 439654}
!177 = !{ptr @thread_jump, ptr @for_each_rtx, i64 143863}
!178 = !{ptr @thread_jump, ptr @bmp_iter_set_init, i64 8}
!179 = !{ptr @thread_jump, ptr @bmp_iter_set, i64 8}
!180 = !{ptr @thread_jump, ptr @bitmap_obstack_free, i64 143864}
!181 = !{ptr @thread_jump, ptr @cselib_finish, i64 143864}
!182 = !{ptr @thread_jump, ptr @VEC_edge_base_index, i64 12}
!183 = !{ptr @mark_effect, ptr @rhs_regno, i64 304954}
!184 = !{ptr @mark_effect, ptr @bitmap_clear_bit, i64 27069}
!185 = !{ptr @mark_effect, ptr @rtx_equal_for_cselib_p, i64 426220}
!186 = !{ptr @mark_effect, ptr @bitmap_set_bit, i64 277887}
!187 = !{ptr @mentions_nonequal_regs, ptr @rhs_regno, i64 148326}
!188 = !{ptr @mentions_nonequal_regs, ptr @bitmap_bit_p, i64 148327}
!189 = !{ptr @try_crossjump_to_edge, ptr @single_pred_p, i64 544424}
!190 = !{ptr @try_crossjump_to_edge, ptr @single_pred_edge, i64 23123}
!191 = !{ptr @try_crossjump_to_edge, ptr @single_succ, i64 26175}
!192 = !{ptr @try_crossjump_to_edge, ptr @VEC_edge_base_length, i64 543335}
!193 = !{ptr @try_crossjump_to_edge, ptr @outgoing_edges_match, i64 270912}
!194 = !{ptr @try_crossjump_to_edge, ptr @flow_find_cross_jump, i64 16153}
!195 = !{ptr @try_crossjump_to_edge, ptr @block_has_preserve_label, i64 337}
!196 = !{ptr @try_crossjump_to_edge, ptr @tablejump_p, i64 337}
!197 = !{ptr @try_crossjump_to_edge, ptr @for_each_rtx, i64 5}
!198 = !{ptr @try_crossjump_to_edge, ptr @VEC_edge_base_index, i64 317}
!199 = !{ptr @try_crossjump_to_edge, ptr @fprintf, i64 2}
!200 = !{ptr @try_crossjump_to_edge, ptr @split_block, i64 356}
!201 = !{ptr @try_crossjump_to_edge, ptr @df_set_bb_dirty, i64 336}
!202 = !{ptr @try_crossjump_to_edge, ptr @ei_start_1, i64 733}
!203 = !{ptr @try_crossjump_to_edge, ptr @ei_cond, i64 12556}
!204 = !{ptr @try_crossjump_to_edge, ptr @ei_next, i64 11823}
!205 = !{ptr @try_crossjump_to_edge, ptr @single_succ_edge, i64 491}
!206 = !{ptr @try_crossjump_to_edge, ptr @update_br_prob_note, i64 336}
!207 = !{ptr @try_crossjump_to_edge, ptr @redirect_edge_and_branch_force, i64 336}
!208 = !{ptr @try_crossjump_to_edge, ptr @delete_basic_block, i64 336}
!209 = !{ptr @try_crossjump_to_edge, ptr @update_forwarder_flag, i64 355}
!210 = !{ptr @outgoing_edges_match, ptr @single_succ_p, i64 298886}
!211 = !{ptr @outgoing_edges_match, ptr @single_succ_edge, i64 73178}
!212 = !{ptr @outgoing_edges_match, ptr @simplejump_p, i64 39221}
!213 = !{ptr @outgoing_edges_match, ptr @VEC_edge_base_length, i64 485843}
!214 = !{ptr @outgoing_edges_match, ptr @any_condjump_p, i64 473598}
!215 = !{ptr @outgoing_edges_match, ptr @onlyjump_p, i64 473596}
!216 = !{ptr @outgoing_edges_match, ptr @VEC_edge_base_index, i64 925586}
!217 = !{ptr @outgoing_edges_match, ptr @pc_set, i64 14444}
!218 = !{ptr @outgoing_edges_match, ptr @reversed_comparison_code, i64 1273}
!219 = !{ptr @outgoing_edges_match, ptr @rtx_renumbered_equal_p, i64 6839}
!220 = !{ptr @outgoing_edges_match, ptr @swap_condition, i64 4589}
!221 = !{ptr @outgoing_edges_match, ptr @optimize_bb_for_speed_p, i64 4658}
!222 = !{ptr @outgoing_edges_match, ptr @fprintf, i64 1}
!223 = !{ptr @outgoing_edges_match, ptr @tablejump_p, i64 705}
!224 = !{ptr @outgoing_edges_match, ptr @old_insns_match_p, i64 673}
!225 = !{ptr @outgoing_edges_match, ptr @ei_start_1, i64 602}
!226 = !{ptr @outgoing_edges_match, ptr @ei_cond, i64 9843}
!227 = !{ptr @outgoing_edges_match, ptr @ei_next, i64 8942}
!228 = !{ptr @outgoing_edges_match, ptr @forwarder_block_p, i64 2}
!229 = !{ptr @outgoing_edges_match, ptr @single_succ, i64 2}
!230 = !{ptr @outgoing_edges_match, ptr @find_reg_note, i64 602}
!231 = !{ptr @flow_find_cross_jump, ptr @onlyjump_p, i64 32306}
!232 = !{ptr @flow_find_cross_jump, ptr @returnjump_p, i64 5222}
!233 = !{ptr @flow_find_cross_jump, ptr @side_effects_p, i64 2}
!234 = !{ptr @flow_find_cross_jump, ptr @simplejump_p, i64 13870}
!235 = !{ptr @flow_find_cross_jump, ptr @old_insns_match_p, i64 26239}
!236 = !{ptr @flow_find_cross_jump, ptr @merge_memattrs, i64 10874}
!237 = !{ptr @flow_find_cross_jump, ptr @find_reg_equal_equiv_note, i64 21746}
!238 = !{ptr @flow_find_cross_jump, ptr @remove_note, i64 67}
!239 = !{ptr @flow_find_cross_jump, ptr @rtx_equal_p, i64 1271}
!240 = !{ptr @block_has_preserve_label, ptr @block_label, i64 628}
!241 = !{ptr @old_insns_match_p, ptr @rtx_equal_p, i64 22001}
!242 = !{ptr @old_insns_match_p, ptr @stack_regs_mentioned, i64 1}
!243 = !{ptr @old_insns_match_p, ptr @rhs_regno, i64 6}
!244 = !{ptr @old_insns_match_p, ptr @hard_reg_set_equal_p, i64 1}
!245 = !{ptr @old_insns_match_p, ptr @rtx_renumbered_equal_p, i64 1}
!246 = !{ptr @merge_memattrs, ptr @set_mem_alias_set, i64 2}
!247 = !{ptr @merge_memattrs, ptr @mem_expr_equal_p, i64 7}
!248 = !{ptr @merge_memattrs, ptr @set_mem_expr, i64 14}
!249 = !{ptr @merge_memattrs, ptr @set_mem_offset, i64 14}
!250 = !{ptr @merge_memattrs, ptr @gen_rtx_CONST_INT, i64 1}
!251 = !{ptr @merge_memattrs, ptr @set_mem_size, i64 14}
!252 = !{ptr @merge_memattrs, ptr @set_mem_align, i64 14}
!253 = !{ptr @merge_memattrs, ptr @merge_memattrs, i64 211134}
!254 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!255 = !{!"function_entry_count", i64 1075}
!256 = !{!257, !257, i64 0}
!257 = !{!"int", !258, i64 0}
!258 = !{!"omnipotent char", !259, i64 0}
!259 = !{!"Simple C/C++ TBAA"}
!260 = !{!"branch_weights", i32 1076, i32 1}
!261 = !{!262, !262, i64 0}
!262 = !{!"any pointer", !258, i64 0}
!263 = !{!264, !262, i64 8}
!264 = !{!"function", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !262, i64 48, !262, i64 56, !262, i64 64, !262, i64 72, !262, i64 80, !262, i64 88, !262, i64 96, !257, i64 104, !257, i64 108, !257, i64 112, !257, i64 116, !257, i64 120, !257, i64 124, !262, i64 128, !257, i64 136, !257, i64 137, !257, i64 138, !257, i64 138, !257, i64 138, !257, i64 138, !257, i64 138, !257, i64 138, !257, i64 138, !257, i64 139, !257, i64 139, !257, i64 139, !257, i64 139, !257, i64 139, !257, i64 139, !257, i64 139}
!265 = !{!266, !262, i64 8}
!266 = !{!"control_flow_graph", !262, i64 0, !262, i64 8, !262, i64 16, !257, i64 24, !257, i64 28, !257, i64 32, !262, i64 40, !257, i64 48, !258, i64 52, !258, i64 60, !257, i64 68, !257, i64 72}
!267 = !{!268, !262, i64 48}
!268 = !{!"basic_block_def", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !258, i64 32, !262, i64 48, !262, i64 56, !258, i64 64, !269, i64 72, !257, i64 80, !257, i64 84, !257, i64 88, !257, i64 92, !257, i64 96}
!269 = !{!"long", !258, i64 0}
!270 = !{!266, !262, i64 0}
!271 = !{!268, !257, i64 96}
!272 = distinct !{!272, !273}
!273 = !{!"llvm.loop.mustprogress"}
!274 = distinct !{!274, !273}
!275 = !{!"branch_weights", i32 1, i32 1075}
!276 = !{!"branch_weights", i32 161, i32 5850928}
!277 = !{!"branch_weights", i32 1075, i32 5850013}
!278 = distinct !{!278, !273}
!279 = !{!"branch_weights", i32 2067644969, i32 79838679}
!280 = !{!"function_entry_count", i64 0}
!281 = !{!"cfgcleanup.c:VEC_basic_block_base_length"}
!282 = !{!283, !257, i64 0}
!283 = !{!"VEC_basic_block_base", !257, i64 0, !257, i64 4, !258, i64 8}
!284 = !{!"cfgcleanup.c:VEC_basic_block_base_pop"}
!285 = !{!"cfgcleanup.c:VEC_basic_block_heap_free"}
!286 = !{!"function_entry_count", i64 228}
!287 = !{!268, !262, i64 56}
!288 = !{!"branch_weights", i32 1, i32 228}
!289 = !{!258, !258, i64 0}
!290 = !{!291, !262, i64 8}
!291 = !{!"rtl_bb_info", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !257, i64 32}
!292 = !{!"branch_weights", i32 996441, i32 485497}
!293 = !{!"branch_weights", i32 996479, i32 485687}
!294 = !{!"branch_weights", i32 -2147483648, i32 0}
!295 = !{!"branch_weights", i32 1686, i32 377388}
!296 = !{!"branch_weights", i32 1, i32 1686}
!297 = !{!"branch_weights", i32 228, i32 1481709}
!298 = distinct !{!298, !273}
!299 = !{!"branch_weights", i32 228, i32 996251}
!300 = distinct !{!300, !273}
!301 = !{!"function_entry_count", i64 553}
!302 = !{!"branch_weights", i32 440, i32 115}
!303 = !{!"branch_weights", i32 554, i32 1}
!304 = !{i8 0, i8 2}
!305 = !{!"branch_weights", i32 516, i32 39}
!306 = !{!"branch_weights", i32 79, i32 1521}
!307 = !{!"branch_weights", i32 39, i32 516}
!308 = !{!"branch_weights", i32 1, i32 554}
!309 = !{!"branch_weights", i32 362, i32 184}
!310 = !{!"branch_weights", i32 184, i32 1}
!311 = !{!"branch_weights", i32 11097, i32 558}
!312 = !{!"branch_weights", i32 9, i32 1}
!313 = !{!"branch_weights", i32 900, i32 4587}
!314 = !{!"branch_weights", i32 184, i32 0}
!315 = distinct !{!315, !273}
!316 = !{!"branch_weights", i32 115, i32 440}
!317 = !{!"function_entry_count", i64 728}
!318 = !{!"cfgcleanup.c:try_optimize_cfg"}
!319 = !{!"branch_weights", i32 624, i32 106}
!320 = !{!"branch_weights", i32 1, i32 728}
!321 = !{!"branch_weights", i32 728, i32 3509545}
!322 = distinct !{!322, !273}
!323 = !{!324, !262, i64 976}
!324 = !{!"gcc_target", !325, i64 0, !327, i64 368, !328, i64 664, !257, i64 744, !262, i64 752, !262, i64 760, !262, i64 768, !262, i64 776, !262, i64 784, !262, i64 792, !262, i64 800, !262, i64 808, !262, i64 816, !262, i64 824, !262, i64 832, !262, i64 840, !262, i64 848, !262, i64 856, !262, i64 864, !262, i64 872, !262, i64 880, !262, i64 888, !262, i64 896, !262, i64 904, !262, i64 912, !262, i64 920, !262, i64 928, !262, i64 936, !262, i64 944, !262, i64 952, !262, i64 960, !262, i64 968, !262, i64 976, !262, i64 984, !262, i64 992, !262, i64 1000, !262, i64 1008, !262, i64 1016, !262, i64 1024, !262, i64 1032, !262, i64 1040, !262, i64 1048, !262, i64 1056, !269, i64 1064, !269, i64 1072, !262, i64 1080, !262, i64 1088, !262, i64 1096, !262, i64 1104, !262, i64 1112, !262, i64 1120, !262, i64 1128, !262, i64 1136, !262, i64 1144, !262, i64 1152, !262, i64 1160, !262, i64 1168, !329, i64 1176, !262, i64 1232, !262, i64 1240, !262, i64 1248, !262, i64 1256, !262, i64 1264, !262, i64 1272, !262, i64 1280, !262, i64 1288, !262, i64 1296, !262, i64 1304, !262, i64 1312, !262, i64 1320, !262, i64 1328, !262, i64 1336, !262, i64 1344, !262, i64 1352, !262, i64 1360, !262, i64 1368, !262, i64 1376, !262, i64 1384, !262, i64 1392, !262, i64 1400, !262, i64 1408, !262, i64 1416, !262, i64 1424, !262, i64 1432, !262, i64 1440, !262, i64 1448, !262, i64 1456, !269, i64 1464, !330, i64 1472, !262, i64 1664, !262, i64 1672, !262, i64 1680, !262, i64 1688, !262, i64 1696, !262, i64 1704, !262, i64 1712, !262, i64 1720, !262, i64 1728, !262, i64 1736, !262, i64 1744, !262, i64 1752, !262, i64 1760, !262, i64 1768, !262, i64 1776, !331, i64 1784, !332, i64 1792, !333, i64 1896, !334, i64 1968, !262, i64 2016, !258, i64 2024, !258, i64 2025, !258, i64 2026, !258, i64 2027, !258, i64 2028, !258, i64 2029, !258, i64 2030, !258, i64 2031, !258, i64 2032, !258, i64 2033, !258, i64 2034, !258, i64 2035}
!325 = !{!"asm_out", !262, i64 0, !262, i64 8, !262, i64 16, !326, i64 24, !326, i64 56, !262, i64 88, !262, i64 96, !262, i64 104, !262, i64 112, !262, i64 120, !262, i64 128, !262, i64 136, !262, i64 144, !262, i64 152, !262, i64 160, !262, i64 168, !262, i64 176, !262, i64 184, !262, i64 192, !262, i64 200, !262, i64 208, !262, i64 216, !262, i64 224, !262, i64 232, !262, i64 240, !262, i64 248, !262, i64 256, !262, i64 264, !262, i64 272, !262, i64 280, !262, i64 288, !262, i64 296, !262, i64 304, !262, i64 312, !262, i64 320, !262, i64 328, !262, i64 336, !262, i64 344, !262, i64 352, !262, i64 360}
!326 = !{!"asm_int_op", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24}
!327 = !{!"sched", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !262, i64 48, !262, i64 56, !262, i64 64, !262, i64 72, !262, i64 80, !262, i64 88, !262, i64 96, !262, i64 104, !262, i64 112, !262, i64 120, !262, i64 128, !262, i64 136, !262, i64 144, !262, i64 152, !262, i64 160, !262, i64 168, !262, i64 176, !262, i64 184, !262, i64 192, !262, i64 200, !262, i64 208, !262, i64 216, !262, i64 224, !262, i64 232, !262, i64 240, !262, i64 248, !262, i64 256, !262, i64 264, !262, i64 272, !262, i64 280, !262, i64 288}
!328 = !{!"vectorize", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !262, i64 48, !262, i64 56, !262, i64 64, !262, i64 72}
!329 = !{!"addr_space", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !262, i64 48}
!330 = !{!"calls", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !262, i64 48, !262, i64 56, !262, i64 64, !262, i64 72, !262, i64 80, !262, i64 88, !262, i64 96, !262, i64 104, !262, i64 112, !262, i64 120, !262, i64 128, !262, i64 136, !262, i64 144, !262, i64 152, !262, i64 160, !262, i64 168, !262, i64 176, !262, i64 184}
!331 = !{!"c", !262, i64 0}
!332 = !{!"cxx", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !262, i64 48, !262, i64 56, !262, i64 64, !262, i64 72, !262, i64 80, !262, i64 88, !262, i64 96}
!333 = !{!"emutls", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !262, i64 48, !262, i64 56, !258, i64 64, !258, i64 65}
!334 = !{!"target_option_hooks", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40}
!335 = !{!"branch_weights", i32 729, i32 1}
!336 = !{!"branch_weights", i32 982, i32 1}
!337 = !{!"branch_weights", i32 1, i32 981}
!338 = !{!268, !262, i64 0}
!339 = !{!"branch_weights", i32 55483, i32 4854582}
!340 = !{!268, !262, i64 8}
!341 = !{!"branch_weights", i32 1210, i32 4853373}
!342 = !{!"branch_weights", i32 1210, i32 1}
!343 = !{!344, !262, i64 8}
!344 = !{!"edge_def", !262, i64 0, !262, i64 8, !258, i64 16, !262, i64 24, !262, i64 32, !257, i64 40, !257, i64 44, !257, i64 48, !257, i64 52, !269, i64 56}
!345 = !{!"branch_weights", i32 197, i32 55287}
!346 = !{!"branch_weights", i32 1, i32 55483}
!347 = distinct !{!347, !273}
!348 = !{!"branch_weights", i32 1307852, i32 3546731}
!349 = !{!344, !257, i64 48}
!350 = !{!"branch_weights", i32 819968, i32 2726764}
!351 = !{!"branch_weights", i32 2726764, i32 1}
!352 = !{!291, !262, i64 0}
!353 = !{!"branch_weights", i32 1842, i32 2724923}
!354 = !{!"branch_weights", i32 1, i32 1842}
!355 = !{!"branch_weights", i32 1842, i32 1}
!356 = !{!268, !257, i64 80}
!357 = !{!"branch_weights", i32 934649, i32 3919934}
!358 = !{!"branch_weights", i32 285289, i32 649361}
!359 = !{!"branch_weights", i32 30659, i32 618703}
!360 = !{!"branch_weights", i32 1, i32 618703}
!361 = !{!"branch_weights", i32 605348, i32 13356}
!362 = !{!"branch_weights", i32 13356, i32 1}
!363 = !{!266, !257, i64 24}
!364 = !{!"branch_weights", i32 4125335, i32 729248}
!365 = !{!"branch_weights", i32 1, i32 729248}
!366 = !{!"branch_weights", i32 728938, i32 311}
!367 = !{!"branch_weights", i32 1448, i32 727491}
!368 = !{!"branch_weights", i32 727122, i32 370}
!369 = !{!"branch_weights", i32 1, i32 370}
!370 = !{!"branch_weights", i32 252, i32 119}
!371 = !{!"branch_weights", i32 1, i32 119}
!372 = !{!"branch_weights", i32 241, i32 12}
!373 = !{!"branch_weights", i32 241, i32 1}
!374 = !{!"branch_weights", i32 1, i32 -1}
!375 = !{!"branch_weights", i32 12, i32 241}
!376 = !{!"branch_weights", i32 137714580, i32 2009769068}
!377 = !{!"branch_weights", i32 311309, i32 1}
!378 = !{!"branch_weights", i32 4125381, i32 729202}
!379 = !{!"branch_weights", i32 1828, i32 727375}
!380 = !{!"branch_weights", i32 608287, i32 119089}
!381 = !{!"branch_weights", i32 119089, i32 1}
!382 = !{!"branch_weights", i32 42626, i32 76464}
!383 = !{!"branch_weights", i32 4786853, i32 67730}
!384 = !{!"branch_weights", i32 4231242, i32 623341}
!385 = !{!"branch_weights", i32 -1818024146, i32 76265681}
!386 = !{!"branch_weights", i32 2083644718, i32 63838930}
!387 = !{!"branch_weights", i32 981, i32 4909083}
!388 = !{!"branch_weights", i32 816, i32 167}
!389 = !{!"branch_weights", i32 164, i32 4}
!390 = !{!"branch_weights", i32 729, i32 254}
!391 = distinct !{!391, !273}
!392 = !{!"branch_weights", i32 728, i32 3455408}
!393 = distinct !{!393, !273}
!394 = !{!"function_entry_count", i64 38}
!395 = !{!"cfgcleanup.c:rest_of_handle_jump"}
!396 = !{!397, !258, i64 475}
!397 = !{!"rtl_data", !398, i64 0, !399, i64 40, !400, i64 96, !401, i64 112, !403, i64 208, !404, i64 248, !257, i64 312, !262, i64 320, !262, i64 328, !262, i64 336, !262, i64 344, !262, i64 352, !262, i64 360, !262, i64 368, !262, i64 376, !262, i64 384, !262, i64 392, !269, i64 400, !262, i64 408, !262, i64 416, !262, i64 424, !257, i64 432, !257, i64 436, !257, i64 440, !257, i64 444, !257, i64 448, !257, i64 452, !262, i64 456, !258, i64 464, !258, i64 465, !258, i64 466, !258, i64 467, !258, i64 468, !258, i64 469, !258, i64 470, !258, i64 471, !258, i64 472, !258, i64 473, !258, i64 474, !258, i64 475, !258, i64 476, !258, i64 477, !258, i64 478, !258, i64 479, !258, i64 480, !258, i64 481, !258, i64 482, !258, i64 483, !258, i64 484, !258, i64 485}
!398 = !{!"expr_status", !257, i64 0, !257, i64 4, !257, i64 8, !262, i64 16, !262, i64 24, !262, i64 32}
!399 = !{!"emit_status", !257, i64 0, !257, i64 4, !262, i64 8, !262, i64 16, !262, i64 24, !257, i64 32, !257, i64 36, !257, i64 40, !257, i64 44, !262, i64 48}
!400 = !{!"varasm_status", !262, i64 0, !257, i64 8}
!401 = !{!"incoming_args", !257, i64 0, !257, i64 4, !257, i64 8, !262, i64 16, !402, i64 24, !262, i64 88}
!402 = !{!"ix86_args", !257, i64 0, !257, i64 4, !257, i64 8, !257, i64 12, !257, i64 16, !257, i64 20, !257, i64 24, !257, i64 28, !257, i64 32, !257, i64 36, !257, i64 40, !257, i64 44, !257, i64 48, !257, i64 52, !257, i64 56, !257, i64 60}
!403 = !{!"function_subsections", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32}
!404 = !{!"rtl_eh", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !258, i64 48}
!405 = !{!"branch_weights", i32 38, i32 2}
!406 = !{!"cfgcleanup.c:rest_of_handle_jump2"}
!407 = !{!"branch_weights", i32 39, i32 1}
!408 = !{!"function_entry_count", i64 3587217}
!409 = !{!"cfgcleanup.c:update_forwarder_flag"}
!410 = !{!"branch_weights", i32 3523329, i32 63890}
!411 = !{!"function_entry_count", i64 63943607}
!412 = !{!"cfgcleanup.c:VEC_edge_base_length"}
!413 = !{!"branch_weights", i32 1, i32 63943608}
!414 = !{!415, !257, i64 0}
!415 = !{!"VEC_edge_base", !257, i64 0, !257, i64 4, !258, i64 8}
!416 = !{!"function_entry_count", i64 1209}
!417 = !{!"cfgcleanup.c:trivially_empty_bb_p"}
!418 = !{!"branch_weights", i32 1, i32 127}
!419 = !{!"branch_weights", i32 127, i32 154753}
!420 = !{!"branch_weights", i32 1, i32 1210}
!421 = !{!"function_entry_count", i64 2267643}
!422 = !{!"cfgcleanup.c:single_succ_edge"}
!423 = !{!"branch_weights", i32 1, i32 2267644}
!424 = !{!"function_entry_count", i64 14309000}
!425 = !{!"cfgcleanup.c:single_pred_p"}
!426 = !{!"function_entry_count", i64 6951497}
!427 = !{!"cfgcleanup.c:single_pred_edge"}
!428 = !{!"branch_weights", i32 1, i32 6951498}
!429 = !{!"function_entry_count", i64 5523}
!430 = !{!"cfgcleanup.c:single_pred"}
!431 = !{!344, !262, i64 0}
!432 = !{!"function_entry_count", i64 1110805}
!433 = !{!"cfgcleanup.c:single_succ"}
!434 = !{!"function_entry_count", i64 12379389}
!435 = !{!"cfgcleanup.c:single_succ_p"}
!436 = !{!"function_entry_count", i64 251}
!437 = !{!"cfgcleanup.c:merge_blocks_move"}
!438 = !{!"branch_weights", i32 252, i32 1}
!439 = !{!"branch_weights", i32 12, i32 1}
!440 = !{!"branch_weights", i32 1, i32 12}
!441 = !{!"branch_weights", i32 167, i32 75}
!442 = !{!"branch_weights", i32 1, i32 151}
!443 = !{i64 0, i64 4, !256, i64 8, i64 8, !261}
!444 = !{i64 0, i64 8, !261}
!445 = distinct !{!445, !273}
!446 = distinct !{!446, !273}
!447 = !{!"function_entry_count", i64 311308}
!448 = !{!"cfgcleanup.c:try_simplify_condjump"}
!449 = !{!"branch_weights", i32 296359, i32 14951}
!450 = !{!"branch_weights", i32 1, i32 296359}
!451 = !{!"branch_weights", i32 162285, i32 134075}
!452 = !{!"branch_weights", i32 90375, i32 205985}
!453 = !{!"branch_weights", i32 1, i32 205985}
!454 = !{!"branch_weights", i32 201899, i32 4087}
!455 = !{!"branch_weights", i32 4087, i32 1}
!456 = !{!"branch_weights", i32 1, i32 4087}
!457 = !{!"function_entry_count", i64 4854581}
!458 = !{!"cfgcleanup.c:try_forward_edges"}
!459 = !{!"branch_weights", i32 4854582, i32 1}
!460 = !{!"branch_weights", i32 1, i32 4854581}
!461 = !{!"branch_weights", i32 9115649, i32 311}
!462 = distinct !{!462, !273}
!463 = !{!344, !257, i64 40}
!464 = !{!"branch_weights", i32 1518, i32 9114132}
!465 = !{!"branch_weights", i32 9114132, i32 1}
!466 = !{!"branch_weights", i32 127, i32 1}
!467 = !{!"branch_weights", i32 9114906, i32 117796}
!468 = !{!"branch_weights", i32 117796, i32 1}
!469 = !{!"branch_weights", i32 751, i32 117046}
!470 = !{!"branch_weights", i32 1, i32 117046}
!471 = !{!"branch_weights", i32 131670480, i32 -1179616718}
!472 = !{!"branch_weights", i32 369644, i32 8}
!473 = !{!"branch_weights", i32 8, i32 1}
!474 = distinct !{!474, !273}
!475 = !{!"branch_weights", i32 1, i32 8}
!476 = !{!"branch_weights", i32 0, i32 -2147483648}
!477 = !{!"branch_weights", i32 1181785601, i32 127}
!478 = !{!"branch_weights", i32 2147483479, i32 169}
!479 = !{!"branch_weights", i32 9034423, i32 81227}
!480 = !{!344, !269, i64 56}
!481 = !{!344, !257, i64 52}
!482 = !{!"branch_weights", i32 81220, i32 8}
!483 = !{!"branch_weights", i32 13269, i32 67952}
!484 = !{!"branch_weights", i32 13269, i32 1}
!485 = !{!268, !257, i64 88}
!486 = !{!"branch_weights", i32 67883, i32 77}
!487 = !{!"branch_weights", i32 67883, i32 1}
!488 = !{!"branch_weights", i32 8, i32 103691}
!489 = !{!268, !269, i64 72}
!490 = !{!"branch_weights", i32 1, i32 103691}
!491 = !{!"branch_weights", i32 210, i32 103482}
!492 = !{!"branch_weights", i32 1, i32 103698}
!493 = !{!"branch_weights", i32 67959, i32 35740}
!494 = distinct !{!494, !273}
!495 = !{!"branch_weights", i32 4854581, i32 4261378}
!496 = !{!"branch_weights", i32 2147480110, i32 3538}
!497 = !{!"function_entry_count", i64 623506}
!498 = !{!"cfgcleanup.c:try_crossjump_bb"}
!499 = !{!"branch_weights", i32 432915, i32 190593}
!500 = !{!"branch_weights", i32 58131, i32 132463}
!501 = !{!"branch_weights", i32 1, i32 132463}
!502 = !{!"branch_weights", i32 132463, i32 1}
!503 = !{!"branch_weights", i32 190593, i32 1}
!504 = !{!505, !257, i64 8}
!505 = !{!"param_info", !262, i64 0, !257, i64 8, !258, i64 12, !257, i64 16, !257, i64 20, !262, i64 24}
!506 = !{!"branch_weights", i32 52, i32 190542}
!507 = !{!"branch_weights", i32 1, i32 8469}
!508 = !{!"branch_weights", i32 158346, i32 182073}
!509 = !{!"branch_weights", i32 8469, i32 331949}
!510 = distinct !{!510, !273}
!511 = !{!"branch_weights", i32 27305, i32 520189}
!512 = !{!"branch_weights", i32 182240, i32 337950}
!513 = !{!"branch_weights", i32 356952, i32 190541}
!514 = distinct !{!514, !273}
!515 = !{!"branch_weights", i32 168665, i32 169286}
!516 = !{!"branch_weights", i32 167429, i32 1858}
!517 = !{!"branch_weights", i32 166752, i32 678}
!518 = !{!"branch_weights", i32 171092, i32 108}
!519 = !{!"branch_weights", i32 66049, i32 132348}
!520 = !{!"branch_weights", i32 1, i32 65820}
!521 = !{!"branch_weights", i32 1162904901, i32 -1933076348}
!522 = !{!"branch_weights", i32 304579, i32 65820}
!523 = distinct !{!523, !273}
!524 = !{!"branch_weights", i32 122914, i32 125285}
!525 = !{!"branch_weights", i32 85799, i32 39487}
!526 = !{!"branch_weights", i32 25704, i32 13784}
!527 = !{!"branch_weights", i32 24270, i32 1435}
!528 = !{!"branch_weights", i32 100788, i32 229}
!529 = !{!"branch_weights", i32 24389121, i32 127}
!530 = !{!"branch_weights", i32 2146404536, i32 1079112}
!531 = !{!"function_entry_count", i64 23401945}
!532 = !{!"cfgcleanup.c:VEC_edge_base_index"}
!533 = !{!"function_entry_count", i64 5046761}
!534 = !{!"cfgcleanup.c:ei_start_1"}
!535 = !{!"function_entry_count", i64 351586}
!536 = !{!"cfgcleanup.c:ei_cond"}
!537 = !{!"branch_weights", i32 342177, i32 9411}
!538 = !{!"function_entry_count", i64 9207406}
!539 = !{!"cfgcleanup.c:ei_next"}
!540 = !{!"branch_weights", i32 1, i32 9207407}
!541 = !{!"branch_weights", i32 9207407, i32 1}
!542 = !{!543, !257, i64 0}
!543 = !{!"", !257, i64 0, !262, i64 8}
!544 = !{!"cfgcleanup.c:merge_blocks_move_successor_nojumps"}
!545 = !{!"function_entry_count", i64 7}
!546 = !{!"cfgcleanup.c:notice_new_block"}
!547 = !{!"cfgcleanup.c:merge_blocks_move_predecessor_nojumps"}
!548 = !{!"function_entry_count", i64 14322125}
!549 = !{!"cfgcleanup.c:ei_end_p"}
!550 = !{!"branch_weights", i32 1, i32 14322126}
!551 = !{!"function_entry_count", i64 9458134}
!552 = !{!"cfgcleanup.c:ei_edge"}
!553 = !{!"branch_weights", i32 1, i32 9458135}
!554 = !{!"function_entry_count", i64 65975330}
!555 = !{!"cfgcleanup.c:ei_container"}
!556 = !{!"branch_weights", i32 1, i32 65975331}
!557 = !{!"function_entry_count", i64 13970539}
!558 = !{!"cfgcleanup.c:ei_safe_edge"}
!559 = !{!"branch_weights", i32 9115959, i32 4854582}
!560 = !{!"function_entry_count", i64 369650}
!561 = !{!"cfgcleanup.c:thread_jump"}
!562 = !{!"branch_weights", i32 350876, i32 18776}
!563 = !{!"branch_weights", i32 281322, i32 69555}
!564 = !{!"branch_weights", i32 214699, i32 66624}
!565 = !{!"branch_weights", i32 1, i32 214699}
!566 = !{!"branch_weights", i32 77488, i32 137212}
!567 = !{!"branch_weights", i32 80873, i32 133827}
!568 = !{!"branch_weights", i32 812, i32 80062}
!569 = !{!"branch_weights", i32 323, i32 213566}
!570 = !{!"branch_weights", i32 1, i32 213566}
!571 = !{!"branch_weights", i32 1, i32 148326}
!572 = !{!"branch_weights", i32 -1695213239, i32 498284137}
!573 = !{!"branch_weights", i32 529423, i32 65240}
!574 = !{!"branch_weights", i32 148326, i32 560313}
!575 = distinct !{!575, !273}
!576 = !{!"branch_weights", i32 -176125341, i32 402709993}
!577 = !{!"branch_weights", i32 148326, i32 500641}
!578 = distinct !{!578, !273}
!579 = !{!"branch_weights", i32 -1687427198, i32 641735447}
!580 = !{!"branch_weights", i32 27069, i32 399155}
!581 = !{!582, !257, i64 0}
!582 = !{!"rtvec_def", !257, i64 0, !258, i64 8}
!583 = !{!"branch_weights", i32 1, i32 27068}
!584 = !{!"branch_weights", i32 27069, i32 27068}
!585 = distinct !{!585, !273}
!586 = !{!"branch_weights", i32 531121, i32 148327}
!587 = !{!"branch_weights", i32 382795, i32 148326}
!588 = distinct !{!588, !273}
!589 = !{!"branch_weights", i32 148327, i32 1}
!590 = !{!"branch_weights", i32 8, i32 148320}
!591 = !{!"function_entry_count", i64 453290}
!592 = !{!"cfgcleanup.c:mark_effect"}
!593 = !{!"branch_weights", i32 1, i32 27069, i32 426223}
!594 = !{!"branch_weights", i32 27069, i32 1}
!595 = !{!"branch_weights", i32 0, i32 1}
!596 = distinct !{!596, !273}
!597 = !{!"branch_weights", i32 426216, i32 8}
!598 = !{!"branch_weights", i32 148327, i32 277890}
!599 = !{!"branch_weights", i32 277890, i32 1}
!600 = !{!"branch_weights", i32 173455, i32 104436}
!601 = !{!"branch_weights", i32 1, i32 173454}
!602 = distinct !{!602, !273}
!603 = !{!"function_entry_count", i64 296659}
!604 = !{!"cfgcleanup.c:mentions_nonequal_regs"}
!605 = !{!"branch_weights", i32 148327, i32 148334}
!606 = distinct !{!606, !273}
!607 = !{!"cfgcleanup.c:bmp_iter_set_init"}
!608 = !{!609, !262, i64 0}
!609 = !{!"bitmap_head_def", !262, i64 0, !262, i64 8, !257, i64 16, !262, i64 24}
!610 = !{!611, !262, i64 0}
!611 = !{!"", !262, i64 0, !262, i64 8, !257, i64 16, !269, i64 24}
!612 = !{!611, !262, i64 8}
!613 = !{!614, !257, i64 16}
!614 = !{!"bitmap_element_def", !262, i64 0, !262, i64 8, !257, i64 16, !258, i64 24}
!615 = !{!611, !257, i64 16}
!616 = !{!269, !269, i64 0}
!617 = !{!611, !269, i64 24}
!618 = !{!"cfgcleanup.c:bmp_iter_set"}
!619 = distinct !{!619, !273}
!620 = distinct !{!620, !273}
!621 = !{!614, !262, i64 0}
!622 = !{!"function_entry_count", i64 453283}
!623 = !{!"cfgcleanup.c:rhs_regno"}
!624 = !{!"function_entry_count", i64 272213}
!625 = !{!"cfgcleanup.c:try_crossjump_to_edge"}
!626 = !{!"branch_weights", i32 272214, i32 1}
!627 = !{!"branch_weights", i32 88037, i32 184178}
!628 = !{!"branch_weights", i32 171917, i32 12262}
!629 = !{!"branch_weights", i32 53863, i32 218352}
!630 = !{!"branch_weights", i32 207492, i32 10861}
!631 = !{!"branch_weights", i32 26500, i32 -1890374889}
!632 = !{!"branch_weights", i32 259953, i32 12262}
!633 = !{!"branch_weights", i32 12262, i32 1}
!634 = !{!"branch_weights", i32 261354, i32 10861}
!635 = !{!"branch_weights", i32 10861, i32 1}
!636 = !{!"branch_weights", i32 1079, i32 271136}
!637 = !{!"branch_weights", i32 216, i32 270921}
!638 = !{!"branch_weights", i32 254768, i32 16154}
!639 = !{!"branch_weights", i32 16032, i32 123}
!640 = !{!"branch_weights", i32 214, i32 15819}
!641 = !{!"branch_weights", i32 336, i32 1}
!642 = !{!643, !262, i64 0}
!643 = !{!"replace_label_data", !262, i64 0, !262, i64 8, !258, i64 16}
!644 = !{!643, !262, i64 8}
!645 = !{!643, !258, i64 16}
!646 = distinct !{!646, !273}
!647 = !{!"branch_weights", i32 318, i32 19}
!648 = !{!"branch_weights", i32 318, i32 1}
!649 = distinct !{!649, !273}
!650 = distinct !{!650, !273}
!651 = !{!"branch_weights", i32 19, i32 1}
!652 = !{!"branch_weights", i32 1, i32 335}
!653 = !{!"branch_weights", i32 365, i32 32}
!654 = !{!"branch_weights", i32 353, i32 104}
!655 = !{!"branch_weights", i32 127, i32 58241}
!656 = distinct !{!656, !273}
!657 = !{!"branch_weights", i32 336, i32 61}
!658 = !{!"branch_weights", i32 1, i32 61}
!659 = !{!"branch_weights", i32 552, i32 9373}
!660 = !{!"branch_weights", i32 335, i32 61}
!661 = distinct !{!661, !273}
!662 = !{!"branch_weights", i32 1, i32 336}
!663 = !{!"branch_weights", i32 169, i32 168}
!664 = !{!"branch_weights", i32 15792, i32 337, i32 97440}
!665 = distinct !{!665, !273}
!666 = !{!"branch_weights", i32 290, i32 1}
!667 = distinct !{!667, !273}
!668 = !{!"function_entry_count", i64 270920}
!669 = !{!"cfgcleanup.c:outgoing_edges_match"}
!670 = !{!"branch_weights", i32 242315, i32 28607}
!671 = !{!"branch_weights", i32 27988, i32 620}
!672 = !{!"branch_weights", i32 27988, i32 1}
!673 = !{!"branch_weights", i32 21, i32 27968}
!674 = !{!"branch_weights", i32 14751, i32 13218}
!675 = !{!"branch_weights", i32 13218, i32 1}
!676 = !{!"branch_weights", i32 11238, i32 1981}
!677 = !{!"branch_weights", i32 242284, i32 671}
!678 = !{!"branch_weights", i32 1, i32 242284}
!679 = !{!"branch_weights", i32 231319, i32 10966}
!680 = !{!"branch_weights", i32 1, i32 231319}
!681 = !{!"branch_weights", i32 114502, i32 116818}
!682 = !{!"branch_weights", i32 191045, i32 40275}
!683 = !{!"branch_weights", i32 213811, i32 17509}
!684 = !{!"branch_weights", i32 217473, i32 13847}
!685 = !{!"branch_weights", i32 231127, i32 193}
!686 = !{!"branch_weights", i32 231079, i32 49}
!687 = !{!"branch_weights", i32 231055, i32 25}
!688 = !{!"branch_weights", i32 231016, i32 40}
!689 = !{!"branch_weights", i32 40686100, i32 1539239163}
!690 = !{!"branch_weights", i32 8129378, i32 1429379938}
!691 = !{!"branch_weights", i32 7222, i32 1}
!692 = !{!"branch_weights", i32 5950, i32 1273}
!693 = !{!"branch_weights", i32 1, i32 7222}
!694 = !{!"branch_weights", i32 3375, i32 3848}
!695 = !{!"branch_weights", i32 742, i32 2634}
!696 = !{!"branch_weights", i32 1, i32 2634}
!697 = !{!"branch_weights", i32 832, i32 3758}
!698 = !{!"branch_weights", i32 832, i32 1}
!699 = !{!"branch_weights", i32 607, i32 2028}
!700 = !{!"branch_weights", i32 169, i32 1860}
!701 = !{!"branch_weights", i32 1848, i32 13}
!702 = !{!"branch_weights", i32 1860, i32 1}
!703 = !{!"branch_weights", i32 640, i32 32}
!704 = !{!"branch_weights", i32 32, i32 1}
!705 = distinct !{!705, !273}
!706 = !{!"branch_weights", i32 368, i32 304}
!707 = !{!"branch_weights", i32 304, i32 1}
!708 = !{!"branch_weights", i32 1, i32 303}
!709 = !{!"branch_weights", i32 303, i32 1}
!710 = distinct !{!710, !273}
!711 = !{!"branch_weights", i32 2140419481, i32 7064167}
!712 = !{!"branch_weights", i32 7064243, i32 2140419405}
!713 = !{!"branch_weights", i32 304, i32 92721}
!714 = !{!"branch_weights", i32 127, i32 38785}
!715 = distinct !{!715, !273}
!716 = distinct !{!716, !273}
!717 = !{!"function_entry_count", i64 16153}
!718 = !{!"cfgcleanup.c:flow_find_cross_jump"}
!719 = !{!"branch_weights", i32 304, i32 15851}
!720 = !{!"branch_weights", i32 2284, i32 13871}
!721 = !{!"branch_weights", i32 2284, i32 1}
!722 = !{!"branch_weights", i32 2634, i32 11238}
!723 = !{!"branch_weights", i32 216877372, i32 -2022053411}
!724 = !{!"branch_weights", i32 27029, i32 2040}
!725 = !{!"branch_weights", i32 0, i32 216877372}
!726 = distinct !{!726, !273}
!727 = !{!"branch_weights", i32 539400313, i32 -855086328}
!728 = !{!"branch_weights", i32 27029, i32 2783}
!729 = !{!"branch_weights", i32 0, i32 539400313}
!730 = distinct !{!730, !273}
!731 = !{!"branch_weights", i32 291, i32 26739}
!732 = !{!"branch_weights", i32 497, i32 26243}
!733 = !{!"branch_weights", i32 15368, i32 10876}
!734 = !{!"branch_weights", i32 -809999948, i32 319322}
!735 = !{!"branch_weights", i32 13999845, i32 20608}
!736 = !{!"branch_weights", i32 220547, i32 103946033}
!737 = !{!"branch_weights", i32 1620529, i32 12189631}
!738 = !{!"branch_weights", i32 14, i32 1260}
!739 = !{!"branch_weights", i32 9156, i32 6999}
!740 = !{!"branch_weights", i32 290, i32 8891}
!741 = !{!"branch_weights", i32 -807875474, i32 -1722540627}
!742 = distinct !{!742, !273}
!743 = !{!"branch_weights", i32 778, i32 9530}
!744 = !{!"branch_weights", i32 1754626912, i32 -2092882953}
!745 = distinct !{!745, !273}
!746 = !{!"function_entry_count", i64 335}
!747 = !{!"cfgcleanup.c:block_has_preserve_label"}
!748 = !{!"branch_weights", i32 40, i32 297}
!749 = !{!"function_entry_count", i64 26912}
!750 = !{!"cfgcleanup.c:old_insns_match_p"}
!751 = !{!"branch_weights", i32 26272, i32 642}
!752 = !{!"branch_weights", i32 1, i32 26272}
!753 = !{!"branch_weights", i32 20759, i32 5514}
!754 = !{!"branch_weights", i32 1248, i32 19512}
!755 = !{!"branch_weights", i32 1, i32 1248}
!756 = !{!"branch_weights", i32 1248, i32 1}
!757 = !{!"branch_weights", i32 20759, i32 1}
!758 = distinct !{!758, !273}
!759 = distinct !{!759, !273}
!760 = !{!"branch_weights", i32 1, i32 11179}
!761 = !{!"cfgcleanup.c:hard_reg_set_equal_p"}
!762 = !{!"function_entry_count", i64 96733}
!763 = !{!"cfgcleanup.c:merge_memattrs"}
!764 = !{!"branch_weights", i32 32214, i32 64521}
!765 = !{!"branch_weights", i32 2515484, i32 -135813780}
!766 = !{!"branch_weights", i32 64484, i32 1}
!767 = !{!"branch_weights", i32 5341, i32 59144}
!768 = !{!"branch_weights", i32 5333, i32 9}
!769 = !{!"branch_weights", i32 1, i32 9}
!770 = !{!771, !257, i64 24}
!771 = !{!"mem_attrs", !262, i64 0, !262, i64 8, !262, i64 16, !257, i64 24, !257, i64 28, !258, i64 32}
!772 = !{!771, !262, i64 0}
!773 = !{!771, !262, i64 8}
!774 = !{!771, !262, i64 16}
!775 = !{!771, !257, i64 28}
!776 = !{!"branch_weights", i32 1, i32 64483}
!777 = !{!"branch_weights", i32 1, i32 1817, i32 82210}
!778 = !{!"branch_weights", i32 1817, i32 1}
!779 = !{!"branch_weights", i32 1816, i32 1}
!780 = !{!"branch_weights", i32 1834, i32 1816}
!781 = distinct !{!781, !273}
!782 = !{!"branch_weights", i32 142173, i32 64483}
!783 = distinct !{!783, !273}
