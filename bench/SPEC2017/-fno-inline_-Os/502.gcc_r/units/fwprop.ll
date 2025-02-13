; ModuleID = 'fwprop.c'
source_filename = "fwprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df_md_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_df_ref_base = type { i32, i32, [1 x ptr] }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.find_occurrence_data = type { ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"fwprop1\00", align 1
@pass_rtl_fwprop = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_fwprop, ptr @fwprop, ptr null, ptr null, i32 0, i32 120, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"fwprop2\00", align 1
@pass_rtl_fwprop_addr = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_fwprop, ptr @fwprop_addr, ptr null, ptr null, i32 0, i32 120, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_forward_propagate = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@num_changes = internal unnamed_addr global i32 0, align 4
@use_def_ref = internal global ptr null, align 8
@reg_defs = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@reg_defs_stack = internal global ptr null, align 8
@local_md = internal unnamed_addr global ptr null, align 8
@local_lr = internal unnamed_addr global ptr null, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"fwprop.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"\0AIn insn %d, replacing\0A \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0A with \00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Changes to insn %d not recognized\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Changes to insn %d not profitable\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Changed insn %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c" Setting REG_EQUAL note\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\0ANumber of successful forward propagations: %d\0A\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_fwprop() #0 !prof !185 !PGOFuncName !186 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !187
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_forward_propagate, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !191
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fwprop() #1 !prof !192 !PGOFuncName !193 {
  tail call fastcc void @fwprop_init() #15
  %1 = load ptr, ptr @df, align 8, !tbaa !194
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 4, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !196
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %48, label %5, !prof !199

5:                                                ; preds = %0, %41
  %6 = phi ptr [ %42, %41 ], [ %1, %0 ]
  %7 = phi i64 [ %43, %41 ], [ 0, %0 ]
  %8 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = getelementptr inbounds ptr, ptr %9, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13, !prof !201

13:                                               ; preds = %5
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65280
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %39, label %17, !prof !202

17:                                               ; preds = %13
  %18 = and i32 %14, 255
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26, !prof !203

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_artificial_ref, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !205
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %35, !prof !203

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !204
  %29 = load ptr, ptr %28, align 8, !tbaa !208
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !204
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !205
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !203

35:                                               ; preds = %26, %20
  %36 = phi ptr [ %24, %20 ], [ %33, %26 ]
  %37 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %36) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41, !prof !210

39:                                               ; preds = %26, %35, %20, %13
  tail call fastcc void @forward_propagate_into(ptr noundef nonnull %11) #15
  %40 = load ptr, ptr @df, align 8, !tbaa !194
  br label %41

41:                                               ; preds = %35, %39, %5
  %42 = phi ptr [ %6, %35 ], [ %40, %39 ], [ %6, %5 ]
  %43 = add nuw nsw i64 %7, 1
  %44 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 4, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !196
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %5, label %48, !prof !211, !llvm.loop !212

48:                                               ; preds = %41, %0
  tail call fastcc void @fwprop_done() #15
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fwprop_addr() #1 !prof !192 !PGOFuncName !214 {
  tail call fastcc void @fwprop_init() #15
  %1 = load ptr, ptr @df, align 8, !tbaa !194
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 4, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !196
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %48, label %5, !prof !199

5:                                                ; preds = %0, %41
  %6 = phi ptr [ %42, %41 ], [ %1, %0 ]
  %7 = phi i64 [ %43, %41 ], [ 0, %0 ]
  %8 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = getelementptr inbounds ptr, ptr %9, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13, !prof !215

13:                                               ; preds = %5
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65280
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %41, label %17, !prof !216

17:                                               ; preds = %13
  %18 = and i32 %14, 255
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26, !prof !217

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_artificial_ref, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !205
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %35, !prof !217

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !204
  %29 = load ptr, ptr %28, align 8, !tbaa !208
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !204
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !205
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35, !prof !217

35:                                               ; preds = %26, %20
  %36 = phi ptr [ %24, %20 ], [ %33, %26 ]
  %37 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %36) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !218

39:                                               ; preds = %35
  tail call fastcc void @forward_propagate_into(ptr noundef nonnull %11) #15
  %40 = load ptr, ptr @df, align 8, !tbaa !194
  br label %41

41:                                               ; preds = %26, %13, %20, %35, %39, %5
  %42 = phi ptr [ %6, %26 ], [ %6, %13 ], [ %6, %20 ], [ %6, %35 ], [ %40, %39 ], [ %6, %5 ]
  %43 = add nuw nsw i64 %7, 1
  %44 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 4, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !196
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %5, label %48, !prof !219, !llvm.loop !220

48:                                               ; preds = %41, %0
  tail call fastcc void @fwprop_done() #15
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fwprop_init() unnamed_addr #1 !prof !185 !PGOFuncName !221 {
  store i32 0, ptr @num_changes, align 4, !tbaa !187
  tail call void @calculate_dominance_info(i32 noundef 1) #16
  tail call void @loop_optimizer_init(i32 noundef 0) #16
  tail call fastcc void @build_single_def_use_links() #15
  %1 = tail call i32 @df_set_flags(i32 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !222 !PGOFuncName !223 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !228

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #15
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forward_propagate_into(ptr noundef %0) unnamed_addr #1 !prof !229 !PGOFuncName !230 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 2097152
  %4 = icmp ne i32 %3, 0
  %5 = and i32 %2, 255
  %6 = icmp eq i32 %5, 1
  %7 = or i1 %4, %6
  br i1 %7, label %72, label %8, !prof !231

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @get_def_for_use(ptr noundef nonnull %0) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11, !prof !232

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 2097152
  %14 = icmp ne i32 %13, 0
  %15 = and i32 %12, 255
  %16 = icmp eq i32 %15, 1
  %17 = or i1 %14, %16
  br i1 %17, label %72, label %18, !prof !233

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !204
  %21 = load ptr, ptr %20, align 8, !tbaa !208
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !204
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !205
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !204
  %28 = load ptr, ptr %27, align 8, !tbaa !208
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !204
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !205
  %33 = icmp eq ptr %25, %32
  br i1 %33, label %34, label %72, !prof !234

34:                                               ; preds = %18
  %35 = and i32 %2, 262144
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !235

37:                                               ; preds = %34
  %38 = tail call ptr @find_reg_note(ptr noundef nonnull %28, i32 noundef 4, ptr noundef null) #16
  br label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !204
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %38, %37 ], [ %41, %39 ]
  %44 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !204
  %46 = tail call i32 @reg_mentioned_p(ptr noundef %45, ptr noundef %43) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %72, label %48, !prof !236

48:                                               ; preds = %42
  %49 = load ptr, ptr %19, align 8, !tbaa !204
  %50 = load ptr, ptr %49, align 8, !tbaa !208
  %51 = tail call i32 @multiple_sets(ptr noundef %50) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %72, !prof !234

53:                                               ; preds = %48
  %54 = load i32, ptr %50, align 8
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -7
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %72, !prof !237

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !204
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %67, label %64, !prof !238

64:                                               ; preds = %58
  %65 = tail call ptr @single_set_2(ptr noundef nonnull %50, ptr noundef nonnull %60) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67, !prof !239

67:                                               ; preds = %58, %64
  %68 = phi ptr [ %65, %64 ], [ %60, %58 ]
  %69 = tail call fastcc zeroext i8 @forward_propagate_and_simplify(ptr noundef nonnull %0, ptr noundef nonnull %50, ptr noundef nonnull %68) #15, !range !240
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72, !prof !241

71:                                               ; preds = %67
  tail call fastcc void @forward_propagate_subreg(ptr noundef nonnull %0, ptr noundef nonnull %50, ptr noundef nonnull %68) #15
  br label %72

72:                                               ; preds = %53, %67, %71, %64, %48, %42, %18, %11, %8, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fwprop_done() unnamed_addr #1 !prof !185 !PGOFuncName !242 {
  tail call void @loop_optimizer_finalize() #16
  tail call fastcc void @VEC_df_ref_heap_free(ptr noundef nonnull @use_def_ref) #15
  tail call void @free_dominance_info(i32 noundef 1) #16
  %1 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #16
  %2 = tail call ptr @get_insns() #16
  %3 = tail call i32 @max_reg_num() #16
  %4 = tail call i32 @delete_trivially_dead_insns(ptr noundef %2, i32 noundef %3) #16
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !191

7:                                                ; preds = %0
  %8 = load i32, ptr @num_changes, align 4, !tbaa !187
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, i32 noundef %8) #15
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_single_def_use_links() unnamed_addr #1 !prof !185 !PGOFuncName !243 {
  %1 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #17
  %2 = tail call i32 @df_set_flags(i32 noundef 4) #16
  tail call void @df_md_add_problem() #16
  tail call void @df_note_add_problem() #16
  tail call void @df_analyze() #16
  tail call void @df_maybe_reorganize_use_refs(i32 noundef 6) #16
  %3 = load ptr, ptr @df, align 8, !tbaa !194
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 4, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !196
  %6 = tail call fastcc ptr @VEC_df_ref_heap_alloc(i32 noundef %5) #15
  store ptr %6, ptr @use_def_ref, align 8, !tbaa !194
  %7 = load ptr, ptr @df, align 8, !tbaa !194
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 4, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !196
  tail call fastcc void @VEC_df_ref_heap_safe_grow_cleared(ptr noundef nonnull @use_def_ref, i32 noundef %9) #15
  %10 = tail call i32 @max_reg_num() #16
  %11 = tail call fastcc ptr @VEC_df_ref_heap_alloc(i32 noundef %10) #15
  store ptr %11, ptr @reg_defs, align 8, !tbaa !194
  %12 = tail call i32 @max_reg_num() #16
  tail call fastcc void @VEC_df_ref_heap_safe_grow_cleared(ptr noundef nonnull @reg_defs, i32 noundef %12) #15
  %13 = load ptr, ptr @cfun, align 8, !tbaa !194
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !244
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !246
  %18 = mul nsw i32 %17, 10
  %19 = tail call fastcc ptr @VEC_df_ref_heap_alloc(i32 noundef %18) #15
  store ptr %19, ptr @reg_defs_stack, align 8, !tbaa !194
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %20, ptr @local_md, align 8, !tbaa !194
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %21, ptr @local_lr, align 8, !tbaa !194
  store i8 1, ptr %1, align 8
  %22 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !248
  %23 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @single_def_use_enter_block, ptr %23, align 8, !tbaa !250
  %24 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @single_def_use_leave_block, ptr %24, align 8, !tbaa !251
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #16
  %25 = load ptr, ptr @cfun, align 8, !tbaa !194
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !244
  %28 = load ptr, ptr %27, align 8, !tbaa !252
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %28) #16
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #16
  %29 = load ptr, ptr @local_lr, align 8, !tbaa !194
  call void @bitmap_obstack_free(ptr noundef %29) #16
  store ptr null, ptr @local_lr, align 8, !tbaa !194
  %30 = load ptr, ptr @local_md, align 8, !tbaa !194
  call void @bitmap_obstack_free(ptr noundef %30) #16
  store ptr null, ptr @local_md, align 8, !tbaa !194
  call fastcc void @VEC_df_ref_heap_free(ptr noundef nonnull @reg_defs) #15
  call fastcc void @VEC_df_ref_heap_free(ptr noundef nonnull @reg_defs_stack) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_md_add_problem() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_maybe_reorganize_use_refs(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_df_ref_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !253 !PGOFuncName !254 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !255 !PGOFuncName !256 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %3) #15
  tail call fastcc void @VEC_df_ref_heap_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #15
  %5 = load ptr, ptr %0, align 8, !tbaa !194
  %6 = tail call fastcc ptr @VEC_df_ref_base_address(ptr noundef %5) #15
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @single_def_use_enter_block(ptr nocapture readnone %0, ptr noundef %1) #1 !prof !257 !PGOFuncName !258 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !259
  %5 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %4) #15
  %6 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #15
  %7 = load ptr, ptr @local_md, align 8, !tbaa !194
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !260
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef %9) #16
  %10 = load ptr, ptr @local_lr, align 8, !tbaa !194
  %11 = getelementptr inbounds %struct.df_lr_bb_info, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !262
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #16
  tail call fastcc void @VEC_df_ref_heap_safe_push(ptr noundef nonnull @reg_defs_stack, ptr noundef null) #15
  %13 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %4) #15
  tail call fastcc void @process_uses(ptr noundef %13, i32 noundef 2) #15
  %14 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #15
  tail call fastcc void @process_defs(ptr noundef %14, i32 noundef 2) #15
  %15 = load ptr, ptr @local_lr, align 8, !tbaa !194
  tail call void @df_simulate_initialize_forwards(ptr noundef %1, ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !204
  %18 = load ptr, ptr %17, align 8, !tbaa !204
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20, !prof !264

20:                                               ; preds = %2, %59
  %21 = phi ptr [ %61, %59 ], [ %18, %2 ]
  %22 = load ptr, ptr %16, align 8, !tbaa !204
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !265
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !204
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %63, label %28, !prof !267

28:                                               ; preds = %20
  %29 = load i32, ptr %21, align 8
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -7
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %59, !prof !268

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !204
  %36 = load ptr, ptr @df, align 8, !tbaa !194
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !269
  %39 = zext i32 %35 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !194
  %42 = getelementptr inbounds %struct.df_insn_info, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !270
  tail call fastcc void @process_uses(ptr noundef %43, i32 noundef 0) #15
  %44 = load ptr, ptr @df, align 8, !tbaa !194
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !269
  %47 = getelementptr inbounds ptr, ptr %46, i64 %39
  %48 = load ptr, ptr %47, align 8, !tbaa !194
  %49 = getelementptr inbounds %struct.df_insn_info, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !271
  tail call fastcc void @process_uses(ptr noundef %50, i32 noundef 0) #15
  %51 = load ptr, ptr @df, align 8, !tbaa !194
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !269
  %54 = getelementptr inbounds ptr, ptr %53, i64 %39
  %55 = load ptr, ptr %54, align 8, !tbaa !194
  %56 = getelementptr inbounds %struct.df_insn_info, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !272
  tail call fastcc void @process_defs(ptr noundef %57, i32 noundef 0) #15
  %58 = load ptr, ptr @local_lr, align 8, !tbaa !194
  tail call void @df_simulate_one_insn_forwards(ptr noundef nonnull %1, ptr noundef nonnull %21, ptr noundef %58) #16
  br label %59

59:                                               ; preds = %28, %33
  %60 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !204
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %20, !prof !273, !llvm.loop !274

63:                                               ; preds = %20, %59, %2
  %64 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %4) #15
  tail call fastcc void @process_uses(ptr noundef %64, i32 noundef 0) #15
  %65 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #15
  tail call fastcc void @process_defs(ptr noundef %65, i32 noundef 0) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @single_def_use_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #5 !prof !257 !PGOFuncName !275 {
  %3 = load ptr, ptr @reg_defs_stack, align 8
  %4 = tail call fastcc ptr @VEC_df_ref_base_pop(ptr noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !276

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !204
  %10 = load ptr, ptr @reg_defs, align 8
  %11 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %10, i32 noundef %9) #15
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %13, label %14, !prof !277

13:                                               ; preds = %6
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %10, i32 noundef %9, ptr noundef null) #15
  br label %15

14:                                               ; preds = %6
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %7) #15
  br label %15

15:                                               ; preds = %14, %13
  %16 = load ptr, ptr @reg_defs_stack, align 8
  %17 = tail call fastcc ptr @VEC_df_ref_base_pop(ptr noundef %16) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !prof !278, !llvm.loop !279

19:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_df_ref_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !253 !PGOFuncName !280 {
  %2 = load ptr, ptr %0, align 8, !tbaa !194
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !281

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !194
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !282 !PGOFuncName !283 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !284

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !285
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !255 !PGOFuncName !287 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !288

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !285
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_df_ref_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !289, !noundef !289
  store i32 %1, ptr %10, align 8, !tbaa !285
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_df_ref_base_address(ptr noundef readnone %0) unnamed_addr #8 !prof !255 !PGOFuncName !290 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !288
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !255 !PGOFuncName !291 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = tail call fastcc i32 @VEC_df_ref_base_space(ptr noundef %3, i32 noundef %1) #15, !range !292
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !288

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %3, i32 noundef %1) #16
  store ptr %7, ptr %0, align 8, !tbaa !194
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !293 !PGOFuncName !294 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !295

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !296
  %7 = load i32, ptr %0, align 8, !tbaa !285
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_md_get_bb_info(i32 noundef %0) unnamed_addr #3 !prof !257 !PGOFuncName !297 {
  %2 = load ptr, ptr @df, align 8, !tbaa !194
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 7
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !298
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !300

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !301
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #3 !prof !257 !PGOFuncName !302 {
  %2 = load ptr, ptr @df, align 8, !tbaa !194
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !298
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !300

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !301
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !303 !PGOFuncName !304 {
  tail call fastcc void @VEC_df_ref_heap_reserve(ptr noundef %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  tail call fastcc void @VEC_df_ref_base_quick_push(ptr noundef %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_uses(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !305 !PGOFuncName !306 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5, !prof !307

5:                                                ; preds = %2, %33
  %6 = phi ptr [ %34, %33 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %33 ], [ %0, %2 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load i32, ptr %6, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %33, !prof !308

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !204
  %16 = load ptr, ptr @reg_defs, align 8
  %17 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %16, i32 noundef %15) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !309

19:                                               ; preds = %13
  %20 = load ptr, ptr @local_md, align 8, !tbaa !194
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %15) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33, !prof !310

23:                                               ; preds = %19
  %24 = load ptr, ptr @local_lr, align 8, !tbaa !194
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %15) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27, !prof !311

27:                                               ; preds = %23
  %28 = load ptr, ptr @use_def_ref, align 8
  %29 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !204
  %31 = load ptr, ptr @reg_defs, align 8
  %32 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %31, i32 noundef %15) #15
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %28, i32 noundef %30, ptr noundef %32) #15
  br label %33

33:                                               ; preds = %13, %19, %23, %27, %5
  %34 = load ptr, ptr %8, align 8, !tbaa !194
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %5, !prof !312, !llvm.loop !313

36:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #3 !prof !314 !PGOFuncName !315 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #15
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !316
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_defs(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !318 !PGOFuncName !319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5, !prof !320

5:                                                ; preds = %2, %35
  %6 = phi ptr [ %36, %35 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %35 ], [ %0, %2 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !204
  %11 = load i32, ptr %6, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %35, !prof !321, !llvm.loop !322

15:                                               ; preds = %5
  %16 = load ptr, ptr @reg_defs, align 8
  %17 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %16, i32 noundef %10) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22, !prof !323

19:                                               ; preds = %15
  %20 = and i32 %11, 5308416
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24, !prof !324

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %17, %15 ], [ %6, %19 ]
  tail call fastcc void @VEC_df_ref_heap_safe_push(ptr noundef nonnull @reg_defs_stack, ptr noundef nonnull %23) #15
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, ptr %6, align 8
  %26 = and i32 %25, 5308416
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @local_md, align 8, !tbaa !194
  br i1 %27, label %32, label %29, !prof !325

29:                                               ; preds = %24
  %30 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %28, i32 noundef %10) #16
  %31 = load ptr, ptr @reg_defs, align 8
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %31, i32 noundef %10, ptr noundef null) #15
  br label %35

32:                                               ; preds = %24
  %33 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %28, i32 noundef %10) #16
  %34 = load ptr, ptr @reg_defs, align 8
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %34, i32 noundef %10, ptr noundef nonnull %6) #15
  br label %35

35:                                               ; preds = %29, %32, %5
  %36 = load ptr, ptr %8, align 8, !tbaa !194
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %5, !prof !326

38:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #3 !prof !314 !PGOFuncName !327 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !328
  ret ptr %3
}

; Function Attrs: optsize
declare void @df_simulate_initialize_forwards(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_simulate_one_insn_forwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !303 !PGOFuncName !329 {
  %2 = load ptr, ptr %0, align 8, !tbaa !194
  %3 = tail call fastcc i32 @VEC_df_ref_base_space(ptr noundef %2, i32 noundef 1) #15, !range !292
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !330

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #16
  store ptr %6, ptr %0, align 8, !tbaa !194
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_ref_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !303 !PGOFuncName !331 {
  %3 = load i32, ptr %0, align 8, !tbaa !285
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !285
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !194
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_df_ref_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !332 !PGOFuncName !333 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_ref_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !334 !PGOFuncName !335 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #3 !prof !336 !PGOFuncName !337 {
  %2 = load ptr, ptr @df, align 8, !tbaa !194
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !298
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !338

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !301
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_df_ref_base_pop(ptr nocapture noundef %0) unnamed_addr #10 !prof !303 !PGOFuncName !339 {
  %2 = load i32, ptr %0, align 8, !tbaa !285
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !285
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  ret ptr %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !222 !PGOFuncName !340 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !228

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !341
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !343 !PGOFuncName !344 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_def_for_use(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !345 !PGOFuncName !346 {
  %2 = load ptr, ptr @use_def_ref, align 8
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !204
  %5 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %2, i32 noundef %4) #15
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forward_propagate_and_simplify(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !347 !PGOFuncName !348 {
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %24, !prof !349

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !204
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %19, label %17, !prof !350

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %6, ptr noundef nonnull %13) #16
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %18, %17 ], [ %13, %11 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !204
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %32, label %36, !prof !351

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !204
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %41, !prof !351

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !204
  %31 = tail call i32 @asm_noperands(ptr noundef %30) #16
  br label %38

32:                                               ; preds = %19
  %33 = load ptr, ptr %12, align 8, !tbaa !204
  %34 = tail call i32 @asm_noperands(ptr noundef %33) #16
  %35 = icmp eq ptr %20, null
  br i1 %35, label %38, label %46, !prof !352

36:                                               ; preds = %19
  %37 = icmp eq ptr %20, null
  br i1 %37, label %41, label %46, !prof !353

38:                                               ; preds = %28, %32
  %39 = phi i32 [ %34, %32 ], [ %31, %28 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %53, !prof !239

41:                                               ; preds = %24, %36, %38
  %42 = phi i32 [ %39, %38 ], [ -1, %36 ], [ -1, %24 ]
  %43 = load i32, ptr %6, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %53, label %171, !prof !354

46:                                               ; preds = %36, %32
  %47 = phi i32 [ -1, %36 ], [ %34, %32 ]
  %48 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !204
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 16711680
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %171, label %53, !prof !355

53:                                               ; preds = %38, %41, %46
  %54 = phi ptr [ %20, %46 ], [ null, %41 ], [ null, %38 ]
  %55 = phi i1 [ true, %46 ], [ false, %41 ], [ false, %38 ]
  %56 = phi i32 [ %47, %46 ], [ %42, %41 ], [ %39, %38 ]
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !204
  %59 = load i32, ptr %58, align 8
  %60 = trunc i32 %59 to i16
  switch i16 %60, label %85 [
    i16 39, label %61
    i16 37, label %76
  ], !prof !356

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !204
  %64 = load i32, ptr %63, align 8
  %65 = trunc i32 %64 to i16
  switch i16 %65, label %85 [
    i16 39, label %66
    i16 37, label %82
  ], !prof !357

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load i32, ptr %67, align 8, !tbaa !204
  %69 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !204
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %171

72:                                               ; preds = %66
  %73 = xor i32 %64, %59
  %74 = and i32 %73, 16711680
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %171

76:                                               ; preds = %53
  %77 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !204
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 39
  br i1 %81, label %171, label %85, !prof !358

82:                                               ; preds = %61
  %83 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !204
  br label %85

85:                                               ; preds = %61, %72, %53, %76, %82
  %86 = phi ptr [ %84, %82 ], [ %58, %76 ], [ %58, %53 ], [ %58, %72 ], [ %58, %61 ]
  %87 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !204
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !187
  %94 = icmp eq i32 %93, 9
  br i1 %94, label %100, label %95, !prof !359

95:                                               ; preds = %85
  %96 = tail call fastcc zeroext i8 @all_uses_available_at(ptr noundef %1, ptr noundef nonnull %6) #15
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %171, label %98, !prof !360

98:                                               ; preds = %95
  %99 = load i32, ptr %88, align 8
  br label %100

100:                                              ; preds = %98, %85
  %101 = phi i32 [ %99, %98 ], [ %89, %85 ]
  %102 = and i32 %101, 67174399
  %103 = icmp eq i32 %102, 67108907
  br i1 %103, label %104, label %120, !prof !361

104:                                              ; preds = %100
  %105 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %88) #16
  %106 = icmp ne ptr %105, %88
  %107 = and i1 %55, %106
  br i1 %107, label %108, label %171

108:                                              ; preds = %104
  %109 = tail call ptr @find_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef null) #16
  %110 = icmp eq ptr %109, null
  %111 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %112 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = select i1 %110, ptr %112, ptr %111
  %114 = load ptr, ptr %113, align 8, !tbaa !204
  %115 = tail call ptr @simplify_replace_rtx(ptr noundef %114, ptr noundef nonnull %88, ptr noundef %105) #16
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %171, label %117

117:                                              ; preds = %108
  %118 = tail call ptr @copy_rtx(ptr noundef %115) #16
  %119 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef %118) #16
  br label %171

120:                                              ; preds = %100
  %121 = icmp sgt i32 %56, -1
  br i1 %121, label %122, label %124, !prof !362

122:                                              ; preds = %120
  %123 = tail call fastcc zeroext i8 @forward_propagate_asm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %86) #15, !range !240
  br label %171

124:                                              ; preds = %120
  %125 = load i32, ptr %0, align 8
  %126 = and i32 %125, 65280
  %127 = icmp eq i32 %126, 768
  br i1 %127, label %128, label %130, !prof !363

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  br label %148

130:                                              ; preds = %124
  br i1 %55, label %135, label %131, !prof !364

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !204
  %134 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %148

135:                                              ; preds = %130
  %136 = tail call ptr @find_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef null) #16
  %137 = load i32, ptr %0, align 8
  %138 = and i32 %137, 262144
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140, !prof !364

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  br label %144

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi ptr [ %141, %140 ], [ %143, %142 ]
  %146 = icmp eq ptr %136, null
  %147 = zext i1 %146 to i8
  br label %148

148:                                              ; preds = %131, %144, %128
  %149 = phi i8 [ 0, %128 ], [ %147, %144 ], [ 0, %131 ]
  %150 = phi ptr [ %129, %128 ], [ %145, %144 ], [ %134, %131 ]
  %151 = load ptr, ptr %150, align 8, !tbaa !194
  %152 = load i32, ptr %151, align 8
  %153 = lshr i32 %152, 16
  %154 = and i32 %153, 255
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162, !prof !362

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !204
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 16
  %161 = and i32 %160, 255
  br label %162

162:                                              ; preds = %148, %156
  %163 = phi i32 [ %161, %156 ], [ %154, %148 ]
  %164 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !204
  %166 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %165) #16
  %167 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %151, i32 noundef %163, ptr noundef %86, ptr noundef nonnull %88, i8 noundef zeroext %166) #15
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169, !prof !365

169:                                              ; preds = %162
  %170 = tail call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %0, ptr noundef nonnull %150, ptr noundef nonnull %167, ptr noundef %1, i8 noundef zeroext %149) #15, !range !240
  br label %171

171:                                              ; preds = %162, %104, %117, %108, %95, %76, %66, %72, %46, %41, %169, %122
  %172 = phi i8 [ %123, %122 ], [ %170, %169 ], [ 0, %41 ], [ 0, %46 ], [ 0, %72 ], [ 0, %66 ], [ 0, %76 ], [ 0, %95 ], [ 0, %108 ], [ 0, %117 ], [ 0, %104 ], [ 0, %162 ]
  ret i8 %172
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forward_propagate_subreg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !366 !PGOFuncName !367 {
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = and i32 %6, 65535
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %11, label %97, !prof !368

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !204
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %97, !prof !369

17:                                               ; preds = %11
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !204
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !204
  %29 = icmp ugt i8 %20, %28
  br i1 %29, label %30, label %59, !prof !370

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !204
  %33 = load ptr, ptr %32, align 8, !tbaa !208
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !204
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %39, label %97

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !204
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 37
  br i1 %44, label %45, label %97

45:                                               ; preds = %39
  %46 = lshr i32 %42, 16
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, %8
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %35) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %97, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc zeroext i8 @all_uses_available_at(ptr noundef %1, ptr noundef %33) #15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %97, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 254
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %88, label %92

59:                                               ; preds = %17
  %60 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %5) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %97, label %62, !prof !370

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !204
  %65 = load ptr, ptr %64, align 8, !tbaa !208
  %66 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !204
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65534
  %70 = icmp eq i32 %69, 98
  br i1 %70, label %71, label %97, !prof !371

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !204
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = lshr i32 %74, 16
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, %8
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = tail call fastcc zeroext i8 @all_uses_available_at(ptr noundef %1, ptr noundef %65) #15
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %0, align 8
  %86 = and i32 %85, 254
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %55
  %89 = phi ptr [ %40, %55 ], [ %72, %84 ]
  %90 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !204
  br label %92

92:                                               ; preds = %88, %84, %55
  %93 = phi ptr [ %40, %55 ], [ %72, %84 ], [ %89, %88 ]
  %94 = phi ptr [ null, %55 ], [ null, %84 ], [ %91, %88 ]
  %95 = load ptr, ptr %93, align 8, !tbaa !204
  %96 = tail call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %0, ptr noundef %94, ptr noundef %95, ptr noundef %1, i8 noundef zeroext 0) #15, !range !240
  br label %97

97:                                               ; preds = %92, %62, %52, %49, %45, %39, %30, %71, %77, %81, %59, %3, %11
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @all_uses_available_at(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !372 !PGOFuncName !373 {
  %3 = load ptr, ptr @df, align 8, !tbaa !194
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !269
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !204
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %24, !prof !374

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !204
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %25, label %21, !prof !375

21:                                               ; preds = %15
  %22 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %17) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !239

24:                                               ; preds = %2, %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 796, ptr noundef nonnull @.str.3) #16
  unreachable

25:                                               ; preds = %15, %21
  %26 = phi ptr [ %22, %21 ], [ %17, %15 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !204
  %29 = icmp eq ptr %28, %1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !204
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %29, label %37, label %35, !prof !376

35:                                               ; preds = %25
  %36 = select i1 %34, ptr %31, ptr null, !prof !377
  br label %70

37:                                               ; preds = %25
  br i1 %34, label %38, label %70, !prof !378

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !270
  %41 = load ptr, ptr %40, align 8, !tbaa !194
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %47, !prof !379

43:                                               ; preds = %47
  %44 = getelementptr inbounds ptr, ptr %49, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !194
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47, !prof !380, !llvm.loop !381

47:                                               ; preds = %38, %43
  %48 = phi ptr [ %45, %43 ], [ %41, %38 ]
  %49 = phi ptr [ %44, %43 ], [ %40, %38 ]
  %50 = getelementptr inbounds %struct.df_base_ref, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !204
  %52 = tail call i32 @rtx_equal_p(ptr noundef %51, ptr noundef nonnull %31) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %43, label %115

54:                                               ; preds = %43, %38
  %55 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !271
  %57 = load ptr, ptr %56, align 8, !tbaa !194
  %58 = icmp eq ptr %57, null
  br i1 %58, label %115, label %63, !prof !382

59:                                               ; preds = %63
  %60 = getelementptr inbounds ptr, ptr %65, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !194
  %62 = icmp eq ptr %61, null
  br i1 %62, label %115, label %63, !prof !383, !llvm.loop !384

63:                                               ; preds = %54, %59
  %64 = phi ptr [ %61, %59 ], [ %57, %54 ]
  %65 = phi ptr [ %60, %59 ], [ %56, %54 ]
  %66 = getelementptr inbounds %struct.df_base_ref, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !204
  %68 = tail call i32 @rtx_equal_p(ptr noundef %67, ptr noundef nonnull %31) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %59, label %115

70:                                               ; preds = %35, %37
  %71 = phi ptr [ %36, %35 ], [ null, %37 ]
  %72 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !270
  %74 = load ptr, ptr %73, align 8, !tbaa !194
  %75 = icmp eq ptr %74, null
  br i1 %75, label %93, label %76, !prof !385

76:                                               ; preds = %70
  %77 = icmp eq ptr %71, null
  br label %82

78:                                               ; preds = %90
  %79 = getelementptr inbounds ptr, ptr %84, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !194
  %81 = icmp eq ptr %80, null
  br i1 %81, label %93, label %82, !prof !386, !llvm.loop !387

82:                                               ; preds = %76, %78
  %83 = phi ptr [ %74, %76 ], [ %80, %78 ]
  %84 = phi ptr [ %73, %76 ], [ %79, %78 ]
  br i1 %77, label %90, label %85, !prof !388

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.df_base_ref, ptr %83, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !204
  %88 = tail call i32 @rtx_equal_p(ptr noundef %87, ptr noundef nonnull %71) #16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %115, !prof !389

90:                                               ; preds = %85, %82
  %91 = tail call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %83, ptr noundef nonnull %0, ptr noundef %1) #15
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %78, label %115

93:                                               ; preds = %78, %70
  %94 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !271
  %96 = load ptr, ptr %95, align 8, !tbaa !194
  %97 = icmp eq ptr %96, null
  br i1 %97, label %115, label %98, !prof !390

98:                                               ; preds = %93
  %99 = icmp eq ptr %71, null
  br label %104

100:                                              ; preds = %112
  %101 = getelementptr inbounds ptr, ptr %106, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !194
  %103 = icmp eq ptr %102, null
  br i1 %103, label %115, label %104, !prof !391, !llvm.loop !392

104:                                              ; preds = %98, %100
  %105 = phi ptr [ %96, %98 ], [ %102, %100 ]
  %106 = phi ptr [ %95, %98 ], [ %101, %100 ]
  br i1 %99, label %112, label %107, !prof !393

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %105, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !204
  %110 = tail call i32 @rtx_equal_p(ptr noundef %109, ptr noundef nonnull %71) #16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115, !prof !394

112:                                              ; preds = %107, %104
  %113 = tail call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %105, ptr noundef nonnull %0, ptr noundef %1) #15
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %100, label %115

115:                                              ; preds = %90, %85, %100, %107, %112, %47, %59, %63, %93, %54
  %116 = phi i8 [ 1, %54 ], [ 1, %93 ], [ 1, %59 ], [ 0, %63 ], [ 0, %47 ], [ 1, %100 ], [ 0, %107 ], [ 0, %112 ], [ 0, %85 ], [ 0, %90 ]
  ret i8 %116
}

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forward_propagate_asm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #1 !prof !343 !PGOFuncName !395 {
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !204
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1152, ptr noundef nonnull @.str.3) #16
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !204
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = load ptr, ptr @df, align 8, !tbaa !194
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !269
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !204
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  %25 = getelementptr inbounds %struct.df_insn_info, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !270
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %12
  %30 = getelementptr inbounds ptr, ptr %26, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !194
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %143

33:                                               ; preds = %29, %12
  %34 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !204
  %36 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %35) #16
  %37 = load i32, ptr %16, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %97 [
    i16 17, label %103
    i16 23, label %44
    i16 15, label %39
  ]

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !204
  %42 = load i32, ptr %41, align 8, !tbaa !396
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %60, label %108

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !204
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = lshr i32 %47, 16
  %52 = and i32 %51, 255
  %53 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %46, i32 noundef %52, ptr noundef %3, ptr noundef %14, i8 noundef zeroext %36) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %7, ptr noundef nonnull %45, ptr noundef nonnull %53, i8 noundef zeroext 1) #16
  br label %57

57:                                               ; preds = %50, %55, %44
  %58 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !204
  br label %98

60:                                               ; preds = %39, %90
  %61 = phi i32 [ %91, %90 ], [ %42, %39 ]
  %62 = phi ptr [ %92, %90 ], [ %41, %39 ]
  %63 = phi i64 [ %94, %90 ], [ 0, %39 ]
  %64 = phi ptr [ %93, %90 ], [ null, %39 ]
  %65 = getelementptr inbounds %struct.rtvec_def, ptr %62, i64 0, i32 1, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !194
  %67 = load i32, ptr %66, align 8
  %68 = trunc i32 %67 to i16
  switch i16 %68, label %90 [
    i16 23, label %69
    i16 17, label %89
  ]

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !204
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 43
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = lshr i32 %72, 16
  %77 = and i32 %76, 255
  %78 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %71, i32 noundef %77, ptr noundef %3, ptr noundef %14, i8 noundef zeroext %36) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = tail call zeroext i8 @validate_unshare_change(ptr noundef %7, ptr noundef nonnull %70, ptr noundef nonnull %78, i8 noundef zeroext 1) #16
  br label %82

82:                                               ; preds = %75, %80, %69
  %83 = load ptr, ptr %40, align 8, !tbaa !204
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %63
  %85 = load ptr, ptr %84, align 8, !tbaa !194
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !204
  %88 = load i32, ptr %83, align 8, !tbaa !396
  br label %90

89:                                               ; preds = %60
  br label %90

90:                                               ; preds = %60, %82, %89
  %91 = phi i32 [ %88, %82 ], [ %61, %89 ], [ %61, %60 ]
  %92 = phi ptr [ %83, %82 ], [ %62, %89 ], [ %62, %60 ]
  %93 = phi ptr [ %87, %82 ], [ %66, %89 ], [ %64, %60 ]
  %94 = add nuw nsw i64 %63, 1
  %95 = sext i32 %91 to i64
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %60, label %98, !llvm.loop !398

97:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1198, ptr noundef nonnull @.str.3) #16
  br label %108

98:                                               ; preds = %90, %57
  %99 = phi ptr [ %59, %57 ], [ %93, %90 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %99, align 8
  br label %103

103:                                              ; preds = %101, %33
  %104 = phi i32 [ %102, %101 ], [ %37, %33 ]
  %105 = phi ptr [ %99, %101 ], [ %16, %33 ]
  %106 = and i32 %104, 65535
  %107 = icmp eq i32 %106, 17
  br i1 %107, label %110, label %108

108:                                              ; preds = %39, %97, %103, %98
  %109 = phi ptr [ null, %97 ], [ %105, %103 ], [ null, %98 ], [ null, %39 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1201, ptr noundef nonnull @.str.3) #16
  br label %110

110:                                              ; preds = %103, %108
  %111 = phi ptr [ %105, %103 ], [ %109, %108 ]
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1, i32 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !204
  %114 = load i32, ptr %113, align 8, !tbaa !396
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %110, %128
  %117 = phi i64 [ %129, %128 ], [ 0, %110 ]
  %118 = phi ptr [ %130, %128 ], [ %113, %110 ]
  %119 = getelementptr inbounds %struct.rtvec_def, ptr %118, i64 0, i32 1, i64 %117
  %120 = load ptr, ptr %119, align 8, !tbaa !194
  %121 = load i32, ptr %120, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %120, i32 noundef %123, ptr noundef %3, ptr noundef %14, i8 noundef zeroext %36) #15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %116
  %127 = tail call zeroext i8 @validate_unshare_change(ptr noundef %7, ptr noundef nonnull %119, ptr noundef nonnull %124, i8 noundef zeroext 1) #16
  br label %128

128:                                              ; preds = %116, %126
  %129 = add nuw nsw i64 %117, 1
  %130 = load ptr, ptr %112, align 8, !tbaa !204
  %131 = load i32, ptr %130, align 8, !tbaa !396
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %116, label %134, !llvm.loop !399

134:                                              ; preds = %128, %110
  %135 = tail call i32 @num_changes_pending() #16
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = tail call i32 @apply_change_group() #16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr @num_changes, align 4, !tbaa !187
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr @num_changes, align 4, !tbaa !187
  br label %143

143:                                              ; preds = %134, %137, %29, %140
  %144 = phi i8 [ 1, %140 ], [ 0, %29 ], [ 0, %137 ], [ 0, %134 ]
  ret i8 %144
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @propagate_rtx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #1 !prof !400 !PGOFuncName !401 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %3, ptr %6, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %14, !prof !402

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #15
  %13 = icmp ult i32 %12, 53
  br i1 %13, label %53, label %19, !prof !403

14:                                               ; preds = %5
  %15 = zext nneg i32 %9 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !187
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %20, !prof !404

19:                                               ; preds = %11, %14
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ 1, %19 ], [ 0, %14 ]
  %22 = call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @varying_mem_p, ptr noundef null) #16
  %23 = icmp eq i32 %22, 0
  %24 = or disjoint i32 %21, 2
  %25 = select i1 %23, i32 %24, i32 %21, !prof !405
  %26 = icmp eq i8 %4, 0
  %27 = or disjoint i32 %25, 4
  %28 = select i1 %26, i32 %25, i32 %27, !prof !406
  store ptr %0, ptr %7, align 8, !tbaa !194
  %29 = load ptr, ptr %6, align 8, !tbaa !194
  %30 = call ptr @copy_rtx(ptr noundef %29) #16
  %31 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %30, i32 noundef %28) #15
  %32 = load ptr, ptr %7, align 8, !tbaa !194
  %33 = icmp ne ptr %32, %0
  %34 = icmp ne i8 %31, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %53, !prof !407

36:                                               ; preds = %20
  %37 = load i32, ptr %32, align 8
  %38 = and i32 %37, 16711680
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43, !prof !408

40:                                               ; preds = %36
  %41 = and i32 %37, 65535
  %42 = icmp eq i32 %41, 30
  br i1 %42, label %43, label %53

43:                                               ; preds = %40, %36
  %44 = lshr i32 %37, 16
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50, !prof !408

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !409
  %49 = call ptr %48(i32 noundef %1, ptr noundef nonnull %32) #16
  br label %53

50:                                               ; preds = %43
  %51 = icmp eq i32 %45, %1
  br i1 %51, label %53, label %52, !prof !411

52:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 684, ptr noundef nonnull @.str.3) #16
  br label %53

53:                                               ; preds = %47, %50, %52, %40, %20, %11
  %54 = phi ptr [ null, %11 ], [ null, %20 ], [ null, %40 ], [ %32, %52 ], [ %32, %50 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret ptr %54
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_fwprop_subst(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #1 !prof !412 !PGOFuncName !413 {
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !204
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = load i32, ptr %0, align 8
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = ashr i32 %9, 16
  %13 = load i32, ptr %8, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %22, label %17, !prof !414

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !204
  %21 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %20) #16
  br label %47

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !204
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 23
  br i1 %27, label %28, label %33, !prof !415

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !204
  %32 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %31) #16
  br label %40

33:                                               ; preds = %22
  %34 = tail call ptr @single_set_2(ptr noundef nonnull %8, ptr noundef nonnull %24) #16
  %35 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %36 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !204
  %38 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %37) #16
  %39 = icmp eq ptr %34, null
  br i1 %39, label %47, label %40, !prof !416

40:                                               ; preds = %28, %33
  %41 = phi i8 [ %32, %28 ], [ %38, %33 ]
  %42 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %43 = phi ptr [ %24, %28 ], [ %34, %33 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !204
  %46 = tail call i32 @rtx_cost(ptr noundef %45, i32 noundef 23, i8 noundef zeroext %41) #16
  br label %47

47:                                               ; preds = %17, %40, %33
  %48 = phi i1 [ false, %40 ], [ true, %33 ], [ true, %17 ]
  %49 = phi i8 [ %41, %40 ], [ %38, %33 ], [ %21, %17 ]
  %50 = phi ptr [ %42, %40 ], [ %35, %33 ], [ %18, %17 ]
  %51 = phi ptr [ %43, %40 ], [ null, %33 ], [ null, %17 ]
  %52 = phi i32 [ %46, %40 ], [ 0, %33 ], [ 0, %17 ]
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55, !prof !411

55:                                               ; preds = %47
  %56 = load i32, ptr %50, align 8, !tbaa !204
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.5, i32 noundef %56) #15
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %59 = load ptr, ptr %1, align 8, !tbaa !194
  tail call void @print_inline_rtx(ptr noundef %58, ptr noundef %59, i32 noundef 2) #16
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %61 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %60)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !194
  tail call void @print_inline_rtx(ptr noundef %62, ptr noundef %2, i32 noundef 2) #16
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %64 = tail call i32 @fputc(i32 10, ptr %63)
  br label %65

65:                                               ; preds = %55, %47
  %66 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #16
  %67 = tail call i32 @verify_changes(i32 noundef 0) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75, !prof !417

69:                                               ; preds = %65
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %71 = icmp eq ptr %70, null
  br i1 %71, label %106, label %72, !prof !418

72:                                               ; preds = %69
  %73 = load i32, ptr %50, align 8, !tbaa !204
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %70, ptr noundef nonnull @.str.8, i32 noundef %73) #15
  br label %106

75:                                               ; preds = %65
  %76 = load i32, ptr %0, align 8
  %77 = and i32 %76, 65280
  %78 = icmp eq i32 %77, 256
  br i1 %78, label %79, label %91, !prof !419

79:                                               ; preds = %75
  br i1 %48, label %91, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !204
  %83 = tail call i32 @rtx_cost(ptr noundef %82, i32 noundef 23, i8 noundef zeroext %49) #16
  %84 = icmp sgt i32 %83, %52
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %87 = icmp eq ptr %86, null
  br i1 %87, label %106, label %88, !prof !420

88:                                               ; preds = %85
  %89 = load i32, ptr %50, align 8, !tbaa !204
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %86, ptr noundef nonnull @.str.9, i32 noundef %89) #15
  br label %106

91:                                               ; preds = %80, %79, %75
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94, !prof !415

94:                                               ; preds = %91
  %95 = load i32, ptr %50, align 8, !tbaa !204
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %92, ptr noundef nonnull @.str.10, i32 noundef %95) #15
  br label %97

97:                                               ; preds = %94, %91
  tail call void @confirm_change_group() #16
  %98 = load i32, ptr @num_changes, align 4, !tbaa !187
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @num_changes, align 4, !tbaa !187
  tail call void @df_ref_remove(ptr noundef nonnull %0) #16
  %100 = load i32, ptr %2, align 8
  %101 = and i32 %100, 65535
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !187
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %137, label %122, !prof !419

106:                                              ; preds = %72, %69, %88, %85
  tail call void @cancel_changes(i32 noundef 0) #16
  %107 = icmp eq i8 %4, 0
  br i1 %107, label %137, label %108, !prof !421

108:                                              ; preds = %106
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !194
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111, !prof !418

111:                                              ; preds = %108
  %112 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 24, i64 1, ptr nonnull %109)
  br label %113

113:                                              ; preds = %111, %108
  %114 = tail call ptr @copy_rtx(ptr noundef %2) #16
  %115 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %8, i32 noundef 4, ptr noundef %114) #16
  %116 = load i32, ptr %2, align 8
  %117 = and i32 %116, 65535
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !187
  %121 = icmp eq i32 %120, 9
  br i1 %121, label %137, label %122, !prof !421

122:                                              ; preds = %113, %97
  %123 = phi i32 [ %12, %97 ], [ 4, %113 ]
  %124 = phi i8 [ 1, %97 ], [ 0, %113 ]
  %125 = load ptr, ptr @df, align 8, !tbaa !194
  %126 = getelementptr inbounds %struct.df, ptr %125, i64 0, i32 10
  %127 = load ptr, ptr %126, align 8, !tbaa !269
  %128 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !204
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %127, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !194
  %133 = getelementptr inbounds %struct.df_insn_info, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !270
  tail call fastcc void @update_df(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %134, i32 noundef %11, i32 noundef %123) #15
  %135 = getelementptr inbounds %struct.df_insn_info, ptr %132, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !271
  tail call fastcc void @update_df(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %136, i32 noundef %11, i32 noundef %123) #15
  br label %137

137:                                              ; preds = %122, %106, %113, %97
  %138 = phi i8 [ 0, %106 ], [ 0, %113 ], [ 1, %97 ], [ %124, %122 ]
  ret i8 %138
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @use_killed_between(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #1 !prof !422 !PGOFuncName !423 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !204
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !204
  %10 = icmp eq ptr %6, %9
  br i1 %10, label %11, label %28, !prof !424

11:                                               ; preds = %3
  %12 = load ptr, ptr @df, align 8, !tbaa !194
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !269
  %15 = load i32, ptr %4, align 8, !tbaa !204
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !194
  %19 = getelementptr inbounds %struct.df_insn_info, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !425
  %21 = load i32, ptr %7, align 8, !tbaa !204
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %14, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  %25 = getelementptr inbounds %struct.df_insn_info, ptr %24, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !425
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %33, label %108, !prof !426

28:                                               ; preds = %3
  %29 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %9, ptr noundef %6) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %108, label %31, !prof !427

31:                                               ; preds = %28
  %32 = load ptr, ptr @df, align 8, !tbaa !194
  br label %33

33:                                               ; preds = %31, %11
  %34 = phi ptr [ %32, %31 ], [ %12, %11 ]
  %35 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !204
  %37 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !428
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !194
  %42 = load ptr, ptr %41, align 8, !tbaa !429
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44, !prof !424

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %42, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !204
  %47 = icmp eq ptr %46, null
  %48 = icmp sgt i32 %36, 52
  %49 = and i1 %48, %47
  br i1 %49, label %108, label %50, !prof !431

50:                                               ; preds = %44, %33
  br i1 %10, label %51, label %53, !prof !432

51:                                               ; preds = %50
  %52 = tail call fastcc zeroext i8 @local_ref_killed_between_p(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %108

53:                                               ; preds = %50
  %54 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %9) #15, !range !240
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %108, label %56, !prof !433

56:                                               ; preds = %53
  %57 = tail call fastcc ptr @single_pred(ptr noundef %9) #15
  %58 = icmp eq ptr %57, %6
  br i1 %58, label %59, label %108, !prof !434

59:                                               ; preds = %56
  %60 = tail call ptr @df_bb_regno_last_def_find(ptr noundef %6, i32 noundef %36) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62, !prof !435

62:                                               ; preds = %59
  %63 = load ptr, ptr @df, align 8, !tbaa !194
  %64 = getelementptr inbounds %struct.df, ptr %63, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !269
  %66 = getelementptr inbounds %struct.df_base_ref, ptr %60, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !204
  %68 = load ptr, ptr %67, align 8, !tbaa !208
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !204
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %65, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !194
  %74 = getelementptr inbounds %struct.df_insn_info, ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !425
  %76 = load i32, ptr %4, align 8, !tbaa !204
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %65, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !194
  %80 = getelementptr inbounds %struct.df_insn_info, ptr %79, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !425
  %82 = icmp slt i32 %75, %81
  br i1 %82, label %83, label %108, !prof !436

83:                                               ; preds = %62, %59
  %84 = tail call ptr @df_bb_regno_first_def_find(ptr noundef %9, i32 noundef %36) #16
  %85 = icmp eq ptr %84, null
  br i1 %85, label %107, label %86, !prof !437

86:                                               ; preds = %83
  %87 = load ptr, ptr @df, align 8, !tbaa !194
  %88 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 10
  %89 = load ptr, ptr %88, align 8, !tbaa !269
  %90 = getelementptr inbounds %struct.df_base_ref, ptr %84, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !204
  %92 = load ptr, ptr %91, align 8, !tbaa !208
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !204
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %89, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !194
  %98 = getelementptr inbounds %struct.df_insn_info, ptr %97, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !425
  %100 = load i32, ptr %7, align 8, !tbaa !204
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %89, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !194
  %104 = getelementptr inbounds %struct.df_insn_info, ptr %103, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !425
  %106 = icmp slt i32 %99, %105
  br i1 %106, label %108, label %107

107:                                              ; preds = %86, %83
  br label %108

108:                                              ; preds = %53, %56, %107, %62, %86, %44, %11, %28, %51
  %109 = phi i8 [ %52, %51 ], [ 1, %28 ], [ 1, %11 ], [ 0, %44 ], [ 0, %107 ], [ 1, %62 ], [ 1, %86 ], [ 1, %56 ], [ 1, %53 ]
  ret i8 %109
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @local_ref_killed_between_p(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2) unnamed_addr #12 !prof !438 !PGOFuncName !439 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %42, label %5, !prof !440

5:                                                ; preds = %3
  %6 = load ptr, ptr @df, align 8
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %5, %38
  %10 = phi ptr [ %1, %5 ], [ %40, %38 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %38, !prof !441

15:                                               ; preds = %9
  %16 = load ptr, ptr %7, align 8, !tbaa !269
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !204
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !194
  %22 = getelementptr inbounds %struct.df_insn_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !272
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26, !prof !442

26:                                               ; preds = %15
  %27 = load i32, ptr %8, align 8, !tbaa !204
  br label %32

28:                                               ; preds = %32
  %29 = getelementptr inbounds ptr, ptr %34, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !443, !llvm.loop !444

32:                                               ; preds = %26, %28
  %33 = phi ptr [ %24, %26 ], [ %30, %28 ]
  %34 = phi ptr [ %23, %26 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.df_base_ref, ptr %33, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !204
  %37 = icmp eq i32 %27, %36
  br i1 %37, label %42, label %28

38:                                               ; preds = %28, %15, %9
  %39 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !204
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %42, label %9, !prof !445, !llvm.loop !446

42:                                               ; preds = %38, %32, %3
  %43 = phi i8 [ 0, %3 ], [ 1, %32 ], [ 0, %38 ]
  ret i8 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !447 !PGOFuncName !448 {
  %2 = load ptr, ptr %0, align 8, !tbaa !449
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !450 !PGOFuncName !451 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !452
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @df_bb_regno_last_def_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @df_bb_regno_first_def_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !447 !PGOFuncName !454 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !455

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !456
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !450 !PGOFuncName !458 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #15, !range !240
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !459

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.3) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !449
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6) #15
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !450 !PGOFuncName !460 {
  %2 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @num_changes_pending() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !461 !PGOFuncName !462 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !204
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @varying_mem_p(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !prof !463 !PGOFuncName !464 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  %7 = lshr i32 %4, 26
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  %10 = select i1 %6, i32 %9, i32 0, !prof !465
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @propagate_rtx_1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 !prof !466 !PGOFuncName !467 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = lshr i32 %10, 16
  %13 = and i32 %12, 255
  %14 = trunc i32 %3 to i8
  %15 = and i8 %14, 1
  %16 = and i32 %3, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %11, 43
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %36, !prof !468

20:                                               ; preds = %4
  %21 = and i32 %10, 67108864
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36, !prof !469

23:                                               ; preds = %20
  %24 = tail call i32 @side_effects_p(ptr noundef nonnull %9) #16
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %9, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br i1 %25, label %32, label %29, !prof !469

29:                                               ; preds = %23
  %30 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !194
  %31 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %28, ptr noundef %30) #16
  br label %34

32:                                               ; preds = %23
  %33 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef %28) #16
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi ptr [ %31, %29 ], [ %33, %32 ]
  store ptr %35, ptr %0, align 8, !tbaa !194
  br label %265

36:                                               ; preds = %20, %4
  %37 = icmp eq ptr %9, %1
  br i1 %37, label %38, label %39, !prof !470

38:                                               ; preds = %36
  store ptr %2, ptr %0, align 8, !tbaa !194
  br label %265

39:                                               ; preds = %36
  %40 = zext nneg i32 %11 to i64
  %41 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !187
  switch i32 %42, label %265 [
    i32 4, label %43
    i32 2, label %56
    i32 3, label %56
    i32 0, label %74
    i32 1, label %74
    i32 10, label %102
    i32 11, label %102
    i32 5, label %140
    i32 8, label %157
  ], !prof !471

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !204
  store ptr %45, ptr %5, align 8, !tbaa !194
  %46 = load i32, ptr %45, align 8
  %47 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %48 = load ptr, ptr %5, align 8, !tbaa !194
  %49 = load ptr, ptr %44, align 8, !tbaa !204
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %265, label %51, !prof !472

51:                                               ; preds = %43
  %52 = and i8 %47, 1
  %53 = lshr i32 %46, 16
  %54 = and i32 %53, 255
  %55 = tail call ptr @simplify_gen_unary(i32 noundef %11, i32 noundef %13, ptr noundef %48, i32 noundef %54) #16
  br label %248

56:                                               ; preds = %39, %39
  %57 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !204
  store ptr %58, ptr %5, align 8, !tbaa !194
  %59 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !204
  store ptr %60, ptr %6, align 8, !tbaa !194
  %61 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %62 = and i8 %61, 1
  %63 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %64 = and i8 %62, %63
  %65 = load ptr, ptr %5, align 8, !tbaa !194
  %66 = load ptr, ptr %57, align 8, !tbaa !204
  %67 = icmp eq ptr %65, %66
  %68 = load ptr, ptr %6, align 8, !tbaa !194
  br i1 %67, label %69, label %72, !prof !473

69:                                               ; preds = %56
  %70 = load ptr, ptr %59, align 8, !tbaa !204
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %265, label %72, !prof !474

72:                                               ; preds = %69, %56
  %73 = tail call ptr @simplify_gen_binary(i32 noundef %11, i32 noundef %13, ptr noundef %65, ptr noundef %68) #16
  br label %248

74:                                               ; preds = %39, %39
  %75 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !204
  store ptr %76, ptr %5, align 8, !tbaa !194
  %77 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !204
  store ptr %78, ptr %6, align 8, !tbaa !194
  %79 = load i32, ptr %76, align 8
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87, !prof !475

83:                                               ; preds = %74
  %84 = load i32, ptr %78, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  br label %87

87:                                               ; preds = %74, %83
  %88 = phi i32 [ %86, %83 ], [ %81, %74 ]
  %89 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %90 = and i8 %89, 1
  %91 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %92 = and i8 %90, %91
  %93 = load ptr, ptr %5, align 8, !tbaa !194
  %94 = load ptr, ptr %75, align 8, !tbaa !204
  %95 = icmp eq ptr %93, %94
  %96 = load ptr, ptr %6, align 8, !tbaa !194
  br i1 %95, label %97, label %100, !prof !476

97:                                               ; preds = %87
  %98 = load ptr, ptr %77, align 8, !tbaa !204
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %265, label %100, !prof !477

100:                                              ; preds = %97, %87
  %101 = tail call ptr @simplify_gen_relational(i32 noundef %11, i32 noundef %13, i32 noundef %88, ptr noundef %93, ptr noundef %96) #16
  br label %248

102:                                              ; preds = %39, %39
  %103 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !204
  store ptr %104, ptr %5, align 8, !tbaa !194
  %105 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !204
  store ptr %106, ptr %6, align 8, !tbaa !194
  %107 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %108 = load ptr, ptr %107, align 8, !tbaa !204
  store ptr %108, ptr %7, align 8, !tbaa !194
  %109 = load i32, ptr %104, align 8
  %110 = lshr i32 %109, 16
  %111 = and i32 %110, 255
  %112 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %113 = and i8 %112, 1
  %114 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %115 = and i8 %113, %114
  %116 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %117 = and i8 %115, %116
  %118 = load ptr, ptr %5, align 8, !tbaa !194
  %119 = load ptr, ptr %103, align 8, !tbaa !204
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %102
  %122 = load ptr, ptr %6, align 8, !tbaa !194
  %123 = load ptr, ptr %105, align 8, !tbaa !204
  %124 = icmp eq ptr %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load ptr, ptr %7, align 8, !tbaa !194
  %127 = load ptr, ptr %107, align 8, !tbaa !204
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %265, label %129

129:                                              ; preds = %125, %121, %102
  %130 = icmp eq i32 %111, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = load i32, ptr %118, align 8
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  br label %135

135:                                              ; preds = %131, %129
  %136 = phi i32 [ %134, %131 ], [ %111, %129 ]
  %137 = load ptr, ptr %6, align 8, !tbaa !194
  %138 = load ptr, ptr %7, align 8, !tbaa !194
  %139 = tail call ptr @simplify_gen_ternary(i32 noundef %11, i32 noundef %13, i32 noundef %136, ptr noundef %118, ptr noundef %137, ptr noundef %138) #16
  br label %248

140:                                              ; preds = %39
  %141 = icmp eq i32 %11, 39
  br i1 %141, label %142, label %265, !prof !478

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !204
  store ptr %144, ptr %5, align 8, !tbaa !194
  %145 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %146 = load ptr, ptr %5, align 8, !tbaa !194
  %147 = load ptr, ptr %143, align 8, !tbaa !204
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %265, label %149, !prof !479

149:                                              ; preds = %142
  %150 = and i8 %145, 1
  %151 = load i32, ptr %147, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load i32, ptr %154, align 8, !tbaa !204
  %156 = tail call ptr @simplify_gen_subreg(i32 noundef %13, ptr noundef %146, i32 noundef %153, i32 noundef %155) #16
  br label %248

157:                                              ; preds = %39
  %158 = icmp ne i32 %11, 43
  %159 = icmp eq ptr %9, %2
  %160 = or i1 %159, %158
  br i1 %160, label %212, label %161, !prof !480

161:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %162 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !204
  %164 = tail call fastcc zeroext i8 @can_simplify_addr(ptr noundef %163) #15, !range !240
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %209, label %166, !prof !481

166:                                              ; preds = %161
  %167 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !482
  %168 = tail call ptr %167(ptr noundef %163) #16
  store ptr %168, ptr %8, align 8, !tbaa !194
  %169 = or i32 %3, 1
  %170 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, i32 noundef %169) #15
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %209, label %173, !prof !481

173:                                              ; preds = %166
  %174 = load ptr, ptr %8, align 8, !tbaa !194
  %175 = icmp eq ptr %174, %168
  br i1 %175, label %209, label %176, !prof !481

176:                                              ; preds = %173
  %177 = load i32, ptr %174, align 8
  %178 = lshr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = load i32, ptr %168, align 8
  %181 = lshr i32 %180, 16
  %182 = and i32 %181, 255
  %183 = icmp eq i32 %179, %182
  br i1 %183, label %186, label %184, !prof !494

184:                                              ; preds = %176
  %185 = icmp eq i32 %179, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %184, %176
  tail call fastcc void @canonicalize_address(ptr noundef nonnull %174) #15
  %187 = load i32, ptr %1, align 8
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 37
  br i1 %189, label %190, label %194, !prof !494

190:                                              ; preds = %186
  %191 = load i32, ptr %2, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 37
  br i1 %193, label %210, label %194, !prof !481

194:                                              ; preds = %190, %186
  %195 = load i32, ptr %9, align 8
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !204
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201, !prof !495

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.mem_attrs, ptr %199, i64 0, i32 5
  %203 = load i8, ptr %202, align 8, !tbaa !496
  br label %204

204:                                              ; preds = %194, %201
  %205 = phi i8 [ %203, %201 ], [ 0, %194 ]
  %206 = and i8 %14, 4
  %207 = tail call fastcc zeroext i8 @should_replace_address(ptr noundef nonnull %168, ptr noundef nonnull %174, i32 noundef %197, i8 noundef zeroext %205, i8 noundef zeroext %206) #15, !range !240
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %210, !prof !498

209:                                              ; preds = %161, %184, %173, %166, %204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %265

210:                                              ; preds = %190, %204
  %211 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %9, ptr noundef nonnull %174) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %248

212:                                              ; preds = %157
  %213 = trunc i32 %10 to i16
  switch i16 %213, label %265 [
    i16 122, label %214
    i16 37, label %244
  ], !prof !499

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !204
  store ptr %216, ptr %5, align 8, !tbaa !194
  %217 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !204
  store ptr %218, ptr %6, align 8, !tbaa !194
  %219 = or i32 %3, 1
  %220 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %219) #15
  %221 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %222 = load ptr, ptr %5, align 8, !tbaa !194
  %223 = load ptr, ptr %215, align 8, !tbaa !204
  %224 = icmp eq ptr %222, %223
  %225 = load ptr, ptr %6, align 8, !tbaa !194
  br i1 %224, label %226, label %229

226:                                              ; preds = %214
  %227 = load ptr, ptr %217, align 8, !tbaa !204
  %228 = icmp eq ptr %225, %227
  br i1 %228, label %265, label %229

229:                                              ; preds = %226, %214
  %230 = load i32, ptr %222, align 8
  %231 = and i32 %230, 65535
  %232 = icmp eq i32 %231, 121
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !204
  %236 = tail call i32 @rtx_equal_p(ptr noundef %235, ptr noundef %225) #16
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233, %229
  %239 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %13, ptr noundef nonnull %222, ptr noundef %225) #16
  br label %240

240:                                              ; preds = %233, %238
  %241 = phi ptr [ %239, %238 ], [ %225, %233 ]
  %242 = tail call i32 @memory_address_addr_space_p(i32 noundef %13, ptr noundef %241, i8 noundef zeroext 0) #16
  %243 = trunc i32 %242 to i8
  br label %265

244:                                              ; preds = %212
  %245 = tail call i32 @rtx_equal_p(ptr noundef nonnull %9, ptr noundef %1) #16
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %265, label %247, !prof !500

247:                                              ; preds = %244
  store ptr %2, ptr %0, align 8, !tbaa !194
  br label %265

248:                                              ; preds = %210, %149, %135, %100, %72, %51
  %249 = phi ptr [ %211, %210 ], [ %156, %149 ], [ %139, %135 ], [ %101, %100 ], [ %73, %72 ], [ %55, %51 ]
  %250 = phi i8 [ 1, %210 ], [ %150, %149 ], [ %117, %135 ], [ %92, %100 ], [ %64, %72 ], [ %52, %51 ]
  %251 = icmp eq ptr %249, null
  br i1 %251, label %265, label %252, !prof !239

252:                                              ; preds = %248
  store ptr %249, ptr %0, align 8, !tbaa !194
  %253 = icmp ne i8 %250, 0
  %254 = and i32 %3, 1
  %255 = icmp ne i32 %254, 0
  %256 = or i1 %255, %253
  br i1 %256, label %265, label %257, !prof !501

257:                                              ; preds = %252
  %258 = load i32, ptr %249, align 8
  %259 = and i32 %258, 65535
  %260 = zext nneg i32 %259 to i64
  %261 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !187
  %263 = icmp eq i32 %262, 9
  %264 = zext i1 %263 to i8
  br label %265

265:                                              ; preds = %212, %140, %244, %39, %209, %252, %257, %248, %226, %142, %125, %97, %69, %43, %247, %240, %38, %34
  %266 = phi i8 [ %15, %38 ], [ %243, %240 ], [ %15, %247 ], [ 0, %34 ], [ 1, %43 ], [ 1, %69 ], [ 1, %97 ], [ 1, %125 ], [ 1, %142 ], [ 1, %226 ], [ 1, %248 ], [ 1, %252 ], [ %264, %257 ], [ 1, %209 ], [ 1, %39 ], [ 1, %244 ], [ 1, %140 ], [ 1, %212 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i8 %266
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_ternary(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_simplify_addr(ptr noundef %0) unnamed_addr #1 !prof !502 !PGOFuncName !503 {
  %2 = tail call zeroext i8 @constant_address_p(ptr noundef %0) #16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %22, !prof !494

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 49
  br i1 %7, label %8, label %12, !prof !495

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !204
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi i32 [ %11, %8 ], [ %5, %4 ]
  %14 = phi ptr [ %10, %8 ], [ %0, %4 ]
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %22, !prof !504

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #15
  switch i32 %18, label %19 [
    i32 20, label %22
    i32 6, label %22
  ], !prof !505

19:                                               ; preds = %17
  %20 = icmp ne i32 %18, 16
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %17, %17, %12, %19, %1
  %23 = phi i8 [ 0, %1 ], [ 1, %12 ], [ 0, %17 ], [ %21, %19 ], [ 0, %17 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_address(ptr nocapture noundef %0) unnamed_addr #1 !prof !506 !PGOFuncName !507 {
  br label %2

2:                                                ; preds = %40, %1
  %3 = phi ptr [ %0, %1 ], [ %42, %40 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %39 [
    i16 65, label %6
    i16 49, label %29
    i16 35, label %37
  ], !prof !508

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !204
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 30
  br i1 %12, label %13, label %40, !prof !509

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !204
  %16 = lshr i32 %4, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !204
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = icmp ult i64 %15, %22
  br i1 %23, label %24, label %40, !prof !510

24:                                               ; preds = %13
  %25 = and i32 %4, -65536
  %26 = or disjoint i32 %25, 52
  store i32 %26, ptr %3, align 8
  %27 = shl nuw i64 1, %15
  %28 = tail call ptr @gen_int_mode(i64 noundef %27, i32 noundef %17) #16
  store ptr %28, ptr %8, align 8, !tbaa !204
  br label %40

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !204
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i16
  switch i16 %33, label %35 [
    i16 49, label %34
    i16 65, label %34
    i16 35, label %34
  ], !prof !511

34:                                               ; preds = %29, %29, %29
  tail call fastcc void @canonicalize_address(ptr noundef nonnull %31) #15
  br label %35

35:                                               ; preds = %29, %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %40

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %40

39:                                               ; preds = %2
  ret void

40:                                               ; preds = %6, %13, %24, %37, %35
  %41 = phi ptr [ %38, %37 ], [ %36, %35 ], [ %7, %24 ], [ %7, %13 ], [ %7, %6 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !204
  br label %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @should_replace_address(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !prof !502 !PGOFuncName !512 {
  %6 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %1) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %32, !prof !494

8:                                                ; preds = %5
  %9 = tail call i32 @memory_address_addr_space_p(i32 noundef %2, ptr noundef %1, i8 noundef zeroext %3) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11, !prof !498

11:                                               ; preds = %8
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %19, !prof !513

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %32, label %19, !prof !514

19:                                               ; preds = %15, %11
  %20 = tail call i32 @address_cost(ptr noundef nonnull %0, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #16
  %21 = tail call i32 @address_cost(ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #16
  %22 = sub nsw i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !419

24:                                               ; preds = %19
  %25 = tail call i32 @rtx_cost(ptr noundef %1, i32 noundef 23, i8 noundef zeroext %4) #16
  %26 = tail call i32 @rtx_cost(ptr noundef nonnull %0, i32 noundef 23, i8 noundef zeroext %4) #16
  %27 = sub nsw i32 %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %27, %24 ], [ %22, %19 ]
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %32

32:                                               ; preds = %15, %5, %8, %28
  %33 = phi i8 [ %31, %28 ], [ 0, %8 ], [ 0, %5 ], [ 1, %15 ]
  ret i8 %33
}

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @address_cost(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @verify_changes(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @confirm_change_group() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_ref_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_df(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 !prof !515 !PGOFuncName !516 {
  %6 = load ptr, ptr %2, align 8, !tbaa !194
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8, !prof !517

8:                                                ; preds = %5, %51
  %9 = phi ptr [ %53, %51 ], [ %6, %5 ]
  %10 = phi ptr [ %18, %51 ], [ %2, %5 ]
  %11 = phi i1 [ false, %51 ], [ true, %5 ]
  br label %12

12:                                               ; preds = %8, %48
  %13 = phi ptr [ %49, %48 ], [ %9, %8 ]
  %14 = phi ptr [ %18, %48 ], [ %10, %8 ]
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = tail call fastcc ptr @find_occurrence(ptr noundef %1, ptr noundef %16) #15
  %18 = getelementptr inbounds ptr, ptr %14, i64 1
  %19 = icmp eq ptr %17, null
  br i1 %19, label %48, label %20, !llvm.loop !518

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 1
  %22 = load i32, ptr %13, align 8
  %23 = and i32 %22, 50331648
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.df_extract_ref, ptr %13, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !204
  %28 = getelementptr inbounds %struct.df_extract_ref, ptr %13, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !204
  %30 = getelementptr inbounds %struct.df_extract_ref, ptr %13, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !204
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi i32 [ %27, %25 ], [ -1, %20 ]
  %34 = phi i32 [ %29, %25 ], [ -1, %20 ]
  %35 = phi i32 [ %31, %25 ], [ 0, %20 ]
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %21, align 8, !tbaa !204
  %38 = load ptr, ptr %36, align 8, !tbaa !204
  %39 = ashr i32 %22, 16
  %40 = or i32 %39, %4
  %41 = tail call ptr @df_ref_create(ptr noundef %37, ptr noundef nonnull %17, ptr noundef %0, ptr noundef %38, i32 noundef %3, i32 noundef %40, i32 noundef %33, i32 noundef %34, i32 noundef %35) #16
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !204
  %44 = load ptr, ptr @use_def_ref, align 8
  %45 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %44) #15
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 931, ptr noundef nonnull @.str.3) #16
  br label %51

48:                                               ; preds = %12
  %49 = load ptr, ptr %18, align 8, !tbaa !194
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %12, !prof !519

51:                                               ; preds = %47, %32
  %52 = tail call fastcc ptr @get_def_for_use(ptr noundef nonnull %13) #15
  tail call fastcc void @VEC_df_ref_heap_safe_push(ptr noundef nonnull @use_def_ref, ptr noundef %52) #15
  %53 = load ptr, ptr %18, align 8, !tbaa !194
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %8, !prof !519

55:                                               ; preds = %48
  br i1 %11, label %58, label %56, !prof !520

56:                                               ; preds = %51, %55
  %57 = tail call zeroext i8 @df_insn_rescan(ptr noundef %0) #16
  br label %58

58:                                               ; preds = %5, %56, %55
  ret void
}

; Function Attrs: optsize
declare void @cancel_changes(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_occurrence(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !343 !PGOFuncName !521 {
  %3 = alloca %struct.find_occurrence_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %12 [
    i16 37, label %13
    i16 39, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !204
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %13, label %12

12:                                               ; preds = %2, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 883, ptr noundef nonnull @.str.3) #16
  br label %13

13:                                               ; preds = %2, %6, %12
  store ptr %1, ptr %3, align 8, !tbaa !522
  %14 = getelementptr inbounds %struct.find_occurrence_data, ptr %3, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !524
  %15 = call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @find_occurrence_callback, ptr noundef nonnull %3) #16
  %16 = load ptr, ptr %14, align 8, !tbaa !524
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @df_ref_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @find_occurrence_callback(ptr noundef %0, ptr nocapture noundef %1) #10 !prof !343 !PGOFuncName !525 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = load ptr, ptr %1, align 8, !tbaa !522
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.find_occurrence_data, ptr %1, i64 0, i32 1
  store ptr %0, ptr %7, align 8, !tbaa !524
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @delete_trivially_dead_insns(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!184}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!35 = !{ptr @fwprop, ptr @fwprop_init, i64 38}
!36 = !{ptr @fwprop, ptr @loop_outer, i64 93936}
!37 = !{ptr @fwprop, ptr @forward_propagate_into, i64 1453302}
!38 = !{ptr @fwprop, ptr @fwprop_done, i64 38}
!39 = !{ptr @fwprop_addr, ptr @fwprop_init, i64 38}
!40 = !{ptr @fwprop_addr, ptr @loop_outer, i64 79943}
!41 = !{ptr @fwprop_addr, ptr @forward_propagate_into, i64 1}
!42 = !{ptr @fwprop_addr, ptr @fwprop_done, i64 38}
!43 = !{ptr @fwprop_init, ptr @calculate_dominance_info, i64 76}
!44 = !{ptr @fwprop_init, ptr @loop_optimizer_init, i64 76}
!45 = !{ptr @fwprop_init, ptr @build_single_def_use_links, i64 76}
!46 = !{ptr @fwprop_init, ptr @df_set_flags, i64 76}
!47 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 178456}
!48 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 1}
!49 = !{ptr @forward_propagate_into, ptr @get_def_for_use, i64 623643}
!50 = !{ptr @forward_propagate_into, ptr @find_reg_note, i64 8}
!51 = !{ptr @forward_propagate_into, ptr @reg_mentioned_p, i64 469082}
!52 = !{ptr @forward_propagate_into, ptr @multiple_sets, i64 469081}
!53 = !{ptr @forward_propagate_into, ptr @single_set_2, i64 1}
!54 = !{ptr @forward_propagate_into, ptr @forward_propagate_and_simplify, i64 469079}
!55 = !{ptr @forward_propagate_into, ptr @forward_propagate_subreg, i64 454715}
!56 = !{ptr @fwprop_done, ptr @loop_optimizer_finalize, i64 76}
!57 = !{ptr @fwprop_done, ptr @VEC_df_ref_heap_free, i64 76}
!58 = !{ptr @fwprop_done, ptr @free_dominance_info, i64 76}
!59 = !{ptr @fwprop_done, ptr @cleanup_cfg, i64 76}
!60 = !{ptr @fwprop_done, ptr @get_insns, i64 76}
!61 = !{ptr @fwprop_done, ptr @max_reg_num, i64 76}
!62 = !{ptr @fwprop_done, ptr @delete_trivially_dead_insns, i64 76}
!63 = !{ptr @fwprop_done, ptr @fprintf, i64 1}
!64 = !{ptr @build_single_def_use_links, ptr @df_set_flags, i64 76}
!65 = !{ptr @build_single_def_use_links, ptr @df_md_add_problem, i64 76}
!66 = !{ptr @build_single_def_use_links, ptr @df_note_add_problem, i64 76}
!67 = !{ptr @build_single_def_use_links, ptr @df_analyze, i64 76}
!68 = !{ptr @build_single_def_use_links, ptr @df_maybe_reorganize_use_refs, i64 76}
!69 = !{ptr @build_single_def_use_links, ptr @VEC_df_ref_heap_alloc, i64 228}
!70 = !{ptr @build_single_def_use_links, ptr @VEC_df_ref_heap_safe_grow_cleared, i64 152}
!71 = !{ptr @build_single_def_use_links, ptr @max_reg_num, i64 152}
!72 = !{ptr @build_single_def_use_links, ptr @bitmap_obstack_alloc_stat, i64 152}
!73 = !{ptr @build_single_def_use_links, ptr @init_walk_dominator_tree, i64 76}
!74 = !{ptr @build_single_def_use_links, ptr @walk_dominator_tree, i64 76}
!75 = !{ptr @build_single_def_use_links, ptr @fini_walk_dominator_tree, i64 76}
!76 = !{ptr @build_single_def_use_links, ptr @bitmap_obstack_free, i64 152}
!77 = !{ptr @build_single_def_use_links, ptr @VEC_df_ref_heap_free, i64 152}
!78 = !{ptr @VEC_df_ref_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 228}
!79 = !{ptr @VEC_df_ref_heap_safe_grow_cleared, ptr @VEC_df_ref_base_length, i64 152}
!80 = !{ptr @VEC_df_ref_heap_safe_grow_cleared, ptr @VEC_df_ref_heap_safe_grow, i64 152}
!81 = !{ptr @VEC_df_ref_heap_safe_grow_cleared, ptr @VEC_df_ref_base_address, i64 152}
!82 = !{ptr @single_def_use_enter_block, ptr @df_md_get_bb_info, i64 370635}
!83 = !{ptr @single_def_use_enter_block, ptr @df_lr_get_bb_info, i64 370635}
!84 = !{ptr @single_def_use_enter_block, ptr @bitmap_copy, i64 741270}
!85 = !{ptr @single_def_use_enter_block, ptr @VEC_df_ref_heap_safe_push, i64 370635}
!86 = !{ptr @single_def_use_enter_block, ptr @df_get_artificial_uses, i64 741270}
!87 = !{ptr @single_def_use_enter_block, ptr @process_uses, i64 3460382}
!88 = !{ptr @single_def_use_enter_block, ptr @df_get_artificial_defs, i64 741270}
!89 = !{ptr @single_def_use_enter_block, ptr @process_defs, i64 2100826}
!90 = !{ptr @single_def_use_enter_block, ptr @df_simulate_initialize_forwards, i64 370635}
!91 = !{ptr @single_def_use_enter_block, ptr @df_simulate_one_insn_forwards, i64 1359556}
!92 = !{ptr @single_def_use_leave_block, ptr @VEC_df_ref_base_pop, i64 1477795}
!93 = !{ptr @single_def_use_leave_block, ptr @VEC_df_ref_base_index, i64 1107160}
!94 = !{ptr @single_def_use_leave_block, ptr @VEC_df_ref_base_replace, i64 1107160}
!95 = !{ptr @VEC_df_ref_heap_free, ptr @free, i64 227}
!96 = !{ptr @VEC_df_ref_heap_safe_grow, ptr @VEC_df_ref_heap_reserve_exact, i64 152}
!97 = !{ptr @VEC_df_ref_heap_reserve_exact, ptr @VEC_df_ref_base_space, i64 152}
!98 = !{ptr @VEC_df_ref_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 1}
!99 = !{ptr @VEC_df_ref_heap_safe_push, ptr @VEC_df_ref_heap_reserve, i64 1477797}
!100 = !{ptr @VEC_df_ref_heap_safe_push, ptr @VEC_df_ref_base_quick_push, i64 1477797}
!101 = !{ptr @process_uses, ptr @VEC_df_ref_base_index, i64 5448420}
!102 = !{ptr @process_uses, ptr @bitmap_bit_p, i64 5443328}
!103 = !{ptr @process_uses, ptr @VEC_df_ref_base_replace, i64 2720333}
!104 = !{ptr @df_get_artificial_uses, ptr @df_scan_get_bb_info, i64 741270}
!105 = !{ptr @process_defs, ptr @VEC_df_ref_base_index, i64 7158425}
!106 = !{ptr @process_defs, ptr @VEC_df_ref_heap_safe_push, i64 1107163}
!107 = !{ptr @process_defs, ptr @bitmap_set_bit, i64 6210616}
!108 = !{ptr @process_defs, ptr @VEC_df_ref_base_replace, i64 7158424}
!109 = !{ptr @process_defs, ptr @bitmap_clear_bit, i64 947808}
!110 = !{ptr @df_get_artificial_defs, ptr @df_scan_get_bb_info, i64 741270}
!111 = !{ptr @VEC_df_ref_heap_reserve, ptr @VEC_df_ref_base_space, i64 1477797}
!112 = !{ptr @VEC_df_ref_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!113 = !{ptr @get_def_for_use, ptr @VEC_df_ref_base_index, i64 623643}
!114 = !{ptr @forward_propagate_and_simplify, ptr @single_set_2, i64 1}
!115 = !{ptr @forward_propagate_and_simplify, ptr @asm_noperands, i64 39}
!116 = !{ptr @forward_propagate_and_simplify, ptr @all_uses_available_at, i64 297664}
!117 = !{ptr @forward_propagate_and_simplify, ptr @avoid_constant_pool_reference, i64 1}
!118 = !{ptr @forward_propagate_and_simplify, ptr @forward_propagate_asm, i64 1}
!119 = !{ptr @forward_propagate_and_simplify, ptr @find_reg_note, i64 263052}
!120 = !{ptr @forward_propagate_and_simplify, ptr @optimize_bb_for_speed_p, i64 263092}
!121 = !{ptr @forward_propagate_and_simplify, ptr @propagate_rtx, i64 263092}
!122 = !{ptr @forward_propagate_and_simplify, ptr @try_fwprop_subst, i64 21335}
!123 = !{ptr @forward_propagate_subreg, ptr @subreg_lowpart_p, i64 6976}
!124 = !{ptr @all_uses_available_at, ptr @single_set_2, i64 1}
!125 = !{ptr @all_uses_available_at, ptr @rtx_equal_p, i64 374545}
!126 = !{ptr @all_uses_available_at, ptr @use_killed_between, i64 176383}
!127 = !{ptr @propagate_rtx, ptr @rhs_regno, i64 65932}
!128 = !{ptr @propagate_rtx, ptr @for_each_rtx, i64 197165}
!129 = !{ptr @propagate_rtx, ptr @copy_rtx, i64 197165}
!130 = !{ptr @propagate_rtx, ptr @propagate_rtx_1, i64 197165}
!131 = !{ptr @propagate_rtx, ptr @fancy_abort, i64 1}
!132 = !{ptr @try_fwprop_subst, ptr @optimize_bb_for_speed_p, i64 21333}
!133 = !{ptr @try_fwprop_subst, ptr @single_set_2, i64 1}
!134 = !{ptr @try_fwprop_subst, ptr @rtx_cost, i64 21333}
!135 = !{ptr @try_fwprop_subst, ptr @fprintf, i64 3}
!136 = !{ptr @try_fwprop_subst, ptr @print_inline_rtx, i64 2}
!137 = !{ptr @try_fwprop_subst, ptr @fwrite, i64 2}
!138 = !{ptr @try_fwprop_subst, ptr @fputc, i64 1}
!139 = !{ptr @try_fwprop_subst, ptr @validate_unshare_change, i64 21334}
!140 = !{ptr @try_fwprop_subst, ptr @verify_changes, i64 21334}
!141 = !{ptr @try_fwprop_subst, ptr @confirm_change_group, i64 14362}
!142 = !{ptr @try_fwprop_subst, ptr @df_ref_remove, i64 14362}
!143 = !{ptr @try_fwprop_subst, ptr @cancel_changes, i64 6972}
!144 = !{ptr @try_fwprop_subst, ptr @copy_rtx, i64 6971}
!145 = !{ptr @try_fwprop_subst, ptr @set_unique_reg_note, i64 6971}
!146 = !{ptr @try_fwprop_subst, ptr @update_df, i64 42662}
!147 = !{ptr @use_killed_between, ptr @dominated_by_p, i64 56680}
!148 = !{ptr @use_killed_between, ptr @local_ref_killed_between_p, i64 1129}
!149 = !{ptr @use_killed_between, ptr @single_pred_p, i64 55169}
!150 = !{ptr @use_killed_between, ptr @single_pred, i64 47967}
!151 = !{ptr @use_killed_between, ptr @df_bb_regno_last_def_find, i64 259}
!152 = !{ptr @use_killed_between, ptr @df_bb_regno_first_def_find, i64 258}
!153 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 103231}
!154 = !{ptr @single_pred, ptr @single_pred_edge, i64 48012}
!155 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 48012}
!156 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!157 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 48012}
!158 = !{ptr @propagate_rtx_1, ptr @side_effects_p, i64 214}
!159 = !{ptr @propagate_rtx_1, ptr @gen_rtx_fmt_e_stat, i64 1}
!160 = !{ptr @propagate_rtx_1, ptr @gen_rtx_fmt_0_stat, i64 213}
!161 = !{ptr @propagate_rtx_1, ptr @propagate_rtx_1, i64 234870}
!162 = !{ptr @propagate_rtx_1, ptr @simplify_gen_unary, i64 718}
!163 = !{ptr @propagate_rtx_1, ptr @simplify_gen_binary, i64 83311}
!164 = !{ptr @propagate_rtx_1, ptr @simplify_gen_relational, i64 2473}
!165 = !{ptr @propagate_rtx_1, ptr @simplify_gen_ternary, i64 2}
!166 = !{ptr @propagate_rtx_1, ptr @simplify_gen_subreg, i64 6977}
!167 = !{ptr @propagate_rtx_1, ptr @can_simplify_addr, i64 14385}
!168 = !{ptr @propagate_rtx_1, ptr @canonicalize_address, i64 14382}
!169 = !{ptr @propagate_rtx_1, ptr @should_replace_address, i64 14381}
!170 = !{ptr @propagate_rtx_1, ptr @replace_equiv_address_nv, i64 14358}
!171 = !{ptr @propagate_rtx_1, ptr @gen_rtx_fmt_ee_stat, i64 1}
!172 = !{ptr @propagate_rtx_1, ptr @memory_address_addr_space_p, i64 1}
!173 = !{ptr @propagate_rtx_1, ptr @rtx_equal_p, i64 101040}
!174 = !{ptr @can_simplify_addr, ptr @constant_address_p, i64 14386}
!175 = !{ptr @can_simplify_addr, ptr @rhs_regno, i64 14338}
!176 = !{ptr @canonicalize_address, ptr @gen_int_mode, i64 21}
!177 = !{ptr @canonicalize_address, ptr @canonicalize_address, i64 26}
!178 = !{ptr @should_replace_address, ptr @rtx_equal_p, i64 14386}
!179 = !{ptr @should_replace_address, ptr @memory_address_addr_space_p, i64 14385}
!180 = !{ptr @should_replace_address, ptr @address_cost, i64 28720}
!181 = !{ptr @should_replace_address, ptr @rtx_cost, i64 2}
!182 = !{ptr @update_df, ptr @find_occurrence, i64 1}
!183 = !{ptr @update_df, ptr @df_insn_rescan, i64 1}
!184 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!185 = !{!"function_entry_count", i64 76}
!186 = !{!"fwprop.c:gate_fwprop"}
!187 = !{!188, !188, i64 0}
!188 = !{!"int", !189, i64 0}
!189 = !{!"omnipotent char", !190, i64 0}
!190 = !{!"Simple C/C++ TBAA"}
!191 = !{!"branch_weights", i32 77, i32 1}
!192 = !{!"function_entry_count", i64 38}
!193 = !{!"fwprop.c:fwprop"}
!194 = !{!195, !195, i64 0}
!195 = !{!"any pointer", !189, i64 0}
!196 = !{!197, !188, i64 204}
!197 = !{!"df", !189, i64 0, !189, i64 64, !195, i64 128, !198, i64 136, !198, i64 176, !195, i64 216, !195, i64 224, !195, i64 232, !188, i64 240, !188, i64 244, !195, i64 248, !188, i64 256, !188, i64 260, !195, i64 264, !195, i64 272, !195, i64 280, !195, i64 288, !195, i64 296, !195, i64 304, !195, i64 312, !195, i64 320, !195, i64 328, !195, i64 336, !188, i64 344, !188, i64 348, !195, i64 352, !188, i64 360, !188, i64 364, !189, i64 365, !189, i64 366}
!198 = !{!"df_ref_info", !195, i64 0, !195, i64 8, !195, i64 16, !188, i64 24, !188, i64 28, !188, i64 32, !188, i64 36}
!199 = !{!"branch_weights", i32 1, i32 155}
!200 = !{!197, !195, i64 176}
!201 = !{!"branch_weights", i32 1, i32 1491560}
!202 = !{!"branch_weights", i32 1395151, i32 96410}
!203 = !{!"branch_weights", i32 1, i32 96410}
!204 = !{!189, !189, i64 0}
!205 = !{!206, !195, i64 24}
!206 = !{!"basic_block_def", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !189, i64 32, !195, i64 48, !195, i64 56, !189, i64 64, !207, i64 72, !188, i64 80, !188, i64 84, !188, i64 88, !188, i64 92, !188, i64 96}
!207 = !{!"long", !189, i64 0}
!208 = !{!209, !195, i64 0}
!209 = !{!"df_insn_info", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !188, i64 40}
!210 = !{!"branch_weights", i32 96410, i32 1}
!211 = !{!"branch_weights", i32 5966085, i32 155}
!212 = distinct !{!212, !213}
!213 = !{!"llvm.loop.mustprogress"}
!214 = !{!"fwprop.c:fwprop_addr"}
!215 = !{!"branch_weights", i32 1, i32 1236833}
!216 = !{!"branch_weights", i32 1154786, i32 82048}
!217 = !{!"branch_weights", i32 1, i32 82048}
!218 = !{!"branch_weights", i32 82048, i32 1}
!219 = !{!"branch_weights", i32 4947177, i32 155}
!220 = distinct !{!220, !213}
!221 = !{!"fwprop.c:fwprop_init"}
!222 = !{!"function_entry_count", i64 178456}
!223 = !{!"fwprop.c:loop_outer"}
!224 = !{!225, !195, i64 40}
!225 = !{!"loop", !188, i64 0, !188, i64 4, !195, i64 8, !195, i64 16, !226, i64 24, !188, i64 32, !188, i64 36, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !227, i64 80, !227, i64 96, !189, i64 112, !189, i64 113, !188, i64 116, !195, i64 120, !195, i64 128, !189, i64 136, !195, i64 144}
!226 = !{!"lpt_decision", !188, i64 0, !188, i64 4}
!227 = !{!"", !207, i64 0, !207, i64 8}
!228 = !{!"branch_weights", i32 178457, i32 1}
!229 = !{!"function_entry_count", i64 1491559}
!230 = !{!"fwprop.c:forward_propagate_into"}
!231 = !{!"branch_weights", i32 -1766545867, i32 1816801649}
!232 = !{!"branch_weights", i32 3858, i32 619787}
!233 = !{!"branch_weights", i32 729716877, i32 -2023612572}
!234 = !{!"branch_weights", i32 469086, i32 1}
!235 = !{!"branch_weights", i32 469079, i32 8}
!236 = !{!"branch_weights", i32 1, i32 469086}
!237 = !{!"branch_weights", i32 -249810501, i32 8623}
!238 = !{!"branch_weights", i32 449851, i32 1}
!239 = !{!"branch_weights", i32 0, i32 -2147483648}
!240 = !{i8 0, i8 2}
!241 = !{!"branch_weights", i32 454723, i32 14364}
!242 = !{!"fwprop.c:fwprop_done"}
!243 = !{!"fwprop.c:build_single_def_use_links"}
!244 = !{!245, !195, i64 8}
!245 = !{!"function", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96, !188, i64 104, !188, i64 108, !188, i64 112, !188, i64 116, !188, i64 120, !188, i64 124, !195, i64 128, !188, i64 136, !188, i64 137, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139}
!246 = !{!247, !188, i64 24}
!247 = !{!"control_flow_graph", !195, i64 0, !195, i64 8, !195, i64 16, !188, i64 24, !188, i64 28, !188, i64 32, !195, i64 40, !188, i64 48, !189, i64 52, !189, i64 60, !188, i64 68, !188, i64 72}
!248 = !{!249, !195, i64 8}
!249 = !{!"dom_walk_data", !188, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !207, i64 48, !195, i64 56}
!250 = !{!249, !195, i64 16}
!251 = !{!249, !195, i64 24}
!252 = !{!247, !195, i64 0}
!253 = !{!"function_entry_count", i64 228}
!254 = !{!"fwprop.c:VEC_df_ref_heap_alloc"}
!255 = !{!"function_entry_count", i64 152}
!256 = !{!"fwprop.c:VEC_df_ref_heap_safe_grow_cleared"}
!257 = !{!"function_entry_count", i64 370635}
!258 = !{!"fwprop.c:single_def_use_enter_block"}
!259 = !{!206, !188, i64 80}
!260 = !{!261, !195, i64 24}
!261 = !{!"df_md_bb_info", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32}
!262 = !{!263, !195, i64 16}
!263 = !{!"df_lr_bb_info", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24}
!264 = !{!"branch_weights", i32 1, i32 152}
!265 = !{!266, !195, i64 8}
!266 = !{!"rtl_bb_info", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !188, i64 32}
!267 = !{!"branch_weights", i32 370636, i32 1906197}
!268 = !{!"branch_weights", i32 -1183791299, i32 1220910344}
!269 = !{!197, !195, i64 248}
!270 = !{!209, !195, i64 16}
!271 = !{!209, !195, i64 24}
!272 = !{!209, !195, i64 8}
!273 = !{!"branch_weights", i32 152, i32 2276528}
!274 = distinct !{!274, !213}
!275 = !{!"fwprop.c:single_def_use_leave_block"}
!276 = !{!"branch_weights", i32 1, i32 370635}
!277 = !{!"branch_weights", i32 578637, i32 528527}
!278 = !{!"branch_weights", i32 370635, i32 736528}
!279 = distinct !{!279, !213}
!280 = !{!"fwprop.c:VEC_df_ref_heap_free"}
!281 = !{!"branch_weights", i32 1, i32 229}
!282 = !{!"function_entry_count", i64 304}
!283 = !{!"fwprop.c:VEC_df_ref_base_length"}
!284 = !{!"branch_weights", i32 1, i32 305}
!285 = !{!286, !188, i64 0}
!286 = !{!"VEC_df_ref_base", !188, i64 0, !188, i64 4, !189, i64 8}
!287 = !{!"fwprop.c:VEC_df_ref_heap_safe_grow"}
!288 = !{!"branch_weights", i32 1, i32 153}
!289 = !{}
!290 = !{!"fwprop.c:VEC_df_ref_base_address"}
!291 = !{!"fwprop.c:VEC_df_ref_heap_reserve_exact"}
!292 = !{i32 0, i32 2}
!293 = !{!"function_entry_count", i64 1477949}
!294 = !{!"fwprop.c:VEC_df_ref_base_space"}
!295 = !{!"branch_weights", i32 1, i32 1477950}
!296 = !{!286, !188, i64 4}
!297 = !{!"fwprop.c:df_md_get_bb_info"}
!298 = !{!299, !188, i64 16}
!299 = !{!"dataflow", !195, i64 0, !195, i64 8, !188, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !188, i64 48, !189, i64 52, !189, i64 53, !189, i64 54}
!300 = !{!"branch_weights", i32 370636, i32 1}
!301 = !{!299, !195, i64 8}
!302 = !{!"fwprop.c:df_lr_get_bb_info"}
!303 = !{!"function_entry_count", i64 1477797}
!304 = !{!"fwprop.c:VEC_df_ref_heap_safe_push"}
!305 = !{!"function_entry_count", i64 3479214}
!306 = !{!"fwprop.c:process_uses"}
!307 = !{!"branch_weights", i32 1, i32 3479214}
!308 = !{!"branch_weights", i32 2728088, i32 1482237}
!309 = !{!"branch_weights", i32 5093, i32 2722996}
!310 = !{!"branch_weights", i32 2720337, i32 2660}
!311 = !{!"branch_weights", i32 1, i32 2720337}
!312 = !{!"branch_weights", i32 3479214, i32 731110}
!313 = distinct !{!313, !213}
!314 = !{!"function_entry_count", i64 741270}
!315 = !{!"fwprop.c:df_get_artificial_uses"}
!316 = !{!317, !195, i64 8}
!317 = !{!"df_scan_bb_info", !195, i64 0, !195, i64 8}
!318 = !{!"function_entry_count", i64 2110242}
!319 = !{!"fwprop.c:process_defs"}
!320 = !{!"branch_weights", i32 1, i32 2110242}
!321 = !{!"branch_weights", i32 7158429, i32 533}
!322 = distinct !{!322, !213}
!323 = !{!"branch_weights", i32 6629903, i32 528527}
!324 = !{!"branch_weights", i32 578637, i32 6051267}
!325 = !{!"branch_weights", i32 947809, i32 6210621}
!326 = !{!"branch_weights", i32 2110242, i32 5048719}
!327 = !{!"fwprop.c:df_get_artificial_defs"}
!328 = !{!317, !195, i64 0}
!329 = !{!"fwprop.c:VEC_df_ref_heap_reserve"}
!330 = !{!"branch_weights", i32 1, i32 1477798}
!331 = !{!"fwprop.c:VEC_df_ref_base_quick_push"}
!332 = !{!"function_entry_count", i64 14338188}
!333 = !{!"fwprop.c:VEC_df_ref_base_index"}
!334 = !{!"function_entry_count", i64 10985926}
!335 = !{!"fwprop.c:VEC_df_ref_base_replace"}
!336 = !{!"function_entry_count", i64 1482540}
!337 = !{!"fwprop.c:df_scan_get_bb_info"}
!338 = !{!"branch_weights", i32 1482541, i32 1}
!339 = !{!"fwprop.c:VEC_df_ref_base_pop"}
!340 = !{!"fwprop.c:VEC_loop_p_base_length"}
!341 = !{!342, !188, i64 0}
!342 = !{!"VEC_loop_p_base", !188, i64 0, !188, i64 4, !189, i64 8}
!343 = !{!"function_entry_count", i64 0}
!344 = !{!"fwprop.c:VEC_loop_p_base_index"}
!345 = !{!"function_entry_count", i64 623643}
!346 = !{!"fwprop.c:get_def_for_use"}
!347 = !{!"function_entry_count", i64 469085}
!348 = !{!"fwprop.c:forward_propagate_and_simplify"}
!349 = !{!"branch_weights", i32 -1776980482, i32 2683}
!350 = !{!"branch_weights", i32 441624, i32 1}
!351 = !{!"branch_weights", i32 39, i32 469048}
!352 = !{!"branch_weights", i32 178541, i32 2147305107}
!353 = !{!"branch_weights", i32 176254, i32 2147307394}
!354 = !{!"branch_weights", i32 1, i32 39}
!355 = !{!"branch_weights", i32 150047, i32 319002}
!356 = !{!"branch_weights", i32 6509, i32 57163776, i32 -1738865006}
!357 = !{!"branch_weights", i32 425922, i32 524288, i32 -636911555}
!358 = !{!"branch_weights", i32 1, i32 312025}
!359 = !{!"branch_weights", i32 21335, i32 297668}
!360 = !{!"branch_weights", i32 55906, i32 241763}
!361 = !{!"branch_weights", i32 12782, i32 -931798345}
!362 = !{!"branch_weights", i32 1, i32 263097}
!363 = !{!"branch_weights", i32 39, i32 263059}
!364 = !{!"branch_weights", i32 263059, i32 1}
!365 = !{!"branch_weights", i32 241763, i32 21335}
!366 = !{!"function_entry_count", i64 454722}
!367 = !{!"fwprop.c:forward_propagate_subreg"}
!368 = !{!"branch_weights", i32 6978, i32 447746}
!369 = !{!"branch_weights", i32 6978, i32 1}
!370 = !{!"branch_weights", i32 1, i32 6978}
!371 = !{!"branch_weights", i32 13957, i32 48692484}
!372 = !{!"function_entry_count", i64 297667}
!373 = !{!"fwprop.c:all_uses_available_at"}
!374 = !{!"branch_weights", i32 -1728031312, i32 8623}
!375 = !{!"branch_weights", i32 278433, i32 1}
!376 = !{!"branch_weights", i32 216747, i32 80922}
!377 = !{!"branch_weights", i32 80922, i32 1}
!378 = !{!"branch_weights", i32 216747, i32 1}
!379 = !{!"branch_weights", i32 18591, i32 198156}
!380 = !{!"branch_weights", i32 198156, i32 0}
!381 = distinct !{!381, !213}
!382 = !{!"branch_weights", i32 216739, i32 8}
!383 = !{!"branch_weights", i32 8, i32 0}
!384 = distinct !{!384, !213}
!385 = !{!"branch_weights", i32 1, i32 25016}
!386 = !{!"branch_weights", i32 25016, i32 31511}
!387 = distinct !{!387, !213}
!388 = !{!"branch_weights", i32 1, i32 56527}
!389 = !{!"branch_weights", i32 56527, i32 1}
!390 = !{!"branch_weights", i32 24861, i32 156}
!391 = !{!"branch_weights", i32 156, i32 0}
!392 = distinct !{!392, !213}
!393 = !{!"branch_weights", i32 1, i32 156}
!394 = !{!"branch_weights", i32 156, i32 1}
!395 = !{!"fwprop.c:forward_propagate_asm"}
!396 = !{!397, !188, i64 0}
!397 = !{!"rtvec_def", !188, i64 0, !189, i64 8}
!398 = distinct !{!398, !213}
!399 = distinct !{!399, !213}
!400 = !{!"function_entry_count", i64 263096}
!401 = !{!"fwprop.c:propagate_rtx"}
!402 = !{!"branch_weights", i32 65933, i32 197165}
!403 = !{!"branch_weights", i32 65933, i32 1}
!404 = !{!"branch_weights", i32 21335, i32 175831}
!405 = !{!"branch_weights", i32 79222, i32 117944}
!406 = !{!"branch_weights", i32 168610, i32 28556}
!407 = !{!"branch_weights", i32 475954514, i32 -372394808}
!408 = !{!"branch_weights", i32 1, i32 21335}
!409 = !{!410, !195, i64 8}
!410 = !{!"rtl_hooks", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32}
!411 = !{!"branch_weights", i32 21335, i32 1}
!412 = !{!"function_entry_count", i64 21334}
!413 = !{!"fwprop.c:try_fwprop_subst"}
!414 = !{!"branch_weights", i32 170687, i32 1}
!415 = !{!"branch_weights", i32 14364, i32 1}
!416 = !{!"branch_weights", i32 1265126928, i32 882356720}
!417 = !{!"branch_weights", i32 6972, i32 14364}
!418 = !{!"branch_weights", i32 6972, i32 1}
!419 = !{!"branch_weights", i32 1, i32 14364}
!420 = !{!"branch_weights", i32 1445746865, i32 701736783}
!421 = !{!"branch_weights", i32 1, i32 6972}
!422 = !{!"function_entry_count", i64 56681}
!423 = !{!"fwprop.c:use_killed_between"}
!424 = !{!"branch_weights", i32 1, i32 56682}
!425 = !{!209, !188, i64 40}
!426 = !{!"branch_weights", i32 1136, i32 1}
!427 = !{!"branch_weights", i32 1, i32 1136}
!428 = !{!197, !195, i64 216}
!429 = !{!430, !195, i64 0}
!430 = !{!"df_reg_info", !195, i64 0, !188, i64 8}
!431 = !{!"branch_weights", i32 18568730, i32 -1162187958}
!432 = !{!"branch_weights", i32 1130, i32 55220}
!433 = !{!"branch_weights", i32 7208, i32 48013}
!434 = !{!"branch_weights", i32 259, i32 47755}
!435 = !{!"branch_weights", i32 242, i32 18}
!436 = !{!"branch_weights", i32 18, i32 1}
!437 = !{!"branch_weights", i32 259, i32 1}
!438 = !{!"function_entry_count", i64 1129}
!439 = !{!"fwprop.c:local_ref_killed_between_p"}
!440 = !{!"branch_weights", i32 1, i32 185}
!441 = !{!"branch_weights", i32 -1909744200, i32 55404000}
!442 = !{!"branch_weights", i32 1, i32 2313}
!443 = !{!"branch_weights", i32 2313, i32 29821}
!444 = distinct !{!444, !213}
!445 = !{!"branch_weights", i32 185, i32 3148}
!446 = distinct !{!446, !213}
!447 = !{!"function_entry_count", i64 103231}
!448 = !{!"fwprop.c:single_pred_p"}
!449 = !{!206, !195, i64 0}
!450 = !{!"function_entry_count", i64 48012}
!451 = !{!"fwprop.c:single_pred"}
!452 = !{!453, !195, i64 0}
!453 = !{!"edge_def", !195, i64 0, !195, i64 8, !189, i64 16, !195, i64 24, !195, i64 32, !188, i64 40, !188, i64 44, !188, i64 48, !188, i64 52, !207, i64 56}
!454 = !{!"fwprop.c:VEC_edge_base_length"}
!455 = !{!"branch_weights", i32 1, i32 103232}
!456 = !{!457, !188, i64 0}
!457 = !{!"VEC_edge_base", !188, i64 0, !188, i64 4, !189, i64 8}
!458 = !{!"fwprop.c:single_pred_edge"}
!459 = !{!"branch_weights", i32 1, i32 48013}
!460 = !{!"fwprop.c:VEC_edge_base_index"}
!461 = !{!"function_entry_count", i64 108952}
!462 = !{!"fwprop.c:rhs_regno"}
!463 = !{!"function_entry_count", i64 418963}
!464 = !{!"fwprop.c:varying_mem_p"}
!465 = !{!"branch_weights", i32 117944, i32 301021}
!466 = !{!"function_entry_count", i64 432027}
!467 = !{!"fwprop.c:propagate_rtx_1"}
!468 = !{!"branch_weights", i32 1336896, i32 -1609880367}
!469 = !{!"branch_weights", i32 215, i32 1}
!470 = !{!"branch_weights", i32 110736, i32 321079}
!471 = !{!"branch_weights", i32 88058, i32 719, i32 71685, i32 11653, i32 2486, i32 17066, i32 1, i32 1, i32 13988, i32 115431}
!472 = !{!"branch_weights", i32 1, i32 719}
!473 = !{!"branch_weights", i32 7341, i32 75997}
!474 = !{!"branch_weights", i32 24, i32 7318}
!475 = !{!"branch_weights", i32 1, i32 19551}
!476 = !{!"branch_weights", i32 17080, i32 2472}
!477 = !{!"branch_weights", i32 17080, i32 1}
!478 = !{!"branch_weights", i32 13988, i32 1}
!479 = !{!"branch_weights", i32 7011, i32 6978}
!480 = !{!"branch_weights", i32 1453849847, i32 206985769}
!481 = !{!"branch_weights", i32 1, i32 14387}
!482 = !{!483, !195, i64 1040}
!483 = !{!"gcc_target", !484, i64 0, !486, i64 368, !487, i64 664, !188, i64 744, !195, i64 752, !195, i64 760, !195, i64 768, !195, i64 776, !195, i64 784, !195, i64 792, !195, i64 800, !195, i64 808, !195, i64 816, !195, i64 824, !195, i64 832, !195, i64 840, !195, i64 848, !195, i64 856, !195, i64 864, !195, i64 872, !195, i64 880, !195, i64 888, !195, i64 896, !195, i64 904, !195, i64 912, !195, i64 920, !195, i64 928, !195, i64 936, !195, i64 944, !195, i64 952, !195, i64 960, !195, i64 968, !195, i64 976, !195, i64 984, !195, i64 992, !195, i64 1000, !195, i64 1008, !195, i64 1016, !195, i64 1024, !195, i64 1032, !195, i64 1040, !195, i64 1048, !195, i64 1056, !207, i64 1064, !207, i64 1072, !195, i64 1080, !195, i64 1088, !195, i64 1096, !195, i64 1104, !195, i64 1112, !195, i64 1120, !195, i64 1128, !195, i64 1136, !195, i64 1144, !195, i64 1152, !195, i64 1160, !195, i64 1168, !488, i64 1176, !195, i64 1232, !195, i64 1240, !195, i64 1248, !195, i64 1256, !195, i64 1264, !195, i64 1272, !195, i64 1280, !195, i64 1288, !195, i64 1296, !195, i64 1304, !195, i64 1312, !195, i64 1320, !195, i64 1328, !195, i64 1336, !195, i64 1344, !195, i64 1352, !195, i64 1360, !195, i64 1368, !195, i64 1376, !195, i64 1384, !195, i64 1392, !195, i64 1400, !195, i64 1408, !195, i64 1416, !195, i64 1424, !195, i64 1432, !195, i64 1440, !195, i64 1448, !195, i64 1456, !207, i64 1464, !489, i64 1472, !195, i64 1664, !195, i64 1672, !195, i64 1680, !195, i64 1688, !195, i64 1696, !195, i64 1704, !195, i64 1712, !195, i64 1720, !195, i64 1728, !195, i64 1736, !195, i64 1744, !195, i64 1752, !195, i64 1760, !195, i64 1768, !195, i64 1776, !490, i64 1784, !491, i64 1792, !492, i64 1896, !493, i64 1968, !195, i64 2016, !189, i64 2024, !189, i64 2025, !189, i64 2026, !189, i64 2027, !189, i64 2028, !189, i64 2029, !189, i64 2030, !189, i64 2031, !189, i64 2032, !189, i64 2033, !189, i64 2034, !189, i64 2035}
!484 = !{!"asm_out", !195, i64 0, !195, i64 8, !195, i64 16, !485, i64 24, !485, i64 56, !195, i64 88, !195, i64 96, !195, i64 104, !195, i64 112, !195, i64 120, !195, i64 128, !195, i64 136, !195, i64 144, !195, i64 152, !195, i64 160, !195, i64 168, !195, i64 176, !195, i64 184, !195, i64 192, !195, i64 200, !195, i64 208, !195, i64 216, !195, i64 224, !195, i64 232, !195, i64 240, !195, i64 248, !195, i64 256, !195, i64 264, !195, i64 272, !195, i64 280, !195, i64 288, !195, i64 296, !195, i64 304, !195, i64 312, !195, i64 320, !195, i64 328, !195, i64 336, !195, i64 344, !195, i64 352, !195, i64 360}
!485 = !{!"asm_int_op", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24}
!486 = !{!"sched", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96, !195, i64 104, !195, i64 112, !195, i64 120, !195, i64 128, !195, i64 136, !195, i64 144, !195, i64 152, !195, i64 160, !195, i64 168, !195, i64 176, !195, i64 184, !195, i64 192, !195, i64 200, !195, i64 208, !195, i64 216, !195, i64 224, !195, i64 232, !195, i64 240, !195, i64 248, !195, i64 256, !195, i64 264, !195, i64 272, !195, i64 280, !195, i64 288}
!487 = !{!"vectorize", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72}
!488 = !{!"addr_space", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48}
!489 = !{!"calls", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96, !195, i64 104, !195, i64 112, !195, i64 120, !195, i64 128, !195, i64 136, !195, i64 144, !195, i64 152, !195, i64 160, !195, i64 168, !195, i64 176, !195, i64 184}
!490 = !{!"c", !195, i64 0}
!491 = !{!"cxx", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96}
!492 = !{!"emutls", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !189, i64 64, !189, i64 65}
!493 = !{!"target_option_hooks", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40}
!494 = !{!"branch_weights", i32 14387, i32 1}
!495 = !{!"branch_weights", i32 47, i32 14341}
!496 = !{!497, !189, i64 32}
!497 = !{!"mem_attrs", !195, i64 0, !195, i64 8, !195, i64 16, !188, i64 24, !188, i64 28, !189, i64 32}
!498 = !{!"branch_weights", i32 24, i32 14364}
!499 = !{!"branch_weights", i32 25261, i32 25261, i32 -1742444290}
!500 = !{!"branch_weights", i32 33503, i32 67543}
!501 = !{!"branch_weights", i32 989207836, i32 -732780878}
!502 = !{!"function_entry_count", i64 14386}
!503 = !{!"fwprop.c:can_simplify_addr"}
!504 = !{!"branch_weights", i32 14341, i32 47}
!505 = !{!"branch_weights", i32 205664281, i32 14342, i32 14341}
!506 = !{!"function_entry_count", i64 14409}
!507 = !{!"fwprop.c:canonicalize_address"}
!508 = !{!"branch_weights", i32 14410, i32 24, i32 10920, i32 10851}
!509 = !{!"branch_weights", i32 24, i32 1}
!510 = !{!"branch_weights", i32 576, i32 49}
!511 = !{!"branch_weights", i32 -1762367433, i32 232455, i32 5578413, i32 232412}
!512 = !{!"fwprop.c:should_replace_address"}
!513 = !{!"branch_weights", i32 14341, i32 24}
!514 = !{!"branch_weights", i32 1, i32 14341}
!515 = !{!"function_entry_count", i64 42668}
!516 = !{!"fwprop.c:update_df"}
!517 = !{!"branch_weights", i32 42668, i32 1}
!518 = distinct !{!518, !213}
!519 = !{!"branch_weights", i32 1, i32 0}
!520 = !{!"branch_weights", i32 113784, i32 2147369864}
!521 = !{!"fwprop.c:find_occurrence"}
!522 = !{!523, !195, i64 0}
!523 = !{!"find_occurrence_data", !195, i64 0, !195, i64 8}
!524 = !{!523, !195, i64 8}
!525 = !{!"fwprop.c:find_occurrence_callback"}
