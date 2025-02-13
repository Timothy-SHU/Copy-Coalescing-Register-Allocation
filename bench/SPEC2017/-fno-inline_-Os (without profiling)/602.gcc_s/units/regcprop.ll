; ModuleID = 'regcprop.c'
source_filename = "regcprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.value_data_entry = type { i32, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.value_data = type { [53 x %struct.value_data_entry], i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.queued_debug_insn_change = type { ptr, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"[%u] Bad next_regno for empty chain (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[%u %s] \00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"[%u] Loop in regno chain\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[%u] Bad oldest_regno (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"[%u] Non-empty reg in chain (%s %u %i)\0A\00", align 1
@pass_cprop_hardreg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr @gate_handle_cprop, ptr @copyprop_hardreg_forward, ptr null, ptr null, i32 0, i32 158, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"cprop_hardreg\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_cprop_registers = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"debug insn changes pool\00", align 1
@debug_insn_changes_pool = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"regcprop.c\00", align 1
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"insn %u: replaced reg %u with %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"insn %u: reg replacements not verified\0A\00", align 1
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@reg_renumber = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.12 = private unnamed_addr constant [48 x i8] c"debug_insn %u: queued replacing reg %u with %u\0A\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_value_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %67
  %3 = phi i64 [ 0, %1 ], [ %69, %67 ]
  %4 = phi i64 [ 0, %1 ], [ %68, %67 ]
  %5 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = zext i32 %6 to i64
  %8 = icmp eq i64 %3, %7
  br i1 %8, label %9, label %67

9:                                                ; preds = %2
  %10 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3
  %11 = load i32, ptr %10, align 8, !tbaa !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !13
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %67, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @stderr, align 8, !tbaa !14
  %19 = trunc i64 %3 to i32
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %19, i32 noundef %15) #16
  br label %67

21:                                               ; preds = %9
  %22 = shl nuw nsw i64 1, %3
  %23 = or i64 %22, %4
  %24 = load ptr, ptr @stderr, align 8, !tbaa !14
  %25 = zext i32 %11 to i64
  %26 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = trunc i64 %3 to i32
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %28, ptr noundef %27) #16
  %30 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !13
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %63, label %33

33:                                               ; preds = %21, %51
  %34 = phi i32 [ %61, %51 ], [ %31, %21 ]
  %35 = phi i64 [ %53, %51 ], [ %23, %21 ]
  %36 = zext i32 %34 to i64
  %37 = shl nuw i64 1, %36
  %38 = and i64 %37, %35
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr @stderr, align 8, !tbaa !14
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef %34) #16
  br label %101

43:                                               ; preds = %33
  %44 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %36, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !6
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %3, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr @stderr, align 8, !tbaa !14
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.3, i32 noundef %34, i32 noundef %45) #16
  br label %101

51:                                               ; preds = %43
  %52 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %36
  %53 = or i64 %37, %35
  %54 = load ptr, ptr @stderr, align 8, !tbaa !14
  %55 = load i32, ptr %52, align 8, !tbaa !12
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !14
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.1, i32 noundef %34, ptr noundef %58) #16
  %60 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %36, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !13
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %33, !llvm.loop !15

63:                                               ; preds = %51, %21
  %64 = phi i64 [ %23, %21 ], [ %53, %51 ]
  %65 = load ptr, ptr @stderr, align 8, !tbaa !14
  %66 = tail call i32 @fputc(i32 noundef 10, ptr noundef %65) #17
  br label %67

67:                                               ; preds = %2, %63, %13, %17
  %68 = phi i64 [ %4, %17 ], [ %4, %13 ], [ %64, %63 ], [ %4, %2 ]
  %69 = add nuw nsw i64 %3, 1
  %70 = icmp eq i64 %69, 53
  br i1 %70, label %71, label %2, !llvm.loop !17

71:                                               ; preds = %67, %98
  %72 = phi i64 [ %99, %98 ], [ 0, %67 ]
  %73 = shl nuw nsw i64 1, %72
  %74 = and i64 %73, %68
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72
  %78 = load i32, ptr %77, align 8, !tbaa !12
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !6
  %82 = zext i32 %81 to i64
  %83 = icmp eq i64 %72, %82
  %84 = select i1 %79, i1 %83, i1 false
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !13
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %98, label %89

89:                                               ; preds = %76, %85
  %90 = load ptr, ptr @stderr, align 8, !tbaa !14
  %91 = zext i32 %78 to i64
  %92 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !14
  %94 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !13
  %96 = trunc i64 %72 to i32
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.4, i32 noundef %96, ptr noundef %93, i32 noundef %81, i32 noundef %95) #16
  br label %98

98:                                               ; preds = %71, %85, %89
  %99 = add nuw nsw i64 %72, 1
  %100 = icmp eq i64 %99, 53
  br i1 %100, label %101, label %71, !llvm.loop !18

101:                                              ; preds = %98, %48, %40
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cprop() #3 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !19
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_cprop_registers, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copyprop_hardreg_forward() #4 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 1280
  %8 = tail call ptr @xmalloc(i64 noundef %7) #18
  %9 = load ptr, ptr @cfun, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !22
  %14 = tail call ptr @sbitmap_alloc(i32 noundef %13) #18
  tail call void @sbitmap_zero(ptr noundef %14) #18
  %15 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %0
  %18 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 32, i64 noundef 256) #18
  store ptr %18, ptr @debug_insn_changes_pool, align 8, !tbaa !14
  br label %19

19:                                               ; preds = %17, %0
  %20 = load ptr, ptr @cfun, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %107, label %29

29:                                               ; preds = %19, %96
  %30 = phi ptr [ %100, %96 ], [ %25, %19 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !29
  tail call fastcc void @SET_BIT(ptr noundef %14, i32 noundef %32) #17
  %33 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %30) #17, !range !30
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %90, label %35

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @single_pred(ptr noundef nonnull %30) #17
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !29
  %39 = lshr i32 %38, 6
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !31
  %43 = tail call fastcc ptr @single_pred(ptr noundef nonnull %30) #17
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !29
  %46 = and i32 %45, 63
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = and i64 %48, %42
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %90, label %51

51:                                               ; preds = %35
  %52 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %30) #17
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !32
  %55 = and i32 %54, 12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %51
  %58 = load i32, ptr %31, align 8, !tbaa !29
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.value_data, ptr %8, i64 %59
  %61 = tail call fastcc ptr @single_pred(ptr noundef nonnull %30) #17
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !29
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.value_data, ptr %8, i64 %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %60, ptr noundef nonnull align 8 dereferenceable(1280) %65, i64 1280, i1 false), !tbaa.struct !34
  %66 = load i32, ptr %31, align 8, !tbaa !29
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.value_data, ptr %8, i64 %67, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !36
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.value_data, ptr %8, i64 %67
  br label %73

73:                                               ; preds = %87, %71
  %74 = phi i32 [ %69, %71 ], [ %88, %87 ]
  %75 = phi i32 [ 0, %71 ], [ %89, %87 ]
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %72, i64 0, i64 %76, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  store ptr null, ptr %77, align 8, !tbaa !38
  %81 = add i32 %74, -1
  store i32 %81, ptr %68, align 4, !tbaa !36
  %82 = icmp ne i32 %81, 0
  %83 = icmp ult i32 %75, 52
  %84 = and i1 %82, %83
  br i1 %84, label %87, label %96

85:                                               ; preds = %73
  %86 = icmp ult i32 %75, 52
  br i1 %86, label %87, label %96

87:                                               ; preds = %85, %80
  %88 = phi i32 [ %74, %85 ], [ %81, %80 ]
  %89 = add nuw nsw i32 %75, 1
  br label %73, !llvm.loop !39

90:                                               ; preds = %51, %35, %29
  %91 = load i32, ptr %31, align 8, !tbaa !29
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.value_data, ptr %8, i64 %92
  tail call fastcc void @init_value_data(ptr noundef %93) #17
  %94 = load i32, ptr %31, align 8, !tbaa !29
  %95 = sext i32 %94 to i64
  br label %96

96:                                               ; preds = %85, %80, %57, %90
  %97 = phi i64 [ %67, %57 ], [ %95, %90 ], [ %67, %80 ], [ %67, %85 ]
  %98 = getelementptr inbounds %struct.value_data, ptr %8, i64 %97
  tail call fastcc void @copyprop_hardreg_forward_1(ptr noundef %30, ptr noundef %98) #17
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !25
  %101 = load ptr, ptr @cfun, align 8, !tbaa !14
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !20
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !28
  %106 = icmp eq ptr %100, %105
  br i1 %106, label %107, label %29, !llvm.loop !40

107:                                              ; preds = %96, %19
  %108 = phi ptr [ %25, %19 ], [ %100, %96 ]
  %109 = phi ptr [ %20, %19 ], [ %101, %96 ]
  %110 = phi ptr [ %22, %19 ], [ %103, %96 ]
  %111 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !19
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %187, label %113

113:                                              ; preds = %107
  %114 = load ptr, ptr %110, align 8, !tbaa !24
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %114, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !25
  %117 = icmp eq ptr %116, %108
  br i1 %117, label %185, label %118

118:                                              ; preds = %113, %175
  %119 = phi ptr [ %176, %175 ], [ %109, %113 ]
  %120 = phi ptr [ %179, %175 ], [ %116, %113 ]
  %121 = phi i8 [ %177, %175 ], [ 0, %113 ]
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !29
  %124 = lshr i32 %123, 6
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !31
  %128 = and i32 %123, 63
  %129 = zext nneg i32 %128 to i64
  %130 = shl nuw i64 1, %129
  %131 = and i64 %130, %127
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %175, label %133

133:                                              ; preds = %118
  %134 = sext i32 %123 to i64
  %135 = getelementptr inbounds %struct.value_data, ptr %8, i64 %134, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !36
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %175, label %138

138:                                              ; preds = %133
  %139 = icmp eq i8 %121, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %138
  tail call void @df_analyze() #18
  br label %141

141:                                              ; preds = %140, %138
  %142 = tail call ptr @df_get_live_out(ptr noundef nonnull %120) #18
  %143 = load i32, ptr %122, align 8, !tbaa !29
  br label %144

144:                                              ; preds = %170, %141
  %145 = phi i32 [ %143, %141 ], [ %171, %170 ]
  %146 = phi i32 [ 0, %141 ], [ %172, %170 ]
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds %struct.value_data, ptr %8, i64 %147
  %149 = zext nneg i32 %146 to i64
  %150 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %148, i64 0, i64 %149, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !38
  %152 = icmp eq ptr %151, null
  br i1 %152, label %168, label %153

153:                                              ; preds = %144
  %154 = tail call i32 @bitmap_bit_p(ptr noundef %142, i32 noundef %146) #18
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load i32, ptr %122, align 8, !tbaa !29
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.value_data, ptr %8, i64 %158
  tail call fastcc void @apply_debug_insn_changes(ptr noundef %159, i32 noundef %146) #17
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i32, ptr %122, align 8, !tbaa !29
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.value_data, ptr %8, i64 %162, i32 2
  %164 = load i32, ptr %163, align 4, !tbaa !36
  %165 = icmp ne i32 %164, 0
  %166 = icmp ult i32 %146, 52
  %167 = and i1 %165, %166
  br i1 %167, label %170, label %173

168:                                              ; preds = %144
  %169 = icmp ult i32 %146, 52
  br i1 %169, label %170, label %173

170:                                              ; preds = %168, %160
  %171 = phi i32 [ %145, %168 ], [ %161, %160 ]
  %172 = add nuw nsw i32 %146, 1
  br label %144, !llvm.loop !41

173:                                              ; preds = %160, %168
  %174 = load ptr, ptr @cfun, align 8, !tbaa !14
  br label %175

175:                                              ; preds = %173, %118, %133
  %176 = phi ptr [ %119, %133 ], [ %119, %118 ], [ %174, %173 ]
  %177 = phi i8 [ %121, %133 ], [ %121, %118 ], [ 1, %173 ]
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !25
  %180 = getelementptr inbounds %struct.function, ptr %176, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !20
  %182 = getelementptr inbounds %struct.control_flow_graph, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !28
  %184 = icmp eq ptr %179, %183
  br i1 %184, label %185, label %118, !llvm.loop !42

185:                                              ; preds = %175, %113
  %186 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !14
  tail call void @free_alloc_pool(ptr noundef %186) #18
  br label %187

187:                                              ; preds = %185, %107
  %188 = load ptr, ptr %14, align 8, !tbaa !43
  tail call void @free(ptr noundef %188) #17
  tail call void @free(ptr noundef %14) #17
  tail call void @free(ptr noundef %8) #17
  ret i32 0
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !43
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
  %15 = load i64, ptr %14, align 8, !tbaa !31
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !35
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !35
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !31
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !30
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6) #17
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @init_value_data(ptr nocapture noundef writeonly %0) unnamed_addr #9 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %9, %2 ]
  %4 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3
  store i32 0, ptr %4, align 8, !tbaa !12
  %5 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 1
  %6 = trunc i64 %3 to i32
  store i32 %6, ptr %5, align 4, !tbaa !6
  %7 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 2
  store i32 -1, ptr %7, align 8, !tbaa !13
  %8 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 3
  store ptr null, ptr %8, align 8, !tbaa !38
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 53
  br i1 %10, label %11, label %2, !llvm.loop !47

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.value_data, ptr %0, i64 0, i32 1
  store i32 0, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.value_data, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 4, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copyprop_hardreg_forward_1(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca [30 x i8], align 16
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.value_data, ptr %1, i64 0, i32 2
  br label %7

7:                                                ; preds = %364, %2
  %8 = phi ptr [ %5, %2 ], [ %370, %364 ]
  %9 = phi i8 [ 0, %2 ], [ %365, %364 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #19
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  switch i32 %12, label %41 [
    i32 7, label %18
    i32 8, label %33
    i32 9, label %33
    i32 10, label %33
  ]

16:                                               ; preds = %7
  %17 = icmp eq i32 %12, 7
  br i1 %17, label %18, label %364

18:                                               ; preds = %15, %16
  %19 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 25
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %364, label %31

31:                                               ; preds = %26, %18
  %32 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %21, i32 noundef 26, ptr noundef nonnull %10, ptr noundef %1) #17
  br label %364

33:                                               ; preds = %15, %15, %15
  %34 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @single_set_2(ptr noundef nonnull %10, ptr noundef nonnull %35) #18
  br label %41

41:                                               ; preds = %33, %15, %39
  %42 = phi ptr [ %40, %39 ], [ null, %15 ], [ %35, %33 ]
  tail call void @extract_insn(ptr noundef nonnull %10) #18
  %43 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %10, ptr noundef nonnull @.str.9, i32 noundef 767, ptr noundef nonnull @.str.8) #18
  br label %46

46:                                               ; preds = %45, %41
  tail call void @preprocess_constraints() #18
  %47 = load i32, ptr @which_alternative, align 4, !tbaa !19
  %48 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !49
  %49 = sext i8 %48 to i32
  %50 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %51 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = tail call i32 @asm_noperands(ptr noundef %52) #18
  %54 = icmp sgt i32 %53, -1
  %55 = load ptr, ptr %51, align 8, !tbaa !35
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 14
  %59 = icmp sgt i8 %48, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %46
  %61 = sext i32 %47 to i64
  %62 = zext nneg i32 %49 to i64
  br label %63

63:                                               ; preds = %60, %84
  %64 = phi i64 [ 0, %60 ], [ %85, %84 ]
  %65 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %64, i64 %61, i32 3
  %66 = load i32, ptr %65, align 16, !tbaa !51
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = zext nneg i32 %66 to i64
  %70 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %69, i64 %61, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !53
  %72 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %64, i64 %61, i32 1
  store i32 %71, ptr %72, align 8, !tbaa !53
  br label %82

73:                                               ; preds = %63
  %74 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %64, i64 %61, i32 4
  %75 = load i32, ptr %74, align 4, !tbaa !54
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  br i1 %58, label %78, label %84

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %64
  %80 = load i32, ptr %79, align 4, !tbaa !19
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %68, %78, %73
  %83 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %64
  store i32 2, ptr %83, align 4, !tbaa !19
  br label %84

84:                                               ; preds = %82, %78, %77
  %85 = add nuw nsw i64 %64, 1
  %86 = icmp eq i64 %85, %62
  br i1 %86, label %87, label %63, !llvm.loop !55

87:                                               ; preds = %84, %46
  %88 = load i32, ptr %6, align 4, !tbaa !36
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void @note_uses(ptr noundef nonnull %51, ptr noundef nonnull @cprop_find_used_regs, ptr noundef nonnull %1) #18
  br label %91

91:                                               ; preds = %90, %87
  br i1 %59, label %92, label %125

92:                                               ; preds = %91
  %93 = sext i32 %47 to i64
  %94 = zext nneg i32 %49 to i64
  br label %95

95:                                               ; preds = %92, %104
  %96 = phi i64 [ 0, %92 ], [ %105, %104 ]
  %97 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %96, i64 %93, i32 5
  %98 = load i8, ptr %97, align 8
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %96
  %103 = load ptr, ptr %102, align 8, !tbaa !14
  tail call fastcc void @kill_value(ptr noundef %103, ptr noundef %1) #17
  br label %104

104:                                              ; preds = %95, %101
  %105 = add nuw nsw i64 %96, 1
  %106 = icmp eq i64 %105, %94
  br i1 %106, label %107, label %95, !llvm.loop !56

107:                                              ; preds = %104
  %108 = load ptr, ptr %51, align 8, !tbaa !35
  tail call void @note_stores(ptr noundef %108, ptr noundef nonnull @kill_clobbered_value, ptr noundef %1) #18
  %109 = tail call i32 @for_each_rtx(ptr noundef nonnull %51, ptr noundef nonnull @kill_autoinc_value, ptr noundef %1) #18
  br i1 %59, label %110, label %128

110:                                              ; preds = %107
  %111 = sext i32 %47 to i64
  %112 = zext nneg i32 %49 to i64
  br label %113

113:                                              ; preds = %110, %122
  %114 = phi i64 [ 0, %110 ], [ %123, %122 ]
  %115 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %114, i64 %111, i32 5
  %116 = load i8, ptr %115, align 8
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %114
  %121 = load ptr, ptr %120, align 8, !tbaa !14
  tail call fastcc void @kill_value(ptr noundef %121, ptr noundef %1) #17
  br label %122

122:                                              ; preds = %113, %119
  %123 = add nuw nsw i64 %114, 1
  %124 = icmp eq i64 %123, %112
  br i1 %124, label %128, label %113, !llvm.loop !57

125:                                              ; preds = %91
  %126 = load ptr, ptr %51, align 8, !tbaa !35
  tail call void @note_stores(ptr noundef %126, ptr noundef nonnull @kill_clobbered_value, ptr noundef %1) #18
  %127 = tail call i32 @for_each_rtx(ptr noundef nonnull %51, ptr noundef nonnull @kill_autoinc_value, ptr noundef %1) #18
  br label %128

128:                                              ; preds = %122, %125, %107
  %129 = icmp eq ptr %42, null
  br i1 %129, label %210, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %132 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !35
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 37
  br i1 %136, label %137, label %210

137:                                              ; preds = %130
  %138 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %133) #17
  %139 = lshr i32 %134, 16
  %140 = and i32 %139, 255
  %141 = zext i32 %138 to i64
  %142 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %141
  %143 = load i32, ptr %142, align 8, !tbaa !12
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %137
  %146 = zext nneg i32 %140 to i64
  %147 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %141, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !35
  %149 = zext i32 %143 to i64
  %150 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %141, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !35
  %152 = icmp ugt i8 %148, %151
  br i1 %152, label %210, label %153

153:                                              ; preds = %145, %137
  %154 = load ptr, ptr %131, align 8, !tbaa !35
  %155 = load i32, ptr %154, align 8
  %156 = and i32 %155, 65535
  %157 = icmp eq i32 %156, 37
  br i1 %157, label %158, label %173

158:                                              ; preds = %153
  %159 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %141
  %160 = load i32, ptr %159, align 4, !tbaa !19
  %161 = tail call fastcc ptr @find_oldest_value_reg(i32 noundef %160, ptr noundef nonnull %133, ptr noundef nonnull %1) #17
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = tail call zeroext i8 @validate_change(ptr noundef nonnull %10, ptr noundef nonnull %132, ptr noundef nonnull %161, i8 noundef zeroext 0) #18
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %168 = icmp eq ptr %167, null
  br i1 %168, label %329, label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %50, align 8, !tbaa !35
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %161) #17
  %172 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %167, ptr noundef nonnull @.str.10, i32 noundef %170, i32 noundef %138, i32 noundef %171) #17
  br label %329

173:                                              ; preds = %158, %163, %153
  %174 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %141, i32 1
  %175 = load i32, ptr %174, align 4, !tbaa !19
  %176 = icmp eq i32 %175, %138
  br i1 %176, label %210, label %177

177:                                              ; preds = %173, %206
  %178 = phi i32 [ %208, %206 ], [ %175, %173 ]
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %179
  %181 = load i32, ptr %180, align 8, !tbaa !12
  %182 = load i32, ptr %142, align 8, !tbaa !12
  %183 = tail call fastcc ptr @maybe_mode_change(i32 noundef %181, i32 noundef %182, i32 noundef %140, i32 noundef %178) #17
  %184 = icmp eq ptr %183, null
  br i1 %184, label %206, label %185

185:                                              ; preds = %177
  %186 = tail call zeroext i8 @validate_change(ptr noundef nonnull %10, ptr noundef nonnull %132, ptr noundef nonnull %183, i8 noundef zeroext 0) #18
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %206, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 1
  %190 = load i32, ptr %189, align 8, !tbaa !35
  %191 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %190, ptr %191, align 8, !tbaa !35
  %192 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 2
  %193 = load ptr, ptr %192, align 8, !tbaa !35
  %194 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %193, ptr %194, align 8, !tbaa !35
  %195 = load i32, ptr %133, align 8
  %196 = and i32 %195, 1073741824
  %197 = load i32, ptr %183, align 8
  %198 = and i32 %197, -1073741825
  %199 = or disjoint i32 %198, %196
  store i32 %199, ptr %183, align 8
  %200 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %201 = icmp eq ptr %200, null
  br i1 %201, label %329, label %202

202:                                              ; preds = %188
  %203 = load i32, ptr %50, align 8, !tbaa !35
  %204 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %183) #17
  %205 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %200, ptr noundef nonnull @.str.10, i32 noundef %203, i32 noundef %138, i32 noundef %204) #17
  br label %329

206:                                              ; preds = %177, %185
  %207 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %179, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !19
  %209 = icmp eq i32 %208, %138
  br i1 %209, label %210, label %177, !llvm.loop !58

210:                                              ; preds = %206, %173, %145, %128, %130
  br i1 %59, label %211, label %329

211:                                              ; preds = %210
  %212 = sext i32 %47 to i64
  %213 = zext nneg i32 %49 to i64
  br label %214

214:                                              ; preds = %211, %298
  %215 = phi i64 [ 0, %211 ], [ %300, %298 ]
  %216 = phi i8 [ 0, %211 ], [ %299, %298 ]
  %217 = getelementptr inbounds [30 x i8], ptr %3, i64 0, i64 %215
  store i8 0, ptr %217, align 1, !tbaa !35
  %218 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %215
  %219 = load ptr, ptr %218, align 8, !tbaa !14
  %220 = load i8, ptr %219, align 1, !tbaa !35
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %298, label %222

222:                                              ; preds = %214
  br i1 %54, label %223, label %234

223:                                              ; preds = %222
  %224 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %215
  %225 = load ptr, ptr %224, align 8, !tbaa !14
  %226 = load i32, ptr %225, align 8
  %227 = and i32 %226, 65535
  %228 = icmp eq i32 %227, 37
  br i1 %228, label %229, label %234

229:                                              ; preds = %223
  %230 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %225) #17
  %231 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1, i32 0, i32 0, i64 1
  %232 = load i32, ptr %231, align 8, !tbaa !35
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %298, label %234

234:                                              ; preds = %229, %223, %222
  %235 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %215
  %236 = load i32, ptr %235, align 4, !tbaa !19
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %234
  %239 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %215, i64 %212, i32 5
  %240 = load i8, ptr %239, align 8
  %241 = and i8 %240, 64
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %215
  %245 = load ptr, ptr %244, align 8, !tbaa !14
  %246 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %215, i64 %212, i32 1
  %247 = load i32, ptr %246, align 8, !tbaa !53
  %248 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef %245, i32 noundef %247, ptr noundef nonnull %10, ptr noundef %1) #17
  br label %270

249:                                              ; preds = %238
  %250 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %215
  %251 = load ptr, ptr %250, align 8, !tbaa !14
  %252 = load i32, ptr %251, align 8
  %253 = trunc i32 %252 to i16
  switch i16 %253, label %298 [
    i16 37, label %254
    i16 43, label %260
  ]

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %215
  %256 = load ptr, ptr %255, align 8, !tbaa !14
  %257 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %215, i64 %212, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !53
  %259 = tail call fastcc zeroext i8 @replace_oldest_value_reg(ptr noundef %256, i32 noundef %258, ptr noundef nonnull %10, ptr noundef %1) #17, !range !30
  br label %270

260:                                              ; preds = %249
  %261 = tail call fastcc zeroext i8 @replace_oldest_value_mem(ptr noundef nonnull %251, ptr noundef nonnull %10, ptr noundef %1) #17, !range !30
  br label %270

262:                                              ; preds = %234
  %263 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %215
  %264 = load ptr, ptr %263, align 8, !tbaa !14
  %265 = load i32, ptr %264, align 8
  %266 = and i32 %265, 65535
  %267 = icmp eq i32 %266, 43
  br i1 %267, label %268, label %298

268:                                              ; preds = %262
  %269 = tail call fastcc zeroext i8 @replace_oldest_value_mem(ptr noundef nonnull %264, ptr noundef nonnull %10, ptr noundef %1) #17, !range !30
  br label %270

270:                                              ; preds = %268, %243, %260, %254
  %271 = phi i8 [ %269, %268 ], [ %248, %243 ], [ %261, %260 ], [ %259, %254 ]
  store i8 %271, ptr %217, align 1, !tbaa !35
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %298, label %273

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %215
  %275 = load ptr, ptr %274, align 8, !tbaa !14
  %276 = load ptr, ptr %275, align 8, !tbaa !14
  %277 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %215
  store ptr %276, ptr %277, align 8, !tbaa !14
  %278 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !59
  %279 = icmp sgt i8 %278, 0
  br i1 %279, label %280, label %298

280:                                              ; preds = %273, %293
  %281 = phi i8 [ %294, %293 ], [ %278, %273 ]
  %282 = phi i64 [ %295, %293 ], [ 0, %273 ]
  %283 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !35
  %285 = sext i8 %284 to i64
  %286 = and i64 %285, 4294967295
  %287 = icmp eq i64 %215, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %282
  %290 = load ptr, ptr %289, align 8, !tbaa !14
  %291 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %10, ptr noundef %290, ptr noundef %276, i8 noundef zeroext 1) #18
  %292 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !59
  br label %293

293:                                              ; preds = %280, %288
  %294 = phi i8 [ %281, %280 ], [ %292, %288 ]
  %295 = add nuw nsw i64 %282, 1
  %296 = sext i8 %294 to i64
  %297 = icmp slt i64 %295, %296
  br i1 %297, label %280, label %298, !llvm.loop !60

298:                                              ; preds = %293, %249, %262, %273, %270, %229, %214
  %299 = phi i8 [ %216, %214 ], [ %216, %229 ], [ %216, %270 ], [ 1, %273 ], [ %216, %262 ], [ %216, %249 ], [ 1, %293 ]
  %300 = add nuw nsw i64 %215, 1
  %301 = icmp eq i64 %300, %213
  br i1 %301, label %302, label %214, !llvm.loop !61

302:                                              ; preds = %298
  %303 = icmp eq i8 %299, 0
  br i1 %303, label %329, label %304

304:                                              ; preds = %302
  %305 = tail call i32 @apply_change_group() #18
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %329

307:                                              ; preds = %304
  br i1 %59, label %308, label %323

308:                                              ; preds = %307
  %309 = zext nneg i32 %49 to i64
  br label %310

310:                                              ; preds = %308, %320
  %311 = phi i64 [ 0, %308 ], [ %321, %320 ]
  %312 = getelementptr inbounds [30 x i8], ptr %3, i64 0, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !35
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %311
  %317 = load ptr, ptr %316, align 8, !tbaa !14
  %318 = load ptr, ptr %317, align 8, !tbaa !14
  %319 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %311
  store ptr %318, ptr %319, align 8, !tbaa !14
  br label %320

320:                                              ; preds = %310, %315
  %321 = add nuw nsw i64 %311, 1
  %322 = icmp eq i64 %321, %309
  br i1 %322, label %323, label %310, !llvm.loop !62

323:                                              ; preds = %320, %307
  %324 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %325 = icmp eq ptr %324, null
  br i1 %325, label %329, label %326

326:                                              ; preds = %323
  %327 = load i32, ptr %50, align 8, !tbaa !35
  %328 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %324, ptr noundef nonnull @.str.11, i32 noundef %327) #17
  br label %329

329:                                              ; preds = %210, %188, %202, %166, %169, %302, %323, %326, %304
  %330 = phi i8 [ 1, %304 ], [ %9, %326 ], [ %9, %323 ], [ %9, %302 ], [ 1, %169 ], [ 1, %166 ], [ 1, %202 ], [ 1, %188 ], [ %9, %210 ]
  %331 = load i32, ptr %10, align 8
  %332 = and i32 %331, 65535
  %333 = icmp eq i32 %332, 10
  br i1 %333, label %334, label %349

334:                                              ; preds = %329
  %335 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !31
  br label %336

336:                                              ; preds = %334, %345
  %337 = phi i64 [ %335, %334 ], [ %346, %345 ]
  %338 = phi i64 [ 0, %334 ], [ %347, %345 ]
  %339 = shl nuw nsw i64 1, %338
  %340 = and i64 %337, %339
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %336
  %343 = trunc i64 %338 to i32
  tail call fastcc void @kill_value_regno(i32 noundef %343, i32 noundef 1, ptr noundef %1) #17
  %344 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !31
  br label %345

345:                                              ; preds = %336, %342
  %346 = phi i64 [ %337, %336 ], [ %344, %342 ]
  %347 = add nuw nsw i64 %338, 1
  %348 = icmp eq i64 %347, 53
  br i1 %348, label %349, label %336, !llvm.loop !63

349:                                              ; preds = %345, %329
  %350 = load ptr, ptr %51, align 8, !tbaa !35
  tail call void @note_stores(ptr noundef %350, ptr noundef nonnull @kill_set_value, ptr noundef %1) #18
  br i1 %129, label %364, label %351

351:                                              ; preds = %349
  %352 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !35
  %354 = load i32, ptr %353, align 8
  %355 = and i32 %354, 65535
  %356 = icmp eq i32 %355, 37
  br i1 %356, label %357, label %364

357:                                              ; preds = %351
  %358 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %359 = load ptr, ptr %358, align 8, !tbaa !35
  %360 = load i32, ptr %359, align 8
  %361 = and i32 %360, 65535
  %362 = icmp eq i32 %361, 37
  br i1 %362, label %363, label %364

363:                                              ; preds = %357
  tail call fastcc void @copy_value(ptr noundef nonnull %353, ptr noundef nonnull %359, ptr noundef %1) #17
  br label %364

364:                                              ; preds = %349, %351, %357, %363, %16, %31, %26
  %365 = phi i8 [ %9, %26 ], [ %9, %31 ], [ %9, %16 ], [ %330, %363 ], [ %330, %357 ], [ %330, %351 ], [ %330, %349 ]
  %366 = load ptr, ptr %4, align 8, !tbaa !35
  %367 = getelementptr inbounds %struct.rtl_bb_info, ptr %366, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !64
  %369 = icmp eq ptr %10, %368
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #19
  %370 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %369, label %371, label %7

371:                                              ; preds = %364
  ret void
}

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @apply_debug_insn_changes(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %12 = phi ptr [ %26, %19 ], [ %5, %7 ]
  %13 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %11, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @apply_change_group() #18
  %18 = load ptr, ptr %13, align 8, !tbaa !66
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %11, %10 ]
  %21 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %12, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %12, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = tail call zeroext i8 @validate_change(ptr noundef %20, ptr noundef %22, ptr noundef %24, i8 noundef zeroext 1) #18
  %26 = load ptr, ptr %12, align 8, !tbaa !70
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !71

28:                                               ; preds = %19, %2
  %29 = tail call i32 @apply_change_group() #18
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !72
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #4 {
  br label %5

5:                                                ; preds = %138, %4
  %6 = phi i8 [ 0, %4 ], [ %141, %138 ]
  %7 = phi ptr [ %0, %4 ], [ %139, %138 ]
  %8 = phi i32 [ %1, %4 ], [ 13, %138 ]
  %9 = load ptr, ptr %7, align 8, !tbaa !14
  %10 = load i32, ptr %9, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %146 [
    i16 49, label %12
    i16 77, label %186
    i16 76, label %186
    i16 79, label %186
    i16 75, label %186
    i16 74, label %186
    i16 78, label %186
    i16 43, label %142
    i16 37, label %144
  ]

12:                                               ; preds = %5
  %13 = load i32, ptr %2, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %146, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = load i32, ptr %18, align 8
  %22 = and i32 %21, 65535
  %23 = load i32, ptr %20, align 8
  %24 = icmp eq i32 %22, 39
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  br label %30

30:                                               ; preds = %25, %16
  %31 = phi i32 [ %29, %25 ], [ %22, %16 ]
  %32 = phi ptr [ %27, %25 ], [ %18, %16 ]
  %33 = and i32 %23, 65535
  %34 = icmp eq i32 %33, 39
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = load i32, ptr %37, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i32 [ %38, %35 ], [ %23, %30 ]
  %41 = phi ptr [ %37, %35 ], [ %20, %30 ]
  %42 = freeze i32 %40
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %134, label %45

45:                                               ; preds = %39
  %46 = trunc i32 %31 to i16
  switch i16 %46, label %47 [
    i16 100, label %134
    i16 99, label %134
    i16 98, label %134
    i16 52, label %134
    i16 43, label %133
  ]

47:                                               ; preds = %45
  %48 = trunc i32 %42 to i16
  switch i16 %48, label %49 [
    i16 100, label %134
    i16 99, label %134
    i16 98, label %134
    i16 52, label %134
  ]

49:                                               ; preds = %47
  %50 = and i32 %31, 65534
  %51 = icmp eq i32 %50, 44
  br i1 %51, label %138, label %52

52:                                               ; preds = %49
  switch i16 %46, label %53 [
    i16 35, label %138
    i16 30, label %138
  ]

53:                                               ; preds = %52
  %54 = and i32 %42, 65534
  %55 = icmp eq i32 %54, 44
  br i1 %55, label %138, label %56

56:                                               ; preds = %53
  switch i16 %48, label %57 [
    i16 35, label %138
    i16 30, label %138
  ]

57:                                               ; preds = %56
  %58 = icmp eq i32 %31, 37
  %59 = icmp eq i32 %43, 37
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %129

61:                                               ; preds = %57
  %62 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #17
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %41) #17
  %64 = icmp ult i32 %63, 7
  br i1 %64, label %79, label %65

65:                                               ; preds = %61
  %66 = zext i32 %63 to i64
  %67 = add nsw i64 %66, -37
  %68 = icmp ult i64 %67, 8
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr @reg_renumber, align 8, !tbaa !14
  %71 = getelementptr inbounds i16, ptr %70, i64 %66
  %72 = load i16, ptr %71, align 2, !tbaa !74
  %73 = icmp ult i16 %72, 7
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = sext i16 %72 to i64
  %76 = and i64 %75, 4294967295
  %77 = add nsw i64 %76, -37
  %78 = icmp ult i64 %77, 8
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %69, %65, %61
  %80 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %62) #17
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %79, %74
  %83 = icmp ult i32 %62, 7
  br i1 %83, label %98, label %84

84:                                               ; preds = %82
  %85 = zext i32 %62 to i64
  %86 = add nsw i64 %85, -37
  %87 = icmp ult i64 %86, 8
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr @reg_renumber, align 8, !tbaa !14
  %90 = getelementptr inbounds i16, ptr %89, i64 %85
  %91 = load i16, ptr %90, align 2, !tbaa !74
  %92 = icmp ult i16 %91, 7
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = sext i16 %91 to i64
  %95 = and i64 %94, 4294967295
  %96 = add nsw i64 %95, -37
  %97 = icmp ult i64 %96, 8
  br i1 %97, label %98, label %101

98:                                               ; preds = %93, %88, %84, %82
  %99 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %63) #17
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %98, %93
  %102 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %62) #17
  %103 = icmp ne i8 %102, 0
  %104 = or i1 %64, %103
  br i1 %104, label %124, label %105

105:                                              ; preds = %101
  %106 = zext i32 %63 to i64
  %107 = add nsw i64 %106, -37
  %108 = icmp ult i64 %107, 8
  br i1 %108, label %124, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr @reg_renumber, align 8, !tbaa !14
  %111 = getelementptr inbounds i16, ptr %110, i64 %106
  %112 = load i16, ptr %111, align 2, !tbaa !74
  %113 = icmp ult i16 %112, 7
  br i1 %113, label %124, label %114

114:                                              ; preds = %109
  %115 = sext i16 %112 to i64
  %116 = and i64 %115, 4294967295
  %117 = add nsw i64 %116, -37
  %118 = icmp ult i64 %117, 8
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %63) #17
  %121 = zext nneg i8 %120 to i64
  %122 = xor i8 %120, 1
  %123 = zext nneg i8 %122 to i64
  br label %124

124:                                              ; preds = %119, %101, %105, %109, %114, %98, %79
  %125 = phi i64 [ 0, %79 ], [ 1, %98 ], [ 0, %114 ], [ 0, %109 ], [ 0, %105 ], [ 0, %101 ], [ %121, %119 ]
  %126 = phi i64 [ 1, %79 ], [ 0, %98 ], [ 1, %114 ], [ 1, %109 ], [ 1, %105 ], [ 1, %101 ], [ %123, %119 ]
  %127 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %126
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %125
  br label %134

129:                                              ; preds = %57
  %130 = or i1 %58, %59
  %131 = select i1 %58, ptr %17, ptr %19
  %132 = select i1 %58, ptr %19, ptr %17
  br i1 %130, label %134, label %186

133:                                              ; preds = %45
  br label %134

134:                                              ; preds = %129, %45, %45, %45, %45, %133, %124, %39, %47, %47, %47, %47
  %135 = phi ptr [ %131, %129 ], [ %19, %47 ], [ %19, %47 ], [ %19, %47 ], [ %19, %47 ], [ %17, %39 ], [ %17, %45 ], [ %17, %45 ], [ %17, %45 ], [ %17, %45 ], [ %127, %124 ], [ %19, %133 ]
  %136 = phi ptr [ %132, %129 ], [ %17, %47 ], [ %17, %47 ], [ %17, %47 ], [ %17, %47 ], [ %19, %39 ], [ %19, %45 ], [ %19, %45 ], [ %19, %45 ], [ %19, %45 ], [ %128, %124 ], [ %17, %133 ]
  %137 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %135, i32 noundef 11, ptr noundef nonnull %2, ptr noundef %3) #17
  br label %138

138:                                              ; preds = %134, %52, %52, %49, %56, %56, %53
  %139 = phi ptr [ %17, %53 ], [ %17, %56 ], [ %17, %56 ], [ %19, %49 ], [ %19, %52 ], [ %19, %52 ], [ %136, %134 ]
  %140 = phi i8 [ 0, %53 ], [ 0, %56 ], [ 0, %56 ], [ 0, %49 ], [ 0, %52 ], [ 0, %52 ], [ %137, %134 ]
  %141 = or i8 %140, %6
  br label %5

142:                                              ; preds = %5
  %143 = tail call fastcc zeroext i8 @replace_oldest_value_mem(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3) #17, !range !30
  br label %186

144:                                              ; preds = %5
  %145 = tail call fastcc zeroext i8 @replace_oldest_value_reg(ptr noundef nonnull %7, i32 noundef %8, ptr noundef %2, ptr noundef %3) #17, !range !30
  br label %186

146:                                              ; preds = %5, %12
  %147 = and i32 %10, 65535
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !14
  %151 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %148
  %152 = load i8, ptr %151, align 1, !tbaa !35
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %186, label %154

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %156 = zext i8 %152 to i64
  br label %157

157:                                              ; preds = %154, %183
  %158 = phi i64 [ %156, %154 ], [ %160, %183 ]
  %159 = phi i8 [ 0, %154 ], [ %184, %183 ]
  %160 = add nsw i64 %158, -1
  %161 = getelementptr inbounds i8, ptr %150, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !35
  switch i8 %162, label %183 [
    i8 101, label %163
    i8 69, label %167
  ]

163:                                              ; preds = %157
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %155, i64 0, i64 %160
  %165 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %164, i32 noundef %8, ptr noundef %2, ptr noundef %3) #17
  %166 = or i8 %165, %159
  br label %183

167:                                              ; preds = %157
  %168 = getelementptr inbounds [1 x %union.rtunion_def], ptr %155, i64 0, i64 %160
  %169 = load ptr, ptr %168, align 8, !tbaa !35
  %170 = load i32, ptr %169, align 8, !tbaa !76
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %167
  %173 = zext nneg i32 %170 to i64
  br label %174

174:                                              ; preds = %172, %174
  %175 = phi i64 [ %173, %172 ], [ %177, %174 ]
  %176 = phi i8 [ %159, %172 ], [ %181, %174 ]
  %177 = add nsw i64 %175, -1
  %178 = load ptr, ptr %168, align 8, !tbaa !35
  %179 = getelementptr inbounds %struct.rtvec_def, ptr %178, i64 0, i32 1, i64 %177
  %180 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %179, i32 noundef %8, ptr noundef %2, ptr noundef %3) #17
  %181 = or i8 %180, %176
  %182 = icmp ugt i64 %175, 1
  br i1 %182, label %174, label %183, !llvm.loop !78

183:                                              ; preds = %174, %167, %157, %163
  %184 = phi i8 [ %166, %163 ], [ %159, %157 ], [ %159, %167 ], [ %181, %174 ]
  %185 = icmp sgt i64 %158, 1
  br i1 %185, label %157, label %186, !llvm.loop !79

186:                                              ; preds = %129, %5, %5, %5, %5, %5, %5, %183, %146, %144, %142
  %187 = phi i8 [ %145, %144 ], [ %143, %142 ], [ 0, %146 ], [ %184, %183 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %129 ]
  %188 = or i8 %187, %6
  ret i8 %188
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @preprocess_constraints() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cprop_find_used_regs(ptr noundef %0, ptr noundef %1) #4 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @cprop_find_used_regs_1, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @kill_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !35
  %16 = tail call ptr @simplify_subreg(i32 noundef %8, ptr noundef nonnull %10, i32 noundef %13, i32 noundef %15) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load ptr, ptr %9, align 8, !tbaa !35
  br label %20

20:                                               ; preds = %6, %18, %2
  %21 = phi ptr [ %19, %18 ], [ %16, %6 ], [ %0, %2 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #17
  %27 = zext i32 %26 to i64
  %28 = lshr i32 %22, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %27, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !35
  %33 = zext i8 %32 to i32
  tail call fastcc void @kill_value_regno(i32 noundef %26, i32 noundef %33, ptr noundef %1) #17
  br label %34

34:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @kill_clobbered_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #4 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @kill_value(ptr noundef %0, ptr noundef %2) #17
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @kill_autoinc_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !19
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  tail call fastcc void @kill_value(ptr noundef %12, ptr noundef %1) #17
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef %12) #17
  %14 = load i32, ptr %12, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  tail call fastcc void @set_value_regno(i32 noundef %13, i32 noundef %16, ptr noundef %1) #17
  br label %17

17:                                               ; preds = %2, %10
  %18 = phi i32 [ -1, %10 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !35
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_oldest_value_reg(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #17
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %8
  %10 = load i32, ptr %9, align 8, !tbaa !12
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %8, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !35
  %16 = zext i32 %10 to i64
  %17 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %8, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !35
  %19 = icmp ugt i8 %15, %18
  br i1 %19, label %55, label %20

20:                                               ; preds = %12, %3
  %21 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %8, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !19
  %23 = icmp eq i32 %22, %4
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = zext i32 %0 to i64
  %26 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %25
  br label %27

27:                                               ; preds = %24, %51
  %28 = phi i32 [ %22, %24 ], [ %53, %51 ]
  %29 = zext i32 %28 to i64
  %30 = load i64, ptr %26, align 8, !tbaa !31
  %31 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %30, i32 noundef %7, i32 noundef %28) #17, !range !30
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %29
  %35 = load i32, ptr %34, align 8, !tbaa !12
  %36 = load i32, ptr %9, align 8, !tbaa !12
  %37 = tail call fastcc ptr @maybe_mode_change(i32 noundef %35, i32 noundef %36, i32 noundef %7, i32 noundef %28) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load i32, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %41, ptr %42, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %44, ptr %45, align 8, !tbaa !35
  %46 = load i32, ptr %1, align 8
  %47 = and i32 %46, 1073741824
  %48 = load i32, ptr %37, align 8
  %49 = and i32 %48, -1073741825
  %50 = or disjoint i32 %49, %47
  store i32 %50, ptr %37, align 8
  br label %55

51:                                               ; preds = %33
  %52 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %29, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !19
  %54 = icmp eq i32 %53, %4
  br i1 %54, label %55, label %27, !llvm.loop !80

55:                                               ; preds = %51, %27, %20, %39, %12
  %56 = phi ptr [ null, %12 ], [ %37, %39 ], [ null, %20 ], [ null, %27 ], [ null, %51 ]
  ret ptr %56
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_mode_change(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !35
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !35
  %11 = icmp ult i8 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !35
  %16 = icmp ult i8 %7, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %12, %4
  %18 = icmp eq i32 %0, %2
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %0, i32 noundef %3) #18
  br label %28

21:                                               ; preds = %17
  %22 = tail call fastcc zeroext i8 @mode_change_ok(i32 noundef %0, i32 noundef %2, i32 noundef %3) #17, !range !30
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @subreg_regno_offset(i32 noundef %3, i32 noundef %0, i32 noundef 0, i32 noundef %2) #18
  %26 = add i32 %25, %3
  %27 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %2, i32 noundef %26) #18
  br label %28

28:                                               ; preds = %21, %12, %24, %19
  %29 = phi ptr [ %20, %19 ], [ %27, %24 ], [ null, %12 ], [ null, %21 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @replace_oldest_value_reg(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = tail call fastcc ptr @find_oldest_value_reg(i32 noundef %1, ptr noundef %5, ptr noundef %3) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %11, label %14, label %38

14:                                               ; preds = %8
  br i1 %13, label %22, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef %18) #17
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #17
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.12, i32 noundef %17, i32 noundef %19, i32 noundef %20) #17
  br label %22

22:                                               ; preds = %15, %14
  %23 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !14
  %24 = tail call ptr @pool_alloc(ptr noundef %23) #18
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #17
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %3, i64 0, i64 %26, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  store ptr %28, ptr %24, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %24, i64 0, i32 1
  store ptr %2, ptr %29, align 8, !tbaa !66
  %30 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %24, i64 0, i32 2
  store ptr %0, ptr %30, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %24, i64 0, i32 3
  store ptr %6, ptr %31, align 8, !tbaa !69
  %32 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #17
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %3, i64 0, i64 %33, i32 3
  store ptr %24, ptr %34, align 8, !tbaa !38
  %35 = getelementptr inbounds %struct.value_data, ptr %3, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !36
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !36
  br label %48

38:                                               ; preds = %8
  br i1 %13, label %46, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !35
  %42 = load ptr, ptr %0, align 8, !tbaa !14
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef %42) #17
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #17
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.10, i32 noundef %41, i32 noundef %43, i32 noundef %44) #17
  br label %46

46:                                               ; preds = %39, %38
  %47 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %6, i8 noundef zeroext 1) #18
  br label %48

48:                                               ; preds = %4, %46, %22
  %49 = phi i8 [ 1, %22 ], [ 1, %46 ], [ 0, %4 ]
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @replace_oldest_value_mem(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 7
  %7 = select i1 %6, i32 26, i32 13
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %8, i32 noundef %7, ptr noundef nonnull %1, ptr noundef %2) #17
  ret i8 %9
}

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @kill_value_regno(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %3 ]
  %7 = add i32 %6, %0
  tail call fastcc void @kill_value_one_regno(i32 noundef %7, ptr noundef %2) #17
  %8 = add nuw i32 %6, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !81

10:                                               ; preds = %5, %3
  %11 = getelementptr inbounds %struct.value_data, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 %12)
  %14 = icmp ult i32 %13, %0
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = zext i32 %13 to i64
  %17 = zext i32 %0 to i64
  br label %18

18:                                               ; preds = %15, %38
  %19 = phi i64 [ %16, %15 ], [ %39, %38 ]
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %19
  %22 = load i32, ptr %21, align 8, !tbaa !12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %18
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %19, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !35
  %28 = zext i8 %27 to i32
  %29 = add i32 %20, %28
  %30 = icmp ugt i32 %29, %0
  %31 = icmp ne i8 %27, 0
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24, %33
  %34 = phi i32 [ %36, %33 ], [ 0, %24 ]
  %35 = add i32 %34, %20
  tail call fastcc void @kill_value_one_regno(i32 noundef %35, ptr noundef %2) #17
  %36 = add nuw nsw i32 %34, 1
  %37 = icmp eq i32 %36, %28
  br i1 %37, label %38, label %33, !llvm.loop !82

38:                                               ; preds = %33, %24, %18
  %39 = add nuw nsw i64 %19, 1
  %40 = icmp eq i64 %39, %17
  br i1 %40, label %41, label %18, !llvm.loop !83

41:                                               ; preds = %38, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @kill_set_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #4 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  tail call fastcc void @kill_value(ptr noundef %0, ptr noundef %2) #17
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #17
  %13 = lshr i32 %8, 16
  %14 = and i32 %13, 255
  tail call fastcc void @set_value_regno(i32 noundef %12, i32 noundef %14, ptr noundef %2) #17
  br label %15

15:                                               ; preds = %7, %11, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copy_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #12 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #17
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #17
  %6 = icmp eq i32 %5, %4
  %7 = icmp eq i32 %4, 7
  %8 = or i1 %7, %6
  br i1 %8, label %67, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !84
  %11 = icmp ne i8 %10, 0
  %12 = icmp eq i32 %4, 6
  %13 = and i1 %12, %11
  br i1 %13, label %67, label %14

14:                                               ; preds = %9
  %15 = zext i32 %4 to i64
  %16 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !35
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %14
  %20 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %15
  %21 = load i8, ptr %20, align 1, !tbaa !35
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = zext nneg i32 %26 to i64
  %28 = zext i32 %5 to i64
  %29 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %28, i64 %27
  %30 = load i8, ptr %29, align 1, !tbaa !35
  %31 = icmp ugt i32 %4, %5
  %32 = zext i8 %30 to i32
  %33 = add i32 %5, %32
  %34 = icmp ult i32 %4, %33
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %67, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %15, i64 %27
  %38 = load i8, ptr %37, align 1, !tbaa !35
  %39 = zext i8 %38 to i32
  %40 = icmp ugt i32 %5, %4
  %41 = add i32 %4, %39
  %42 = icmp ult i32 %5, %41
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %67, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %28
  %46 = load i32, ptr %45, align 8, !tbaa !12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %15
  %50 = load i32, ptr %49, align 8, !tbaa !12
  tail call fastcc void @set_value_regno(i32 noundef %5, i32 noundef %50, ptr noundef nonnull %2) #17
  br label %56

51:                                               ; preds = %44
  %52 = zext i32 %46 to i64
  %53 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %28, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !35
  %55 = icmp ugt i8 %30, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %51, %48
  %57 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %28, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !6
  %59 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %15, i32 1
  store i32 %58, ptr %59, align 4, !tbaa !6
  br label %60

60:                                               ; preds = %60, %56
  %61 = phi i32 [ %5, %56 ], [ %64, %60 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %62, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !13
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %60, !llvm.loop !93

66:                                               ; preds = %60
  store i32 %4, ptr %63, align 8, !tbaa !13
  br label %67

67:                                               ; preds = %51, %23, %36, %14, %19, %9, %3, %66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %0) unnamed_addr #7 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = load ptr, ptr @reg_renumber, align 8, !tbaa !14
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = sext i16 %7 to i32
  %9 = icmp slt i16 %7, 0
  %10 = select i1 %9, i32 %0, i32 %8
  br label %11

11:                                               ; preds = %3, %1
  %12 = phi i32 [ %0, %1 ], [ %10, %3 ]
  %13 = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %12) #17
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %0) unnamed_addr #7 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = add nsw i64 %4, -37
  %6 = icmp ult i64 %5, 8
  %7 = and i32 %0, -5
  %8 = icmp eq i32 %7, 16
  %9 = or i1 %8, %6
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !14
  %12 = getelementptr inbounds i16, ptr %11, i64 %4
  %13 = load i16, ptr %12, align 2, !tbaa !74
  %14 = icmp ult i16 %13, 8
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = sext i16 %13 to i64
  %17 = and i64 %16, 4294967295
  %18 = add nsw i64 %17, -37
  %19 = icmp ult i64 %18, 8
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %10, %15, %3, %1
  %22 = phi i8 [ 1, %3 ], [ 1, %1 ], [ 1, %10 ], [ %20, %15 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cprop_find_used_regs_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #17
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #17
  tail call fastcc void @apply_debug_insn_changes(ptr noundef nonnull %1, i32 noundef %14) #17
  %15 = load ptr, ptr %0, align 8, !tbaa !14
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef %15) #17
  tail call fastcc void @free_debug_insn_changes(ptr noundef nonnull %1, i32 noundef %16) #17
  br label %17

17:                                               ; preds = %7, %13, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_debug_insn_changes(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.value_data, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %5, %7 ], [ %11, %9 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = load i32, ptr %8, align 4, !tbaa !36
  %13 = add i32 %12, -1
  store i32 %13, ptr %8, align 4, !tbaa !36
  %14 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !14
  tail call void @pool_free(ptr noundef %14, ptr noundef nonnull %10) #18
  %15 = icmp eq ptr %11, null
  br i1 %15, label %16, label %9, !llvm.loop !94

16:                                               ; preds = %9, %2
  store ptr null, ptr %4, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_value_regno(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #13 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %4
  store i32 %1, ptr %5, align 8, !tbaa !12
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !35
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.value_data, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = icmp ult i32 %11, %9
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 %9, ptr %10, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @in_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #17
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
  br i1 %18, label %19, label %10, !llvm.loop !95

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 0, %3 ], [ 1, %10 ], [ 0, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !35
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mode_change_ok(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !35
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !35
  %10 = icmp ult i8 %6, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = zext i32 %2 to i64
  %13 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %0, i32 noundef %1, i32 noundef %14) #18
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %3, %11
  %19 = phi i8 [ %17, %11 ], [ 0, %3 ]
  ret i8 %19
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @kill_value_one_regno(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3
  %5 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %12, %8 ], [ %6, %2 ]
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %10, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %8, !llvm.loop !96

14:                                               ; preds = %8
  %15 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !13
  store i32 %16, ptr %11, align 8, !tbaa !13
  br label %28

17:                                               ; preds = %2
  %18 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !13
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %28, label %21

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %26, %21 ], [ %19, %17 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %23, i32 1
  store i32 %19, ptr %24, align 4, !tbaa !6
  %25 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %23, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !13
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %21, !llvm.loop !97

28:                                               ; preds = %21, %17, %14
  store i32 0, ptr %4, align 8, !tbaa !12
  store i32 %0, ptr %5, align 4, !tbaa !6
  %29 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 2
  store i32 -1, ptr %29, align 8, !tbaa !13
  %30 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call fastcc void @free_debug_insn_changes(ptr noundef nonnull %1, i32 noundef %0) #17
  br label %34

34:                                               ; preds = %33, %28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 4}
!7 = !{!"value_data_entry", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !8, i64 0}
!13 = !{!7, !8, i64 8}
!14 = !{!11, !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{!8, !8, i64 0}
!20 = !{!21, !11, i64 8}
!21 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !11, i64 128, !8, i64 136, !8, i64 137, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139}
!22 = !{!23, !8, i64 32}
!23 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !8, i64 48, !9, i64 52, !9, i64 60, !8, i64 68, !8, i64 72}
!24 = !{!23, !11, i64 0}
!25 = !{!26, !11, i64 56}
!26 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !11, i64 48, !11, i64 56, !9, i64 64, !27, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96}
!27 = !{!"long", !9, i64 0}
!28 = !{!23, !11, i64 8}
!29 = !{!26, !8, i64 80}
!30 = !{i8 0, i8 2}
!31 = !{!27, !27, i64 0}
!32 = !{!33, !8, i64 48}
!33 = !{!"edge_def", !11, i64 0, !11, i64 8, !9, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !27, i64 56}
!34 = !{i64 0, i64 1272, !35, i64 1272, i64 4, !19, i64 1276, i64 4, !19}
!35 = !{!9, !9, i64 0}
!36 = !{!37, !8, i64 1276}
!37 = !{!"value_data", !9, i64 0, !8, i64 1272, !8, i64 1276}
!38 = !{!7, !11, i64 16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = !{!44, !11, i64 0}
!44 = !{!"simple_bitmap_def", !11, i64 0, !8, i64 8, !8, i64 12, !9, i64 16}
!45 = !{!26, !11, i64 0}
!46 = !{!33, !11, i64 0}
!47 = distinct !{!47, !16}
!48 = !{!37, !8, i64 1272}
!49 = !{!50, !9, i64 1086}
!50 = !{!"recog_data", !9, i64 0, !9, i64 240, !9, i64 480, !9, i64 720, !9, i64 840, !9, i64 960, !9, i64 1072, !9, i64 1086, !9, i64 1087, !9, i64 1088, !9, i64 1089, !11, i64 1120}
!51 = !{!52, !8, i64 16}
!52 = !{!"operand_alternative", !11, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 24, !8, i64 24, !8, i64 24, !8, i64 24, !8, i64 24, !8, i64 24, !8, i64 24}
!53 = !{!52, !8, i64 8}
!54 = !{!52, !8, i64 20}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = !{!50, !9, i64 1087}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = !{!65, !11, i64 8}
!65 = !{!"rtl_bb_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32}
!66 = !{!67, !11, i64 8}
!67 = !{!"queued_debug_insn_change", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!68 = !{!67, !11, i64 16}
!69 = !{!67, !11, i64 24}
!70 = !{!67, !11, i64 0}
!71 = distinct !{!71, !16}
!72 = !{!73, !8, i64 0}
!73 = !{!"VEC_edge_base", !8, i64 0, !8, i64 4, !9, i64 8}
!74 = !{!75, !75, i64 0}
!75 = !{!"short", !9, i64 0}
!76 = !{!77, !8, i64 0}
!77 = !{!"rtvec_def", !8, i64 0, !9, i64 8}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = !{!85, !9, i64 477}
!85 = !{!"rtl_data", !86, i64 0, !87, i64 40, !88, i64 96, !89, i64 112, !91, i64 208, !92, i64 248, !8, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !27, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !8, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !11, i64 456, !9, i64 464, !9, i64 465, !9, i64 466, !9, i64 467, !9, i64 468, !9, i64 469, !9, i64 470, !9, i64 471, !9, i64 472, !9, i64 473, !9, i64 474, !9, i64 475, !9, i64 476, !9, i64 477, !9, i64 478, !9, i64 479, !9, i64 480, !9, i64 481, !9, i64 482, !9, i64 483, !9, i64 484, !9, i64 485}
!86 = !{!"expr_status", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!87 = !{!"emit_status", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !11, i64 48}
!88 = !{!"varasm_status", !11, i64 0, !8, i64 8}
!89 = !{!"incoming_args", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !90, i64 24, !11, i64 88}
!90 = !{!"ix86_args", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60}
!91 = !{!"function_subsections", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!92 = !{!"rtl_eh", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !9, i64 48}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
!95 = distinct !{!95, !16}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
