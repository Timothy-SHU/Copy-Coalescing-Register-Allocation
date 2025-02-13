; ModuleID = 'rtlanal.c'
source_filename = "rtlanal.c"
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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.object_block = type { ptr, i32, i64, ptr, ptr }
%struct.set_of_data = type { ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.replace_label_data = type { ptr, ptr, i8 }
%struct.subreg_info = type { i32, i32, i8 }
%struct.parms_set_data = type { i32, i64 }

@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [10 x i8] c"rtlanal.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_stack_check = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@non_rtx_starting_operands = internal unnamed_addr global [139 x i32] zeroinitializer, align 16
@target_flags = dso_local local_unnamed_addr global i32 0, align 4
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@reload_completed = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@num_sign_bit_copies_in_rep = internal unnamed_addr global [20 x [20 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"eEV\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@switch.table.commutative_operand_precedence = private unnamed_addr constant [3 x i32] [i32 -8, i32 -7, i32 -7], align 4
@switch.table.commutative_operand_precedence.3 = private unnamed_addr constant [3 x i32] [i32 -6, i32 -5, i32 -5], align 4

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rtx_unstable_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !177 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %31 [
    i16 43, label %5
    i16 35, label %69
    i16 30, label %69
    i16 32, label %69
    i16 31, label %69
    i16 33, label %69
    i16 45, label %69
    i16 44, label %69
    i16 37, label %13
    i16 17, label %28
  ]

5:                                                ; preds = %1
  %6 = and i32 %2, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  %11 = tail call i32 @rtx_unstable_p(ptr noundef %10) #14
  %12 = icmp ne i32 %11, 0
  br label %69

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !181
  %15 = icmp eq ptr %14, %0
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %17 = icmp eq ptr %16, %0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %69, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !181
  %21 = icmp eq ptr %20, %0
  %22 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %23 = icmp ne i8 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %69, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !181
  %27 = icmp ne ptr %26, %0
  br label %69

28:                                               ; preds = %1
  %29 = and i32 %2, 134217728
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %1, %28
  %32 = zext nneg i32 %3 to i64
  %33 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !181
  %35 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !178
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %40 = zext i8 %36 to i64
  br label %41

41:                                               ; preds = %38, %67
  %42 = phi i64 [ %40, %38 ], [ %43, %67 ]
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds i8, ptr %34, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !178
  switch i8 %45, label %67 [
    i8 101, label %53
    i8 69, label %46
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !178
  %49 = load i32, ptr %48, align 8, !tbaa !183
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  br label %61

53:                                               ; preds = %41
  %54 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %55 = load ptr, ptr %54, align 8, !tbaa !178
  %56 = tail call i32 @rtx_unstable_p(ptr noundef %55) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %69

58:                                               ; preds = %61
  %59 = add nuw nsw i64 %62, 1
  %60 = icmp eq i64 %59, %52
  br i1 %60, label %67, label %61, !llvm.loop !186

61:                                               ; preds = %51, %58
  %62 = phi i64 [ 0, %51 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !181
  %65 = tail call i32 @rtx_unstable_p(ptr noundef %64) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %58, label %69

67:                                               ; preds = %58, %46, %41, %53
  %68 = icmp sgt i64 %42, 1
  br i1 %68, label %41, label %69, !llvm.loop !188

69:                                               ; preds = %53, %67, %61, %31, %28, %25, %13, %19, %1, %1, %1, %1, %1, %1, %1, %5, %8
  %70 = phi i1 [ true, %5 ], [ %12, %8 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %19 ], [ false, %13 ], [ %27, %25 ], [ true, %28 ], [ false, %31 ], [ true, %61 ], [ true, %53 ], [ false, %67 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @rtx_varies_p(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !189 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %84, label %4, !prof !190

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = trunc i32 %5 to i16
  switch i16 %7, label %46 [
    i16 43, label %8
    i16 35, label %84
    i16 30, label %84
    i16 32, label %84
    i16 31, label %84
    i16 33, label %84
    i16 45, label %84
    i16 44, label %84
    i16 37, label %16
    i16 122, label %31
    i16 17, label %43
  ], !prof !191

8:                                                ; preds = %4
  %9 = and i32 %5, 67108864
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %84, label %11, !prof !192

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = tail call zeroext i8 @rtx_varies_p(ptr noundef %13, i8 noundef zeroext %1) #14
  %15 = icmp ne i8 %14, 0
  br label %84

16:                                               ; preds = %4
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !181
  %18 = icmp eq ptr %17, %0
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %20 = icmp eq ptr %19, %0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %84, label %22, !prof !193

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !181
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %28, !prof !194

25:                                               ; preds = %22
  %26 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !178
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !181
  %30 = icmp ne ptr %29, %0
  br label %84

31:                                               ; preds = %4
  %32 = icmp eq i8 %1, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !178
  %36 = tail call zeroext i8 @rtx_varies_p(ptr noundef %35, i8 noundef zeroext 0) #14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %33, %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !178
  %41 = tail call zeroext i8 @rtx_varies_p(ptr noundef %40, i8 noundef zeroext %1) #14
  %42 = icmp ne i8 %41, 0
  br label %84

43:                                               ; preds = %4
  %44 = and i32 %5, 134217728
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %4, %43
  %47 = zext nneg i32 %6 to i64
  %48 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !181
  %50 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %51 = load i8, ptr %50, align 1, !tbaa !178
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %84, label %53, !prof !195

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = zext i8 %51 to i64
  br label %56

56:                                               ; preds = %53, %82
  %57 = phi i64 [ %55, %53 ], [ %58, %82 ]
  %58 = add nsw i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !178
  switch i8 %60, label %82 [
    i8 101, label %68
    i8 69, label %61
  ], !prof !196

61:                                               ; preds = %56
  %62 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !178
  %64 = load i32, ptr %63, align 8, !tbaa !183
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = zext nneg i32 %64 to i64
  br label %76

68:                                               ; preds = %56
  %69 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %70 = load ptr, ptr %69, align 8, !tbaa !178
  %71 = tail call zeroext i8 @rtx_varies_p(ptr noundef %70, i8 noundef zeroext %1) #14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %82, label %84, !prof !197

73:                                               ; preds = %76
  %74 = add nuw nsw i64 %77, 1
  %75 = icmp eq i64 %74, %67
  br i1 %75, label %82, label %76, !llvm.loop !198

76:                                               ; preds = %66, %73
  %77 = phi i64 [ 0, %66 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.rtvec_def, ptr %63, i64 0, i32 1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !181
  %80 = tail call zeroext i8 @rtx_varies_p(ptr noundef %79, i8 noundef zeroext %1) #14
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %73, label %84

82:                                               ; preds = %73, %61, %56, %68
  %83 = icmp sgt i64 %57, 1
  br i1 %83, label %56, label %84, !prof !199, !llvm.loop !200

84:                                               ; preds = %68, %82, %76, %46, %43, %33, %38, %28, %16, %25, %4, %4, %4, %4, %4, %4, %4, %8, %11, %2
  %85 = phi i1 [ false, %2 ], [ true, %8 ], [ %15, %11 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %25 ], [ false, %16 ], [ %30, %28 ], [ true, %33 ], [ %42, %38 ], [ true, %43 ], [ false, %46 ], [ true, %76 ], [ true, %68 ], [ false, %82 ]
  %86 = zext i1 %85 to i8
  ret i8 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_addr_can_trap_p(ptr noundef %0) local_unnamed_addr #2 !prof !201 {
  %2 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 0) #14
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 !prof !202 !PGOFuncName !203 {
  br label %5

5:                                                ; preds = %90, %4
  %6 = phi ptr [ %0, %4 ], [ %92, %90 ]
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %122 [
    i16 45, label %9
    i16 44, label %121
    i16 37, label %69
    i16 35, label %88
    i16 49, label %93
    i16 122, label %117
    i16 78, label %117
    i16 74, label %119
    i16 75, label %119
    i16 76, label %119
    i16 77, label %119
    i16 79, label %119
  ], !prof !204

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %11, label %122, !prof !205

11:                                               ; preds = %9
  %12 = and i32 %7, 67108864
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %122, !prof !205

14:                                               ; preds = %11
  %15 = icmp slt i64 %1, 0
  br i1 %15, label %122, label %16, !prof !206

16:                                               ; preds = %14
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %18, label %26, !prof !207

18:                                               ; preds = %16
  %19 = zext nneg i32 %3 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !178
  %22 = zext i8 %21 to i64
  %23 = icmp eq i8 %21, 0
  br i1 %23, label %24, label %26, !prof !208

24:                                               ; preds = %18
  %25 = icmp ne i64 %1, 0
  br label %122

26:                                               ; preds = %16, %18
  %27 = phi i64 [ %22, %18 ], [ %2, %16 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !178
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %31, !prof !209

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !210
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %47, !prof !211

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !178
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41, !prof !212

41:                                               ; preds = %37
  %42 = tail call i32 @host_integerp(ptr noundef nonnull %39, i32 noundef 0) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %64, label %44, !prof !213

44:                                               ; preds = %41
  %45 = load ptr, ptr %38, align 8, !tbaa !178
  %46 = tail call i64 @tree_low_cst(ptr noundef %45, i32 noundef 0) #15
  br label %61

47:                                               ; preds = %37, %31
  %48 = icmp eq i64 %33, 28
  br i1 %48, label %49, label %53, !prof !214

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.tree_string, ptr %29, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !178
  %52 = sext i32 %51 to i64
  br label %61

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !178
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !178
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59, !prof !214

59:                                               ; preds = %53
  %60 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %55) #15
  br label %61

61:                                               ; preds = %44, %59, %49
  %62 = phi i64 [ %52, %49 ], [ %60, %59 ], [ %46, %44 ]
  %63 = icmp slt i64 %62, 1
  br i1 %63, label %64, label %66, !prof !215

64:                                               ; preds = %53, %41, %26, %61
  %65 = icmp ne i64 %1, 0
  br label %122

66:                                               ; preds = %61
  %67 = add nsw i64 %27, %1
  %68 = icmp sgt i64 %67, %62
  br label %122

69:                                               ; preds = %5
  %70 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !181
  %71 = icmp eq ptr %70, %6
  %72 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %73 = icmp eq ptr %72, %6
  %74 = select i1 %71, i1 true, i1 %73
  %75 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %76 = icmp eq ptr %75, %6
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %122, label %78, !prof !216

78:                                               ; preds = %69
  %79 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !181
  %80 = icmp eq ptr %79, %6
  br i1 %80, label %81, label %84, !prof !217

81:                                               ; preds = %78
  %82 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !178
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %122

84:                                               ; preds = %81, %78
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #14
  %86 = add i32 %85, -58
  %87 = icmp ult i32 %86, -5
  br label %122

88:                                               ; preds = %5
  %89 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %90

90:                                               ; preds = %88, %117, %119
  %91 = phi ptr [ %89, %88 ], [ %118, %117 ], [ %120, %119 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !178
  br label %5

93:                                               ; preds = %5
  %94 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !178
  %96 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !181
  %97 = icmp eq ptr %95, %96
  %98 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !178
  %100 = load i32, ptr %99, align 8
  br i1 %97, label %101, label %107, !prof !218

101:                                              ; preds = %93
  %102 = and i32 %100, 65535
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !210
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %122, label %107

107:                                              ; preds = %93, %101
  %108 = and i32 %100, 65535
  %109 = icmp eq i32 %108, 30
  br i1 %109, label %110, label %116, !prof !219

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !178
  %113 = add nsw i64 %112, %1
  %114 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %95, i64 noundef %113, i64 noundef %2, i32 noundef %3) #14
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116, !prof !220

116:                                              ; preds = %110, %107
  br label %122

117:                                              ; preds = %5, %5
  %118 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %90

119:                                              ; preds = %5, %5, %5, %5, %5
  %120 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %90

121:                                              ; preds = %5
  br label %122

122:                                              ; preds = %5, %121, %24, %14, %66, %64, %84, %110, %101, %69, %81, %11, %9, %116
  %123 = phi i1 [ true, %116 ], [ true, %9 ], [ false, %11 ], [ false, %81 ], [ false, %69 ], [ false, %101 ], [ false, %110 ], [ %87, %84 ], [ %25, %24 ], [ true, %14 ], [ %65, %64 ], [ %68, %66 ], [ false, %121 ], [ true, %5 ]
  %124 = zext i1 %123 to i32
  ret i32 %124
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nonzero_address_p(ptr noundef readonly %0) local_unnamed_addr #3 !prof !221 {
  br label %2

2:                                                ; preds = %29, %1
  %3 = phi ptr [ %0, %1 ], [ %31, %29 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %65 [
    i16 45, label %6
    i16 44, label %64
    i16 37, label %8
    i16 35, label %27
    i16 49, label %32
    i16 78, label %49
    i16 75, label %64
    i16 74, label %60
    i16 76, label %60
    i16 77, label %60
    i16 79, label %60
    i16 122, label %62
  ], !prof !222

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, -1
  br label %65

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !181
  %10 = icmp eq ptr %9, %3
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %12 = icmp eq ptr %11, %3
  %13 = select i1 %10, i1 true, i1 %12
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %15 = icmp eq ptr %14, %3
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %65, label %17, !prof !223

17:                                               ; preds = %8
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !181
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %23, !prof !224

20:                                               ; preds = %17
  %21 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !178
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %20, %17
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #14
  %25 = add i32 %24, -53
  %26 = icmp ult i32 %25, 5
  br label %65

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %29

29:                                               ; preds = %49, %56, %32, %27, %60, %62
  %30 = phi ptr [ %28, %27 ], [ %61, %60 ], [ %63, %62 ], [ %33, %32 ], [ %50, %56 ], [ %50, %49 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !178
  br label %2

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !178
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 30
  br i1 %38, label %29, label %39, !prof !225

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !178
  %41 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !181
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = zext nneg i32 %37 to i64
  %45 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !210
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %65, label %48

48:                                               ; preds = %39, %43
  br label %65

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %51 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !178
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 30
  br i1 %55, label %56, label %29

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !178
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %64, label %29

60:                                               ; preds = %2, %2, %2, %2
  %61 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %29

62:                                               ; preds = %2
  %63 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %29

64:                                               ; preds = %56, %2, %2
  br label %65

65:                                               ; preds = %2, %64, %23, %43, %8, %20, %48, %6
  %66 = phi i1 [ false, %48 ], [ %7, %6 ], [ true, %20 ], [ true, %8 ], [ true, %43 ], [ %26, %23 ], [ true, %64 ], [ false, %2 ]
  %67 = zext i1 %66 to i8
  ret i8 %67
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !226 !PGOFuncName !227 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !178
  ret i32 %3
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @rtx_addr_varies_p(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !177 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = and i32 %5, 16711680
  %10 = icmp eq i32 %9, 65536
  br i1 %10, label %55, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = tail call zeroext i8 @rtx_varies_p(ptr noundef %13, i8 noundef zeroext %1) #14
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i8
  br label %55

17:                                               ; preds = %4
  %18 = zext nneg i32 %6 to i64
  %19 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !181
  %21 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !178
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = zext i8 %22 to i64
  br label %27

27:                                               ; preds = %24, %53
  %28 = phi i64 [ %26, %24 ], [ %29, %53 ]
  %29 = add nsw i64 %28, -1
  %30 = getelementptr inbounds i8, ptr %20, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !178
  switch i8 %31, label %53 [
    i8 101, label %39
    i8 69, label %32
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !178
  %35 = load i32, ptr %34, align 8, !tbaa !183
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %47

39:                                               ; preds = %27
  %40 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  %41 = load ptr, ptr %40, align 8, !tbaa !178
  %42 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %41, i8 noundef zeroext %1) #14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %53, label %55

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %38
  br i1 %46, label %53, label %47, !llvm.loop !228

47:                                               ; preds = %37, %44
  %48 = phi i64 [ 0, %37 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !181
  %51 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %50, i8 noundef zeroext %1) #14
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %44, label %55

53:                                               ; preds = %44, %32, %27, %39
  %54 = icmp sgt i64 %28, 1
  br i1 %54, label %27, label %55, !llvm.loop !229

55:                                               ; preds = %39, %53, %47, %17, %8, %11, %2
  %56 = phi i8 [ 0, %2 ], [ 1, %8 ], [ %16, %11 ], [ 0, %17 ], [ 1, %47 ], [ 1, %39 ], [ 0, %53 ]
  ret i8 %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @get_integer_term(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !230 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %9, !prof !231

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %32 [
    i16 50, label %13
    i16 49, label %23
  ], !prof !232

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !178
  %22 = sub nsw i64 0, %21
  br label %32

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 30
  br i1 %28, label %29, label %32, !prof !233

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !178
  br label %32

32:                                               ; preds = %9, %13, %23, %29, %19
  %33 = phi i64 [ %22, %19 ], [ %31, %29 ], [ 0, %23 ], [ 0, %13 ], [ 0, %9 ]
  ret i64 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_related_value(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !234 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %25, !prof !235

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %25 [
    i16 49, label %10
    i16 50, label %16
  ], !prof !236

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 30
  br i1 %15, label %22, label %25, !prof !235

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %10
  %23 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  br label %25

25:                                               ; preds = %22, %5, %10, %16, %1
  %26 = phi ptr [ null, %1 ], [ null, %16 ], [ null, %10 ], [ null, %5 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @offset_within_block_p(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !177 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %6
  %9 = icmp sgt i64 %1, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = and i32 %3, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @get_pool_mode(ptr noundef nonnull %0) #15
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !178
  %18 = zext i8 %17 to i64
  %19 = icmp ugt i64 %18, %1
  br i1 %19, label %54, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %0, align 8
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %21, %20 ], [ %3, %10 ]
  %24 = and i32 %23, 67108864
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !178
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = tail call i64 @int_size_in_bytes(ptr noundef %32) #15
  %34 = icmp sgt i64 %33, %1
  br i1 %34, label %54, label %35

35:                                               ; preds = %22, %26, %30, %8
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load i32, ptr %36, align 8, !tbaa !178
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !178
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !178
  %47 = icmp sgt i64 %46, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = add i64 %46, %1
  %50 = getelementptr inbounds %struct.object_block, ptr %42, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !237
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %44, %40, %35
  br label %54

54:                                               ; preds = %48, %30, %13, %6, %2, %53
  %55 = phi i8 [ 0, %53 ], [ 0, %2 ], [ 1, %6 ], [ 1, %13 ], [ 1, %30 ], [ 1, %48 ]
  ret i8 %55
}

; Function Attrs: optsize
declare i32 @get_pool_mode(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @split_const(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 !prof !177 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 49
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !178
  br label %22

22:                                               ; preds = %3, %13, %7, %19
  %23 = phi ptr [ %21, %19 ], [ %9, %13 ], [ %9, %7 ], [ %0, %3 ]
  %24 = phi ptr [ %14, %19 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %13 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %7 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %3 ]
  store ptr %23, ptr %1, align 8, !tbaa !181
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  store ptr %25, ptr %2, align 8, !tbaa !181
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @count_occurrences(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !240 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %85, label %5, !prof !195

5:                                                ; preds = %3, %21
  %6 = phi i32 [ %10, %21 ], [ %2, %3 ]
  %7 = phi ptr [ %19, %21 ], [ %0, %3 ]
  %8 = phi i32 [ %22, %21 ], [ 0, %3 ]
  br label %9

9:                                                ; preds = %5, %37
  %10 = phi i32 [ %6, %5 ], [ 0, %37 ]
  %11 = phi ptr [ %7, %5 ], [ %39, %37 ]
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %41 [
    i16 37, label %85
    i16 30, label %85
    i16 32, label %85
    i16 31, label %85
    i16 33, label %85
    i16 45, label %85
    i16 12, label %85
    i16 36, label %85
    i16 46, label %85
    i16 3, label %14
    i16 43, label %24
    i16 23, label %31
  ], !prof !241

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = tail call i32 @count_occurrences(ptr noundef %16, ptr noundef %1, i32 noundef %10) #14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = icmp eq ptr %19, null
  br i1 %20, label %85, label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %17, %8
  %23 = icmp eq ptr %19, %1
  br i1 %23, label %85, label %5, !prof !242

24:                                               ; preds = %9
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 43
  br i1 %27, label %28, label %41, !prof !243

28:                                               ; preds = %24
  %29 = tail call i32 @rtx_equal_p(ptr noundef nonnull %11, ptr noundef nonnull %1) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %85

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !178
  %34 = icmp ne ptr %33, %1
  %35 = icmp ne i32 %10, 0
  %36 = or i1 %35, %34
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !178
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %85, label %9, !prof !244

41:                                               ; preds = %9, %31, %24, %28
  %42 = and i32 %12, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !178
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %85, label %47, !prof !245

47:                                               ; preds = %41
  %48 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %49 = load ptr, ptr %48, align 8, !tbaa !181
  %50 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %51 = zext i8 %45 to i64
  br label %52

52:                                               ; preds = %47, %81
  %53 = phi i64 [ 0, %47 ], [ %83, %81 ]
  %54 = phi i32 [ 0, %47 ], [ %82, %81 ]
  %55 = phi ptr [ %49, %47 ], [ %56, %81 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !178
  switch i8 %57, label %81 [
    i8 101, label %63
    i8 69, label %58
  ], !prof !246

58:                                               ; preds = %52
  %59 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %53
  %60 = load ptr, ptr %59, align 8, !tbaa !178
  %61 = load i32, ptr %60, align 8, !tbaa !183
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %68, label %81

63:                                               ; preds = %52
  %64 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %53
  %65 = load ptr, ptr %64, align 8, !tbaa !178
  %66 = tail call i32 @count_occurrences(ptr noundef %65, ptr noundef %1, i32 noundef %10) #14
  %67 = add nsw i32 %66, %54
  br label %81

68:                                               ; preds = %58, %68
  %69 = phi i64 [ %76, %68 ], [ 0, %58 ]
  %70 = phi ptr [ %77, %68 ], [ %60, %58 ]
  %71 = phi i32 [ %75, %68 ], [ %54, %58 ]
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %70, i64 0, i32 1, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !181
  %74 = tail call i32 @count_occurrences(ptr noundef %73, ptr noundef %1, i32 noundef %10) #14
  %75 = add nsw i32 %74, %71
  %76 = add nuw nsw i64 %69, 1
  %77 = load ptr, ptr %59, align 8, !tbaa !178
  %78 = load i32, ptr %77, align 8, !tbaa !183
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %68, label %81, !llvm.loop !247

81:                                               ; preds = %68, %58, %63, %52
  %82 = phi i32 [ %54, %52 ], [ %67, %63 ], [ %54, %58 ], [ %75, %68 ]
  %83 = add nuw nsw i64 %53, 1
  %84 = icmp eq i64 %83, %51
  br i1 %84, label %85, label %52, !prof !248, !llvm.loop !249

85:                                               ; preds = %21, %14, %37, %9, %9, %9, %9, %9, %9, %9, %9, %9, %81, %3, %41, %28
  %86 = phi i32 [ %8, %28 ], [ %8, %41 ], [ 0, %3 ], [ %8, %81 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %37 ], [ %22, %21 ], [ %8, %14 ]
  %87 = phi i32 [ 1, %28 ], [ 0, %41 ], [ 1, %3 ], [ %82, %81 ], [ 1, %37 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 1, %21 ], [ %17, %14 ]
  %88 = add nsw i32 %87, %86
  ret i32 %88
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_mentioned_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !250 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %69, label %4, !prof !251

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %69, label %6, !prof !252

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 44
  br i1 %9, label %10, label %14, !prof !253

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = icmp eq ptr %12, %0
  br label %69

14:                                               ; preds = %6
  %15 = trunc i32 %7 to i16
  switch i16 %15, label %24 [
    i16 37, label %16
    i16 38, label %69
    i16 46, label %69
    i16 36, label %69
    i16 30, label %69
    i16 33, label %69
    i16 32, label %69
    i16 31, label %69
  ], !prof !254

16:                                               ; preds = %14
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %69, !prof !255

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %23 = icmp eq i32 %21, %22
  br label %69

24:                                               ; preds = %14
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %31, !prof !256

28:                                               ; preds = %24
  %29 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69, !prof !257

31:                                               ; preds = %28, %24
  %32 = zext nneg i32 %8 to i64
  %33 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !181
  %35 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !178
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %69, label %38, !prof !258

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = zext i8 %36 to i64
  br label %41

41:                                               ; preds = %38, %67
  %42 = phi i64 [ %40, %38 ], [ %43, %67 ]
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds i8, ptr %34, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !178
  switch i8 %45, label %67 [
    i8 69, label %46
    i8 101, label %62
  ], !prof !259

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !178
  %49 = load i32, ptr %48, align 8, !tbaa !183
  %50 = zext i32 %49 to i64
  br label %51

51:                                               ; preds = %55, %46
  %52 = phi i64 [ %56, %55 ], [ %50, %46 ]
  %53 = trunc i64 %52 to i32
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %67, label %55, !prof !260

55:                                               ; preds = %51
  %56 = add nsw i64 %52, -1
  %57 = load ptr, ptr %47, align 8, !tbaa !178
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %57, i64 0, i32 1, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !181
  %60 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %0, ptr noundef %59) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %51, label %69, !prof !261, !llvm.loop !262

62:                                               ; preds = %41
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %64 = load ptr, ptr %63, align 8, !tbaa !178
  %65 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %0, ptr noundef %64) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69, !prof !263

67:                                               ; preds = %51, %41, %62
  %68 = icmp sgt i64 %42, 1
  br i1 %68, label %41, label %69, !prof !264, !llvm.loop !265

69:                                               ; preds = %62, %67, %55, %31, %28, %14, %14, %14, %14, %14, %14, %14, %16, %20, %4, %2, %10
  %70 = phi i1 [ %13, %10 ], [ false, %2 ], [ true, %4 ], [ false, %16 ], [ %23, %20 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ true, %28 ], [ false, %31 ], [ true, %55 ], [ true, %62 ], [ false, %67 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @no_labels_between_p(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 !prof !177 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %7, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %4, !llvm.loop !266

13:                                               ; preds = %4, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %4 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reg_used_between_p(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #2 !prof !267 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %31, label %5, !prof !268

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %31, label %9, !prof !269

9:                                                ; preds = %5, %27
  %10 = phi ptr [ %29, %27 ], [ %7, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -11
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %27, label %15, !prof !270

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %17) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31, !prof !271

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %27, !prof !272

24:                                               ; preds = %20
  %25 = tail call i32 @find_reg_fusage(ptr noundef nonnull %10, i32 noundef 24, ptr noundef %0) #14, !range !273
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %9, %20, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !178
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %9, !prof !274, !llvm.loop !275

31:                                               ; preds = %24, %15, %27, %5, %3
  %32 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 1, %24 ], [ 1, %15 ], [ 0, %27 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !276 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !210
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %112, label %9, !prof !277

9:                                                ; preds = %2, %13
  %10 = phi ptr [ %15, %13 ], [ %0, %2 ]
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %105 [
    i16 40, label %13
    i16 120, label %13
    i16 119, label %13
    i16 39, label %16
    i16 37, label %30
    i16 43, label %43
    i16 38, label %82
    i16 36, label %82
    i16 46, label %82
    i16 15, label %84
  ], !prof !278

13:                                               ; preds = %9, %9, %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  br label %9

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef %18) #14
  %20 = icmp ult i32 %19, 53
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = tail call i32 @subreg_regno(ptr noundef nonnull %10) #14
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @subreg_nregs(ptr noundef nonnull %10) #14
  br label %26

26:                                               ; preds = %16, %21, %24
  %27 = phi i32 [ %22, %24 ], [ %22, %21 ], [ %19, %16 ]
  %28 = phi i32 [ %25, %24 ], [ 1, %21 ], [ 1, %16 ]
  %29 = add i32 %28, %27
  br label %39

30:                                               ; preds = %9
  %31 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #14
  %32 = icmp ult i32 %31, 53
  br i1 %32, label %33, label %37, !prof !279

33:                                               ; preds = %30
  %34 = lshr i32 %11, 16
  %35 = and i32 %34, 255
  %36 = tail call fastcc i32 @end_hard_regno(i32 noundef %35, i32 noundef %31) #14
  br label %39

37:                                               ; preds = %30
  %38 = add i32 %31, 1
  br label %39

39:                                               ; preds = %33, %37, %26
  %40 = phi i32 [ %27, %26 ], [ %31, %37 ], [ %31, %33 ]
  %41 = phi i32 [ %29, %26 ], [ %38, %37 ], [ %36, %33 ]
  %42 = tail call i32 @refers_to_regno_p(i32 noundef %40, i32 noundef %41, ptr noundef nonnull %1, ptr noundef null) #14
  br label %112

43:                                               ; preds = %9
  %44 = icmp eq i32 %4, 43
  br i1 %44, label %112, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %5
  %47 = load ptr, ptr %46, align 8, !tbaa !181
  %48 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %5
  %49 = load i8, ptr %48, align 1, !tbaa !178
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %112, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %53 = zext i8 %49 to i64
  br label %54

54:                                               ; preds = %51, %80
  %55 = phi i64 [ %53, %51 ], [ %56, %80 ]
  %56 = add nsw i64 %55, -1
  %57 = getelementptr inbounds i8, ptr %47, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !178
  switch i8 %58, label %80 [
    i8 101, label %59
    i8 69, label %64
  ]

59:                                               ; preds = %54
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !178
  %62 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %10, ptr noundef %61) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %112

64:                                               ; preds = %54
  %65 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %56
  %66 = load ptr, ptr %65, align 8, !tbaa !178
  %67 = load i32, ptr %66, align 8, !tbaa !183
  %68 = zext i32 %67 to i64
  br label %69

69:                                               ; preds = %73, %64
  %70 = phi i64 [ %74, %73 ], [ %68, %64 ]
  %71 = trunc i64 %70 to i32
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = add nsw i64 %70, -1
  %75 = load ptr, ptr %65, align 8, !tbaa !178
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %75, i64 0, i32 1, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !181
  %78 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %10, ptr noundef %77) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %69, label %112, !llvm.loop !280

80:                                               ; preds = %69, %54, %59
  %81 = icmp sgt i64 %55, 1
  br i1 %81, label %54, label %112, !llvm.loop !281

82:                                               ; preds = %9, %9, %9
  %83 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %10, ptr noundef nonnull %1) #14
  br label %112

84:                                               ; preds = %9
  %85 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !178
  %87 = load i32, ptr %86, align 8, !tbaa !183
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = zext nneg i32 %87 to i64
  br label %91

91:                                               ; preds = %89, %103
  %92 = phi i64 [ %90, %89 ], [ %93, %103 ]
  %93 = add nsw i64 %92, -1
  %94 = load ptr, ptr %85, align 8, !tbaa !178
  %95 = getelementptr inbounds %struct.rtvec_def, ptr %94, i64 0, i32 1, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !181
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !178
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %98, ptr noundef nonnull %1) #14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %91, %100
  %104 = icmp ugt i64 %92, 1
  br i1 %104, label %91, label %112, !llvm.loop !282

105:                                              ; preds = %9
  %106 = and i32 %11, 65535
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !210
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1416, ptr noundef nonnull @.str.1) #15
  br label %112

112:                                              ; preds = %103, %100, %80, %59, %73, %84, %45, %111, %105, %43, %2, %82, %39
  %113 = phi i32 [ %83, %82 ], [ %42, %39 ], [ 0, %2 ], [ 1, %43 ], [ 0, %105 ], [ 0, %111 ], [ 0, %45 ], [ 0, %84 ], [ 1, %73 ], [ 0, %80 ], [ 1, %59 ], [ 0, %103 ], [ 1, %100 ]
  ret i32 %113
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @find_reg_fusage(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !283 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %49, !prof !284

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %9, label %10, !prof !285

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1804, ptr noundef nonnull @.str.1) #15
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %34, label %14, !prof !284

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %14, %30
  %19 = phi ptr [ %32, %30 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !178
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !178
  %28 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef %27) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %18, %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %18, !llvm.loop !286

34:                                               ; preds = %10
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #14
  %36 = icmp ult i32 %35, 53
  br i1 %36, label %37, label %49, !prof !285

37:                                               ; preds = %34
  %38 = lshr i32 %11, 16
  %39 = and i32 %38, 255
  %40 = tail call fastcc i32 @end_hard_regno(i32 noundef %39, i32 noundef %35) #14
  %41 = icmp ult i32 %35, %40
  br i1 %41, label %45, label %49

42:                                               ; preds = %45
  %43 = add i32 %46, 1
  %44 = icmp eq i32 %43, %40
  br i1 %44, label %49, label %45, !llvm.loop !287

45:                                               ; preds = %37, %42
  %46 = phi i32 [ %43, %42 ], [ %35, %37 ]
  %47 = tail call i32 @find_regno_fusage(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %46) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %42, label %49

49:                                               ; preds = %25, %30, %45, %42, %14, %37, %34, %3
  %50 = phi i32 [ 0, %3 ], [ 0, %34 ], [ 0, %37 ], [ 0, %14 ], [ 1, %45 ], [ 0, %42 ], [ 1, %25 ], [ 0, %30 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_referenced_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !288 {
  br label %3

3:                                                ; preds = %119, %2
  %4 = phi ptr [ %1, %2 ], [ %121, %119 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %122 [
    i16 23, label %7
    i16 17, label %44
    i16 26, label %60
    i16 24, label %60
    i16 47, label %60
    i16 29, label %62
    i16 22, label %66
    i16 18, label %70
    i16 19, label %70
    i16 15, label %86
    i16 25, label %102
    i16 14, label %114
  ], !prof !289

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %122, !prof !290

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %40 [
    i16 46, label %43
    i16 36, label %43
    i16 37, label %43
    i16 39, label %17
  ], !prof !291

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %40, !prof !292

23:                                               ; preds = %17
  %24 = lshr i32 %20, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !178
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, 3
  %31 = lshr i32 %15, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !178
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 3
  %38 = xor i32 %37, %30
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %43, label %40, !prof !292

40:                                               ; preds = %12, %23, %17
  %41 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %14) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %122

43:                                               ; preds = %12, %12, %12, %40, %23
  br label %122

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !178
  %47 = load i32, ptr %46, align 8, !tbaa !183
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %53, %44
  %50 = phi i64 [ %54, %53 ], [ %48, %44 ]
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %49
  %54 = add nsw i64 %50, -1
  %55 = load ptr, ptr %45, align 8, !tbaa !178
  %56 = getelementptr inbounds %struct.rtvec_def, ptr %55, i64 0, i32 1, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !181
  %58 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %57) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %49, label %122, !llvm.loop !293

60:                                               ; preds = %3, %3, %3
  %61 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %4) #14
  br label %122

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !178
  %65 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %64) #14
  br label %122

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !178
  %69 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %68) #14
  br label %122

70:                                               ; preds = %3, %3
  %71 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !178
  %73 = load i32, ptr %72, align 8, !tbaa !183
  %74 = zext i32 %73 to i64
  br label %75

75:                                               ; preds = %79, %70
  %76 = phi i64 [ %80, %79 ], [ %74, %70 ]
  %77 = trunc i64 %76 to i32
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %75
  %80 = add nsw i64 %76, -1
  %81 = load ptr, ptr %71, align 8, !tbaa !178
  %82 = getelementptr inbounds %struct.rtvec_def, ptr %81, i64 0, i32 1, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !181
  %84 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %83) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %75, label %122, !llvm.loop !294

86:                                               ; preds = %3
  %87 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !178
  %89 = load i32, ptr %88, align 8, !tbaa !183
  %90 = zext i32 %89 to i64
  br label %91

91:                                               ; preds = %95, %86
  %92 = phi i64 [ %96, %95 ], [ %90, %86 ]
  %93 = trunc i64 %92 to i32
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %122, !prof !295

95:                                               ; preds = %91
  %96 = add nsw i64 %92, -1
  %97 = load ptr, ptr %87, align 8, !tbaa !178
  %98 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !181
  %100 = tail call i32 @reg_referenced_p(ptr noundef %0, ptr noundef %99) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %91, label %122, !prof !296, !llvm.loop !297

102:                                              ; preds = %3
  %103 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !178
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 43
  br i1 %107, label %108, label %113, !prof !298

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !178
  %111 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %110) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108, %102
  br label %122

114:                                              ; preds = %3
  %115 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !178
  %117 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %116) #14
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !178
  br label %3

122:                                              ; preds = %3, %114, %91, %95, %75, %79, %49, %53, %108, %40, %7, %113, %66, %62, %60, %43
  %123 = phi i32 [ 0, %113 ], [ %69, %66 ], [ %65, %62 ], [ %61, %60 ], [ 0, %43 ], [ 1, %7 ], [ 1, %40 ], [ 1, %108 ], [ 0, %49 ], [ 1, %53 ], [ 0, %75 ], [ 1, %79 ], [ 0, %91 ], [ 1, %95 ], [ 0, %3 ], [ 1, %114 ]
  ret i32 %123
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reg_set_between_p(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #2 !prof !299 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %22, label %5, !prof !300

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %22, label %9, !prof !301

9:                                                ; preds = %5, %18
  %10 = phi ptr [ %20, %18 ], [ %7, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %18, !prof !302

15:                                               ; preds = %9
  %16 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %10) #14, !range !273
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22, !prof !303

18:                                               ; preds = %9, %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %9, !prof !304, !llvm.loop !305

22:                                               ; preds = %15, %18, %5, %3
  %23 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 1, %15 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_set_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !306 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %21, !prof !307

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %18 [
    i16 37, label %9
    i16 43, label %25
  ], !prof !308

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %11 = icmp ult i32 %10, 53
  br i1 %11, label %12, label %18, !prof !309

12:                                               ; preds = %9
  %13 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !310
  %14 = lshr i32 %7, 16
  %15 = and i32 %14, 255
  %16 = tail call fastcc zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %13, i32 noundef %15, i32 noundef %10) #14, !range !311
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25, !prof !312

18:                                               ; preds = %6, %9, %12
  %19 = tail call i32 @find_reg_fusage(ptr noundef nonnull %1, i32 noundef 25, ptr noundef nonnull %0) #14, !range !273
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !313

21:                                               ; preds = %2, %18
  %22 = tail call ptr @set_of(ptr noundef %0, ptr noundef nonnull %1) #14
  %23 = icmp ne ptr %22, null
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %6, %12, %18, %21
  %26 = phi i32 [ %24, %21 ], [ 1, %18 ], [ 1, %12 ], [ 1, %6 ]
  ret i32 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !prof !314 !PGOFuncName !315 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19, !prof !312

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #14
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
  br i1 %18, label %10, label %19, !llvm.loop !316

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 1, %3 ], [ 0, %10 ], [ 1, %14 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @set_of(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !317 {
  %3 = alloca %struct.set_of_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !318
  %4 = getelementptr inbounds %struct.set_of_data, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !320
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %12, !prof !321

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ %1, %2 ]
  call void @note_stores(ptr noundef %13, ptr noundef nonnull @set_of_1, ptr noundef nonnull %3) #14
  %14 = load ptr, ptr %3, align 8, !tbaa !318
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @modified_between_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !322 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq ptr %1, %2
  br i1 %6, label %73, label %7, !prof !323

7:                                                ; preds = %3
  %8 = trunc i32 %4 to i16
  switch i16 %8, label %29 [
    i16 30, label %73
    i16 32, label %73
    i16 31, label %73
    i16 33, label %73
    i16 35, label %73
    i16 45, label %73
    i16 44, label %73
    i16 36, label %9
    i16 46, label %9
    i16 43, label %10
    i16 37, label %27
  ], !prof !324

9:                                                ; preds = %7, %7
  br label %73

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = tail call i32 @modified_between_p(ptr noundef %12, ptr noundef %1, ptr noundef %2) #14, !range !273
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %73, !prof !325

15:                                               ; preds = %10
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 67108864
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %73, !prof !325

19:                                               ; preds = %15, %24
  %20 = phi ptr [ %22, %24 ], [ %1, %15 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %73, label %24, !prof !326

24:                                               ; preds = %19
  %25 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef nonnull %0, ptr noundef %22) #15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %19, label %73, !prof !327, !llvm.loop !328

27:                                               ; preds = %7
  %28 = tail call i32 @reg_set_between_p(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #14, !range !273
  br label %73

29:                                               ; preds = %7
  %30 = zext nneg i32 %5 to i64
  %31 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !181
  %33 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %30
  %34 = load i8, ptr %33, align 1, !tbaa !178
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %73, label %36, !prof !329

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = zext i8 %34 to i64
  br label %39

39:                                               ; preds = %36, %71
  %40 = phi i64 [ %38, %36 ], [ %41, %71 ]
  %41 = add nsw i64 %40, -1
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !178
  %44 = icmp eq i8 %43, 101
  br i1 %44, label %45, label %52, !prof !330

45:                                               ; preds = %39
  %46 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !178
  %48 = tail call i32 @modified_between_p(ptr noundef %47, ptr noundef %1, ptr noundef %2) #14, !range !273
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73, !prof !331

50:                                               ; preds = %45
  %51 = load i8, ptr %42, align 1, !tbaa !178
  br label %52

52:                                               ; preds = %50, %39
  %53 = phi i8 [ %51, %50 ], [ %43, %39 ]
  %54 = icmp eq i8 %53, 69
  br i1 %54, label %55, label %71, !prof !332

55:                                               ; preds = %52
  %56 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %57 = load ptr, ptr %56, align 8, !tbaa !178
  %58 = load i32, ptr %57, align 8, !tbaa !183
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %64, %55
  %61 = phi i64 [ %65, %64 ], [ %59, %55 ]
  %62 = trunc i64 %61 to i32
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = add nsw i64 %61, -1
  %66 = load ptr, ptr %56, align 8, !tbaa !178
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !181
  %69 = tail call i32 @modified_between_p(ptr noundef %68, ptr noundef %1, ptr noundef %2) #14, !range !273
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %60, label %73, !llvm.loop !333

71:                                               ; preds = %60, %52
  %72 = icmp sgt i64 %40, 1
  br i1 %72, label %39, label %73, !prof !334, !llvm.loop !335

73:                                               ; preds = %19, %24, %45, %71, %64, %29, %15, %10, %7, %7, %7, %7, %7, %7, %7, %3, %27, %9
  %74 = phi i32 [ %28, %27 ], [ 1, %9 ], [ 0, %3 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 1, %10 ], [ 0, %15 ], [ 0, %29 ], [ 1, %64 ], [ 1, %45 ], [ 0, %71 ], [ 0, %19 ], [ 1, %24 ]
  ret i32 %74
}

; Function Attrs: optsize
declare zeroext i8 @memory_modified_in_insn_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @modified_in_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !336 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %21 [
    i16 30, label %66
    i16 32, label %66
    i16 31, label %66
    i16 33, label %66
    i16 35, label %66
    i16 45, label %66
    i16 44, label %66
    i16 36, label %5
    i16 46, label %5
    i16 43, label %6
    i16 37, label %19
  ], !prof !337

5:                                                ; preds = %2, %2
  br label %66

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = tail call i32 @modified_in_p(ptr noundef %8, ptr noundef %1) #14, !range !273
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %66, !prof !338

11:                                               ; preds = %6
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 67108864
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %66, !prof !339

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef nonnull %0, ptr noundef %1) #15
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  br label %66

19:                                               ; preds = %2
  %20 = tail call i32 @reg_set_p(ptr noundef nonnull %0, ptr noundef %1) #14, !range !273
  br label %66

21:                                               ; preds = %2
  %22 = and i32 %3, 65535
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !181
  %26 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !178
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %66, label %29, !prof !340

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %31 = zext i8 %27 to i64
  br label %32

32:                                               ; preds = %29, %64
  %33 = phi i64 [ %31, %29 ], [ %34, %64 ]
  %34 = add nsw i64 %33, -1
  %35 = getelementptr inbounds i8, ptr %25, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !178
  %37 = icmp eq i8 %36, 101
  br i1 %37, label %38, label %45, !prof !341

38:                                               ; preds = %32
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !178
  %41 = tail call i32 @modified_in_p(ptr noundef %40, ptr noundef %1) #14, !range !273
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66, !prof !342

43:                                               ; preds = %38
  %44 = load i8, ptr %35, align 1, !tbaa !178
  br label %45

45:                                               ; preds = %43, %32
  %46 = phi i8 [ %44, %43 ], [ %36, %32 ]
  %47 = icmp eq i8 %46, 69
  br i1 %47, label %48, label %64, !prof !343

48:                                               ; preds = %45
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %34
  %50 = load ptr, ptr %49, align 8, !tbaa !178
  %51 = load i32, ptr %50, align 8, !tbaa !183
  %52 = zext i32 %51 to i64
  br label %53

53:                                               ; preds = %57, %48
  %54 = phi i64 [ %58, %57 ], [ %52, %48 ]
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = add nsw i64 %54, -1
  %59 = load ptr, ptr %49, align 8, !tbaa !178
  %60 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !181
  %62 = tail call i32 @modified_in_p(ptr noundef %61, ptr noundef %1) #14, !range !273
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %53, label %66, !llvm.loop !344

64:                                               ; preds = %53, %45
  %65 = icmp sgt i64 %33, 1
  br i1 %65, label %32, label %66, !prof !345, !llvm.loop !346

66:                                               ; preds = %38, %64, %57, %21, %15, %11, %6, %2, %2, %2, %2, %2, %2, %2, %19, %5
  %67 = phi i32 [ %20, %19 ], [ 1, %5 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 1, %6 ], [ 0, %11 ], [ %18, %15 ], [ 0, %21 ], [ 1, %57 ], [ 1, %38 ], [ 0, %64 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @note_stores(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 !prof !347 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %11, !prof !348

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = trunc i32 %12 to i16
  switch i16 %14, label %66 [
    i16 23, label %15
    i16 25, label %15
    i16 15, label %52
  ], !prof !349

15:                                               ; preds = %11, %11
  br label %16

16:                                               ; preds = %22, %15
  %17 = phi ptr [ %13, %15 ], [ %19, %22 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %51 [
    i16 39, label %23
    i16 120, label %22
    i16 40, label %22
    i16 15, label %32
  ], !prof !350

22:                                               ; preds = %16, %16, %29, %23
  br label %16, !llvm.loop !351

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %22

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #14
  %31 = icmp ugt i32 %30, 52
  br i1 %31, label %22, label %51

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !178
  %35 = load i32, ptr %34, align 8, !tbaa !183
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %49
  %40 = phi i64 [ %38, %37 ], [ %41, %49 ]
  %41 = add nsw i64 %40, -1
  %42 = load ptr, ptr %33, align 8, !tbaa !178
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !181
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !178
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  tail call void %1(ptr noundef nonnull %46, ptr noundef nonnull %13, ptr noundef %2) #15
  br label %49

49:                                               ; preds = %39, %48
  %50 = icmp ugt i64 %40, 1
  br i1 %50, label %39, label %66, !llvm.loop !352

51:                                               ; preds = %16, %29
  tail call void %1(ptr noundef nonnull %19, ptr noundef nonnull %13, ptr noundef %2) #15
  br label %66

52:                                               ; preds = %11
  %53 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !178
  %55 = load i32, ptr %54, align 8, !tbaa !183
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %66, !prof !353

57:                                               ; preds = %52
  %58 = zext nneg i32 %55 to i64
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ %58, %57 ], [ %61, %59 ]
  %61 = add nsw i64 %60, -1
  %62 = load ptr, ptr %53, align 8, !tbaa !178
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %62, i64 0, i32 1, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !181
  tail call void @note_stores(ptr noundef %64, ptr noundef %1, ptr noundef %2) #14
  %65 = icmp ugt i64 %60, 1
  br i1 %65, label %59, label %66, !prof !354, !llvm.loop !355

66:                                               ; preds = %59, %49, %52, %32, %11, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @set_of_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #2 !prof !356 !PGOFuncName !357 {
  %4 = getelementptr inbounds %struct.set_of_data, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !320
  %6 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !358

8:                                                ; preds = %3
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %17, label %12, !prof !359

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !320
  %14 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %13, ptr noundef nonnull %0) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !360

16:                                               ; preds = %12, %3
  store ptr %1, ptr %2, align 8, !tbaa !318
  br label %17

17:                                               ; preds = %16, %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @single_set_2(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !361 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %48, !prof !362

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = load i32, ptr %8, align 8, !tbaa !183
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %48, !prof !363

11:                                               ; preds = %6, %40
  %12 = phi i64 [ %43, %40 ], [ 0, %6 ]
  %13 = phi ptr [ %44, %40 ], [ %8, %6 ]
  %14 = phi i32 [ %42, %40 ], [ 1, %6 ]
  %15 = phi ptr [ %41, %40 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %13, i64 0, i32 1, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !181
  %18 = load i32, ptr %17, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %48 [
    i16 24, label %40
    i16 25, label %40
    i16 23, label %20
  ], !prof !364

20:                                               ; preds = %11
  %21 = icmp eq i32 %14, 0
  br i1 %21, label %22, label %30, !prof !365

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  %25 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 6, ptr noundef %24) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27, !prof !366

27:                                               ; preds = %22
  %28 = tail call i32 @side_effects_p(ptr noundef nonnull %15) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %32

30:                                               ; preds = %20
  %31 = icmp eq ptr %15, null
  br i1 %31, label %40, label %32, !prof !367

32:                                               ; preds = %27, %22, %30
  %33 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !178
  %35 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 6, ptr noundef %34) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37, !prof !366

37:                                               ; preds = %32
  %38 = tail call i32 @side_effects_p(ptr noundef nonnull %17) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %27, %30, %37, %11, %11
  %41 = phi ptr [ %15, %37 ], [ %15, %11 ], [ %15, %11 ], [ %17, %30 ], [ %17, %27 ]
  %42 = phi i32 [ 1, %37 ], [ %14, %11 ], [ %14, %11 ], [ 0, %30 ], [ 0, %27 ]
  %43 = add nuw nsw i64 %12, 1
  %44 = load ptr, ptr %7, align 8, !tbaa !178
  %45 = load i32, ptr %44, align 8, !tbaa !183
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %11, label %48, !prof !368, !llvm.loop !369

48:                                               ; preds = %40, %37, %32, %11, %6, %2
  %49 = phi ptr [ null, %2 ], [ null, %6 ], [ %41, %40 ], [ null, %37 ], [ null, %32 ], [ null, %11 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @find_reg_note(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #2 !prof !370 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !371

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1697, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %3, %5
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %42, !prof !372

11:                                               ; preds = %6
  %12 = icmp eq ptr %2, null
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = icmp eq ptr %14, null
  br i1 %12, label %16, label %27, !prof !373

16:                                               ; preds = %11
  br i1 %15, label %42, label %17, !prof !374

17:                                               ; preds = %16, %23
  %18 = phi ptr [ %25, %23 ], [ %14, %16 ]
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %42, label %23, !prof !375

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %17, !prof !376, !llvm.loop !377

27:                                               ; preds = %11
  br i1 %15, label %42, label %28, !prof !378

28:                                               ; preds = %27, %38
  %29 = phi ptr [ %40, %38 ], [ %14, %27 ]
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %38, !prof !379

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !178
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %42, label %38, !prof !380

38:                                               ; preds = %28, %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !178
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !prof !381, !llvm.loop !382

42:                                               ; preds = %34, %38, %17, %23, %27, %16, %6
  %43 = phi ptr [ null, %6 ], [ null, %16 ], [ null, %27 ], [ %18, %17 ], [ null, %23 ], [ %29, %34 ], [ null, %38 ]
  ret ptr %43
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @side_effects_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !383 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %13 [
    i16 44, label %51
    i16 45, label %51
    i16 30, label %51
    i16 35, label %51
    i16 32, label %51
    i16 31, label %51
    i16 33, label %51
    i16 46, label %51
    i16 36, label %51
    i16 37, label %51
    i16 38, label %51
    i16 20, label %51
    i16 21, label %51
    i16 138, label %51
    i16 25, label %5
    i16 75, label %9
    i16 74, label %9
    i16 77, label %9
    i16 76, label %9
    i16 78, label %9
    i16 79, label %9
    i16 26, label %9
    i16 19, label %9
    i16 43, label %10
    i16 16, label %10
    i16 17, label %10
  ], !prof !384

5:                                                ; preds = %1
  %6 = and i32 %2, 16711680
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %51

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %51

10:                                               ; preds = %1, %1, %1
  %11 = and i32 %2, 134217728
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %51, !prof !385

13:                                               ; preds = %1, %10
  %14 = zext nneg i32 %3 to i64
  %15 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !181
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !178
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %51, label %20, !prof !386

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = zext i8 %18 to i64
  br label %23

23:                                               ; preds = %20, %49
  %24 = phi i64 [ %22, %20 ], [ %25, %49 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !178
  switch i8 %27, label %49 [
    i8 101, label %35
    i8 69, label %28
  ], !prof !387

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %25
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = load i32, ptr %30, align 8, !tbaa !183
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %49, !prof !388

33:                                               ; preds = %28
  %34 = zext nneg i32 %31 to i64
  br label %43

35:                                               ; preds = %23
  %36 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !178
  %38 = tail call i32 @side_effects_p(ptr noundef %37) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %51, !prof !389

40:                                               ; preds = %43
  %41 = add nuw nsw i64 %44, 1
  %42 = icmp eq i64 %41, %34
  br i1 %42, label %49, label %43, !prof !390, !llvm.loop !391

43:                                               ; preds = %33, %40
  %44 = phi i64 [ 0, %33 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !181
  %47 = tail call i32 @side_effects_p(ptr noundef %46) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %40, label %51, !prof !392

49:                                               ; preds = %40, %28, %23, %35
  %50 = icmp sgt i64 %24, 1
  br i1 %50, label %23, label %51, !prof !393, !llvm.loop !394

51:                                               ; preds = %49, %35, %43, %13, %10, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %9, %5
  %52 = phi i32 [ 1, %9 ], [ %8, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %10 ], [ 0, %13 ], [ 1, %43 ], [ 0, %49 ], [ 1, %35 ]
  ret i32 %52
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @multiple_sets(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !395 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %33, !prof !396

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %33, !prof !397

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = load i32, ptr %14, align 8, !tbaa !183
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %33, !prof !398

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %31, %29 ]
  %21 = phi i32 [ 0, %17 ], [ %30, %29 ]
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !181
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %27, label %29, !prof !399

27:                                               ; preds = %19
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %29, label %33, !prof !400

29:                                               ; preds = %27, %19
  %30 = phi i32 [ %21, %19 ], [ 1, %27 ]
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %19, !prof !401, !llvm.loop !402

33:                                               ; preds = %27, %29, %12, %1, %6
  %34 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 0, %12 ], [ 1, %27 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @set_noop_p(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !403 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = load ptr, ptr %2, align 8, !tbaa !178
  %6 = load ptr, ptr @global_rtl, align 16, !tbaa !181
  %7 = icmp eq ptr %5, %6
  %8 = icmp eq ptr %4, %6
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %74, label %10, !prof !404

10:                                               ; preds = %1
  %11 = load i32, ptr %5, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %39 [
    i16 43, label %13
    i16 120, label %23
    i16 40, label %36
  ], !prof !405

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %39, !prof !406

17:                                               ; preds = %13
  %18 = tail call i32 @rtx_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %74, label %20, !prof !407

20:                                               ; preds = %17
  %21 = tail call i32 @side_effects_p(ptr noundef nonnull %5) #14
  %22 = icmp eq i32 %21, 0
  br label %74

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = tail call i32 @rtx_equal_p(ptr noundef %25, ptr noundef %4) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !181
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = tail call i32 @side_effects_p(ptr noundef %4) #14
  %35 = icmp eq i32 %34, 0
  br label %74

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !178
  br label %39

39:                                               ; preds = %10, %13, %36
  %40 = phi ptr [ %38, %36 ], [ %5, %13 ], [ %5, %10 ]
  %41 = load i32, ptr %4, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 39
  br i1 %43, label %44, label %60, !prof !408

44:                                               ; preds = %39
  %45 = load i32, ptr %40, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 39
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !178
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load i32, ptr %51, align 8, !tbaa !178
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %56 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !178
  %58 = load ptr, ptr %55, align 8, !tbaa !178
  %59 = load i32, ptr %57, align 8
  br label %60

60:                                               ; preds = %54, %44, %39
  %61 = phi i32 [ %59, %54 ], [ %41, %44 ], [ %41, %39 ]
  %62 = phi ptr [ %57, %54 ], [ %4, %44 ], [ %4, %39 ]
  %63 = phi ptr [ %58, %54 ], [ %40, %44 ], [ %40, %39 ]
  %64 = and i32 %61, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %74, !prof !409

66:                                               ; preds = %60
  %67 = load i32, ptr %63, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %74, !prof !410

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %62) #14
  %72 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %63) #14
  %73 = icmp eq i32 %71, %72
  br label %74

74:                                               ; preds = %60, %66, %70, %48, %23, %28, %33, %17, %20, %1
  %75 = phi i1 [ true, %1 ], [ false, %17 ], [ %22, %20 ], [ false, %28 ], [ false, %23 ], [ %35, %33 ], [ false, %48 ], [ false, %66 ], [ false, %60 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @noop_move_p(ptr noundef %0) local_unnamed_addr #2 !prof !411 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !178
  %6 = icmp eq i32 %5, 2147483647
  br i1 %6, label %48, label %7, !prof !412

7:                                                ; preds = %1
  %8 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %48, !prof !413

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %14, label %19, !prof !414

14:                                               ; preds = %10
  %15 = tail call i32 @set_noop_p(ptr noundef nonnull %3) #14, !range !273
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %48, !prof !415

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 8
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ %18, %17 ], [ %11, %10 ]
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %48, !prof !416

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = load i32, ptr %25, align 8, !tbaa !183
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48, !prof !417

28:                                               ; preds = %23, %42
  %29 = phi i32 [ %43, %42 ], [ %26, %23 ]
  %30 = phi ptr [ %44, %42 ], [ %25, %23 ]
  %31 = phi i64 [ %45, %42 ], [ 0, %23 ]
  %32 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !181
  %34 = load i32, ptr %33, align 8
  %35 = trunc i32 %34 to i16
  switch i16 %35, label %48 [
    i16 24, label %42
    i16 25, label %42
    i16 23, label %36
  ], !prof !418

36:                                               ; preds = %28
  %37 = tail call i32 @set_noop_p(ptr noundef nonnull %33) #14, !range !273
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39, !prof !419

39:                                               ; preds = %36
  %40 = load ptr, ptr %24, align 8, !tbaa !178
  %41 = load i32, ptr %40, align 8, !tbaa !183
  br label %42

42:                                               ; preds = %39, %28, %28
  %43 = phi i32 [ %41, %39 ], [ %29, %28 ], [ %29, %28 ]
  %44 = phi ptr [ %40, %39 ], [ %30, %28 ], [ %30, %28 ]
  %45 = add nuw nsw i64 %31, 1
  %46 = sext i32 %43 to i64
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %28, label %48, !prof !420, !llvm.loop !421

48:                                               ; preds = %42, %36, %28, %23, %19, %14, %7, %1
  %49 = phi i32 [ 1, %1 ], [ 0, %7 ], [ 1, %14 ], [ 0, %19 ], [ 1, %23 ], [ 1, %42 ], [ 0, %36 ], [ 0, %28 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_last_value(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !177 {
  %5 = load ptr, ptr %1, align 8, !tbaa !181
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  %11 = icmp ne i32 %3, 0
  br label %12

12:                                               ; preds = %9, %65
  %13 = phi ptr [ %7, %9 ], [ %67, %65 ]
  %14 = load i32, ptr %13, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %65 [
    i16 12, label %69
    i16 8, label %16
    i16 7, label %16
    i16 9, label %16
    i16 10, label %16
  ]

16:                                               ; preds = %12, %12, %12, %12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call ptr @find_reg_note(ptr noundef nonnull %13, i32 noundef 4, ptr noundef null) #14
  br label %28

24:                                               ; preds = %16
  %25 = tail call ptr @single_set_2(ptr noundef nonnull %13, ptr noundef nonnull %18) #14
  %26 = tail call ptr @find_reg_note(ptr noundef nonnull %13, i32 noundef 4, ptr noundef null) #14
  %27 = icmp eq ptr %25, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %22, %24
  %29 = phi ptr [ %23, %22 ], [ %26, %24 ]
  %30 = phi ptr [ %18, %22 ], [ %25, %24 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %32) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !178
  %38 = icmp eq ptr %29, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !178
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 3
  %45 = select i1 %44, ptr %37, ptr %41
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi ptr [ %37, %35 ], [ %45, %39 ]
  br i1 %10, label %53, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !178
  %51 = tail call i32 @modified_between_p(ptr noundef %47, ptr noundef %50, ptr noundef nonnull %2) #14, !range !273
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48, %46
  %54 = load i32, ptr %47, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #14
  %59 = icmp ugt i32 %58, 52
  %60 = or i1 %11, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  store ptr %13, ptr %1, align 8, !tbaa !181
  br label %69

62:                                               ; preds = %48, %57, %28, %24
  %63 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %13) #14, !range !273
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %12
  %66 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !178
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %12, !llvm.loop !422

69:                                               ; preds = %62, %12, %65, %4, %61
  %70 = phi ptr [ %47, %61 ], [ %0, %4 ], [ %0, %65 ], [ %0, %12 ], [ %0, %62 ]
  ret ptr %70
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 !prof !423 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %138, label %6, !prof !195

6:                                                ; preds = %4, %89
  %7 = phi ptr [ %91, %89 ], [ %2, %4 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -23
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 31)
  switch i32 %11, label %93 [
    i32 7, label %12
    i32 8, label %30
    i32 1, label %50
    i32 0, label %50
  ], !prof !424

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #14
  switch i32 %13, label %17 [
    i32 20, label %14
    i32 16, label %14
    i32 7, label %14
  ]

14:                                               ; preds = %12, %12, %12
  %15 = add i32 %0, -53
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %138, label %17, !prof !425

17:                                               ; preds = %12, %14
  %18 = icmp ult i32 %13, %1
  br i1 %18, label %19, label %138, !prof !426

19:                                               ; preds = %17
  %20 = icmp ult i32 %13, 53
  br i1 %20, label %21, label %25, !prof !427

21:                                               ; preds = %19
  %22 = lshr i32 %8, 16
  %23 = and i32 %22, 255
  %24 = tail call fastcc i32 @end_hard_regno(i32 noundef %23, i32 noundef %13) #14
  br label %27

25:                                               ; preds = %19
  %26 = add nuw i32 %13, 1
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ]
  %29 = icmp ugt i32 %28, %0
  br label %138

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %93, !prof !428

36:                                               ; preds = %30
  %37 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #14
  %38 = icmp ult i32 %37, 53
  br i1 %38, label %39, label %93, !prof !429

39:                                               ; preds = %36
  %40 = tail call i32 @subreg_regno(ptr noundef nonnull %7) #14
  %41 = icmp ult i32 %40, 53
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call i32 @subreg_nregs(ptr noundef nonnull %7) #14
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ 1, %39 ]
  %46 = add i32 %45, %40
  %47 = icmp ult i32 %40, %1
  %48 = icmp ugt i32 %46, %0
  %49 = select i1 %47, i1 %48, i1 false
  br label %138

50:                                               ; preds = %6, %6
  %51 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %52 = icmp eq ptr %51, %3
  br i1 %52, label %84, label %53, !prof !430

53:                                               ; preds = %50
  %54 = load ptr, ptr %51, align 8, !tbaa !178
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 39
  br i1 %57, label %58, label %76, !prof !431

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = icmp eq ptr %59, %3
  br i1 %60, label %80, label %61, !prof !432

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 8, !tbaa !178
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %80, !prof !433

66:                                               ; preds = %61
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %62) #14
  %68 = icmp ugt i32 %67, 52
  br i1 %68, label %69, label %80, !prof !433

69:                                               ; preds = %66
  %70 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %62, ptr noundef %3) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %138, !prof !433

72:                                               ; preds = %69
  %73 = load ptr, ptr %51, align 8, !tbaa !178
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  br label %76

76:                                               ; preds = %72, %53
  %77 = phi i32 [ %75, %72 ], [ %56, %53 ]
  %78 = phi ptr [ %73, %72 ], [ %54, %53 ]
  %79 = icmp eq i32 %77, 37
  br i1 %79, label %84, label %80, !prof !434

80:                                               ; preds = %58, %61, %66, %76
  %81 = phi ptr [ %78, %76 ], [ %54, %66 ], [ %54, %61 ], [ %54, %58 ]
  %82 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %81, ptr noundef %3) #14
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %138, !prof !435

84:                                               ; preds = %80, %76, %50
  %85 = icmp eq i32 %9, 25
  %86 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = icmp eq ptr %86, %3
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %138, label %89, !prof !436

89:                                               ; preds = %111, %84
  %90 = phi ptr [ %86, %84 ], [ %101, %111 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !178
  %92 = icmp eq ptr %91, null
  br i1 %92, label %138, label %6, !prof !437

93:                                               ; preds = %6, %30, %36
  %94 = zext nneg i32 %9 to i64
  %95 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !181
  %97 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %94
  %98 = load i8, ptr %97, align 1, !tbaa !178
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %138, label %100, !prof !438

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %102 = zext i8 %98 to i64
  br label %103

103:                                              ; preds = %100, %136
  %104 = phi i64 [ %102, %100 ], [ %105, %136 ]
  %105 = add nsw i64 %104, -1
  %106 = getelementptr inbounds i8, ptr %96, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !178
  switch i8 %107, label %136 [
    i8 101, label %108
    i8 69, label %117
  ], !prof !439

108:                                              ; preds = %103
  %109 = getelementptr inbounds [1 x %union.rtunion_def], ptr %101, i64 0, i64 %105
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %136, label %111, !prof !440

111:                                              ; preds = %108
  %112 = icmp eq i64 %105, 0
  br i1 %112, label %89, label %113, !prof !441

113:                                              ; preds = %111
  %114 = load ptr, ptr %109, align 8, !tbaa !178
  %115 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef %114, ptr noundef %3) #14
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %136, label %138, !prof !442

117:                                              ; preds = %103
  %118 = getelementptr inbounds [1 x %union.rtunion_def], ptr %101, i64 0, i64 %105
  %119 = load ptr, ptr %118, align 8, !tbaa !178
  %120 = load i32, ptr %119, align 8, !tbaa !183
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %136, label %122, !prof !443

122:                                              ; preds = %117
  %123 = zext nneg i32 %120 to i64
  br label %124

124:                                              ; preds = %122, %134
  %125 = phi i64 [ %123, %122 ], [ %126, %134 ]
  %126 = add nsw i64 %125, -1
  %127 = load ptr, ptr %118, align 8, !tbaa !178
  %128 = getelementptr inbounds %struct.rtvec_def, ptr %127, i64 0, i32 1, i64 %126
  %129 = icmp eq ptr %128, %3
  br i1 %129, label %134, label %130, !prof !444

130:                                              ; preds = %124
  %131 = load ptr, ptr %128, align 8, !tbaa !181
  %132 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef %131, ptr noundef %3) #14
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138, !prof !445

134:                                              ; preds = %124, %130
  %135 = icmp ult i64 %125, 2
  br i1 %135, label %136, label %124, !prof !446, !llvm.loop !447

136:                                              ; preds = %134, %117, %103, %108, %113
  %137 = icmp sgt i64 %104, 1
  br i1 %137, label %103, label %138, !prof !448, !llvm.loop !449

138:                                              ; preds = %89, %80, %69, %84, %93, %113, %136, %130, %4, %17, %27, %14, %44
  %139 = phi i1 [ %49, %44 ], [ true, %14 ], [ false, %17 ], [ %29, %27 ], [ false, %4 ], [ true, %130 ], [ true, %113 ], [ false, %136 ], [ false, %93 ], [ false, %89 ], [ true, %80 ], [ true, %69 ], [ false, %84 ]
  %140 = zext i1 %139 to i32
  ret i32 %140
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !prof !450 !PGOFuncName !451 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !178
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_regno(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !177 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #14
  %5 = load i32, ptr %3, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load i32, ptr %8, align 8, !tbaa !178
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = tail call i32 @subreg_regno_offset(i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %12) #14
  %14 = add i32 %13, %4
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_nregs(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !452 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #14
  %5 = tail call i32 @subreg_nregs_with_regno(i32 noundef %4, ptr noundef %0) #14
  ret i32 %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @note_uses(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !453 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi ptr [ %0, %3 ], [ %11, %9 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %100 [
    i16 14, label %9
    i16 15, label %12
    i16 5, label %25
    i16 24, label %40
    i16 17, label %42
    i16 29, label %55
    i16 22, label %57
    i16 18, label %59
    i16 19, label %59
    i16 25, label %72
    i16 23, label %80
  ], !prof !454

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %10, ptr noundef %2) #15
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %4

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = load i32, ptr %14, align 8, !tbaa !183
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %102, !prof !455

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %18, %17 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %13, align 8, !tbaa !178
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %21
  tail call void @note_uses(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2) #14
  %24 = icmp ugt i64 %20, 1
  br i1 %24, label %19, label %102, !prof !456, !llvm.loop !457

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !178
  %28 = load i32, ptr %27, align 8, !tbaa !183
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr %26, align 8, !tbaa !178
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !181
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1
  tail call void @note_uses(ptr noundef nonnull %38, ptr noundef %1, ptr noundef %2) #14
  %39 = icmp ugt i64 %33, 1
  br i1 %39, label %32, label %102, !llvm.loop !458

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !178
  %45 = load i32, ptr %44, align 8, !tbaa !183
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %42
  %48 = zext nneg i32 %45 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %48, %47 ], [ %51, %49 ]
  %51 = add nsw i64 %50, -1
  %52 = load ptr, ptr %43, align 8, !tbaa !178
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %51
  tail call void %1(ptr noundef nonnull %53, ptr noundef %2) #15
  %54 = icmp ugt i64 %50, 1
  br i1 %54, label %49, label %102, !llvm.loop !459

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

57:                                               ; preds = %4
  %58 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

59:                                               ; preds = %4, %4
  %60 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !178
  %62 = load i32, ptr %61, align 8, !tbaa !183
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = zext nneg i32 %62 to i64
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %65, %64 ], [ %68, %66 ]
  %68 = add nsw i64 %67, -1
  %69 = load ptr, ptr %60, align 8, !tbaa !178
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %68
  tail call void %1(ptr noundef nonnull %70, ptr noundef %2) #15
  %71 = icmp ugt i64 %67, 1
  br i1 %71, label %66, label %102, !llvm.loop !460

72:                                               ; preds = %4
  %73 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !178
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %78, label %102, !prof !461

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  br label %100

80:                                               ; preds = %4
  %81 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !178
  %83 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %1(ptr noundef nonnull %83, ptr noundef %2) #15
  %84 = load i32, ptr %82, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 120
  br i1 %86, label %87, label %90, !prof !462

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %1(ptr noundef nonnull %88, ptr noundef %2) #15
  %89 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %1(ptr noundef nonnull %89, ptr noundef %2) #15
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90, %95
  %92 = phi ptr [ %97, %95 ], [ %82, %90 ]
  %93 = load i32, ptr %92, align 8
  %94 = trunc i32 %93 to i16
  switch i16 %94, label %102 [
    i16 39, label %95
    i16 40, label %95
    i16 43, label %98
  ], !prof !463

95:                                               ; preds = %91, %91
  %96 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !178
  br label %91, !llvm.loop !464

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  br label %100

100:                                              ; preds = %4, %40, %55, %57, %78, %98
  %101 = phi ptr [ %99, %98 ], [ %79, %78 ], [ %58, %57 ], [ %56, %55 ], [ %41, %40 ], [ %5, %4 ]
  tail call void %1(ptr noundef nonnull %101, ptr noundef %2) #15
  br label %102

102:                                              ; preds = %91, %66, %49, %32, %19, %100, %59, %42, %25, %12, %72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dead_or_set_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !465 {
  %3 = load i32, ptr %1, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %5 [
    i16 46, label %26
    i16 37, label %6
  ], !prof !466

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1585, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %8 = icmp ult i32 %7, 53
  br i1 %8, label %9, label %14, !prof !467

9:                                                ; preds = %6
  %10 = load i32, ptr %1, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = tail call fastcc i32 @end_hard_regno(i32 noundef %12, i32 noundef %7) #14
  br label %16

14:                                               ; preds = %6
  %15 = add i32 %7, 1
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %13, %9 ], [ %15, %14 ]
  %18 = icmp ult i32 %7, %17
  br i1 %18, label %22, label %26, !prof !468

19:                                               ; preds = %22
  %20 = add i32 %23, 1
  %21 = icmp eq i32 %20, %17
  br i1 %21, label %26, label %22, !prof !469, !llvm.loop !470

22:                                               ; preds = %16, %19
  %23 = phi i32 [ %20, %19 ], [ %7, %16 ]
  %24 = tail call i32 @dead_or_set_regno_p(ptr noundef %0, i32 noundef %23) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %19, !prof !471

26:                                               ; preds = %22, %19, %16, %2
  %27 = phi i32 [ 1, %2 ], [ 1, %16 ], [ 0, %22 ], [ 1, %19 ]
  ret i32 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dead_or_set_regno_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !465 {
  %3 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %61, !prof !472

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %12, !prof !473

9:                                                ; preds = %5
  %10 = tail call i32 @find_regno_fusage(ptr noundef nonnull %0, i32 noundef 25, i32 noundef %1) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 14
  br i1 %17, label %18, label %22, !prof !473

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = load i32, ptr %20, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %21, %18 ], [ %15, %12 ]
  %24 = phi ptr [ %20, %18 ], [ %14, %12 ]
  %25 = trunc i32 %23 to i16
  switch i16 %25, label %61 [
    i16 23, label %26
    i16 15, label %31
  ], !prof !474

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !178
  %29 = tail call fastcc zeroext i8 @covers_regno_p(ptr noundef %28, i32 noundef %1) #14
  %30 = zext i8 %29 to i32
  br label %61

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !178
  %34 = load i32, ptr %33, align 8, !tbaa !183
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %61, label %36, !prof !475

36:                                               ; preds = %31
  %37 = zext nneg i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %59
  %39 = phi i64 [ %37, %36 ], [ %40, %59 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !181
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 14
  br i1 %45, label %46, label %50, !prof !476

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !178
  %49 = load i32, ptr %48, align 8
  br label %50

50:                                               ; preds = %46, %38
  %51 = phi i32 [ %49, %46 ], [ %43, %38 ]
  %52 = phi ptr [ %48, %46 ], [ %42, %38 ]
  %53 = trunc i32 %51 to i16
  switch i16 %53, label %59 [
    i16 23, label %54
    i16 25, label %54
  ], !prof !477

54:                                               ; preds = %50, %50
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !178
  %57 = tail call fastcc zeroext i8 @covers_regno_p(ptr noundef %56, i32 noundef %1) #14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61, !prof !478

59:                                               ; preds = %50, %54
  %60 = icmp ult i64 %39, 2
  br i1 %60, label %61, label %38, !prof !479, !llvm.loop !480

61:                                               ; preds = %54, %59, %31, %22, %9, %2, %26
  %62 = phi i32 [ %30, %26 ], [ 1, %2 ], [ 1, %9 ], [ 0, %22 ], [ 0, %31 ], [ 1, %54 ], [ 0, %59 ]
  ret i32 %62
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @find_regno_note(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !481 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %42, !prof !482

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12, !prof !483

12:                                               ; preds = %8, %38
  %13 = phi ptr [ %40, %38 ], [ %10, %8 ]
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %38, !prof !484

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %38, !prof !485

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #14
  %26 = icmp ugt i32 %25, %2
  br i1 %26, label %38, label %27, !prof !486

27:                                               ; preds = %24
  %28 = icmp ult i32 %25, 53
  br i1 %28, label %29, label %33, !prof !487

29:                                               ; preds = %27
  %30 = lshr i32 %21, 16
  %31 = and i32 %30, 255
  %32 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %25) #14
  br label %35

33:                                               ; preds = %27
  %34 = add i32 %25, 1
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %32, %29 ], [ %34, %33 ]
  %37 = icmp ugt i32 %36, %2
  br i1 %37, label %42, label %38, !prof !488

38:                                               ; preds = %12, %18, %24, %35
  %39 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !178
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %12, !prof !489, !llvm.loop !490

42:                                               ; preds = %35, %38, %8, %3
  %43 = phi ptr [ null, %3 ], [ null, %8 ], [ %13, %35 ], [ null, %38 ]
  ret ptr %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @find_regno_fusage(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !177 {
  %4 = icmp ugt i32 %2, 52
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9, %34
  %14 = phi ptr [ %36, %34 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %22) #14
  %28 = icmp ugt i32 %27, %2
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = lshr i32 %23, 16
  %31 = and i32 %30, 255
  %32 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %27) #14
  %33 = icmp ugt i32 %32, %2
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %26, %20, %13
  %35 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !178
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %13, !llvm.loop !491

38:                                               ; preds = %29, %34, %9, %3, %5
  %39 = phi i32 [ 0, %5 ], [ 0, %3 ], [ 0, %9 ], [ 1, %29 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @covers_regno_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !492 !PGOFuncName !493 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %26, !prof !494

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = load i32, ptr %8, align 8, !tbaa !183
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = zext nneg i32 %9 to i64
  br label %13

13:                                               ; preds = %11, %24
  %14 = phi i64 [ %12, %11 ], [ %15, %24 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !181
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %19, i32 noundef %1) #14, !range !311
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %13
  %25 = icmp ugt i64 %14, 1
  br i1 %25, label %13, label %28, !llvm.loop !495

26:                                               ; preds = %2
  %27 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %0, i32 noundef %1) #14, !range !311
  br label %28

28:                                               ; preds = %24, %21, %6, %26
  %29 = phi i8 [ %27, %26 ], [ 0, %6 ], [ 0, %24 ], [ 1, %21 ]
  ret i8 %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @find_reg_equal_equiv_note(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !496 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %31, !prof !497

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !498

10:                                               ; preds = %6, %27
  %11 = phi ptr [ %29, %27 ], [ %8, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = add nsw i32 %14, -3
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %27, !prof !499

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %26, !prof !500

23:                                               ; preds = %17
  %24 = tail call i32 @multiple_sets(ptr noundef nonnull %0) #14, !range !273
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31, !prof !501

26:                                               ; preds = %23, %17
  br label %31

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !178
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !prof !502, !llvm.loop !503

31:                                               ; preds = %27, %6, %1, %23, %26
  %32 = phi ptr [ %11, %26 ], [ null, %1 ], [ null, %23 ], [ null, %6 ], [ null, %27 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @find_constant_src(ptr noundef %0) local_unnamed_addr #2 !prof !177 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = tail call ptr @avoid_constant_pool_reference(ptr noundef %18) #15
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !210
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %39, label %26

26:                                               ; preds = %1, %15, %12
  %27 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !178
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !210
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %39, label %38

38:                                               ; preds = %29, %26
  br label %39

39:                                               ; preds = %29, %15, %38
  %40 = phi ptr [ null, %38 ], [ %19, %15 ], [ %31, %29 ]
  ret ptr %40
}

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_reg_note(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !504 {
  %4 = add i32 %0, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %12, !prof !505

6:                                                ; preds = %3
  %7 = tail call ptr @alloc_INSN_LIST(ptr noundef %1, ptr noundef %2) #15
  %8 = load i32, ptr %7, align 8
  %9 = shl nuw nsw i32 %0, 16
  %10 = and i32 %8, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %7, align 8
  br label %14

12:                                               ; preds = %3
  %13 = tail call ptr @alloc_EXPR_LIST(i32 noundef %0, ptr noundef %1, ptr noundef %2) #15
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_reg_note(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !506 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !178
  %6 = tail call ptr @alloc_reg_note(i32 noundef %1, ptr noundef %2, ptr noundef %5) #14
  store ptr %6, ptr %4, align 8, !tbaa !178
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_note(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 !prof !507 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4, !prof !508

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %17, label %8, !prof !509

8:                                                ; preds = %4, %11
  %9 = phi ptr [ %13, %11 ], [ %6, %4 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !510

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %8, !prof !511, !llvm.loop !512

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %17

17:                                               ; preds = %4, %15
  %18 = phi ptr [ %16, %15 ], [ %5, %4 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  store ptr %20, ptr %18, align 8, !tbaa !178
  br label %21

21:                                               ; preds = %8, %17
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i8
  %25 = add i8 %24, -3
  %26 = icmp ult i8 %25, 2
  br i1 %26, label %27, label %28, !prof !513

27:                                               ; preds = %21
  tail call void @df_notes_rescan(ptr noundef %0) #15
  br label %28

28:                                               ; preds = %27, %21, %2
  ret void
}

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_reg_equal_equiv_notes(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !177 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %14, %16 ], [ %3, %1 ]
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load i32, ptr %6, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -3
  %12 = icmp ult i32 %11, 2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  br i1 %12, label %15, label %16

15:                                               ; preds = %5
  store ptr %14, ptr %7, align 8, !tbaa !181
  br label %16

16:                                               ; preds = %5, %15
  %17 = phi ptr [ %7, %15 ], [ %13, %5 ]
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %5, !llvm.loop !514

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @in_expr_list_p(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 !prof !515 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !516

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !517, !llvm.loop !518

13:                                               ; preds = %4, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 0, %9 ], [ 1, %4 ]
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_node_from_expr_list(ptr noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !515 {
  %3 = load ptr, ptr %1, align 8, !tbaa !178
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5, !prof !516

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %21

9:                                                ; preds = %21
  %10 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %21, !llvm.loop !519

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %3, %5 ], [ %24, %9 ]
  %15 = phi ptr [ null, %5 ], [ %22, %9 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = select i1 %16, ptr %1, ptr %19
  store ptr %18, ptr %20, align 8, !tbaa !178
  br label %26

21:                                               ; preds = %5, %9
  %22 = phi ptr [ %24, %9 ], [ %3, %5 ]
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !prof !517, !llvm.loop !519

26:                                               ; preds = %21, %13, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @volatile_insn_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !520 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %9 [
    i16 44, label %47
    i16 45, label %47
    i16 30, label %47
    i16 35, label %47
    i16 32, label %47
    i16 31, label %47
    i16 33, label %47
    i16 46, label %47
    i16 36, label %47
    i16 37, label %47
    i16 38, label %47
    i16 25, label %47
    i16 20, label %47
    i16 21, label %47
    i16 26, label %47
    i16 43, label %47
    i16 19, label %5
    i16 16, label %6
    i16 17, label %6
  ], !prof !521

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1, %1
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1, %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !178
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16, !prof !522

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %45
  %20 = phi i64 [ %18, %16 ], [ %21, %45 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !178
  switch i8 %23, label %45 [
    i8 101, label %31
    i8 69, label %24
  ], !prof !523

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !178
  %27 = load i32, ptr %26, align 8, !tbaa !183
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %45, !prof !524

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  br label %39

31:                                               ; preds = %19
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %33 = load ptr, ptr %32, align 8, !tbaa !178
  %34 = tail call i32 @volatile_insn_p(ptr noundef %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %47, !prof !525

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %45, label %39, !prof !526, !llvm.loop !527

39:                                               ; preds = %29, %36
  %40 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !181
  %43 = tail call i32 @volatile_insn_p(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %47, !prof !528

45:                                               ; preds = %36, %24, %19, %31
  %46 = icmp sgt i64 %20, 1
  br i1 %46, label %19, label %47, !prof !529, !llvm.loop !530

47:                                               ; preds = %45, %31, %39, %9, %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %5
  %48 = phi i32 [ 1, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %6 ], [ 0, %9 ], [ 1, %39 ], [ 1, %31 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @volatile_refs_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !531 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %9 [
    i16 44, label %47
    i16 45, label %47
    i16 30, label %47
    i16 35, label %47
    i16 32, label %47
    i16 31, label %47
    i16 33, label %47
    i16 46, label %47
    i16 36, label %47
    i16 37, label %47
    i16 38, label %47
    i16 25, label %47
    i16 20, label %47
    i16 21, label %47
    i16 19, label %5
    i16 43, label %6
    i16 16, label %6
    i16 17, label %6
  ], !prof !532

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1, %1, %1
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %47, !prof !533

9:                                                ; preds = %1, %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !178
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16, !prof !534

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %45
  %20 = phi i64 [ %18, %16 ], [ %21, %45 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !178
  switch i8 %23, label %45 [
    i8 101, label %31
    i8 69, label %24
  ], !prof !535

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !178
  %27 = load i32, ptr %26, align 8, !tbaa !183
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %45, !prof !536

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  br label %39

31:                                               ; preds = %19
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %33 = load ptr, ptr %32, align 8, !tbaa !178
  %34 = tail call i32 @volatile_refs_p(ptr noundef %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %47, !prof !537

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %45, label %39, !prof !538, !llvm.loop !539

39:                                               ; preds = %29, %36
  %40 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !181
  %43 = tail call i32 @volatile_refs_p(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %47, !prof !540

45:                                               ; preds = %36, %24, %19, %31
  %46 = icmp sgt i64 %20, 1
  br i1 %46, label %19, label %47, !prof !541, !llvm.loop !542

47:                                               ; preds = %45, %31, %39, %9, %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %5
  %48 = phi i32 [ 1, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %6 ], [ 0, %9 ], [ 1, %39 ], [ 1, %31 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_p_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !543 {
  %3 = icmp ne i32 %1, 0
  %4 = icmp eq ptr %0, null
  br i1 %4, label %377, label %5, !prof !544

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = trunc i32 %6 to i16
  switch i16 %8, label %326 [
    i16 30, label %377
    i16 32, label %377
    i16 31, label %377
    i16 33, label %377
    i16 45, label %377
    i16 44, label %377
    i16 35, label %377
    i16 36, label %377
    i16 46, label %377
    i16 37, label %377
    i16 38, label %377
    i16 18, label %9
    i16 19, label %9
    i16 16, label %12
    i16 29, label %12
    i16 17, label %13
    i16 43, label %16
    i16 55, label %79
    i16 58, label %79
    i16 59, label %79
    i16 60, label %79
    i16 3, label %126
    i16 82, label %127
    i16 83, label %127
    i16 84, label %127
    i16 85, label %127
    i16 97, label %127
    i16 48, label %127
    i16 81, label %211
    i16 80, label %211
    i16 104, label %295
    i16 51, label %337
    i16 111, label %337
    i16 39, label %337
  ], !prof !545

9:                                                ; preds = %5, %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 63), align 8, !tbaa !546
  %11 = tail call i32 %10(ptr noundef nonnull %0, i32 noundef %1) #15
  br label %377

12:                                               ; preds = %5, %5
  br label %377

13:                                               ; preds = %5
  %14 = lshr i32 %6, 27
  %15 = and i32 %14, 1
  br label %377

16:                                               ; preds = %5
  %17 = load i32, ptr @flag_stack_check, align 4, !tbaa !210
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19, !prof !558

19:                                               ; preds = %16
  %20 = and i32 %6, 134217728
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !181
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %377, label %27

27:                                               ; preds = %22, %19, %16
  %28 = and i32 %6, 33554432
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %3, %29
  br i1 %30, label %31, label %377, !prof !559

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !178
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !560

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !561
  %39 = icmp eq ptr %38, null
  br i1 %39, label %72, label %54, !prof !563

40:                                               ; preds = %31
  %41 = lshr i32 %6, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %72, label %44, !prof !564

44:                                               ; preds = %40
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !178
  %48 = zext i8 %47 to i64
  %49 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %48) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %72, label %51, !prof !565

51:                                               ; preds = %44
  %52 = load ptr, ptr %33, align 8, !tbaa !178
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !566

54:                                               ; preds = %36, %51
  %55 = phi ptr [ %52, %51 ], [ %34, %36 ]
  %56 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !561
  br label %68

58:                                               ; preds = %51
  %59 = load i32, ptr %0, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = icmp ne i32 %61, 1
  tail call void @llvm.assume(i1 %62)
  %63 = zext nneg i32 %61 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !178
  %66 = zext i8 %65 to i64
  %67 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %66) #15
  br label %68

68:                                               ; preds = %58, %54
  %69 = phi ptr [ %57, %54 ], [ %67, %58 ]
  %70 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !178
  br label %72

72:                                               ; preds = %36, %44, %40, %68
  %73 = phi i64 [ %71, %68 ], [ 0, %40 ], [ 0, %44 ], [ 0, %36 ]
  %74 = load ptr, ptr %32, align 8, !tbaa !178
  %75 = load i32, ptr %0, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %74, i64 noundef 0, i64 noundef %73, i32 noundef %77) #14
  br label %377

79:                                               ; preds = %5, %5, %5, %5
  %80 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !210
  %81 = icmp eq i32 %80, 0
  %82 = lshr i32 %6, 16
  %83 = and i32 %82, 255
  %84 = zext nneg i32 %83 to i64
  br i1 %81, label %107, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %84
  %87 = load i8, ptr %86, align 1, !tbaa !178
  switch i8 %87, label %107 [
    i8 8, label %88
    i8 9, label %88
    i8 11, label %88
    i8 17, label %88
  ]

88:                                               ; preds = %85, %85, %85, %85
  %89 = and i8 %87, -2
  %90 = icmp eq i8 %89, 8
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %84
  %93 = load i8, ptr %92, align 1, !tbaa !178
  %94 = zext i8 %93 to i32
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i32 [ %83, %88 ], [ %94, %91 ]
  %97 = add nsw i32 %96, -38
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !181
  %101 = getelementptr inbounds %struct.real_format, ptr %100, i64 0, i32 11
  %102 = load i8, ptr %101, align 2, !tbaa !567
  %103 = icmp eq i8 %102, 0
  %104 = load i32, ptr @flag_finite_math_only, align 4
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %377

107:                                              ; preds = %79, %85, %95
  %108 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %84
  %109 = load i8, ptr %108, align 1, !tbaa !178
  %110 = and i8 %109, -2
  %111 = icmp eq i8 %110, 8
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, ptr @flag_trapping_math, align 4, !tbaa !210
  br label %377

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !178
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65535
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !210
  %122 = icmp ne i32 %121, 9
  %123 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %124 = icmp eq ptr %116, %123
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %377, label %337

126:                                              ; preds = %5
  br label %377

127:                                              ; preds = %5, %5, %5, %5, %5, %5
  %128 = load i32, ptr @flag_trapping_math, align 4, !tbaa !210
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %337, label %130, !prof !569

130:                                              ; preds = %127
  %131 = lshr i32 %6, 16
  %132 = and i32 %131, 255
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !178
  switch i8 %135, label %155 [
    i8 8, label %136
    i8 9, label %136
    i8 11, label %136
    i8 17, label %136
  ], !prof !570

136:                                              ; preds = %130, %130, %130, %130
  %137 = and i8 %135, -2
  %138 = icmp eq i8 %137, 8
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %133
  %141 = load i8, ptr %140, align 1, !tbaa !178
  %142 = zext i8 %141 to i32
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i32 [ %132, %136 ], [ %142, %139 ]
  %145 = add nsw i32 %144, -38
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !181
  %149 = getelementptr inbounds %struct.real_format, ptr %148, i64 0, i32 11
  %150 = load i8, ptr %149, align 2, !tbaa !567
  %151 = icmp eq i8 %150, 0
  %152 = load i32, ptr @flag_finite_math_only, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %155, label %377

155:                                              ; preds = %130, %143
  %156 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !178
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !178
  switch i8 %163, label %183 [
    i8 8, label %164
    i8 9, label %164
    i8 11, label %164
    i8 17, label %164
  ], !prof !570

164:                                              ; preds = %155, %155, %155, %155
  %165 = and i8 %163, -2
  %166 = icmp eq i8 %165, 8
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %161
  %169 = load i8, ptr %168, align 1, !tbaa !178
  %170 = zext i8 %169 to i32
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i32 [ %160, %164 ], [ %170, %167 ]
  %173 = add nsw i32 %172, -38
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !181
  %177 = getelementptr inbounds %struct.real_format, ptr %176, i64 0, i32 11
  %178 = load i8, ptr %177, align 2, !tbaa !567
  %179 = icmp eq i8 %178, 0
  %180 = load i32, ptr @flag_finite_math_only, align 4
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %183, label %377

183:                                              ; preds = %155, %171
  %184 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !178
  %186 = load i32, ptr %185, align 8
  %187 = lshr i32 %186, 16
  %188 = and i32 %187, 255
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !178
  switch i8 %191, label %337 [
    i8 8, label %192
    i8 9, label %192
    i8 11, label %192
    i8 17, label %192
  ], !prof !570

192:                                              ; preds = %183, %183, %183, %183
  %193 = and i8 %191, -2
  %194 = icmp eq i8 %193, 8
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %189
  %197 = load i8, ptr %196, align 1, !tbaa !178
  %198 = zext i8 %197 to i32
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %188, %192 ], [ %198, %195 ]
  %201 = add nsw i32 %200, -38
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !181
  %205 = getelementptr inbounds %struct.real_format, ptr %204, i64 0, i32 11
  %206 = load i8, ptr %205, align 2, !tbaa !567
  %207 = icmp eq i8 %206, 0
  %208 = load i32, ptr @flag_finite_math_only, align 4
  %209 = icmp ne i32 %208, 0
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %337, label %377

211:                                              ; preds = %5, %5
  %212 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !210
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %337, label %214, !prof !571

214:                                              ; preds = %211
  %215 = lshr i32 %6, 16
  %216 = and i32 %215, 255
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !178
  switch i8 %219, label %239 [
    i8 8, label %220
    i8 9, label %220
    i8 11, label %220
    i8 17, label %220
  ]

220:                                              ; preds = %214, %214, %214, %214
  %221 = and i8 %219, -2
  %222 = icmp eq i8 %221, 8
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %217
  %225 = load i8, ptr %224, align 1, !tbaa !178
  %226 = zext i8 %225 to i32
  br label %227

227:                                              ; preds = %223, %220
  %228 = phi i32 [ %216, %220 ], [ %226, %223 ]
  %229 = add nsw i32 %228, -38
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !181
  %233 = getelementptr inbounds %struct.real_format, ptr %232, i64 0, i32 11
  %234 = load i8, ptr %233, align 2, !tbaa !567
  %235 = icmp eq i8 %234, 0
  %236 = load i32, ptr @flag_finite_math_only, align 4
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %235, i1 true, i1 %237
  br i1 %238, label %239, label %377

239:                                              ; preds = %214, %227
  %240 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !178
  %242 = load i32, ptr %241, align 8
  %243 = lshr i32 %242, 16
  %244 = and i32 %243, 255
  %245 = zext nneg i32 %244 to i64
  %246 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !178
  switch i8 %247, label %267 [
    i8 8, label %248
    i8 9, label %248
    i8 11, label %248
    i8 17, label %248
  ]

248:                                              ; preds = %239, %239, %239, %239
  %249 = and i8 %247, -2
  %250 = icmp eq i8 %249, 8
  br i1 %250, label %255, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %245
  %253 = load i8, ptr %252, align 1, !tbaa !178
  %254 = zext i8 %253 to i32
  br label %255

255:                                              ; preds = %251, %248
  %256 = phi i32 [ %244, %248 ], [ %254, %251 ]
  %257 = add nsw i32 %256, -38
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !181
  %261 = getelementptr inbounds %struct.real_format, ptr %260, i64 0, i32 11
  %262 = load i8, ptr %261, align 2, !tbaa !567
  %263 = icmp eq i8 %262, 0
  %264 = load i32, ptr @flag_finite_math_only, align 4
  %265 = icmp ne i32 %264, 0
  %266 = select i1 %263, i1 true, i1 %265
  br i1 %266, label %267, label %377

267:                                              ; preds = %239, %255
  %268 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !178
  %270 = load i32, ptr %269, align 8
  %271 = lshr i32 %270, 16
  %272 = and i32 %271, 255
  %273 = zext nneg i32 %272 to i64
  %274 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !178
  switch i8 %275, label %337 [
    i8 8, label %276
    i8 9, label %276
    i8 11, label %276
    i8 17, label %276
  ]

276:                                              ; preds = %267, %267, %267, %267
  %277 = and i8 %275, -2
  %278 = icmp eq i8 %277, 8
  br i1 %278, label %283, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %273
  %281 = load i8, ptr %280, align 1, !tbaa !178
  %282 = zext i8 %281 to i32
  br label %283

283:                                              ; preds = %279, %276
  %284 = phi i32 [ %272, %276 ], [ %282, %279 ]
  %285 = add nsw i32 %284, -38
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !181
  %289 = getelementptr inbounds %struct.real_format, ptr %288, i64 0, i32 11
  %290 = load i8, ptr %289, align 2, !tbaa !567
  %291 = icmp eq i8 %290, 0
  %292 = load i32, ptr @flag_finite_math_only, align 4
  %293 = icmp ne i32 %292, 0
  %294 = select i1 %291, i1 true, i1 %293
  br i1 %294, label %337, label %377

295:                                              ; preds = %5
  %296 = load i32, ptr @flag_trapping_math, align 4, !tbaa !210
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %337, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !178
  %301 = load i32, ptr %300, align 8
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !178
  switch i8 %306, label %337 [
    i8 8, label %307
    i8 9, label %307
    i8 11, label %307
    i8 17, label %307
  ]

307:                                              ; preds = %298, %298, %298, %298
  %308 = and i8 %306, -2
  %309 = icmp eq i8 %308, 8
  br i1 %309, label %314, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %304
  %312 = load i8, ptr %311, align 1, !tbaa !178
  %313 = zext i8 %312 to i32
  br label %314

314:                                              ; preds = %310, %307
  %315 = phi i32 [ %303, %307 ], [ %313, %310 ]
  %316 = add nsw i32 %315, -38
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !181
  %320 = getelementptr inbounds %struct.real_format, ptr %319, i64 0, i32 11
  %321 = load i8, ptr %320, align 2, !tbaa !567
  %322 = icmp eq i8 %321, 0
  %323 = load i32, ptr @flag_finite_math_only, align 4
  %324 = icmp ne i32 %323, 0
  %325 = select i1 %322, i1 true, i1 %324
  br i1 %325, label %337, label %377

326:                                              ; preds = %5
  %327 = lshr i32 %6, 16
  %328 = and i32 %327, 255
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !178
  %332 = and i8 %331, -2
  %333 = icmp eq i8 %332, 8
  br i1 %333, label %334, label %337, !prof !572

334:                                              ; preds = %326
  %335 = load i32, ptr @flag_trapping_math, align 4, !tbaa !210
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %377

337:                                              ; preds = %211, %326, %298, %267, %183, %114, %334, %5, %5, %5, %295, %314, %283, %199, %127
  %338 = zext nneg i32 %7 to i64
  %339 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !181
  %341 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %338
  %342 = load i8, ptr %341, align 1, !tbaa !178
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %377, label %344, !prof !573

344:                                              ; preds = %337
  %345 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %346 = zext i8 %342 to i64
  br label %347

347:                                              ; preds = %344, %375
  %348 = phi i64 [ %346, %344 ], [ %349, %375 ]
  %349 = add nsw i64 %348, -1
  %350 = getelementptr inbounds i8, ptr %340, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !178
  switch i8 %351, label %375 [
    i8 101, label %357
    i8 69, label %352
  ], !prof !574

352:                                              ; preds = %347
  %353 = getelementptr inbounds [1 x %union.rtunion_def], ptr %345, i64 0, i64 %349
  %354 = load ptr, ptr %353, align 8, !tbaa !178
  %355 = load i32, ptr %354, align 8, !tbaa !183
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %368, label %375, !prof !575

357:                                              ; preds = %347
  %358 = getelementptr inbounds [1 x %union.rtunion_def], ptr %345, i64 0, i64 %349
  %359 = load ptr, ptr %358, align 8, !tbaa !178
  %360 = tail call i32 @may_trap_p_1(ptr noundef %359, i32 noundef %1) #14
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %375, label %377, !prof !576

362:                                              ; preds = %368
  %363 = add nuw nsw i64 %369, 1
  %364 = load ptr, ptr %353, align 8, !tbaa !178
  %365 = load i32, ptr %364, align 8, !tbaa !183
  %366 = sext i32 %365 to i64
  %367 = icmp slt i64 %363, %366
  br i1 %367, label %368, label %375, !prof !577, !llvm.loop !578

368:                                              ; preds = %352, %362
  %369 = phi i64 [ %363, %362 ], [ 0, %352 ]
  %370 = phi ptr [ %364, %362 ], [ %354, %352 ]
  %371 = getelementptr inbounds %struct.rtvec_def, ptr %370, i64 0, i32 1, i64 %369
  %372 = load ptr, ptr %371, align 8, !tbaa !181
  %373 = tail call i32 @may_trap_p_1(ptr noundef %372, i32 noundef %1) #14
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %362, label %377, !prof !579

375:                                              ; preds = %362, %352, %347, %357
  %376 = icmp sgt i64 %348, 1
  br i1 %376, label %347, label %377, !prof !580, !llvm.loop !581

377:                                              ; preds = %357, %375, %368, %337, %27, %334, %314, %255, %283, %227, %171, %199, %143, %114, %95, %22, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %2, %126, %112, %72, %13, %12, %9
  %378 = phi i32 [ 1, %126 ], [ %113, %112 ], [ %78, %72 ], [ %15, %13 ], [ 1, %12 ], [ %11, %9 ], [ 0, %2 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 1, %22 ], [ 1, %95 ], [ 1, %114 ], [ 1, %143 ], [ 1, %199 ], [ 1, %171 ], [ 1, %227 ], [ 1, %283 ], [ 1, %255 ], [ 1, %314 ], [ 1, %334 ], [ 0, %27 ], [ 0, %337 ], [ 1, %368 ], [ 1, %357 ], [ 0, %375 ]
  ret i32 %378
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_p(ptr noundef %0) local_unnamed_addr #2 !prof !582 {
  %2 = tail call i32 @may_trap_p_1(ptr noundef %0, i32 noundef 0) #14
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_or_fault_p(ptr noundef %0) local_unnamed_addr #2 !prof !177 {
  %2 = tail call i32 @may_trap_p_1(ptr noundef %0, i32 noundef 1) #14
  ret i32 %2
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inequality_comparisons_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !177 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %5 [
    i16 37, label %43
    i16 38, label %43
    i16 36, label %43
    i16 46, label %43
    i16 30, label %43
    i16 32, label %43
    i16 31, label %43
    i16 33, label %43
    i16 35, label %43
    i16 44, label %43
    i16 45, label %43
    i16 85, label %4
    i16 89, label %4
    i16 83, label %4
    i16 87, label %4
    i16 84, label %4
    i16 88, label %4
    i16 82, label %4
    i16 86, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %43

5:                                                ; preds = %1
  %6 = and i32 %2, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !178
  %10 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = zext i8 %9 to i64
  br label %16

16:                                               ; preds = %13, %40
  %17 = phi i64 [ 0, %13 ], [ %41, %40 ]
  %18 = getelementptr inbounds i8, ptr %11, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !178
  switch i8 %19, label %40 [
    i8 101, label %20
    i8 69, label %25
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = tail call i32 @inequality_comparisons_p(ptr noundef %22) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %43

25:                                               ; preds = %16
  %26 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %17
  %27 = load ptr, ptr %26, align 8, !tbaa !178
  %28 = load i32, ptr %27, align 8, !tbaa !183
  %29 = zext i32 %28 to i64
  br label %30

30:                                               ; preds = %34, %25
  %31 = phi i64 [ %35, %34 ], [ %29, %25 ]
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = add nsw i64 %31, -1
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !181
  %38 = tail call i32 @inequality_comparisons_p(ptr noundef %37) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %30, label %43, !llvm.loop !583

40:                                               ; preds = %30, %16, %20
  %41 = add nuw nsw i64 %17, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %43, label %16, !llvm.loop !584

43:                                               ; preds = %20, %40, %34, %5, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %44 = phi i32 [ 1, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %5 ], [ 1, %34 ], [ 1, %20 ], [ 0, %40 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !240 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5, !prof !585

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %94, label %12, !prof !585

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  %11 = select i1 %10, ptr %2, ptr null, !prof !586
  br label %94

12:                                               ; preds = %5
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %94, label %14, !prof !586

14:                                               ; preds = %12
  %15 = trunc i32 %6 to i16
  switch i16 %15, label %56 [
    i16 39, label %16
    i16 99, label %37
  ], !prof !587

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = tail call ptr @replace_rtx(ptr noundef %18, ptr noundef %1, ptr noundef %2) #14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 30
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load i32, ptr %0, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = load ptr, ptr %17, align 8, !tbaa !178
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load i32, ptr %31, align 8, !tbaa !178
  %33 = tail call ptr @simplify_subreg(i32 noundef %26, ptr noundef nonnull %19, i32 noundef %30, i32 noundef %32) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %94

35:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2509, ptr noundef nonnull @.str.1) #15
  br label %94

36:                                               ; preds = %16
  store ptr %19, ptr %17, align 8, !tbaa !178
  br label %94

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !178
  %40 = tail call ptr @replace_rtx(ptr noundef %39, ptr noundef %1, ptr noundef %2) #14
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 30
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i32, ptr %0, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = load ptr, ptr %38, align 8, !tbaa !178
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = tail call ptr @simplify_unary_operation(i32 noundef 99, i32 noundef %47, ptr noundef nonnull %40, i32 noundef %51) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %94

54:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2524, ptr noundef nonnull @.str.1) #15
  br label %94

55:                                               ; preds = %37
  store ptr %40, ptr %38, align 8, !tbaa !178
  br label %94

56:                                               ; preds = %14
  %57 = zext nneg i32 %7 to i64
  %58 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !181
  %60 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %57
  %61 = load i8, ptr %60, align 1, !tbaa !178
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %94, label %63, !prof !588

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %65 = zext i8 %61 to i64
  br label %66

66:                                               ; preds = %63, %92
  %67 = phi i64 [ %65, %63 ], [ %68, %92 ]
  %68 = add nsw i64 %67, -1
  %69 = getelementptr inbounds i8, ptr %59, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !178
  switch i8 %70, label %92 [
    i8 101, label %71
    i8 69, label %75
  ], !prof !589

71:                                               ; preds = %66
  %72 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %68
  %73 = load ptr, ptr %72, align 8, !tbaa !178
  %74 = tail call ptr @replace_rtx(ptr noundef %73, ptr noundef %1, ptr noundef %2) #14
  store ptr %74, ptr %72, align 8, !tbaa !178
  br label %92

75:                                               ; preds = %66
  %76 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %68
  %77 = load ptr, ptr %76, align 8, !tbaa !178
  %78 = load i32, ptr %77, align 8, !tbaa !183
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = zext nneg i32 %78 to i64
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ %81, %80 ], [ %84, %82 ]
  %84 = add nsw i64 %83, -1
  %85 = load ptr, ptr %76, align 8, !tbaa !178
  %86 = getelementptr inbounds %struct.rtvec_def, ptr %85, i64 0, i32 1, i64 %84
  %87 = load ptr, ptr %86, align 8, !tbaa !181
  %88 = tail call ptr @replace_rtx(ptr noundef %87, ptr noundef %1, ptr noundef %2) #14
  %89 = load ptr, ptr %76, align 8, !tbaa !178
  %90 = getelementptr inbounds %struct.rtvec_def, ptr %89, i64 0, i32 1, i64 %84
  store ptr %88, ptr %90, align 8, !tbaa !181
  %91 = icmp ugt i64 %83, 1
  br i1 %91, label %82, label %92, !llvm.loop !590

92:                                               ; preds = %82, %75, %66, %71
  %93 = icmp sgt i64 %67, 1
  br i1 %93, label %66, label %94, !prof !591, !llvm.loop !592

94:                                               ; preds = %92, %56, %9, %12, %55, %44, %54, %36, %23, %35, %5
  %95 = phi ptr [ %0, %5 ], [ %33, %23 ], [ null, %35 ], [ %0, %36 ], [ %52, %44 ], [ null, %54 ], [ %0, %55 ], [ %2, %12 ], [ %11, %9 ], [ %0, %56 ], [ %0, %92 ]
  ret ptr %95
}

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @replace_label(ptr nocapture noundef %0, ptr noundef %1) #2 !prof !177 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !181
  %5 = load ptr, ptr %1, align 8, !tbaa !593
  %6 = getelementptr inbounds %struct.replace_label_data, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !595
  %8 = getelementptr inbounds %struct.replace_label_data, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !596
  %10 = icmp eq ptr %4, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, 67174399
  %14 = icmp eq i32 %13, 67108909
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = tail call ptr @get_pool_constant(ptr noundef nonnull %4) #15
  %17 = tail call i32 @rtx_referenced_p(ptr noundef %5, ptr noundef %16) #14, !range !597
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %20 = tail call ptr @copy_rtx(ptr noundef %16) #15
  store ptr %20, ptr %3, align 8, !tbaa !181
  store i8 0, ptr %8, align 8, !tbaa !596
  %21 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @replace_label, ptr noundef nonnull %1) #14, !range !597
  store i8 %9, ptr %8, align 8, !tbaa !596
  %22 = call i32 @get_pool_mode(ptr noundef nonnull %4) #15
  %23 = load ptr, ptr %3, align 8, !tbaa !181
  %24 = call ptr @force_const_mem(i32 noundef %22, ptr noundef %23) #15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !178
  %27 = call ptr @replace_rtx(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %26) #14
  store ptr %27, ptr %0, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %48

28:                                               ; preds = %11
  %29 = trunc i32 %12 to i16
  switch i16 %29, label %48 [
    i16 9, label %30
    i16 44, label %35
    i16 4, label %35
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = icmp eq ptr %32, %5
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  store ptr %7, ptr %31, align 8, !tbaa !178
  br label %48

35:                                               ; preds = %28, %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !178
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  store ptr %7, ptr %36, align 8, !tbaa !178
  %40 = icmp eq i8 %9, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !178
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !178
  %45 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !178
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr %45, align 8, !tbaa !178
  br label %48

48:                                               ; preds = %28, %30, %34, %35, %39, %41, %15, %19, %2
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_referenced_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !177 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !181
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @rtx_referenced_p_1, ptr noundef %0) #14, !range !597
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @for_each_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !598 {
  %4 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #15
  switch i32 %4, label %5 [
    i32 -1, label %18
    i32 0, label %6
  ], !prof !599

5:                                                ; preds = %3
  br label %18

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !181
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !600

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !210
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16, !prof !601

16:                                               ; preds = %9
  %17 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %7, i32 noundef %14, ptr noundef %1, ptr noundef %2) #14, !range !597
  br label %18

18:                                               ; preds = %9, %6, %3, %16, %5
  %19 = phi i32 [ %4, %5 ], [ %17, %16 ], [ 0, %3 ], [ 0, %6 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rtx_referenced_p_1(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !prof !177 !PGOFuncName !602 {
  %3 = load ptr, ptr %0, align 8, !tbaa !181
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  %7 = zext i1 %6 to i32
  br label %29

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 44
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 12
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = icmp eq ptr %18, %1
  %20 = zext i1 %19 to i32
  br label %29

21:                                               ; preds = %8
  %22 = and i32 %9, 67174399
  %23 = icmp eq i32 %22, 67108909
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = tail call ptr @get_pool_constant(ptr noundef nonnull %3) #15
  %26 = tail call i32 @rtx_referenced_p(ptr noundef %1, ptr noundef %25) #14, !range !597
  br label %29

27:                                               ; preds = %12, %21
  %28 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %1) #15
  br label %29

29:                                               ; preds = %27, %24, %16, %5
  %30 = phi i32 [ %7, %5 ], [ %20, %16 ], [ %26, %24 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tablejump_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 !prof !603 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %30, !prof !604

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11, !prof !605

11:                                               ; preds = %7
  %12 = tail call ptr @next_active_insn(ptr noundef nonnull %9) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14, !prof !606

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %30, !prof !607

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp eq i32 %22, 20
  br i1 %23, label %24, label %30, !prof !608

24:                                               ; preds = %18
  %25 = icmp eq ptr %1, null
  br i1 %25, label %27, label %26, !prof !609

26:                                               ; preds = %24
  store ptr %9, ptr %1, align 8, !tbaa !181
  br label %27

27:                                               ; preds = %26, %24
  %28 = icmp eq ptr %2, null
  br i1 %28, label %30, label %29, !prof !610

29:                                               ; preds = %27
  store ptr %12, ptr %2, align 8, !tbaa !181
  br label %30

30:                                               ; preds = %18, %3, %7, %11, %14, %27, %29
  %31 = phi i8 [ 1, %29 ], [ 1, %27 ], [ 0, %18 ], [ 0, %14 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i8 %31
}

; Function Attrs: optsize
declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @computed_jump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !611 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %75, !prof !612

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %75, !prof !613

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %75 [
    i16 15, label %14
    i16 23, label %66
  ], !prof !614

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = load i32, ptr %16, align 8, !tbaa !183
  %18 = add i32 %17, -1
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %14
  %21 = zext nneg i32 %18 to i64
  br label %22

22:                                               ; preds = %20, %37
  %23 = phi i64 [ %21, %20 ], [ %39, %37 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %37 ]
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !181
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 24
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 44
  %36 = select i1 %35, i32 1, i32 %24
  br label %37

37:                                               ; preds = %30, %22
  %38 = phi i32 [ %24, %22 ], [ %36, %30 ]
  %39 = add nsw i64 %23, -1
  %40 = icmp sgt i64 %23, 0
  br i1 %40, label %22, label %41, !llvm.loop !615

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, 0
  %43 = and i1 %42, %19
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load ptr, ptr @global_rtl, align 16
  %46 = zext nneg i32 %18 to i64
  br label %47

47:                                               ; preds = %44, %63
  %48 = phi i64 [ %46, %44 ], [ %64, %63 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !181
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 23
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !178
  %57 = icmp eq ptr %56, %45
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !178
  %61 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %60) #14, !range !273
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %47, %54, %58
  %64 = add nsw i64 %48, -1
  %65 = icmp sgt i64 %48, 0
  br i1 %65, label %47, label %75, !llvm.loop !616

66:                                               ; preds = %11
  %67 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !178
  %69 = load ptr, ptr @global_rtl, align 16, !tbaa !181
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !178
  %74 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %73) #14, !range !273
  br label %75

75:                                               ; preds = %63, %58, %14, %71, %5, %1, %66, %41, %11
  %76 = phi i32 [ 0, %11 ], [ 0, %41 ], [ 0, %66 ], [ 0, %1 ], [ 0, %5 ], [ %74, %71 ], [ 0, %14 ], [ 0, %63 ], [ 1, %58 ]
  ret i32 %76
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @computed_jump_p_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !177 !PGOFuncName !617 {
  br label %2

2:                                                ; preds = %21, %1
  %3 = phi ptr [ %0, %1 ], [ %23, %21 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %24 [
    i16 44, label %63
    i16 36, label %63
    i16 35, label %64
    i16 30, label %64
    i16 32, label %64
    i16 31, label %64
    i16 33, label %64
    i16 45, label %64
    i16 37, label %64
    i16 43, label %6
    i16 47, label %16
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 45
  %12 = lshr i32 %9, 26
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = select i1 %11, i32 %14, i32 1
  br label %64

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %18) #14, !range !273
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !178
  br label %2

24:                                               ; preds = %2
  %25 = and i32 %4, 65535
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !178
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %64, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = zext i8 %30 to i64
  br label %35

35:                                               ; preds = %32, %61
  %36 = phi i64 [ %34, %32 ], [ %37, %61 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds i8, ptr %28, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !178
  switch i8 %39, label %61 [
    i8 101, label %47
    i8 69, label %40
  ]

40:                                               ; preds = %35
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !178
  %43 = load i32, ptr %42, align 8, !tbaa !183
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = zext nneg i32 %43 to i64
  br label %55

47:                                               ; preds = %35
  %48 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %37
  %49 = load ptr, ptr %48, align 8, !tbaa !178
  %50 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %49) #14, !range !273
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %64

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %56, 1
  %54 = icmp eq i64 %53, %46
  br i1 %54, label %61, label %55, !llvm.loop !618

55:                                               ; preds = %45, %52
  %56 = phi i64 [ 0, %45 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !181
  %59 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %58) #14, !range !273
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %52, label %64

61:                                               ; preds = %52, %40, %35, %47
  %62 = icmp sgt i64 %36, 1
  br i1 %62, label %35, label %64, !llvm.loop !619

63:                                               ; preds = %2, %2
  br label %64

64:                                               ; preds = %47, %61, %55, %16, %2, %2, %2, %2, %2, %2, %2, %63, %24, %6
  %65 = phi i32 [ %15, %6 ], [ 0, %24 ], [ 0, %63 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %16 ], [ 1, %55 ], [ 1, %47 ], [ 0, %61 ]
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @for_each_rtx_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !prof !620 !PGOFuncName !621 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %63, %4
  %13 = phi i64 [ %64, %63 ], [ %11, %4 ]
  %14 = getelementptr inbounds i8, ptr %9, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !178
  switch i8 %15, label %63 [
    i8 0, label %65
    i8 101, label %16
    i8 86, label %32
    i8 69, label %32
  ], !prof !622

16:                                               ; preds = %12
  %17 = getelementptr inbounds [1 x %union.rtunion_def], ptr %10, i64 0, i64 %13
  %18 = tail call i32 %2(ptr noundef nonnull %17, ptr noundef %3) #15
  switch i32 %18, label %65 [
    i32 -1, label %63
    i32 0, label %19
  ], !prof !623

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !181
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22, !prof !624

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 65535
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !210
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %63, !prof !625

29:                                               ; preds = %22
  %30 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %20, i32 noundef %27, ptr noundef %2, ptr noundef %3) #14, !range !597
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %63, label %65, !prof !626

32:                                               ; preds = %12, %12
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %10, i64 0, i64 %13
  %34 = load ptr, ptr %33, align 8, !tbaa !178
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36, !prof !627

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !183
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %63, !prof !628

39:                                               ; preds = %36, %57
  %40 = phi i64 [ %58, %57 ], [ 0, %36 ]
  %41 = phi ptr [ %59, %57 ], [ %34, %36 ]
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %41, i64 0, i32 1, i64 %40
  %43 = tail call i32 %2(ptr noundef nonnull %42, ptr noundef %3) #15
  switch i32 %43, label %65 [
    i32 -1, label %57
    i32 0, label %44
  ], !prof !629

44:                                               ; preds = %39
  %45 = load ptr, ptr %42, align 8, !tbaa !181
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47, !prof !630

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !210
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %57, !prof !631

54:                                               ; preds = %47
  %55 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %45, i32 noundef %52, ptr noundef %2, ptr noundef %3) #14, !range !597
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65, !prof !632

57:                                               ; preds = %39, %47, %54, %44
  %58 = add nuw nsw i64 %40, 1
  %59 = load ptr, ptr %33, align 8, !tbaa !178
  %60 = load i32, ptr %59, align 8, !tbaa !183
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %39, label %63, !prof !633, !llvm.loop !634

63:                                               ; preds = %57, %36, %16, %12, %29, %22, %32, %19
  %64 = add i64 %13, 1
  br label %12, !llvm.loop !635

65:                                               ; preds = %12, %29, %16, %54, %39
  %66 = phi i32 [ %55, %54 ], [ %43, %39 ], [ 0, %12 ], [ %30, %29 ], [ %18, %16 ]
  ret i32 %66
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @regno_use_in(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !177 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %46, label %9

9:                                                ; preds = %6, %2
  %10 = zext nneg i32 %4 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !178
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %44
  %20 = phi i64 [ %18, %16 ], [ %21, %44 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !178
  switch i8 %23, label %44 [
    i8 101, label %24
    i8 69, label %29
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !178
  %27 = tail call ptr @regno_use_in(i32 noundef %0, ptr noundef %26) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %46

29:                                               ; preds = %19
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %31 = load ptr, ptr %30, align 8, !tbaa !178
  %32 = load i32, ptr %31, align 8, !tbaa !183
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %38, %29
  %35 = phi i64 [ %39, %38 ], [ %33, %29 ]
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = add nsw i64 %35, -1
  %40 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  %42 = tail call ptr @regno_use_in(i32 noundef %0, ptr noundef %41) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %34, label %46, !llvm.loop !636

44:                                               ; preds = %34, %19, %24
  %45 = icmp sgt i64 %20, 1
  br i1 %45, label %19, label %46, !llvm.loop !637

46:                                               ; preds = %24, %44, %38, %9, %6
  %47 = phi ptr [ %1, %6 ], [ null, %9 ], [ %42, %38 ], [ %27, %24 ], [ null, %44 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @commutative_operand_precedence(ptr noundef %0) local_unnamed_addr #2 !prof !638 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -30
  %5 = icmp ult i16 %4, 3
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %0) #15
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !210
  switch i32 %12, label %42 [
    i32 9, label %13
    i32 5, label %17
    i32 8, label %30
    i32 3, label %51
    i32 2, label %36
    i32 4, label %37
  ], !prof !639

13:                                               ; preds = %6
  %14 = trunc i32 %8 to i16
  %15 = add i16 %14, -30
  %16 = icmp ult i16 %15, 3
  br i1 %16, label %47, label %51

17:                                               ; preds = %6
  %18 = icmp eq i32 %9, 39
  br i1 %18, label %19, label %29, !prof !640

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !178
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !210
  %27 = and i32 %26, -2
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %51, label %29, !prof !641

29:                                               ; preds = %19, %17
  br label %51

30:                                               ; preds = %6
  %31 = and i32 %8, 1073807359
  %32 = icmp eq i32 %31, 1073741861
  br i1 %32, label %51, label %33, !prof !642

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 1073741867
  %35 = select i1 %34, i32 -1, i32 -2, !prof !643
  br label %51

36:                                               ; preds = %6
  br label %51

37:                                               ; preds = %6
  %38 = icmp eq i32 %9, 64
  %39 = icmp eq i32 %9, 51
  %40 = or i1 %38, %39
  %41 = zext i1 %40 to i32
  br label %51

42:                                               ; preds = %6
  br label %51

43:                                               ; preds = %1
  %44 = zext nneg i16 %4 to i64
  %45 = getelementptr inbounds [3 x i32], ptr @switch.table.commutative_operand_precedence, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  br label %51

47:                                               ; preds = %13
  %48 = zext nneg i16 %15 to i64
  %49 = getelementptr inbounds [3 x i32], ptr @switch.table.commutative_operand_precedence.3, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %13, %47, %43, %33, %37, %6, %30, %19, %42, %36, %29
  %52 = phi i32 [ 0, %42 ], [ 2, %36 ], [ 0, %29 ], [ -3, %19 ], [ -1, %30 ], [ 4, %6 ], [ %35, %33 ], [ %41, %37 ], [ %46, %43 ], [ %50, %47 ], [ -4, %13 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !644 {
  %3 = tail call i32 @commutative_operand_precedence(ptr noundef %0) #14, !range !645
  %4 = tail call i32 @commutative_operand_precedence(ptr noundef %1) #14, !range !645
  %5 = icmp slt i32 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @auto_inc_p(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !177 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -74
  %5 = icmp ult i16 %4, 6
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !181
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1, %6
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %6 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @loc_mentioned_in_p(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !177 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !178
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %15 = zext i8 %11 to i64
  br label %16

16:                                               ; preds = %13, %45
  %17 = phi i64 [ %15, %13 ], [ %18, %45 ]
  %18 = add nsw i64 %17, -1
  %19 = getelementptr inbounds i8, ptr %9, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !178
  switch i8 %20, label %45 [
    i8 101, label %21
    i8 69, label %28
  ]

21:                                               ; preds = %16
  %22 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %18
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !178
  %26 = tail call i32 @loc_mentioned_in_p(ptr noundef %0, ptr noundef %25) #14, !range !273
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %47

28:                                               ; preds = %16
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %18
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = load i32, ptr %30, align 8, !tbaa !183
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %41, %28
  %34 = phi i64 [ %35, %41 ], [ %32, %28 ]
  %35 = add nsw i64 %34, -1
  %36 = trunc i64 %34 to i32
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %35
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %39, align 8, !tbaa !181
  %43 = tail call i32 @loc_mentioned_in_p(ptr noundef %0, ptr noundef %42) #14, !range !273
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %33, label %47, !llvm.loop !646

45:                                               ; preds = %33, %16, %24
  %46 = icmp sgt i64 %17, 1
  br i1 %46, label %16, label %47, !llvm.loop !647

47:                                               ; preds = %24, %21, %45, %38, %41, %4, %2
  %48 = phi i32 [ 0, %2 ], [ 0, %4 ], [ 1, %41 ], [ 1, %38 ], [ 1, %24 ], [ 1, %21 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 !prof !177 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !178
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !178
  %10 = icmp ugt i8 %6, %9
  %11 = shl i32 %2, 3
  %12 = select i1 %10, i32 0, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lsb(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !177 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !178
  %12 = tail call i32 @subreg_lsb_1(i32 noundef %4, i32 noundef %9, i32 noundef %11) #14
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 !prof !648 {
  %6 = icmp ult i32 %0, 53
  br i1 %6, label %8, label %7, !prof !649

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3102, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %5, %7
  %9 = load i32, ptr @target_flags, align 4, !tbaa !210
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = zext i32 %0 to i64
  br i1 %11, label %70, label %13, !prof !649

13:                                               ; preds = %8
  %14 = and i64 %12, 4294967288
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %70, label %16, !prof !649

16:                                               ; preds = %13
  switch i32 %0, label %17 [
    i32 52, label %70
    i32 51, label %70
    i32 50, label %70
    i32 49, label %70
    i32 48, label %70
    i32 47, label %70
    i32 46, label %70
    i32 45, label %70
    i32 36, label %70
    i32 35, label %70
    i32 34, label %70
    i32 33, label %70
    i32 32, label %70
    i32 31, label %70
    i32 30, label %70
    i32 29, label %70
    i32 28, label %70
    i32 27, label %70
    i32 26, label %70
    i32 25, label %70
    i32 24, label %70
    i32 23, label %70
    i32 22, label %70
    i32 21, label %70
  ]

17:                                               ; preds = %16
  switch i32 %1, label %70 [
    i32 53, label %18
    i32 40, label %18
  ]

18:                                               ; preds = %17, %17
  %19 = icmp eq i32 %1, 40
  %20 = select i1 %19, i32 4, i32 8
  %21 = zext nneg i32 %1 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !178
  %24 = icmp eq i8 %23, 0
  %25 = zext i8 %23 to i32
  %26 = select i1 %24, i32 %1, i32 %25
  switch i32 %26, label %27 [
    i32 53, label %28
    i32 40, label %28
  ]

27:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3117, ptr noundef nonnull @.str.1) #15
  br label %28

28:                                               ; preds = %18, %18, %27
  %29 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %21
  %30 = load i8, ptr %29, align 1, !tbaa !178
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %26, 40
  %33 = select i1 %32, i32 2, i32 3
  %34 = shl nuw nsw i32 %31, %33
  %35 = icmp eq i32 %20, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3120, ptr noundef nonnull @.str.1) #15
  br label %37

37:                                               ; preds = %28, %36
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %21
  %39 = load i8, ptr %38, align 1, !tbaa !178
  %40 = zext i8 %39 to i32
  %41 = zext nneg i32 %26 to i64
  %42 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !178
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, %31
  %46 = icmp eq i32 %45, %40
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3123, ptr noundef nonnull @.str.1) #15
  br label %48

48:                                               ; preds = %37, %47
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %41
  %50 = load i8, ptr %49, align 1, !tbaa !178
  %51 = zext i8 %50 to i32
  %52 = udiv i32 %2, %51
  %53 = add i32 %52, 1
  %54 = icmp ult i32 %53, %31
  br i1 %54, label %55, label %75

55:                                               ; preds = %48
  %56 = zext i32 %3 to i64
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !178
  %59 = zext i8 %58 to i32
  %60 = add i32 %2, -1
  %61 = add i32 %60, %59
  %62 = udiv i32 %61, %51
  %63 = icmp eq i32 %52, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %65, align 4, !tbaa !650
  %66 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %56
  %67 = load i8, ptr %66, align 1, !tbaa !178
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %2, 0
  br label %92

70:                                               ; preds = %8, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %17, %13
  %71 = zext i32 %1 to i64
  %72 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !178
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %48, %55, %70
  %76 = phi i32 [ %20, %48 ], [ %20, %55 ], [ %74, %70 ]
  %77 = zext i32 %3 to i64
  %78 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !178
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %2, 0
  br i1 %81, label %82, label %92, !prof !652

82:                                               ; preds = %75
  %83 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %84 = load i8, ptr %83, align 1, !tbaa !178
  %85 = zext i32 %1 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !178
  %88 = icmp ugt i8 %84, %87
  br i1 %88, label %89, label %92, !prof !653

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 1, ptr %90, align 4, !tbaa !650
  store i32 0, ptr %4, align 4, !tbaa !654
  %91 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %80, ptr %91, align 4, !tbaa !655
  br label %225

92:                                               ; preds = %64, %82, %75
  %93 = phi i1 [ %69, %64 ], [ true, %82 ], [ false, %75 ]
  %94 = phi i1 [ false, %64 ], [ true, %82 ], [ true, %75 ]
  %95 = phi i32 [ %68, %64 ], [ %80, %82 ], [ %80, %75 ]
  %96 = phi i8 [ %67, %64 ], [ %79, %82 ], [ %79, %75 ]
  %97 = phi i64 [ %56, %64 ], [ %77, %82 ], [ %77, %75 ]
  %98 = phi i32 [ %20, %64 ], [ %76, %82 ], [ %76, %75 ]
  %99 = load i32, ptr @target_flags, align 4, !tbaa !210
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102, !prof !656

102:                                              ; preds = %92
  %103 = and i64 %12, 4294967288
  %104 = icmp eq i64 %103, 8
  br i1 %104, label %109, label %105, !prof !656

105:                                              ; preds = %102
  switch i32 %0, label %106 [
    i32 52, label %107
    i32 51, label %107
    i32 50, label %107
    i32 49, label %107
    i32 48, label %107
    i32 47, label %107
    i32 46, label %107
    i32 45, label %107
    i32 36, label %107
    i32 35, label %107
    i32 34, label %107
    i32 33, label %107
    i32 32, label %107
    i32 31, label %107
    i32 30, label %107
    i32 29, label %107
    i32 28, label %107
    i32 27, label %107
    i32 26, label %107
    i32 25, label %107
    i32 24, label %107
    i32 23, label %107
    i32 22, label %107
    i32 21, label %107
  ]

106:                                              ; preds = %105
  switch i32 %1, label %107 [
    i32 53, label %158
    i32 40, label %158
  ]

107:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %106
  switch i32 %0, label %108 [
    i32 52, label %109
    i32 51, label %109
    i32 50, label %109
    i32 49, label %109
    i32 48, label %109
    i32 47, label %109
    i32 46, label %109
    i32 45, label %109
    i32 36, label %109
    i32 35, label %109
    i32 34, label %109
    i32 33, label %109
    i32 32, label %109
    i32 31, label %109
    i32 30, label %109
    i32 29, label %109
    i32 28, label %109
    i32 27, label %109
    i32 26, label %109
    i32 25, label %109
    i32 24, label %109
    i32 23, label %109
    i32 22, label %109
    i32 21, label %109
  ]

108:                                              ; preds = %107
  switch i32 %3, label %109 [
    i32 53, label %158
    i32 40, label %158
  ]

109:                                              ; preds = %102, %92, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %108
  %110 = zext i32 %1 to i64
  %111 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !178
  %113 = trunc i32 %98 to i8
  %114 = urem i8 %112, %113
  %115 = udiv i8 %112, %113
  %116 = icmp eq i8 %114, 0
  br i1 %116, label %117, label %158, !prof !656

117:                                              ; preds = %109
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %97
  %119 = load i8, ptr %118, align 1, !tbaa !178
  %120 = trunc i32 %95 to i8
  %121 = urem i8 %119, %120
  %122 = udiv i8 %119, %120
  %123 = icmp eq i8 %121, 0
  br i1 %123, label %124, label %158, !prof !656

124:                                              ; preds = %117
  %125 = zext i8 %115 to i32
  br i1 %94, label %126, label %168, !prof !656

126:                                              ; preds = %124
  %127 = icmp ugt i8 %115, %122
  %128 = icmp ugt i8 %96, 1
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %142, !prof !657

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %131, align 4, !tbaa !650
  %132 = load i8, ptr %118, align 1, !tbaa !178
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %133, %125
  %135 = trunc i32 %134 to i16
  %136 = add nsw i16 %135, -1
  %137 = zext i8 %115 to i16
  %138 = udiv i16 %136, %137
  %139 = zext i16 %138 to i32
  %140 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %139, ptr %140, align 4, !tbaa !655
  %141 = udiv i32 %2, %125
  store i32 %141, ptr %4, align 4, !tbaa !654
  br label %225

142:                                              ; preds = %126
  %143 = icmp ugt i8 %122, %115
  br i1 %143, label %144, label %159, !prof !658

144:                                              ; preds = %142
  %145 = icmp ugt i32 %98, 1
  br i1 %145, label %146, label %159

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %147, align 4, !tbaa !650
  %148 = load i8, ptr %118, align 1, !tbaa !178
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %149, %125
  %151 = trunc i32 %150 to i16
  %152 = add nsw i16 %151, -1
  %153 = zext i8 %115 to i16
  %154 = sdiv i16 %152, %153
  %155 = sext i16 %154 to i32
  %156 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %155, ptr %156, align 4, !tbaa !655
  %157 = udiv i32 %2, %125
  store i32 %157, ptr %4, align 4, !tbaa !654
  br label %225

158:                                              ; preds = %108, %108, %106, %106, %117, %109
  br i1 %94, label %159, label %168, !prof !659

159:                                              ; preds = %144, %142, %158
  %160 = tail call i32 @subreg_lowpart_offset(i32 noundef %3, i32 noundef %1) #15
  %161 = icmp eq i32 %160, %2
  br i1 %161, label %162, label %168, !prof !656

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 1, ptr %163, align 4, !tbaa !650
  br i1 %93, label %166, label %164, !prof !656

164:                                              ; preds = %162
  %165 = icmp eq i32 %98, %95
  br i1 %165, label %166, label %168

166:                                              ; preds = %164, %162
  store i32 0, ptr %4, align 4, !tbaa !654
  %167 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %95, ptr %167, align 4, !tbaa !655
  br label %225

168:                                              ; preds = %124, %164, %159, %158
  %169 = phi i1 [ false, %158 ], [ false, %164 ], [ true, %159 ], [ false, %124 ]
  %170 = zext i32 %1 to i64
  %171 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !178
  %173 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %97
  %174 = load i8, ptr %173, align 1, !tbaa !178
  %175 = urem i8 %172, %174
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3211, ptr noundef nonnull @.str.1) #15
  br label %178

178:                                              ; preds = %168, %177
  %179 = trunc i32 %98 to i8
  %180 = trunc i32 %95 to i8
  %181 = urem i8 %179, %180
  %182 = udiv i8 %179, %180
  %183 = icmp eq i8 %181, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3212, ptr noundef nonnull @.str.1) #15
  br label %185

185:                                              ; preds = %178, %184
  %186 = load i8, ptr %171, align 1, !tbaa !178
  %187 = zext i8 %186 to i16
  %188 = shl nuw nsw i16 %187, 3
  %189 = trunc i32 %98 to i16
  %190 = udiv i16 %188, %189
  %191 = zext nneg i16 %190 to i32
  %192 = tail call i32 @mode_for_size(i32 noundef %191, i32 noundef 2, i32 noundef 0) #15
  %193 = tail call i32 @subreg_lowpart_offset(i32 noundef %3, i32 noundef %192) #15
  %194 = sub i32 %2, %193
  %195 = load i8, ptr %171, align 1, !tbaa !178
  %196 = load i8, ptr %173, align 1, !tbaa !178
  %197 = udiv i8 %195, %196
  %198 = icmp ugt i8 %196, %195
  br i1 %198, label %199, label %201

199:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3225, ptr noundef nonnull @.str.1) #15
  %200 = load i8, ptr %173, align 1, !tbaa !178
  br label %201

201:                                              ; preds = %185, %199
  %202 = phi i8 [ %196, %185 ], [ %200, %199 ]
  %203 = zext i8 %202 to i32
  %204 = udiv i32 %2, %203
  %205 = sdiv i32 %194, %203
  %206 = srem i32 %194, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3231, ptr noundef nonnull @.str.1) #15
  br label %209

209:                                              ; preds = %201, %208
  %210 = urem i8 %197, %182
  %211 = udiv i8 %197, %182
  %212 = icmp eq i8 %210, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %209
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3232, ptr noundef nonnull @.str.1) #15
  br label %214

214:                                              ; preds = %209, %213
  %215 = zext i8 %211 to i32
  br i1 %169, label %216, label %221

216:                                              ; preds = %214
  %217 = srem i32 %205, %215
  %218 = icmp eq i32 %217, 0
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 %219, ptr %220, align 4, !tbaa !650
  br label %221

221:                                              ; preds = %214, %216
  %222 = sdiv i32 %204, %215
  %223 = mul nsw i32 %222, %95
  store i32 %223, ptr %4, align 4, !tbaa !654
  %224 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %95, ptr %224, align 4, !tbaa !655
  br label %225

225:                                              ; preds = %221, %166, %146, %130, %89
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_regno_offset(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !660 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %6 = load i32, ptr %5, align 4, !tbaa !654
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @subreg_offset_representable_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !177 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.subreg_info, ptr %5, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !650
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @simplify_subreg_regno(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !661 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !178
  %9 = and i8 %8, -2
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %17, label %11, !prof !662

11:                                               ; preds = %4
  %12 = zext i32 %0 to i64
  %13 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !210
  %15 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %1, i32 noundef %3, i32 noundef %14) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %40, !prof !663

17:                                               ; preds = %4, %11
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !210
  %19 = icmp eq i32 %18, 0
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %24, !prof !664

23:                                               ; preds = %17
  switch i32 %0, label %25 [
    i32 20, label %40
    i32 6, label %40
    i32 16, label %40
    i32 7, label %40
  ], !prof !665

24:                                               ; preds = %17
  switch i32 %0, label %25 [
    i32 16, label %40
    i32 7, label %40
  ], !prof !666

25:                                               ; preds = %23, %24
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %26 = getelementptr inbounds %struct.subreg_info, ptr %5, i64 0, i32 2
  %27 = load i8, ptr %26, align 4, !tbaa !650
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29, !prof !667

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4, !tbaa !654
  %31 = add i32 %30, %0
  %32 = icmp ult i32 %31, 53
  br i1 %32, label %33, label %40, !prof !663

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %31, i32 noundef %3) #15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !667

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %1) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %36, %29, %25, %24, %23, %23, %23, %23, %24, %11, %39
  %41 = phi i32 [ %31, %39 ], [ -1, %11 ], [ -1, %23 ], [ -1, %23 ], [ -1, %23 ], [ -1, %24 ], [ -1, %23 ], [ -1, %24 ], [ -1, %25 ], [ -1, %29 ], [ -1, %36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i32 %41
}

; Function Attrs: optsize
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_nregs_with_regno(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !452 {
  %3 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !178
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !178
  %11 = load i32, ptr %1, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  call void @subreg_get_info(i32 noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %13, ptr noundef nonnull %3) #14
  %14 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !655
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_first_parameter_load(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 !prof !177 {
  %3 = alloca %struct.parms_set_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.parms_set_data, ptr %3, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !668
  store i32 0, ptr %3, align 8, !tbaa !670
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = icmp eq ptr %6, null
  br i1 %7, label %76, label %12

8:                                                ; preds = %48
  %9 = icmp ne i32 %49, 0
  %10 = icmp ne ptr %0, %1
  %11 = and i1 %10, %9
  br i1 %11, label %54, label %76

12:                                               ; preds = %2, %48
  %13 = phi ptr [ %52, %48 ], [ %6, %2 ]
  %14 = phi i64 [ %50, %48 ], [ 0, %2 ]
  %15 = phi i32 [ %49, %48 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 24
  br i1 %20, label %21, label %48

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !178
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %23) #14
  %29 = icmp ult i32 %28, 53
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3411, ptr noundef nonnull @.str.1) #15
  %31 = load ptr, ptr %16, align 8, !tbaa !178
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !178
  br label %34

34:                                               ; preds = %27, %30
  %35 = phi ptr [ %23, %27 ], [ %33, %30 ]
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #14
  %37 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %36) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %16, align 8, !tbaa !178
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !178
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef %42) #14
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = or i64 %45, %14
  store i64 %46, ptr %4, align 8, !tbaa !668
  %47 = add nsw i32 %15, 1
  store i32 %47, ptr %3, align 8, !tbaa !670
  br label %48

48:                                               ; preds = %12, %21, %39, %34
  %49 = phi i32 [ %15, %12 ], [ %15, %21 ], [ %47, %39 ], [ %15, %34 ]
  %50 = phi i64 [ %14, %12 ], [ %14, %21 ], [ %46, %39 ], [ %14, %34 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !178
  %53 = icmp eq ptr %52, null
  br i1 %53, label %8, label %12, !llvm.loop !671

54:                                               ; preds = %8, %70
  %55 = phi i32 [ %71, %70 ], [ %49, %8 ]
  %56 = phi ptr [ %72, %70 ], [ %0, %8 ]
  %57 = phi ptr [ %59, %70 ], [ %0, %8 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !178
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  switch i16 %61, label %70 [
    i16 10, label %76
    i16 12, label %62
    i16 8, label %65
    i16 7, label %65
    i16 9, label %65
  ]

62:                                               ; preds = %54
  %63 = icmp eq ptr %59, %1
  br i1 %63, label %76, label %64

64:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3440, ptr noundef nonnull @.str.1) #15
  br label %76

65:                                               ; preds = %54, %54, %54
  %66 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !178
  call void @note_stores(ptr noundef %67, ptr noundef nonnull @parms_set, ptr noundef nonnull %3) #14
  %68 = load i32, ptr %3, align 8, !tbaa !670
  %69 = icmp eq i32 %55, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %65, %54
  %71 = phi i32 [ %68, %65 ], [ %55, %54 ]
  %72 = phi ptr [ %59, %65 ], [ %56, %54 ]
  %73 = icmp ne i32 %71, 0
  %74 = icmp ne ptr %59, %1
  %75 = and i1 %74, %73
  br i1 %75, label %54, label %76, !llvm.loop !672

76:                                               ; preds = %70, %54, %65, %2, %8, %64, %62
  %77 = phi ptr [ %56, %64 ], [ %56, %62 ], [ %0, %8 ], [ %0, %2 ], [ %72, %70 ], [ %56, %54 ], [ %56, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %77
}

; Function Attrs: optsize
declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @parms_set(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #10 !prof !177 !PGOFuncName !673 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.parms_set_data, ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !668
  %13 = zext nneg i32 %8 to i64
  %14 = shl nuw nsw i64 1, %13
  %15 = and i64 %12, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = xor i64 %14, -1
  %19 = and i64 %12, %18
  store i64 %19, ptr %11, align 8, !tbaa !668
  %20 = load i32, ptr %2, align 8, !tbaa !670
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %2, align 8, !tbaa !670
  br label %22

22:                                               ; preds = %17, %10, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @keep_with_call_p(ptr noundef %0) local_unnamed_addr #2 !prof !674 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %66, !prof !675

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %15, label %12, !prof !676

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %66, label %15, !prof !677

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %35, !prof !678

22:                                               ; preds = %15
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #14
  %24 = icmp ult i32 %23, 53
  br i1 %24, label %25, label %35, !prof !679

25:                                               ; preds = %22
  %26 = zext nneg i32 %23 to i64
  %27 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !178
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30, !prof !679

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = tail call i32 @general_operand(ptr noundef %32, i32 noundef 0) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %30, %25, %22, %15
  %36 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !178
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %43, label %41, !prof !680

41:                                               ; preds = %35
  %42 = load ptr, ptr %17, align 8, !tbaa !178
  br label %55

43:                                               ; preds = %35
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %37) #14
  %45 = tail call zeroext i8 @ix86_function_value_regno_p(i32 noundef %44) #15
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr %17, align 8, !tbaa !178
  br i1 %46, label %55, label %48, !prof !681

48:                                               ; preds = %43
  %49 = load i32, ptr %47, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %55, !prof !682

52:                                               ; preds = %48
  %53 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #14
  %54 = icmp ugt i32 %53, 52
  br i1 %54, label %66, label %55, !prof !683

55:                                               ; preds = %41, %52, %48, %43
  %56 = phi ptr [ %42, %41 ], [ %47, %52 ], [ %47, %48 ], [ %47, %43 ]
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !181
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %66, !prof !684

59:                                               ; preds = %55
  %60 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %0) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = tail call zeroext i8 @keep_with_call_p(ptr noundef nonnull %60) #14, !range !311
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %1, %12, %55, %65, %62, %52, %30
  %67 = phi i8 [ 1, %30 ], [ 1, %52 ], [ 1, %62 ], [ 0, %65 ], [ 0, %1 ], [ 0, %55 ], [ 0, %12 ]
  ret i8 %67
}

; Function Attrs: optsize
declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @ix86_function_value_regno_p(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @label_is_jump_target_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !685 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !178
  store ptr %5, ptr %3, align 8, !tbaa !181
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %39, label %7, !prof !686

7:                                                ; preds = %2
  %8 = call zeroext i8 @tablejump_p(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %3) #14, !range !311
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %35, label %10, !prof !687

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !181
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %13, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 21
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = load i32, ptr %20, align 8, !tbaa !183
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %10
  %24 = zext nneg i32 %21 to i64
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i64 %29, 1
  %27 = icmp eq i64 %26, %24
  br i1 %27, label %35, label %28, !llvm.loop !688

28:                                               ; preds = %23, %25
  %29 = phi i64 [ 0, %23 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !178
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %39, label %25

35:                                               ; preds = %25, %10, %7
  %36 = call ptr @find_reg_note(ptr noundef %1, i32 noundef 9, ptr noundef %0) #14
  %37 = icmp ne ptr %36, null
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %28, %35, %2
  %40 = phi i8 [ 1, %2 ], [ %38, %35 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_cost(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 !prof !689 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %85, label %6, !prof !690

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = trunc i32 %7 to i16
  switch i16 %9, label %12 [
    i16 52, label %10
    i16 55, label %13
    i16 59, label %13
    i16 58, label %13
    i16 60, label %13
    i16 24, label %11
  ], !prof !691

10:                                               ; preds = %6
  store i32 20, ptr %4, align 4, !tbaa !210
  br label %36

11:                                               ; preds = %6
  store i32 0, ptr %4, align 4, !tbaa !210
  br label %36

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %6, %6, %6, %6, %12
  %14 = phi i32 [ 4, %12 ], [ 28, %6 ], [ 28, %6 ], [ 28, %6 ], [ 28, %6 ]
  store i32 %14, ptr %4, align 4, !tbaa !210
  switch i16 %9, label %36 [
    i16 37, label %85
    i16 39, label %15
  ], !prof !692

15:                                               ; preds = %13
  store i32 0, ptr %4, align 4, !tbaa !210
  %16 = lshr i32 %7, 16
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %17, i32 noundef %22) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %42, !prof !693

25:                                               ; preds = %15
  %26 = load i32, ptr %0, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !178
  %32 = lshr i8 %31, 2
  %33 = add nuw nsw i8 %32, 2
  %34 = zext nneg i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 2
  br label %85

36:                                               ; preds = %10, %11, %13
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 60), align 8, !tbaa !694
  %38 = call zeroext i8 %37(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %2) #15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40, !prof !695

40:                                               ; preds = %36
  %41 = load i32, ptr %4, align 4, !tbaa !210
  br label %85

42:                                               ; preds = %36, %15
  %43 = zext nneg i32 %8 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !181
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !178
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %83, label %49, !prof !696

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = zext i8 %47 to i64
  br label %52

52:                                               ; preds = %49, %81
  %53 = phi i64 [ %51, %49 ], [ %54, %81 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds i8, ptr %45, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !178
  switch i8 %56, label %81 [
    i8 101, label %62
    i8 69, label %57
  ], !prof !697

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !178
  %60 = load i32, ptr %59, align 8, !tbaa !183
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %68, label %81

62:                                               ; preds = %52
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %64 = load ptr, ptr %63, align 8, !tbaa !178
  %65 = call i32 @rtx_cost(ptr noundef %64, i32 noundef %8, i8 noundef zeroext %2) #14
  %66 = load i32, ptr %4, align 4, !tbaa !210
  %67 = add nsw i32 %66, %65
  store i32 %67, ptr %4, align 4, !tbaa !210
  br label %81

68:                                               ; preds = %57, %68
  %69 = phi i64 [ %76, %68 ], [ 0, %57 ]
  %70 = phi ptr [ %77, %68 ], [ %59, %57 ]
  %71 = getelementptr inbounds %struct.rtvec_def, ptr %70, i64 0, i32 1, i64 %69
  %72 = load ptr, ptr %71, align 8, !tbaa !181
  %73 = call i32 @rtx_cost(ptr noundef %72, i32 noundef %8, i8 noundef zeroext %2) #14
  %74 = load i32, ptr %4, align 4, !tbaa !210
  %75 = add nsw i32 %74, %73
  store i32 %75, ptr %4, align 4, !tbaa !210
  %76 = add nuw nsw i64 %69, 1
  %77 = load ptr, ptr %58, align 8, !tbaa !178
  %78 = load i32, ptr %77, align 8, !tbaa !183
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %68, label %81, !llvm.loop !698

81:                                               ; preds = %68, %57, %52, %62
  %82 = icmp sgt i64 %53, 1
  br i1 %82, label %52, label %83, !prof !699, !llvm.loop !700

83:                                               ; preds = %81, %42
  %84 = load i32, ptr %4, align 4, !tbaa !210
  br label %85

85:                                               ; preds = %13, %3, %83, %40, %25
  %86 = phi i32 [ %41, %40 ], [ %84, %83 ], [ %35, %25 ], [ 0, %3 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %86
}

; Function Attrs: optsize
declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @address_cost(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 !prof !701 {
  %5 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %0, i8 noundef zeroext %2) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !702

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 61), align 8, !tbaa !703
  %9 = tail call i32 %8(ptr noundef %0, i8 noundef zeroext %3) #15
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi i32 [ %9, %7 ], [ 1000, %4 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_address_cost(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 !prof !177 {
  %3 = tail call i32 @rtx_cost(ptr noundef %0, i32 noundef 43, i8 noundef zeroext %1) #14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @nonzero_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !704 {
  %3 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i64 noundef 0) #14
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @cached_nonzero_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #2 !prof !705 !PGOFuncName !706 {
  %6 = icmp eq ptr %0, %2
  br i1 %6, label %7, label %9, !prof !707

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, %3
  br i1 %8, label %23, label %9, !prof !708

9:                                                ; preds = %7, %5
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !210
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %66, !prof !709

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !178
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %25, label %28, !prof !710

23:                                               ; preds = %7, %66, %63, %44, %25
  %24 = phi i64 [ %27, %25 ], [ %46, %44 ], [ %65, %63 ], [ %67, %66 ], [ %4, %7 ]
  ret i64 %24

25:                                               ; preds = %17
  %26 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %19, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %27 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %19, i32 noundef %1, i64 noundef %26) #14
  br label %23

28:                                               ; preds = %17
  %29 = load i32, ptr %19, align 8
  %30 = and i32 %29, 65535
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !210
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %47, !prof !711

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !178
  %39 = icmp eq ptr %21, %38
  br i1 %39, label %44, label %40, !prof !712

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !178
  %43 = icmp eq ptr %21, %42
  br i1 %43, label %44, label %47, !prof !713

44:                                               ; preds = %40, %36
  %45 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %21, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %46 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %21, i32 noundef %1, i64 noundef %45) #14
  br label %23

47:                                               ; preds = %40, %28
  %48 = load i32, ptr %21, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !210
  %53 = and i32 %52, -2
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %66, !prof !714

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !178
  %58 = icmp eq ptr %19, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !178
  %62 = icmp eq ptr %19, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %19, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %65 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %19, i32 noundef %1, i64 noundef %64) #14
  br label %23

66:                                               ; preds = %59, %47, %9
  %67 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  br label %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @num_sign_bit_copies(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !715 {
  %3 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0) #14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cached_num_sign_bit_copies(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !prof !716 !PGOFuncName !717 {
  %6 = icmp eq ptr %0, %2
  br i1 %6, label %7, label %9, !prof !718

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, %3
  br i1 %8, label %23, label %9, !prof !719

9:                                                ; preds = %7, %5
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !210
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %66, !prof !720

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !178
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %25, label %28, !prof !721

23:                                               ; preds = %7, %66, %63, %44, %25
  %24 = phi i32 [ %27, %25 ], [ %46, %44 ], [ %65, %63 ], [ %67, %66 ], [ %4, %7 ]
  ret i32 %24

25:                                               ; preds = %17
  %26 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %19, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %27 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %19, i32 noundef %1, i32 noundef %26) #14
  br label %23

28:                                               ; preds = %17
  %29 = load i32, ptr %19, align 8
  %30 = and i32 %29, 65535
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !210
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %47, !prof !722

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !178
  %39 = icmp eq ptr %21, %38
  br i1 %39, label %44, label %40, !prof !723

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !178
  %43 = icmp eq ptr %21, %42
  br i1 %43, label %44, label %47, !prof !724

44:                                               ; preds = %40, %36
  %45 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %21, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %46 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %21, i32 noundef %1, i32 noundef %45) #14
  br label %23

47:                                               ; preds = %40, %28
  %48 = load i32, ptr %21, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !210
  %53 = and i32 %52, -2
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %66, !prof !725

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !178
  %58 = icmp eq ptr %19, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !178
  %62 = icmp eq ptr %19, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %19, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %65 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %19, i32 noundef %1, i32 noundef %64) #14
  br label %23

66:                                               ; preds = %59, %47, %9
  %67 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @insn_rtx_cost(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 !prof !726 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %37 [
    i16 23, label %30
    i16 15, label %5
  ], !prof !727

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = load i32, ptr %7, align 8, !tbaa !183
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %37, !prof !728

10:                                               ; preds = %5
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %10, %23
  %13 = phi i64 [ 0, %10 ], [ %26, %23 ]
  %14 = phi ptr [ null, %10 ], [ %25, %23 ]
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %7, i64 0, i32 1, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !181
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 23
  %20 = icmp eq ptr %14, null
  %21 = xor i1 %19, true
  %22 = select i1 %21, i1 true, i1 %20
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = select i1 %19, i1 %20, i1 false
  %25 = select i1 %24, ptr %16, ptr %14, !prof !729
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %28, label %12, !prof !730, !llvm.loop !731

28:                                               ; preds = %23
  %29 = icmp eq ptr %25, null
  br i1 %29, label %37, label %30, !prof !215

30:                                               ; preds = %2, %28
  %31 = phi ptr [ %25, %28 ], [ %0, %2 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !178
  %34 = tail call i32 @rtx_cost(ptr noundef %33, i32 noundef 23, i8 noundef zeroext %1) #14
  %35 = icmp sgt i32 %34, 0
  %36 = select i1 %35, i32 %34, i32 4, !prof !732
  br label %37

37:                                               ; preds = %12, %5, %2, %28, %30
  %38 = phi i32 [ %36, %30 ], [ 0, %28 ], [ 0, %2 ], [ 0, %5 ], [ 0, %12 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canonicalize_condition(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef readnone %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 !prof !733 {
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = load i32, ptr %1, align 8
  %11 = and i32 %10, 65535
  %12 = lshr i32 %10, 16
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %21, label %19, !prof !734

19:                                               ; preds = %7
  %20 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %1, ptr noundef nonnull %0) #15
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i32 [ %20, %19 ], [ %11, %7 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %236, label %24, !prof !735

24:                                               ; preds = %21
  %25 = icmp eq ptr %3, null
  br i1 %25, label %27, label %26, !prof !736

26:                                               ; preds = %24
  store ptr %0, ptr %3, align 8, !tbaa !181
  br label %27

27:                                               ; preds = %26, %24
  %28 = sext i32 %22 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !210
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %167, !prof !737

32:                                               ; preds = %27, %158
  %33 = phi i32 [ %162, %158 ], [ %22, %27 ]
  %34 = phi ptr [ %161, %158 ], [ %0, %27 ]
  %35 = phi ptr [ %160, %158 ], [ %15, %27 ]
  %36 = phi ptr [ %159, %158 ], [ %17, %27 ]
  %37 = load i32, ptr %35, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !181
  %43 = icmp ne ptr %36, %42
  %44 = icmp eq ptr %35, %4
  %45 = or i1 %43, %44
  br i1 %45, label %167, label %46, !prof !738

46:                                               ; preds = %32
  %47 = trunc i32 %37 to i16
  switch i16 %47, label %167 [
    i16 48, label %48
    i16 37, label %53
  ], !prof !739

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %50 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !178
  %52 = load ptr, ptr %49, align 8, !tbaa !178
  br label %158, !llvm.loop !740

53:                                               ; preds = %46, %57
  %54 = phi ptr [ %55, %57 ], [ %34, %46 ]
  %55 = tail call ptr @prev_nonnote_insn(ptr noundef %54) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %167, label %57, !prof !741

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8
  %59 = trunc i32 %58 to i16
  switch i16 %59, label %167 [
    i16 7, label %53
    i16 8, label %60
  ], !prof !742

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !178
  %63 = icmp eq ptr %62, %9
  br i1 %63, label %64, label %167, !prof !743

64:                                               ; preds = %60
  %65 = tail call ptr @set_of(ptr noundef nonnull %35, ptr noundef nonnull %55) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %124, label %67, !prof !744

67:                                               ; preds = %64
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 23
  br i1 %70, label %71, label %167, !prof !745

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !178
  %74 = tail call i32 @rtx_equal_p(ptr noundef %73, ptr noundef nonnull %35) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %167, label %76, !prof !746

76:                                               ; preds = %71
  %77 = zext nneg i32 %13 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %77
  %79 = icmp eq i32 %13, 0
  %80 = load ptr, ptr %72, align 8, !tbaa !178
  %81 = load i32, ptr %80, align 8
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  %84 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !178
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 48
  br i1 %88, label %95, label %89, !prof !747

89:                                               ; preds = %76
  switch i32 %33, label %167 [
    i32 80, label %90
    i32 81, label %108
  ], !prof !748

90:                                               ; preds = %89
  %91 = zext nneg i32 %87 to i64
  %92 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !210
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %95, label %167, !prof !749

95:                                               ; preds = %90, %76
  %96 = load i8, ptr %78, align 1, !tbaa !178
  %97 = icmp eq i8 %96, 1
  %98 = zext nneg i32 %83 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !178
  %101 = icmp ne i8 %100, 1
  %102 = xor i1 %97, %101
  %103 = select i1 %102, i1 true, i1 %79
  br i1 %103, label %127, label %104, !prof !750

104:                                              ; preds = %95
  %105 = icmp eq i32 %83, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %104
  %107 = icmp eq i32 %33, 81
  br i1 %107, label %108, label %167, !prof !208

108:                                              ; preds = %106, %89
  %109 = zext nneg i32 %87 to i64
  %110 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !210
  %112 = icmp ult i32 %111, 2
  br i1 %112, label %113, label %167, !prof !751

113:                                              ; preds = %108
  %114 = load i8, ptr %78, align 1, !tbaa !178
  %115 = icmp eq i8 %114, 1
  %116 = zext nneg i32 %83 to i64
  %117 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !178
  %119 = icmp ne i8 %118, 1
  %120 = xor i1 %115, %119
  %121 = select i1 %120, i1 true, i1 %79
  %122 = icmp eq i32 %83, 0
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %127, label %167, !prof !752

124:                                              ; preds = %64
  %125 = tail call i32 @reg_set_p(ptr noundef nonnull %35, ptr noundef nonnull %55) #14, !range !273
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %158, label %167, !prof !753

127:                                              ; preds = %113, %104, %95
  %128 = phi i1 [ true, %95 ], [ true, %104 ], [ false, %113 ]
  %129 = icmp eq i32 %6, 0
  br i1 %129, label %139, label %130, !prof !754

130:                                              ; preds = %127
  %131 = tail call i32 @modified_in_p(ptr noundef nonnull %85, ptr noundef nonnull %55) #14, !range !273
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %167, !prof !755

133:                                              ; preds = %130
  %134 = tail call i32 @modified_between_p(ptr noundef nonnull %85, ptr noundef nonnull %55, ptr noundef %0) #14, !range !273
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %167, !prof !756

136:                                              ; preds = %133
  %137 = load i32, ptr %85, align 8
  %138 = and i32 %137, 65535
  br label %139

139:                                              ; preds = %136, %127
  %140 = phi i32 [ %138, %136 ], [ %87, %127 ]
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !210
  %144 = icmp ult i32 %143, 2
  br i1 %144, label %145, label %146, !prof !757

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %139
  %147 = phi i32 [ %140, %145 ], [ %33, %139 ]
  br i1 %128, label %151, label %148, !prof !758

148:                                              ; preds = %146
  %149 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %85, ptr noundef nonnull %55) #15
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %236, label %151

151:                                              ; preds = %148, %146
  %152 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %153 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !178
  %155 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !178
  br i1 %25, label %158, label %157, !prof !759

157:                                              ; preds = %151
  store ptr %55, ptr %3, align 8, !tbaa !181
  br label %158

158:                                              ; preds = %124, %157, %151, %48
  %159 = phi ptr [ %51, %48 ], [ %156, %157 ], [ %156, %151 ], [ %36, %124 ]
  %160 = phi ptr [ %52, %48 ], [ %154, %157 ], [ %154, %151 ], [ %35, %124 ]
  %161 = phi ptr [ %34, %48 ], [ %55, %157 ], [ %55, %151 ], [ %55, %124 ]
  %162 = phi i32 [ %33, %48 ], [ %152, %157 ], [ %152, %151 ], [ %33, %124 ]
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !210
  %166 = icmp ult i32 %165, 2
  br i1 %166, label %32, label %167, !prof !760

167:                                              ; preds = %32, %158, %46, %60, %71, %67, %124, %133, %130, %113, %108, %89, %106, %90, %57, %53, %27
  %168 = phi ptr [ %17, %27 ], [ %36, %53 ], [ %36, %57 ], [ %36, %32 ], [ %159, %158 ], [ %36, %46 ], [ %36, %60 ], [ %36, %71 ], [ %36, %67 ], [ %36, %124 ], [ %36, %133 ], [ %36, %130 ], [ %36, %113 ], [ %36, %108 ], [ %36, %89 ], [ %36, %106 ], [ %36, %90 ]
  %169 = phi ptr [ %15, %27 ], [ %35, %53 ], [ %35, %57 ], [ %35, %32 ], [ %160, %158 ], [ %35, %46 ], [ %35, %60 ], [ %35, %71 ], [ %35, %67 ], [ %35, %124 ], [ %35, %133 ], [ %35, %130 ], [ %35, %113 ], [ %35, %108 ], [ %35, %89 ], [ %35, %106 ], [ %35, %90 ]
  %170 = phi i32 [ %22, %27 ], [ %33, %53 ], [ %33, %57 ], [ %33, %32 ], [ %162, %158 ], [ %33, %46 ], [ %33, %60 ], [ %33, %71 ], [ %33, %67 ], [ %33, %124 ], [ %33, %133 ], [ %33, %130 ], [ 81, %113 ], [ 81, %108 ], [ %33, %89 ], [ %33, %106 ], [ 80, %90 ]
  %171 = load i32, ptr %169, align 8
  %172 = and i32 %171, 65535
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !210
  %176 = icmp eq i32 %175, 9
  br i1 %176, label %177, label %180, !prof !735

177:                                              ; preds = %167
  %178 = tail call i32 @swap_condition(i32 noundef %170) #15
  %179 = load i32, ptr %168, align 8
  br label %180

180:                                              ; preds = %177, %167
  %181 = phi i32 [ %179, %177 ], [ %171, %167 ]
  %182 = phi ptr [ %169, %177 ], [ %168, %167 ]
  %183 = phi ptr [ %168, %177 ], [ %169, %167 ]
  %184 = phi i32 [ %178, %177 ], [ %170, %167 ]
  %185 = icmp eq i32 %5, 0
  %186 = lshr i32 %181, 16
  %187 = and i32 %186, 255
  %188 = zext nneg i32 %187 to i64
  br i1 %185, label %189, label %193, !prof !734

189:                                              ; preds = %180
  %190 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %188
  %191 = load i8, ptr %190, align 1, !tbaa !178
  %192 = icmp eq i8 %191, 1
  br i1 %192, label %236, label %193, !prof !761

193:                                              ; preds = %180, %189
  %194 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %188
  %195 = load i8, ptr %194, align 1, !tbaa !178
  %196 = icmp eq i8 %195, 1
  br i1 %196, label %232, label %197, !prof !762

197:                                              ; preds = %193
  %198 = load i32, ptr %182, align 8
  %199 = and i32 %198, 65535
  %200 = icmp ne i32 %199, 30
  %201 = icmp eq i32 %187, 0
  %202 = or i1 %201, %200
  br i1 %202, label %232, label %203, !prof !763

203:                                              ; preds = %197
  %204 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %188
  %205 = load i8, ptr %204, align 1, !tbaa !178
  %206 = zext i8 %205 to i64
  %207 = shl nuw nsw i64 %206, 3
  %208 = icmp ult i8 %205, 9
  br i1 %208, label %209, label %232, !prof !764

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !178
  %212 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %188
  %213 = load i64, ptr %212, align 8, !tbaa !310
  switch i32 %184, label %232 [
    i32 84, label %214
    i32 82, label %217
    i32 88, label %223
    i32 86, label %225
  ], !prof !765

214:                                              ; preds = %209
  %215 = lshr i64 %213, 1
  %216 = icmp eq i64 %211, %215
  br i1 %216, label %232, label %227, !prof !766

217:                                              ; preds = %209
  %218 = and i64 %213, %211
  %219 = add nuw nsw i64 %207, 4294967295
  %220 = and i64 %219, 4294967295
  %221 = shl nuw i64 1, %220
  %222 = icmp eq i64 %218, %221
  br i1 %222, label %232, label %227, !prof !767

223:                                              ; preds = %209
  %224 = icmp ult i64 %211, %213
  br i1 %224, label %227, label %232, !prof !768

225:                                              ; preds = %209
  %226 = icmp eq i64 %211, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %225, %223, %217, %214
  %228 = phi i64 [ 1, %214 ], [ -1, %217 ], [ 1, %223 ], [ -1, %225 ]
  %229 = phi i32 [ 85, %214 ], [ 83, %217 ], [ 89, %223 ], [ 87, %225 ]
  %230 = add i64 %211, %228
  %231 = tail call ptr @gen_int_mode(i64 noundef %230, i32 noundef %187) #15
  br label %232

232:                                              ; preds = %227, %214, %217, %223, %225, %209, %193, %197, %203
  %233 = phi ptr [ %182, %203 ], [ %182, %197 ], [ %182, %193 ], [ %182, %209 ], [ %182, %225 ], [ %182, %223 ], [ %182, %217 ], [ %182, %214 ], [ %231, %227 ]
  %234 = phi i32 [ %184, %203 ], [ %184, %197 ], [ %184, %193 ], [ %184, %209 ], [ 86, %225 ], [ 88, %223 ], [ 82, %217 ], [ 84, %214 ], [ %229, %227 ]
  %235 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %234, i32 noundef 0, ptr noundef nonnull %183, ptr noundef %233) #15
  br label %236

236:                                              ; preds = %148, %189, %21, %232
  %237 = phi ptr [ %235, %232 ], [ null, %21 ], [ null, %189 ], [ null, %148 ]
  ret ptr %237
}

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_condition(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !769 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %32, !prof !770

8:                                                ; preds = %4
  %9 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11, !prof !771

11:                                               ; preds = %8
  %12 = tail call ptr @pc_set(ptr noundef nonnull %0) #15
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 44
  br i1 %21, label %22, label %29, !prof !772

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !178
  %27 = icmp eq ptr %24, %26
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %22, %11
  %30 = phi i32 [ 0, %11 ], [ %28, %22 ]
  %31 = tail call ptr @canonicalize_condition(ptr noundef nonnull %0, ptr noundef %16, i32 noundef %30, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3) #14
  br label %32

32:                                               ; preds = %4, %8, %29
  %33 = phi ptr [ %31, %29 ], [ null, %8 ], [ null, %4 ]
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @truncated_to_mode(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !177 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 4), align 8, !tbaa !773
  %8 = tail call zeroext i8 %7(i32 noundef %0, ptr noundef nonnull %1) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ %3, %2 ]
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = zext i32 %0 to i64
  %18 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !210
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %12
  %22 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %1, i32 noundef %15) #14
  %23 = load i32, ptr %1, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %26, i64 %17
  %28 = load i32, ptr %27, align 4, !tbaa !210
  %29 = add i32 %28, 1
  %30 = icmp ult i32 %22, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21, %12
  br label %32

32:                                               ; preds = %21, %6, %31
  %33 = phi i8 [ 0, %31 ], [ 1, %6 ], [ 1, %21 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_rtlanal() local_unnamed_addr #2 !prof !775 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %13, %1 ]
  %3 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = tail call ptr @strpbrk(ptr noundef %4, ptr noundef nonnull @.str.2) #14
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = select i1 %6, i32 -1, i32 %10, !prof !776
  %12 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %2
  store i32 %11, ptr %12, align 4, !tbaa !210
  %13 = add nuw nsw i64 %2, 1
  %14 = icmp eq i64 %13, 139
  br i1 %14, label %15, label %1, !prof !777, !llvm.loop !778

15:                                               ; preds = %1
  tail call fastcc void @init_num_sign_bit_copies_in_rep() #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_num_sign_bit_copies_in_rep() unnamed_addr #2 !prof !775 !PGOFuncName !779 {
  %1 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !178
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %62, label %3, !prof !195

3:                                                ; preds = %0
  %4 = zext i8 %1 to i64
  br label %5

5:                                                ; preds = %3, %57
  %6 = phi i8 [ %1, %3 ], [ %60, %57 ]
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %1, %6
  br i1 %8, label %57, label %9, !prof !780

9:                                                ; preds = %5
  %10 = zext i8 %6 to i64
  br label %11

11:                                               ; preds = %9, %53
  %12 = phi i8 [ %1, %9 ], [ %55, %53 ]
  %13 = zext i8 %12 to i32
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 55), align 8, !tbaa !781
  %15 = tail call i32 %14(i32 noundef %13, i32 noundef %7) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17, !prof !782

17:                                               ; preds = %11
  %18 = zext i8 %12 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !178
  %21 = icmp eq i8 %20, %6
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5004, ptr noundef nonnull @.str.1) #15
  br label %23

23:                                               ; preds = %11, %17, %22
  %24 = icmp eq i8 %12, %6
  %25 = zext i8 %12 to i64
  br i1 %24, label %53, label %26, !prof !195

26:                                               ; preds = %23
  %27 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %10, i64 %25
  br label %28

28:                                               ; preds = %26, %51
  %29 = phi i32 [ %13, %26 ], [ %33, %51 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !178
  %33 = zext i8 %32 to i32
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 55), align 8, !tbaa !781
  %35 = tail call i32 %34(i32 noundef %29, i32 noundef %33) #15
  %36 = icmp ne i32 %35, 98
  %37 = load i32, ptr %27, align 4, !tbaa !210
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %51, label %40, !prof !783

40:                                               ; preds = %28
  %41 = zext i8 %32 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !178
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %46 = load i8, ptr %45, align 1, !tbaa !178
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %44, %47
  %49 = shl nsw i32 %48, 3
  %50 = add i32 %49, %37
  store i32 %50, ptr %27, align 4, !tbaa !210
  br label %51

51:                                               ; preds = %28, %40
  %52 = icmp eq i8 %32, %6
  br i1 %52, label %53, label %28, !prof !784, !llvm.loop !785

53:                                               ; preds = %51, %23
  %54 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %25
  %55 = load i8, ptr %54, align 1, !tbaa !178
  %56 = icmp eq i8 %55, %6
  br i1 %56, label %57, label %11, !prof !786, !llvm.loop !787

57:                                               ; preds = %53, %5
  %58 = phi i64 [ %4, %5 ], [ %10, %53 ]
  %59 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !178
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %5, !prof !788, !llvm.loop !789

62:                                               ; preds = %57, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @constant_pool_constant_p(ptr noundef %0) local_unnamed_addr #2 !prof !177 {
  %2 = tail call ptr @avoid_constant_pool_reference(ptr noundef %0) #15
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 32
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @low_bitmask_len(i32 noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !177 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !178
  %8 = icmp ugt i8 %7, 8
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %5
  %11 = load i64, ptr %10, align 8, !tbaa !310
  %12 = and i64 %11, %1
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i64 [ %12, %9 ], [ %1, %2 ]
  %15 = add i64 %14, 1
  %16 = tail call i32 @exact_log2(i64 noundef %15) #15
  br label %17

17:                                               ; preds = %4, %13
  %18 = phi i32 [ %16, %13 ], [ -1, %4 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @covers_regno_no_parallel_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !492 !PGOFuncName !790 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %28, !prof !494

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !178
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %12, 3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !178
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, 3
  %24 = xor i32 %23, %13
  %25 = icmp ult i32 %24, 4
  %26 = select i1 %25, i32 %16, i32 %3
  %27 = select i1 %25, ptr %15, ptr %0
  br label %28

28:                                               ; preds = %6, %2
  %29 = phi i32 [ %3, %2 ], [ %26, %6 ]
  %30 = phi ptr [ %0, %2 ], [ %27, %6 ]
  %31 = and i32 %29, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %48, !prof !791

33:                                               ; preds = %28
  %34 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %30) #14
  %35 = icmp ult i32 %34, 53
  br i1 %35, label %36, label %40, !prof !792

36:                                               ; preds = %33
  %37 = lshr i32 %29, 16
  %38 = and i32 %37, 255
  %39 = tail call fastcc i32 @end_hard_regno(i32 noundef %38, i32 noundef %34) #14
  br label %42

40:                                               ; preds = %33
  %41 = add i32 %34, 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %39, %36 ], [ %41, %40 ]
  %44 = icmp ule i32 %34, %1
  %45 = icmp ugt i32 %43, %1
  %46 = select i1 %44, i1 %45, i1 false, !prof !793
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %28, %42
  %49 = phi i8 [ %47, %42 ], [ 0, %28 ]
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @nonzero_bits1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #2 !prof !794 !PGOFuncName !795 {
  %6 = alloca i64, align 8
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !310
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !178
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !178
  switch i8 %19, label %20 [
    i8 8, label %419
    i8 9, label %419
    i8 11, label %419
    i8 17, label %419
  ], !prof !796

20:                                               ; preds = %5
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %22 = load i8, ptr %21, align 1, !tbaa !178
  switch i8 %22, label %23 [
    i8 8, label %419
    i8 9, label %419
    i8 11, label %419
    i8 17, label %419
  ], !prof !796

23:                                               ; preds = %20
  %24 = add i8 %19, -12
  %25 = icmp ult i8 %24, 5
  %26 = add i8 %22, -12
  %27 = icmp ult i8 %26, 5
  %28 = or i1 %25, %27
  br i1 %28, label %419, label %29, !prof !797

29:                                               ; preds = %23
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %31 = load i8, ptr %30, align 1, !tbaa !178
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 3
  %34 = icmp ugt i32 %33, %13
  br i1 %34, label %35, label %38, !prof !798

35:                                               ; preds = %29
  %36 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %37 = load i64, ptr %36, align 8, !tbaa !310
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %33, %35 ], [ %13, %29 ]
  %40 = phi i64 [ %37, %35 ], [ %9, %29 ]
  %41 = phi i32 [ %16, %35 ], [ %1, %29 ]
  %42 = icmp ugt i32 %39, 64
  br i1 %42, label %419, label %43, !prof !799

43:                                               ; preds = %38
  %44 = icmp ne i32 %16, 0
  %45 = icmp ne i32 %16, %41
  %46 = and i1 %44, %45
  %47 = icmp ult i8 %31, 5
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %65, !prof !800

49:                                               ; preds = %43
  %50 = zext i32 %41 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !178
  %53 = icmp ugt i8 %52, %31
  br i1 %53, label %54, label %65, !prof !801

54:                                               ; preds = %49
  %55 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %56 = load i32, ptr %0, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !310
  %62 = xor i64 %61, -1
  %63 = or i64 %55, %62
  %64 = and i64 %40, %63
  br label %419

65:                                               ; preds = %49, %43
  %66 = trunc i32 %14 to i16
  switch i16 %66, label %419 [
    i16 37, label %67
    i16 30, label %112
    i16 47, label %407
    i16 81, label %115
    i16 80, label %115
    i16 92, label %115
    i16 97, label %115
    i16 83, label %115
    i16 87, label %115
    i16 94, label %115
    i16 85, label %115
    i16 89, label %115
    i16 96, label %115
    i16 82, label %115
    i16 86, label %115
    i16 93, label %115
    i16 84, label %115
    i16 88, label %115
    i16 95, label %115
    i16 90, label %115
    i16 91, label %115
    i16 116, label %405
    i16 118, label %406
    i16 100, label %118
    i16 99, label %123
    i16 98, label %138
    i16 61, label %168
    i16 63, label %177
    i16 62, label %177
    i16 72, label %177
    i16 73, label %177
    i16 70, label %177
    i16 71, label %177
    i16 49, label %189
    i16 50, label %189
    i16 52, label %189
    i16 55, label %189
    i16 59, label %189
    i16 58, label %189
    i16 60, label %189
    i16 120, label %270
    i16 39, label %284
    i16 67, label %333
    i16 68, label %333
    i16 65, label %333
    i16 66, label %333
    i16 114, label %398
    i16 117, label %398
    i16 115, label %404
  ], !prof !802

67:                                               ; preds = %65
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !181
  %69 = icmp eq ptr %68, %0
  %70 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %71 = icmp eq ptr %70, %0
  %72 = select i1 %69, i1 true, i1 %71
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %74 = icmp eq ptr %73, %0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %99, !prof !803

76:                                               ; preds = %67
  %77 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !804
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !178
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %76
  %84 = lshr i8 %81, 3
  %85 = zext nneg i8 %84 to i64
  br i1 %69, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32, ptr @target_flags, align 4, !tbaa !210
  %88 = and i32 %87, 8196
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = tail call i32 @ix86_cfun_abi() #15
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = tail call i64 @llvm.umin.i64(i64 %85, i64 4)
  br label %95

95:                                               ; preds = %93, %90, %86, %83
  %96 = phi i64 [ %85, %90 ], [ %94, %93 ], [ %85, %86 ], [ %85, %83 ]
  %97 = sub nsw i64 0, %96
  %98 = and i64 %40, %97
  br label %99

99:                                               ; preds = %67, %95, %76
  %100 = phi i64 [ %98, %95 ], [ %40, %76 ], [ %40, %67 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 %100, ptr %6, align 8, !tbaa !310
  %101 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 2), align 8, !tbaa !813
  %102 = call ptr %101(ptr noundef nonnull %0, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #15
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106, !prof !814

104:                                              ; preds = %99
  %105 = load i64, ptr %6, align 8, !tbaa !310
  br label %110

106:                                              ; preds = %99
  %107 = call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %102, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %108 = load i64, ptr %6, align 8, !tbaa !310
  %109 = and i64 %108, %107
  br label %110

110:                                              ; preds = %104, %106
  %111 = phi i64 [ %105, %104 ], [ %109, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %419

112:                                              ; preds = %65
  %113 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !178
  br label %419

115:                                              ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  %116 = icmp eq i8 %19, 2
  %117 = select i1 %116, i64 1, i64 %40, !prof !815
  br label %419

118:                                              ; preds = %65
  %119 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !178
  %121 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %120, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %122 = and i64 %121, %40
  br label %419

123:                                              ; preds = %65
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !178
  %126 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %125, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %127 = and i64 %126, %40
  %128 = load ptr, ptr %124, align 8, !tbaa !178
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %419, label %133, !prof !816

133:                                              ; preds = %123
  %134 = zext nneg i32 %131 to i64
  %135 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !310
  %137 = and i64 %136, %127
  br label %419

138:                                              ; preds = %65
  %139 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !178
  %141 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %140, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %142 = load ptr, ptr %139, align 8, !tbaa !178
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 16
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %138
  %148 = zext nneg i32 %145 to i64
  %149 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !310
  %151 = and i64 %150, %141
  %152 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %153 = load i8, ptr %152, align 1, !tbaa !178
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 3
  %156 = add nuw nsw i64 %155, 4294967295
  %157 = and i64 %156, 4294967295
  %158 = shl nuw i64 1, %157
  %159 = and i64 %158, %151
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %147
  %162 = xor i64 %150, -1
  %163 = and i64 %40, %162
  %164 = or i64 %163, %151
  br label %165

165:                                              ; preds = %147, %161, %138
  %166 = phi i64 [ %164, %161 ], [ %151, %147 ], [ %141, %138 ]
  %167 = and i64 %166, %40
  br label %419

168:                                              ; preds = %65
  %169 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !178
  %171 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %170, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %172 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !178
  %174 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %173, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %175 = and i64 %171, %174
  %176 = and i64 %175, %40
  br label %419

177:                                              ; preds = %65, %65, %65, %65, %65, %65
  %178 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !178
  %180 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %179, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %181 = and i64 %180, %40
  %182 = icmp eq i64 %181, %40
  br i1 %182, label %419, label %183, !prof !817

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !178
  %186 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %185, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %187 = or i64 %186, %180
  %188 = and i64 %187, %40
  br label %419

189:                                              ; preds = %65, %65, %65, %65, %65, %65, %65
  %190 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !178
  %192 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %191, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %193 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !178
  %195 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %194, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %196 = load i32, ptr %0, align 8
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !178
  %202 = zext i8 %201 to i64
  %203 = shl nuw nsw i64 %202, 3
  %204 = add nuw nsw i64 %203, 4294967295
  %205 = tail call i32 @floor_log2(i64 noundef %192) #15
  %206 = add nsw i32 %205, 1
  %207 = tail call i32 @floor_log2(i64 noundef %195) #15
  %208 = add nsw i32 %207, 1
  %209 = sub i64 0, %192
  %210 = and i64 %192, %209
  %211 = tail call i32 @floor_log2(i64 noundef %210) #15
  %212 = sub i64 0, %195
  %213 = and i64 %195, %212
  %214 = tail call i32 @floor_log2(i64 noundef %213) #15
  %215 = and i64 %204, 4294967295
  %216 = shl nuw i64 1, %215
  %217 = and i64 %216, %192
  %218 = and i64 %216, %195
  switch i16 %66, label %252 [
    i16 49, label %219
    i16 50, label %223
    i16 52, label %225
    i16 55, label %228
    i16 59, label %235
    i16 58, label %238
    i16 60, label %247
  ], !prof !818

219:                                              ; preds = %189
  %220 = tail call i32 @llvm.smax.i32(i32 %206, i32 %208)
  %221 = add nsw i32 %220, 1
  %222 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %253

223:                                              ; preds = %189
  %224 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %262

225:                                              ; preds = %189
  %226 = add nsw i32 %208, %206
  %227 = add nsw i32 %214, %211
  br label %253

228:                                              ; preds = %189
  %229 = icmp eq i32 %208, 0
  br i1 %229, label %419, label %230

230:                                              ; preds = %228
  %231 = icmp ne i64 %217, 0
  %232 = icmp ne i64 %218, 0
  %233 = select i1 %231, i1 true, i1 %232
  %234 = select i1 %233, i32 %39, i32 %206
  br label %253

235:                                              ; preds = %189
  %236 = icmp eq i32 %208, 0
  %237 = select i1 %236, i32 %39, i32 %206
  br label %253

238:                                              ; preds = %189
  %239 = icmp eq i32 %208, 0
  br i1 %239, label %419, label %240

240:                                              ; preds = %238
  %241 = icmp ne i64 %217, 0
  %242 = icmp ne i64 %218, 0
  %243 = select i1 %241, i1 true, i1 %242
  %244 = tail call i32 @llvm.smin.i32(i32 %206, i32 %208)
  %245 = select i1 %243, i32 %39, i32 %244
  %246 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %253

247:                                              ; preds = %189
  %248 = icmp eq i32 %208, 0
  br i1 %248, label %419, label %249

249:                                              ; preds = %247
  %250 = tail call i32 @llvm.smin.i32(i32 %206, i32 %208)
  %251 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %253

252:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3984, ptr noundef nonnull @.str.1) #15
  br label %419

253:                                              ; preds = %235, %230, %249, %240, %225, %219
  %254 = phi i32 [ %250, %249 ], [ %245, %240 ], [ %226, %225 ], [ %221, %219 ], [ %234, %230 ], [ %237, %235 ]
  %255 = phi i32 [ %251, %249 ], [ %246, %240 ], [ %227, %225 ], [ %222, %219 ], [ 0, %230 ], [ 0, %235 ]
  %256 = icmp ult i32 %254, %39
  br i1 %256, label %257, label %262, !prof !819

257:                                              ; preds = %253
  %258 = zext nneg i32 %254 to i64
  %259 = shl nsw i64 -1, %258
  %260 = xor i64 %259, -1
  %261 = and i64 %40, %260
  br label %262

262:                                              ; preds = %223, %257, %253
  %263 = phi i32 [ %255, %257 ], [ %255, %253 ], [ %224, %223 ]
  %264 = phi i64 [ %261, %257 ], [ %40, %253 ], [ %40, %223 ]
  %265 = icmp sgt i32 %263, 0
  br i1 %265, label %266, label %419, !prof !820

266:                                              ; preds = %262
  %267 = zext nneg i32 %263 to i64
  %268 = shl nsw i64 -1, %267
  %269 = and i64 %268, %264
  br label %419

270:                                              ; preds = %65
  %271 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !178
  %273 = load i32, ptr %272, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 30
  br i1 %275, label %276, label %419, !prof !821

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.rtx_def, ptr %272, i64 0, i32 1
  %278 = load i64, ptr %277, align 8, !tbaa !178
  %279 = icmp slt i64 %278, 64
  br i1 %279, label %280, label %419, !prof !821

280:                                              ; preds = %276
  %281 = shl nsw i64 -1, %278
  %282 = xor i64 %281, -1
  %283 = and i64 %40, %282
  br label %419

284:                                              ; preds = %65
  %285 = and i32 %14, 268435456
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %297, label %287, !prof !822

287:                                              ; preds = %284
  %288 = and i32 %14, 201326592
  %289 = icmp eq i32 %288, 67108864
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %292 = load i64, ptr %291, align 8, !tbaa !310
  %293 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !178
  %295 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %294, i32 noundef %16, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %296 = and i64 %295, %292
  br label %297

297:                                              ; preds = %290, %287, %284
  %298 = phi i64 [ %296, %290 ], [ %40, %287 ], [ %40, %284 ]
  %299 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !178
  %301 = load i32, ptr %300, align 8
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !178
  %307 = icmp ult i8 %306, 5
  br i1 %307, label %308, label %419, !prof !822

308:                                              ; preds = %297
  %309 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %300, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %310 = and i64 %309, %298
  %311 = load i32, ptr %0, align 8
  %312 = lshr i32 %311, 16
  %313 = and i32 %312, 255
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !178
  %317 = load ptr, ptr %299, align 8, !tbaa !178
  %318 = load i32, ptr %317, align 8
  %319 = lshr i32 %318, 16
  %320 = and i32 %319, 255
  %321 = zext nneg i32 %320 to i64
  %322 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !178
  %324 = icmp ugt i8 %316, %323
  br i1 %324, label %325, label %419, !prof !823

325:                                              ; preds = %308
  %326 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %314
  %327 = load i64, ptr %326, align 8, !tbaa !310
  %328 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %321
  %329 = load i64, ptr %328, align 8, !tbaa !310
  %330 = xor i64 %329, -1
  %331 = and i64 %327, %330
  %332 = or i64 %331, %310
  br label %419

333:                                              ; preds = %65, %65, %65, %65
  %334 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %335 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !178
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 30
  br i1 %339, label %340, label %419, !prof !824

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %342 = load i64, ptr %341, align 8, !tbaa !178
  %343 = icmp ult i64 %342, 64
  br i1 %343, label %344, label %419, !prof !825

344:                                              ; preds = %340
  %345 = zext i8 %31 to i16
  %346 = shl nuw nsw i16 %345, 3
  %347 = zext nneg i16 %346 to i64
  %348 = icmp ult i64 %342, %347
  br i1 %348, label %349, label %419, !prof !826

349:                                              ; preds = %344
  %350 = zext nneg i16 %346 to i32
  %351 = trunc i64 %342 to i32
  %352 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %353 = load i64, ptr %352, align 8, !tbaa !310
  %354 = load ptr, ptr %334, align 8, !tbaa !178
  %355 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %354, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %356 = and i64 %355, %353
  %357 = icmp ugt i32 %39, %350
  br i1 %357, label %358, label %362, !prof !827

358:                                              ; preds = %349
  %359 = xor i64 %353, -1
  %360 = and i64 %40, %359
  %361 = and i64 %360, %355
  br label %362

362:                                              ; preds = %358, %349
  %363 = phi i64 [ %361, %358 ], [ 0, %349 ]
  switch i16 %66, label %383 [
    i16 68, label %364
    i16 67, label %366
    i16 65, label %381
  ], !prof !828

364:                                              ; preds = %362
  %365 = lshr i64 %356, %342
  br label %394

366:                                              ; preds = %362
  %367 = lshr i64 %356, %342
  %368 = xor i32 %351, -1
  %369 = add nsw i32 %368, %350
  %370 = zext nneg i32 %369 to i64
  %371 = shl nuw i64 1, %370
  %372 = and i64 %367, %371
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %394, label %374, !prof !829

374:                                              ; preds = %366
  %375 = shl nsw i64 -1, %342
  %376 = xor i64 %375, -1
  %377 = sub nsw i32 %350, %351
  %378 = zext nneg i32 %377 to i64
  %379 = shl i64 %376, %378
  %380 = or i64 %367, %379
  br label %394

381:                                              ; preds = %362
  %382 = shl i64 %356, %342
  br label %394

383:                                              ; preds = %362
  %384 = trunc i64 %342 to i16
  %385 = urem i16 %384, %346
  %386 = zext nneg i16 %385 to i32
  %387 = zext nneg i16 %385 to i64
  %388 = shl i64 %356, %387
  %389 = sub nsw i32 %350, %386
  %390 = zext nneg i32 %389 to i64
  %391 = lshr i64 %356, %390
  %392 = or i64 %391, %388
  %393 = and i64 %392, %353
  br label %394

394:                                              ; preds = %374, %366, %383, %381, %364
  %395 = phi i64 [ %365, %364 ], [ %380, %374 ], [ %367, %366 ], [ %382, %381 ], [ %393, %383 ]
  %396 = or i64 %395, %363
  %397 = and i64 %396, %40
  br label %419

398:                                              ; preds = %65, %65
  %399 = zext nneg i32 %39 to i64
  %400 = tail call i32 @floor_log2(i64 noundef %399) #15
  %401 = zext nneg i32 %400 to i64
  %402 = shl i64 2, %401
  %403 = add nsw i64 %402, -1
  br label %419

404:                                              ; preds = %65
  br label %419

405:                                              ; preds = %65
  br label %419

406:                                              ; preds = %65
  br label %419

407:                                              ; preds = %65
  %408 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %409 = load ptr, ptr %408, align 8, !tbaa !178
  %410 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %409, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %411 = and i64 %410, %40
  %412 = icmp eq i64 %411, %40
  br i1 %412, label %419, label %413, !prof !830

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %415 = load ptr, ptr %414, align 8, !tbaa !178
  %416 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %415, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %417 = or i64 %416, %410
  %418 = and i64 %417, %40
  br label %419

419:                                              ; preds = %252, %247, %238, %228, %115, %23, %118, %165, %168, %398, %404, %405, %406, %133, %123, %280, %276, %270, %308, %325, %297, %394, %344, %340, %333, %65, %183, %177, %266, %262, %413, %407, %38, %5, %5, %5, %5, %20, %20, %20, %20, %112, %110, %54
  %420 = phi i64 [ %64, %54 ], [ %114, %112 ], [ %111, %110 ], [ %9, %23 ], [ %9, %20 ], [ %9, %20 ], [ %9, %20 ], [ %9, %20 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %40, %38 ], [ -1, %405 ], [ -1, %404 ], [ %403, %398 ], [ %397, %394 ], [ %40, %344 ], [ %40, %340 ], [ %40, %333 ], [ %332, %325 ], [ %310, %308 ], [ %298, %297 ], [ %283, %280 ], [ %40, %276 ], [ %40, %270 ], [ %176, %168 ], [ %167, %165 ], [ %137, %133 ], [ %127, %123 ], [ %122, %118 ], [ 1, %406 ], [ %117, %115 ], [ %188, %183 ], [ %40, %177 ], [ %269, %266 ], [ %264, %262 ], [ %418, %413 ], [ %40, %407 ], [ %40, %228 ], [ %40, %238 ], [ %40, %247 ], [ %40, %252 ], [ %40, %65 ]
  ret i64 %420
}

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @num_sign_bit_copies1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !prof !831 !PGOFuncName !832 {
  %6 = alloca i32, align 4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !178
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = icmp eq i32 %1, 0
  %15 = lshr i32 %7, 16
  %16 = and i32 %15, 255
  %17 = select i1 %14, i32 %16, i32 %1, !prof !833
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %515, label %19, !prof !834

19:                                               ; preds = %5
  %20 = zext i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !178
  %23 = add i8 %22, -8
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %502, label %25

25:                                               ; preds = %502, %19
  %26 = zext nneg i32 %16 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !178
  %29 = add i8 %28, -8
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %507, label %31

31:                                               ; preds = %25
  %32 = add i8 %22, -12
  %33 = icmp ult i8 %32, 5
  br i1 %33, label %515, label %34, !prof !835

34:                                               ; preds = %507, %31
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %36 = load i8, ptr %35, align 1, !tbaa !178
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 3
  %39 = icmp ult i32 %13, %38
  br i1 %39, label %40, label %54, !prof !833

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %42 = load i32, ptr %0, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !178
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %12, %48
  %50 = shl nsw i32 %49, 3
  %51 = add i32 %50, %41
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %515, label %53, !prof !836

53:                                               ; preds = %40
  br label %515

54:                                               ; preds = %34
  %55 = icmp ne i32 %16, 0
  %56 = icmp ugt i32 %13, %38
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %515, label %58, !prof !837

58:                                               ; preds = %54
  %59 = trunc i32 %7 to i16
  switch i16 %59, label %485 [
    i16 37, label %60
    i16 91, label %481
    i16 30, label %73
    i16 39, label %95
    i16 119, label %142
    i16 98, label %155
    i16 100, label %169
    i16 64, label %185
    i16 66, label %189
    i16 69, label %189
    i16 51, label %220
    i16 62, label %243
    i16 61, label %243
    i16 63, label %243
    i16 70, label %243
    i16 71, label %243
    i16 72, label %243
    i16 73, label %243
    i16 49, label %287
    i16 50, label %287
    i16 52, label %322
    i16 59, label %352
    i16 60, label %366
    i16 55, label %380
    i16 58, label %398
    i16 67, label %415
    i16 65, label %445
    i16 47, label %473
    i16 81, label %481
    i16 80, label %481
    i16 82, label %481
    i16 83, label %481
    i16 84, label %481
    i16 85, label %481
    i16 92, label %481
    i16 97, label %481
    i16 93, label %481
    i16 94, label %481
    i16 95, label %481
    i16 96, label %481
    i16 86, label %481
    i16 87, label %481
    i16 88, label %481
    i16 89, label %481
    i16 90, label %481
  ], !prof !838

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 1, ptr %6, align 4, !tbaa !210
  %61 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 3), align 8, !tbaa !839
  %62 = call ptr %61(ptr noundef nonnull %0, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64, !prof !840

64:                                               ; preds = %60
  %65 = call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %62, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %65, %64 ], [ 1, %60 ]
  %68 = icmp ult i32 %67, 2
  %69 = load i32, ptr %6, align 4
  %70 = icmp ult i32 %69, 2
  %71 = select i1 %68, i1 %70, i1 false
  %72 = call i32 @llvm.umax.i32(i32 %67, i32 %69)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %71, label %485, label %515

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !178
  %76 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %77 = load i64, ptr %76, align 8, !tbaa !310
  %78 = and i64 %77, %75
  %79 = icmp ult i8 %11, 9
  br i1 %79, label %80, label %88, !prof !841

80:                                               ; preds = %73
  %81 = add nsw i32 %13, -1
  %82 = zext nneg i32 %81 to i64
  %83 = shl nuw i64 1, %82
  %84 = and i64 %78, %83
  %85 = icmp eq i64 %84, 0
  %86 = select i1 %85, i64 0, i64 %77, !prof !842
  %87 = xor i64 %86, %78
  br label %88

88:                                               ; preds = %80, %73
  %89 = phi i64 [ %78, %73 ], [ %87, %80 ]
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %515, label %91, !prof !843

91:                                               ; preds = %88
  %92 = tail call i32 @floor_log2(i64 noundef %89) #15
  %93 = xor i32 %92, -1
  %94 = add i32 %13, %93
  br label %515

95:                                               ; preds = %58
  %96 = and i32 %7, 268435456
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %117, label %98, !prof !844

98:                                               ; preds = %95
  %99 = and i32 %7, 201326592
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !178
  %104 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %103, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %105 = load i32, ptr %0, align 8
  %106 = lshr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !178
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %12, %111
  %113 = shl nsw i32 %112, 3
  %114 = icmp slt i32 %113, %104
  %115 = or disjoint i32 %113, 1
  %116 = select i1 %114, i32 %104, i32 %115
  br label %515

117:                                              ; preds = %98, %95
  %118 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !178
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !178
  %126 = icmp ugt i8 %11, %125
  br i1 %126, label %485, label %127, !prof !845

127:                                              ; preds = %117
  %128 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %119, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %129 = load ptr, ptr %118, align 8, !tbaa !178
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !178
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 %12, %136
  %138 = shl nsw i32 %137, 3
  %139 = add i32 %138, %128
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %515, label %141, !prof !836

141:                                              ; preds = %127
  br label %515

142:                                              ; preds = %58
  %143 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !178
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 30
  br i1 %147, label %148, label %485

148:                                              ; preds = %142
  %149 = zext nneg i32 %13 to i64
  %150 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !178
  %152 = sub nsw i64 %149, %151
  %153 = tail call i64 @llvm.smax.i64(i64 %152, i64 1)
  %154 = trunc i64 %153 to i32
  br label %515

155:                                              ; preds = %58
  %156 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !178
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !178
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 %12, %164
  %166 = shl nsw i32 %165, 3
  %167 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %157, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %168 = add i32 %166, %167
  br label %515

169:                                              ; preds = %58
  %170 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !178
  %172 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %171, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %173 = load ptr, ptr %170, align 8, !tbaa !178
  %174 = load i32, ptr %173, align 8
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !178
  %180 = zext i8 %179 to i32
  %181 = sub nsw i32 %12, %180
  %182 = shl nsw i32 %181, 3
  %183 = add i32 %182, %172
  %184 = tail call i32 @llvm.smax.i32(i32 %183, i32 1)
  br label %515

185:                                              ; preds = %58
  %186 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !178
  %188 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %187, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %515

189:                                              ; preds = %58, %58
  %190 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %191 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !178
  %193 = load i32, ptr %192, align 8
  %194 = and i32 %193, 65535
  %195 = icmp eq i32 %194, 30
  br i1 %195, label %196, label %485

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 0, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !178
  %199 = icmp sgt i64 %198, -1
  br i1 %199, label %200, label %485

200:                                              ; preds = %196
  %201 = zext nneg i32 %13 to i64
  %202 = icmp ult i64 %198, %201
  br i1 %202, label %203, label %485

203:                                              ; preds = %200
  %204 = load ptr, ptr %190, align 8, !tbaa !178
  %205 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %204, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %206 = sext i32 %205 to i64
  %207 = icmp eq i32 %8, 66
  %208 = load ptr, ptr %191, align 8, !tbaa !178
  %209 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %210 = load i64, ptr %209, align 8, !tbaa !178
  br i1 %207, label %211, label %213

211:                                              ; preds = %203
  %212 = icmp slt i64 %210, %206
  br i1 %212, label %216, label %515

213:                                              ; preds = %203
  %214 = sub nsw i64 %201, %210
  %215 = icmp slt i64 %214, %206
  br i1 %215, label %216, label %515

216:                                              ; preds = %213, %211
  %217 = phi i64 [ %210, %211 ], [ %214, %213 ]
  %218 = trunc i64 %217 to i32
  %219 = sub i32 %205, %218
  br label %515

220:                                              ; preds = %58
  %221 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !178
  %223 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %222, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %224 = icmp ugt i8 %11, 8
  br i1 %224, label %225, label %229, !prof !846

225:                                              ; preds = %220
  %226 = icmp sgt i32 %223, 1
  %227 = add nsw i32 %223, -1
  %228 = select i1 %226, i32 %227, i32 1
  br label %515

229:                                              ; preds = %220
  %230 = load ptr, ptr %221, align 8, !tbaa !178
  %231 = tail call i64 @nonzero_bits(ptr noundef %230, i32 noundef %17) #14
  %232 = icmp eq i64 %231, 1
  br i1 %232, label %515, label %233, !prof !847

233:                                              ; preds = %229
  %234 = icmp sgt i32 %223, 1
  br i1 %234, label %235, label %515

235:                                              ; preds = %233
  %236 = add nsw i32 %13, -1
  %237 = zext nneg i32 %236 to i64
  %238 = shl nuw i64 1, %237
  %239 = and i64 %231, %238
  %240 = icmp ne i64 %239, 0
  %241 = sext i1 %240 to i32
  %242 = add nsw i32 %223, %241
  br label %515

243:                                              ; preds = %58, %58, %58, %58, %58, %58, %58
  %244 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !178
  %246 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %245, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %247 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !178
  %249 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %248, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %250 = icmp eq i32 %8, 61
  %251 = icmp sgt i32 %249, 1
  %252 = select i1 %250, i1 %251, i1 false
  %253 = icmp ult i8 %11, 9
  %254 = select i1 %252, i1 %253, i1 false
  br i1 %254, label %255, label %268, !prof !848

255:                                              ; preds = %243
  %256 = load ptr, ptr %247, align 8, !tbaa !178
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 30
  br i1 %259, label %260, label %285, !prof !849

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %262 = load i64, ptr %261, align 8, !tbaa !178
  %263 = add nsw i32 %13, -1
  %264 = zext nneg i32 %263 to i64
  %265 = shl nuw i64 1, %264
  %266 = and i64 %262, %265
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %515, label %285, !prof !850

268:                                              ; preds = %243
  %269 = icmp eq i32 %8, 62
  %270 = select i1 %269, i1 %251, i1 false
  %271 = select i1 %270, i1 %253, i1 false
  br i1 %271, label %272, label %285, !prof !851

272:                                              ; preds = %268
  %273 = load ptr, ptr %247, align 8, !tbaa !178
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 65535
  %276 = icmp eq i32 %275, 30
  br i1 %276, label %277, label %285, !prof !852

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %279 = load i64, ptr %278, align 8, !tbaa !178
  %280 = add nsw i32 %13, -1
  %281 = zext nneg i32 %280 to i64
  %282 = shl nuw i64 1, %281
  %283 = and i64 %279, %282
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %515, !prof !853

285:                                              ; preds = %255, %260, %277, %272, %268
  %286 = tail call i32 @llvm.smin.i32(i32 %246, i32 %249)
  br label %515

287:                                              ; preds = %58, %58
  %288 = icmp eq i32 %8, 49
  br i1 %288, label %289, label %311, !prof !854

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !178
  %292 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !181
  %293 = icmp eq ptr %291, %292
  %294 = icmp ult i8 %11, 9
  %295 = select i1 %293, i1 %294, i1 false
  br i1 %295, label %296, label %311, !prof !855

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !178
  %299 = tail call i64 @nonzero_bits(ptr noundef %298, i32 noundef %17) #14
  %300 = add nsw i32 %13, -1
  %301 = zext nneg i32 %300 to i64
  %302 = shl nuw i64 1, %301
  %303 = and i64 %299, %302
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %311, !prof !856

305:                                              ; preds = %296
  %306 = icmp ult i64 %299, 2
  br i1 %306, label %515, label %307, !prof !857

307:                                              ; preds = %305
  %308 = tail call i32 @floor_log2(i64 noundef %299) #15
  %309 = xor i32 %308, -1
  %310 = add i32 %13, %309
  br label %515

311:                                              ; preds = %296, %289, %287
  %312 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !178
  %314 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %313, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %315 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %316 = load ptr, ptr %315, align 8, !tbaa !178
  %317 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %316, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %318 = tail call i32 @llvm.smin.i32(i32 %314, i32 %317)
  %319 = icmp slt i32 %318, 2
  br i1 %319, label %515, label %320, !prof !858

320:                                              ; preds = %311
  %321 = add nsw i32 %318, -1
  br label %515

322:                                              ; preds = %58
  %323 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !178
  %325 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %324, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %326 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !178
  %328 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %327, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %329 = sub i32 %328, %13
  %330 = add i32 %329, %325
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %349, !prof !859

332:                                              ; preds = %322
  %333 = icmp ugt i8 %11, 8
  br i1 %333, label %347, label %334, !prof !860

334:                                              ; preds = %332
  %335 = load ptr, ptr %323, align 8, !tbaa !178
  %336 = tail call i64 @nonzero_bits(ptr noundef %335, i32 noundef %17) #14
  %337 = add nsw i32 %13, -1
  %338 = zext nneg i32 %337 to i64
  %339 = shl nuw i64 1, %338
  %340 = and i64 %336, %339
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %349, label %342, !prof !859

342:                                              ; preds = %334
  %343 = load ptr, ptr %326, align 8, !tbaa !178
  %344 = tail call i64 @nonzero_bits(ptr noundef %343, i32 noundef %17) #14
  %345 = and i64 %344, %339
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %342, %332
  %348 = add nsw i32 %330, -1
  br label %349

349:                                              ; preds = %347, %342, %334, %322
  %350 = phi i32 [ %348, %347 ], [ %330, %342 ], [ %330, %334 ], [ %330, %322 ]
  %351 = tail call i32 @llvm.smax.i32(i32 %350, i32 1)
  br label %515

352:                                              ; preds = %58
  %353 = icmp ugt i8 %11, 8
  br i1 %353, label %515, label %354

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !178
  %357 = tail call i64 @nonzero_bits(ptr noundef %356, i32 noundef %17) #14
  %358 = add nsw i32 %13, -1
  %359 = zext nneg i32 %358 to i64
  %360 = shl nuw i64 1, %359
  %361 = and i64 %357, %360
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %515

363:                                              ; preds = %354
  %364 = load ptr, ptr %355, align 8, !tbaa !178
  %365 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %364, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %515

366:                                              ; preds = %58
  %367 = icmp ugt i8 %11, 8
  br i1 %367, label %515, label %368

368:                                              ; preds = %366
  %369 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %370 = load ptr, ptr %369, align 8, !tbaa !178
  %371 = tail call i64 @nonzero_bits(ptr noundef %370, i32 noundef %17) #14
  %372 = add nsw i32 %13, -1
  %373 = zext nneg i32 %372 to i64
  %374 = shl nuw i64 1, %373
  %375 = and i64 %371, %374
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %515

377:                                              ; preds = %368
  %378 = load ptr, ptr %369, align 8, !tbaa !178
  %379 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %378, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %515

380:                                              ; preds = %58
  %381 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !178
  %383 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %382, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %384 = icmp sgt i32 %383, 1
  br i1 %384, label %385, label %515

385:                                              ; preds = %380
  %386 = icmp ugt i8 %11, 8
  br i1 %386, label %396, label %387

387:                                              ; preds = %385
  %388 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !178
  %390 = tail call i64 @nonzero_bits(ptr noundef %389, i32 noundef %17) #14
  %391 = add nsw i32 %13, -1
  %392 = zext nneg i32 %391 to i64
  %393 = shl nuw i64 1, %392
  %394 = and i64 %390, %393
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %515, label %396

396:                                              ; preds = %387, %385
  %397 = add nsw i32 %383, -1
  br label %515

398:                                              ; preds = %58
  %399 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %400 = load ptr, ptr %399, align 8, !tbaa !178
  %401 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %400, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %402 = icmp sgt i32 %401, 1
  br i1 %402, label %403, label %515

403:                                              ; preds = %398
  %404 = icmp ugt i8 %11, 8
  br i1 %404, label %413, label %405

405:                                              ; preds = %403
  %406 = load ptr, ptr %399, align 8, !tbaa !178
  %407 = tail call i64 @nonzero_bits(ptr noundef %406, i32 noundef %17) #14
  %408 = add nsw i32 %13, -1
  %409 = zext nneg i32 %408 to i64
  %410 = shl nuw i64 1, %409
  %411 = and i64 %407, %410
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %515, label %413

413:                                              ; preds = %405, %403
  %414 = add nsw i32 %401, -1
  br label %515

415:                                              ; preds = %58
  %416 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !178
  %418 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %417, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %419 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !178
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, 65535
  %423 = icmp eq i32 %422, 30
  br i1 %423, label %424, label %515, !prof !861

424:                                              ; preds = %415
  %425 = getelementptr inbounds %struct.rtx_def, ptr %420, i64 0, i32 1
  %426 = load i64, ptr %425, align 8, !tbaa !178
  %427 = icmp sgt i64 %426, 0
  br i1 %427, label %428, label %515

428:                                              ; preds = %424
  %429 = load i32, ptr %0, align 8
  %430 = lshr i32 %429, 16
  %431 = and i32 %430, 255
  %432 = zext nneg i32 %431 to i64
  %433 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %432
  %434 = load i8, ptr %433, align 1, !tbaa !178
  %435 = zext i8 %434 to i64
  %436 = shl nuw nsw i64 %435, 3
  %437 = icmp ult i64 %426, %436
  br i1 %437, label %438, label %515

438:                                              ; preds = %428
  %439 = zext nneg i32 %13 to i64
  %440 = sext i32 %418 to i64
  %441 = add nsw i64 %426, %440
  %442 = icmp sgt i64 %441, %439
  %443 = trunc i64 %441 to i32
  %444 = select i1 %442, i32 %13, i32 %443
  br label %515

445:                                              ; preds = %58
  %446 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %447 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %448 = load ptr, ptr %447, align 8, !tbaa !178
  %449 = load i32, ptr %448, align 8
  %450 = and i32 %449, 65535
  %451 = icmp eq i32 %450, 30
  br i1 %451, label %452, label %515, !prof !862

452:                                              ; preds = %445
  %453 = getelementptr inbounds %struct.rtx_def, ptr %448, i64 0, i32 1
  %454 = load i64, ptr %453, align 8, !tbaa !178
  %455 = icmp sgt i64 %454, -1
  %456 = zext nneg i32 %13 to i64
  %457 = icmp slt i64 %454, %456
  %458 = select i1 %455, i1 %457, i1 false
  %459 = zext i8 %36 to i64
  %460 = shl nuw nsw i64 %459, 3
  %461 = icmp ult i64 %454, %460
  %462 = select i1 %458, i1 %461, i1 false
  br i1 %462, label %463, label %515, !prof !863

463:                                              ; preds = %452
  %464 = load ptr, ptr %446, align 8, !tbaa !178
  %465 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %464, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %466 = sext i32 %465 to i64
  %467 = load ptr, ptr %447, align 8, !tbaa !178
  %468 = getelementptr inbounds %struct.rtx_def, ptr %467, i64 0, i32 1
  %469 = load i64, ptr %468, align 8, !tbaa !178
  %470 = sub nsw i64 %466, %469
  %471 = tail call i64 @llvm.smax.i64(i64 %470, i64 1)
  %472 = trunc i64 %471 to i32
  br label %515

473:                                              ; preds = %58
  %474 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %475 = load ptr, ptr %474, align 8, !tbaa !178
  %476 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %475, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %477 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %478 = load ptr, ptr %477, align 8, !tbaa !178
  %479 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %478, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %480 = tail call i32 @llvm.smin.i32(i32 %476, i32 %479)
  br label %515

481:                                              ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %482 = tail call i32 @floor_log2(i64 noundef 1) #15
  %483 = xor i32 %482, -1
  %484 = add i32 %13, %483
  br label %515

485:                                              ; preds = %58, %189, %196, %200, %142, %117, %66
  %486 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %487 = load i8, ptr %486, align 1, !tbaa !178
  %488 = zext i8 %487 to i32
  %489 = shl nuw nsw i32 %488, 3
  %490 = icmp ugt i8 %487, 8
  br i1 %490, label %515, label %491, !prof !864

491:                                              ; preds = %485
  %492 = call i64 @nonzero_bits(ptr noundef nonnull %0, i32 noundef %17) #14
  %493 = add nsw i32 %489, -1
  %494 = zext nneg i32 %493 to i64
  %495 = shl nuw i64 1, %494
  %496 = and i64 %492, %495
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %498, label %515, !prof !865

498:                                              ; preds = %491
  %499 = call i32 @floor_log2(i64 noundef %492) #15
  %500 = xor i32 %499, -1
  %501 = add i32 %489, %500
  br label %515

502:                                              ; preds = %19
  %503 = zext nneg i8 %23 to i16
  %504 = lshr i16 523, %503
  %505 = and i16 %504, 1
  %506 = icmp eq i16 %505, 0
  br i1 %506, label %25, label %515

507:                                              ; preds = %25
  %508 = zext nneg i8 %29 to i16
  %509 = lshr i16 1019, %508
  %510 = and i16 %509, 1
  %511 = icmp ne i16 %510, 0
  %512 = add i8 %22, -12
  %513 = icmp ult i8 %512, 5
  %514 = or i1 %511, %513
  br i1 %514, label %515, label %34, !prof !866

515:                                              ; preds = %507, %502, %213, %305, %235, %31, %498, %491, %485, %445, %452, %415, %424, %428, %438, %398, %405, %413, %380, %387, %396, %368, %366, %354, %352, %320, %311, %307, %277, %260, %233, %229, %216, %211, %141, %127, %91, %88, %54, %53, %40, %5, %66, %481, %473, %463, %377, %363, %349, %285, %225, %185, %169, %155, %148, %101
  %516 = phi i32 [ %480, %473 ], [ %472, %463 ], [ %379, %377 ], [ %365, %363 ], [ %351, %349 ], [ %286, %285 ], [ %228, %225 ], [ %188, %185 ], [ %184, %169 ], [ %168, %155 ], [ %154, %148 ], [ %116, %101 ], [ %484, %481 ], [ %72, %66 ], [ 1, %31 ], [ 1, %5 ], [ %51, %53 ], [ 1, %40 ], [ 1, %54 ], [ %94, %91 ], [ %13, %88 ], [ %139, %141 ], [ 1, %127 ], [ %219, %216 ], [ 1, %211 ], [ %13, %229 ], [ %223, %233 ], [ %242, %235 ], [ %249, %260 ], [ %249, %277 ], [ %310, %307 ], [ %13, %305 ], [ %321, %320 ], [ 1, %311 ], [ 1, %352 ], [ 1, %354 ], [ 1, %366 ], [ 1, %368 ], [ %397, %396 ], [ %383, %387 ], [ %383, %380 ], [ %414, %413 ], [ %401, %405 ], [ %401, %398 ], [ %444, %438 ], [ %418, %428 ], [ %418, %424 ], [ %418, %415 ], [ 1, %452 ], [ 1, %445 ], [ 1, %485 ], [ %501, %498 ], [ 1, %491 ], [ 1, %213 ], [ 1, %502 ], [ 1, %507 ]
  ret i32 %516
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!176}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!35 = !{ptr @rtx_varies_p, ptr @rtx_varies_p, i64 558985}
!36 = !{ptr @rtx_addr_can_trap_p, ptr @rtx_addr_can_trap_p_1, i64 343099}
!37 = !{ptr @rtx_addr_can_trap_p_1, ptr @host_integerp, i64 114931}
!38 = !{ptr @rtx_addr_can_trap_p_1, ptr @tree_low_cst, i64 114930}
!39 = !{ptr @rtx_addr_can_trap_p_1, ptr @int_size_in_bytes, i64 737800}
!40 = !{ptr @rtx_addr_can_trap_p_1, ptr @rhs_regno, i64 109182}
!41 = !{ptr @rtx_addr_can_trap_p_1, ptr @rtx_addr_can_trap_p_1, i64 197966}
!42 = !{ptr @nonzero_address_p, ptr @rhs_regno, i64 517995}
!43 = !{ptr @count_occurrences, ptr @count_occurrences, i64 21777}
!44 = !{ptr @count_occurrences, ptr @rtx_equal_p, i64 1}
!45 = !{ptr @reg_mentioned_p, ptr @rhs_regno, i64 883458}
!46 = !{ptr @reg_mentioned_p, ptr @rtx_equal_p, i64 74}
!47 = !{ptr @reg_mentioned_p, ptr @reg_mentioned_p, i64 3613132}
!48 = !{ptr @reg_used_between_p, ptr @reg_overlap_mentioned_p, i64 5508}
!49 = !{ptr @reg_used_between_p, ptr @find_reg_fusage, i64 1}
!50 = !{ptr @reg_overlap_mentioned_p, ptr @rhs_regno, i64 2726235}
!51 = !{ptr @reg_overlap_mentioned_p, ptr @subreg_regno, i64 1}
!52 = !{ptr @reg_overlap_mentioned_p, ptr @end_hard_regno, i64 1299154}
!53 = !{ptr @reg_overlap_mentioned_p, ptr @refers_to_regno_p, i64 2726235}
!54 = !{ptr @reg_overlap_mentioned_p, ptr @reg_overlap_mentioned_p, i64 17}
!55 = !{ptr @reg_overlap_mentioned_p, ptr @reg_mentioned_p, i64 10672}
!56 = !{ptr @reg_overlap_mentioned_p, ptr @fancy_abort, i64 1}
!57 = !{ptr @find_reg_fusage, ptr @fancy_abort, i64 1}
!58 = !{ptr @find_reg_fusage, ptr @rtx_equal_p, i64 7}
!59 = !{ptr @find_reg_fusage, ptr @rhs_regno, i64 32009}
!60 = !{ptr @find_reg_fusage, ptr @end_hard_regno, i64 1}
!61 = !{ptr @find_reg_fusage, ptr @find_regno_fusage, i64 8}
!62 = !{ptr @reg_referenced_p, ptr @reg_overlap_mentioned_p, i64 802873}
!63 = !{ptr @reg_referenced_p, ptr @reg_referenced_p, i64 263924}
!64 = !{ptr @reg_set_between_p, ptr @reg_set_p, i64 103810}
!65 = !{ptr @reg_set_p, ptr @rhs_regno, i64 90049}
!66 = !{ptr @reg_set_p, ptr @overlaps_hard_reg_set_p, i64 58913}
!67 = !{ptr @reg_set_p, ptr @find_reg_fusage, i64 31136}
!68 = !{ptr @reg_set_p, ptr @set_of, i64 595573}
!69 = !{ptr @overlaps_hard_reg_set_p, ptr @end_hard_regno, i64 1}
!70 = !{ptr @set_of, ptr @note_stores, i64 862964}
!71 = !{ptr @modified_between_p, ptr @modified_between_p, i64 874404}
!72 = !{ptr @modified_between_p, ptr @memory_modified_in_insn_p, i64 44492}
!73 = !{ptr @modified_between_p, ptr @reg_set_between_p, i64 279668}
!74 = !{ptr @modified_in_p, ptr @modified_in_p, i64 1029045}
!75 = !{ptr @modified_in_p, ptr @memory_modified_in_insn_p, i64 139666}
!76 = !{ptr @modified_in_p, ptr @reg_set_p, i64 300472}
!77 = !{ptr @note_stores, ptr @rhs_regno, i64 1}
!78 = !{ptr @note_stores, ptr @note_stores, i64 1600360}
!79 = !{ptr @set_of_1, ptr @rtx_equal_p, i64 892163}
!80 = !{ptr @set_of_1, ptr @reg_overlap_mentioned_p, i64 510954}
!81 = !{ptr @single_set_2, ptr @find_reg_note, i64 14940}
!82 = !{ptr @single_set_2, ptr @side_effects_p, i64 2}
!83 = !{ptr @find_reg_note, ptr @fancy_abort, i64 1}
!84 = !{ptr @side_effects_p, ptr @side_effects_p, i64 23276711}
!85 = !{ptr @set_noop_p, ptr @rtx_equal_p, i64 13998}
!86 = !{ptr @set_noop_p, ptr @side_effects_p, i64 1}
!87 = !{ptr @set_noop_p, ptr @rhs_regno, i64 1934144}
!88 = !{ptr @noop_move_p, ptr @find_reg_note, i64 6215701}
!89 = !{ptr @noop_move_p, ptr @set_noop_p, i64 6161505}
!90 = !{ptr @refers_to_regno_p, ptr @rhs_regno, i64 3023687}
!91 = !{ptr @refers_to_regno_p, ptr @end_hard_regno, i64 854014}
!92 = !{ptr @refers_to_regno_p, ptr @subreg_regno, i64 1}
!93 = !{ptr @refers_to_regno_p, ptr @subreg_nregs, i64 1}
!94 = !{ptr @refers_to_regno_p, ptr @refers_to_regno_p, i64 3543798}
!95 = !{ptr @subreg_nregs, ptr @rhs_regno, i64 196}
!96 = !{ptr @subreg_nregs, ptr @subreg_nregs_with_regno, i64 196}
!97 = !{ptr @note_uses, ptr @note_uses, i64 154791}
!98 = !{ptr @dead_or_set_p, ptr @fancy_abort, i64 1}
!99 = !{ptr @dead_or_set_p, ptr @rhs_regno, i64 1147817}
!100 = !{ptr @dead_or_set_p, ptr @end_hard_regno, i64 573065}
!101 = !{ptr @dead_or_set_p, ptr @dead_or_set_regno_p, i64 1265962}
!102 = !{ptr @dead_or_set_regno_p, ptr @find_regno_note, i64 1147818}
!103 = !{ptr @dead_or_set_regno_p, ptr @find_regno_fusage, i64 1}
!104 = !{ptr @dead_or_set_regno_p, ptr @covers_regno_p, i64 789971}
!105 = !{ptr @find_regno_note, ptr @rhs_regno, i64 1379474}
!106 = !{ptr @find_regno_note, ptr @end_hard_regno, i64 669859}
!107 = !{ptr @covers_regno_p, ptr @covers_regno_no_parallel_p, i64 760280}
!108 = !{ptr @find_reg_equal_equiv_note, ptr @multiple_sets, i64 86813}
!109 = !{ptr @alloc_reg_note, ptr @alloc_INSN_LIST, i64 50}
!110 = !{ptr @alloc_reg_note, ptr @alloc_EXPR_LIST, i64 1114286}
!111 = !{ptr @add_reg_note, ptr @alloc_reg_note, i64 1016766}
!112 = !{ptr @remove_note, ptr @df_notes_rescan, i64 6512}
!113 = !{ptr @volatile_insn_p, ptr @volatile_insn_p, i64 115771}
!114 = !{ptr @volatile_refs_p, ptr @volatile_refs_p, i64 18171740}
!115 = !{ptr @may_trap_p_1, ptr @gen_rtx_CONST_INT, i64 1344054}
!116 = !{ptr @may_trap_p_1, ptr @rtx_addr_can_trap_p_1, i64 1344055}
!117 = !{ptr @may_trap_p_1, ptr @may_trap_p_1, i64 16292000}
!118 = !{ptr @may_trap_p, ptr @may_trap_p_1, i64 7136039}
!119 = !{ptr @replace_rtx, ptr @replace_rtx, i64 14464}
!120 = !{ptr @for_each_rtx, ptr @for_each_rtx_1, i64 7342976}
!121 = !{ptr @tablejump_p, ptr @next_active_insn, i64 568980}
!122 = !{ptr @computed_jump_p, ptr @computed_jump_p_1, i64 2}
!123 = !{ptr @for_each_rtx_1, ptr @for_each_rtx_1, i64 6860572}
!124 = !{ptr @commutative_operand_precedence, ptr @avoid_constant_pool_reference, i64 6981632}
!125 = !{ptr @swap_commutative_operands_p, ptr @commutative_operand_precedence, i64 13910684}
!126 = !{ptr @subreg_get_info, ptr @fancy_abort, i64 10}
!127 = !{ptr @subreg_get_info, ptr @subreg_lowpart_offset, i64 4184}
!128 = !{ptr @subreg_get_info, ptr @mode_for_size, i64 2}
!129 = !{ptr @subreg_regno_offset, ptr @subreg_get_info, i64 902}
!130 = !{ptr @simplify_subreg_regno, ptr @ix86_cannot_change_mode_class, i64 3523}
!131 = !{ptr @simplify_subreg_regno, ptr @subreg_get_info, i64 1175}
!132 = !{ptr @simplify_subreg_regno, ptr @ix86_hard_regno_mode_ok, i64 1174}
!133 = !{ptr @subreg_nregs_with_regno, ptr @subreg_get_info, i64 196}
!134 = !{ptr @keep_with_call_p, ptr @single_set_2, i64 1}
!135 = !{ptr @keep_with_call_p, ptr @rhs_regno, i64 4793}
!136 = !{ptr @keep_with_call_p, ptr @general_operand, i64 1}
!137 = !{ptr @keep_with_call_p, ptr @ix86_function_value_regno_p, i64 134}
!138 = !{ptr @keep_with_call_p, ptr @next_nonnote_insn, i64 1}
!139 = !{ptr @keep_with_call_p, ptr @keep_with_call_p, i64 1}
!140 = !{ptr @label_is_jump_target_p, ptr @tablejump_p, i64 48207}
!141 = !{ptr @label_is_jump_target_p, ptr @find_reg_note, i64 48206}
!142 = !{ptr @rtx_cost, ptr @ix86_modes_tieable_p, i64 72157}
!143 = !{ptr @rtx_cost, ptr @rtx_cost, i64 6074279}
!144 = !{ptr @address_cost, ptr @memory_address_addr_space_p, i64 28726}
!145 = !{ptr @nonzero_bits, ptr @cached_nonzero_bits, i64 7275291}
!146 = !{ptr @cached_nonzero_bits, ptr @cached_nonzero_bits, i64 1200}
!147 = !{ptr @cached_nonzero_bits, ptr @nonzero_bits1, i64 9837423}
!148 = !{ptr @num_sign_bit_copies, ptr @cached_num_sign_bit_copies, i64 2605023}
!149 = !{ptr @cached_num_sign_bit_copies, ptr @cached_num_sign_bit_copies, i64 309}
!150 = !{ptr @cached_num_sign_bit_copies, ptr @num_sign_bit_copies1, i64 3624186}
!151 = !{ptr @insn_rtx_cost, ptr @rtx_cost, i64 588841}
!152 = !{ptr @canonicalize_condition, ptr @reversed_comparison_code, i64 1}
!153 = !{ptr @canonicalize_condition, ptr @prev_nonnote_insn, i64 142478}
!154 = !{ptr @canonicalize_condition, ptr @set_of, i64 130694}
!155 = !{ptr @canonicalize_condition, ptr @rtx_equal_p, i64 123068}
!156 = !{ptr @canonicalize_condition, ptr @reg_set_p, i64 7625}
!157 = !{ptr @canonicalize_condition, ptr @modified_in_p, i64 110743}
!158 = !{ptr @canonicalize_condition, ptr @modified_between_p, i64 110667}
!159 = !{ptr @canonicalize_condition, ptr @swap_condition, i64 1}
!160 = !{ptr @canonicalize_condition, ptr @gen_int_mode, i64 3758}
!161 = !{ptr @canonicalize_condition, ptr @gen_rtx_fmt_ee_stat, i64 227270}
!162 = !{ptr @get_condition, ptr @any_condjump_p, i64 157736}
!163 = !{ptr @get_condition, ptr @pc_set, i64 157687}
!164 = !{ptr @get_condition, ptr @canonicalize_condition, i64 157687}
!165 = !{ptr @init_rtlanal, ptr @strpbrk, i64 70}
!166 = !{ptr @init_rtlanal, ptr @init_num_sign_bit_copies_in_rep, i64 1}
!167 = !{ptr @covers_regno_no_parallel_p, ptr @rhs_regno, i64 726289}
!168 = !{ptr @covers_regno_no_parallel_p, ptr @end_hard_regno, i64 457524}
!169 = !{ptr @nonzero_bits1, ptr @cached_nonzero_bits, i64 2561570}
!170 = !{ptr @nonzero_bits1, ptr @rhs_regno, i64 3}
!171 = !{ptr @nonzero_bits1, ptr @floor_log2, i64 1760058}
!172 = !{ptr @nonzero_bits1, ptr @fancy_abort, i64 1}
!173 = !{ptr @num_sign_bit_copies1, ptr @cached_num_sign_bit_copies, i64 573458}
!174 = !{ptr @num_sign_bit_copies1, ptr @floor_log2, i64 333649}
!175 = !{ptr @num_sign_bit_copies1, ptr @nonzero_bits, i64 991183}
!176 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!177 = !{!"function_entry_count", i64 0}
!178 = !{!179, !179, i64 0}
!179 = !{!"omnipotent char", !180, i64 0}
!180 = !{!"Simple C/C++ TBAA"}
!181 = !{!182, !182, i64 0}
!182 = !{!"any pointer", !179, i64 0}
!183 = !{!184, !185, i64 0}
!184 = !{!"rtvec_def", !185, i64 0, !179, i64 8}
!185 = !{!"int", !179, i64 0}
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = distinct !{!188, !187}
!189 = !{!"function_entry_count", i64 1822115}
!190 = !{!"branch_weights", i32 1, i32 1822116}
!191 = !{!"branch_weights", i32 358476, i32 279685, i32 21701, i32 273335, i32 1, i32 1, i32 1, i32 6981, i32 175, i32 881769, i32 1, i32 1}
!192 = !{!"branch_weights", i32 279511, i32 175}
!193 = !{!"branch_weights", i32 6888, i32 -1257793197}
!194 = !{!"branch_weights", i32 1, i32 881769}
!195 = !{!"branch_weights", i32 1, i32 127}
!196 = !{!"branch_weights", i32 325351406, i32 -1755243078, i32 4509}
!197 = !{!"branch_weights", i32 204727, i32 358476}
!198 = distinct !{!198, !187}
!199 = !{!"branch_weights", i32 81324801, i32 127}
!200 = distinct !{!200, !187}
!201 = !{!"function_entry_count", i64 343099}
!202 = !{!"function_entry_count", i64 1967637}
!203 = !{!"rtlanal.c:rtx_addr_can_trap_p_1"}
!204 = !{!"branch_weights", i32 49214, i32 1005342, i32 1, i32 632523, i32 91205, i32 188818, i32 1, i32 1, i32 541, i32 1, i32 1, i32 1, i32 1}
!205 = !{!"branch_weights", i32 1005342, i32 1}
!206 = !{!"branch_weights", i32 1, i32 1005342}
!207 = !{!"branch_weights", i32 192364, i32 812979}
!208 = !{!"branch_weights", i32 -2147483648, i32 0}
!209 = !{!"branch_weights", i32 1, i32 812979}
!210 = !{!185, !185, i64 0}
!211 = !{!"branch_weights", i32 812979, i32 1}
!212 = !{!"branch_weights", i32 703407, i32 109573}
!213 = !{!"branch_weights", i32 1, i32 109573}
!214 = !{!"branch_weights", i32 1, i32 703407}
!215 = !{!"branch_weights", i32 0, i32 -2147483648}
!216 = !{!"branch_weights", i32 -1148220029, i32 619859779}
!217 = !{!"branch_weights", i32 1, i32 104093}
!218 = !{!"branch_weights", i32 1, i32 188818}
!219 = !{!"branch_weights", i32 188738, i32 81}
!220 = !{!"branch_weights", i32 175097, i32 13642}
!221 = !{!"function_entry_count", i64 2157261}
!222 = !{!"branch_weights", i32 1062451, i32 1, i32 1, i32 335732, i32 1, i32 759081, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!223 = !{!"branch_weights", i32 20155, i32 -2039386872}
!224 = !{!"branch_weights", i32 1, i32 335732}
!225 = !{!"branch_weights", i32 759081, i32 1}
!226 = !{!"function_entry_count", i64 25416486}
!227 = !{!"rtlanal.c:rhs_regno"}
!228 = distinct !{!228, !187}
!229 = distinct !{!229, !187}
!230 = !{!"function_entry_count", i64 7788}
!231 = !{!"branch_weights", i32 4239, i32 3551}
!232 = !{!"branch_weights", i32 1861365047, i32 524288, i32 -2072653112}
!233 = !{!"branch_weights", i32 4239, i32 1}
!234 = !{!"function_entry_count", i64 26590}
!235 = !{!"branch_weights", i32 26591, i32 1}
!236 = !{!"branch_weights", i32 1, i32 53182, i32 1}
!237 = !{!238, !239, i64 16}
!238 = !{!"object_block", !182, i64 0, !185, i64 8, !239, i64 16, !182, i64 24, !182, i64 32}
!239 = !{!"long", !179, i64 0}
!240 = !{!"function_entry_count", i64 21634}
!241 = !{!"branch_weights", i32 7471, i32 1, i32 6779, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 13, i32 1}
!242 = !{!"branch_weights", i32 127, i32 943745}
!243 = !{!"branch_weights", i32 1, i32 13}
!244 = !{!"branch_weights", i32 7374, i32 6887}
!245 = !{!"branch_weights", i32 1, i32 7482}
!246 = !{!"branch_weights", i32 1, i32 14447, i32 1}
!247 = distinct !{!247, !187}
!248 = !{!"branch_weights", i32 7482, i32 6977}
!249 = distinct !{!249, !187}
!250 = !{!"function_entry_count", i64 4982860}
!251 = !{!"branch_weights", i32 8, i32 4982854}
!252 = !{!"branch_weights", i32 640790, i32 4342065}
!253 = !{!"branch_weights", i32 406323, i32 3935743}
!254 = !{!"branch_weights", i32 2120469, i32 451824, i32 1, i32 1, i32 614998, i32 748455, i32 1, i32 1, i32 1}
!255 = !{!"branch_weights", i32 441731, i32 10094}
!256 = !{!"branch_weights", i32 74, i32 2120396}
!257 = !{!"branch_weights", i32 37, i32 38}
!258 = !{!"branch_weights", i32 1, i32 276407}
!259 = !{!"branch_weights", i32 335039412, i32 27711762, i32 -1302778263}
!260 = !{!"branch_weights", i32 1, i32 59914}
!261 = !{!"branch_weights", i32 29168, i32 30747}
!262 = distinct !{!262, !187}
!263 = !{!"branch_weights", i32 1506643, i32 1813279}
!264 = !{!"branch_weights", i32 3445995, i32 276407}
!265 = distinct !{!265, !187}
!266 = distinct !{!266, !187}
!267 = !{!"function_entry_count", i64 23226}
!268 = !{!"branch_weights", i32 1, i32 23227}
!269 = !{!"branch_weights", i32 1, i32 23202}
!270 = !{!"branch_weights", i32 -1148464682, i32 731472710}
!271 = !{!"branch_weights", i32 5478, i32 25}
!272 = !{!"branch_weights", i32 1, i32 5478}
!273 = !{i32 0, i32 2}
!274 = !{!"branch_weights", i32 23202, i32 5977}
!275 = distinct !{!275, !187}
!276 = !{!"function_entry_count", i64 2973382}
!277 = !{!"branch_weights", i32 236472, i32 2736912}
!278 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 2726243, i32 1, i32 1, i32 10670, i32 1, i32 1}
!279 = !{!"branch_weights", i32 1299159, i32 1427085}
!280 = distinct !{!280, !187}
!281 = distinct !{!281, !187}
!282 = distinct !{!282, !187}
!283 = !{!"function_entry_count", i64 32011}
!284 = !{!"branch_weights", i32 32012, i32 1}
!285 = !{!"branch_weights", i32 1, i32 32012}
!286 = distinct !{!286, !187}
!287 = distinct !{!287, !187}
!288 = !{!"function_entry_count", i64 1066021}
!289 = !{!"branch_weights", i32 1, i32 802710, i32 1, i32 1, i32 116, i32 1, i32 1, i32 1, i32 1, i32 1, i32 132581, i32 130618, i32 1}
!290 = !{!"branch_weights", i32 487779, i32 314932}
!291 = !{!"branch_weights", i32 7298, i32 7506, i32 215700241, i32 -849011033, i32 255456}
!292 = !{!"branch_weights", i32 35, i32 1}
!293 = distinct !{!293, !187}
!294 = distinct !{!294, !187}
!295 = !{!"branch_weights", i32 263929, i32 85971}
!296 = !{!"branch_weights", i32 217319, i32 46611}
!297 = distinct !{!297, !187}
!298 = !{!"branch_weights", i32 1, i32 130618}
!299 = !{!"function_entry_count", i64 279695}
!300 = !{!"branch_weights", i32 1, i32 279696}
!301 = !{!"branch_weights", i32 175865, i32 103799}
!302 = !{!"branch_weights", i32 -33611205, i32 20526}
!303 = !{!"branch_weights", i32 103767, i32 33}
!304 = !{!"branch_weights", i32 103799, i32 0}
!305 = distinct !{!305, !187}
!306 = !{!"function_entry_count", i64 654487}
!307 = !{!"branch_weights", i32 349922048, i32 -2101631696}
!308 = !{!"branch_weights", i32 0, i32 -1344208896, i32 32768}
!309 = !{!"branch_weights", i32 58915, i32 31136}
!310 = !{!239, !239, i64 0}
!311 = !{i8 0, i8 2}
!312 = !{!"branch_weights", i32 1, i32 58915}
!313 = !{!"branch_weights", i32 31136, i32 1}
!314 = !{!"function_entry_count", i64 58914}
!315 = !{!"rtlanal.c:overlaps_hard_reg_set_p"}
!316 = distinct !{!316, !187}
!317 = !{!"function_entry_count", i64 862964}
!318 = !{!319, !182, i64 0}
!319 = !{!"set_of_data", !182, i64 0, !182, i64 8}
!320 = !{!319, !182, i64 8}
!321 = !{!"branch_weights", i32 -1246632026, i32 85369862}
!322 = !{!"function_entry_count", i64 1248933}
!323 = !{!"branch_weights", i32 1, i32 1248934}
!324 = !{!"branch_weights", i32 382683, i32 382697, i32 1, i32 1, i32 1, i32 6418, i32 95326, i32 1, i32 1, i32 1, i32 102144, i32 279671}
!325 = !{!"branch_weights", i32 102144, i32 1}
!326 = !{!"branch_weights", i32 102144, i32 44494}
!327 = !{!"branch_weights", i32 44494, i32 1}
!328 = distinct !{!328, !187}
!329 = !{!"branch_weights", i32 1, i32 382650}
!330 = !{!"branch_weights", i32 772224, i32 1}
!331 = !{!"branch_weights", i32 772192, i32 33}
!332 = !{!"branch_weights", i32 1, i32 772192}
!333 = distinct !{!333, !187}
!334 = !{!"branch_weights", i32 389574, i32 382650}
!335 = distinct !{!335, !187}
!336 = !{!"function_entry_count", i64 1461065}
!337 = !{!"branch_weights", i32 440905, i32 440753, i32 1, i32 1, i32 1, i32 5735, i32 133529, i32 1, i32 1, i32 1, i32 139675, i32 300474}
!338 = !{!"branch_weights", i32 139669, i32 7}
!339 = !{!"branch_weights", i32 139669, i32 1}
!340 = !{!"branch_weights", i32 1, i32 440207}
!341 = !{!"branch_weights", i32 888668, i32 1}
!342 = !{!"branch_weights", i32 887971, i32 698}
!343 = !{!"branch_weights", i32 1, i32 887971}
!344 = distinct !{!344, !187}
!345 = !{!"branch_weights", i32 448461, i32 440207}
!346 = distinct !{!346, !187}
!347 = !{!"function_entry_count", i64 27664173}
!348 = !{!"branch_weights", i32 1, i32 27664174}
!349 = !{!"branch_weights", i32 7954492, i32 -2016796344, i32 70329587, i32 70156707}
!350 = !{!"branch_weights", i32 -897789641, i32 128, i32 30117796, i32 30117796, i32 127}
!351 = distinct !{!351, !187}
!352 = distinct !{!352, !187}
!353 = !{!"branch_weights", i32 799810, i32 1}
!354 = !{!"branch_weights", i32 800553, i32 799810}
!355 = distinct !{!355, !187}
!356 = !{!"function_entry_count", i64 892163}
!357 = !{!"rtlanal.c:set_of_1"}
!358 = !{!"branch_weights", i32 619209, i32 272956}
!359 = !{!"branch_weights", i32 108254, i32 510956}
!360 = !{!"branch_weights", i32 502804, i32 8153}
!361 = !{!"function_entry_count", i64 964682}
!362 = !{!"branch_weights", i32 875535, i32 89149}
!363 = !{!"branch_weights", i32 868096, i32 1}
!364 = !{!"branch_weights", i32 1, i32 1153, i32 867208, i32 882973}
!365 = !{!"branch_weights", i32 7439, i32 875535}
!366 = !{!"branch_weights", i32 7439, i32 1}
!367 = !{!"branch_weights", i32 2147482730, i32 918}
!368 = !{!"branch_weights", i32 883236, i32 868096}
!369 = distinct !{!369, !187}
!370 = !{!"function_entry_count", i64 47602974}
!371 = !{!"branch_weights", i32 1, i32 47602975}
!372 = !{!"branch_weights", i32 -1369954641, i32 14063460}
!373 = !{!"branch_weights", i32 45700942, i32 1674255}
!374 = !{!"branch_weights", i32 1, i32 43701195}
!375 = !{!"branch_weights", i32 1999747, i32 48914301}
!376 = !{!"branch_weights", i32 43701195, i32 7212852}
!377 = distinct !{!377, !187}
!378 = !{!"branch_weights", i32 1, i32 1353449}
!379 = !{!"branch_weights", i32 473631, i32 1357251}
!380 = !{!"branch_weights", i32 320806, i32 152826}
!381 = !{!"branch_weights", i32 1353449, i32 477432}
!382 = distinct !{!382, !187}
!383 = !{!"function_entry_count", i64 31063580}
!384 = !{!"branch_weights", i32 9629520, i32 3677988, i32 470173, i32 5630351, i32 64999, i32 1, i32 1, i32 1, i32 1, i32 3521976, i32 7073314, i32 1, i32 1, i32 1, i32 1, i32 27069, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 198756, i32 1, i32 769444, i32 1, i32 1}
!385 = !{!"branch_weights", i32 769444, i32 1}
!386 = !{!"branch_weights", i32 1, i32 10333763}
!387 = !{!"branch_weights", i32 87970189, i32 -1856415755, i32 2850155}
!388 = !{!"branch_weights", i32 27068, i32 1}
!389 = !{!"branch_weights", i32 23094616, i32 65200}
!390 = !{!"branch_weights", i32 27068, i32 27069}
!391 = distinct !{!391, !187}
!392 = !{!"branch_weights", i32 54137, i32 1}
!393 = !{!"branch_weights", i32 13688605, i32 10333763}
!394 = distinct !{!394, !187}
!395 = !{!"function_entry_count", i64 573094}
!396 = !{!"branch_weights", i32 -1822223494, i32 4314}
!397 = !{!"branch_weights", i32 122252, i32 450844}
!398 = !{!"branch_weights", i32 122097, i32 1}
!399 = !{!"branch_weights", i32 122406, i32 122098}
!400 = !{!"branch_weights", i32 122252, i32 155}
!401 = !{!"branch_weights", i32 122097, i32 122406}
!402 = distinct !{!402, !187}
!403 = !{!"function_entry_count", i64 12725422}
!404 = !{!"branch_weights", i32 204, i32 -1696821784}
!405 = !{!"branch_weights", i32 -1500398586, i32 442202624, i32 254, i32 20936954}
!406 = !{!"branch_weights", i32 13997, i32 1713358}
!407 = !{!"branch_weights", i32 13997, i32 1}
!408 = !{!"branch_weights", i32 1, i32 12711427}
!409 = !{!"branch_weights", i32 2416150, i32 10295278}
!410 = !{!"branch_weights", i32 967073, i32 1449078}
!411 = !{!"function_entry_count", i64 6215702}
!412 = !{!"branch_weights", i32 1, i32 6215703}
!413 = !{!"branch_weights", i32 6185616, i32 30088}
!414 = !{!"branch_weights", i32 5987535, i32 198082}
!415 = !{!"branch_weights", i32 5987535, i32 1}
!416 = !{!"branch_weights", i32 175344, i32 6010273}
!417 = !{!"branch_weights", i32 127, i32 1}
!418 = !{!"branch_weights", i32 14660, i32 14660, i32 14660, i32 -1724318070}
!419 = !{!"branch_weights", i32 175344, i32 1}
!420 = !{!"branch_weights", i32 22443905, i32 127}
!421 = distinct !{!421, !187}
!422 = distinct !{!422, !187}
!423 = !{!"function_entry_count", i64 5747917}
!424 = !{!"branch_weights", i32 6045029, i32 2530991, i32 220581, i32 12369, i32 127371}
!425 = !{!"branch_weights", i32 2205, i32 5360581}
!426 = !{!"branch_weights", i32 1195592, i32 1335400}
!427 = !{!"branch_weights", i32 777417, i32 418176}
!428 = !{!"branch_weights", i32 220581, i32 1}
!429 = !{!"branch_weights", i32 1, i32 220581}
!430 = !{!"branch_weights", i32 1, i32 139739}
!431 = !{!"branch_weights", i32 69, i32 139671}
!432 = !{!"branch_weights", i32 1, i32 69}
!433 = !{!"branch_weights", i32 69, i32 1}
!434 = !{!"branch_weights", i32 1782906580, i32 364577068}
!435 = !{!"branch_weights", i32 23726, i32 1}
!436 = !{!"branch_weights", i32 393897909, i32 -239124386}
!437 = !{!"branch_weights", i32 127, i32 1143851009}
!438 = !{!"branch_weights", i32 1, i32 3156439}
!439 = !{!"branch_weights", i32 -2041312769, i32 -1354325504, i32 6490624}
!440 = !{!"branch_weights", i32 1, i32 5743441}
!441 = !{!"branch_weights", i32 3061050, i32 2682392}
!442 = !{!"branch_weights", i32 2646705, i32 35688}
!443 = !{!"branch_weights", i32 1, i32 243}
!444 = !{!"branch_weights", i32 1, i32 25045}
!445 = !{!"branch_weights", i32 12612, i32 12434}
!446 = !{!"branch_weights", i32 243, i32 24802}
!447 = distinct !{!447, !187}
!448 = !{!"branch_weights", i32 7001347, i32 3156439}
!449 = distinct !{!449, !187}
!450 = !{!"function_entry_count", i64 3608138}
!451 = !{!"rtlanal.c:end_hard_regno"}
!452 = !{!"function_entry_count", i64 196}
!453 = !{!"function_entry_count", i64 2248689}
!454 = !{!"branch_weights", i32 11805, i32 1, i32 77339, i32 1, i32 489, i32 1, i32 1, i32 1, i32 1, i32 1, i32 76793, i32 2082268}
!455 = !{!"branch_weights", i32 77338, i32 1}
!456 = !{!"branch_weights", i32 77434, i32 77338}
!457 = distinct !{!457, !187}
!458 = distinct !{!458, !187}
!459 = distinct !{!459, !187}
!460 = distinct !{!460, !187}
!461 = !{!"branch_weights", i32 96, i32 76698}
!462 = !{!"branch_weights", i32 1, i32 2082268}
!463 = !{!"branch_weights", i32 -616344776, i32 2031, i32 26319304, i32 551701550}
!464 = distinct !{!464, !187}
!465 = !{!"function_entry_count", i64 1147818}
!466 = !{!"branch_weights", i32 2241, i32 2241, i32 -1721747654}
!467 = !{!"branch_weights", i32 573066, i32 574754}
!468 = !{!"branch_weights", i32 1028241, i32 1}
!469 = !{!"branch_weights", i32 1028241, i32 119578}
!470 = distinct !{!470, !187}
!471 = !{!"branch_weights", i32 119578, i32 1028242}
!472 = !{!"branch_weights", i32 624981, i32 522839}
!473 = !{!"branch_weights", i32 1, i32 624981}
!474 = !{!"branch_weights", i32 17020, i32 -134995402, i32 1158764150}
!475 = !{!"branch_weights", i32 1, i32 36641}
!476 = !{!"branch_weights", i32 1, i32 271479}
!477 = !{!"branch_weights", i32 407100, i32 -1991782074, i32 -1993546184}
!478 = !{!"branch_weights", i32 171936, i32 99521}
!479 = !{!"branch_weights", i32 36641, i32 234838}
!480 = distinct !{!480, !187}
!481 = !{!"function_entry_count", i64 1353593}
!482 = !{!"branch_weights", i32 -2028734549, i32 83995908}
!483 = !{!"branch_weights", i32 1, i32 641598}
!484 = !{!"branch_weights", i32 1031681, i32 262183}
!485 = !{!"branch_weights", i32 1031681, i32 1}
!486 = !{!"branch_weights", i32 254209, i32 777473}
!487 = !{!"branch_weights", i32 500975, i32 276499}
!488 = !{!"branch_weights", i32 663619, i32 113855}
!489 = !{!"branch_weights", i32 641598, i32 652265}
!490 = distinct !{!490, !187}
!491 = distinct !{!491, !187}
!492 = !{!"function_entry_count", i64 760273}
!493 = !{!"rtlanal.c:covers_regno_p"}
!494 = !{!"branch_weights", i32 1, i32 760274}
!495 = distinct !{!495, !187}
!496 = !{!"function_entry_count", i64 7075389}
!497 = !{!"branch_weights", i32 -1652977730, i32 1335221}
!498 = !{!"branch_weights", i32 2702807, i32 4233419}
!499 = !{!"branch_weights", i32 136604775, i32 -166562657}
!500 = !{!"branch_weights", i32 85149, i32 50444}
!501 = !{!"branch_weights", i32 85149, i32 1}
!502 = !{!"branch_weights", i32 4233419, i32 0}
!503 = distinct !{!503, !187}
!504 = !{!"function_entry_count", i64 1114336}
!505 = !{!"branch_weights", i32 50, i32 1114291}
!506 = !{!"function_entry_count", i64 1016766}
!507 = !{!"function_entry_count", i64 7889}
!508 = !{!"branch_weights", i32 609, i32 7282}
!509 = !{!"branch_weights", i32 7031, i32 252}
!510 = !{!"branch_weights", i32 1, i32 310}
!511 = !{!"branch_weights", i32 252, i32 59}
!512 = distinct !{!512, !187}
!513 = !{!"branch_weights", i32 6515, i32 769}
!514 = distinct !{!514, !187}
!515 = !{!"function_entry_count", i64 81085}
!516 = !{!"branch_weights", i32 81085, i32 1}
!517 = !{!"branch_weights", i32 1, i32 0}
!518 = distinct !{!518, !187}
!519 = distinct !{!519, !187}
!520 = !{!"function_entry_count", i64 166948}
!521 = !{!"branch_weights", i32 57211, i32 1380, i32 1, i32 48541, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2759, i32 55073, i32 1, i32 653, i32 1, i32 1, i32 1, i32 1338, i32 1, i32 1, i32 1}
!522 = !{!"branch_weights", i32 1, i32 57210}
!523 = !{!"branch_weights", i32 8645, i32 76246344, i32 434245}
!524 = !{!"branch_weights", i32 652, i32 1}
!525 = !{!"branch_weights", i32 114484, i32 1}
!526 = !{!"branch_weights", i32 652, i32 653}
!527 = distinct !{!527, !187}
!528 = !{!"branch_weights", i32 1305, i32 1}
!529 = !{!"branch_weights", i32 57938, i32 57210}
!530 = distinct !{!530, !187}
!531 = !{!"function_entry_count", i64 23478445}
!532 = !{!"branch_weights", i32 8053375, i32 303708, i32 837910, i32 3640281, i32 138481, i32 1, i32 1, i32 1, i32 1, i32 599890, i32 7813494, i32 1, i32 210265, i32 1, i32 1, i32 1, i32 1881050, i32 1, i32 1}
!533 = !{!"branch_weights", i32 1881050, i32 1}
!534 = !{!"branch_weights", i32 1, i32 9934423}
!535 = !{!"branch_weights", i32 242090848, i32 -2076514498, i32 3758443}
!536 = !{!"branch_weights", i32 30681, i32 1}
!537 = !{!"branch_weights", i32 18110297, i32 1}
!538 = !{!"branch_weights", i32 30681, i32 30777}
!539 = distinct !{!539, !187}
!540 = !{!"branch_weights", i32 61458, i32 1}
!541 = !{!"branch_weights", i32 10182859, i32 9934423}
!542 = distinct !{!542, !187}
!543 = !{!"function_entry_count", i64 23424186}
!544 = !{!"branch_weights", i32 1, i32 23424187}
!545 = !{!"branch_weights", i32 5411408, i32 4802287, i32 1, i32 1, i32 1, i32 741, i32 1425635, i32 1, i32 1988952, i32 1, i32 5516806, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1900345, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1057, i32 1246, i32 705, i32 1074, i32 1, i32 1153137, i32 666609, i32 553918, i32 1, i32 281, i32 1, i32 1}
!546 = !{!547, !182, i64 1272}
!547 = !{!"gcc_target", !548, i64 0, !550, i64 368, !551, i64 664, !185, i64 744, !182, i64 752, !182, i64 760, !182, i64 768, !182, i64 776, !182, i64 784, !182, i64 792, !182, i64 800, !182, i64 808, !182, i64 816, !182, i64 824, !182, i64 832, !182, i64 840, !182, i64 848, !182, i64 856, !182, i64 864, !182, i64 872, !182, i64 880, !182, i64 888, !182, i64 896, !182, i64 904, !182, i64 912, !182, i64 920, !182, i64 928, !182, i64 936, !182, i64 944, !182, i64 952, !182, i64 960, !182, i64 968, !182, i64 976, !182, i64 984, !182, i64 992, !182, i64 1000, !182, i64 1008, !182, i64 1016, !182, i64 1024, !182, i64 1032, !182, i64 1040, !182, i64 1048, !182, i64 1056, !239, i64 1064, !239, i64 1072, !182, i64 1080, !182, i64 1088, !182, i64 1096, !182, i64 1104, !182, i64 1112, !182, i64 1120, !182, i64 1128, !182, i64 1136, !182, i64 1144, !182, i64 1152, !182, i64 1160, !182, i64 1168, !552, i64 1176, !182, i64 1232, !182, i64 1240, !182, i64 1248, !182, i64 1256, !182, i64 1264, !182, i64 1272, !182, i64 1280, !182, i64 1288, !182, i64 1296, !182, i64 1304, !182, i64 1312, !182, i64 1320, !182, i64 1328, !182, i64 1336, !182, i64 1344, !182, i64 1352, !182, i64 1360, !182, i64 1368, !182, i64 1376, !182, i64 1384, !182, i64 1392, !182, i64 1400, !182, i64 1408, !182, i64 1416, !182, i64 1424, !182, i64 1432, !182, i64 1440, !182, i64 1448, !182, i64 1456, !239, i64 1464, !553, i64 1472, !182, i64 1664, !182, i64 1672, !182, i64 1680, !182, i64 1688, !182, i64 1696, !182, i64 1704, !182, i64 1712, !182, i64 1720, !182, i64 1728, !182, i64 1736, !182, i64 1744, !182, i64 1752, !182, i64 1760, !182, i64 1768, !182, i64 1776, !554, i64 1784, !555, i64 1792, !556, i64 1896, !557, i64 1968, !182, i64 2016, !179, i64 2024, !179, i64 2025, !179, i64 2026, !179, i64 2027, !179, i64 2028, !179, i64 2029, !179, i64 2030, !179, i64 2031, !179, i64 2032, !179, i64 2033, !179, i64 2034, !179, i64 2035}
!548 = !{!"asm_out", !182, i64 0, !182, i64 8, !182, i64 16, !549, i64 24, !549, i64 56, !182, i64 88, !182, i64 96, !182, i64 104, !182, i64 112, !182, i64 120, !182, i64 128, !182, i64 136, !182, i64 144, !182, i64 152, !182, i64 160, !182, i64 168, !182, i64 176, !182, i64 184, !182, i64 192, !182, i64 200, !182, i64 208, !182, i64 216, !182, i64 224, !182, i64 232, !182, i64 240, !182, i64 248, !182, i64 256, !182, i64 264, !182, i64 272, !182, i64 280, !182, i64 288, !182, i64 296, !182, i64 304, !182, i64 312, !182, i64 320, !182, i64 328, !182, i64 336, !182, i64 344, !182, i64 352, !182, i64 360}
!549 = !{!"asm_int_op", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24}
!550 = !{!"sched", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !182, i64 104, !182, i64 112, !182, i64 120, !182, i64 128, !182, i64 136, !182, i64 144, !182, i64 152, !182, i64 160, !182, i64 168, !182, i64 176, !182, i64 184, !182, i64 192, !182, i64 200, !182, i64 208, !182, i64 216, !182, i64 224, !182, i64 232, !182, i64 240, !182, i64 248, !182, i64 256, !182, i64 264, !182, i64 272, !182, i64 280, !182, i64 288}
!551 = !{!"vectorize", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72}
!552 = !{!"addr_space", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48}
!553 = !{!"calls", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !182, i64 104, !182, i64 112, !182, i64 120, !182, i64 128, !182, i64 136, !182, i64 144, !182, i64 152, !182, i64 160, !182, i64 168, !182, i64 176, !182, i64 184}
!554 = !{!"c", !182, i64 0}
!555 = !{!"cxx", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96}
!556 = !{!"emutls", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !179, i64 64, !179, i64 65}
!557 = !{!"target_option_hooks", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40}
!558 = !{!"branch_weights", i32 1900345, i32 1}
!559 = !{!"branch_weights", i32 -1800654991, i32 1032362421}
!560 = !{!"branch_weights", i32 1344058, i32 1}
!561 = !{!562, !182, i64 16}
!562 = !{!"mem_attrs", !182, i64 0, !182, i64 8, !182, i64 16, !185, i64 24, !185, i64 28, !179, i64 32}
!563 = !{!"branch_weights", i32 637511, i32 1}
!564 = !{!"branch_weights", i32 1, i32 706548}
!565 = !{!"branch_weights", i32 1, i32 1488772}
!566 = !{!"branch_weights", i32 3369, i32 2147480279}
!567 = !{!568, !179, i64 46}
!568 = !{!"real_format", !182, i64 0, !182, i64 8, !185, i64 16, !185, i64 20, !185, i64 24, !185, i64 28, !185, i64 32, !185, i64 36, !185, i64 40, !179, i64 44, !179, i64 45, !179, i64 46, !179, i64 47, !179, i64 48, !179, i64 49, !179, i64 50, !179, i64 51}
!569 = !{!"branch_weights", i32 1, i32 1157215}
!570 = !{!"branch_weights", i32 -1109402598, i32 2752, i32 2752, i32 2752, i32 2752}
!571 = !{!"branch_weights", i32 1220526, i32 1}
!572 = !{!"branch_weights", i32 1320, i32 -720341254}
!573 = !{!"branch_weights", i32 1, i32 7786227}
!574 = !{!"branch_weights", i32 146, i32 -1949355653, i32 22043025}
!575 = !{!"branch_weights", i32 149592, i32 1}
!576 = !{!"branch_weights", i32 15984471, i32 2553}
!577 = !{!"branch_weights", i32 151534, i32 149592}
!578 = distinct !{!578, !187}
!579 = !{!"branch_weights", i32 300479, i32 648}
!580 = !{!"branch_weights", i32 8351035, i32 7786227}
!581 = distinct !{!581, !187}
!582 = !{!"function_entry_count", i64 7136039}
!583 = distinct !{!583, !187}
!584 = distinct !{!584, !187}
!585 = !{!"branch_weights", i32 1, i32 21635}
!586 = !{!"branch_weights", i32 7375, i32 14261}
!587 = !{!"branch_weights", i32 203376121, i32 14262, i32 14261}
!588 = !{!"branch_weights", i32 1, i32 14260}
!589 = !{!"branch_weights", i32 46117681, i32 98124024, i32 6791}
!590 = distinct !{!590, !187}
!591 = !{!"branch_weights", i32 6977, i32 14260}
!592 = distinct !{!592, !187}
!593 = !{!594, !182, i64 0}
!594 = !{!"replace_label_data", !182, i64 0, !182, i64 8, !179, i64 16}
!595 = !{!594, !182, i64 8}
!596 = !{!594, !179, i64 16}
!597 = !{i32 0, i32 -1}
!598 = !{!"function_entry_count", i64 11878148}
!599 = !{!"branch_weights", i32 234406515, i32 111735316, i32 -450165911}
!600 = !{!"branch_weights", i32 633306, i32 10263796}
!601 = !{!"branch_weights", i32 2920818, i32 7342979}
!602 = !{!"rtlanal.c:rtx_referenced_p_1"}
!603 = !{!"function_entry_count", i64 748719}
!604 = !{!"branch_weights", i32 599656, i32 149065}
!605 = !{!"branch_weights", i32 30675, i32 568982}
!606 = !{!"branch_weights", i32 764, i32 568219}
!607 = !{!"branch_weights", i32 25541, i32 542679}
!608 = !{!"branch_weights", i32 3581822, i32 645261604}
!609 = !{!"branch_weights", i32 109, i32 32}
!610 = !{!"branch_weights", i32 1, i32 140}
!611 = !{!"function_entry_count", i64 606741}
!612 = !{!"branch_weights", i32 601443, i32 5300}
!613 = !{!"branch_weights", i32 164, i32 601280}
!614 = !{!"branch_weights", i32 26896, i32 165, i32 164}
!615 = distinct !{!615, !187}
!616 = distinct !{!616, !187}
!617 = !{!"rtlanal.c:computed_jump_p_1"}
!618 = distinct !{!618, !187}
!619 = distinct !{!619, !187}
!620 = !{!"function_entry_count", i64 14203529}
!621 = !{!"rtlanal.c:for_each_rtx_1"}
!622 = !{!"branch_weights", i32 373043077, i32 1456509400, i32 -1439961416, i32 111, i32 7783604}
!623 = !{!"branch_weights", i32 67566039, i32 26885424, i32 -1897598087}
!624 = !{!"branch_weights", i32 896692, i32 23826364}
!625 = !{!"branch_weights", i32 6720360, i32 17106005}
!626 = !{!"branch_weights", i32 6323261, i32 397100}
!627 = !{!"branch_weights", i32 1, i32 70058}
!628 = !{!"branch_weights", i32 70028, i32 1}
!629 = !{!"branch_weights", i32 17524, i32 17524, i32 -1838207640}
!630 = !{!"branch_weights", i32 1, i32 140193}
!631 = !{!"branch_weights", i32 140193, i32 1}
!632 = !{!"branch_weights", i32 140164, i32 30}
!633 = !{!"branch_weights", i32 70165, i32 70028}
!634 = distinct !{!634, !187}
!635 = distinct !{!635, !187}
!636 = distinct !{!636, !187}
!637 = distinct !{!637, !187}
!638 = !{!"function_entry_count", i64 13963264}
!639 = !{!"branch_weights", i32 439786, i32 36245, i32 142651, i32 5103305, i32 636472, i32 662829, i32 3083}
!640 = !{!"branch_weights", i32 142651, i32 1}
!641 = !{!"branch_weights", i32 142032, i32 620}
!642 = !{!"branch_weights", i32 63909131, i32 -226341081}
!643 = !{!"branch_weights", i32 452722, i32 -2104041125}
!644 = !{!"function_entry_count", i64 6955342}
!645 = !{i32 -8, i32 5}
!646 = distinct !{!646, !187}
!647 = distinct !{!647, !187}
!648 = !{!"function_entry_count", i64 4623}
!649 = !{!"branch_weights", i32 4624, i32 1}
!650 = !{!651, !179, i64 8}
!651 = !{!"subreg_info", !185, i64 0, !185, i64 4, !179, i64 8}
!652 = !{!"branch_weights", i32 2146555108, i32 928540}
!653 = !{!"branch_weights", i32 439, i32 4186}
!654 = !{!651, !185, i64 0}
!655 = !{!651, !185, i64 4}
!656 = !{!"branch_weights", i32 4186, i32 1}
!657 = !{!"branch_weights", i32 3884, i32 16262611}
!658 = !{!"branch_weights", i32 4186, i32 17526783}
!659 = !{!"branch_weights", i32 2147355067, i32 128581}
!660 = !{!"function_entry_count", i64 902}
!661 = !{!"function_entry_count", i64 3525}
!662 = !{!"branch_weights", i32 7053, i32 12432676}
!663 = !{!"branch_weights", i32 3526, i32 1}
!664 = !{!"branch_weights", i32 11011699, i32 3122}
!665 = !{!"branch_weights", i32 12432676, i32 12439729, i32 12439729, i32 3527, i32 3526}
!666 = !{!"branch_weights", i32 12432676, i32 3527, i32 3526}
!667 = !{!"branch_weights", i32 1, i32 3526}
!668 = !{!669, !239, i64 8}
!669 = !{!"parms_set_data", !185, i64 0, !239, i64 8}
!670 = !{!669, !185, i64 0}
!671 = distinct !{!671, !187}
!672 = distinct !{!672, !187}
!673 = !{!"rtlanal.c:parms_set"}
!674 = !{!"function_entry_count", i64 153283}
!675 = !{!"branch_weights", i32 -1085084078, i32 10470}
!676 = !{!"branch_weights", i32 150931, i32 1}
!677 = !{!"branch_weights", i32 2115032918, i32 32450730}
!678 = !{!"branch_weights", i32 4567, i32 148680}
!679 = !{!"branch_weights", i32 4567, i32 1}
!680 = !{!"branch_weights", i32 134, i32 153113}
!681 = !{!"branch_weights", i32 3, i32 132}
!682 = !{!"branch_weights", i32 92, i32 41}
!683 = !{!"branch_weights", i32 1, i32 92}
!684 = !{!"branch_weights", i32 1, i32 153246}
!685 = !{!"function_entry_count", i64 293342}
!686 = !{!"branch_weights", i32 245137, i32 48207}
!687 = !{!"branch_weights", i32 48207, i32 1}
!688 = distinct !{!688, !187}
!689 = !{!"function_entry_count", i64 9822764}
!690 = !{!"branch_weights", i32 1, i32 9822765}
!691 = !{!"branch_weights", i32 9821726, i32 992, i32 25, i32 13, i32 13, i32 1, i32 1}
!692 = !{!"branch_weights", i32 1667146402, i32 464560466, i32 15776780}
!693 = !{!"branch_weights", i32 1, i32 72157}
!694 = !{!547, !182, i64 1248}
!695 = !{!"branch_weights", i32 3624568, i32 4001320}
!696 = !{!"branch_weights", i32 1, i32 3696723}
!697 = !{!"branch_weights", i32 392054251, i32 -1637290379, i32 437}
!698 = distinct !{!698, !187}
!699 = !{!"branch_weights", i32 3273601, i32 3696723}
!700 = distinct !{!700, !187}
!701 = !{!"function_entry_count", i64 28726}
!702 = !{!"branch_weights", i32 1, i32 28727}
!703 = !{!547, !182, i64 1256}
!704 = !{!"function_entry_count", i64 7275291}
!705 = !{!"function_entry_count", i64 9838041}
!706 = !{!"rtlanal.c:cached_nonzero_bits"}
!707 = !{!"branch_weights", i32 822, i32 9837221}
!708 = !{!"branch_weights", i32 619, i32 204}
!709 = !{!"branch_weights", i32 2112950, i32 7724475}
!710 = !{!"branch_weights", i32 1, i32 2112950}
!711 = !{!"branch_weights", i32 134855, i32 1978096}
!712 = !{!"branch_weights", i32 920, i32 133936}
!713 = !{!"branch_weights", i32 278, i32 133659}
!714 = !{!"branch_weights", i32 1, i32 2111754}
!715 = !{!"function_entry_count", i64 2605023}
!716 = !{!"function_entry_count", i64 3624796}
!717 = !{!"rtlanal.c:cached_num_sign_bit_copies"}
!718 = !{!"branch_weights", i32 611, i32 3624187}
!719 = !{!"branch_weights", i32 611, i32 1}
!720 = !{!"branch_weights", i32 797506, i32 2826682}
!721 = !{!"branch_weights", i32 1, i32 797506}
!722 = !{!"branch_weights", i32 4540, i32 792967}
!723 = !{!"branch_weights", i32 280, i32 4261}
!724 = !{!"branch_weights", i32 27, i32 4235}
!725 = !{!"branch_weights", i32 1, i32 797201}
!726 = !{!"function_entry_count", i64 590864}
!727 = !{!"branch_weights", i32 159032, i32 -2018518045, i32 132869406}
!728 = !{!"branch_weights", i32 32429, i32 1}
!729 = !{!"branch_weights", i32 32738, i32 32430}
!730 = !{!"branch_weights", i32 32429, i32 32738}
!731 = distinct !{!731, !187}
!732 = !{!"branch_weights", i32 306083, i32 284591}
!733 = !{!"function_entry_count", i64 227493}
!734 = !{!"branch_weights", i32 227494, i32 1}
!735 = !{!"branch_weights", i32 1, i32 227494}
!736 = !{!"branch_weights", i32 157690, i32 69805}
!737 = !{!"branch_weights", i32 7173, i32 1}
!738 = !{!"branch_weights", i32 -432990392, i32 -1248207436}
!739 = !{!"branch_weights", i32 202441445, i32 9757, i32 -1450639124}
!740 = distinct !{!740, !187}
!741 = !{!"branch_weights", i32 1, i32 291498}
!742 = !{!"branch_weights", i32 219598196, i32 9109, i32 -1859210008}
!743 = !{!"branch_weights", i32 267392, i32 1}
!744 = !{!"branch_weights", i32 15601, i32 251792}
!745 = !{!"branch_weights", i32 251792, i32 1}
!746 = !{!"branch_weights", i32 1, i32 251792}
!747 = !{!"branch_weights", i32 227251, i32 24542}
!748 = !{!"branch_weights", i32 1429739862, i32 -1594181387, i32 1430328972}
!749 = !{!"branch_weights", i32 1, i32 11920}
!750 = !{!"branch_weights", i32 -1067264531, i32 14203}
!751 = !{!"branch_weights", i32 33, i32 12243}
!752 = !{!"branch_weights", i32 135, i32 1}
!753 = !{!"branch_weights", i32 15601, i32 1}
!754 = !{!"branch_weights", i32 692, i32 226592}
!755 = !{!"branch_weights", i32 226438, i32 155}
!756 = !{!"branch_weights", i32 226406, i32 33}
!757 = !{!"branch_weights", i32 1, i32 227097}
!758 = !{!"branch_weights", i32 227097, i32 1}
!759 = !{!"branch_weights", i32 157469, i32 69629}
!760 = !{!"branch_weights", i32 -921449381, i32 7173}
!761 = !{!"branch_weights", i32 222, i32 227273}
!762 = !{!"branch_weights", i32 1, i32 227273}
!763 = !{!"branch_weights", i32 28409, i32 -1066653763}
!764 = !{!"branch_weights", i32 227273, i32 1}
!765 = !{!"branch_weights", i32 223515, i32 209, i32 1064, i32 2488, i32 1}
!766 = !{!"branch_weights", i32 1, i32 209}
!767 = !{!"branch_weights", i32 1, i32 1064}
!768 = !{!"branch_weights", i32 2488, i32 1}
!769 = !{!"function_entry_count", i64 157737}
!770 = !{!"branch_weights", i32 157738, i32 1}
!771 = !{!"branch_weights", i32 49, i32 157690}
!772 = !{!"branch_weights", i32 1, i32 157690}
!773 = !{!774, !182, i64 32}
!774 = !{!"rtl_hooks", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32}
!775 = !{!"function_entry_count", i64 1}
!776 = !{!"branch_weights", i32 20, i32 121}
!777 = !{!"branch_weights", i32 2, i32 138}
!778 = distinct !{!778, !187}
!779 = !{!"rtlanal.c:init_num_sign_bit_copies_in_rep"}
!780 = !{!"branch_weights", i32 1, i32 223}
!781 = !{!547, !182, i64 1160}
!782 = !{!"branch_weights", i32 16, i32 1}
!783 = !{!"branch_weights", i32 1296, i32 73}
!784 = !{!"branch_weights", i32 127, i32 161}
!785 = distinct !{!785, !187}
!786 = !{!"branch_weights", i32 223, i32 289}
!787 = distinct !{!787, !187}
!788 = !{!"branch_weights", i32 127, i32 321}
!789 = distinct !{!789, !187}
!790 = !{!"rtlanal.c:covers_regno_no_parallel_p"}
!791 = !{!"branch_weights", i32 726291, i32 33984}
!792 = !{!"branch_weights", i32 457526, i32 268766}
!793 = !{!"branch_weights", i32 700092, i32 26200}
!794 = !{!"function_entry_count", i64 9837423}
!795 = !{!"rtlanal.c:nonzero_bits1"}
!796 = !{!"branch_weights", i32 -233379691, i32 411, i32 411, i32 412, i32 412}
!797 = !{!"branch_weights", i32 2670, i32 -1653867738}
!798 = !{!"branch_weights", i32 130721, i32 9706704}
!799 = !{!"branch_weights", i32 1, i32 9837424}
!800 = !{!"branch_weights", i32 288713481, i32 -804852515}
!801 = !{!"branch_weights", i32 751055, i32 555}
!802 = !{!"branch_weights", i32 2518167, i32 3420009, i32 1057254, i32 13802, i32 103453, i32 10513, i32 1, i32 1, i32 42, i32 1, i32 1, i32 1, i32 1, i32 1, i32 127, i32 1, i32 1, i32 253, i32 19761, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 8507, i32 1, i32 132786, i32 77, i32 7940, i32 1, i32 1, i32 1, i32 1, i32 439666, i32 61, i32 286, i32 1, i32 1, i32 1, i32 1, i32 171728, i32 393299, i32 235586, i32 341681, i32 211396, i32 1, i32 1, i32 1, i32 1}
!803 = !{!"branch_weights", i32 2041, i32 -1966544224}
!804 = !{!805, !182, i64 88}
!805 = !{!"rtl_data", !806, i64 0, !807, i64 40, !808, i64 96, !809, i64 112, !811, i64 208, !812, i64 248, !185, i64 312, !182, i64 320, !182, i64 328, !182, i64 336, !182, i64 344, !182, i64 352, !182, i64 360, !182, i64 368, !182, i64 376, !182, i64 384, !182, i64 392, !239, i64 400, !182, i64 408, !182, i64 416, !182, i64 424, !185, i64 432, !185, i64 436, !185, i64 440, !185, i64 444, !185, i64 448, !185, i64 452, !182, i64 456, !179, i64 464, !179, i64 465, !179, i64 466, !179, i64 467, !179, i64 468, !179, i64 469, !179, i64 470, !179, i64 471, !179, i64 472, !179, i64 473, !179, i64 474, !179, i64 475, !179, i64 476, !179, i64 477, !179, i64 478, !179, i64 479, !179, i64 480, !179, i64 481, !179, i64 482, !179, i64 483, !179, i64 484, !179, i64 485}
!806 = !{!"expr_status", !185, i64 0, !185, i64 4, !185, i64 8, !182, i64 16, !182, i64 24, !182, i64 32}
!807 = !{!"emit_status", !185, i64 0, !185, i64 4, !182, i64 8, !182, i64 16, !182, i64 24, !185, i64 32, !185, i64 36, !185, i64 40, !185, i64 44, !182, i64 48}
!808 = !{!"varasm_status", !182, i64 0, !185, i64 8}
!809 = !{!"incoming_args", !185, i64 0, !185, i64 4, !185, i64 8, !182, i64 16, !810, i64 24, !182, i64 88}
!810 = !{!"ix86_args", !185, i64 0, !185, i64 4, !185, i64 8, !185, i64 12, !185, i64 16, !185, i64 20, !185, i64 24, !185, i64 28, !185, i64 32, !185, i64 36, !185, i64 40, !185, i64 44, !185, i64 48, !185, i64 52, !185, i64 56, !185, i64 60}
!811 = !{!"function_subsections", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32}
!812 = !{!"rtl_eh", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !179, i64 48}
!813 = !{!774, !182, i64 16}
!814 = !{!"branch_weights", i32 3419801, i32 209}
!815 = !{!"branch_weights", i32 -2045640704, i32 33536}
!816 = !{!"branch_weights", i32 1, i32 8507}
!817 = !{!"branch_weights", i32 640, i32 7377}
!818 = !{!"branch_weights", i32 1, i32 439666, i32 61, i32 286, i32 1, i32 1, i32 1, i32 1}
!819 = !{!"branch_weights", i32 16088473, i32 2131395175}
!820 = !{!"branch_weights", i32 12728435, i32 2134755213}
!821 = !{!"branch_weights", i32 171728, i32 1}
!822 = !{!"branch_weights", i32 393299, i32 1}
!823 = !{!"branch_weights", i32 262849, i32 130451}
!824 = !{!"branch_weights", i32 230976, i32 557686}
!825 = !{!"branch_weights", i32 -960597760, i32 28872}
!826 = !{!"branch_weights", i32 230976, i32 1}
!827 = !{!"branch_weights", i32 1, i32 230976}
!828 = !{!"branch_weights", i32 10660, i32 207525228, i32 1225935, i32 -2041431135}
!829 = !{!"branch_weights", i32 1, i32 115}
!830 = !{!"branch_weights", i32 11071, i32 2732}
!831 = !{!"function_entry_count", i64 3624186}
!832 = !{!"rtlanal.c:num_sign_bit_copies1"}
!833 = !{!"branch_weights", i32 59498, i32 3564690}
!834 = !{!"branch_weights", i32 1, i32 3624187}
!835 = !{!"branch_weights", i32 5697, i32 -157416632}
!836 = !{!"branch_weights", i32 59498, i32 1}
!837 = !{!"branch_weights", i32 721, i32 -1724742259}
!838 = !{!"branch_weights", i32 1021703, i32 1326440, i32 1, i32 611380, i32 64103, i32 1, i32 1, i32 1, i32 1889, i32 1, i32 1, i32 191, i32 1539, i32 31493, i32 45, i32 1, i32 1, i32 1, i32 1, i32 396784, i32 58, i32 406, i32 1, i32 1, i32 1, i32 1, i32 21498, i32 6502, i32 7744, i32 59505, i32 5926, i32 19, i32 1, i32 71, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 7414, i32 1, i32 1}
!839 = !{!774, !182, i64 24}
!840 = !{!"branch_weights", i32 1326336, i32 105}
!841 = !{!"branch_weights", i32 611380, i32 1}
!842 = !{!"branch_weights", i32 213650, i32 397731}
!843 = !{!"branch_weights", i32 93638, i32 517743}
!844 = !{!"branch_weights", i32 64103, i32 1}
!845 = !{!"branch_weights", i32 4606, i32 59498}
!846 = !{!"branch_weights", i32 1, i32 191}
!847 = !{!"branch_weights", i32 191, i32 1}
!848 = !{!"branch_weights", i32 -482095912, i32 191908823}
!849 = !{!"branch_weights", i32 31493, i32 1}
!850 = !{!"branch_weights", i32 29023, i32 2471}
!851 = !{!"branch_weights", i32 1657039723, i32 490443925}
!852 = !{!"branch_weights", i32 4, i32 1221}
!853 = !{!"branch_weights", i32 4, i32 1}
!854 = !{!"branch_weights", i32 396784, i32 58}
!855 = !{!"branch_weights", i32 648090003, i32 -1371694711}
!856 = !{!"branch_weights", i32 2916, i32 69090}
!857 = !{!"branch_weights", i32 5833, i32 1}
!858 = !{!"branch_weights", i32 390212, i32 3715}
!859 = !{!"branch_weights", i32 406, i32 1}
!860 = !{!"branch_weights", i32 1, i32 406}
!861 = !{!"branch_weights", i32 1, i32 21498}
!862 = !{!"branch_weights", i32 6502, i32 1}
!863 = !{!"branch_weights", i32 -2147478406, i32 990996}
!864 = !{!"branch_weights", i32 1, i32 2296906}
!865 = !{!"branch_weights", i32 3363, i32 2293544}
!866 = !{!"branch_weights", i32 -157405238, i32 -157416632}
