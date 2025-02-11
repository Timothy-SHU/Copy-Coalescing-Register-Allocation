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

@target_flags = dso_local local_unnamed_addr global i32 0, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
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
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@reload_completed = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@num_sign_bit_copies_in_rep = internal unnamed_addr global [20 x [20 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"eEV\00", align 1
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@switch.table.commutative_operand_precedence = private unnamed_addr constant [3 x i32] [i32 -8, i32 -7, i32 -7], align 4
@switch.table.commutative_operand_precedence.3 = private unnamed_addr constant [3 x i32] [i32 -6, i32 -5, i32 -5], align 4

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rtx_unstable_p(ptr noundef readonly %0) local_unnamed_addr #0 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = tail call i32 @rtx_unstable_p(ptr noundef %10) #14
  %12 = icmp ne i32 %11, 0
  br label %69

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !9
  %15 = icmp eq ptr %14, %0
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %17 = icmp eq ptr %16, %0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %69, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !9
  %21 = icmp eq ptr %20, %0
  %22 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %23 = icmp ne i8 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %69, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !9
  %27 = icmp ne ptr %26, %0
  br label %69

28:                                               ; preds = %1
  %29 = and i32 %2, 134217728
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %1, %28
  %32 = zext nneg i32 %3 to i64
  %33 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !6
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
  %45 = load i8, ptr %44, align 1, !tbaa !6
  switch i8 %45, label %67 [
    i8 101, label %53
    i8 69, label %46
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = load i32, ptr %48, align 8, !tbaa !11
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  br label %61

53:                                               ; preds = %41
  %54 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = tail call i32 @rtx_unstable_p(ptr noundef %55) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %69

58:                                               ; preds = %61
  %59 = add nuw nsw i64 %62, 1
  %60 = icmp eq i64 %59, %52
  br i1 %60, label %67, label %61, !llvm.loop !14

61:                                               ; preds = %51, %58
  %62 = phi i64 [ 0, %51 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  %65 = tail call i32 @rtx_unstable_p(ptr noundef %64) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %58, label %69

67:                                               ; preds = %58, %46, %41, %53
  %68 = icmp sgt i64 %42, 1
  br i1 %68, label %41, label %69, !llvm.loop !16

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
define dso_local zeroext i8 @rtx_varies_p(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %84, label %4

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
  ]

8:                                                ; preds = %4
  %9 = and i32 %5, 67108864
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %84, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = tail call zeroext i8 @rtx_varies_p(ptr noundef %13, i8 noundef zeroext %1) #14
  %15 = icmp ne i8 %14, 0
  br label %84

16:                                               ; preds = %4
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !9
  %18 = icmp eq ptr %17, %0
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %20 = icmp eq ptr %19, %0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %84, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !9
  %24 = icmp eq ptr %23, %0
  %25 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %26 = icmp ne i8 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %84, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !9
  %30 = icmp ne ptr %29, %0
  br label %84

31:                                               ; preds = %4
  %32 = icmp eq i8 %1, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = tail call zeroext i8 @rtx_varies_p(ptr noundef %35, i8 noundef zeroext 0) #14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %33, %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
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
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %51 = load i8, ptr %50, align 1, !tbaa !6
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = zext i8 %51 to i64
  br label %56

56:                                               ; preds = %53, %82
  %57 = phi i64 [ %55, %53 ], [ %58, %82 ]
  %58 = add nsw i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !6
  switch i8 %60, label %82 [
    i8 101, label %68
    i8 69, label %61
  ]

61:                                               ; preds = %56
  %62 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = load i32, ptr %63, align 8, !tbaa !11
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = zext nneg i32 %64 to i64
  br label %76

68:                                               ; preds = %56
  %69 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = tail call zeroext i8 @rtx_varies_p(ptr noundef %70, i8 noundef zeroext %1) #14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %82, label %84

73:                                               ; preds = %76
  %74 = add nuw nsw i64 %77, 1
  %75 = icmp eq i64 %74, %67
  br i1 %75, label %82, label %76, !llvm.loop !17

76:                                               ; preds = %66, %73
  %77 = phi i64 [ 0, %66 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.rtvec_def, ptr %63, i64 0, i32 1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = tail call zeroext i8 @rtx_varies_p(ptr noundef %79, i8 noundef zeroext %1) #14
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %73, label %84

82:                                               ; preds = %73, %61, %56, %68
  %83 = icmp sgt i64 %57, 1
  br i1 %83, label %56, label %84, !llvm.loop !18

84:                                               ; preds = %68, %82, %76, %46, %43, %33, %38, %28, %16, %22, %4, %4, %4, %4, %4, %4, %4, %8, %11, %2
  %85 = phi i1 [ false, %2 ], [ true, %8 ], [ %15, %11 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %22 ], [ false, %16 ], [ %30, %28 ], [ true, %33 ], [ %42, %38 ], [ true, %43 ], [ false, %46 ], [ true, %76 ], [ true, %68 ], [ false, %82 ]
  %86 = zext i1 %85 to i8
  ret i8 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_addr_can_trap_p(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 0) #14
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
  br label %5

5:                                                ; preds = %92, %4
  %6 = phi ptr [ %0, %4 ], [ %94, %92 ]
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %124 [
    i16 45, label %9
    i16 44, label %123
    i16 37, label %71
    i16 35, label %90
    i16 49, label %95
    i16 122, label %119
    i16 78, label %119
    i16 74, label %121
    i16 75, label %121
    i16 76, label %121
    i16 77, label %121
    i16 79, label %121
  ]

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %11, label %124

11:                                               ; preds = %9
  %12 = and i32 %7, 67108864
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %124

14:                                               ; preds = %11
  %15 = icmp slt i64 %1, 0
  br i1 %15, label %124, label %16

16:                                               ; preds = %14
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = zext nneg i32 %3 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !6
  %22 = zext i8 %21 to i64
  %23 = icmp eq i8 %21, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = icmp ne i64 %1, 0
  br label %124

26:                                               ; preds = %16, %18
  %27 = phi i64 [ %22, %18 ], [ %2, %16 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !19
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @host_integerp(ptr noundef nonnull %39, i32 noundef 0) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %38, align 8, !tbaa !6
  %46 = tail call i64 @tree_low_cst(ptr noundef %45, i32 noundef 0) #15
  br label %63

47:                                               ; preds = %37, %31
  %48 = icmp eq i64 %33, 28
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.tree_string, ptr %29, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !6
  %52 = sext i32 %51 to i64
  br label %63

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %55) #15
  br label %63

61:                                               ; preds = %26, %41, %53
  %62 = icmp ne i64 %1, 0
  br label %124

63:                                               ; preds = %44, %59, %49
  %64 = phi i64 [ %52, %49 ], [ %60, %59 ], [ %46, %44 ]
  %65 = freeze i64 %64
  %66 = icmp slt i64 %65, 1
  %67 = icmp ne i64 %1, 0
  %68 = add nsw i64 %27, %1
  %69 = icmp sgt i64 %68, %65
  %70 = select i1 %66, i1 %67, i1 %69
  br label %124

71:                                               ; preds = %5
  %72 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !9
  %73 = icmp eq ptr %72, %6
  %74 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %75 = icmp eq ptr %74, %6
  %76 = select i1 %73, i1 true, i1 %75
  %77 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %78 = icmp eq ptr %77, %6
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %124, label %80

80:                                               ; preds = %71
  %81 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !9
  %82 = icmp eq ptr %81, %6
  %83 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %84 = icmp ne i8 %83, 0
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %124, label %86

86:                                               ; preds = %80
  %87 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #14
  %88 = add i32 %87, -58
  %89 = icmp ult i32 %88, -5
  br label %124

90:                                               ; preds = %5
  %91 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %92

92:                                               ; preds = %90, %119, %121
  %93 = phi ptr [ %91, %90 ], [ %120, %119 ], [ %122, %121 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  br label %5

95:                                               ; preds = %5
  %96 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !9
  %99 = icmp eq ptr %97, %98
  %100 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = load i32, ptr %101, align 8
  br i1 %99, label %103, label %109

103:                                              ; preds = %95
  %104 = and i32 %102, 65535
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !19
  %108 = icmp eq i32 %107, 9
  br i1 %108, label %124, label %109

109:                                              ; preds = %95, %103
  %110 = and i32 %102, 65535
  %111 = icmp eq i32 %110, 30
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !6
  %115 = add nsw i64 %114, %1
  %116 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %97, i64 noundef %115, i64 noundef %2, i32 noundef %3) #14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112, %109
  br label %124

119:                                              ; preds = %5, %5
  %120 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %92

121:                                              ; preds = %5, %5, %5, %5, %5
  %122 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %92

123:                                              ; preds = %5
  br label %124

124:                                              ; preds = %5, %123, %24, %14, %61, %63, %86, %112, %103, %71, %80, %11, %9, %118
  %125 = phi i1 [ true, %118 ], [ true, %9 ], [ false, %11 ], [ false, %80 ], [ false, %71 ], [ false, %103 ], [ false, %112 ], [ %89, %86 ], [ %25, %24 ], [ true, %14 ], [ %62, %61 ], [ %70, %63 ], [ false, %123 ], [ true, %5 ]
  %126 = zext i1 %125 to i32
  ret i32 %126
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nonzero_address_p(ptr noundef readonly %0) local_unnamed_addr #5 {
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
  ]

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, -1
  br label %65

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !9
  %10 = icmp eq ptr %9, %3
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %12 = icmp eq ptr %11, %3
  %13 = select i1 %10, i1 true, i1 %12
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %15 = icmp eq ptr %14, %3
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %65, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !9
  %19 = icmp eq ptr %18, %3
  %20 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %65, label %23

23:                                               ; preds = %17
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #14
  %25 = add i32 %24, -53
  %26 = icmp ult i32 %25, 5
  br label %65

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %29

29:                                               ; preds = %49, %56, %32, %27, %60, %62
  %30 = phi ptr [ %28, %27 ], [ %61, %60 ], [ %63, %62 ], [ %33, %32 ], [ %50, %56 ], [ %50, %49 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  br label %2

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 30
  br i1 %38, label %29, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !6
  %41 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !9
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = zext nneg i32 %37 to i64
  %45 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !19
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %65, label %48

48:                                               ; preds = %39, %43
  br label %65

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %51 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 30
  br i1 %55, label %56, label %29

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !6
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

65:                                               ; preds = %2, %64, %23, %43, %8, %17, %48, %6
  %66 = phi i1 [ false, %48 ], [ %7, %6 ], [ true, %17 ], [ true, %8 ], [ true, %43 ], [ %26, %23 ], [ true, %64 ], [ false, %2 ]
  %67 = zext i1 %66 to i8
  ret i8 %67
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @rtx_addr_varies_p(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = tail call zeroext i8 @rtx_varies_p(ptr noundef %13, i8 noundef zeroext %1) #14
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i8
  br label %55

17:                                               ; preds = %4
  %18 = zext nneg i32 %6 to i64
  %19 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !6
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
  %31 = load i8, ptr %30, align 1, !tbaa !6
  switch i8 %31, label %53 [
    i8 101, label %39
    i8 69, label %32
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = load i32, ptr %34, align 8, !tbaa !11
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %47

39:                                               ; preds = %27
  %40 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %41, i8 noundef zeroext %1) #14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %53, label %55

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %38
  br i1 %46, label %53, label %47, !llvm.loop !20

47:                                               ; preds = %37, %44
  %48 = phi i64 [ 0, %37 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %50, i8 noundef zeroext %1) #14
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %44, label %55

53:                                               ; preds = %44, %32, %27, %39
  %54 = icmp sgt i64 %28, 1
  br i1 %54, label %27, label %55, !llvm.loop !21

55:                                               ; preds = %39, %53, %47, %17, %8, %11, %2
  %56 = phi i8 [ 0, %2 ], [ 1, %8 ], [ %16, %11 ], [ 0, %17 ], [ 1, %47 ], [ 1, %39 ], [ 0, %53 ]
  ret i8 %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @get_integer_term(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %32 [
    i16 50, label %13
    i16 49, label %23
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !6
  %22 = sub nsw i64 0, %21
  br label %32

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 30
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !6
  br label %32

32:                                               ; preds = %9, %13, %23, %29, %19
  %33 = phi i64 [ %22, %19 ], [ %31, %29 ], [ 0, %23 ], [ 0, %13 ], [ 0, %9 ]
  ret i64 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_related_value(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %25 [
    i16 49, label %10
    i16 50, label %16
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 30
  br i1 %15, label %22, label %25

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %10
  %23 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %22, %5, %10, %16, %1
  %26 = phi ptr [ null, %1 ], [ null, %16 ], [ null, %10 ], [ null, %5 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @offset_within_block_p(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
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
  %17 = load i8, ptr %16, align 1, !tbaa !6
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
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = tail call i64 @int_size_in_bytes(ptr noundef %32) #15
  %34 = icmp sgt i64 %33, %1
  br i1 %34, label %54, label %35

35:                                               ; preds = %22, %26, %30, %8
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load i32, ptr %36, align 8, !tbaa !6
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !6
  %47 = icmp sgt i64 %46, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = add i64 %46, %1
  %50 = getelementptr inbounds %struct.object_block, ptr %42, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !22
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %44, %40, %35
  br label %54

54:                                               ; preds = %48, %30, %13, %6, %2, %53
  %55 = phi i8 [ 0, %53 ], [ 0, %2 ], [ 1, %6 ], [ 1, %13 ], [ 1, %30 ], [ 1, %48 ]
  ret i8 %55
}

; Function Attrs: optsize
declare i32 @get_pool_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @split_const(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 49
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  br label %22

22:                                               ; preds = %3, %13, %7, %19
  %23 = phi ptr [ %21, %19 ], [ %9, %13 ], [ %9, %7 ], [ %0, %3 ]
  %24 = phi ptr [ %14, %19 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %13 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %7 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %3 ]
  store ptr %23, ptr %1, align 8, !tbaa !9
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  store ptr %25, ptr %2, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @count_occurrences(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %85, label %5

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
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = tail call i32 @count_occurrences(ptr noundef %16, ptr noundef %1, i32 noundef %10) #14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %85, label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %17, %8
  %23 = icmp eq ptr %19, %1
  br i1 %23, label %85, label %5

24:                                               ; preds = %9
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 43
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = tail call i32 @rtx_equal_p(ptr noundef nonnull %11, ptr noundef nonnull %1) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %85

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp ne ptr %33, %1
  %35 = icmp ne i32 %10, 0
  %36 = or i1 %35, %34
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %85, label %9

41:                                               ; preds = %9, %31, %24, %28
  %42 = and i32 %12, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !6
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %85, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %51 = zext i8 %45 to i64
  br label %52

52:                                               ; preds = %47, %81
  %53 = phi i64 [ 0, %47 ], [ %83, %81 ]
  %54 = phi i32 [ 0, %47 ], [ %82, %81 ]
  %55 = phi ptr [ %49, %47 ], [ %56, %81 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !6
  switch i8 %57, label %81 [
    i8 101, label %63
    i8 69, label %58
  ]

58:                                               ; preds = %52
  %59 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %53
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = load i32, ptr %60, align 8, !tbaa !11
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %68, label %81

63:                                               ; preds = %52
  %64 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %53
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = tail call i32 @count_occurrences(ptr noundef %65, ptr noundef %1, i32 noundef %10) #14
  %67 = add nsw i32 %66, %54
  br label %81

68:                                               ; preds = %58, %68
  %69 = phi i64 [ %76, %68 ], [ 0, %58 ]
  %70 = phi ptr [ %77, %68 ], [ %60, %58 ]
  %71 = phi i32 [ %75, %68 ], [ %54, %58 ]
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %70, i64 0, i32 1, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !9
  %74 = tail call i32 @count_occurrences(ptr noundef %73, ptr noundef %1, i32 noundef %10) #14
  %75 = add nsw i32 %74, %71
  %76 = add nuw nsw i64 %69, 1
  %77 = load ptr, ptr %59, align 8, !tbaa !6
  %78 = load i32, ptr %77, align 8, !tbaa !11
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %68, label %81, !llvm.loop !25

81:                                               ; preds = %68, %58, %63, %52
  %82 = phi i32 [ %54, %52 ], [ %67, %63 ], [ %54, %58 ], [ %75, %68 ]
  %83 = add nuw nsw i64 %53, 1
  %84 = icmp eq i64 %83, %51
  br i1 %84, label %85, label %52, !llvm.loop !26

85:                                               ; preds = %21, %14, %37, %9, %9, %9, %9, %9, %9, %9, %9, %9, %81, %3, %41, %28
  %86 = phi i32 [ %8, %28 ], [ %8, %41 ], [ 0, %3 ], [ %8, %81 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %37 ], [ %22, %21 ], [ %8, %14 ]
  %87 = phi i32 [ 1, %28 ], [ 0, %41 ], [ 1, %3 ], [ %82, %81 ], [ 1, %37 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 1, %21 ], [ %17, %14 ]
  %88 = add nsw i32 %87, %86
  ret i32 %88
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_mentioned_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %69, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %69, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 44
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
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
  ]

16:                                               ; preds = %14
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %23 = icmp eq i32 %21, %22
  br label %69

24:                                               ; preds = %14
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %28, %24
  %32 = zext nneg i32 %8 to i64
  %33 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !6
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = zext i8 %36 to i64
  br label %41

41:                                               ; preds = %38, %67
  %42 = phi i64 [ %40, %38 ], [ %43, %67 ]
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds i8, ptr %34, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !6
  switch i8 %45, label %67 [
    i8 69, label %46
    i8 101, label %62
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = load i32, ptr %48, align 8, !tbaa !11
  %50 = zext i32 %49 to i64
  br label %51

51:                                               ; preds = %55, %46
  %52 = phi i64 [ %56, %55 ], [ %50, %46 ]
  %53 = trunc i64 %52 to i32
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %67, label %55

55:                                               ; preds = %51
  %56 = add nsw i64 %52, -1
  %57 = load ptr, ptr %47, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %57, i64 0, i32 1, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %0, ptr noundef %59) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %51, label %69, !llvm.loop !27

62:                                               ; preds = %41
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %0, ptr noundef %64) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %51, %41, %62
  %68 = icmp sgt i64 %42, 1
  br i1 %68, label %41, label %69, !llvm.loop !28

69:                                               ; preds = %62, %67, %55, %31, %28, %14, %14, %14, %14, %14, %14, %14, %16, %20, %4, %2, %10
  %70 = phi i1 [ %13, %10 ], [ false, %2 ], [ true, %4 ], [ false, %16 ], [ %23, %20 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ true, %28 ], [ false, %31 ], [ true, %55 ], [ true, %62 ], [ false, %67 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @no_labels_between_p(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %7, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %4, !llvm.loop !29

13:                                               ; preds = %4, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %4 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reg_used_between_p(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %31, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %31, label %9

9:                                                ; preds = %5, %27
  %10 = phi ptr [ %29, %27 ], [ %7, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -11
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %17) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = tail call i32 @find_reg_fusage(ptr noundef nonnull %10, i32 noundef 24, ptr noundef %0) #14, !range !30
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %9, %20, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %9, !llvm.loop !31

31:                                               ; preds = %24, %15, %27, %5, %3
  %32 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 1, %24 ], [ 1, %15 ], [ 0, %27 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !19
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %112, label %9

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
  ]

13:                                               ; preds = %9, %9, %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  br label %9

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
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
  br i1 %32, label %33, label %37

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
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %5
  %49 = load i8, ptr %48, align 1, !tbaa !6
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
  %58 = load i8, ptr %57, align 1, !tbaa !6
  switch i8 %58, label %80 [
    i8 101, label %59
    i8 69, label %64
  ]

59:                                               ; preds = %54
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %10, ptr noundef %61) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %112

64:                                               ; preds = %54
  %65 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %56
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load i32, ptr %66, align 8, !tbaa !11
  %68 = zext i32 %67 to i64
  br label %69

69:                                               ; preds = %73, %64
  %70 = phi i64 [ %74, %73 ], [ %68, %64 ]
  %71 = trunc i64 %70 to i32
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = add nsw i64 %70, -1
  %75 = load ptr, ptr %65, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %75, i64 0, i32 1, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !9
  %78 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %10, ptr noundef %77) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %69, label %112, !llvm.loop !32

80:                                               ; preds = %69, %54, %59
  %81 = icmp sgt i64 %55, 1
  br i1 %81, label %54, label %112, !llvm.loop !33

82:                                               ; preds = %9, %9, %9
  %83 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %10, ptr noundef nonnull %1) #14
  br label %112

84:                                               ; preds = %9
  %85 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = load i32, ptr %86, align 8, !tbaa !11
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = zext nneg i32 %87 to i64
  br label %91

91:                                               ; preds = %89, %103
  %92 = phi i64 [ %90, %89 ], [ %93, %103 ]
  %93 = add nsw i64 %92, -1
  %94 = load ptr, ptr %85, align 8, !tbaa !6
  %95 = getelementptr inbounds %struct.rtvec_def, ptr %94, i64 0, i32 1, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !9
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %98, ptr noundef nonnull %1) #14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %91, %100
  %104 = icmp ugt i64 %92, 1
  br i1 %104, label %91, label %112, !llvm.loop !34

105:                                              ; preds = %9
  %106 = and i32 %11, 65535
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !19
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
define dso_local noundef i32 @find_reg_fusage(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %49

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1804, ptr noundef nonnull @.str.1) #15
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %14, %30
  %19 = phi ptr [ %32, %30 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef %27) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %18, %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %18, !llvm.loop !35

34:                                               ; preds = %10
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #14
  %36 = icmp ult i32 %35, 53
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = lshr i32 %11, 16
  %39 = and i32 %38, 255
  %40 = tail call fastcc i32 @end_hard_regno(i32 noundef %39, i32 noundef %35) #14
  %41 = icmp ult i32 %35, %40
  br i1 %41, label %45, label %49

42:                                               ; preds = %45
  %43 = add i32 %46, 1
  %44 = icmp eq i32 %43, %40
  br i1 %44, label %49, label %45, !llvm.loop !36

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
define dso_local i32 @reg_referenced_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
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
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %122

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %40 [
    i16 46, label %43
    i16 36, label %43
    i16 37, label %43
    i16 39, label %17
  ]

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = lshr i32 %20, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !6
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, 3
  %31 = lshr i32 %15, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !6
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 3
  %38 = xor i32 %37, %30
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %43, label %40

40:                                               ; preds = %12, %23, %17
  %41 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %14) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %122

43:                                               ; preds = %12, %12, %12, %40, %23
  br label %122

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = load i32, ptr %46, align 8, !tbaa !11
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %53, %44
  %50 = phi i64 [ %54, %53 ], [ %48, %44 ]
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %49
  %54 = add nsw i64 %50, -1
  %55 = load ptr, ptr %45, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.rtvec_def, ptr %55, i64 0, i32 1, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %57) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %49, label %122, !llvm.loop !37

60:                                               ; preds = %3, %3, %3
  %61 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %4) #14
  br label %122

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %64) #14
  br label %122

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %68) #14
  br label %122

70:                                               ; preds = %3, %3
  %71 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = load i32, ptr %72, align 8, !tbaa !11
  %74 = zext i32 %73 to i64
  br label %75

75:                                               ; preds = %79, %70
  %76 = phi i64 [ %80, %79 ], [ %74, %70 ]
  %77 = trunc i64 %76 to i32
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %75
  %80 = add nsw i64 %76, -1
  %81 = load ptr, ptr %71, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.rtvec_def, ptr %81, i64 0, i32 1, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  %84 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %83) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %75, label %122, !llvm.loop !38

86:                                               ; preds = %3
  %87 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = load i32, ptr %88, align 8, !tbaa !11
  %90 = zext i32 %89 to i64
  br label %91

91:                                               ; preds = %95, %86
  %92 = phi i64 [ %96, %95 ], [ %90, %86 ]
  %93 = trunc i64 %92 to i32
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = add nsw i64 %92, -1
  %97 = load ptr, ptr %87, align 8, !tbaa !6
  %98 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !9
  %100 = tail call i32 @reg_referenced_p(ptr noundef %0, ptr noundef %99) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %91, label %122, !llvm.loop !39

102:                                              ; preds = %3
  %103 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 43
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %110) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108, %102
  br label %122

114:                                              ; preds = %3
  %115 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %116) #14
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  br label %3

122:                                              ; preds = %3, %114, %91, %95, %75, %79, %49, %53, %108, %40, %7, %113, %66, %62, %60, %43
  %123 = phi i32 [ 0, %113 ], [ %69, %66 ], [ %65, %62 ], [ %61, %60 ], [ 0, %43 ], [ 1, %7 ], [ 1, %40 ], [ 1, %108 ], [ 0, %49 ], [ 1, %53 ], [ 0, %75 ], [ 1, %79 ], [ 0, %91 ], [ 1, %95 ], [ 0, %3 ], [ 1, %114 ]
  ret i32 %123
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reg_set_between_p(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %22, label %9

9:                                                ; preds = %5, %18
  %10 = phi ptr [ %20, %18 ], [ %7, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %10) #14, !range !30
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %9, %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %9, !llvm.loop !40

22:                                               ; preds = %15, %18, %5, %3
  %23 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 1, %15 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_set_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %18 [
    i16 37, label %9
    i16 43, label %25
  ]

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %11 = icmp ult i32 %10, 53
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !41
  %14 = lshr i32 %7, 16
  %15 = and i32 %14, 255
  %16 = tail call fastcc zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %13, i32 noundef %15, i32 noundef %10) #14, !range !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %6, %9, %12
  %19 = tail call i32 @find_reg_fusage(ptr noundef nonnull %1, i32 noundef 25, ptr noundef nonnull %0) #14, !range !30
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

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
define internal fastcc noundef zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19

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
  br i1 %18, label %10, label %19, !llvm.loop !43

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 1, %3 ], [ 0, %10 ], [ 1, %14 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @set_of(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.set_of_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.set_of_data, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !46
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ %1, %2 ]
  call void @note_stores(ptr noundef %13, ptr noundef nonnull @set_of_1, ptr noundef nonnull %3) #14
  %14 = load ptr, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !6
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @modified_between_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq ptr %1, %2
  br i1 %6, label %73, label %7

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
  ]

9:                                                ; preds = %7, %7
  br label %73

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call i32 @modified_between_p(ptr noundef %12, ptr noundef %1, ptr noundef %2) #14, !range !30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %10
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 67108864
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %15, %24
  %20 = phi ptr [ %22, %24 ], [ %1, %15 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %73, label %24

24:                                               ; preds = %19
  %25 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef nonnull %0, ptr noundef %22) #15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %19, label %73, !llvm.loop !47

27:                                               ; preds = %7
  %28 = tail call i32 @reg_set_between_p(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #14, !range !30
  br label %73

29:                                               ; preds = %7
  %30 = zext nneg i32 %5 to i64
  %31 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %30
  %34 = load i8, ptr %33, align 1, !tbaa !6
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = zext i8 %34 to i64
  br label %39

39:                                               ; preds = %36, %71
  %40 = phi i64 [ %38, %36 ], [ %41, %71 ]
  %41 = add nsw i64 %40, -1
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !6
  %44 = icmp eq i8 %43, 101
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = tail call i32 @modified_between_p(ptr noundef %47, ptr noundef %1, ptr noundef %2) #14, !range !30
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = load i8, ptr %42, align 1, !tbaa !6
  br label %52

52:                                               ; preds = %50, %39
  %53 = phi i8 [ %51, %50 ], [ %43, %39 ]
  %54 = icmp eq i8 %53, 69
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = load i32, ptr %57, align 8, !tbaa !11
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %64, %55
  %61 = phi i64 [ %65, %64 ], [ %59, %55 ]
  %62 = trunc i64 %61 to i32
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = add nsw i64 %61, -1
  %66 = load ptr, ptr %56, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !9
  %69 = tail call i32 @modified_between_p(ptr noundef %68, ptr noundef %1, ptr noundef %2) #14, !range !30
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %60, label %73, !llvm.loop !48

71:                                               ; preds = %60, %52
  %72 = icmp sgt i64 %40, 1
  br i1 %72, label %39, label %73, !llvm.loop !49

73:                                               ; preds = %19, %24, %45, %71, %64, %29, %15, %10, %7, %7, %7, %7, %7, %7, %7, %3, %27, %9
  %74 = phi i32 [ %28, %27 ], [ 1, %9 ], [ 0, %3 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 1, %10 ], [ 0, %15 ], [ 0, %29 ], [ 1, %64 ], [ 1, %45 ], [ 0, %71 ], [ 0, %19 ], [ 1, %24 ]
  ret i32 %74
}

; Function Attrs: optsize
declare zeroext i8 @memory_modified_in_insn_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @modified_in_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
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
  ]

5:                                                ; preds = %2, %2
  br label %66

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call i32 @modified_in_p(ptr noundef %8, ptr noundef %1) #14, !range !30
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %6
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 67108864
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef nonnull %0, ptr noundef %1) #15
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  br label %66

19:                                               ; preds = %2
  %20 = tail call i32 @reg_set_p(ptr noundef nonnull %0, ptr noundef %1) #14, !range !30
  br label %66

21:                                               ; preds = %2
  %22 = and i32 %3, 65535
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !6
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %31 = zext i8 %27 to i64
  br label %32

32:                                               ; preds = %29, %64
  %33 = phi i64 [ %31, %29 ], [ %34, %64 ]
  %34 = add nsw i64 %33, -1
  %35 = getelementptr inbounds i8, ptr %25, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !6
  %37 = icmp eq i8 %36, 101
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = tail call i32 @modified_in_p(ptr noundef %40, ptr noundef %1) #14, !range !30
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load i8, ptr %35, align 1, !tbaa !6
  br label %45

45:                                               ; preds = %43, %32
  %46 = phi i8 [ %44, %43 ], [ %36, %32 ]
  %47 = icmp eq i8 %46, 69
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %34
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = load i32, ptr %50, align 8, !tbaa !11
  %52 = zext i32 %51 to i64
  br label %53

53:                                               ; preds = %57, %48
  %54 = phi i64 [ %58, %57 ], [ %52, %48 ]
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = add nsw i64 %54, -1
  %59 = load ptr, ptr %49, align 8, !tbaa !6
  %60 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  %62 = tail call i32 @modified_in_p(ptr noundef %61, ptr noundef %1) #14, !range !30
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %53, label %66, !llvm.loop !50

64:                                               ; preds = %53, %45
  %65 = icmp sgt i64 %33, 1
  br i1 %65, label %32, label %66, !llvm.loop !51

66:                                               ; preds = %38, %64, %57, %21, %15, %11, %6, %2, %2, %2, %2, %2, %2, %2, %19, %5
  %67 = phi i32 [ %20, %19 ], [ 1, %5 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 1, %6 ], [ 0, %11 ], [ %18, %15 ], [ 0, %21 ], [ 1, %57 ], [ 1, %38 ], [ 0, %64 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @note_stores(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
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
  ]

15:                                               ; preds = %11, %11
  br label %16

16:                                               ; preds = %22, %15
  %17 = phi ptr [ %13, %15 ], [ %19, %22 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %51 [
    i16 39, label %23
    i16 120, label %22
    i16 40, label %22
    i16 15, label %32
  ]

22:                                               ; preds = %16, %16, %29, %23
  br label %16, !llvm.loop !52

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
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
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = load i32, ptr %34, align 8, !tbaa !11
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %49
  %40 = phi i64 [ %38, %37 ], [ %41, %49 ]
  %41 = add nsw i64 %40, -1
  %42 = load ptr, ptr %33, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  tail call void %1(ptr noundef nonnull %46, ptr noundef nonnull %13, ptr noundef %2) #15
  br label %49

49:                                               ; preds = %39, %48
  %50 = icmp ugt i64 %40, 1
  br i1 %50, label %39, label %66, !llvm.loop !53

51:                                               ; preds = %16, %29
  tail call void %1(ptr noundef nonnull %19, ptr noundef nonnull %13, ptr noundef %2) #15
  br label %66

52:                                               ; preds = %11
  %53 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = load i32, ptr %54, align 8, !tbaa !11
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = zext nneg i32 %55 to i64
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ %58, %57 ], [ %61, %59 ]
  %61 = add nsw i64 %60, -1
  %62 = load ptr, ptr %53, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %62, i64 0, i32 1, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  tail call void @note_stores(ptr noundef %64, ptr noundef %1, ptr noundef %2) #14
  %65 = icmp ugt i64 %60, 1
  br i1 %65, label %59, label %66, !llvm.loop !54

66:                                               ; preds = %59, %49, %52, %32, %11, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @set_of_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.set_of_data, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !46
  %14 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %13, ptr noundef nonnull %0) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %3
  store ptr %1, ptr %2, align 8, !tbaa !44
  br label %17

17:                                               ; preds = %16, %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @single_set_2(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %48

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8, !tbaa !11
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %6, %40
  %12 = phi i64 [ %43, %40 ], [ 0, %6 ]
  %13 = phi ptr [ %44, %40 ], [ %8, %6 ]
  %14 = phi i32 [ %42, %40 ], [ 1, %6 ]
  %15 = phi ptr [ %41, %40 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %13, i64 0, i32 1, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = load i32, ptr %17, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %48 [
    i16 24, label %40
    i16 25, label %40
    i16 23, label %20
  ]

20:                                               ; preds = %11
  %21 = icmp eq i32 %14, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 6, ptr noundef %24) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @side_effects_p(ptr noundef nonnull %15) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %32

30:                                               ; preds = %20
  %31 = icmp eq ptr %15, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27, %22, %30
  %33 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 6, ptr noundef %34) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @side_effects_p(ptr noundef nonnull %17) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %27, %30, %37, %11, %11
  %41 = phi ptr [ %15, %37 ], [ %15, %11 ], [ %15, %11 ], [ %17, %30 ], [ %17, %27 ]
  %42 = phi i32 [ 1, %37 ], [ %14, %11 ], [ %14, %11 ], [ 0, %30 ], [ 0, %27 ]
  %43 = add nuw nsw i64 %12, 1
  %44 = load ptr, ptr %7, align 8, !tbaa !6
  %45 = load i32, ptr %44, align 8, !tbaa !11
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %11, label %48, !llvm.loop !55

48:                                               ; preds = %40, %37, %32, %11, %6, %2
  %49 = phi ptr [ null, %2 ], [ null, %6 ], [ %41, %40 ], [ null, %37 ], [ null, %32 ], [ null, %11 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @find_reg_note(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1697, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %3, %5
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = icmp eq ptr %2, null
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %12, label %16, label %27

16:                                               ; preds = %11
  br i1 %15, label %42, label %17

17:                                               ; preds = %16, %23
  %18 = phi ptr [ %25, %23 ], [ %14, %16 ]
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %42, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %17, !llvm.loop !56

27:                                               ; preds = %11
  br i1 %15, label %42, label %28

28:                                               ; preds = %27, %38
  %29 = phi ptr [ %40, %38 ], [ %14, %27 ]
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %42, label %38

38:                                               ; preds = %28, %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !llvm.loop !57

42:                                               ; preds = %34, %38, %17, %23, %27, %16, %6
  %43 = phi ptr [ null, %6 ], [ null, %16 ], [ null, %27 ], [ %18, %17 ], [ null, %23 ], [ %29, %34 ], [ null, %38 ]
  ret ptr %43
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @side_effects_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  ]

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
  br i1 %12, label %13, label %51

13:                                               ; preds = %1, %10
  %14 = zext nneg i32 %3 to i64
  %15 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = zext i8 %18 to i64
  br label %23

23:                                               ; preds = %20, %49
  %24 = phi i64 [ %22, %20 ], [ %25, %49 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !6
  switch i8 %27, label %49 [
    i8 101, label %35
    i8 69, label %28
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %25
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load i32, ptr %30, align 8, !tbaa !11
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = zext nneg i32 %31 to i64
  br label %43

35:                                               ; preds = %23
  %36 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = tail call i32 @side_effects_p(ptr noundef %37) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %51

40:                                               ; preds = %43
  %41 = add nuw nsw i64 %44, 1
  %42 = icmp eq i64 %41, %34
  br i1 %42, label %49, label %43, !llvm.loop !58

43:                                               ; preds = %33, %40
  %44 = phi i64 [ 0, %33 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = tail call i32 @side_effects_p(ptr noundef %46) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %40, label %51

49:                                               ; preds = %40, %28, %23, %35
  %50 = icmp sgt i64 %24, 1
  br i1 %50, label %23, label %51, !llvm.loop !59

51:                                               ; preds = %49, %35, %43, %13, %10, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %9, %5
  %52 = phi i32 [ 1, %9 ], [ %8, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %10 ], [ 0, %13 ], [ 1, %43 ], [ 0, %49 ], [ 1, %35 ]
  ret i32 %52
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @multiple_sets(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %33

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load i32, ptr %14, align 8, !tbaa !11
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %31, %29 ]
  %21 = phi i32 [ 0, %17 ], [ %30, %29 ]
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %27, %19
  %30 = phi i32 [ %21, %19 ], [ 1, %27 ]
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %19, !llvm.loop !60

33:                                               ; preds = %27, %29, %12, %1, %6
  %34 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 0, %12 ], [ 1, %27 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @set_noop_p(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %2, align 8, !tbaa !6
  %6 = load ptr, ptr @global_rtl, align 16, !tbaa !9
  %7 = icmp eq ptr %5, %6
  %8 = icmp eq ptr %4, %6
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %74, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %5, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %39 [
    i16 43, label %13
    i16 120, label %23
    i16 40, label %36
  ]

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = tail call i32 @rtx_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %74, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @side_effects_p(ptr noundef nonnull %5) #14
  %22 = icmp eq i32 %21, 0
  br label %74

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = tail call i32 @rtx_equal_p(ptr noundef %25, ptr noundef %4) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = tail call i32 @side_effects_p(ptr noundef %4) #14
  %35 = icmp eq i32 %34, 0
  br label %74

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  br label %39

39:                                               ; preds = %10, %13, %36
  %40 = phi ptr [ %38, %36 ], [ %5, %13 ], [ %5, %10 ]
  %41 = load i32, ptr %4, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 39
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32, ptr %40, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 39
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load i32, ptr %51, align 8, !tbaa !6
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %56 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = load ptr, ptr %55, align 8, !tbaa !6
  %59 = load i32, ptr %57, align 8
  br label %60

60:                                               ; preds = %54, %44, %39
  %61 = phi i32 [ %59, %54 ], [ %41, %44 ], [ %41, %39 ]
  %62 = phi ptr [ %57, %54 ], [ %4, %44 ], [ %4, %39 ]
  %63 = phi ptr [ %58, %54 ], [ %40, %44 ], [ %40, %39 ]
  %64 = and i32 %61, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i32, ptr %63, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %74

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
define dso_local noundef i32 @noop_move_p(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 2147483647
  br i1 %6, label %48, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @set_noop_p(ptr noundef nonnull %3) #14, !range !30
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 8
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ %18, %17 ], [ %11, %10 ]
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load i32, ptr %25, align 8, !tbaa !11
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23, %42
  %29 = phi i32 [ %43, %42 ], [ %26, %23 ]
  %30 = phi ptr [ %44, %42 ], [ %25, %23 ]
  %31 = phi i64 [ %45, %42 ], [ 0, %23 ]
  %32 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = load i32, ptr %33, align 8
  %35 = trunc i32 %34 to i16
  switch i16 %35, label %48 [
    i16 24, label %42
    i16 25, label %42
    i16 23, label %36
  ]

36:                                               ; preds = %28
  %37 = tail call i32 @set_noop_p(ptr noundef nonnull %33) #14, !range !30
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %24, align 8, !tbaa !6
  %41 = load i32, ptr %40, align 8, !tbaa !11
  br label %42

42:                                               ; preds = %39, %28, %28
  %43 = phi i32 [ %41, %39 ], [ %29, %28 ], [ %29, %28 ]
  %44 = phi ptr [ %40, %39 ], [ %30, %28 ], [ %30, %28 ]
  %45 = add nuw nsw i64 %31, 1
  %46 = sext i32 %43 to i64
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %28, label %48, !llvm.loop !61

48:                                               ; preds = %42, %36, %28, %23, %19, %14, %7, %1
  %49 = phi i32 [ 1, %1 ], [ 0, %7 ], [ 1, %14 ], [ 0, %19 ], [ 1, %23 ], [ 1, %42 ], [ 0, %36 ], [ 0, %28 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_last_value(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr %1, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
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
  %18 = load ptr, ptr %17, align 8, !tbaa !6
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
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %32) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %29, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
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
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = tail call i32 @modified_between_p(ptr noundef %47, ptr noundef %50, ptr noundef nonnull %2) #14, !range !30
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
  store ptr %13, ptr %1, align 8, !tbaa !9
  br label %69

62:                                               ; preds = %48, %57, %28, %24
  %63 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %13) #14, !range !30
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %12
  %66 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %12, !llvm.loop !62

69:                                               ; preds = %62, %12, %65, %4, %61
  %70 = phi ptr [ %47, %61 ], [ %0, %4 ], [ %0, %65 ], [ %0, %12 ], [ %0, %62 ]
  ret ptr %70
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %142, label %6

6:                                                ; preds = %4, %93
  %7 = phi ptr [ %95, %93 ], [ %2, %4 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -23
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 31)
  switch i32 %11, label %97 [
    i32 7, label %12
    i32 8, label %34
    i32 1, label %54
    i32 0, label %54
  ]

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #14
  %14 = icmp eq i32 %13, 7
  %15 = and i32 %13, -5
  %16 = icmp eq i32 %15, 16
  %17 = or i1 %14, %16
  %18 = add i32 %0, -53
  %19 = icmp ult i32 %18, 5
  %20 = and i1 %19, %17
  br i1 %20, label %142, label %21

21:                                               ; preds = %12
  %22 = icmp ult i32 %13, %1
  br i1 %22, label %23, label %142

23:                                               ; preds = %21
  %24 = icmp ult i32 %13, 53
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = lshr i32 %8, 16
  %27 = and i32 %26, 255
  %28 = tail call fastcc i32 @end_hard_regno(i32 noundef %27, i32 noundef %13) #14
  br label %31

29:                                               ; preds = %23
  %30 = add nuw i32 %13, 1
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %33 = icmp ugt i32 %32, %0
  br label %142

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %97

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #14
  %42 = icmp ult i32 %41, 53
  br i1 %42, label %43, label %97

43:                                               ; preds = %40
  %44 = tail call i32 @subreg_regno(ptr noundef nonnull %7) #14
  %45 = icmp ult i32 %44, 53
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i32 @subreg_nregs(ptr noundef nonnull %7) #14
  br label %48

48:                                               ; preds = %43, %46
  %49 = phi i32 [ %47, %46 ], [ 1, %43 ]
  %50 = add i32 %49, %44
  %51 = icmp ult i32 %44, %1
  %52 = icmp ugt i32 %50, %0
  %53 = select i1 %51, i1 %52, i1 false
  br label %142

54:                                               ; preds = %6, %6
  %55 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %56 = icmp eq ptr %55, %3
  br i1 %56, label %88, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !6
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 39
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %64 = icmp eq ptr %63, %3
  br i1 %64, label %84, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %63, align 8, !tbaa !6
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #14
  %72 = icmp ugt i32 %71, 52
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %66, ptr noundef %3) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %142

76:                                               ; preds = %73
  %77 = load ptr, ptr %55, align 8, !tbaa !6
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  br label %80

80:                                               ; preds = %76, %57
  %81 = phi i32 [ %79, %76 ], [ %60, %57 ]
  %82 = phi ptr [ %77, %76 ], [ %58, %57 ]
  %83 = icmp eq i32 %81, 37
  br i1 %83, label %88, label %84

84:                                               ; preds = %62, %65, %70, %80
  %85 = phi ptr [ %82, %80 ], [ %58, %70 ], [ %58, %65 ], [ %58, %62 ]
  %86 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %85, ptr noundef %3) #14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %142

88:                                               ; preds = %84, %80, %54
  %89 = icmp eq i32 %9, 25
  %90 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = icmp eq ptr %90, %3
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %142, label %93

93:                                               ; preds = %115, %88
  %94 = phi ptr [ %90, %88 ], [ %105, %115 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = icmp eq ptr %95, null
  br i1 %96, label %142, label %6

97:                                               ; preds = %6, %34, %40
  %98 = zext nneg i32 %9 to i64
  %99 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !9
  %101 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %98
  %102 = load i8, ptr %101, align 1, !tbaa !6
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %142, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %106 = zext i8 %102 to i64
  br label %107

107:                                              ; preds = %104, %140
  %108 = phi i64 [ %106, %104 ], [ %109, %140 ]
  %109 = add nsw i64 %108, -1
  %110 = getelementptr inbounds i8, ptr %100, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !6
  switch i8 %111, label %140 [
    i8 101, label %112
    i8 69, label %121
  ]

112:                                              ; preds = %107
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %105, i64 0, i64 %109
  %114 = icmp eq ptr %113, %3
  br i1 %114, label %140, label %115

115:                                              ; preds = %112
  %116 = icmp eq i64 %109, 0
  br i1 %116, label %93, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr %113, align 8, !tbaa !6
  %119 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef %118, ptr noundef %3) #14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %140, label %142

121:                                              ; preds = %107
  %122 = getelementptr inbounds [1 x %union.rtunion_def], ptr %105, i64 0, i64 %109
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = load i32, ptr %123, align 8, !tbaa !11
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %140, label %126

126:                                              ; preds = %121
  %127 = zext nneg i32 %124 to i64
  br label %128

128:                                              ; preds = %126, %138
  %129 = phi i64 [ %127, %126 ], [ %130, %138 ]
  %130 = add nsw i64 %129, -1
  %131 = load ptr, ptr %122, align 8, !tbaa !6
  %132 = getelementptr inbounds %struct.rtvec_def, ptr %131, i64 0, i32 1, i64 %130
  %133 = icmp eq ptr %132, %3
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %132, align 8, !tbaa !9
  %136 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef %135, ptr noundef %3) #14
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128, %134
  %139 = icmp ult i64 %129, 2
  br i1 %139, label %140, label %128, !llvm.loop !63

140:                                              ; preds = %138, %121, %107, %112, %117
  %141 = icmp sgt i64 %108, 1
  br i1 %141, label %107, label %142, !llvm.loop !64

142:                                              ; preds = %93, %84, %73, %88, %97, %117, %140, %134, %4, %21, %31, %12, %48
  %143 = phi i1 [ %53, %48 ], [ true, %12 ], [ false, %21 ], [ %33, %31 ], [ false, %4 ], [ true, %134 ], [ true, %117 ], [ false, %140 ], [ false, %97 ], [ false, %93 ], [ true, %84 ], [ true, %73 ], [ false, %88 ]
  %144 = zext i1 %143 to i32
  ret i32 %144
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_regno(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #14
  %5 = load i32, ptr %3, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = tail call i32 @subreg_regno_offset(i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %12) #14
  %14 = add i32 %13, %4
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_nregs(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #14
  %5 = tail call i32 @subreg_nregs_with_regno(i32 noundef %4, ptr noundef %0) #14
  ret i32 %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @note_uses(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi ptr [ %0, %3 ], [ %11, %9 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !9
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
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %10, ptr noundef %2) #15
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %4

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load i32, ptr %14, align 8, !tbaa !11
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %102

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %18, %17 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %13, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %21
  tail call void @note_uses(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2) #14
  %24 = icmp ugt i64 %20, 1
  br i1 %24, label %19, label %102, !llvm.loop !65

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = load i32, ptr %27, align 8, !tbaa !11
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr %26, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1
  tail call void @note_uses(ptr noundef nonnull %38, ptr noundef %1, ptr noundef %2) #14
  %39 = icmp ugt i64 %33, 1
  br i1 %39, label %32, label %102, !llvm.loop !66

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = load i32, ptr %44, align 8, !tbaa !11
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %42
  %48 = zext nneg i32 %45 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %48, %47 ], [ %51, %49 ]
  %51 = add nsw i64 %50, -1
  %52 = load ptr, ptr %43, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %51
  tail call void %1(ptr noundef nonnull %53, ptr noundef %2) #15
  %54 = icmp ugt i64 %50, 1
  br i1 %54, label %49, label %102, !llvm.loop !67

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

57:                                               ; preds = %4
  %58 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

59:                                               ; preds = %4, %4
  %60 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = load i32, ptr %61, align 8, !tbaa !11
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = zext nneg i32 %62 to i64
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %65, %64 ], [ %68, %66 ]
  %68 = add nsw i64 %67, -1
  %69 = load ptr, ptr %60, align 8, !tbaa !6
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %68
  tail call void %1(ptr noundef nonnull %70, ptr noundef %2) #15
  %71 = icmp ugt i64 %67, 1
  br i1 %71, label %66, label %102, !llvm.loop !68

72:                                               ; preds = %4
  %73 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  br label %100

80:                                               ; preds = %4
  %81 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %1(ptr noundef nonnull %83, ptr noundef %2) #15
  %84 = load i32, ptr %82, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 120
  br i1 %86, label %87, label %90

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
  ]

95:                                               ; preds = %91, %91
  %96 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  br label %91, !llvm.loop !69

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
define dso_local noundef i32 @dead_or_set_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %5 [
    i16 46, label %26
    i16 37, label %6
  ]

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1585, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %8 = icmp ult i32 %7, 53
  br i1 %8, label %9, label %14

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
  br i1 %18, label %22, label %26

19:                                               ; preds = %22
  %20 = add i32 %23, 1
  %21 = icmp eq i32 %20, %17
  br i1 %21, label %26, label %22, !llvm.loop !70

22:                                               ; preds = %16, %19
  %23 = phi i32 [ %20, %19 ], [ %7, %16 ]
  %24 = tail call i32 @dead_or_set_regno_p(ptr noundef %0, i32 noundef %23) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %19

26:                                               ; preds = %22, %19, %16, %2
  %27 = phi i32 [ 1, %2 ], [ 1, %16 ], [ 0, %22 ], [ 1, %19 ]
  ret i32 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dead_or_set_regno_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %61

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call i32 @find_regno_fusage(ptr noundef nonnull %0, i32 noundef 25, i32 noundef %1) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 14
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load i32, ptr %20, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %21, %18 ], [ %15, %12 ]
  %24 = phi ptr [ %20, %18 ], [ %14, %12 ]
  %25 = trunc i32 %23 to i16
  switch i16 %25, label %61 [
    i16 23, label %26
    i16 15, label %31
  ]

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = tail call fastcc zeroext i8 @covers_regno_p(ptr noundef %28, i32 noundef %1) #14
  %30 = zext i8 %29 to i32
  br label %61

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = load i32, ptr %33, align 8, !tbaa !11
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %61, label %36

36:                                               ; preds = %31
  %37 = zext nneg i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %59
  %39 = phi i64 [ %37, %36 ], [ %40, %59 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 14
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = load i32, ptr %48, align 8
  br label %50

50:                                               ; preds = %46, %38
  %51 = phi i32 [ %49, %46 ], [ %43, %38 ]
  %52 = phi ptr [ %48, %46 ], [ %42, %38 ]
  %53 = trunc i32 %51 to i16
  switch i16 %53, label %59 [
    i16 23, label %54
    i16 25, label %54
  ]

54:                                               ; preds = %50, %50
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = tail call fastcc zeroext i8 @covers_regno_p(ptr noundef %56, i32 noundef %1) #14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50, %54
  %60 = icmp ult i64 %39, 2
  br i1 %60, label %61, label %38, !llvm.loop !71

61:                                               ; preds = %54, %59, %31, %22, %9, %2, %26
  %62 = phi i32 [ %30, %26 ], [ 1, %2 ], [ 1, %9 ], [ 0, %22 ], [ 0, %31 ], [ 1, %54 ], [ 0, %59 ]
  ret i32 %62
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @find_regno_note(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %42

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %8, %38
  %13 = phi ptr [ %40, %38 ], [ %10, %8 ]
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #14
  %26 = icmp ugt i32 %25, %2
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = icmp ult i32 %25, 53
  br i1 %28, label %29, label %33

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
  br i1 %37, label %42, label %38

38:                                               ; preds = %12, %18, %24, %35
  %39 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %12, !llvm.loop !72

42:                                               ; preds = %35, %38, %8, %3
  %43 = phi ptr [ null, %3 ], [ null, %8 ], [ %13, %35 ], [ null, %38 ]
  ret ptr %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @find_regno_fusage(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp ugt i32 %2, 52
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9, %34
  %14 = phi ptr [ %36, %34 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !6
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
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %13, !llvm.loop !73

38:                                               ; preds = %29, %34, %9, %3, %5
  %39 = phi i32 [ 0, %5 ], [ 0, %3 ], [ 0, %9 ], [ 1, %29 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @covers_regno_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8, !tbaa !11
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = zext nneg i32 %9 to i64
  br label %13

13:                                               ; preds = %11, %24
  %14 = phi i64 [ %12, %11 ], [ %15, %24 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %19, i32 noundef %1) #14, !range !42
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %13
  %25 = icmp ugt i64 %14, 1
  br i1 %25, label %13, label %28, !llvm.loop !74

26:                                               ; preds = %2
  %27 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %0, i32 noundef %1) #14, !range !42
  br label %28

28:                                               ; preds = %24, %21, %6, %26
  %29 = phi i8 [ %27, %26 ], [ 0, %6 ], [ 0, %24 ], [ 1, %21 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @covers_regno_no_parallel_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !6
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %12, 3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !6
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
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %30) #14
  %35 = icmp ult i32 %34, 53
  br i1 %35, label %36, label %40

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
  %46 = select i1 %44, i1 %45, i1 false
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %28, %42
  %49 = phi i8 [ %47, %42 ], [ 0, %28 ]
  ret i8 %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @find_reg_equal_equiv_note(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6, %27
  %11 = phi ptr [ %29, %27 ], [ %8, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = add nsw i32 %14, -3
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = tail call i32 @multiple_sets(ptr noundef nonnull %0) #14, !range !30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %17
  br label %31

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !llvm.loop !75

31:                                               ; preds = %27, %6, %1, %23, %26
  %32 = phi ptr [ %11, %26 ], [ null, %1 ], [ null, %23 ], [ null, %6 ], [ null, %27 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @find_constant_src(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
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
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = tail call ptr @avoid_constant_pool_reference(ptr noundef %18) #15
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %39, label %26

26:                                               ; preds = %1, %15, %12
  %27 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !19
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %39, label %38

38:                                               ; preds = %29, %26
  br label %39

39:                                               ; preds = %29, %15, %38
  %40 = phi ptr [ null, %38 ], [ %19, %15 ], [ %31, %29 ]
  ret ptr %40
}

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_reg_note(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = add i32 %0, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %12

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
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_reg_note(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = tail call ptr @alloc_reg_note(i32 noundef %1, ptr noundef %2, ptr noundef %5) #14
  store ptr %6, ptr %4, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_note(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %11
  %9 = phi ptr [ %13, %11 ], [ %6, %4 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %8, !llvm.loop !76

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %17

17:                                               ; preds = %4, %15
  %18 = phi ptr [ %16, %15 ], [ %5, %4 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  store ptr %20, ptr %18, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %8, %17
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i8
  %25 = add i8 %24, -3
  %26 = icmp ult i8 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @df_notes_rescan(ptr noundef %0) #15
  br label %28

28:                                               ; preds = %27, %21, %2
  ret void
}

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_reg_equal_equiv_notes(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
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
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  br i1 %12, label %15, label %16

15:                                               ; preds = %5
  store ptr %14, ptr %7, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %5, %15
  %17 = phi ptr [ %7, %15 ], [ %13, %5 ]
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %5, !llvm.loop !77

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @in_expr_list_p(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !78

13:                                               ; preds = %4, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 0, %9 ], [ 1, %4 ]
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_node_from_expr_list(ptr noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %21

9:                                                ; preds = %21
  %10 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %21, !llvm.loop !79

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %3, %5 ], [ %24, %9 ]
  %15 = phi ptr [ null, %5 ], [ %22, %9 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = select i1 %16, ptr %1, ptr %19
  store ptr %18, ptr %20, align 8, !tbaa !6
  br label %26

21:                                               ; preds = %5, %9
  %22 = phi ptr [ %24, %9 ], [ %3, %5 ]
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !llvm.loop !79

26:                                               ; preds = %21, %13, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @volatile_insn_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  ]

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1, %1
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1, %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %45
  %20 = phi i64 [ %18, %16 ], [ %21, %45 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !6
  switch i8 %23, label %45 [
    i8 101, label %31
    i8 69, label %24
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = load i32, ptr %26, align 8, !tbaa !11
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  br label %39

31:                                               ; preds = %19
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = tail call i32 @volatile_insn_p(ptr noundef %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %47

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %45, label %39, !llvm.loop !80

39:                                               ; preds = %29, %36
  %40 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = tail call i32 @volatile_insn_p(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %47

45:                                               ; preds = %36, %24, %19, %31
  %46 = icmp sgt i64 %20, 1
  br i1 %46, label %19, label %47, !llvm.loop !81

47:                                               ; preds = %45, %31, %39, %9, %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %5
  %48 = phi i32 [ 1, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %6 ], [ 0, %9 ], [ 1, %39 ], [ 1, %31 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @volatile_refs_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  ]

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1, %1, %1
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1, %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %45
  %20 = phi i64 [ %18, %16 ], [ %21, %45 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !6
  switch i8 %23, label %45 [
    i8 101, label %31
    i8 69, label %24
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = load i32, ptr %26, align 8, !tbaa !11
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  br label %39

31:                                               ; preds = %19
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = tail call i32 @volatile_refs_p(ptr noundef %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %47

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %45, label %39, !llvm.loop !82

39:                                               ; preds = %29, %36
  %40 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = tail call i32 @volatile_refs_p(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %47

45:                                               ; preds = %36, %24, %19, %31
  %46 = icmp sgt i64 %20, 1
  br i1 %46, label %19, label %47, !llvm.loop !83

47:                                               ; preds = %45, %31, %39, %9, %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %5
  %48 = phi i32 [ 1, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %6 ], [ 0, %9 ], [ 1, %39 ], [ 1, %31 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_p_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ne i32 %1, 0
  %4 = icmp eq ptr %0, null
  br i1 %4, label %381, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = trunc i32 %6 to i16
  switch i16 %8, label %326 [
    i16 30, label %381
    i16 32, label %381
    i16 31, label %381
    i16 33, label %381
    i16 45, label %381
    i16 44, label %381
    i16 35, label %381
    i16 36, label %381
    i16 46, label %381
    i16 37, label %381
    i16 38, label %381
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
    i16 51, label %341
    i16 111, label %341
    i16 39, label %341
  ]

9:                                                ; preds = %5, %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 63), align 8, !tbaa !84
  %11 = tail call i32 %10(ptr noundef nonnull %0, i32 noundef %1) #15
  br label %381

12:                                               ; preds = %5, %5
  br label %381

13:                                               ; preds = %5
  %14 = lshr i32 %6, 27
  %15 = and i32 %14, 1
  br label %381

16:                                               ; preds = %5
  %17 = load i32, ptr @flag_stack_check, align 4, !tbaa !19
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %6, 134217728
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %20, %18
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %381, label %27

27:                                               ; preds = %22, %16
  %28 = and i32 %6, 33554432
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %3, %29
  br i1 %30, label %31, label %381

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  %39 = icmp eq ptr %38, null
  br i1 %39, label %72, label %54

40:                                               ; preds = %31
  %41 = lshr i32 %6, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %72, label %44

44:                                               ; preds = %40
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !6
  %48 = zext i8 %47 to i64
  %49 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %48) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %72, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %33, align 8, !tbaa !6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %36, %51
  %55 = phi ptr [ %52, %51 ], [ %34, %36 ]
  %56 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !96
  br label %68

58:                                               ; preds = %51
  %59 = load i32, ptr %0, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = icmp ne i32 %61, 1
  tail call void @llvm.assume(i1 %62)
  %63 = zext nneg i32 %61 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !6
  %66 = zext i8 %65 to i64
  %67 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %66) #15
  br label %68

68:                                               ; preds = %58, %54
  %69 = phi ptr [ %57, %54 ], [ %67, %58 ]
  %70 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !6
  br label %72

72:                                               ; preds = %36, %44, %40, %68
  %73 = phi i64 [ %71, %68 ], [ 0, %40 ], [ 0, %44 ], [ 0, %36 ]
  %74 = load ptr, ptr %32, align 8, !tbaa !6
  %75 = load i32, ptr %0, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %74, i64 noundef 0, i64 noundef %73, i32 noundef %77) #14
  br label %381

79:                                               ; preds = %5, %5, %5, %5
  %80 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !19
  %81 = icmp eq i32 %80, 0
  %82 = lshr i32 %6, 16
  %83 = and i32 %82, 255
  %84 = zext nneg i32 %83 to i64
  br i1 %81, label %107, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %84
  %87 = load i8, ptr %86, align 1, !tbaa !6
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
  %93 = load i8, ptr %92, align 1, !tbaa !6
  %94 = zext i8 %93 to i32
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i32 [ %83, %88 ], [ %94, %91 ]
  %97 = add nsw i32 %96, -38
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !9
  %101 = getelementptr inbounds %struct.real_format, ptr %100, i64 0, i32 11
  %102 = load i8, ptr %101, align 2, !tbaa !98
  %103 = icmp eq i8 %102, 0
  %104 = load i32, ptr @flag_finite_math_only, align 4
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %381

107:                                              ; preds = %79, %85, %95
  %108 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %84
  %109 = load i8, ptr %108, align 1, !tbaa !6
  %110 = and i8 %109, -2
  %111 = icmp eq i8 %110, 8
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, ptr @flag_trapping_math, align 4, !tbaa !19
  br label %381

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65535
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !19
  %122 = icmp ne i32 %121, 9
  %123 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %124 = icmp eq ptr %116, %123
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %381, label %341

126:                                              ; preds = %5
  br label %381

127:                                              ; preds = %5, %5, %5, %5, %5, %5
  %128 = load i32, ptr @flag_trapping_math, align 4, !tbaa !19
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %341, label %130

130:                                              ; preds = %127
  %131 = lshr i32 %6, 16
  %132 = and i32 %131, 255
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !6
  switch i8 %135, label %155 [
    i8 8, label %136
    i8 9, label %136
    i8 11, label %136
    i8 17, label %136
  ]

136:                                              ; preds = %130, %130, %130, %130
  %137 = and i8 %135, -2
  %138 = icmp eq i8 %137, 8
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %133
  %141 = load i8, ptr %140, align 1, !tbaa !6
  %142 = zext i8 %141 to i32
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i32 [ %132, %136 ], [ %142, %139 ]
  %145 = add nsw i32 %144, -38
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !9
  %149 = getelementptr inbounds %struct.real_format, ptr %148, i64 0, i32 11
  %150 = load i8, ptr %149, align 2, !tbaa !98
  %151 = icmp eq i8 %150, 0
  %152 = load i32, ptr @flag_finite_math_only, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %155, label %381

155:                                              ; preds = %130, %143
  %156 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !6
  switch i8 %163, label %183 [
    i8 8, label %164
    i8 9, label %164
    i8 11, label %164
    i8 17, label %164
  ]

164:                                              ; preds = %155, %155, %155, %155
  %165 = and i8 %163, -2
  %166 = icmp eq i8 %165, 8
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %161
  %169 = load i8, ptr %168, align 1, !tbaa !6
  %170 = zext i8 %169 to i32
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i32 [ %160, %164 ], [ %170, %167 ]
  %173 = add nsw i32 %172, -38
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !9
  %177 = getelementptr inbounds %struct.real_format, ptr %176, i64 0, i32 11
  %178 = load i8, ptr %177, align 2, !tbaa !98
  %179 = icmp eq i8 %178, 0
  %180 = load i32, ptr @flag_finite_math_only, align 4
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %183, label %381

183:                                              ; preds = %155, %171
  %184 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = load i32, ptr %185, align 8
  %187 = lshr i32 %186, 16
  %188 = and i32 %187, 255
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !6
  switch i8 %191, label %341 [
    i8 8, label %192
    i8 9, label %192
    i8 11, label %192
    i8 17, label %192
  ]

192:                                              ; preds = %183, %183, %183, %183
  %193 = and i8 %191, -2
  %194 = icmp eq i8 %193, 8
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %189
  %197 = load i8, ptr %196, align 1, !tbaa !6
  %198 = zext i8 %197 to i32
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %188, %192 ], [ %198, %195 ]
  %201 = add nsw i32 %200, -38
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !9
  %205 = getelementptr inbounds %struct.real_format, ptr %204, i64 0, i32 11
  %206 = load i8, ptr %205, align 2, !tbaa !98
  %207 = icmp eq i8 %206, 0
  %208 = load i32, ptr @flag_finite_math_only, align 4
  %209 = icmp ne i32 %208, 0
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %341, label %381

211:                                              ; preds = %5, %5
  %212 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !19
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %341, label %214

214:                                              ; preds = %211
  %215 = lshr i32 %6, 16
  %216 = and i32 %215, 255
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !6
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
  %225 = load i8, ptr %224, align 1, !tbaa !6
  %226 = zext i8 %225 to i32
  br label %227

227:                                              ; preds = %223, %220
  %228 = phi i32 [ %216, %220 ], [ %226, %223 ]
  %229 = add nsw i32 %228, -38
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !9
  %233 = getelementptr inbounds %struct.real_format, ptr %232, i64 0, i32 11
  %234 = load i8, ptr %233, align 2, !tbaa !98
  %235 = icmp eq i8 %234, 0
  %236 = load i32, ptr @flag_finite_math_only, align 4
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %235, i1 true, i1 %237
  br i1 %238, label %239, label %381

239:                                              ; preds = %214, %227
  %240 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = load i32, ptr %241, align 8
  %243 = lshr i32 %242, 16
  %244 = and i32 %243, 255
  %245 = zext nneg i32 %244 to i64
  %246 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !6
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
  %253 = load i8, ptr %252, align 1, !tbaa !6
  %254 = zext i8 %253 to i32
  br label %255

255:                                              ; preds = %251, %248
  %256 = phi i32 [ %244, %248 ], [ %254, %251 ]
  %257 = add nsw i32 %256, -38
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !9
  %261 = getelementptr inbounds %struct.real_format, ptr %260, i64 0, i32 11
  %262 = load i8, ptr %261, align 2, !tbaa !98
  %263 = icmp eq i8 %262, 0
  %264 = load i32, ptr @flag_finite_math_only, align 4
  %265 = icmp ne i32 %264, 0
  %266 = select i1 %263, i1 true, i1 %265
  br i1 %266, label %267, label %381

267:                                              ; preds = %239, %255
  %268 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !6
  %270 = load i32, ptr %269, align 8
  %271 = lshr i32 %270, 16
  %272 = and i32 %271, 255
  %273 = zext nneg i32 %272 to i64
  %274 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !6
  switch i8 %275, label %341 [
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
  %281 = load i8, ptr %280, align 1, !tbaa !6
  %282 = zext i8 %281 to i32
  br label %283

283:                                              ; preds = %279, %276
  %284 = phi i32 [ %272, %276 ], [ %282, %279 ]
  %285 = add nsw i32 %284, -38
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !9
  %289 = getelementptr inbounds %struct.real_format, ptr %288, i64 0, i32 11
  %290 = load i8, ptr %289, align 2, !tbaa !98
  %291 = icmp eq i8 %290, 0
  %292 = load i32, ptr @flag_finite_math_only, align 4
  %293 = icmp ne i32 %292, 0
  %294 = select i1 %291, i1 true, i1 %293
  br i1 %294, label %341, label %381

295:                                              ; preds = %5
  %296 = load i32, ptr @flag_trapping_math, align 4, !tbaa !19
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %341, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !6
  %301 = load i32, ptr %300, align 8
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !6
  switch i8 %306, label %341 [
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
  %312 = load i8, ptr %311, align 1, !tbaa !6
  %313 = zext i8 %312 to i32
  br label %314

314:                                              ; preds = %310, %307
  %315 = phi i32 [ %303, %307 ], [ %313, %310 ]
  %316 = add nsw i32 %315, -38
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !9
  %320 = getelementptr inbounds %struct.real_format, ptr %319, i64 0, i32 11
  %321 = load i8, ptr %320, align 2, !tbaa !98
  %322 = icmp eq i8 %321, 0
  %323 = load i32, ptr @flag_finite_math_only, align 4
  %324 = icmp ne i32 %323, 0
  %325 = select i1 %322, i1 true, i1 %324
  br i1 %325, label %341, label %381

326:                                              ; preds = %5
  %327 = lshr i32 %6, 16
  %328 = and i32 %327, 255
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !6
  %332 = icmp eq i8 %331, 8
  br i1 %332, label %338, label %333

333:                                              ; preds = %326
  %334 = icmp eq i8 %331, 9
  %335 = load i32, ptr @flag_trapping_math, align 4
  %336 = icmp ne i32 %335, 0
  %337 = select i1 %334, i1 %336, i1 false
  br i1 %337, label %381, label %341

338:                                              ; preds = %326
  %339 = load i32, ptr @flag_trapping_math, align 4, !tbaa !19
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %381

341:                                              ; preds = %211, %298, %267, %183, %114, %333, %338, %5, %5, %5, %295, %314, %283, %199, %127
  %342 = zext nneg i32 %7 to i64
  %343 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !9
  %345 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %342
  %346 = load i8, ptr %345, align 1, !tbaa !6
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %381, label %348

348:                                              ; preds = %341
  %349 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %350 = zext i8 %346 to i64
  br label %351

351:                                              ; preds = %348, %379
  %352 = phi i64 [ %350, %348 ], [ %353, %379 ]
  %353 = add nsw i64 %352, -1
  %354 = getelementptr inbounds i8, ptr %344, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !6
  switch i8 %355, label %379 [
    i8 101, label %361
    i8 69, label %356
  ]

356:                                              ; preds = %351
  %357 = getelementptr inbounds [1 x %union.rtunion_def], ptr %349, i64 0, i64 %353
  %358 = load ptr, ptr %357, align 8, !tbaa !6
  %359 = load i32, ptr %358, align 8, !tbaa !11
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %372, label %379

361:                                              ; preds = %351
  %362 = getelementptr inbounds [1 x %union.rtunion_def], ptr %349, i64 0, i64 %353
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  %364 = tail call i32 @may_trap_p_1(ptr noundef %363, i32 noundef %1) #14
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %379, label %381

366:                                              ; preds = %372
  %367 = add nuw nsw i64 %373, 1
  %368 = load ptr, ptr %357, align 8, !tbaa !6
  %369 = load i32, ptr %368, align 8, !tbaa !11
  %370 = sext i32 %369 to i64
  %371 = icmp slt i64 %367, %370
  br i1 %371, label %372, label %379, !llvm.loop !100

372:                                              ; preds = %356, %366
  %373 = phi i64 [ %367, %366 ], [ 0, %356 ]
  %374 = phi ptr [ %368, %366 ], [ %358, %356 ]
  %375 = getelementptr inbounds %struct.rtvec_def, ptr %374, i64 0, i32 1, i64 %373
  %376 = load ptr, ptr %375, align 8, !tbaa !9
  %377 = tail call i32 @may_trap_p_1(ptr noundef %376, i32 noundef %1) #14
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %366, label %381

379:                                              ; preds = %366, %356, %351, %361
  %380 = icmp sgt i64 %352, 1
  br i1 %380, label %351, label %381, !llvm.loop !101

381:                                              ; preds = %361, %379, %372, %341, %27, %338, %333, %314, %255, %283, %227, %171, %199, %143, %114, %95, %22, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %2, %126, %112, %72, %13, %12, %9
  %382 = phi i32 [ 1, %126 ], [ %113, %112 ], [ %78, %72 ], [ %15, %13 ], [ 1, %12 ], [ %11, %9 ], [ 0, %2 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 1, %22 ], [ 1, %95 ], [ 1, %114 ], [ 1, %143 ], [ 1, %199 ], [ 1, %171 ], [ 1, %227 ], [ 1, %283 ], [ 1, %255 ], [ 1, %314 ], [ 1, %333 ], [ 1, %338 ], [ 0, %27 ], [ 0, %341 ], [ 1, %372 ], [ 1, %361 ], [ 0, %379 ]
  ret i32 %382
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_p(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @may_trap_p_1(ptr noundef %0, i32 noundef 0) #14
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_or_fault_p(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @may_trap_p_1(ptr noundef %0, i32 noundef 1) #14
  ret i32 %2
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inequality_comparisons_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %9 = load i8, ptr %8, align 1, !tbaa !6
  %10 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = zext i8 %9 to i64
  br label %16

16:                                               ; preds = %13, %40
  %17 = phi i64 [ 0, %13 ], [ %41, %40 ]
  %18 = getelementptr inbounds i8, ptr %11, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !6
  switch i8 %19, label %40 [
    i8 101, label %20
    i8 69, label %25
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = tail call i32 @inequality_comparisons_p(ptr noundef %22) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %43

25:                                               ; preds = %16
  %26 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %17
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = load i32, ptr %27, align 8, !tbaa !11
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
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = tail call i32 @inequality_comparisons_p(ptr noundef %37) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %30, label %43, !llvm.loop !102

40:                                               ; preds = %30, %16, %20
  %41 = add nuw nsw i64 %17, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %43, label %16, !llvm.loop !103

43:                                               ; preds = %20, %40, %34, %5, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %44 = phi i32 [ 1, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %5 ], [ 1, %34 ], [ 1, %20 ], [ 0, %40 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %94, label %12

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  %11 = select i1 %10, ptr %2, ptr null
  br label %94

12:                                               ; preds = %5
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %94, label %14

14:                                               ; preds = %12
  %15 = trunc i32 %6 to i16
  switch i16 %15, label %56 [
    i16 39, label %16
    i16 99, label %37
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = tail call ptr @replace_rtx(ptr noundef %18, ptr noundef %1, ptr noundef %2) #14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 30
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load i32, ptr %0, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = load ptr, ptr %17, align 8, !tbaa !6
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load i32, ptr %31, align 8, !tbaa !6
  %33 = tail call ptr @simplify_subreg(i32 noundef %26, ptr noundef nonnull %19, i32 noundef %30, i32 noundef %32) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %94

35:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2509, ptr noundef nonnull @.str.1) #15
  br label %94

36:                                               ; preds = %16
  store ptr %19, ptr %17, align 8, !tbaa !6
  br label %94

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = tail call ptr @replace_rtx(ptr noundef %39, ptr noundef %1, ptr noundef %2) #14
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 30
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i32, ptr %0, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = load ptr, ptr %38, align 8, !tbaa !6
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
  store ptr %40, ptr %38, align 8, !tbaa !6
  br label %94

56:                                               ; preds = %14
  %57 = zext nneg i32 %7 to i64
  %58 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %57
  %61 = load i8, ptr %60, align 1, !tbaa !6
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %65 = zext i8 %61 to i64
  br label %66

66:                                               ; preds = %63, %92
  %67 = phi i64 [ %65, %63 ], [ %68, %92 ]
  %68 = add nsw i64 %67, -1
  %69 = getelementptr inbounds i8, ptr %59, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !6
  switch i8 %70, label %92 [
    i8 101, label %71
    i8 69, label %75
  ]

71:                                               ; preds = %66
  %72 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %68
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = tail call ptr @replace_rtx(ptr noundef %73, ptr noundef %1, ptr noundef %2) #14
  store ptr %74, ptr %72, align 8, !tbaa !6
  br label %92

75:                                               ; preds = %66
  %76 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %68
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = load i32, ptr %77, align 8, !tbaa !11
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = zext nneg i32 %78 to i64
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ %81, %80 ], [ %84, %82 ]
  %84 = add nsw i64 %83, -1
  %85 = load ptr, ptr %76, align 8, !tbaa !6
  %86 = getelementptr inbounds %struct.rtvec_def, ptr %85, i64 0, i32 1, i64 %84
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = tail call ptr @replace_rtx(ptr noundef %87, ptr noundef %1, ptr noundef %2) #14
  %89 = load ptr, ptr %76, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct.rtvec_def, ptr %89, i64 0, i32 1, i64 %84
  store ptr %88, ptr %90, align 8, !tbaa !9
  %91 = icmp ugt i64 %83, 1
  br i1 %91, label %82, label %92, !llvm.loop !104

92:                                               ; preds = %82, %75, %66, %71
  %93 = icmp sgt i64 %67, 1
  br i1 %93, label %66, label %94, !llvm.loop !105

94:                                               ; preds = %92, %56, %9, %12, %55, %44, %54, %36, %23, %35, %5
  %95 = phi ptr [ %0, %5 ], [ %33, %23 ], [ null, %35 ], [ %0, %36 ], [ %52, %44 ], [ null, %54 ], [ %0, %55 ], [ %2, %12 ], [ %11, %9 ], [ %0, %56 ], [ %0, %92 ]
  ret ptr %95
}

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @replace_label(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  %5 = load ptr, ptr %1, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.replace_label_data, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.replace_label_data, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !109
  %10 = icmp eq ptr %4, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, 67174399
  %14 = icmp eq i32 %13, 67108909
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = tail call ptr @get_pool_constant(ptr noundef nonnull %4) #15
  %17 = tail call i32 @rtx_referenced_p(ptr noundef %5, ptr noundef %16) #14, !range !110
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %20 = tail call ptr @copy_rtx(ptr noundef %16) #15
  store ptr %20, ptr %3, align 8, !tbaa !9
  store i8 0, ptr %8, align 8, !tbaa !109
  %21 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @replace_label, ptr noundef nonnull %1) #14, !range !110
  store i8 %9, ptr %8, align 8, !tbaa !109
  %22 = call i32 @get_pool_mode(ptr noundef nonnull %4) #15
  %23 = load ptr, ptr %3, align 8, !tbaa !9
  %24 = call ptr @force_const_mem(i32 noundef %22, ptr noundef %23) #15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = call ptr @replace_rtx(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %26) #14
  store ptr %27, ptr %0, align 8, !tbaa !9
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
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = icmp eq ptr %32, %5
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  store ptr %7, ptr %31, align 8, !tbaa !6
  br label %48

35:                                               ; preds = %28, %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  store ptr %7, ptr %36, align 8, !tbaa !6
  %40 = icmp eq i8 %9, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !6
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !6
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr %45, align 8, !tbaa !6
  br label %48

48:                                               ; preds = %28, %30, %34, %35, %39, %41, %15, %19, %2
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_referenced_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !9
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @rtx_referenced_p_1, ptr noundef %0) #14, !range !110
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @for_each_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #15
  switch i32 %4, label %5 [
    i32 -1, label %18
    i32 0, label %6
  ]

5:                                                ; preds = %3
  br label %18

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %7, i32 noundef %14, ptr noundef %1, ptr noundef %2) #14, !range !110
  br label %18

18:                                               ; preds = %9, %6, %3, %16, %5
  %19 = phi i32 [ %4, %5 ], [ %17, %16 ], [ 0, %3 ], [ 0, %6 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rtx_referenced_p_1(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
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
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = icmp eq ptr %18, %1
  %20 = zext i1 %19 to i32
  br label %29

21:                                               ; preds = %8
  %22 = and i32 %9, 67174399
  %23 = icmp eq i32 %22, 67108909
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = tail call ptr @get_pool_constant(ptr noundef nonnull %3) #15
  %26 = tail call i32 @rtx_referenced_p(ptr noundef %1, ptr noundef %25) #14, !range !110
  br label %29

27:                                               ; preds = %12, %21
  %28 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %1) #15
  br label %29

29:                                               ; preds = %27, %24, %16, %5
  %30 = phi i32 [ %7, %5 ], [ %20, %16 ], [ %26, %24 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tablejump_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @next_active_insn(ptr noundef nonnull %9) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp eq i32 %22, 20
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = icmp eq ptr %1, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  store ptr %9, ptr %1, align 8, !tbaa !9
  br label %27

27:                                               ; preds = %26, %24
  %28 = icmp eq ptr %2, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  store ptr %12, ptr %2, align 8, !tbaa !9
  br label %30

30:                                               ; preds = %18, %3, %7, %11, %14, %27, %29
  %31 = phi i8 [ 1, %29 ], [ 1, %27 ], [ 0, %18 ], [ 0, %14 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i8 %31
}

; Function Attrs: optsize
declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @computed_jump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %75

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %75

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %75 [
    i16 15, label %14
    i16 23, label %66
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load i32, ptr %16, align 8, !tbaa !11
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
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 24
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 44
  %36 = select i1 %35, i32 1, i32 %24
  br label %37

37:                                               ; preds = %30, %22
  %38 = phi i32 [ %24, %22 ], [ %36, %30 ]
  %39 = add nsw i64 %23, -1
  %40 = icmp sgt i64 %23, 0
  br i1 %40, label %22, label %41, !llvm.loop !111

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
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 23
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = icmp eq ptr %56, %45
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %60) #14, !range !30
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %47, %54, %58
  %64 = add nsw i64 %48, -1
  %65 = icmp sgt i64 %48, 0
  br i1 %65, label %47, label %75, !llvm.loop !112

66:                                               ; preds = %11
  %67 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = load ptr, ptr @global_rtl, align 16, !tbaa !9
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %73) #14, !range !30
  br label %75

75:                                               ; preds = %63, %58, %14, %71, %5, %1, %66, %41, %11
  %76 = phi i32 [ 0, %11 ], [ 0, %41 ], [ 0, %66 ], [ 0, %1 ], [ 0, %5 ], [ %74, %71 ], [ 0, %14 ], [ 0, %63 ], [ 1, %58 ]
  ret i32 %76
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @computed_jump_p_1(ptr nocapture noundef readonly %0) unnamed_addr #0 {
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
  %8 = load ptr, ptr %7, align 8, !tbaa !6
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
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %18) #14, !range !30
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  br label %2

24:                                               ; preds = %2
  %25 = and i32 %4, 65535
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !6
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
  %39 = load i8, ptr %38, align 1, !tbaa !6
  switch i8 %39, label %61 [
    i8 101, label %47
    i8 69, label %40
  ]

40:                                               ; preds = %35
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = load i32, ptr %42, align 8, !tbaa !11
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = zext nneg i32 %43 to i64
  br label %55

47:                                               ; preds = %35
  %48 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %37
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %49) #14, !range !30
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %64

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %56, 1
  %54 = icmp eq i64 %53, %46
  br i1 %54, label %61, label %55, !llvm.loop !113

55:                                               ; preds = %45, %52
  %56 = phi i64 [ 0, %45 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %58) #14, !range !30
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %52, label %64

61:                                               ; preds = %52, %40, %35, %47
  %62 = icmp sgt i64 %36, 1
  br i1 %62, label %35, label %64, !llvm.loop !114

63:                                               ; preds = %2, %2
  br label %64

64:                                               ; preds = %47, %61, %55, %16, %2, %2, %2, %2, %2, %2, %2, %63, %24, %6
  %65 = phi i32 [ %15, %6 ], [ 0, %24 ], [ 0, %63 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %16 ], [ 1, %55 ], [ 1, %47 ], [ 0, %61 ]
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @for_each_rtx_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %63, %4
  %13 = phi i64 [ %64, %63 ], [ %11, %4 ]
  %14 = getelementptr inbounds i8, ptr %9, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !6
  switch i8 %15, label %63 [
    i8 0, label %65
    i8 101, label %16
    i8 86, label %32
    i8 69, label %32
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds [1 x %union.rtunion_def], ptr %10, i64 0, i64 %13
  %18 = tail call i32 %2(ptr noundef nonnull %17, ptr noundef %3) #15
  switch i32 %18, label %65 [
    i32 -1, label %63
    i32 0, label %19
  ]

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 65535
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !19
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %63

29:                                               ; preds = %22
  %30 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %20, i32 noundef %27, ptr noundef %2, ptr noundef %3) #14, !range !110
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %63, label %65

32:                                               ; preds = %12, %12
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %10, i64 0, i64 %13
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !11
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36, %57
  %40 = phi i64 [ %58, %57 ], [ 0, %36 ]
  %41 = phi ptr [ %59, %57 ], [ %34, %36 ]
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %41, i64 0, i32 1, i64 %40
  %43 = tail call i32 %2(ptr noundef nonnull %42, ptr noundef %3) #15
  switch i32 %43, label %65 [
    i32 -1, label %57
    i32 0, label %44
  ]

44:                                               ; preds = %39
  %45 = load ptr, ptr %42, align 8, !tbaa !9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !19
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %45, i32 noundef %52, ptr noundef %2, ptr noundef %3) #14, !range !110
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %39, %47, %54, %44
  %58 = add nuw nsw i64 %40, 1
  %59 = load ptr, ptr %33, align 8, !tbaa !6
  %60 = load i32, ptr %59, align 8, !tbaa !11
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %39, label %63, !llvm.loop !115

63:                                               ; preds = %57, %36, %16, %12, %29, %22, %32, %19
  %64 = add i64 %13, 1
  br label %12, !llvm.loop !116

65:                                               ; preds = %12, %29, %16, %54, %39
  %66 = phi i32 [ %55, %54 ], [ %43, %39 ], [ 0, %12 ], [ %30, %29 ], [ %18, %16 ]
  ret i32 %66
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @regno_use_in(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !6
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
  %23 = load i8, ptr %22, align 1, !tbaa !6
  switch i8 %23, label %44 [
    i8 101, label %24
    i8 69, label %29
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = tail call ptr @regno_use_in(i32 noundef %0, ptr noundef %26) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %46

29:                                               ; preds = %19
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = load i32, ptr %31, align 8, !tbaa !11
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
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = tail call ptr @regno_use_in(i32 noundef %0, ptr noundef %41) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %34, label %46, !llvm.loop !117

44:                                               ; preds = %34, %19, %24
  %45 = icmp sgt i64 %20, 1
  br i1 %45, label %19, label %46, !llvm.loop !118

46:                                               ; preds = %24, %44, %38, %9, %6
  %47 = phi ptr [ %1, %6 ], [ null, %9 ], [ %42, %38 ], [ %27, %24 ], [ null, %44 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @commutative_operand_precedence(ptr noundef %0) local_unnamed_addr #2 {
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
  %12 = load i32, ptr %11, align 4, !tbaa !19
  switch i32 %12, label %42 [
    i32 9, label %13
    i32 5, label %17
    i32 8, label %30
    i32 3, label %51
    i32 2, label %36
    i32 4, label %37
  ]

13:                                               ; preds = %6
  %14 = trunc i32 %8 to i16
  %15 = add i16 %14, -30
  %16 = icmp ult i16 %15, 3
  br i1 %16, label %47, label %51

17:                                               ; preds = %6
  %18 = icmp eq i32 %9, 39
  br i1 %18, label %19, label %29

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !19
  %27 = and i32 %26, -2
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %51, label %29

29:                                               ; preds = %19, %17
  br label %51

30:                                               ; preds = %6
  %31 = and i32 %8, 1073807359
  %32 = icmp eq i32 %31, 1073741861
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 1073741867
  %35 = select i1 %34, i32 -1, i32 -2
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
define dso_local zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @commutative_operand_precedence(ptr noundef %0) #14, !range !119
  %4 = tail call i32 @commutative_operand_precedence(ptr noundef %1) #14, !range !119
  %5 = icmp slt i32 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @auto_inc_p(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -74
  %5 = icmp ult i16 %4, 6
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1, %6
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %6 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @loc_mentioned_in_p(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !6
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
  %20 = load i8, ptr %19, align 1, !tbaa !6
  switch i8 %20, label %45 [
    i8 101, label %21
    i8 69, label %28
  ]

21:                                               ; preds = %16
  %22 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %18
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !6
  %26 = tail call i32 @loc_mentioned_in_p(ptr noundef %0, ptr noundef %25) #14, !range !30
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %47

28:                                               ; preds = %16
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %18
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load i32, ptr %30, align 8, !tbaa !11
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
  %42 = load ptr, ptr %39, align 8, !tbaa !9
  %43 = tail call i32 @loc_mentioned_in_p(ptr noundef %0, ptr noundef %42) #14, !range !30
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %33, label %47, !llvm.loop !120

45:                                               ; preds = %33, %16, %24
  %46 = icmp sgt i64 %17, 1
  br i1 %46, label %16, label %47, !llvm.loop !121

47:                                               ; preds = %24, %21, %45, %38, %41, %4, %2
  %48 = phi i32 [ 0, %2 ], [ 0, %4 ], [ 1, %41 ], [ 1, %38 ], [ 1, %24 ], [ 1, %21 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !6
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !6
  %10 = icmp ugt i8 %6, %9
  %11 = shl i32 %2, 3
  %12 = select i1 %10, i32 0, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lsb(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = tail call i32 @subreg_lsb_1(i32 noundef %4, i32 noundef %9, i32 noundef %11) #14
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = icmp ult i32 %0, 53
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3102, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %5, %7
  %9 = load i32, ptr @target_flags, align 4, !tbaa !19
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = zext i32 %0 to i64
  br i1 %11, label %78, label %13

13:                                               ; preds = %8
  %14 = and i64 %12, 4294967288
  %15 = icmp eq i64 %14, 8
  %16 = add nsw i64 %12, -21
  %17 = icmp ult i64 %16, 8
  %18 = select i1 %15, i1 true, i1 %17
  %19 = add nsw i64 %12, -45
  %20 = icmp ult i64 %19, 8
  %21 = select i1 %18, i1 true, i1 %20
  %22 = add nsw i64 %12, -29
  %23 = icmp ult i64 %22, 8
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %78, label %25

25:                                               ; preds = %13
  switch i32 %1, label %78 [
    i32 53, label %26
    i32 40, label %26
  ]

26:                                               ; preds = %25, %25
  %27 = icmp eq i32 %1, 40
  %28 = select i1 %27, i32 4, i32 8
  %29 = zext nneg i32 %1 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !6
  %32 = icmp eq i8 %31, 0
  %33 = zext i8 %31 to i32
  %34 = select i1 %32, i32 %1, i32 %33
  switch i32 %34, label %35 [
    i32 53, label %36
    i32 40, label %36
  ]

35:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3117, ptr noundef nonnull @.str.1) #15
  br label %36

36:                                               ; preds = %26, %26, %35
  %37 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %29
  %38 = load i8, ptr %37, align 1, !tbaa !6
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %34, 40
  %41 = select i1 %40, i32 2, i32 3
  %42 = shl nuw nsw i32 %39, %41
  %43 = icmp eq i32 %28, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3120, ptr noundef nonnull @.str.1) #15
  br label %45

45:                                               ; preds = %36, %44
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %29
  %47 = load i8, ptr %46, align 1, !tbaa !6
  %48 = zext i8 %47 to i32
  %49 = zext nneg i32 %34 to i64
  %50 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !6
  %52 = zext i8 %51 to i32
  %53 = mul nuw nsw i32 %52, %39
  %54 = icmp eq i32 %53, %48
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3123, ptr noundef nonnull @.str.1) #15
  br label %56

56:                                               ; preds = %45, %55
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %49
  %58 = load i8, ptr %57, align 1, !tbaa !6
  %59 = zext i8 %58 to i32
  %60 = udiv i32 %2, %59
  %61 = add i32 %60, 1
  %62 = icmp ult i32 %61, %39
  br i1 %62, label %63, label %83

63:                                               ; preds = %56
  %64 = zext i32 %3 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !6
  %67 = zext i8 %66 to i32
  %68 = add i32 %2, -1
  %69 = add i32 %68, %67
  %70 = udiv i32 %69, %59
  %71 = icmp eq i32 %60, %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %73, align 4, !tbaa !122
  %74 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %64
  %75 = load i8, ptr %74, align 1, !tbaa !6
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %2, 0
  br label %100

78:                                               ; preds = %8, %25, %13
  %79 = zext i32 %1 to i64
  %80 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !6
  %82 = zext i8 %81 to i32
  br label %83

83:                                               ; preds = %56, %63, %78
  %84 = phi i32 [ %28, %56 ], [ %28, %63 ], [ %82, %78 ]
  %85 = zext i32 %3 to i64
  %86 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !6
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %2, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %92 = load i8, ptr %91, align 1, !tbaa !6
  %93 = zext i32 %1 to i64
  %94 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !6
  %96 = icmp ugt i8 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 1, ptr %98, align 4, !tbaa !122
  store i32 0, ptr %4, align 4, !tbaa !124
  %99 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %88, ptr %99, align 4, !tbaa !125
  br label %240

100:                                              ; preds = %72, %90, %83
  %101 = phi i1 [ %77, %72 ], [ true, %90 ], [ false, %83 ]
  %102 = phi i1 [ false, %72 ], [ true, %90 ], [ true, %83 ]
  %103 = phi i32 [ %76, %72 ], [ %88, %90 ], [ %88, %83 ]
  %104 = phi i8 [ %75, %72 ], [ %87, %90 ], [ %87, %83 ]
  %105 = phi i64 [ %64, %72 ], [ %85, %90 ], [ %85, %83 ]
  %106 = phi i32 [ %28, %72 ], [ %84, %90 ], [ %84, %83 ]
  %107 = load i32, ptr @target_flags, align 4, !tbaa !19
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  %110 = and i64 %12, 4294967288
  %111 = icmp eq i64 %110, 8
  %112 = or i1 %111, %109
  %113 = add nsw i64 %12, -21
  %114 = icmp ult i64 %113, 8
  %115 = select i1 %112, i1 true, i1 %114
  %116 = add nsw i64 %12, -45
  %117 = icmp ult i64 %116, 8
  %118 = select i1 %115, i1 true, i1 %117
  %119 = add nsw i64 %12, -29
  %120 = icmp ult i64 %119, 8
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %124, label %122

122:                                              ; preds = %100
  switch i32 %1, label %123 [
    i32 53, label %173
    i32 40, label %173
  ]

123:                                              ; preds = %122
  switch i32 %3, label %124 [
    i32 53, label %173
    i32 40, label %173
  ]

124:                                              ; preds = %100, %123
  %125 = zext i32 %1 to i64
  %126 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !6
  %128 = trunc i32 %106 to i8
  %129 = urem i8 %127, %128
  %130 = udiv i8 %127, %128
  %131 = icmp eq i8 %129, 0
  br i1 %131, label %132, label %173

132:                                              ; preds = %124
  %133 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %105
  %134 = load i8, ptr %133, align 1, !tbaa !6
  %135 = trunc i32 %103 to i8
  %136 = urem i8 %134, %135
  %137 = udiv i8 %134, %135
  %138 = icmp eq i8 %136, 0
  br i1 %138, label %139, label %173

139:                                              ; preds = %132
  %140 = zext i8 %130 to i32
  br i1 %102, label %141, label %183

141:                                              ; preds = %139
  %142 = icmp ugt i8 %130, %137
  %143 = icmp ugt i8 %104, 1
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %146, align 4, !tbaa !122
  %147 = load i8, ptr %133, align 1, !tbaa !6
  %148 = zext i8 %147 to i32
  %149 = add nuw nsw i32 %148, %140
  %150 = trunc i32 %149 to i16
  %151 = add nsw i16 %150, -1
  %152 = zext i8 %130 to i16
  %153 = udiv i16 %151, %152
  %154 = zext i16 %153 to i32
  %155 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %154, ptr %155, align 4, !tbaa !125
  %156 = udiv i32 %2, %140
  store i32 %156, ptr %4, align 4, !tbaa !124
  br label %240

157:                                              ; preds = %141
  %158 = icmp ugt i8 %137, %130
  %159 = icmp ugt i32 %106, 1
  %160 = and i1 %159, %158
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %162, align 4, !tbaa !122
  %163 = load i8, ptr %133, align 1, !tbaa !6
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %164, %140
  %166 = trunc i32 %165 to i16
  %167 = add nsw i16 %166, -1
  %168 = zext i8 %130 to i16
  %169 = sdiv i16 %167, %168
  %170 = sext i16 %169 to i32
  %171 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %170, ptr %171, align 4, !tbaa !125
  %172 = udiv i32 %2, %140
  store i32 %172, ptr %4, align 4, !tbaa !124
  br label %240

173:                                              ; preds = %123, %123, %122, %122, %132, %124
  br i1 %102, label %174, label %183

174:                                              ; preds = %157, %173
  %175 = tail call i32 @subreg_lowpart_offset(i32 noundef %3, i32 noundef %1) #15
  %176 = icmp eq i32 %175, %2
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 1, ptr %178, align 4, !tbaa !122
  %179 = icmp eq i32 %106, %103
  %180 = select i1 %101, i1 true, i1 %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  store i32 0, ptr %4, align 4, !tbaa !124
  %182 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %103, ptr %182, align 4, !tbaa !125
  br label %240

183:                                              ; preds = %139, %177, %174, %173
  %184 = phi i1 [ false, %173 ], [ true, %174 ], [ false, %177 ], [ false, %139 ]
  %185 = zext i32 %1 to i64
  %186 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !6
  %188 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %105
  %189 = load i8, ptr %188, align 1, !tbaa !6
  %190 = urem i8 %187, %189
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3211, ptr noundef nonnull @.str.1) #15
  br label %193

193:                                              ; preds = %183, %192
  %194 = trunc i32 %106 to i8
  %195 = trunc i32 %103 to i8
  %196 = urem i8 %194, %195
  %197 = udiv i8 %194, %195
  %198 = icmp eq i8 %196, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3212, ptr noundef nonnull @.str.1) #15
  br label %200

200:                                              ; preds = %193, %199
  %201 = load i8, ptr %186, align 1, !tbaa !6
  %202 = zext i8 %201 to i16
  %203 = shl nuw nsw i16 %202, 3
  %204 = trunc i32 %106 to i16
  %205 = udiv i16 %203, %204
  %206 = zext nneg i16 %205 to i32
  %207 = tail call i32 @mode_for_size(i32 noundef %206, i32 noundef 2, i32 noundef 0) #15
  %208 = tail call i32 @subreg_lowpart_offset(i32 noundef %3, i32 noundef %207) #15
  %209 = sub i32 %2, %208
  %210 = load i8, ptr %186, align 1, !tbaa !6
  %211 = load i8, ptr %188, align 1, !tbaa !6
  %212 = udiv i8 %210, %211
  %213 = icmp ugt i8 %211, %210
  br i1 %213, label %214, label %216

214:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3225, ptr noundef nonnull @.str.1) #15
  %215 = load i8, ptr %188, align 1, !tbaa !6
  br label %216

216:                                              ; preds = %200, %214
  %217 = phi i8 [ %211, %200 ], [ %215, %214 ]
  %218 = zext i8 %217 to i32
  %219 = udiv i32 %2, %218
  %220 = sdiv i32 %209, %218
  %221 = srem i32 %209, %218
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %216
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3231, ptr noundef nonnull @.str.1) #15
  br label %224

224:                                              ; preds = %216, %223
  %225 = urem i8 %212, %197
  %226 = udiv i8 %212, %197
  %227 = icmp eq i8 %225, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3232, ptr noundef nonnull @.str.1) #15
  br label %229

229:                                              ; preds = %224, %228
  %230 = zext i8 %226 to i32
  br i1 %184, label %231, label %236

231:                                              ; preds = %229
  %232 = srem i32 %220, %230
  %233 = icmp eq i32 %232, 0
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 %234, ptr %235, align 4, !tbaa !122
  br label %236

236:                                              ; preds = %229, %231
  %237 = sdiv i32 %219, %230
  %238 = mul nsw i32 %237, %103
  store i32 %238, ptr %4, align 4, !tbaa !124
  %239 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %103, ptr %239, align 4, !tbaa !125
  br label %240

240:                                              ; preds = %236, %181, %161, %145, %97
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_regno_offset(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %6 = load i32, ptr %5, align 4, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @subreg_offset_representable_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.subreg_info, ptr %5, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @simplify_subreg_regno(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !6
  %9 = and i8 %8, -2
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = zext i32 %0 to i64
  %13 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %1, i32 noundef %3, i32 noundef %14) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %4, %11
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %19 = icmp eq i32 %18, 0
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  switch i32 %0, label %25 [
    i32 20, label %40
    i32 6, label %40
    i32 16, label %40
    i32 7, label %40
  ]

24:                                               ; preds = %17
  switch i32 %0, label %25 [
    i32 16, label %40
    i32 7, label %40
  ]

25:                                               ; preds = %23, %24
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %26 = getelementptr inbounds %struct.subreg_info, ptr %5, i64 0, i32 2
  %27 = load i8, ptr %26, align 4, !tbaa !122
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4, !tbaa !124
  %31 = add i32 %30, %0
  %32 = icmp ult i32 %31, 53
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %31, i32 noundef %3) #15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

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
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_nregs_with_regno(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !6
  %11 = load i32, ptr %1, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  call void @subreg_get_info(i32 noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %13, ptr noundef nonnull %3) #14
  %14 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_first_parameter_load(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = alloca %struct.parms_set_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.parms_set_data, ptr %3, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !126
  store i32 0, ptr %3, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
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
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 24
  br i1 %20, label %21, label %48

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
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
  %31 = load ptr, ptr %16, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  br label %34

34:                                               ; preds = %27, %30
  %35 = phi ptr [ %23, %27 ], [ %33, %30 ]
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #14
  %37 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %36) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %16, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef %42) #14
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = or i64 %45, %14
  store i64 %46, ptr %4, align 8, !tbaa !126
  %47 = add nsw i32 %15, 1
  store i32 %47, ptr %3, align 8, !tbaa !128
  br label %48

48:                                               ; preds = %12, %21, %39, %34
  %49 = phi i32 [ %15, %12 ], [ %15, %21 ], [ %47, %39 ], [ %15, %34 ]
  %50 = phi i64 [ %14, %12 ], [ %14, %21 ], [ %46, %39 ], [ %14, %34 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %8, label %12, !llvm.loop !129

54:                                               ; preds = %8, %70
  %55 = phi i32 [ %71, %70 ], [ %49, %8 ]
  %56 = phi ptr [ %72, %70 ], [ %0, %8 ]
  %57 = phi ptr [ %59, %70 ], [ %0, %8 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !6
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
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  call void @note_stores(ptr noundef %67, ptr noundef nonnull @parms_set, ptr noundef nonnull %3) #14
  %68 = load i32, ptr %3, align 8, !tbaa !128
  %69 = icmp eq i32 %55, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %65, %54
  %71 = phi i32 [ %68, %65 ], [ %55, %54 ]
  %72 = phi ptr [ %59, %65 ], [ %56, %54 ]
  %73 = icmp ne i32 %71, 0
  %74 = icmp ne ptr %59, %1
  %75 = and i1 %74, %73
  br i1 %75, label %54, label %76, !llvm.loop !130

76:                                               ; preds = %70, %54, %65, %2, %8, %64, %62
  %77 = phi ptr [ %56, %64 ], [ %56, %62 ], [ %0, %8 ], [ %0, %2 ], [ %72, %70 ], [ %56, %54 ], [ %56, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %77
}

; Function Attrs: optsize
declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @parms_set(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #10 {
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
  %12 = load i64, ptr %11, align 8, !tbaa !126
  %13 = zext nneg i32 %8 to i64
  %14 = shl nuw nsw i64 1, %13
  %15 = and i64 %12, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = xor i64 %14, -1
  %19 = and i64 %12, %18
  store i64 %19, ptr %11, align 8, !tbaa !126
  %20 = load i32, ptr %2, align 8, !tbaa !128
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %2, align 8, !tbaa !128
  br label %22

22:                                               ; preds = %17, %10, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @keep_with_call_p(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %66

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %66, label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #14
  %24 = icmp ult i32 %23, 53
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = zext nneg i32 %23 to i64
  %27 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !6
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = tail call i32 @general_operand(ptr noundef %32, i32 noundef 0) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %30, %25, %22, %15
  %36 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %17, align 8, !tbaa !6
  br label %55

43:                                               ; preds = %35
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %37) #14
  %45 = tail call zeroext i8 @ix86_function_value_regno_p(i32 noundef %44) #15
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr %17, align 8, !tbaa !6
  br i1 %46, label %55, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %47, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #14
  %54 = icmp ugt i32 %53, 52
  br i1 %54, label %66, label %55

55:                                               ; preds = %41, %52, %48, %43
  %56 = phi ptr [ %42, %41 ], [ %47, %52 ], [ %47, %48 ], [ %47, %43 ]
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %0) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = tail call zeroext i8 @keep_with_call_p(ptr noundef nonnull %60) #14, !range !42
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %1, %12, %55, %65, %62, %52, %30
  %67 = phi i8 [ 1, %30 ], [ 1, %52 ], [ 1, %62 ], [ 0, %65 ], [ 0, %1 ], [ 0, %55 ], [ 0, %12 ]
  ret i8 %67
}

; Function Attrs: optsize
declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ix86_function_value_regno_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @label_is_jump_target_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  store ptr %5, ptr %3, align 8, !tbaa !9
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = call zeroext i8 @tablejump_p(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %3) #14, !range !42
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %13, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 21
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load i32, ptr %20, align 8, !tbaa !11
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %10
  %24 = zext nneg i32 %21 to i64
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i64 %29, 1
  %27 = icmp eq i64 %26, %24
  br i1 %27, label %35, label %28, !llvm.loop !131

28:                                               ; preds = %23, %25
  %29 = phi i64 [ 0, %23 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
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
define dso_local i32 @rtx_cost(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %85, label %6

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
  ]

10:                                               ; preds = %6
  store i32 20, ptr %4, align 4, !tbaa !19
  br label %36

11:                                               ; preds = %6
  store i32 0, ptr %4, align 4, !tbaa !19
  br label %36

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %6, %6, %6, %6, %12
  %14 = phi i32 [ 4, %12 ], [ 28, %6 ], [ 28, %6 ], [ 28, %6 ], [ 28, %6 ]
  store i32 %14, ptr %4, align 4, !tbaa !19
  switch i16 %9, label %36 [
    i16 37, label %85
    i16 39, label %15
  ]

15:                                               ; preds = %13
  store i32 0, ptr %4, align 4, !tbaa !19
  %16 = lshr i32 %7, 16
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %17, i32 noundef %22) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %15
  %26 = load i32, ptr %0, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !6
  %32 = lshr i8 %31, 2
  %33 = add nuw nsw i8 %32, 2
  %34 = zext nneg i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 2
  br label %85

36:                                               ; preds = %10, %11, %13
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 60), align 8, !tbaa !132
  %38 = call zeroext i8 %37(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %2) #15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %4, align 4, !tbaa !19
  br label %85

42:                                               ; preds = %36, %15
  %43 = zext nneg i32 %8 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !6
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = zext i8 %47 to i64
  br label %52

52:                                               ; preds = %49, %81
  %53 = phi i64 [ %51, %49 ], [ %54, %81 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds i8, ptr %45, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !6
  switch i8 %56, label %81 [
    i8 101, label %62
    i8 69, label %57
  ]

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = load i32, ptr %59, align 8, !tbaa !11
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %68, label %81

62:                                               ; preds = %52
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = call i32 @rtx_cost(ptr noundef %64, i32 noundef %8, i8 noundef zeroext %2) #14
  %66 = load i32, ptr %4, align 4, !tbaa !19
  %67 = add nsw i32 %66, %65
  store i32 %67, ptr %4, align 4, !tbaa !19
  br label %81

68:                                               ; preds = %57, %68
  %69 = phi i64 [ %76, %68 ], [ 0, %57 ]
  %70 = phi ptr [ %77, %68 ], [ %59, %57 ]
  %71 = getelementptr inbounds %struct.rtvec_def, ptr %70, i64 0, i32 1, i64 %69
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = call i32 @rtx_cost(ptr noundef %72, i32 noundef %8, i8 noundef zeroext %2) #14
  %74 = load i32, ptr %4, align 4, !tbaa !19
  %75 = add nsw i32 %74, %73
  store i32 %75, ptr %4, align 4, !tbaa !19
  %76 = add nuw nsw i64 %69, 1
  %77 = load ptr, ptr %58, align 8, !tbaa !6
  %78 = load i32, ptr %77, align 8, !tbaa !11
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %68, label %81, !llvm.loop !133

81:                                               ; preds = %68, %57, %52, %62
  %82 = icmp sgt i64 %53, 1
  br i1 %82, label %52, label %83, !llvm.loop !134

83:                                               ; preds = %81, %42
  %84 = load i32, ptr %4, align 4, !tbaa !19
  br label %85

85:                                               ; preds = %13, %3, %83, %40, %25
  %86 = phi i32 [ %41, %40 ], [ %84, %83 ], [ %35, %25 ], [ 0, %3 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %86
}

; Function Attrs: optsize
declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @address_cost(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %0, i8 noundef zeroext %2) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 61), align 8, !tbaa !135
  %9 = tail call i32 %8(ptr noundef %0, i8 noundef zeroext %3) #15
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi i32 [ %9, %7 ], [ 1000, %4 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_address_cost(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = tail call i32 @rtx_cost(ptr noundef %0, i32 noundef 43, i8 noundef zeroext %1) #14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @nonzero_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i64 noundef 0) #14
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @cached_nonzero_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #2 {
  %6 = icmp eq ptr %0, %2
  %7 = icmp eq i32 %1, %3
  %8 = and i1 %6, %7
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %66

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %25, label %28

23:                                               ; preds = %5, %66, %63, %44, %25
  %24 = phi i64 [ %27, %25 ], [ %46, %44 ], [ %65, %63 ], [ %67, %66 ], [ %4, %5 ]
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
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %21, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = icmp eq ptr %21, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36
  %45 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %21, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %46 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %21, i32 noundef %1, i64 noundef %45) #14
  br label %23

47:                                               ; preds = %40, %28
  %48 = load i32, ptr %21, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !19
  %53 = and i32 %52, -2
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = icmp eq ptr %19, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
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
define internal fastcc i64 @nonzero_bits1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #2 {
  %6 = alloca i64, align 8
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !6
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !6
  switch i8 %19, label %20 [
    i8 8, label %412
    i8 9, label %412
    i8 11, label %412
    i8 17, label %412
  ]

20:                                               ; preds = %5
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %22 = load i8, ptr %21, align 1, !tbaa !6
  switch i8 %22, label %23 [
    i8 8, label %412
    i8 9, label %412
    i8 11, label %412
    i8 17, label %412
  ]

23:                                               ; preds = %20
  %24 = add i8 %19, -12
  %25 = icmp ult i8 %24, 5
  %26 = add i8 %22, -12
  %27 = icmp ult i8 %26, 5
  %28 = or i1 %25, %27
  br i1 %28, label %412, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %31 = load i8, ptr %30, align 1, !tbaa !6
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 3
  %34 = icmp ugt i32 %33, %13
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %37 = load i64, ptr %36, align 8, !tbaa !41
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %33, %35 ], [ %13, %29 ]
  %40 = phi i64 [ %37, %35 ], [ %9, %29 ]
  %41 = phi i32 [ %16, %35 ], [ %1, %29 ]
  %42 = icmp ugt i32 %39, 64
  br i1 %42, label %412, label %43

43:                                               ; preds = %38
  %44 = icmp ne i32 %16, 0
  %45 = icmp ne i32 %16, %41
  %46 = and i1 %44, %45
  %47 = icmp ult i8 %31, 5
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = zext i32 %41 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !6
  %53 = icmp ugt i8 %52, %31
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %56 = load i32, ptr %0, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !41
  %62 = xor i64 %61, -1
  %63 = or i64 %55, %62
  %64 = and i64 %40, %63
  br label %412

65:                                               ; preds = %49, %43
  %66 = trunc i32 %14 to i16
  switch i16 %66, label %412 [
    i16 37, label %67
    i16 30, label %112
    i16 47, label %400
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
    i16 116, label %398
    i16 118, label %399
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
    i16 120, label %268
    i16 39, label %282
    i16 67, label %328
    i16 68, label %328
    i16 65, label %328
    i16 66, label %328
    i16 114, label %391
    i16 117, label %391
    i16 115, label %397
  ]

67:                                               ; preds = %65
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %69 = icmp eq ptr %68, %0
  %70 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %71 = icmp eq ptr %70, %0
  %72 = select i1 %69, i1 true, i1 %71
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %74 = icmp eq ptr %73, %0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %67
  %77 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !136
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !6
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %76
  %84 = lshr i8 %81, 3
  %85 = zext nneg i8 %84 to i64
  br i1 %69, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32, ptr @target_flags, align 4, !tbaa !19
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
  store i64 %100, ptr %6, align 8, !tbaa !41
  %101 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 2), align 8, !tbaa !145
  %102 = call ptr %101(ptr noundef nonnull %0, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #15
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i64, ptr %6, align 8, !tbaa !41
  br label %110

106:                                              ; preds = %99
  %107 = call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %102, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %108 = load i64, ptr %6, align 8, !tbaa !41
  %109 = and i64 %108, %107
  br label %110

110:                                              ; preds = %104, %106
  %111 = phi i64 [ %105, %104 ], [ %109, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %412

112:                                              ; preds = %65
  %113 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !6
  br label %412

115:                                              ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  %116 = icmp eq i8 %19, 2
  %117 = select i1 %116, i64 1, i64 %40
  br label %412

118:                                              ; preds = %65
  %119 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %120, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %122 = and i64 %121, %40
  br label %412

123:                                              ; preds = %65
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %125, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %127 = and i64 %126, %40
  %128 = load ptr, ptr %124, align 8, !tbaa !6
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %412, label %133

133:                                              ; preds = %123
  %134 = zext nneg i32 %131 to i64
  %135 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !41
  %137 = and i64 %136, %127
  br label %412

138:                                              ; preds = %65
  %139 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %140, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %142 = load ptr, ptr %139, align 8, !tbaa !6
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 16
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %138
  %148 = zext nneg i32 %145 to i64
  %149 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !41
  %151 = and i64 %150, %141
  %152 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %153 = load i8, ptr %152, align 1, !tbaa !6
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
  br label %412

168:                                              ; preds = %65
  %169 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !6
  %171 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %170, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %172 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %173, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %175 = and i64 %171, %174
  %176 = and i64 %175, %40
  br label %412

177:                                              ; preds = %65, %65, %65, %65, %65, %65
  %178 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  %180 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %179, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %181 = and i64 %180, %40
  %182 = icmp eq i64 %181, %40
  br i1 %182, label %412, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %185, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %187 = or i64 %186, %180
  %188 = and i64 %187, %40
  br label %412

189:                                              ; preds = %65, %65, %65, %65, %65, %65, %65
  %190 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %191, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %193 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !6
  %195 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %194, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %196 = load i32, ptr %0, align 8
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !6
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
  ]

219:                                              ; preds = %189
  %220 = tail call i32 @llvm.smax.i32(i32 %206, i32 %208)
  %221 = add nsw i32 %220, 1
  %222 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %253

223:                                              ; preds = %189
  %224 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %253

225:                                              ; preds = %189
  %226 = add nsw i32 %208, %206
  %227 = add nsw i32 %214, %211
  br label %253

228:                                              ; preds = %189
  %229 = icmp eq i32 %208, 0
  br i1 %229, label %253, label %230

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
  br i1 %239, label %253, label %240

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
  br i1 %248, label %253, label %249

249:                                              ; preds = %247
  %250 = tail call i32 @llvm.smin.i32(i32 %206, i32 %208)
  %251 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %253

252:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3984, ptr noundef nonnull @.str.1) #15
  br label %253

253:                                              ; preds = %235, %230, %247, %238, %228, %252, %249, %240, %225, %223, %219
  %254 = phi i32 [ %39, %252 ], [ %39, %247 ], [ %250, %249 ], [ %39, %238 ], [ %245, %240 ], [ %39, %228 ], [ %226, %225 ], [ %39, %223 ], [ %221, %219 ], [ %234, %230 ], [ %237, %235 ]
  %255 = phi i32 [ 0, %252 ], [ 0, %247 ], [ %251, %249 ], [ 0, %238 ], [ %246, %240 ], [ 0, %228 ], [ %227, %225 ], [ %224, %223 ], [ %222, %219 ], [ 0, %230 ], [ 0, %235 ]
  %256 = freeze i32 %255
  %257 = icmp ult i32 %254, %39
  %258 = zext nneg i32 %254 to i64
  %259 = shl nsw i64 -1, %258
  %260 = xor i64 %259, -1
  %261 = select i1 %257, i64 %260, i64 -1
  %262 = icmp sgt i32 %256, 0
  %263 = zext nneg i32 %256 to i64
  %264 = shl nsw i64 -1, %263
  %265 = select i1 %262, i64 %264, i64 -1
  %266 = and i64 %261, %265
  %267 = and i64 %266, %40
  br label %412

268:                                              ; preds = %65
  %269 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !6
  %271 = load i32, ptr %270, align 8
  %272 = and i32 %271, 65535
  %273 = icmp eq i32 %272, 30
  br i1 %273, label %274, label %412

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1
  %276 = load i64, ptr %275, align 8, !tbaa !6
  %277 = icmp slt i64 %276, 64
  br i1 %277, label %278, label %412

278:                                              ; preds = %274
  %279 = shl nsw i64 -1, %276
  %280 = xor i64 %279, -1
  %281 = and i64 %40, %280
  br label %412

282:                                              ; preds = %65
  %283 = and i32 %14, 469762048
  %284 = icmp eq i32 %283, 335544320
  br i1 %284, label %285, label %292

285:                                              ; preds = %282
  %286 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %287 = load i64, ptr %286, align 8, !tbaa !41
  %288 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  %290 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %289, i32 noundef %16, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %291 = and i64 %290, %287
  br label %292

292:                                              ; preds = %285, %282
  %293 = phi i64 [ %291, %285 ], [ %40, %282 ]
  %294 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !6
  %296 = load i32, ptr %295, align 8
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !6
  %302 = icmp ult i8 %301, 5
  br i1 %302, label %303, label %412

303:                                              ; preds = %292
  %304 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %295, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %305 = and i64 %304, %293
  %306 = load i32, ptr %0, align 8
  %307 = lshr i32 %306, 16
  %308 = and i32 %307, 255
  %309 = zext nneg i32 %308 to i64
  %310 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !6
  %312 = load ptr, ptr %294, align 8, !tbaa !6
  %313 = load i32, ptr %312, align 8
  %314 = lshr i32 %313, 16
  %315 = and i32 %314, 255
  %316 = zext nneg i32 %315 to i64
  %317 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !6
  %319 = icmp ugt i8 %311, %318
  br i1 %319, label %320, label %412

320:                                              ; preds = %303
  %321 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %309
  %322 = load i64, ptr %321, align 8, !tbaa !41
  %323 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %316
  %324 = load i64, ptr %323, align 8, !tbaa !41
  %325 = xor i64 %324, -1
  %326 = and i64 %322, %325
  %327 = or i64 %326, %305
  br label %412

328:                                              ; preds = %65, %65, %65, %65
  %329 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %330 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !6
  %332 = load i32, ptr %331, align 8
  %333 = and i32 %332, 65535
  %334 = icmp eq i32 %333, 30
  br i1 %334, label %335, label %412

335:                                              ; preds = %328
  %336 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1
  %337 = load i64, ptr %336, align 8, !tbaa !6
  %338 = icmp ult i64 %337, 64
  br i1 %338, label %339, label %412

339:                                              ; preds = %335
  %340 = zext i8 %31 to i16
  %341 = shl nuw nsw i16 %340, 3
  %342 = zext nneg i16 %341 to i64
  %343 = icmp ult i64 %337, %342
  br i1 %343, label %344, label %412

344:                                              ; preds = %339
  %345 = zext nneg i16 %341 to i32
  %346 = trunc i64 %337 to i32
  %347 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %348 = load i64, ptr %347, align 8, !tbaa !41
  %349 = load ptr, ptr %329, align 8, !tbaa !6
  %350 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %349, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %351 = and i64 %350, %348
  %352 = icmp ugt i32 %39, %345
  %353 = xor i64 %348, -1
  %354 = and i64 %40, %353
  %355 = and i64 %354, %350
  %356 = select i1 %352, i64 %355, i64 0
  switch i16 %66, label %376 [
    i16 68, label %357
    i16 67, label %359
    i16 65, label %374
  ]

357:                                              ; preds = %344
  %358 = lshr i64 %351, %337
  br label %387

359:                                              ; preds = %344
  %360 = lshr i64 %351, %337
  %361 = xor i32 %346, -1
  %362 = add nsw i32 %361, %345
  %363 = zext nneg i32 %362 to i64
  %364 = shl nuw i64 1, %363
  %365 = and i64 %360, %364
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %387, label %367

367:                                              ; preds = %359
  %368 = shl nsw i64 -1, %337
  %369 = xor i64 %368, -1
  %370 = sub nsw i32 %345, %346
  %371 = zext nneg i32 %370 to i64
  %372 = shl i64 %369, %371
  %373 = or i64 %360, %372
  br label %387

374:                                              ; preds = %344
  %375 = shl i64 %351, %337
  br label %387

376:                                              ; preds = %344
  %377 = trunc i64 %337 to i16
  %378 = urem i16 %377, %341
  %379 = zext nneg i16 %378 to i32
  %380 = zext nneg i16 %378 to i64
  %381 = shl i64 %351, %380
  %382 = sub nsw i32 %345, %379
  %383 = zext nneg i32 %382 to i64
  %384 = lshr i64 %351, %383
  %385 = or i64 %384, %381
  %386 = and i64 %385, %348
  br label %387

387:                                              ; preds = %367, %359, %376, %374, %357
  %388 = phi i64 [ %358, %357 ], [ %373, %367 ], [ %360, %359 ], [ %375, %374 ], [ %386, %376 ]
  %389 = or i64 %388, %356
  %390 = and i64 %389, %40
  br label %412

391:                                              ; preds = %65, %65
  %392 = zext nneg i32 %39 to i64
  %393 = tail call i32 @floor_log2(i64 noundef %392) #15
  %394 = zext nneg i32 %393 to i64
  %395 = shl i64 2, %394
  %396 = add nsw i64 %395, -1
  br label %412

397:                                              ; preds = %65
  br label %412

398:                                              ; preds = %65
  br label %412

399:                                              ; preds = %65
  br label %412

400:                                              ; preds = %65
  %401 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !6
  %403 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %402, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %404 = and i64 %403, %40
  %405 = icmp eq i64 %404, %40
  br i1 %405, label %412, label %406

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %408 = load ptr, ptr %407, align 8, !tbaa !6
  %409 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %408, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %410 = or i64 %409, %403
  %411 = and i64 %410, %40
  br label %412

412:                                              ; preds = %253, %115, %23, %118, %165, %168, %391, %397, %398, %399, %133, %123, %278, %274, %268, %303, %320, %292, %387, %339, %335, %328, %65, %183, %177, %406, %400, %38, %5, %5, %5, %5, %20, %20, %20, %20, %112, %110, %54
  %413 = phi i64 [ %64, %54 ], [ %114, %112 ], [ %111, %110 ], [ %9, %23 ], [ %9, %20 ], [ %9, %20 ], [ %9, %20 ], [ %9, %20 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %40, %38 ], [ -1, %398 ], [ -1, %397 ], [ %396, %391 ], [ %390, %387 ], [ %40, %339 ], [ %40, %335 ], [ %40, %328 ], [ %327, %320 ], [ %305, %303 ], [ %293, %292 ], [ %281, %278 ], [ %40, %274 ], [ %40, %268 ], [ %176, %168 ], [ %167, %165 ], [ %137, %133 ], [ %127, %123 ], [ %122, %118 ], [ 1, %399 ], [ %117, %115 ], [ %188, %183 ], [ %40, %177 ], [ %411, %406 ], [ %40, %400 ], [ %267, %253 ], [ %40, %65 ]
  ret i64 %413
}

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @num_sign_bit_copies(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0) #14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cached_num_sign_bit_copies(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = icmp eq ptr %0, %2
  %7 = icmp eq i32 %1, %3
  %8 = and i1 %6, %7
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %66

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %25, label %28

23:                                               ; preds = %5, %66, %63, %44, %25
  %24 = phi i32 [ %27, %25 ], [ %46, %44 ], [ %65, %63 ], [ %67, %66 ], [ %4, %5 ]
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
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %21, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = icmp eq ptr %21, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36
  %45 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %21, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %46 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %21, i32 noundef %1, i32 noundef %45) #14
  br label %23

47:                                               ; preds = %40, %28
  %48 = load i32, ptr %21, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !19
  %53 = and i32 %52, -2
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = icmp eq ptr %19, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
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
define internal fastcc i32 @num_sign_bit_copies1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !6
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = icmp eq i32 %1, 0
  %15 = lshr i32 %7, 16
  %16 = and i32 %15, 255
  %17 = select i1 %14, i32 %16, i32 %1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %508, label %19

19:                                               ; preds = %5
  %20 = zext i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !6
  %23 = add i8 %22, -8
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %495, label %25

25:                                               ; preds = %495, %19
  %26 = zext nneg i32 %16 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !6
  %29 = add i8 %28, -8
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %500, label %31

31:                                               ; preds = %25
  %32 = add i8 %22, -12
  %33 = icmp ult i8 %32, 5
  br i1 %33, label %508, label %34

34:                                               ; preds = %500, %31
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %36 = load i8, ptr %35, align 1, !tbaa !6
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 3
  %39 = icmp ult i32 %13, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %42 = load i32, ptr %0, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !6
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %12, %48
  %50 = shl nsw i32 %49, 3
  %51 = add i32 %50, %41
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 1)
  br label %508

53:                                               ; preds = %34
  %54 = icmp ne i32 %16, 0
  %55 = icmp ugt i32 %13, %38
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %508, label %57

57:                                               ; preds = %53
  %58 = trunc i32 %7 to i16
  switch i16 %58, label %478 [
    i16 37, label %59
    i16 91, label %474
    i16 30, label %72
    i16 39, label %94
    i16 119, label %135
    i16 98, label %148
    i16 100, label %162
    i16 64, label %178
    i16 66, label %182
    i16 69, label %182
    i16 51, label %213
    i16 62, label %236
    i16 61, label %236
    i16 63, label %236
    i16 70, label %236
    i16 71, label %236
    i16 72, label %236
    i16 73, label %236
    i16 49, label %280
    i16 50, label %280
    i16 52, label %315
    i16 59, label %345
    i16 60, label %359
    i16 55, label %373
    i16 58, label %391
    i16 67, label %408
    i16 65, label %438
    i16 47, label %466
    i16 81, label %474
    i16 80, label %474
    i16 82, label %474
    i16 83, label %474
    i16 84, label %474
    i16 85, label %474
    i16 92, label %474
    i16 97, label %474
    i16 93, label %474
    i16 94, label %474
    i16 95, label %474
    i16 96, label %474
    i16 86, label %474
    i16 87, label %474
    i16 88, label %474
    i16 89, label %474
    i16 90, label %474
  ]

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 1, ptr %6, align 4, !tbaa !19
  %60 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 3), align 8, !tbaa !147
  %61 = call ptr %60(ptr noundef nonnull %0, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %61, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %64, %63 ], [ 1, %59 ]
  %67 = icmp ult i32 %66, 2
  %68 = load i32, ptr %6, align 4
  %69 = icmp ult i32 %68, 2
  %70 = select i1 %67, i1 %69, i1 false
  %71 = call i32 @llvm.umax.i32(i32 %66, i32 %68)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %70, label %478, label %508

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %76 = load i64, ptr %75, align 8, !tbaa !41
  %77 = and i64 %76, %74
  %78 = icmp ult i8 %11, 9
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = add nsw i32 %13, -1
  %81 = zext nneg i32 %80 to i64
  %82 = shl nuw i64 1, %81
  %83 = and i64 %77, %82
  %84 = icmp eq i64 %83, 0
  %85 = select i1 %84, i64 0, i64 %76
  %86 = xor i64 %85, %77
  br label %87

87:                                               ; preds = %79, %72
  %88 = phi i64 [ %77, %72 ], [ %86, %79 ]
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %508, label %90

90:                                               ; preds = %87
  %91 = tail call i32 @floor_log2(i64 noundef %88) #15
  %92 = xor i32 %91, -1
  %93 = add i32 %13, %92
  br label %508

94:                                               ; preds = %57
  %95 = and i32 %7, 469762048
  %96 = icmp eq i32 %95, 268435456
  %97 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  br i1 %96, label %99, label %113

99:                                               ; preds = %94
  %100 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %98, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %101 = load i32, ptr %0, align 8
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !6
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %12, %107
  %109 = shl nsw i32 %108, 3
  %110 = icmp slt i32 %109, %100
  %111 = or disjoint i32 %109, 1
  %112 = select i1 %110, i32 %100, i32 %111
  br label %508

113:                                              ; preds = %94
  %114 = load i32, ptr %98, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !6
  %120 = icmp ugt i8 %11, %119
  br i1 %120, label %478, label %121

121:                                              ; preds = %113
  %122 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %98, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %123 = load ptr, ptr %97, align 8, !tbaa !6
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !6
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 %12, %130
  %132 = shl nsw i32 %131, 3
  %133 = add i32 %132, %122
  %134 = tail call i32 @llvm.smax.i32(i32 %133, i32 1)
  br label %508

135:                                              ; preds = %57
  %136 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 30
  br i1 %140, label %141, label %478

141:                                              ; preds = %135
  %142 = zext nneg i32 %13 to i64
  %143 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !6
  %145 = sub nsw i64 %142, %144
  %146 = tail call i64 @llvm.smax.i64(i64 %145, i64 1)
  %147 = trunc i64 %146 to i32
  br label %508

148:                                              ; preds = %57
  %149 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !6
  %157 = zext i8 %156 to i32
  %158 = sub nsw i32 %12, %157
  %159 = shl nsw i32 %158, 3
  %160 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %150, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %161 = add i32 %159, %160
  br label %508

162:                                              ; preds = %57
  %163 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !6
  %165 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %164, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %166 = load ptr, ptr %163, align 8, !tbaa !6
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !6
  %173 = zext i8 %172 to i32
  %174 = sub nsw i32 %12, %173
  %175 = shl nsw i32 %174, 3
  %176 = add i32 %175, %165
  %177 = tail call i32 @llvm.smax.i32(i32 %176, i32 1)
  br label %508

178:                                              ; preds = %57
  %179 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  %181 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %180, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %508

182:                                              ; preds = %57, %57
  %183 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %184 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 30
  br i1 %188, label %189, label %478

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %191 = load i64, ptr %190, align 8, !tbaa !6
  %192 = icmp sgt i64 %191, -1
  br i1 %192, label %193, label %478

193:                                              ; preds = %189
  %194 = zext nneg i32 %13 to i64
  %195 = icmp ult i64 %191, %194
  br i1 %195, label %196, label %478

196:                                              ; preds = %193
  %197 = load ptr, ptr %183, align 8, !tbaa !6
  %198 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %197, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %199 = sext i32 %198 to i64
  %200 = icmp eq i32 %8, 66
  %201 = load ptr, ptr %184, align 8, !tbaa !6
  %202 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !6
  br i1 %200, label %204, label %206

204:                                              ; preds = %196
  %205 = icmp slt i64 %203, %199
  br i1 %205, label %209, label %508

206:                                              ; preds = %196
  %207 = sub nsw i64 %194, %203
  %208 = icmp slt i64 %207, %199
  br i1 %208, label %209, label %508

209:                                              ; preds = %206, %204
  %210 = phi i64 [ %203, %204 ], [ %207, %206 ]
  %211 = trunc i64 %210 to i32
  %212 = sub i32 %198, %211
  br label %508

213:                                              ; preds = %57
  %214 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %215, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %217 = icmp ugt i8 %11, 8
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = icmp sgt i32 %216, 1
  %220 = add nsw i32 %216, -1
  %221 = select i1 %219, i32 %220, i32 1
  br label %508

222:                                              ; preds = %213
  %223 = load ptr, ptr %214, align 8, !tbaa !6
  %224 = tail call i64 @nonzero_bits(ptr noundef %223, i32 noundef %17) #14
  %225 = icmp eq i64 %224, 1
  br i1 %225, label %508, label %226

226:                                              ; preds = %222
  %227 = icmp sgt i32 %216, 1
  br i1 %227, label %228, label %508

228:                                              ; preds = %226
  %229 = add nsw i32 %13, -1
  %230 = zext nneg i32 %229 to i64
  %231 = shl nuw i64 1, %230
  %232 = and i64 %224, %231
  %233 = icmp ne i64 %232, 0
  %234 = sext i1 %233 to i32
  %235 = add nsw i32 %216, %234
  br label %508

236:                                              ; preds = %57, %57, %57, %57, %57, %57, %57
  %237 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !6
  %239 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %238, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %240 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %241, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %243 = icmp eq i32 %8, 61
  %244 = icmp sgt i32 %242, 1
  %245 = select i1 %243, i1 %244, i1 false
  %246 = icmp ult i8 %11, 9
  %247 = select i1 %245, i1 %246, i1 false
  br i1 %247, label %248, label %261

248:                                              ; preds = %236
  %249 = load ptr, ptr %240, align 8, !tbaa !6
  %250 = load i32, ptr %249, align 8
  %251 = and i32 %250, 65535
  %252 = icmp eq i32 %251, 30
  br i1 %252, label %253, label %278

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1
  %255 = load i64, ptr %254, align 8, !tbaa !6
  %256 = add nsw i32 %13, -1
  %257 = zext nneg i32 %256 to i64
  %258 = shl nuw i64 1, %257
  %259 = and i64 %255, %258
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %508, label %278

261:                                              ; preds = %236
  %262 = icmp eq i32 %8, 62
  %263 = select i1 %262, i1 %244, i1 false
  %264 = select i1 %263, i1 %246, i1 false
  br i1 %264, label %265, label %278

265:                                              ; preds = %261
  %266 = load ptr, ptr %240, align 8, !tbaa !6
  %267 = load i32, ptr %266, align 8
  %268 = and i32 %267, 65535
  %269 = icmp eq i32 %268, 30
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 0, i32 1
  %272 = load i64, ptr %271, align 8, !tbaa !6
  %273 = add nsw i32 %13, -1
  %274 = zext nneg i32 %273 to i64
  %275 = shl nuw i64 1, %274
  %276 = and i64 %272, %275
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %508

278:                                              ; preds = %248, %253, %270, %265, %261
  %279 = tail call i32 @llvm.smin.i32(i32 %239, i32 %242)
  br label %508

280:                                              ; preds = %57, %57
  %281 = icmp eq i32 %8, 49
  br i1 %281, label %282, label %304

282:                                              ; preds = %280
  %283 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !6
  %285 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !9
  %286 = icmp eq ptr %284, %285
  %287 = icmp ult i8 %11, 9
  %288 = select i1 %286, i1 %287, i1 false
  br i1 %288, label %289, label %304

289:                                              ; preds = %282
  %290 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !6
  %292 = tail call i64 @nonzero_bits(ptr noundef %291, i32 noundef %17) #14
  %293 = add nsw i32 %13, -1
  %294 = zext nneg i32 %293 to i64
  %295 = shl nuw i64 1, %294
  %296 = and i64 %292, %295
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %289
  %299 = icmp ult i64 %292, 2
  br i1 %299, label %508, label %300

300:                                              ; preds = %298
  %301 = tail call i32 @floor_log2(i64 noundef %292) #15
  %302 = xor i32 %301, -1
  %303 = add i32 %13, %302
  br label %508

304:                                              ; preds = %289, %282, %280
  %305 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !6
  %307 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %306, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %308 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !6
  %310 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %309, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %311 = tail call i32 @llvm.smin.i32(i32 %307, i32 %310)
  %312 = add nsw i32 %311, -1
  %313 = icmp sgt i32 %311, 1
  %314 = select i1 %313, i32 %312, i32 1
  br label %508

315:                                              ; preds = %57
  %316 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !6
  %318 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %317, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %319 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %320 = load ptr, ptr %319, align 8, !tbaa !6
  %321 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %320, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %322 = sub i32 %321, %13
  %323 = add i32 %322, %318
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %342

325:                                              ; preds = %315
  %326 = icmp ugt i8 %11, 8
  br i1 %326, label %340, label %327

327:                                              ; preds = %325
  %328 = load ptr, ptr %316, align 8, !tbaa !6
  %329 = tail call i64 @nonzero_bits(ptr noundef %328, i32 noundef %17) #14
  %330 = add nsw i32 %13, -1
  %331 = zext nneg i32 %330 to i64
  %332 = shl nuw i64 1, %331
  %333 = and i64 %329, %332
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %342, label %335

335:                                              ; preds = %327
  %336 = load ptr, ptr %319, align 8, !tbaa !6
  %337 = tail call i64 @nonzero_bits(ptr noundef %336, i32 noundef %17) #14
  %338 = and i64 %337, %332
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %335, %325
  %341 = add nsw i32 %323, -1
  br label %342

342:                                              ; preds = %340, %335, %327, %315
  %343 = phi i32 [ %341, %340 ], [ %323, %335 ], [ %323, %327 ], [ %323, %315 ]
  %344 = tail call i32 @llvm.smax.i32(i32 %343, i32 1)
  br label %508

345:                                              ; preds = %57
  %346 = icmp ugt i8 %11, 8
  br i1 %346, label %508, label %347

347:                                              ; preds = %345
  %348 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !6
  %350 = tail call i64 @nonzero_bits(ptr noundef %349, i32 noundef %17) #14
  %351 = add nsw i32 %13, -1
  %352 = zext nneg i32 %351 to i64
  %353 = shl nuw i64 1, %352
  %354 = and i64 %350, %353
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %508

356:                                              ; preds = %347
  %357 = load ptr, ptr %348, align 8, !tbaa !6
  %358 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %357, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %508

359:                                              ; preds = %57
  %360 = icmp ugt i8 %11, 8
  br i1 %360, label %508, label %361

361:                                              ; preds = %359
  %362 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  %364 = tail call i64 @nonzero_bits(ptr noundef %363, i32 noundef %17) #14
  %365 = add nsw i32 %13, -1
  %366 = zext nneg i32 %365 to i64
  %367 = shl nuw i64 1, %366
  %368 = and i64 %364, %367
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %508

370:                                              ; preds = %361
  %371 = load ptr, ptr %362, align 8, !tbaa !6
  %372 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %371, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %508

373:                                              ; preds = %57
  %374 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !6
  %376 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %375, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %377 = icmp sgt i32 %376, 1
  br i1 %377, label %378, label %508

378:                                              ; preds = %373
  %379 = icmp ugt i8 %11, 8
  br i1 %379, label %389, label %380

380:                                              ; preds = %378
  %381 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !6
  %383 = tail call i64 @nonzero_bits(ptr noundef %382, i32 noundef %17) #14
  %384 = add nsw i32 %13, -1
  %385 = zext nneg i32 %384 to i64
  %386 = shl nuw i64 1, %385
  %387 = and i64 %383, %386
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %508, label %389

389:                                              ; preds = %380, %378
  %390 = add nsw i32 %376, -1
  br label %508

391:                                              ; preds = %57
  %392 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %393 = load ptr, ptr %392, align 8, !tbaa !6
  %394 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %393, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %395 = icmp sgt i32 %394, 1
  br i1 %395, label %396, label %508

396:                                              ; preds = %391
  %397 = icmp ugt i8 %11, 8
  br i1 %397, label %406, label %398

398:                                              ; preds = %396
  %399 = load ptr, ptr %392, align 8, !tbaa !6
  %400 = tail call i64 @nonzero_bits(ptr noundef %399, i32 noundef %17) #14
  %401 = add nsw i32 %13, -1
  %402 = zext nneg i32 %401 to i64
  %403 = shl nuw i64 1, %402
  %404 = and i64 %400, %403
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %508, label %406

406:                                              ; preds = %398, %396
  %407 = add nsw i32 %394, -1
  br label %508

408:                                              ; preds = %57
  %409 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !6
  %411 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %410, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %412 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %413 = load ptr, ptr %412, align 8, !tbaa !6
  %414 = load i32, ptr %413, align 8
  %415 = and i32 %414, 65535
  %416 = icmp eq i32 %415, 30
  br i1 %416, label %417, label %508

417:                                              ; preds = %408
  %418 = getelementptr inbounds %struct.rtx_def, ptr %413, i64 0, i32 1
  %419 = load i64, ptr %418, align 8, !tbaa !6
  %420 = icmp sgt i64 %419, 0
  br i1 %420, label %421, label %508

421:                                              ; preds = %417
  %422 = load i32, ptr %0, align 8
  %423 = lshr i32 %422, 16
  %424 = and i32 %423, 255
  %425 = zext nneg i32 %424 to i64
  %426 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !6
  %428 = zext i8 %427 to i64
  %429 = shl nuw nsw i64 %428, 3
  %430 = icmp ult i64 %419, %429
  br i1 %430, label %431, label %508

431:                                              ; preds = %421
  %432 = zext nneg i32 %13 to i64
  %433 = sext i32 %411 to i64
  %434 = add nsw i64 %419, %433
  %435 = icmp sgt i64 %434, %432
  %436 = trunc i64 %434 to i32
  %437 = select i1 %435, i32 %13, i32 %436
  br label %508

438:                                              ; preds = %57
  %439 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %440 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %441 = load ptr, ptr %440, align 8, !tbaa !6
  %442 = load i32, ptr %441, align 8
  %443 = and i32 %442, 65535
  %444 = icmp eq i32 %443, 30
  br i1 %444, label %445, label %508

445:                                              ; preds = %438
  %446 = getelementptr inbounds %struct.rtx_def, ptr %441, i64 0, i32 1
  %447 = load i64, ptr %446, align 8, !tbaa !6
  %448 = icmp sgt i64 %447, -1
  %449 = zext nneg i32 %13 to i64
  %450 = icmp slt i64 %447, %449
  %451 = select i1 %448, i1 %450, i1 false
  %452 = zext i8 %36 to i64
  %453 = shl nuw nsw i64 %452, 3
  %454 = icmp ult i64 %447, %453
  %455 = select i1 %451, i1 %454, i1 false
  br i1 %455, label %456, label %508

456:                                              ; preds = %445
  %457 = load ptr, ptr %439, align 8, !tbaa !6
  %458 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %457, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %459 = sext i32 %458 to i64
  %460 = load ptr, ptr %440, align 8, !tbaa !6
  %461 = getelementptr inbounds %struct.rtx_def, ptr %460, i64 0, i32 1
  %462 = load i64, ptr %461, align 8, !tbaa !6
  %463 = sub nsw i64 %459, %462
  %464 = tail call i64 @llvm.smax.i64(i64 %463, i64 1)
  %465 = trunc i64 %464 to i32
  br label %508

466:                                              ; preds = %57
  %467 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %468 = load ptr, ptr %467, align 8, !tbaa !6
  %469 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %468, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %470 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %471 = load ptr, ptr %470, align 8, !tbaa !6
  %472 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %471, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %473 = tail call i32 @llvm.smin.i32(i32 %469, i32 %472)
  br label %508

474:                                              ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57
  %475 = tail call i32 @floor_log2(i64 noundef 1) #15
  %476 = xor i32 %475, -1
  %477 = add i32 %13, %476
  br label %508

478:                                              ; preds = %57, %182, %189, %193, %135, %113, %65
  %479 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %480 = load i8, ptr %479, align 1, !tbaa !6
  %481 = zext i8 %480 to i32
  %482 = shl nuw nsw i32 %481, 3
  %483 = icmp ugt i8 %480, 8
  br i1 %483, label %508, label %484

484:                                              ; preds = %478
  %485 = call i64 @nonzero_bits(ptr noundef nonnull %0, i32 noundef %17) #14
  %486 = add nsw i32 %482, -1
  %487 = zext nneg i32 %486 to i64
  %488 = shl nuw i64 1, %487
  %489 = and i64 %485, %488
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %508

491:                                              ; preds = %484
  %492 = call i32 @floor_log2(i64 noundef %485) #15
  %493 = xor i32 %492, -1
  %494 = add i32 %482, %493
  br label %508

495:                                              ; preds = %19
  %496 = zext nneg i8 %23 to i16
  %497 = lshr i16 523, %496
  %498 = and i16 %497, 1
  %499 = icmp eq i16 %498, 0
  br i1 %499, label %25, label %508

500:                                              ; preds = %25
  %501 = zext nneg i8 %29 to i16
  %502 = lshr i16 1019, %501
  %503 = and i16 %502, 1
  %504 = icmp ne i16 %503, 0
  %505 = add i8 %22, -12
  %506 = icmp ult i8 %505, 5
  %507 = or i1 %504, %506
  br i1 %507, label %508, label %34

508:                                              ; preds = %500, %495, %206, %228, %31, %491, %484, %478, %438, %445, %408, %417, %421, %431, %391, %398, %406, %373, %380, %389, %361, %359, %347, %345, %300, %298, %270, %253, %226, %222, %209, %204, %90, %87, %53, %5, %65, %474, %466, %456, %370, %356, %342, %304, %278, %218, %178, %162, %148, %141, %121, %99, %40
  %509 = phi i32 [ %52, %40 ], [ %473, %466 ], [ %465, %456 ], [ %372, %370 ], [ %358, %356 ], [ %344, %342 ], [ %314, %304 ], [ %279, %278 ], [ %221, %218 ], [ %181, %178 ], [ %177, %162 ], [ %161, %148 ], [ %147, %141 ], [ %134, %121 ], [ %112, %99 ], [ %477, %474 ], [ %71, %65 ], [ 1, %31 ], [ 1, %5 ], [ 1, %53 ], [ %93, %90 ], [ %13, %87 ], [ %212, %209 ], [ 1, %204 ], [ %13, %222 ], [ %216, %226 ], [ %235, %228 ], [ %242, %253 ], [ %242, %270 ], [ %303, %300 ], [ %13, %298 ], [ 1, %345 ], [ 1, %347 ], [ 1, %359 ], [ 1, %361 ], [ %390, %389 ], [ %376, %380 ], [ %376, %373 ], [ %407, %406 ], [ %394, %398 ], [ %394, %391 ], [ %437, %431 ], [ %411, %421 ], [ %411, %417 ], [ %411, %408 ], [ 1, %445 ], [ 1, %438 ], [ 1, %478 ], [ %494, %491 ], [ 1, %484 ], [ 1, %206 ], [ 1, %495 ], [ 1, %500 ]
  ret i32 %509
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @insn_rtx_cost(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %37 [
    i16 23, label %30
    i16 15, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %7, align 8, !tbaa !11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %10, %23
  %13 = phi i64 [ 0, %10 ], [ %26, %23 ]
  %14 = phi ptr [ null, %10 ], [ %25, %23 ]
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %7, i64 0, i32 1, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 23
  %20 = icmp eq ptr %14, null
  %21 = xor i1 %19, true
  %22 = select i1 %21, i1 true, i1 %20
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = select i1 %19, i1 %20, i1 false
  %25 = select i1 %24, ptr %16, ptr %14
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %28, label %12, !llvm.loop !148

28:                                               ; preds = %23
  %29 = icmp eq ptr %25, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %2, %28
  %31 = phi ptr [ %25, %28 ], [ %0, %2 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = tail call i32 @rtx_cost(ptr noundef %33, i32 noundef 23, i8 noundef zeroext %1) #14
  %35 = icmp sgt i32 %34, 0
  %36 = select i1 %35, i32 %34, i32 4
  br label %37

37:                                               ; preds = %12, %5, %2, %28, %30
  %38 = phi i32 [ %36, %30 ], [ 0, %28 ], [ 0, %2 ], [ 0, %5 ], [ 0, %12 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canonicalize_condition(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef readnone %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %1, align 8
  %11 = and i32 %10, 65535
  %12 = lshr i32 %10, 16
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  %20 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %1, ptr noundef nonnull %0) #15
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i32 [ %20, %19 ], [ %11, %7 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %235, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %3, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  store ptr %0, ptr %3, align 8, !tbaa !9
  br label %27

27:                                               ; preds = %26, %24
  %28 = sext i32 %22 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %166

32:                                               ; preds = %27
  %33 = zext nneg i32 %13 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %33
  %35 = icmp eq i32 %13, 0
  %36 = icmp eq i32 %6, 0
  br label %37

37:                                               ; preds = %32, %157
  %38 = phi i32 [ %22, %32 ], [ %161, %157 ]
  %39 = phi ptr [ %0, %32 ], [ %160, %157 ]
  %40 = phi ptr [ %15, %32 ], [ %159, %157 ]
  %41 = phi ptr [ %17, %32 ], [ %158, %157 ]
  %42 = load i32, ptr %40, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = icmp ne ptr %41, %47
  %49 = icmp eq ptr %40, %4
  %50 = or i1 %48, %49
  br i1 %50, label %166, label %51

51:                                               ; preds = %37
  %52 = trunc i32 %42 to i16
  switch i16 %52, label %166 [
    i16 48, label %53
    i16 37, label %58
  ]

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %55 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = load ptr, ptr %54, align 8, !tbaa !6
  br label %157, !llvm.loop !149

58:                                               ; preds = %51, %62
  %59 = phi ptr [ %60, %62 ], [ %39, %51 ]
  %60 = tail call ptr @prev_nonnote_insn(ptr noundef %59) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %166, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 8
  %64 = trunc i32 %63 to i16
  switch i16 %64, label %166 [
    i16 7, label %58
    i16 8, label %65
  ]

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = icmp eq ptr %67, %9
  br i1 %68, label %69, label %166

69:                                               ; preds = %65
  %70 = tail call ptr @set_of(ptr noundef nonnull %40, ptr noundef nonnull %60) #14
  %71 = icmp eq ptr %70, null
  br i1 %71, label %126, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %70, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 23
  br i1 %75, label %76, label %166

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = tail call i32 @rtx_equal_p(ptr noundef %78, ptr noundef nonnull %40) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %166, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %77, align 8, !tbaa !6
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 48
  br i1 %90, label %97, label %91

91:                                               ; preds = %81
  switch i32 %38, label %166 [
    i32 80, label %92
    i32 81, label %110
  ]

92:                                               ; preds = %91
  %93 = zext nneg i32 %89 to i64
  %94 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !19
  %96 = icmp ult i32 %95, 2
  br i1 %96, label %97, label %166

97:                                               ; preds = %92, %81
  %98 = load i8, ptr %34, align 1, !tbaa !6
  %99 = icmp eq i8 %98, 1
  %100 = zext nneg i32 %85 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !6
  %103 = icmp ne i8 %102, 1
  %104 = xor i1 %99, %103
  %105 = select i1 %104, i1 true, i1 %35
  %106 = icmp eq i32 %85, 0
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %129, label %108

108:                                              ; preds = %97
  %109 = icmp eq i32 %38, 81
  br i1 %109, label %110, label %166

110:                                              ; preds = %108, %91
  %111 = zext nneg i32 %89 to i64
  %112 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !19
  %114 = icmp ult i32 %113, 2
  br i1 %114, label %115, label %166

115:                                              ; preds = %110
  %116 = load i8, ptr %34, align 1, !tbaa !6
  %117 = icmp eq i8 %116, 1
  %118 = zext nneg i32 %85 to i64
  %119 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !6
  %121 = icmp ne i8 %120, 1
  %122 = xor i1 %117, %121
  %123 = select i1 %122, i1 true, i1 %35
  %124 = icmp eq i32 %85, 0
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %129, label %166

126:                                              ; preds = %69
  %127 = tail call i32 @reg_set_p(ptr noundef nonnull %40, ptr noundef nonnull %60) #14, !range !30
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %157, label %166

129:                                              ; preds = %115, %97
  %130 = phi i1 [ true, %97 ], [ false, %115 ]
  br i1 %36, label %140, label %131

131:                                              ; preds = %129
  %132 = tail call i32 @modified_in_p(ptr noundef nonnull %87, ptr noundef nonnull %60) #14, !range !30
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %131
  %135 = tail call i32 @modified_between_p(ptr noundef nonnull %87, ptr noundef nonnull %60, ptr noundef %0) #14, !range !30
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %134
  %138 = load i32, ptr %87, align 8
  %139 = and i32 %138, 65535
  br label %140

140:                                              ; preds = %137, %129
  %141 = phi i32 [ %139, %137 ], [ %89, %129 ]
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !19
  %145 = icmp ult i32 %144, 2
  %146 = select i1 %145, i32 %141, i32 %38
  br i1 %130, label %150, label %147

147:                                              ; preds = %140
  %148 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %87, ptr noundef nonnull %60) #15
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %235, label %150

150:                                              ; preds = %147, %140
  %151 = phi i32 [ %146, %140 ], [ %148, %147 ]
  %152 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  %154 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  br i1 %25, label %157, label %156

156:                                              ; preds = %150
  store ptr %60, ptr %3, align 8, !tbaa !9
  br label %157

157:                                              ; preds = %126, %156, %150, %53
  %158 = phi ptr [ %56, %53 ], [ %155, %156 ], [ %155, %150 ], [ %41, %126 ]
  %159 = phi ptr [ %57, %53 ], [ %153, %156 ], [ %153, %150 ], [ %40, %126 ]
  %160 = phi ptr [ %39, %53 ], [ %60, %156 ], [ %60, %150 ], [ %60, %126 ]
  %161 = phi i32 [ %38, %53 ], [ %151, %156 ], [ %151, %150 ], [ %38, %126 ]
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !19
  %165 = icmp ult i32 %164, 2
  br i1 %165, label %37, label %166

166:                                              ; preds = %37, %157, %51, %65, %76, %72, %126, %134, %131, %115, %110, %91, %108, %92, %62, %58, %27
  %167 = phi ptr [ %17, %27 ], [ %41, %58 ], [ %41, %62 ], [ %41, %37 ], [ %158, %157 ], [ %41, %51 ], [ %41, %65 ], [ %41, %76 ], [ %41, %72 ], [ %41, %126 ], [ %41, %134 ], [ %41, %131 ], [ %41, %115 ], [ %41, %110 ], [ %41, %91 ], [ %41, %108 ], [ %41, %92 ]
  %168 = phi ptr [ %15, %27 ], [ %40, %58 ], [ %40, %62 ], [ %40, %37 ], [ %159, %157 ], [ %40, %51 ], [ %40, %65 ], [ %40, %76 ], [ %40, %72 ], [ %40, %126 ], [ %40, %134 ], [ %40, %131 ], [ %40, %115 ], [ %40, %110 ], [ %40, %91 ], [ %40, %108 ], [ %40, %92 ]
  %169 = phi i32 [ %22, %27 ], [ %38, %58 ], [ %38, %62 ], [ %38, %37 ], [ %161, %157 ], [ %38, %51 ], [ %38, %65 ], [ %38, %76 ], [ %38, %72 ], [ %38, %126 ], [ %38, %134 ], [ %38, %131 ], [ 81, %115 ], [ 81, %110 ], [ %38, %91 ], [ %38, %108 ], [ 80, %92 ]
  %170 = load i32, ptr %168, align 8
  %171 = and i32 %170, 65535
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !19
  %175 = icmp eq i32 %174, 9
  br i1 %175, label %176, label %179

176:                                              ; preds = %166
  %177 = tail call i32 @swap_condition(i32 noundef %169) #15
  %178 = load i32, ptr %167, align 8
  br label %179

179:                                              ; preds = %176, %166
  %180 = phi i32 [ %178, %176 ], [ %170, %166 ]
  %181 = phi ptr [ %168, %176 ], [ %167, %166 ]
  %182 = phi ptr [ %167, %176 ], [ %168, %166 ]
  %183 = phi i32 [ %177, %176 ], [ %169, %166 ]
  %184 = icmp eq i32 %5, 0
  %185 = lshr i32 %180, 16
  %186 = and i32 %185, 255
  %187 = zext nneg i32 %186 to i64
  br i1 %184, label %188, label %192

188:                                              ; preds = %179
  %189 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %190 = load i8, ptr %189, align 1, !tbaa !6
  %191 = icmp eq i8 %190, 1
  br i1 %191, label %235, label %192

192:                                              ; preds = %179, %188
  %193 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %194 = load i8, ptr %193, align 1, !tbaa !6
  %195 = icmp eq i8 %194, 1
  br i1 %195, label %231, label %196

196:                                              ; preds = %192
  %197 = load i32, ptr %181, align 8
  %198 = and i32 %197, 65535
  %199 = icmp ne i32 %198, 30
  %200 = icmp eq i32 %186, 0
  %201 = or i1 %200, %199
  br i1 %201, label %231, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %187
  %204 = load i8, ptr %203, align 1, !tbaa !6
  %205 = zext i8 %204 to i64
  %206 = shl nuw nsw i64 %205, 3
  %207 = icmp ult i8 %204, 9
  br i1 %207, label %208, label %231

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %210 = load i64, ptr %209, align 8, !tbaa !6
  %211 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %187
  %212 = load i64, ptr %211, align 8, !tbaa !41
  switch i32 %183, label %231 [
    i32 84, label %213
    i32 82, label %216
    i32 88, label %222
    i32 86, label %224
  ]

213:                                              ; preds = %208
  %214 = lshr i64 %212, 1
  %215 = icmp eq i64 %210, %214
  br i1 %215, label %231, label %226

216:                                              ; preds = %208
  %217 = and i64 %212, %210
  %218 = add nuw nsw i64 %206, 4294967295
  %219 = and i64 %218, 4294967295
  %220 = shl nuw i64 1, %219
  %221 = icmp eq i64 %217, %220
  br i1 %221, label %231, label %226

222:                                              ; preds = %208
  %223 = icmp ult i64 %210, %212
  br i1 %223, label %226, label %231

224:                                              ; preds = %208
  %225 = icmp eq i64 %210, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %224, %222, %216, %213
  %227 = phi i64 [ 1, %213 ], [ -1, %216 ], [ 1, %222 ], [ -1, %224 ]
  %228 = phi i32 [ 85, %213 ], [ 83, %216 ], [ 89, %222 ], [ 87, %224 ]
  %229 = add i64 %210, %227
  %230 = tail call ptr @gen_int_mode(i64 noundef %229, i32 noundef %186) #15
  br label %231

231:                                              ; preds = %226, %213, %216, %222, %224, %208, %192, %196, %202
  %232 = phi ptr [ %181, %202 ], [ %181, %196 ], [ %181, %192 ], [ %181, %208 ], [ %181, %224 ], [ %181, %222 ], [ %181, %216 ], [ %181, %213 ], [ %230, %226 ]
  %233 = phi i32 [ %183, %202 ], [ %183, %196 ], [ %183, %192 ], [ %183, %208 ], [ 86, %224 ], [ 88, %222 ], [ 82, %216 ], [ 84, %213 ], [ %228, %226 ]
  %234 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %233, i32 noundef 0, ptr noundef nonnull %182, ptr noundef %232) #15
  br label %235

235:                                              ; preds = %147, %188, %21, %231
  %236 = phi ptr [ %234, %231 ], [ null, %21 ], [ null, %188 ], [ null, %147 ]
  ret ptr %236
}

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_condition(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @pc_set(ptr noundef nonnull %0) #15
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 44
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !6
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
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @truncated_to_mode(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 4), align 8, !tbaa !150
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
  %19 = load i32, ptr %18, align 4, !tbaa !19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %12
  %22 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %1, i32 noundef %15) #14
  %23 = load i32, ptr %1, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %26, i64 %17
  %28 = load i32, ptr %27, align 4, !tbaa !19
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
define dso_local void @init_rtlanal() local_unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %13, %1 ]
  %3 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = tail call ptr @strpbrk(ptr noundef %4, ptr noundef nonnull @.str.2) #14
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = select i1 %6, i32 -1, i32 %10
  %12 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %2
  store i32 %11, ptr %12, align 4, !tbaa !19
  %13 = add nuw nsw i64 %2, 1
  %14 = icmp eq i64 %13, 139
  br i1 %14, label %15, label %1, !llvm.loop !151

15:                                               ; preds = %1
  tail call fastcc void @init_num_sign_bit_copies_in_rep() #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_num_sign_bit_copies_in_rep() unnamed_addr #2 {
  %1 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !6
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %62, label %3

3:                                                ; preds = %0
  %4 = zext i8 %1 to i64
  br label %5

5:                                                ; preds = %3, %57
  %6 = phi i8 [ %1, %3 ], [ %60, %57 ]
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %1, %6
  br i1 %8, label %57, label %9

9:                                                ; preds = %5
  %10 = zext i8 %6 to i64
  br label %11

11:                                               ; preds = %9, %53
  %12 = phi i8 [ %1, %9 ], [ %55, %53 ]
  %13 = zext i8 %12 to i32
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 55), align 8, !tbaa !152
  %15 = tail call i32 %14(i32 noundef %13, i32 noundef %7) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = zext i8 %12 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !6
  %21 = icmp eq i8 %20, %6
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5004, ptr noundef nonnull @.str.1) #15
  br label %23

23:                                               ; preds = %11, %17, %22
  %24 = icmp eq i8 %12, %6
  %25 = zext i8 %12 to i64
  br i1 %24, label %53, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %10, i64 %25
  br label %28

28:                                               ; preds = %26, %51
  %29 = phi i32 [ %13, %26 ], [ %33, %51 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !6
  %33 = zext i8 %32 to i32
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 55), align 8, !tbaa !152
  %35 = tail call i32 %34(i32 noundef %29, i32 noundef %33) #15
  %36 = icmp ne i32 %35, 98
  %37 = load i32, ptr %27, align 4, !tbaa !19
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %51, label %40

40:                                               ; preds = %28
  %41 = zext i8 %32 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !6
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %46 = load i8, ptr %45, align 1, !tbaa !6
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %44, %47
  %49 = shl nsw i32 %48, 3
  %50 = add i32 %49, %37
  store i32 %50, ptr %27, align 4, !tbaa !19
  br label %51

51:                                               ; preds = %28, %40
  %52 = icmp eq i8 %32, %6
  br i1 %52, label %53, label %28, !llvm.loop !153

53:                                               ; preds = %51, %23
  %54 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %25
  %55 = load i8, ptr %54, align 1, !tbaa !6
  %56 = icmp eq i8 %55, %6
  br i1 %56, label %57, label %11, !llvm.loop !154

57:                                               ; preds = %53, %5
  %58 = phi i64 [ %4, %5 ], [ %10, %53 ]
  %59 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !6
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %5, !llvm.loop !155

62:                                               ; preds = %57, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @constant_pool_constant_p(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @avoid_constant_pool_reference(ptr noundef %0) #15
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 32
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @low_bitmask_len(i32 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !6
  %8 = icmp ugt i8 %7, 8
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %5
  %11 = load i64, ptr %10, align 8, !tbaa !41
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
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

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
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

attributes #0 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"rtvec_def", !13, i64 0, !7, i64 8}
!13 = !{!"int", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!13, !13, i64 0}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!23, !24, i64 16}
!23 = !{!"object_block", !10, i64 0, !13, i64 8, !24, i64 16, !10, i64 24, !10, i64 32}
!24 = !{!"long", !7, i64 0}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = !{i32 0, i32 2}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = !{!24, !24, i64 0}
!42 = !{i8 0, i8 2}
!43 = distinct !{!43, !15}
!44 = !{!45, !10, i64 0}
!45 = !{!"set_of_data", !10, i64 0, !10, i64 8}
!46 = !{!45, !10, i64 8}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15}
!84 = !{!85, !10, i64 1272}
!85 = !{!"gcc_target", !86, i64 0, !88, i64 368, !89, i64 664, !13, i64 744, !10, i64 752, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !10, i64 864, !10, i64 872, !10, i64 880, !10, i64 888, !10, i64 896, !10, i64 904, !10, i64 912, !10, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !24, i64 1064, !24, i64 1072, !10, i64 1080, !10, i64 1088, !10, i64 1096, !10, i64 1104, !10, i64 1112, !10, i64 1120, !10, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !10, i64 1160, !10, i64 1168, !90, i64 1176, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !10, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !10, i64 1448, !10, i64 1456, !24, i64 1464, !91, i64 1472, !10, i64 1664, !10, i64 1672, !10, i64 1680, !10, i64 1688, !10, i64 1696, !10, i64 1704, !10, i64 1712, !10, i64 1720, !10, i64 1728, !10, i64 1736, !10, i64 1744, !10, i64 1752, !10, i64 1760, !10, i64 1768, !10, i64 1776, !92, i64 1784, !93, i64 1792, !94, i64 1896, !95, i64 1968, !10, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!86 = !{!"asm_out", !10, i64 0, !10, i64 8, !10, i64 16, !87, i64 24, !87, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360}
!87 = !{!"asm_int_op", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!88 = !{!"sched", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!89 = !{!"vectorize", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!90 = !{!"addr_space", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!91 = !{!"calls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184}
!92 = !{!"c", !10, i64 0}
!93 = !{!"cxx", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!94 = !{!"emutls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 65}
!95 = !{!"target_option_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!96 = !{!97, !10, i64 16}
!97 = !{!"mem_attrs", !10, i64 0, !10, i64 8, !10, i64 16, !13, i64 24, !13, i64 28, !7, i64 32}
!98 = !{!99, !7, i64 46}
!99 = !{!"real_format", !10, i64 0, !10, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !7, i64 44, !7, i64 45, !7, i64 46, !7, i64 47, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15}
!104 = distinct !{!104, !15}
!105 = distinct !{!105, !15}
!106 = !{!107, !10, i64 0}
!107 = !{!"replace_label_data", !10, i64 0, !10, i64 8, !7, i64 16}
!108 = !{!107, !10, i64 8}
!109 = !{!107, !7, i64 16}
!110 = !{i32 0, i32 -1}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = !{i32 -8, i32 5}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = !{!123, !7, i64 8}
!123 = !{!"subreg_info", !13, i64 0, !13, i64 4, !7, i64 8}
!124 = !{!123, !13, i64 0}
!125 = !{!123, !13, i64 4}
!126 = !{!127, !24, i64 8}
!127 = !{!"parms_set_data", !13, i64 0, !24, i64 8}
!128 = !{!127, !13, i64 0}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = !{!85, !10, i64 1248}
!133 = distinct !{!133, !15}
!134 = distinct !{!134, !15}
!135 = !{!85, !10, i64 1256}
!136 = !{!137, !10, i64 88}
!137 = !{!"rtl_data", !138, i64 0, !139, i64 40, !140, i64 96, !141, i64 112, !143, i64 208, !144, i64 248, !13, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !24, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !13, i64 432, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !10, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!138 = !{!"expr_status", !13, i64 0, !13, i64 4, !13, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!139 = !{!"emit_status", !13, i64 0, !13, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !10, i64 48}
!140 = !{!"varasm_status", !10, i64 0, !13, i64 8}
!141 = !{!"incoming_args", !13, i64 0, !13, i64 4, !13, i64 8, !10, i64 16, !142, i64 24, !10, i64 88}
!142 = !{!"ix86_args", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60}
!143 = !{!"function_subsections", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!144 = !{!"rtl_eh", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48}
!145 = !{!146, !10, i64 16}
!146 = !{!"rtl_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!147 = !{!146, !10, i64 24}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
!150 = !{!146, !10, i64 32}
!151 = distinct !{!151, !15}
!152 = !{!85, !10, i64 1160}
!153 = distinct !{!153, !15}
!154 = distinct !{!154, !15}
!155 = distinct !{!155, !15}
