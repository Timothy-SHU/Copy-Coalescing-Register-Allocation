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
define dso_local i32 @rtx_unstable_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !195 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !196
  %11 = tail call i32 @rtx_unstable_p(ptr noundef %10) #14
  %12 = icmp ne i32 %11, 0
  br label %69

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !199
  %15 = icmp eq ptr %14, %0
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %17 = icmp eq ptr %16, %0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %69, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !199
  %21 = icmp eq ptr %20, %0
  %22 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %23 = icmp ne i8 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %69, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !199
  %27 = icmp ne ptr %26, %0
  br label %69

28:                                               ; preds = %1
  %29 = and i32 %2, 134217728
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %1, %28
  %32 = zext nneg i32 %3 to i64
  %33 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  %35 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !196
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
  %45 = load i8, ptr %44, align 1, !tbaa !196
  switch i8 %45, label %67 [
    i8 101, label %53
    i8 69, label %46
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !196
  %49 = load i32, ptr %48, align 8, !tbaa !201
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  br label %61

53:                                               ; preds = %41
  %54 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %55 = load ptr, ptr %54, align 8, !tbaa !196
  %56 = tail call i32 @rtx_unstable_p(ptr noundef %55) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %69

58:                                               ; preds = %61
  %59 = add nuw nsw i64 %62, 1
  %60 = icmp eq i64 %59, %52
  br i1 %60, label %67, label %61, !llvm.loop !204

61:                                               ; preds = %51, %58
  %62 = phi i64 [ 0, %51 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !199
  %65 = tail call i32 @rtx_unstable_p(ptr noundef %64) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %58, label %69

67:                                               ; preds = %58, %46, %41, %53
  %68 = icmp sgt i64 %42, 1
  br i1 %68, label %41, label %69, !llvm.loop !206

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
define dso_local zeroext i8 @rtx_varies_p(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !207 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %84, label %4, !prof !208

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
  ], !prof !209

8:                                                ; preds = %4
  %9 = and i32 %5, 67108864
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %84, label %11, !prof !210

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !196
  %14 = tail call zeroext i8 @rtx_varies_p(ptr noundef %13, i8 noundef zeroext %1) #14
  %15 = icmp ne i8 %14, 0
  br label %84

16:                                               ; preds = %4
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !199
  %18 = icmp eq ptr %17, %0
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %20 = icmp eq ptr %19, %0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %84, label %22, !prof !211

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !199
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %28, !prof !212

25:                                               ; preds = %22
  %26 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !196
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %84, !prof !213

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !199
  %30 = icmp ne ptr %29, %0
  br label %84

31:                                               ; preds = %4
  %32 = icmp eq i8 %1, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !196
  %36 = tail call zeroext i8 @rtx_varies_p(ptr noundef %35, i8 noundef zeroext 0) #14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %33, %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !196
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
  %49 = load ptr, ptr %48, align 8, !tbaa !199
  %50 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %51 = load i8, ptr %50, align 1, !tbaa !196
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %84, label %53, !prof !214

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = zext i8 %51 to i64
  br label %56

56:                                               ; preds = %53, %82
  %57 = phi i64 [ %55, %53 ], [ %58, %82 ]
  %58 = add nsw i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !196
  switch i8 %60, label %82 [
    i8 101, label %68
    i8 69, label %61
  ], !prof !215

61:                                               ; preds = %56
  %62 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !196
  %64 = load i32, ptr %63, align 8, !tbaa !201
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = zext nneg i32 %64 to i64
  br label %76

68:                                               ; preds = %56
  %69 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %70 = load ptr, ptr %69, align 8, !tbaa !196
  %71 = tail call zeroext i8 @rtx_varies_p(ptr noundef %70, i8 noundef zeroext %1) #14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %82, label %84, !prof !216

73:                                               ; preds = %76
  %74 = add nuw nsw i64 %77, 1
  %75 = icmp eq i64 %74, %67
  br i1 %75, label %82, label %76, !llvm.loop !217

76:                                               ; preds = %66, %73
  %77 = phi i64 [ 0, %66 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.rtvec_def, ptr %63, i64 0, i32 1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !199
  %80 = tail call zeroext i8 @rtx_varies_p(ptr noundef %79, i8 noundef zeroext %1) #14
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %73, label %84

82:                                               ; preds = %73, %61, %56, %68
  %83 = icmp sgt i64 %57, 1
  br i1 %83, label %56, label %84, !prof !218, !llvm.loop !219

84:                                               ; preds = %68, %82, %76, %46, %43, %33, %38, %28, %16, %25, %4, %4, %4, %4, %4, %4, %4, %8, %11, %2
  %85 = phi i1 [ false, %2 ], [ true, %8 ], [ %15, %11 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %25 ], [ false, %16 ], [ %30, %28 ], [ true, %33 ], [ %42, %38 ], [ true, %43 ], [ false, %46 ], [ true, %76 ], [ true, %68 ], [ false, %82 ]
  %86 = zext i1 %85 to i8
  ret i8 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_addr_can_trap_p(ptr noundef %0) local_unnamed_addr #2 !prof !220 {
  %2 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 0) #14
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 !prof !221 !PGOFuncName !222 {
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
  ], !prof !223

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %11, label %122, !prof !224

11:                                               ; preds = %9
  %12 = and i32 %7, 67108864
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %122, !prof !225

14:                                               ; preds = %11
  %15 = icmp slt i64 %1, 0
  br i1 %15, label %122, label %16, !prof !226

16:                                               ; preds = %14
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %18, label %26, !prof !226

18:                                               ; preds = %16
  %19 = zext nneg i32 %3 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !196
  %22 = zext i8 %21 to i64
  %23 = icmp eq i8 %21, 0
  br i1 %23, label %24, label %26, !prof !227

24:                                               ; preds = %18
  %25 = icmp ne i64 %1, 0
  br label %122

26:                                               ; preds = %16, %18
  %27 = phi i64 [ %22, %18 ], [ %2, %16 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %31, !prof !228

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !229
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %47, !prof !230

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !196
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41, !prof !231

41:                                               ; preds = %37
  %42 = tail call i32 @host_integerp(ptr noundef nonnull %39, i32 noundef 0) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %64, label %44, !prof !232

44:                                               ; preds = %41
  %45 = load ptr, ptr %38, align 8, !tbaa !196
  %46 = tail call i64 @tree_low_cst(ptr noundef %45, i32 noundef 0) #15
  br label %61

47:                                               ; preds = %37, %31
  %48 = icmp eq i64 %33, 28
  br i1 %48, label %49, label %53, !prof !233

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.tree_string, ptr %29, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !196
  %52 = sext i32 %51 to i64
  br label %61

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !196
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !196
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59, !prof !234

59:                                               ; preds = %53
  %60 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %55) #15
  br label %61

61:                                               ; preds = %44, %59, %49
  %62 = phi i64 [ %52, %49 ], [ %60, %59 ], [ %46, %44 ]
  %63 = icmp slt i64 %62, 1
  br i1 %63, label %64, label %66, !prof !235

64:                                               ; preds = %53, %41, %26, %61
  %65 = icmp ne i64 %1, 0
  br label %122

66:                                               ; preds = %61
  %67 = add nsw i64 %27, %1
  %68 = icmp sgt i64 %67, %62
  br label %122

69:                                               ; preds = %5
  %70 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !199
  %71 = icmp eq ptr %70, %6
  %72 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %73 = icmp eq ptr %72, %6
  %74 = select i1 %71, i1 true, i1 %73
  %75 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %76 = icmp eq ptr %75, %6
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %122, label %78, !prof !236

78:                                               ; preds = %69
  %79 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !199
  %80 = icmp eq ptr %79, %6
  br i1 %80, label %81, label %84, !prof !237

81:                                               ; preds = %78
  %82 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !196
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %122, !prof !238

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
  %92 = load ptr, ptr %91, align 8, !tbaa !196
  br label %5

93:                                               ; preds = %5
  %94 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !196
  %96 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !199
  %97 = icmp eq ptr %95, %96
  %98 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !196
  %100 = load i32, ptr %99, align 8
  br i1 %97, label %101, label %107, !prof !239

101:                                              ; preds = %93
  %102 = and i32 %100, 65535
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !229
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %122, label %107

107:                                              ; preds = %93, %101
  %108 = and i32 %100, 65535
  %109 = icmp eq i32 %108, 30
  br i1 %109, label %110, label %116, !prof !240

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !196
  %113 = add nsw i64 %112, %1
  %114 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %95, i64 noundef %113, i64 noundef %2, i32 noundef %3) #14
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116, !prof !241

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

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !242 !PGOFuncName !243 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !196
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nonzero_address_p(ptr noundef readonly %0) local_unnamed_addr #5 !prof !244 {
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
  ], !prof !245

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, -1
  br label %65

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !199
  %10 = icmp eq ptr %9, %3
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %12 = icmp eq ptr %11, %3
  %13 = select i1 %10, i1 true, i1 %12
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %15 = icmp eq ptr %14, %3
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %65, label %17, !prof !246

17:                                               ; preds = %8
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !199
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %23, !prof !247

20:                                               ; preds = %17
  %21 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !196
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
  %31 = load ptr, ptr %30, align 8, !tbaa !196
  br label %2

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !196
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 30
  br i1 %38, label %29, label %39, !prof !248

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !196
  %41 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !199
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %48, !prof !249

43:                                               ; preds = %39
  %44 = zext nneg i32 %37 to i64
  %45 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !229
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %65, label %48

48:                                               ; preds = %39, %43
  br label %65

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %51 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !196
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 30
  br i1 %55, label %56, label %29

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !196
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

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @rtx_addr_varies_p(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !250 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %56, label %4, !prof !251

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %17, !prof !252

8:                                                ; preds = %4
  %9 = and i32 %5, 16711680
  %10 = icmp eq i32 %9, 65536
  br i1 %10, label %56, label %11, !prof !253

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !196
  %14 = tail call zeroext i8 @rtx_varies_p(ptr noundef %13, i8 noundef zeroext %1) #14
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i8
  br label %56

17:                                               ; preds = %4
  %18 = zext nneg i32 %6 to i64
  %19 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !199
  %21 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !196
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %56, label %24, !prof !254

24:                                               ; preds = %17
  %25 = zext i8 %22 to i64
  br label %26

26:                                               ; preds = %24, %54
  %27 = phi i64 [ %25, %24 ], [ %28, %54 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds i8, ptr %20, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !196
  switch i8 %30, label %54 [
    i8 101, label %39
    i8 69, label %31
  ], !prof !255

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %28
  %34 = load ptr, ptr %33, align 8, !tbaa !196
  %35 = load i32, ptr %34, align 8, !tbaa !201
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = zext nneg i32 %35 to i64
  br label %48

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %40, i64 0, i64 %28
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  %43 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %42, i8 noundef zeroext %1) #14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %54, label %56, !prof !256

45:                                               ; preds = %48
  %46 = add nuw nsw i64 %49, 1
  %47 = icmp eq i64 %46, %38
  br i1 %47, label %54, label %48, !llvm.loop !257

48:                                               ; preds = %37, %45
  %49 = phi i64 [ 0, %37 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !199
  %52 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %51, i8 noundef zeroext %1) #14
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %45, label %56

54:                                               ; preds = %45, %31, %26, %39
  %55 = icmp sgt i64 %27, 1
  br i1 %55, label %26, label %56, !prof !258, !llvm.loop !259

56:                                               ; preds = %39, %54, %48, %17, %8, %11, %2
  %57 = phi i8 [ 0, %2 ], [ 1, %8 ], [ %16, %11 ], [ 0, %17 ], [ 1, %48 ], [ 1, %39 ], [ 0, %54 ]
  ret i8 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @get_integer_term(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !260 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %9, !prof !261

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %32 [
    i16 50, label %13
    i16 49, label %23
  ], !prof !262

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !196
  %22 = sub nsw i64 0, %21
  br label %32

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 30
  br i1 %28, label %29, label %32, !prof !263

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !196
  br label %32

32:                                               ; preds = %9, %13, %23, %29, %19
  %33 = phi i64 [ %22, %19 ], [ %31, %29 ], [ 0, %23 ], [ 0, %13 ], [ 0, %9 ]
  ret i64 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_related_value(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !264 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %25, !prof !265

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %25 [
    i16 49, label %10
    i16 50, label %16
  ], !prof !266

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !196
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 30
  br i1 %15, label %22, label %25, !prof !265

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %10
  %23 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !196
  br label %25

25:                                               ; preds = %22, %5, %10, %16, %1
  %26 = phi ptr [ null, %1 ], [ null, %16 ], [ null, %10 ], [ null, %5 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @offset_within_block_p(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !195 {
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
  %17 = load i8, ptr %16, align 1, !tbaa !196
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
  %28 = load ptr, ptr %27, align 8, !tbaa !196
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = tail call i64 @int_size_in_bytes(ptr noundef %32) #15
  %34 = icmp sgt i64 %33, %1
  br i1 %34, label %54, label %35

35:                                               ; preds = %22, %26, %30, %8
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load i32, ptr %36, align 8, !tbaa !196
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !196
  %47 = icmp sgt i64 %46, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = add i64 %46, %1
  %50 = getelementptr inbounds %struct.object_block, ptr %42, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !267
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
define dso_local void @split_const(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 !prof !195 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 49
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !196
  br label %22

22:                                               ; preds = %3, %13, %7, %19
  %23 = phi ptr [ %21, %19 ], [ %9, %13 ], [ %9, %7 ], [ %0, %3 ]
  %24 = phi ptr [ %14, %19 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %13 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %7 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %3 ]
  store ptr %23, ptr %1, align 8, !tbaa !199
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  store ptr %25, ptr %2, align 8, !tbaa !199
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @count_occurrences(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !270 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %85, label %5, !prof !271

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
  ], !prof !272

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = tail call i32 @count_occurrences(ptr noundef %16, ptr noundef %1, i32 noundef %10) #14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = icmp eq ptr %19, null
  br i1 %20, label %85, label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %17, %8
  %23 = icmp eq ptr %19, %1
  br i1 %23, label %85, label %5, !prof !273

24:                                               ; preds = %9
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 43
  br i1 %27, label %28, label %41, !prof !274

28:                                               ; preds = %24
  %29 = tail call i32 @rtx_equal_p(ptr noundef nonnull %11, ptr noundef nonnull %1) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %85, !prof !275

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = icmp ne ptr %33, %1
  %35 = icmp ne i32 %10, 0
  %36 = or i1 %35, %34
  br i1 %36, label %41, label %37, !prof !276

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !196
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %85, label %9, !prof !277

41:                                               ; preds = %9, %31, %24, %28
  %42 = and i32 %12, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !196
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %85, label %47, !prof !278

47:                                               ; preds = %41
  %48 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %49 = load ptr, ptr %48, align 8, !tbaa !199
  %50 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %51 = zext i8 %45 to i64
  br label %52

52:                                               ; preds = %47, %81
  %53 = phi i64 [ 0, %47 ], [ %83, %81 ]
  %54 = phi i32 [ 0, %47 ], [ %82, %81 ]
  %55 = phi ptr [ %49, %47 ], [ %56, %81 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !196
  switch i8 %57, label %81 [
    i8 101, label %63
    i8 69, label %58
  ], !prof !279

58:                                               ; preds = %52
  %59 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %53
  %60 = load ptr, ptr %59, align 8, !tbaa !196
  %61 = load i32, ptr %60, align 8, !tbaa !201
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %68, label %81, !prof !280

63:                                               ; preds = %52
  %64 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %53
  %65 = load ptr, ptr %64, align 8, !tbaa !196
  %66 = tail call i32 @count_occurrences(ptr noundef %65, ptr noundef %1, i32 noundef %10) #14
  %67 = add nsw i32 %66, %54
  br label %81

68:                                               ; preds = %58, %68
  %69 = phi i64 [ %76, %68 ], [ 0, %58 ]
  %70 = phi ptr [ %77, %68 ], [ %60, %58 ]
  %71 = phi i32 [ %75, %68 ], [ %54, %58 ]
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %70, i64 0, i32 1, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !199
  %74 = tail call i32 @count_occurrences(ptr noundef %73, ptr noundef %1, i32 noundef %10) #14
  %75 = add nsw i32 %74, %71
  %76 = add nuw nsw i64 %69, 1
  %77 = load ptr, ptr %59, align 8, !tbaa !196
  %78 = load i32, ptr %77, align 8, !tbaa !201
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %68, label %81, !prof !281, !llvm.loop !282

81:                                               ; preds = %68, %58, %63, %52
  %82 = phi i32 [ %54, %52 ], [ %67, %63 ], [ %54, %58 ], [ %75, %68 ]
  %83 = add nuw nsw i64 %53, 1
  %84 = icmp eq i64 %83, %51
  br i1 %84, label %85, label %52, !prof !283, !llvm.loop !284

85:                                               ; preds = %21, %14, %37, %9, %9, %9, %9, %9, %9, %9, %9, %9, %81, %3, %41, %28
  %86 = phi i32 [ %8, %28 ], [ %8, %41 ], [ 0, %3 ], [ %8, %81 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %9 ], [ %8, %37 ], [ %22, %21 ], [ %8, %14 ]
  %87 = phi i32 [ 1, %28 ], [ 0, %41 ], [ 1, %3 ], [ %82, %81 ], [ 1, %37 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 1, %21 ], [ %17, %14 ]
  %88 = add nsw i32 %87, %86
  ret i32 %88
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_mentioned_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !285 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %69, label %4, !prof !286

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %69, label %6, !prof !287

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 44
  br i1 %9, label %10, label %14, !prof !288

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !196
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
  ], !prof !289

16:                                               ; preds = %14
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %69, !prof !290

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %23 = icmp eq i32 %21, %22
  br label %69

24:                                               ; preds = %14
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %31, !prof !291

28:                                               ; preds = %24
  %29 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69, !prof !292

31:                                               ; preds = %28, %24
  %32 = zext nneg i32 %8 to i64
  %33 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  %35 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !196
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %69, label %38, !prof !293

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = zext i8 %36 to i64
  br label %41

41:                                               ; preds = %38, %67
  %42 = phi i64 [ %40, %38 ], [ %43, %67 ]
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds i8, ptr %34, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !196
  switch i8 %45, label %67 [
    i8 69, label %46
    i8 101, label %62
  ], !prof !294

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !196
  %49 = load i32, ptr %48, align 8, !tbaa !201
  %50 = zext i32 %49 to i64
  br label %51

51:                                               ; preds = %55, %46
  %52 = phi i64 [ %56, %55 ], [ %50, %46 ]
  %53 = trunc i64 %52 to i32
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %67, label %55, !prof !295

55:                                               ; preds = %51
  %56 = add nsw i64 %52, -1
  %57 = load ptr, ptr %47, align 8, !tbaa !196
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %57, i64 0, i32 1, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !199
  %60 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %0, ptr noundef %59) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %51, label %69, !prof !296, !llvm.loop !297

62:                                               ; preds = %41
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %64 = load ptr, ptr %63, align 8, !tbaa !196
  %65 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %0, ptr noundef %64) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69, !prof !298

67:                                               ; preds = %51, %41, %62
  %68 = icmp sgt i64 %42, 1
  br i1 %68, label %41, label %69, !prof !299, !llvm.loop !300

69:                                               ; preds = %62, %67, %55, %31, %28, %14, %14, %14, %14, %14, %14, %14, %16, %20, %4, %2, %10
  %70 = phi i1 [ %13, %10 ], [ false, %2 ], [ true, %4 ], [ false, %16 ], [ %23, %20 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ true, %28 ], [ false, %31 ], [ true, %55 ], [ true, %62 ], [ false, %67 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @no_labels_between_p(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 !prof !195 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %7, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %4, !llvm.loop !301

13:                                               ; preds = %4, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %4 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reg_used_between_p(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #2 !prof !302 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %31, label %5, !prof !303

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %31, label %9, !prof !304

9:                                                ; preds = %5, %27
  %10 = phi ptr [ %29, %27 ], [ %7, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -11
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %27, label %15, !prof !305

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !196
  %18 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %17) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31, !prof !306

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %27, !prof !307

24:                                               ; preds = %20
  %25 = tail call i32 @find_reg_fusage(ptr noundef nonnull %10, i32 noundef 24, ptr noundef %0) #14, !range !308
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !309

27:                                               ; preds = %9, %20, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %9, !prof !310, !llvm.loop !311

31:                                               ; preds = %24, %15, %27, %5, %3
  %32 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 1, %24 ], [ 1, %15 ], [ 0, %27 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !312 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !229
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %113, label %9, !prof !313

9:                                                ; preds = %2, %13
  %10 = phi ptr [ %15, %13 ], [ %0, %2 ]
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %106 [
    i16 40, label %13
    i16 120, label %13
    i16 119, label %13
    i16 39, label %16
    i16 37, label %30
    i16 43, label %43
    i16 38, label %83
    i16 36, label %83
    i16 46, label %83
    i16 15, label %85
  ], !prof !314

13:                                               ; preds = %9, %9, %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  br label %9

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef %18) #14
  %20 = icmp ult i32 %19, 53
  br i1 %20, label %21, label %26, !prof !315

21:                                               ; preds = %16
  %22 = tail call i32 @subreg_regno(ptr noundef nonnull %10) #14
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %24, label %26, !prof !227

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
  br i1 %32, label %33, label %37, !prof !316

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
  br label %113

43:                                               ; preds = %9
  %44 = icmp eq i32 %4, 43
  br i1 %44, label %113, label %45, !prof !317

45:                                               ; preds = %43
  %46 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %5
  %47 = load ptr, ptr %46, align 8, !tbaa !199
  %48 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %5
  %49 = load i8, ptr %48, align 1, !tbaa !196
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %113, label %51, !prof !318

51:                                               ; preds = %45
  %52 = zext i8 %49 to i64
  br label %53

53:                                               ; preds = %51, %81
  %54 = phi i64 [ %52, %51 ], [ %55, %81 ]
  %55 = add nsw i64 %54, -1
  %56 = getelementptr inbounds i8, ptr %47, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !196
  switch i8 %57, label %81 [
    i8 101, label %58
    i8 69, label %64
  ], !prof !319

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %55
  %61 = load ptr, ptr %60, align 8, !tbaa !196
  %62 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %10, ptr noundef %61) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %81, label %113, !prof !320

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %66 = getelementptr inbounds [1 x %union.rtunion_def], ptr %65, i64 0, i64 %55
  %67 = load ptr, ptr %66, align 8, !tbaa !196
  %68 = load i32, ptr %67, align 8, !tbaa !201
  %69 = zext i32 %68 to i64
  br label %70

70:                                               ; preds = %74, %64
  %71 = phi i64 [ %75, %74 ], [ %69, %64 ]
  %72 = trunc i64 %71 to i32
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = add nsw i64 %71, -1
  %76 = load ptr, ptr %66, align 8, !tbaa !196
  %77 = getelementptr inbounds %struct.rtvec_def, ptr %76, i64 0, i32 1, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !199
  %79 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %10, ptr noundef %78) #14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %70, label %113, !llvm.loop !321

81:                                               ; preds = %70, %53, %58
  %82 = icmp sgt i64 %54, 1
  br i1 %82, label %53, label %113, !prof !322, !llvm.loop !323

83:                                               ; preds = %9, %9, %9
  %84 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %10, ptr noundef nonnull %1) #14
  br label %113

85:                                               ; preds = %9
  %86 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !196
  %88 = load i32, ptr %87, align 8, !tbaa !201
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %85
  %91 = zext nneg i32 %88 to i64
  br label %92

92:                                               ; preds = %90, %104
  %93 = phi i64 [ %91, %90 ], [ %94, %104 ]
  %94 = add nsw i64 %93, -1
  %95 = load ptr, ptr %86, align 8, !tbaa !196
  %96 = getelementptr inbounds %struct.rtvec_def, ptr %95, i64 0, i32 1, i64 %94
  %97 = load ptr, ptr %96, align 8, !tbaa !199
  %98 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !196
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %99, ptr noundef nonnull %1) #14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %92, %101
  %105 = icmp ugt i64 %93, 1
  br i1 %105, label %92, label %113, !llvm.loop !324

106:                                              ; preds = %9
  %107 = and i32 %11, 65535
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !229
  %111 = icmp eq i32 %110, 9
  br i1 %111, label %113, label %112, !prof !325

112:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1416, ptr noundef nonnull @.str.1) #15
  br label %113

113:                                              ; preds = %104, %101, %81, %58, %74, %85, %45, %112, %106, %43, %2, %83, %39
  %114 = phi i32 [ %84, %83 ], [ %42, %39 ], [ 0, %2 ], [ 1, %43 ], [ 0, %106 ], [ 0, %112 ], [ 0, %45 ], [ 0, %85 ], [ 1, %74 ], [ 0, %81 ], [ 1, %58 ], [ 0, %104 ], [ 1, %101 ]
  ret i32 %114
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @find_reg_fusage(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !326 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %49, !prof !327

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %9, label %10, !prof !328

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1804, ptr noundef nonnull @.str.1) #15
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %34, label %14, !prof !327

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %14, %30
  %19 = phi ptr [ %32, %30 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !196
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !196
  %28 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef %27) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %18, %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %18, !llvm.loop !329

34:                                               ; preds = %10
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #14
  %36 = icmp ult i32 %35, 53
  br i1 %36, label %37, label %49, !prof !330

37:                                               ; preds = %34
  %38 = lshr i32 %11, 16
  %39 = and i32 %38, 255
  %40 = tail call fastcc i32 @end_hard_regno(i32 noundef %39, i32 noundef %35) #14
  %41 = icmp ult i32 %35, %40
  br i1 %41, label %45, label %49, !prof !331

42:                                               ; preds = %45
  %43 = add i32 %46, 1
  %44 = icmp eq i32 %43, %40
  br i1 %44, label %49, label %45, !prof !332, !llvm.loop !333

45:                                               ; preds = %37, %42
  %46 = phi i32 [ %43, %42 ], [ %35, %37 ]
  %47 = tail call i32 @find_regno_fusage(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %46) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %42, label %49, !prof !334

49:                                               ; preds = %25, %30, %45, %42, %14, %37, %34, %3
  %50 = phi i32 [ 0, %3 ], [ 0, %34 ], [ 0, %37 ], [ 0, %14 ], [ 1, %45 ], [ 0, %42 ], [ 1, %25 ], [ 0, %30 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_referenced_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !335 {
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
  ], !prof !336

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %122, !prof !337

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %40 [
    i16 46, label %43
    i16 36, label %43
    i16 37, label %43
    i16 39, label %17
  ], !prof !338

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %40, !prof !339

23:                                               ; preds = %17
  %24 = lshr i32 %20, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !196
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, 3
  %31 = lshr i32 %15, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !196
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 3
  %38 = xor i32 %37, %30
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %43, label %40, !prof !340

40:                                               ; preds = %12, %23, %17
  %41 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %14) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %122, !prof !341

43:                                               ; preds = %12, %12, %12, %40, %23
  br label %122

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !196
  %47 = load i32, ptr %46, align 8, !tbaa !201
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %53, %44
  %50 = phi i64 [ %54, %53 ], [ %48, %44 ]
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %49
  %54 = add nsw i64 %50, -1
  %55 = load ptr, ptr %45, align 8, !tbaa !196
  %56 = getelementptr inbounds %struct.rtvec_def, ptr %55, i64 0, i32 1, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !199
  %58 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %57) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %49, label %122, !llvm.loop !342

60:                                               ; preds = %3, %3, %3
  %61 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %4) #14
  br label %122

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !196
  %65 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %64) #14
  br label %122

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !196
  %69 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %68) #14
  br label %122

70:                                               ; preds = %3, %3
  %71 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !196
  %73 = load i32, ptr %72, align 8, !tbaa !201
  %74 = zext i32 %73 to i64
  br label %75

75:                                               ; preds = %79, %70
  %76 = phi i64 [ %80, %79 ], [ %74, %70 ]
  %77 = trunc i64 %76 to i32
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %75
  %80 = add nsw i64 %76, -1
  %81 = load ptr, ptr %71, align 8, !tbaa !196
  %82 = getelementptr inbounds %struct.rtvec_def, ptr %81, i64 0, i32 1, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !199
  %84 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %83) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %75, label %122, !llvm.loop !343

86:                                               ; preds = %3
  %87 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !196
  %89 = load i32, ptr %88, align 8, !tbaa !201
  %90 = zext i32 %89 to i64
  br label %91

91:                                               ; preds = %95, %86
  %92 = phi i64 [ %96, %95 ], [ %90, %86 ]
  %93 = trunc i64 %92 to i32
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %122, !prof !344

95:                                               ; preds = %91
  %96 = add nsw i64 %92, -1
  %97 = load ptr, ptr %87, align 8, !tbaa !196
  %98 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !199
  %100 = tail call i32 @reg_referenced_p(ptr noundef %0, ptr noundef %99) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %91, label %122, !prof !345, !llvm.loop !346

102:                                              ; preds = %3
  %103 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !196
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 43
  br i1 %107, label %108, label %113, !prof !347

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !196
  %111 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %110) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108, %102
  br label %122

114:                                              ; preds = %3
  %115 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !196
  %117 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %116) #14
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !196
  br label %3

122:                                              ; preds = %3, %114, %91, %95, %75, %79, %49, %53, %108, %40, %7, %113, %66, %62, %60, %43
  %123 = phi i32 [ 0, %113 ], [ %69, %66 ], [ %65, %62 ], [ %61, %60 ], [ 0, %43 ], [ 1, %7 ], [ 1, %40 ], [ 1, %108 ], [ 0, %49 ], [ 1, %53 ], [ 0, %75 ], [ 1, %79 ], [ 0, %91 ], [ 1, %95 ], [ 0, %3 ], [ 1, %114 ]
  ret i32 %123
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reg_set_between_p(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #2 !prof !348 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %22, label %5, !prof !349

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %22, label %9, !prof !350

9:                                                ; preds = %5, %18
  %10 = phi ptr [ %20, %18 ], [ %7, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %18, !prof !351

15:                                               ; preds = %9
  %16 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %10) #14, !range !308
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22, !prof !352

18:                                               ; preds = %9, %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %9, !prof !353, !llvm.loop !354

22:                                               ; preds = %15, %18, %5, %3
  %23 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 1, %15 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_set_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !355 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %21, !prof !356

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %18 [
    i16 37, label %9
    i16 43, label %25
  ], !prof !357

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %11 = icmp ult i32 %10, 53
  br i1 %11, label %12, label %18, !prof !358

12:                                               ; preds = %9
  %13 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !359
  %14 = lshr i32 %7, 16
  %15 = and i32 %14, 255
  %16 = tail call fastcc zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %13, i32 noundef %15, i32 noundef %10) #14, !range !360
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25, !prof !361

18:                                               ; preds = %6, %9, %12
  %19 = tail call i32 @find_reg_fusage(ptr noundef nonnull %1, i32 noundef 25, ptr noundef nonnull %0) #14, !range !308
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !362

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
define internal fastcc noundef zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !prof !363 !PGOFuncName !364 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19, !prof !361

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #14
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi i32 [ %2, %8 ], [ %12, %14 ]
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, %9
  br i1 %13, label %14, label %19, !prof !365

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %0
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %10, label %19, !llvm.loop !366

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 1, %3 ], [ 0, %10 ], [ 1, %14 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @set_of(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !367 {
  %3 = alloca %struct.set_of_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !368
  %4 = getelementptr inbounds %struct.set_of_data, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !370
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %12, !prof !371

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !196
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ %1, %2 ]
  call void @note_stores(ptr noundef %13, ptr noundef nonnull @set_of_1, ptr noundef nonnull %3) #14
  %14 = load ptr, ptr %3, align 8, !tbaa !368
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !prof !372 !PGOFuncName !373 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !196
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @modified_between_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !374 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq ptr %1, %2
  br i1 %6, label %73, label %7, !prof !375

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
  ], !prof !376

9:                                                ; preds = %7, %7
  br label %73

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !196
  %13 = tail call i32 @modified_between_p(ptr noundef %12, ptr noundef %1, ptr noundef %2) #14, !range !308
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %73, !prof !377

15:                                               ; preds = %10
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 67108864
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %73, !prof !378

19:                                               ; preds = %15, %24
  %20 = phi ptr [ %22, %24 ], [ %1, %15 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %73, label %24, !prof !379

24:                                               ; preds = %19
  %25 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef nonnull %0, ptr noundef %22) #15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %19, label %73, !prof !380, !llvm.loop !381

27:                                               ; preds = %7
  %28 = tail call i32 @reg_set_between_p(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #14, !range !308
  br label %73

29:                                               ; preds = %7
  %30 = zext nneg i32 %5 to i64
  %31 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !199
  %33 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %30
  %34 = load i8, ptr %33, align 1, !tbaa !196
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %73, label %36, !prof !382

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = zext i8 %34 to i64
  br label %39

39:                                               ; preds = %36, %71
  %40 = phi i64 [ %38, %36 ], [ %41, %71 ]
  %41 = add nsw i64 %40, -1
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !196
  %44 = icmp eq i8 %43, 101
  br i1 %44, label %45, label %52, !prof !383

45:                                               ; preds = %39
  %46 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !196
  %48 = tail call i32 @modified_between_p(ptr noundef %47, ptr noundef %1, ptr noundef %2) #14, !range !308
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73, !prof !384

50:                                               ; preds = %45
  %51 = load i8, ptr %42, align 1, !tbaa !196
  br label %52

52:                                               ; preds = %50, %39
  %53 = phi i8 [ %51, %50 ], [ %43, %39 ]
  %54 = icmp eq i8 %53, 69
  br i1 %54, label %55, label %71, !prof !385

55:                                               ; preds = %52
  %56 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %57 = load ptr, ptr %56, align 8, !tbaa !196
  %58 = load i32, ptr %57, align 8, !tbaa !201
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %64, %55
  %61 = phi i64 [ %65, %64 ], [ %59, %55 ]
  %62 = trunc i64 %61 to i32
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = add nsw i64 %61, -1
  %66 = load ptr, ptr %56, align 8, !tbaa !196
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !199
  %69 = tail call i32 @modified_between_p(ptr noundef %68, ptr noundef %1, ptr noundef %2) #14, !range !308
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %60, label %73, !llvm.loop !386

71:                                               ; preds = %60, %52
  %72 = icmp sgt i64 %40, 1
  br i1 %72, label %39, label %73, !prof !387, !llvm.loop !388

73:                                               ; preds = %19, %24, %45, %71, %64, %29, %15, %10, %7, %7, %7, %7, %7, %7, %7, %3, %27, %9
  %74 = phi i32 [ %28, %27 ], [ 1, %9 ], [ 0, %3 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 1, %10 ], [ 0, %15 ], [ 0, %29 ], [ 1, %64 ], [ 1, %45 ], [ 0, %71 ], [ 0, %19 ], [ 1, %24 ]
  ret i32 %74
}

; Function Attrs: optsize
declare zeroext i8 @memory_modified_in_insn_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @modified_in_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !389 {
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
  ], !prof !390

5:                                                ; preds = %2, %2
  br label %66

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = tail call i32 @modified_in_p(ptr noundef %8, ptr noundef %1) #14, !range !308
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %66, !prof !391

11:                                               ; preds = %6
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 67108864
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %66, !prof !392

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef nonnull %0, ptr noundef %1) #15
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  br label %66

19:                                               ; preds = %2
  %20 = tail call i32 @reg_set_p(ptr noundef nonnull %0, ptr noundef %1) #14, !range !308
  br label %66

21:                                               ; preds = %2
  %22 = and i32 %3, 65535
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !199
  %26 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !196
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %66, label %29, !prof !393

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %31 = zext i8 %27 to i64
  br label %32

32:                                               ; preds = %29, %64
  %33 = phi i64 [ %31, %29 ], [ %34, %64 ]
  %34 = add nsw i64 %33, -1
  %35 = getelementptr inbounds i8, ptr %25, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !196
  %37 = icmp eq i8 %36, 101
  br i1 %37, label %38, label %45, !prof !394

38:                                               ; preds = %32
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = tail call i32 @modified_in_p(ptr noundef %40, ptr noundef %1) #14, !range !308
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66, !prof !395

43:                                               ; preds = %38
  %44 = load i8, ptr %35, align 1, !tbaa !196
  br label %45

45:                                               ; preds = %43, %32
  %46 = phi i8 [ %44, %43 ], [ %36, %32 ]
  %47 = icmp eq i8 %46, 69
  br i1 %47, label %48, label %64, !prof !396

48:                                               ; preds = %45
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %34
  %50 = load ptr, ptr %49, align 8, !tbaa !196
  %51 = load i32, ptr %50, align 8, !tbaa !201
  %52 = zext i32 %51 to i64
  br label %53

53:                                               ; preds = %57, %48
  %54 = phi i64 [ %58, %57 ], [ %52, %48 ]
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = add nsw i64 %54, -1
  %59 = load ptr, ptr %49, align 8, !tbaa !196
  %60 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !199
  %62 = tail call i32 @modified_in_p(ptr noundef %61, ptr noundef %1) #14, !range !308
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %53, label %66, !llvm.loop !397

64:                                               ; preds = %53, %45
  %65 = icmp sgt i64 %33, 1
  br i1 %65, label %32, label %66, !prof !398, !llvm.loop !399

66:                                               ; preds = %38, %64, %57, %21, %15, %11, %6, %2, %2, %2, %2, %2, %2, %2, %19, %5
  %67 = phi i32 [ %20, %19 ], [ 1, %5 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 1, %6 ], [ 0, %11 ], [ %18, %15 ], [ 0, %21 ], [ 1, %57 ], [ 1, %38 ], [ 0, %64 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @note_stores(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 !prof !400 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %11, !prof !401

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !196
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
  ], !prof !402

15:                                               ; preds = %11, %11
  br label %16

16:                                               ; preds = %22, %15
  %17 = phi ptr [ %13, %15 ], [ %19, %22 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %51 [
    i16 39, label %23
    i16 120, label %22
    i16 40, label %22
    i16 15, label %32
  ], !prof !403

22:                                               ; preds = %16, %16, %29, %23
  br label %16, !llvm.loop !404

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %22, !prof !405

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #14
  %31 = icmp ugt i32 %30, 52
  br i1 %31, label %22, label %51, !prof !406

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !196
  %35 = load i32, ptr %34, align 8, !tbaa !201
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %49
  %40 = phi i64 [ %38, %37 ], [ %41, %49 ]
  %41 = add nsw i64 %40, -1
  %42 = load ptr, ptr %33, align 8, !tbaa !196
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !199
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !196
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  tail call void %1(ptr noundef nonnull %46, ptr noundef nonnull %13, ptr noundef %2) #15
  br label %49

49:                                               ; preds = %39, %48
  %50 = icmp ugt i64 %40, 1
  br i1 %50, label %39, label %66, !llvm.loop !407

51:                                               ; preds = %16, %29
  tail call void %1(ptr noundef nonnull %19, ptr noundef nonnull %13, ptr noundef %2) #15
  br label %66

52:                                               ; preds = %11
  %53 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !196
  %55 = load i32, ptr %54, align 8, !tbaa !201
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %66, !prof !408

57:                                               ; preds = %52
  %58 = zext nneg i32 %55 to i64
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ %58, %57 ], [ %61, %59 ]
  %61 = add nsw i64 %60, -1
  %62 = load ptr, ptr %53, align 8, !tbaa !196
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %62, i64 0, i32 1, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !199
  tail call void @note_stores(ptr noundef %64, ptr noundef %1, ptr noundef %2) #14
  %65 = icmp ugt i64 %60, 1
  br i1 %65, label %59, label %66, !prof !409, !llvm.loop !410

66:                                               ; preds = %59, %49, %52, %32, %11, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @set_of_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #2 !prof !411 !PGOFuncName !412 {
  %4 = getelementptr inbounds %struct.set_of_data, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !370
  %6 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !413

8:                                                ; preds = %3
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %17, label %12, !prof !414

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !370
  %14 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %13, ptr noundef nonnull %0) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !415

16:                                               ; preds = %12, %3
  store ptr %1, ptr %2, align 8, !tbaa !368
  br label %17

17:                                               ; preds = %16, %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @single_set_2(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !416 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %48, !prof !417

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = load i32, ptr %8, align 8, !tbaa !201
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %48, !prof !418

11:                                               ; preds = %6, %40
  %12 = phi i64 [ %43, %40 ], [ 0, %6 ]
  %13 = phi ptr [ %44, %40 ], [ %8, %6 ]
  %14 = phi i32 [ %42, %40 ], [ 1, %6 ]
  %15 = phi ptr [ %41, %40 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %13, i64 0, i32 1, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  %18 = load i32, ptr %17, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %48 [
    i16 24, label %40
    i16 25, label %40
    i16 23, label %20
  ], !prof !419

20:                                               ; preds = %11
  %21 = icmp eq i32 %14, 0
  br i1 %21, label %22, label %30, !prof !420

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !196
  %25 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 6, ptr noundef %24) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27, !prof !421

27:                                               ; preds = %22
  %28 = tail call i32 @side_effects_p(ptr noundef nonnull %15) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %32, !prof !422

30:                                               ; preds = %20
  %31 = icmp eq ptr %15, null
  br i1 %31, label %40, label %32, !prof !423

32:                                               ; preds = %27, %22, %30
  %33 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !196
  %35 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 6, ptr noundef %34) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37, !prof !424

37:                                               ; preds = %32
  %38 = tail call i32 @side_effects_p(ptr noundef nonnull %17) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48, !prof !425

40:                                               ; preds = %27, %30, %37, %11, %11
  %41 = phi ptr [ %15, %37 ], [ %15, %11 ], [ %15, %11 ], [ %17, %30 ], [ %17, %27 ]
  %42 = phi i32 [ 1, %37 ], [ %14, %11 ], [ %14, %11 ], [ 0, %30 ], [ 0, %27 ]
  %43 = add nuw nsw i64 %12, 1
  %44 = load ptr, ptr %7, align 8, !tbaa !196
  %45 = load i32, ptr %44, align 8, !tbaa !201
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %11, label %48, !prof !426, !llvm.loop !427

48:                                               ; preds = %40, %37, %32, %11, %6, %2
  %49 = phi ptr [ null, %2 ], [ null, %6 ], [ %41, %40 ], [ null, %37 ], [ null, %32 ], [ null, %11 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @find_reg_note(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #2 !prof !428 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !429

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1697, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %3, %5
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %42, !prof !430

11:                                               ; preds = %6
  %12 = icmp eq ptr %2, null
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = icmp eq ptr %14, null
  br i1 %12, label %16, label %27, !prof !431

16:                                               ; preds = %11
  br i1 %15, label %42, label %17, !prof !432

17:                                               ; preds = %16, %23
  %18 = phi ptr [ %25, %23 ], [ %14, %16 ]
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %42, label %23, !prof !433

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %17, !prof !434, !llvm.loop !435

27:                                               ; preds = %11
  br i1 %15, label %42, label %28, !prof !436

28:                                               ; preds = %27, %38
  %29 = phi ptr [ %40, %38 ], [ %14, %27 ]
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %38, !prof !437

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !196
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %42, label %38, !prof !438

38:                                               ; preds = %28, %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !prof !439, !llvm.loop !440

42:                                               ; preds = %34, %38, %17, %23, %27, %16, %6
  %43 = phi ptr [ null, %6 ], [ null, %16 ], [ null, %27 ], [ %18, %17 ], [ null, %23 ], [ %29, %34 ], [ null, %38 ]
  ret ptr %43
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @side_effects_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !441 {
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
  ], !prof !442

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
  br i1 %12, label %13, label %51, !prof !443

13:                                               ; preds = %1, %10
  %14 = zext nneg i32 %3 to i64
  %15 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !199
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !196
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %51, label %20, !prof !444

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = zext i8 %18 to i64
  br label %23

23:                                               ; preds = %20, %49
  %24 = phi i64 [ %22, %20 ], [ %25, %49 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !196
  switch i8 %27, label %49 [
    i8 101, label %35
    i8 69, label %28
  ], !prof !445

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %25
  %30 = load ptr, ptr %29, align 8, !tbaa !196
  %31 = load i32, ptr %30, align 8, !tbaa !201
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %49, !prof !446

33:                                               ; preds = %28
  %34 = zext nneg i32 %31 to i64
  br label %43

35:                                               ; preds = %23
  %36 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = tail call i32 @side_effects_p(ptr noundef %37) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %51, !prof !447

40:                                               ; preds = %43
  %41 = add nuw nsw i64 %44, 1
  %42 = icmp eq i64 %41, %34
  br i1 %42, label %49, label %43, !prof !448, !llvm.loop !449

43:                                               ; preds = %33, %40
  %44 = phi i64 [ 0, %33 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !199
  %47 = tail call i32 @side_effects_p(ptr noundef %46) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %40, label %51, !prof !450

49:                                               ; preds = %40, %28, %23, %35
  %50 = icmp sgt i64 %24, 1
  br i1 %50, label %23, label %51, !prof !451, !llvm.loop !452

51:                                               ; preds = %49, %35, %43, %13, %10, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %9, %5
  %52 = phi i32 [ 1, %9 ], [ %8, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %10 ], [ 0, %13 ], [ 1, %43 ], [ 0, %49 ], [ 1, %35 ]
  ret i32 %52
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @multiple_sets(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !453 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %33, !prof !454

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %33, !prof !455

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = load i32, ptr %14, align 8, !tbaa !201
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %33, !prof !456

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %31, %29 ]
  %21 = phi i32 [ 0, %17 ], [ %30, %29 ]
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !199
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %27, label %29, !prof !457

27:                                               ; preds = %19
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %29, label %33, !prof !458

29:                                               ; preds = %27, %19
  %30 = phi i32 [ %21, %19 ], [ 1, %27 ]
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %19, !prof !459, !llvm.loop !460

33:                                               ; preds = %27, %29, %12, %1, %6
  %34 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 0, %12 ], [ 1, %27 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @set_noop_p(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !461 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = load ptr, ptr %2, align 8, !tbaa !196
  %6 = load ptr, ptr @global_rtl, align 16, !tbaa !199
  %7 = icmp eq ptr %5, %6
  %8 = icmp eq ptr %4, %6
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %74, label %10, !prof !462

10:                                               ; preds = %1
  %11 = load i32, ptr %5, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %39 [
    i16 43, label %13
    i16 120, label %23
    i16 40, label %36
  ], !prof !463

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %39, !prof !464

17:                                               ; preds = %13
  %18 = tail call i32 @rtx_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %74, label %20, !prof !465

20:                                               ; preds = %17
  %21 = tail call i32 @side_effects_p(ptr noundef nonnull %5) #14
  %22 = icmp eq i32 %21, 0
  br label %74

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  %26 = tail call i32 @rtx_equal_p(ptr noundef %25, ptr noundef %4) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %74, label %28, !prof !466

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !196
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !199
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = tail call i32 @side_effects_p(ptr noundef %4) #14
  %35 = icmp eq i32 %34, 0
  br label %74

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !196
  br label %39

39:                                               ; preds = %10, %13, %36
  %40 = phi ptr [ %38, %36 ], [ %5, %13 ], [ %5, %10 ]
  %41 = load i32, ptr %4, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 39
  br i1 %43, label %44, label %60, !prof !467

44:                                               ; preds = %39
  %45 = load i32, ptr %40, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 39
  br i1 %47, label %48, label %60, !prof !468

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !196
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load i32, ptr %51, align 8, !tbaa !196
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %56 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !196
  %58 = load ptr, ptr %55, align 8, !tbaa !196
  %59 = load i32, ptr %57, align 8
  br label %60

60:                                               ; preds = %54, %44, %39
  %61 = phi i32 [ %59, %54 ], [ %41, %44 ], [ %41, %39 ]
  %62 = phi ptr [ %57, %54 ], [ %4, %44 ], [ %4, %39 ]
  %63 = phi ptr [ %58, %54 ], [ %40, %44 ], [ %40, %39 ]
  %64 = and i32 %61, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %74, !prof !469

66:                                               ; preds = %60
  %67 = load i32, ptr %63, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %74, !prof !470

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
define dso_local noundef i32 @noop_move_p(ptr noundef %0) local_unnamed_addr #2 !prof !471 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !196
  %6 = icmp eq i32 %5, 2147483647
  br i1 %6, label %48, label %7, !prof !472

7:                                                ; preds = %1
  %8 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %48, !prof !473

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %14, label %19, !prof !474

14:                                               ; preds = %10
  %15 = tail call i32 @set_noop_p(ptr noundef nonnull %3) #14, !range !308
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %48, !prof !475

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 8
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ %18, %17 ], [ %11, %10 ]
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %48, !prof !476

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  %26 = load i32, ptr %25, align 8, !tbaa !201
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48, !prof !477

28:                                               ; preds = %23, %42
  %29 = phi i32 [ %43, %42 ], [ %26, %23 ]
  %30 = phi ptr [ %44, %42 ], [ %25, %23 ]
  %31 = phi i64 [ %45, %42 ], [ 0, %23 ]
  %32 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !199
  %34 = load i32, ptr %33, align 8
  %35 = trunc i32 %34 to i16
  switch i16 %35, label %48 [
    i16 24, label %42
    i16 25, label %42
    i16 23, label %36
  ], !prof !478

36:                                               ; preds = %28
  %37 = tail call i32 @set_noop_p(ptr noundef nonnull %33) #14, !range !308
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39, !prof !479

39:                                               ; preds = %36
  %40 = load ptr, ptr %24, align 8, !tbaa !196
  %41 = load i32, ptr %40, align 8, !tbaa !201
  br label %42

42:                                               ; preds = %39, %28, %28
  %43 = phi i32 [ %41, %39 ], [ %29, %28 ], [ %29, %28 ]
  %44 = phi ptr [ %40, %39 ], [ %30, %28 ], [ %30, %28 ]
  %45 = add nuw nsw i64 %31, 1
  %46 = sext i32 %43 to i64
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %28, label %48, !prof !480, !llvm.loop !481

48:                                               ; preds = %42, %36, %28, %23, %19, %14, %7, %1
  %49 = phi i32 [ 1, %1 ], [ 0, %7 ], [ 1, %14 ], [ 0, %19 ], [ 1, %23 ], [ 1, %42 ], [ 0, %36 ], [ 0, %28 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_last_value(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !195 {
  %5 = load ptr, ptr %1, align 8, !tbaa !199
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !196
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
  %18 = load ptr, ptr %17, align 8, !tbaa !196
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
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %32) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = icmp eq ptr %29, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !196
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
  %50 = load ptr, ptr %49, align 8, !tbaa !196
  %51 = tail call i32 @modified_between_p(ptr noundef %47, ptr noundef %50, ptr noundef nonnull %2) #14, !range !308
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
  store ptr %13, ptr %1, align 8, !tbaa !199
  br label %69

62:                                               ; preds = %48, %57, %28, %24
  %63 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %13) #14, !range !308
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %12
  %66 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !196
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %12, !llvm.loop !482

69:                                               ; preds = %62, %12, %65, %4, %61
  %70 = phi ptr [ %47, %61 ], [ %0, %4 ], [ %0, %65 ], [ %0, %12 ], [ %0, %62 ]
  ret ptr %70
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 !prof !483 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %142, label %6, !prof !271

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
  ], !prof !484

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #14
  %14 = icmp eq i32 %13, 7
  %15 = and i32 %13, -5
  %16 = icmp eq i32 %15, 16
  %17 = or i1 %14, %16
  %18 = add i32 %0, -53
  %19 = icmp ult i32 %18, 5
  %20 = and i1 %19, %17
  br i1 %20, label %142, label %21, !prof !485

21:                                               ; preds = %12
  %22 = icmp ult i32 %13, %1
  br i1 %22, label %23, label %142, !prof !486

23:                                               ; preds = %21
  %24 = icmp ult i32 %13, 53
  br i1 %24, label %25, label %29, !prof !487

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
  %36 = load ptr, ptr %35, align 8, !tbaa !196
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %97, !prof !488

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #14
  %42 = icmp ult i32 %41, 53
  br i1 %42, label %43, label %97, !prof !489

43:                                               ; preds = %40
  %44 = tail call i32 @subreg_regno(ptr noundef nonnull %7) #14
  %45 = icmp ult i32 %44, 53
  br i1 %45, label %46, label %48, !prof !490

46:                                               ; preds = %43
  %47 = tail call i32 @subreg_nregs(ptr noundef nonnull %7) #14
  br label %48

48:                                               ; preds = %43, %46
  %49 = phi i32 [ %47, %46 ], [ 1, %43 ]
  %50 = add i32 %49, %44
  %51 = icmp ult i32 %44, %1
  %52 = icmp ugt i32 %50, %0
  %53 = select i1 %51, i1 %52, i1 false, !prof !490
  br label %142

54:                                               ; preds = %6, %6
  %55 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %56 = icmp eq ptr %55, %3
  br i1 %56, label %88, label %57, !prof !491

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !196
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 39
  br i1 %61, label %62, label %80, !prof !492

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %64 = icmp eq ptr %63, %3
  br i1 %64, label %84, label %65, !prof !493

65:                                               ; preds = %62
  %66 = load ptr, ptr %63, align 8, !tbaa !196
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %84, !prof !494

70:                                               ; preds = %65
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #14
  %72 = icmp ugt i32 %71, 52
  br i1 %72, label %73, label %84, !prof !494

73:                                               ; preds = %70
  %74 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %66, ptr noundef %3) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %142, !prof !495

76:                                               ; preds = %73
  %77 = load ptr, ptr %55, align 8, !tbaa !196
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  br label %80

80:                                               ; preds = %76, %57
  %81 = phi i32 [ %79, %76 ], [ %60, %57 ]
  %82 = phi ptr [ %77, %76 ], [ %58, %57 ]
  %83 = icmp eq i32 %81, 37
  br i1 %83, label %88, label %84, !prof !496

84:                                               ; preds = %62, %65, %70, %80
  %85 = phi ptr [ %82, %80 ], [ %58, %70 ], [ %58, %65 ], [ %58, %62 ]
  %86 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %85, ptr noundef %3) #14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %142, !prof !497

88:                                               ; preds = %84, %80, %54
  %89 = icmp eq i32 %9, 25
  %90 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = icmp eq ptr %90, %3
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %142, label %93, !prof !498

93:                                               ; preds = %115, %88
  %94 = phi ptr [ %90, %88 ], [ %105, %115 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !196
  %96 = icmp eq ptr %95, null
  br i1 %96, label %142, label %6, !prof !499

97:                                               ; preds = %6, %34, %40
  %98 = zext nneg i32 %9 to i64
  %99 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !199
  %101 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %98
  %102 = load i8, ptr %101, align 1, !tbaa !196
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %142, label %104, !prof !500

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %106 = zext i8 %102 to i64
  br label %107

107:                                              ; preds = %104, %140
  %108 = phi i64 [ %106, %104 ], [ %109, %140 ]
  %109 = add nsw i64 %108, -1
  %110 = getelementptr inbounds i8, ptr %100, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !196
  switch i8 %111, label %140 [
    i8 101, label %112
    i8 69, label %121
  ], !prof !501

112:                                              ; preds = %107
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %105, i64 0, i64 %109
  %114 = icmp eq ptr %113, %3
  br i1 %114, label %140, label %115, !prof !502

115:                                              ; preds = %112
  %116 = icmp eq i64 %109, 0
  br i1 %116, label %93, label %117, !prof !503

117:                                              ; preds = %115
  %118 = load ptr, ptr %113, align 8, !tbaa !196
  %119 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef %118, ptr noundef %3) #14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %140, label %142, !prof !504

121:                                              ; preds = %107
  %122 = getelementptr inbounds [1 x %union.rtunion_def], ptr %105, i64 0, i64 %109
  %123 = load ptr, ptr %122, align 8, !tbaa !196
  %124 = load i32, ptr %123, align 8, !tbaa !201
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %140, label %126, !prof !505

126:                                              ; preds = %121
  %127 = zext nneg i32 %124 to i64
  br label %128

128:                                              ; preds = %126, %138
  %129 = phi i64 [ %127, %126 ], [ %130, %138 ]
  %130 = add nsw i64 %129, -1
  %131 = load ptr, ptr %122, align 8, !tbaa !196
  %132 = getelementptr inbounds %struct.rtvec_def, ptr %131, i64 0, i32 1, i64 %130
  %133 = icmp eq ptr %132, %3
  br i1 %133, label %138, label %134, !prof !506

134:                                              ; preds = %128
  %135 = load ptr, ptr %132, align 8, !tbaa !199
  %136 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef %135, ptr noundef %3) #14
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142, !prof !507

138:                                              ; preds = %128, %134
  %139 = icmp ult i64 %129, 2
  br i1 %139, label %140, label %128, !prof !508, !llvm.loop !509

140:                                              ; preds = %138, %121, %107, %112, %117
  %141 = icmp sgt i64 %108, 1
  br i1 %141, label %107, label %142, !prof !510, !llvm.loop !511

142:                                              ; preds = %93, %84, %73, %88, %97, %117, %140, %134, %4, %21, %31, %12, %48
  %143 = phi i1 [ %53, %48 ], [ true, %12 ], [ false, %21 ], [ %33, %31 ], [ false, %4 ], [ true, %134 ], [ true, %117 ], [ false, %140 ], [ false, %97 ], [ false, %93 ], [ true, %84 ], [ true, %73 ], [ false, %88 ]
  %144 = zext i1 %143 to i32
  ret i32 %144
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_regno(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !512 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #14
  %5 = load i32, ptr %3, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load i32, ptr %8, align 8, !tbaa !196
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = tail call i32 @subreg_regno_offset(i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %12) #14
  %14 = add i32 %13, %4
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_nregs(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !513 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #14
  %5 = tail call i32 @subreg_nregs_with_regno(i32 noundef %4, ptr noundef %0) #14
  ret i32 %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @note_uses(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !514 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi ptr [ %0, %3 ], [ %11, %9 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !199
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
  ], !prof !515

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %10, ptr noundef %2) #15
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %4

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = load i32, ptr %14, align 8, !tbaa !201
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %102, !prof !516

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %18, %17 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %13, align 8, !tbaa !196
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %21
  tail call void @note_uses(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2) #14
  %24 = icmp ugt i64 %20, 1
  br i1 %24, label %19, label %102, !prof !517, !llvm.loop !518

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !196
  %28 = load i32, ptr %27, align 8, !tbaa !201
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr %26, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !199
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1
  tail call void @note_uses(ptr noundef nonnull %38, ptr noundef %1, ptr noundef %2) #14
  %39 = icmp ugt i64 %33, 1
  br i1 %39, label %32, label %102, !llvm.loop !519

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !196
  %45 = load i32, ptr %44, align 8, !tbaa !201
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %42
  %48 = zext nneg i32 %45 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %48, %47 ], [ %51, %49 ]
  %51 = add nsw i64 %50, -1
  %52 = load ptr, ptr %43, align 8, !tbaa !196
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %51
  tail call void %1(ptr noundef nonnull %53, ptr noundef %2) #15
  %54 = icmp ugt i64 %50, 1
  br i1 %54, label %49, label %102, !llvm.loop !520

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

57:                                               ; preds = %4
  %58 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %100

59:                                               ; preds = %4, %4
  %60 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !196
  %62 = load i32, ptr %61, align 8, !tbaa !201
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = zext nneg i32 %62 to i64
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %65, %64 ], [ %68, %66 ]
  %68 = add nsw i64 %67, -1
  %69 = load ptr, ptr %60, align 8, !tbaa !196
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %68
  tail call void %1(ptr noundef nonnull %70, ptr noundef %2) #15
  %71 = icmp ugt i64 %67, 1
  br i1 %71, label %66, label %102, !llvm.loop !521

72:                                               ; preds = %4
  %73 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !196
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %78, label %102, !prof !522

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  br label %100

80:                                               ; preds = %4
  %81 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !196
  %83 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %1(ptr noundef nonnull %83, ptr noundef %2) #15
  %84 = load i32, ptr %82, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 120
  br i1 %86, label %87, label %90, !prof !523

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
  ], !prof !524

95:                                               ; preds = %91, %91
  %96 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !196
  br label %91, !llvm.loop !525

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
define dso_local noundef i32 @dead_or_set_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !526 {
  %3 = load i32, ptr %1, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %5 [
    i16 46, label %26
    i16 37, label %6
  ], !prof !527

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1585, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %8 = icmp ult i32 %7, 53
  br i1 %8, label %9, label %14, !prof !528

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
  br i1 %18, label %22, label %26, !prof !529

19:                                               ; preds = %22
  %20 = add i32 %23, 1
  %21 = icmp eq i32 %20, %17
  br i1 %21, label %26, label %22, !prof !530, !llvm.loop !531

22:                                               ; preds = %16, %19
  %23 = phi i32 [ %20, %19 ], [ %7, %16 ]
  %24 = tail call i32 @dead_or_set_regno_p(ptr noundef %0, i32 noundef %23) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %19, !prof !532

26:                                               ; preds = %22, %19, %16, %2
  %27 = phi i32 [ 1, %2 ], [ 1, %16 ], [ 0, %22 ], [ 1, %19 ]
  ret i32 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dead_or_set_regno_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 !prof !526 {
  %3 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %61, !prof !533

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %12, !prof !534

9:                                                ; preds = %5
  %10 = tail call i32 @find_regno_fusage(ptr noundef nonnull %0, i32 noundef 25, i32 noundef %1) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %61, !prof !535

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 14
  br i1 %17, label %18, label %22, !prof !536

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = load i32, ptr %20, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %21, %18 ], [ %15, %12 ]
  %24 = phi ptr [ %20, %18 ], [ %14, %12 ]
  %25 = trunc i32 %23 to i16
  switch i16 %25, label %61 [
    i16 23, label %26
    i16 15, label %31
  ], !prof !537

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !196
  %29 = tail call fastcc zeroext i8 @covers_regno_p(ptr noundef %28, i32 noundef %1) #14
  %30 = zext i8 %29 to i32
  br label %61

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = load i32, ptr %33, align 8, !tbaa !201
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %61, label %36, !prof !538

36:                                               ; preds = %31
  %37 = zext nneg i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %59
  %39 = phi i64 [ %37, %36 ], [ %40, %59 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 14
  br i1 %45, label %46, label %50, !prof !539

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !196
  %49 = load i32, ptr %48, align 8
  br label %50

50:                                               ; preds = %46, %38
  %51 = phi i32 [ %49, %46 ], [ %43, %38 ]
  %52 = phi ptr [ %48, %46 ], [ %42, %38 ]
  %53 = trunc i32 %51 to i16
  switch i16 %53, label %59 [
    i16 23, label %54
    i16 25, label %54
  ], !prof !540

54:                                               ; preds = %50, %50
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !196
  %57 = tail call fastcc zeroext i8 @covers_regno_p(ptr noundef %56, i32 noundef %1) #14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61, !prof !541

59:                                               ; preds = %50, %54
  %60 = icmp ult i64 %39, 2
  br i1 %60, label %61, label %38, !prof !542, !llvm.loop !543

61:                                               ; preds = %54, %59, %31, %22, %9, %2, %26
  %62 = phi i32 [ %30, %26 ], [ 1, %2 ], [ 1, %9 ], [ 0, %22 ], [ 0, %31 ], [ 1, %54 ], [ 0, %59 ]
  ret i32 %62
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @find_regno_note(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !544 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %42, !prof !545

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !196
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12, !prof !546

12:                                               ; preds = %8, %38
  %13 = phi ptr [ %40, %38 ], [ %10, %8 ]
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %38, !prof !547

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %38, !prof !548

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #14
  %26 = icmp ugt i32 %25, %2
  br i1 %26, label %38, label %27, !prof !549

27:                                               ; preds = %24
  %28 = icmp ult i32 %25, 53
  br i1 %28, label %29, label %33, !prof !550

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
  br i1 %37, label %42, label %38, !prof !551

38:                                               ; preds = %12, %18, %24, %35
  %39 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %12, !prof !552, !llvm.loop !553

42:                                               ; preds = %35, %38, %8, %3
  %43 = phi ptr [ null, %3 ], [ null, %8 ], [ %13, %35 ], [ null, %38 ]
  ret ptr %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @find_regno_fusage(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !554 {
  %4 = icmp ugt i32 %2, 52
  br i1 %4, label %38, label %5, !prof !555

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %38, !prof !556

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !196
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13, !prof !557

13:                                               ; preds = %9, %34
  %14 = phi ptr [ %36, %34 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %34, !prof !558

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %34, !prof !559

26:                                               ; preds = %20
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %22) #14
  %28 = icmp ugt i32 %27, %2
  br i1 %28, label %34, label %29, !prof !560

29:                                               ; preds = %26
  %30 = lshr i32 %23, 16
  %31 = and i32 %30, 255
  %32 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %27) #14
  %33 = icmp ugt i32 %32, %2
  br i1 %33, label %38, label %34, !prof !561

34:                                               ; preds = %29, %26, %20, %13
  %35 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !196
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %13, !prof !562, !llvm.loop !563

38:                                               ; preds = %29, %34, %9, %3, %5
  %39 = phi i32 [ 0, %5 ], [ 0, %3 ], [ 0, %9 ], [ 1, %29 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @covers_regno_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !564 !PGOFuncName !565 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %26, !prof !566

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = load i32, ptr %8, align 8, !tbaa !201
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = zext nneg i32 %9 to i64
  br label %13

13:                                               ; preds = %11, %24
  %14 = phi i64 [ %12, %11 ], [ %15, %24 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %19, i32 noundef %1) #14, !range !360
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %13
  %25 = icmp ugt i64 %14, 1
  br i1 %25, label %13, label %28, !llvm.loop !567

26:                                               ; preds = %2
  %27 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %0, i32 noundef %1) #14, !range !360
  br label %28

28:                                               ; preds = %24, %21, %6, %26
  %29 = phi i8 [ %27, %26 ], [ 0, %6 ], [ 0, %24 ], [ 1, %21 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @covers_regno_no_parallel_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !564 !PGOFuncName !568 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %28, !prof !569

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !196
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %12, 3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !196
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, 3
  %24 = xor i32 %23, %13
  %25 = icmp ult i32 %24, 4
  %26 = select i1 %25, i32 %16, i32 %3
  %27 = select i1 %25, ptr %15, ptr %0, !prof !570
  br label %28

28:                                               ; preds = %6, %2
  %29 = phi i32 [ %3, %2 ], [ %26, %6 ]
  %30 = phi ptr [ %0, %2 ], [ %27, %6 ]
  %31 = and i32 %29, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %48, !prof !571

33:                                               ; preds = %28
  %34 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %30) #14
  %35 = icmp ult i32 %34, 53
  br i1 %35, label %36, label %40, !prof !572

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
  %46 = select i1 %44, i1 %45, i1 false, !prof !573
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %28, %42
  %49 = phi i8 [ %47, %42 ], [ 0, %28 ]
  ret i8 %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @find_reg_equal_equiv_note(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !574 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %31, !prof !575

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !576

10:                                               ; preds = %6, %27
  %11 = phi ptr [ %29, %27 ], [ %8, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = add nsw i32 %14, -3
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %27, !prof !577

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %26, !prof !578

23:                                               ; preds = %17
  %24 = tail call i32 @multiple_sets(ptr noundef nonnull %0) #14, !range !308
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31, !prof !579

26:                                               ; preds = %23, %17
  br label %31

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !prof !580, !llvm.loop !581

31:                                               ; preds = %27, %6, %1, %23, %26
  %32 = phi ptr [ %11, %26 ], [ null, %1 ], [ null, %23 ], [ null, %6 ], [ null, %27 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @find_constant_src(ptr noundef %0) local_unnamed_addr #2 !prof !582 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %26, !prof !583

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %15, label %12, !prof !584

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15, !prof !585

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = tail call ptr @avoid_constant_pool_reference(ptr noundef %18) #15
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !229
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %39, label %26, !prof !586

26:                                               ; preds = %1, %15, %12
  %27 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29, !prof !587

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !196
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !229
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %39, label %38, !prof !588

38:                                               ; preds = %29, %26
  br label %39

39:                                               ; preds = %29, %15, %38
  %40 = phi ptr [ null, %38 ], [ %19, %15 ], [ %31, %29 ]
  ret ptr %40
}

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_reg_note(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !589 {
  %4 = add i32 %0, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %12, !prof !590

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
define dso_local void @add_reg_note(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !591 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = tail call ptr @alloc_reg_note(i32 noundef %1, ptr noundef %2, ptr noundef %5) #14
  store ptr %6, ptr %4, align 8, !tbaa !196
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_note(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 !prof !592 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4, !prof !593

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %17, label %8, !prof !594

8:                                                ; preds = %4, %11
  %9 = phi ptr [ %13, %11 ], [ %6, %4 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !595

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !196
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %8, !prof !596, !llvm.loop !597

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %17

17:                                               ; preds = %4, %15
  %18 = phi ptr [ %16, %15 ], [ %5, %4 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  store ptr %20, ptr %18, align 8, !tbaa !196
  br label %21

21:                                               ; preds = %8, %17
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i8
  %25 = add i8 %24, -3
  %26 = icmp ult i8 %25, 2
  br i1 %26, label %27, label %28, !prof !598

27:                                               ; preds = %21
  tail call void @df_notes_rescan(ptr noundef %0) #15
  br label %28

28:                                               ; preds = %27, %21, %2
  ret void
}

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_reg_equal_equiv_notes(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !195 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !199
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
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  br i1 %12, label %15, label %16

15:                                               ; preds = %5
  store ptr %14, ptr %7, align 8, !tbaa !199
  br label %16

16:                                               ; preds = %5, %15
  %17 = phi ptr [ %7, %15 ], [ %13, %5 ]
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %5, !llvm.loop !599

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @in_expr_list_p(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 !prof !600 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !601

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !196
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !602, !llvm.loop !603

13:                                               ; preds = %4, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 0, %9 ], [ 1, %4 ]
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_node_from_expr_list(ptr noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !604 {
  %3 = load ptr, ptr %1, align 8, !tbaa !196
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5, !prof !605

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %21

9:                                                ; preds = %21
  %10 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !196
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %21, !llvm.loop !606

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %3, %5 ], [ %24, %9 ]
  %15 = phi ptr [ null, %5 ], [ %22, %9 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = select i1 %16, ptr %1, ptr %19
  store ptr %18, ptr %20, align 8, !tbaa !196
  br label %26

21:                                               ; preds = %5, %9
  %22 = phi ptr [ %24, %9 ], [ %3, %5 ]
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !196
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !prof !602, !llvm.loop !606

26:                                               ; preds = %21, %13, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @volatile_insn_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !607 {
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
  ], !prof !608

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1, %1
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1, %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !196
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16, !prof !609

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %45
  %20 = phi i64 [ %18, %16 ], [ %21, %45 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !196
  switch i8 %23, label %45 [
    i8 101, label %31
    i8 69, label %24
  ], !prof !610

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !196
  %27 = load i32, ptr %26, align 8, !tbaa !201
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %45, !prof !611

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  br label %39

31:                                               ; preds = %19
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = tail call i32 @volatile_insn_p(ptr noundef %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %47, !prof !612

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %45, label %39, !prof !613, !llvm.loop !614

39:                                               ; preds = %29, %36
  %40 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  %43 = tail call i32 @volatile_insn_p(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %47, !prof !615

45:                                               ; preds = %36, %24, %19, %31
  %46 = icmp sgt i64 %20, 1
  br i1 %46, label %19, label %47, !prof !616, !llvm.loop !617

47:                                               ; preds = %45, %31, %39, %9, %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %5
  %48 = phi i32 [ 1, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %6 ], [ 0, %9 ], [ 1, %39 ], [ 1, %31 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @volatile_refs_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !618 {
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
  ], !prof !619

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1, %1, %1
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %47, !prof !620

9:                                                ; preds = %1, %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !196
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16, !prof !621

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %45
  %20 = phi i64 [ %18, %16 ], [ %21, %45 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !196
  switch i8 %23, label %45 [
    i8 101, label %31
    i8 69, label %24
  ], !prof !622

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !196
  %27 = load i32, ptr %26, align 8, !tbaa !201
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %45, !prof !623

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  br label %39

31:                                               ; preds = %19
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = tail call i32 @volatile_refs_p(ptr noundef %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %47, !prof !624

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %45, label %39, !prof !625, !llvm.loop !626

39:                                               ; preds = %29, %36
  %40 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  %43 = tail call i32 @volatile_refs_p(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %47, !prof !627

45:                                               ; preds = %36, %24, %19, %31
  %46 = icmp sgt i64 %20, 1
  br i1 %46, label %19, label %47, !prof !628, !llvm.loop !629

47:                                               ; preds = %45, %31, %39, %9, %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %5
  %48 = phi i32 [ 1, %5 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %6 ], [ 0, %9 ], [ 1, %39 ], [ 1, %31 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_p_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !630 {
  %3 = icmp ne i32 %1, 0
  %4 = icmp eq ptr %0, null
  br i1 %4, label %377, label %5, !prof !631

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
  ], !prof !632

9:                                                ; preds = %5, %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 63), align 8, !tbaa !633
  %11 = tail call i32 %10(ptr noundef nonnull %0, i32 noundef %1) #15
  br label %377

12:                                               ; preds = %5, %5
  br label %377

13:                                               ; preds = %5
  %14 = lshr i32 %6, 27
  %15 = and i32 %14, 1
  br label %377

16:                                               ; preds = %5
  %17 = load i32, ptr @flag_stack_check, align 4, !tbaa !229
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19, !prof !645

19:                                               ; preds = %16
  %20 = and i32 %6, 134217728
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !196
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !199
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %377, label %27

27:                                               ; preds = %22, %19, %16
  %28 = and i32 %6, 33554432
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %3, %29
  br i1 %30, label %31, label %377, !prof !646

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !196
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !647

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !648
  %39 = icmp eq ptr %38, null
  br i1 %39, label %72, label %54, !prof !650

40:                                               ; preds = %31
  %41 = lshr i32 %6, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %72, label %44, !prof !651

44:                                               ; preds = %40
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !196
  %48 = zext i8 %47 to i64
  %49 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %48) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %72, label %51, !prof !652

51:                                               ; preds = %44
  %52 = load ptr, ptr %33, align 8, !tbaa !196
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !653

54:                                               ; preds = %36, %51
  %55 = phi ptr [ %52, %51 ], [ %34, %36 ]
  %56 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !648
  br label %68

58:                                               ; preds = %51
  %59 = load i32, ptr %0, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = icmp ne i32 %61, 1
  tail call void @llvm.assume(i1 %62)
  %63 = zext nneg i32 %61 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !196
  %66 = zext i8 %65 to i64
  %67 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %66) #15
  br label %68

68:                                               ; preds = %58, %54
  %69 = phi ptr [ %57, %54 ], [ %67, %58 ]
  %70 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !196
  br label %72

72:                                               ; preds = %36, %44, %40, %68
  %73 = phi i64 [ %71, %68 ], [ 0, %40 ], [ 0, %44 ], [ 0, %36 ]
  %74 = load ptr, ptr %32, align 8, !tbaa !196
  %75 = load i32, ptr %0, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %74, i64 noundef 0, i64 noundef %73, i32 noundef %77) #14
  br label %377

79:                                               ; preds = %5, %5, %5, %5
  %80 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !229
  %81 = icmp eq i32 %80, 0
  %82 = lshr i32 %6, 16
  %83 = and i32 %82, 255
  %84 = zext nneg i32 %83 to i64
  br i1 %81, label %107, label %85, !prof !654

85:                                               ; preds = %79
  %86 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %84
  %87 = load i8, ptr %86, align 1, !tbaa !196
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
  %93 = load i8, ptr %92, align 1, !tbaa !196
  %94 = zext i8 %93 to i32
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i32 [ %83, %88 ], [ %94, %91 ]
  %97 = add nsw i32 %96, -38
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !199
  %101 = getelementptr inbounds %struct.real_format, ptr %100, i64 0, i32 11
  %102 = load i8, ptr %101, align 2, !tbaa !655
  %103 = icmp eq i8 %102, 0
  %104 = load i32, ptr @flag_finite_math_only, align 4
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %377

107:                                              ; preds = %79, %85, %95
  %108 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %84
  %109 = load i8, ptr %108, align 1, !tbaa !196
  %110 = and i8 %109, -2
  %111 = icmp eq i8 %110, 8
  br i1 %111, label %112, label %114, !prof !657

112:                                              ; preds = %107
  %113 = load i32, ptr @flag_trapping_math, align 4, !tbaa !229
  br label %377

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !196
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65535
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !229
  %122 = icmp eq i32 %121, 9
  br i1 %122, label %123, label %377, !prof !658

123:                                              ; preds = %114
  %124 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !199
  %125 = icmp eq ptr %116, %124
  br i1 %125, label %377, label %337

126:                                              ; preds = %5
  br label %377

127:                                              ; preds = %5, %5, %5, %5, %5, %5
  %128 = load i32, ptr @flag_trapping_math, align 4, !tbaa !229
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %337, label %130, !prof !659

130:                                              ; preds = %127
  %131 = lshr i32 %6, 16
  %132 = and i32 %131, 255
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !196
  switch i8 %135, label %155 [
    i8 8, label %136
    i8 9, label %136
    i8 11, label %136
    i8 17, label %136
  ], !prof !660

136:                                              ; preds = %130, %130, %130, %130
  %137 = and i8 %135, -2
  %138 = icmp eq i8 %137, 8
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %133
  %141 = load i8, ptr %140, align 1, !tbaa !196
  %142 = zext i8 %141 to i32
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i32 [ %132, %136 ], [ %142, %139 ]
  %145 = add nsw i32 %144, -38
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !199
  %149 = getelementptr inbounds %struct.real_format, ptr %148, i64 0, i32 11
  %150 = load i8, ptr %149, align 2, !tbaa !655
  %151 = icmp eq i8 %150, 0
  %152 = load i32, ptr @flag_finite_math_only, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %155, label %377

155:                                              ; preds = %130, %143
  %156 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !196
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !196
  switch i8 %163, label %183 [
    i8 8, label %164
    i8 9, label %164
    i8 11, label %164
    i8 17, label %164
  ], !prof !661

164:                                              ; preds = %155, %155, %155, %155
  %165 = and i8 %163, -2
  %166 = icmp eq i8 %165, 8
  br i1 %166, label %171, label %167, !prof !477

167:                                              ; preds = %164
  %168 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %161
  %169 = load i8, ptr %168, align 1, !tbaa !196
  %170 = zext i8 %169 to i32
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i32 [ %160, %164 ], [ %170, %167 ]
  %173 = add nsw i32 %172, -38
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !199
  %177 = getelementptr inbounds %struct.real_format, ptr %176, i64 0, i32 11
  %178 = load i8, ptr %177, align 2, !tbaa !655
  %179 = icmp eq i8 %178, 0
  %180 = load i32, ptr @flag_finite_math_only, align 4
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %183, label %377, !prof !662

183:                                              ; preds = %155, %171
  %184 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !196
  %186 = load i32, ptr %185, align 8
  %187 = lshr i32 %186, 16
  %188 = and i32 %187, 255
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !196
  switch i8 %191, label %337 [
    i8 8, label %192
    i8 9, label %192
    i8 11, label %192
    i8 17, label %192
  ], !prof !663

192:                                              ; preds = %183, %183, %183, %183
  %193 = and i8 %191, -2
  %194 = icmp eq i8 %193, 8
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %189
  %197 = load i8, ptr %196, align 1, !tbaa !196
  %198 = zext i8 %197 to i32
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %188, %192 ], [ %198, %195 ]
  %201 = add nsw i32 %200, -38
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !199
  %205 = getelementptr inbounds %struct.real_format, ptr %204, i64 0, i32 11
  %206 = load i8, ptr %205, align 2, !tbaa !655
  %207 = icmp eq i8 %206, 0
  %208 = load i32, ptr @flag_finite_math_only, align 4
  %209 = icmp ne i32 %208, 0
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %337, label %377

211:                                              ; preds = %5, %5
  %212 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !229
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %337, label %214, !prof !664

214:                                              ; preds = %211
  %215 = lshr i32 %6, 16
  %216 = and i32 %215, 255
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !196
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
  %225 = load i8, ptr %224, align 1, !tbaa !196
  %226 = zext i8 %225 to i32
  br label %227

227:                                              ; preds = %223, %220
  %228 = phi i32 [ %216, %220 ], [ %226, %223 ]
  %229 = add nsw i32 %228, -38
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !199
  %233 = getelementptr inbounds %struct.real_format, ptr %232, i64 0, i32 11
  %234 = load i8, ptr %233, align 2, !tbaa !655
  %235 = icmp eq i8 %234, 0
  %236 = load i32, ptr @flag_finite_math_only, align 4
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %235, i1 true, i1 %237
  br i1 %238, label %239, label %377

239:                                              ; preds = %214, %227
  %240 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !196
  %242 = load i32, ptr %241, align 8
  %243 = lshr i32 %242, 16
  %244 = and i32 %243, 255
  %245 = zext nneg i32 %244 to i64
  %246 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !196
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
  %253 = load i8, ptr %252, align 1, !tbaa !196
  %254 = zext i8 %253 to i32
  br label %255

255:                                              ; preds = %251, %248
  %256 = phi i32 [ %244, %248 ], [ %254, %251 ]
  %257 = add nsw i32 %256, -38
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !199
  %261 = getelementptr inbounds %struct.real_format, ptr %260, i64 0, i32 11
  %262 = load i8, ptr %261, align 2, !tbaa !655
  %263 = icmp eq i8 %262, 0
  %264 = load i32, ptr @flag_finite_math_only, align 4
  %265 = icmp ne i32 %264, 0
  %266 = select i1 %263, i1 true, i1 %265
  br i1 %266, label %267, label %377

267:                                              ; preds = %239, %255
  %268 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !196
  %270 = load i32, ptr %269, align 8
  %271 = lshr i32 %270, 16
  %272 = and i32 %271, 255
  %273 = zext nneg i32 %272 to i64
  %274 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !196
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
  %281 = load i8, ptr %280, align 1, !tbaa !196
  %282 = zext i8 %281 to i32
  br label %283

283:                                              ; preds = %279, %276
  %284 = phi i32 [ %272, %276 ], [ %282, %279 ]
  %285 = add nsw i32 %284, -38
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !199
  %289 = getelementptr inbounds %struct.real_format, ptr %288, i64 0, i32 11
  %290 = load i8, ptr %289, align 2, !tbaa !655
  %291 = icmp eq i8 %290, 0
  %292 = load i32, ptr @flag_finite_math_only, align 4
  %293 = icmp ne i32 %292, 0
  %294 = select i1 %291, i1 true, i1 %293
  br i1 %294, label %337, label %377

295:                                              ; preds = %5
  %296 = load i32, ptr @flag_trapping_math, align 4, !tbaa !229
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %337, label %298, !prof !665

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !196
  %301 = load i32, ptr %300, align 8
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !196
  switch i8 %306, label %337 [
    i8 8, label %307
    i8 9, label %307
    i8 11, label %307
    i8 17, label %307
  ], !prof !666

307:                                              ; preds = %298, %298, %298, %298
  %308 = and i8 %306, -2
  %309 = icmp eq i8 %308, 8
  br i1 %309, label %314, label %310, !prof !667

310:                                              ; preds = %307
  %311 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %304
  %312 = load i8, ptr %311, align 1, !tbaa !196
  %313 = zext i8 %312 to i32
  br label %314

314:                                              ; preds = %310, %307
  %315 = phi i32 [ %303, %307 ], [ %313, %310 ]
  %316 = add nsw i32 %315, -38
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !199
  %320 = getelementptr inbounds %struct.real_format, ptr %319, i64 0, i32 11
  %321 = load i8, ptr %320, align 2, !tbaa !655
  %322 = icmp eq i8 %321, 0
  %323 = load i32, ptr @flag_finite_math_only, align 4
  %324 = icmp ne i32 %323, 0
  %325 = select i1 %322, i1 true, i1 %324
  br i1 %325, label %337, label %377, !prof !668

326:                                              ; preds = %5
  %327 = lshr i32 %6, 16
  %328 = and i32 %327, 255
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !196
  %332 = and i8 %331, -2
  %333 = icmp eq i8 %332, 8
  br i1 %333, label %334, label %337, !prof !669

334:                                              ; preds = %326
  %335 = load i32, ptr @flag_trapping_math, align 4, !tbaa !229
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %377, !prof !670

337:                                              ; preds = %211, %326, %298, %267, %183, %334, %5, %5, %5, %295, %314, %283, %199, %127, %123
  %338 = zext nneg i32 %7 to i64
  %339 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !199
  %341 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %338
  %342 = load i8, ptr %341, align 1, !tbaa !196
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %377, label %344, !prof !671

344:                                              ; preds = %337
  %345 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %346 = zext i8 %342 to i64
  br label %347

347:                                              ; preds = %344, %375
  %348 = phi i64 [ %346, %344 ], [ %349, %375 ]
  %349 = add nsw i64 %348, -1
  %350 = getelementptr inbounds i8, ptr %340, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !196
  switch i8 %351, label %375 [
    i8 101, label %357
    i8 69, label %352
  ], !prof !672

352:                                              ; preds = %347
  %353 = getelementptr inbounds [1 x %union.rtunion_def], ptr %345, i64 0, i64 %349
  %354 = load ptr, ptr %353, align 8, !tbaa !196
  %355 = load i32, ptr %354, align 8, !tbaa !201
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %368, label %375, !prof !673

357:                                              ; preds = %347
  %358 = getelementptr inbounds [1 x %union.rtunion_def], ptr %345, i64 0, i64 %349
  %359 = load ptr, ptr %358, align 8, !tbaa !196
  %360 = tail call i32 @may_trap_p_1(ptr noundef %359, i32 noundef %1) #14
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %375, label %377, !prof !674

362:                                              ; preds = %368
  %363 = add nuw nsw i64 %369, 1
  %364 = load ptr, ptr %353, align 8, !tbaa !196
  %365 = load i32, ptr %364, align 8, !tbaa !201
  %366 = sext i32 %365 to i64
  %367 = icmp slt i64 %363, %366
  br i1 %367, label %368, label %375, !prof !675, !llvm.loop !676

368:                                              ; preds = %352, %362
  %369 = phi i64 [ %363, %362 ], [ 0, %352 ]
  %370 = phi ptr [ %364, %362 ], [ %354, %352 ]
  %371 = getelementptr inbounds %struct.rtvec_def, ptr %370, i64 0, i32 1, i64 %369
  %372 = load ptr, ptr %371, align 8, !tbaa !199
  %373 = tail call i32 @may_trap_p_1(ptr noundef %372, i32 noundef %1) #14
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %362, label %377, !prof !677

375:                                              ; preds = %362, %352, %347, %357
  %376 = icmp sgt i64 %348, 1
  br i1 %376, label %347, label %377, !prof !678, !llvm.loop !679

377:                                              ; preds = %357, %375, %368, %337, %27, %334, %314, %255, %283, %227, %171, %199, %143, %114, %123, %95, %22, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %2, %126, %112, %72, %13, %12, %9
  %378 = phi i32 [ 1, %126 ], [ %113, %112 ], [ %78, %72 ], [ %15, %13 ], [ 1, %12 ], [ %11, %9 ], [ 0, %2 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 1, %22 ], [ 1, %95 ], [ 1, %123 ], [ 1, %114 ], [ 1, %143 ], [ 1, %199 ], [ 1, %171 ], [ 1, %227 ], [ 1, %283 ], [ 1, %255 ], [ 1, %314 ], [ 1, %334 ], [ 0, %27 ], [ 0, %337 ], [ 1, %368 ], [ 1, %357 ], [ 0, %375 ]
  ret i32 %378
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_p(ptr noundef %0) local_unnamed_addr #2 !prof !680 {
  %2 = tail call i32 @may_trap_p_1(ptr noundef %0, i32 noundef 0) #14
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @may_trap_or_fault_p(ptr noundef %0) local_unnamed_addr #2 !prof !681 {
  %2 = tail call i32 @may_trap_p_1(ptr noundef %0, i32 noundef 1) #14
  ret i32 %2
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inequality_comparisons_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !195 {
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
  %9 = load i8, ptr %8, align 1, !tbaa !196
  %10 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !199
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = zext i8 %9 to i64
  br label %16

16:                                               ; preds = %13, %40
  %17 = phi i64 [ 0, %13 ], [ %41, %40 ]
  %18 = getelementptr inbounds i8, ptr %11, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !196
  switch i8 %19, label %40 [
    i8 101, label %20
    i8 69, label %25
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = tail call i32 @inequality_comparisons_p(ptr noundef %22) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %43

25:                                               ; preds = %16
  %26 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %17
  %27 = load ptr, ptr %26, align 8, !tbaa !196
  %28 = load i32, ptr %27, align 8, !tbaa !201
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
  %37 = load ptr, ptr %36, align 8, !tbaa !199
  %38 = tail call i32 @inequality_comparisons_p(ptr noundef %37) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %30, label %43, !llvm.loop !682

40:                                               ; preds = %30, %16, %20
  %41 = add nuw nsw i64 %17, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %43, label %16, !llvm.loop !683

43:                                               ; preds = %20, %40, %34, %5, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %44 = phi i32 [ 1, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %5 ], [ 1, %34 ], [ 1, %20 ], [ 0, %40 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !684 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5, !prof !685

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %94, label %12, !prof !685

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  %11 = select i1 %10, ptr %2, ptr null, !prof !686
  br label %94

12:                                               ; preds = %5
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %94, label %14, !prof !686

14:                                               ; preds = %12
  %15 = trunc i32 %6 to i16
  switch i16 %15, label %56 [
    i16 39, label %16
    i16 99, label %37
  ], !prof !687

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = tail call ptr @replace_rtx(ptr noundef %18, ptr noundef %1, ptr noundef %2) #14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 30
  br i1 %22, label %23, label %36, !prof !688

23:                                               ; preds = %16
  %24 = load i32, ptr %0, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = load ptr, ptr %17, align 8, !tbaa !196
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load i32, ptr %31, align 8, !tbaa !196
  %33 = tail call ptr @simplify_subreg(i32 noundef %26, ptr noundef nonnull %19, i32 noundef %30, i32 noundef %32) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %94

35:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2509, ptr noundef nonnull @.str.1) #15
  br label %94

36:                                               ; preds = %16
  store ptr %19, ptr %17, align 8, !tbaa !196
  br label %94

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !196
  %40 = tail call ptr @replace_rtx(ptr noundef %39, ptr noundef %1, ptr noundef %2) #14
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 30
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i32, ptr %0, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = load ptr, ptr %38, align 8, !tbaa !196
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
  store ptr %40, ptr %38, align 8, !tbaa !196
  br label %94

56:                                               ; preds = %14
  %57 = zext nneg i32 %7 to i64
  %58 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !199
  %60 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %57
  %61 = load i8, ptr %60, align 1, !tbaa !196
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %94, label %63, !prof !689

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %65 = zext i8 %61 to i64
  br label %66

66:                                               ; preds = %63, %92
  %67 = phi i64 [ %65, %63 ], [ %68, %92 ]
  %68 = add nsw i64 %67, -1
  %69 = getelementptr inbounds i8, ptr %59, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !196
  switch i8 %70, label %92 [
    i8 101, label %71
    i8 69, label %75
  ], !prof !690

71:                                               ; preds = %66
  %72 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %68
  %73 = load ptr, ptr %72, align 8, !tbaa !196
  %74 = tail call ptr @replace_rtx(ptr noundef %73, ptr noundef %1, ptr noundef %2) #14
  store ptr %74, ptr %72, align 8, !tbaa !196
  br label %92

75:                                               ; preds = %66
  %76 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %68
  %77 = load ptr, ptr %76, align 8, !tbaa !196
  %78 = load i32, ptr %77, align 8, !tbaa !201
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = zext nneg i32 %78 to i64
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ %81, %80 ], [ %84, %82 ]
  %84 = add nsw i64 %83, -1
  %85 = load ptr, ptr %76, align 8, !tbaa !196
  %86 = getelementptr inbounds %struct.rtvec_def, ptr %85, i64 0, i32 1, i64 %84
  %87 = load ptr, ptr %86, align 8, !tbaa !199
  %88 = tail call ptr @replace_rtx(ptr noundef %87, ptr noundef %1, ptr noundef %2) #14
  %89 = load ptr, ptr %76, align 8, !tbaa !196
  %90 = getelementptr inbounds %struct.rtvec_def, ptr %89, i64 0, i32 1, i64 %84
  store ptr %88, ptr %90, align 8, !tbaa !199
  %91 = icmp ugt i64 %83, 1
  br i1 %91, label %82, label %92, !llvm.loop !691

92:                                               ; preds = %82, %75, %66, %71
  %93 = icmp sgt i64 %67, 1
  br i1 %93, label %66, label %94, !prof !692, !llvm.loop !693

94:                                               ; preds = %92, %56, %9, %12, %55, %44, %54, %36, %23, %35, %5
  %95 = phi ptr [ %0, %5 ], [ %33, %23 ], [ null, %35 ], [ %0, %36 ], [ %52, %44 ], [ null, %54 ], [ %0, %55 ], [ %2, %12 ], [ %11, %9 ], [ %0, %56 ], [ %0, %92 ]
  ret ptr %95
}

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @replace_label(ptr nocapture noundef %0, ptr noundef %1) #2 !prof !195 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !199
  %5 = load ptr, ptr %1, align 8, !tbaa !694
  %6 = getelementptr inbounds %struct.replace_label_data, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !696
  %8 = getelementptr inbounds %struct.replace_label_data, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !697
  %10 = icmp eq ptr %4, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, 67174399
  %14 = icmp eq i32 %13, 67108909
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = tail call ptr @get_pool_constant(ptr noundef nonnull %4) #15
  %17 = tail call i32 @rtx_referenced_p(ptr noundef %5, ptr noundef %16) #14, !range !698
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %20 = tail call ptr @copy_rtx(ptr noundef %16) #15
  store ptr %20, ptr %3, align 8, !tbaa !199
  store i8 0, ptr %8, align 8, !tbaa !697
  %21 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @replace_label, ptr noundef nonnull %1) #14, !range !698
  store i8 %9, ptr %8, align 8, !tbaa !697
  %22 = call i32 @get_pool_mode(ptr noundef nonnull %4) #15
  %23 = load ptr, ptr %3, align 8, !tbaa !199
  %24 = call ptr @force_const_mem(i32 noundef %22, ptr noundef %23) #15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !196
  %27 = call ptr @replace_rtx(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %26) #14
  store ptr %27, ptr %0, align 8, !tbaa !199
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
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = icmp eq ptr %32, %5
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  store ptr %7, ptr %31, align 8, !tbaa !196
  br label %48

35:                                               ; preds = %28, %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  store ptr %7, ptr %36, align 8, !tbaa !196
  %40 = icmp eq i8 %9, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !196
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !196
  %45 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !196
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr %45, align 8, !tbaa !196
  br label %48

48:                                               ; preds = %28, %30, %34, %35, %39, %41, %15, %19, %2
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_referenced_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !699 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !199
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @rtx_referenced_p_1, ptr noundef %0) #14, !range !698
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @for_each_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !700 {
  %4 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #15
  switch i32 %4, label %5 [
    i32 -1, label %18
    i32 0, label %6
  ], !prof !701

5:                                                ; preds = %3
  br label %18

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !199
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !702

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !229
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16, !prof !703

16:                                               ; preds = %9
  %17 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %7, i32 noundef %14, ptr noundef %1, ptr noundef %2) #14, !range !698
  br label %18

18:                                               ; preds = %9, %6, %3, %16, %5
  %19 = phi i32 [ %4, %5 ], [ %17, %16 ], [ 0, %3 ], [ 0, %6 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rtx_referenced_p_1(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !prof !704 !PGOFuncName !705 {
  %3 = load ptr, ptr %0, align 8, !tbaa !199
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !706

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  %7 = zext i1 %6 to i32
  br label %28

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %26 [
    i16 44, label %11
    i16 45, label %20
  ], !prof !707

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %15, label %26, !prof !708

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !196
  %18 = icmp eq ptr %17, %1
  %19 = zext i1 %18 to i32
  br label %28

20:                                               ; preds = %8
  %21 = and i32 %9, 67108864
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @get_pool_constant(ptr noundef nonnull %3) #15
  %25 = tail call i32 @rtx_referenced_p(ptr noundef %1, ptr noundef %24) #14, !range !698
  br label %28

26:                                               ; preds = %8, %11, %20
  %27 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %1) #15
  br label %28

28:                                               ; preds = %26, %23, %15, %5
  %29 = phi i32 [ %7, %5 ], [ %19, %15 ], [ %25, %23 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tablejump_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 !prof !709 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %30, !prof !710

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11, !prof !711

11:                                               ; preds = %7
  %12 = tail call ptr @next_active_insn(ptr noundef nonnull %9) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14, !prof !712

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %30, !prof !713

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp eq i32 %22, 20
  br i1 %23, label %24, label %30, !prof !714

24:                                               ; preds = %18
  %25 = icmp eq ptr %1, null
  br i1 %25, label %27, label %26, !prof !715

26:                                               ; preds = %24
  store ptr %9, ptr %1, align 8, !tbaa !199
  br label %27

27:                                               ; preds = %26, %24
  %28 = icmp eq ptr %2, null
  br i1 %28, label %30, label %29, !prof !716

29:                                               ; preds = %27
  store ptr %12, ptr %2, align 8, !tbaa !199
  br label %30

30:                                               ; preds = %18, %3, %7, %11, %14, %27, %29
  %31 = phi i8 [ 1, %29 ], [ 1, %27 ], [ 0, %18 ], [ 0, %14 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i8 %31
}

; Function Attrs: optsize
declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @computed_jump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !717 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %75, !prof !718

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %75, !prof !719

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %75 [
    i16 15, label %14
    i16 23, label %66
  ], !prof !720

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = load i32, ptr %16, align 8, !tbaa !201
  %18 = add i32 %17, -1
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %75, !prof !721

20:                                               ; preds = %14
  %21 = zext nneg i32 %18 to i64
  br label %22

22:                                               ; preds = %20, %37
  %23 = phi i64 [ %21, %20 ], [ %39, %37 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %37 ]
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !199
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 24
  br i1 %29, label %30, label %37, !prof !722

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 44
  %36 = select i1 %35, i32 1, i32 %24, !prof !723
  br label %37

37:                                               ; preds = %30, %22
  %38 = phi i32 [ %24, %22 ], [ %36, %30 ]
  %39 = add nsw i64 %23, -1
  %40 = icmp sgt i64 %23, 0
  br i1 %40, label %22, label %41, !prof !724, !llvm.loop !725

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, 0
  %43 = and i1 %42, %19
  br i1 %43, label %44, label %75, !prof !726

44:                                               ; preds = %41
  %45 = zext nneg i32 %18 to i64
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i64 [ %45, %44 ], [ %64, %63 ]
  %48 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !199
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 23
  br i1 %52, label %53, label %63, !prof !253

53:                                               ; preds = %46
  %54 = load ptr, ptr @global_rtl, align 16
  %55 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !196
  %57 = icmp eq ptr %56, %54
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !196
  %61 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %60) #14, !range !308
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %46, %53, %58
  %64 = add nsw i64 %47, -1
  %65 = icmp sgt i64 %47, 0
  br i1 %65, label %46, label %75, !prof !724, !llvm.loop !727

66:                                               ; preds = %11
  %67 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !196
  %69 = load ptr, ptr @global_rtl, align 16, !tbaa !199
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !196
  %74 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %73) #14, !range !308
  br label %75

75:                                               ; preds = %63, %58, %14, %71, %5, %1, %66, %41, %11
  %76 = phi i32 [ 0, %11 ], [ 0, %41 ], [ 0, %66 ], [ 0, %1 ], [ 0, %5 ], [ %74, %71 ], [ 0, %14 ], [ 0, %63 ], [ 1, %58 ]
  ret i32 %76
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @computed_jump_p_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !195 !PGOFuncName !728 {
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
  %8 = load ptr, ptr %7, align 8, !tbaa !196
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
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %18) #14, !range !308
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !196
  br label %2

24:                                               ; preds = %2
  %25 = and i32 %4, 65535
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  %29 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !196
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
  %39 = load i8, ptr %38, align 1, !tbaa !196
  switch i8 %39, label %61 [
    i8 101, label %47
    i8 69, label %40
  ]

40:                                               ; preds = %35
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  %43 = load i32, ptr %42, align 8, !tbaa !201
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = zext nneg i32 %43 to i64
  br label %55

47:                                               ; preds = %35
  %48 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %37
  %49 = load ptr, ptr %48, align 8, !tbaa !196
  %50 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %49) #14, !range !308
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %64

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %56, 1
  %54 = icmp eq i64 %53, %46
  br i1 %54, label %61, label %55, !llvm.loop !729

55:                                               ; preds = %45, %52
  %56 = phi i64 [ 0, %45 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !199
  %59 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %58) #14, !range !308
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %52, label %64

61:                                               ; preds = %52, %40, %35, %47
  %62 = icmp sgt i64 %36, 1
  br i1 %62, label %35, label %64, !llvm.loop !730

63:                                               ; preds = %2, %2
  br label %64

64:                                               ; preds = %47, %61, %55, %16, %2, %2, %2, %2, %2, %2, %2, %63, %24, %6
  %65 = phi i32 [ %15, %6 ], [ 0, %24 ], [ 0, %63 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %16 ], [ 1, %55 ], [ 1, %47 ], [ 0, %61 ]
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @for_each_rtx_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !prof !731 !PGOFuncName !732 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %63, %4
  %13 = phi i64 [ %64, %63 ], [ %11, %4 ]
  %14 = getelementptr inbounds i8, ptr %9, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !196
  switch i8 %15, label %63 [
    i8 0, label %65
    i8 101, label %16
    i8 86, label %32
    i8 69, label %32
  ], !prof !733

16:                                               ; preds = %12
  %17 = getelementptr inbounds [1 x %union.rtunion_def], ptr %10, i64 0, i64 %13
  %18 = tail call i32 %2(ptr noundef nonnull %17, ptr noundef %3) #15
  switch i32 %18, label %65 [
    i32 -1, label %63
    i32 0, label %19
  ], !prof !734

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !199
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22, !prof !735

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 65535
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !229
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %63, !prof !736

29:                                               ; preds = %22
  %30 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %20, i32 noundef %27, ptr noundef %2, ptr noundef %3) #14, !range !698
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %63, label %65, !prof !737

32:                                               ; preds = %12, %12
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %10, i64 0, i64 %13
  %34 = load ptr, ptr %33, align 8, !tbaa !196
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36, !prof !738

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !201
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %63, !prof !739

39:                                               ; preds = %36, %57
  %40 = phi i64 [ %58, %57 ], [ 0, %36 ]
  %41 = phi ptr [ %59, %57 ], [ %34, %36 ]
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %41, i64 0, i32 1, i64 %40
  %43 = tail call i32 %2(ptr noundef nonnull %42, ptr noundef %3) #15
  switch i32 %43, label %65 [
    i32 -1, label %57
    i32 0, label %44
  ], !prof !740

44:                                               ; preds = %39
  %45 = load ptr, ptr %42, align 8, !tbaa !199
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47, !prof !741

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !229
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %57, !prof !742

54:                                               ; preds = %47
  %55 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %45, i32 noundef %52, ptr noundef %2, ptr noundef %3) #14, !range !698
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65, !prof !743

57:                                               ; preds = %39, %47, %54, %44
  %58 = add nuw nsw i64 %40, 1
  %59 = load ptr, ptr %33, align 8, !tbaa !196
  %60 = load i32, ptr %59, align 8, !tbaa !201
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %39, label %63, !prof !744, !llvm.loop !745

63:                                               ; preds = %57, %36, %16, %12, %29, %22, %32, %19
  %64 = add i64 %13, 1
  br label %12, !llvm.loop !746

65:                                               ; preds = %12, %29, %16, %54, %39
  %66 = phi i32 [ %55, %54 ], [ %43, %39 ], [ 0, %12 ], [ %30, %29 ], [ %18, %16 ]
  ret i32 %66
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @regno_use_in(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !195 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !196
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
  %23 = load i8, ptr %22, align 1, !tbaa !196
  switch i8 %23, label %44 [
    i8 101, label %24
    i8 69, label %29
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !196
  %27 = tail call ptr @regno_use_in(i32 noundef %0, ptr noundef %26) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %46

29:                                               ; preds = %19
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %31 = load ptr, ptr %30, align 8, !tbaa !196
  %32 = load i32, ptr %31, align 8, !tbaa !201
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
  %41 = load ptr, ptr %40, align 8, !tbaa !199
  %42 = tail call ptr @regno_use_in(i32 noundef %0, ptr noundef %41) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %34, label %46, !llvm.loop !747

44:                                               ; preds = %34, %19, %24
  %45 = icmp sgt i64 %20, 1
  br i1 %45, label %19, label %46, !llvm.loop !748

46:                                               ; preds = %24, %44, %38, %9, %6
  %47 = phi ptr [ %1, %6 ], [ null, %9 ], [ %42, %38 ], [ %27, %24 ], [ null, %44 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @commutative_operand_precedence(ptr noundef %0) local_unnamed_addr #2 !prof !749 {
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
  %12 = load i32, ptr %11, align 4, !tbaa !229
  switch i32 %12, label %42 [
    i32 9, label %13
    i32 5, label %17
    i32 8, label %30
    i32 3, label %51
    i32 2, label %36
    i32 4, label %37
  ], !prof !750

13:                                               ; preds = %6
  %14 = trunc i32 %8 to i16
  %15 = add i16 %14, -30
  %16 = icmp ult i16 %15, 3
  br i1 %16, label %47, label %51

17:                                               ; preds = %6
  %18 = icmp eq i32 %9, 39
  br i1 %18, label %19, label %29, !prof !751

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !196
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !229
  %27 = and i32 %26, -2
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %51, label %29, !prof !752

29:                                               ; preds = %19, %17
  br label %51

30:                                               ; preds = %6
  %31 = and i32 %8, 1073807359
  %32 = icmp eq i32 %31, 1073741861
  br i1 %32, label %51, label %33, !prof !753

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 1073741867
  %35 = select i1 %34, i32 -1, i32 -2, !prof !754
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
define dso_local zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !755 {
  %3 = tail call i32 @commutative_operand_precedence(ptr noundef %0) #14, !range !756
  %4 = tail call i32 @commutative_operand_precedence(ptr noundef %1) #14, !range !756
  %5 = icmp slt i32 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @auto_inc_p(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !195 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -74
  %5 = icmp ult i16 %4, 6
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !199
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1, %6
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %6 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @loc_mentioned_in_p(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !757 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %48, label %4, !prof !758

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !196
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %48, label %13, !prof !759

13:                                               ; preds = %4
  %14 = zext i8 %11 to i64
  br label %15

15:                                               ; preds = %13, %46
  %16 = phi i64 [ %14, %13 ], [ %17, %46 ]
  %17 = add nsw i64 %16, -1
  %18 = getelementptr inbounds i8, ptr %9, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !196
  switch i8 %19, label %46 [
    i8 101, label %20
    i8 69, label %28
  ], !prof !760

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %17
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %48, label %24, !prof !761

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !196
  %26 = tail call i32 @loc_mentioned_in_p(ptr noundef %0, ptr noundef %25) #14, !range !308
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %46, label %48, !prof !762

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %29, i64 0, i64 %17
  %31 = load ptr, ptr %30, align 8, !tbaa !196
  %32 = load i32, ptr %31, align 8, !tbaa !201
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %42, %28
  %35 = phi i64 [ %36, %42 ], [ %33, %28 ]
  %36 = add nsw i64 %35, -1
  %37 = trunc i64 %35 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %36
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 8, !tbaa !199
  %44 = tail call i32 @loc_mentioned_in_p(ptr noundef %0, ptr noundef %43) #14, !range !308
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %34, label %48, !llvm.loop !763

46:                                               ; preds = %34, %15, %24
  %47 = icmp sgt i64 %16, 1
  br i1 %47, label %15, label %48, !prof !764, !llvm.loop !765

48:                                               ; preds = %24, %20, %46, %39, %42, %4, %2
  %49 = phi i32 [ 0, %2 ], [ 0, %4 ], [ 1, %42 ], [ 1, %39 ], [ 1, %24 ], [ 1, %20 ], [ 0, %46 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 !prof !766 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !196
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !196
  %10 = icmp ugt i8 %6, %9
  %11 = shl i32 %2, 3
  %12 = select i1 %10, i32 0, i32 %11, !prof !767
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lsb(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !195 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !196
  %12 = tail call i32 @subreg_lsb_1(i32 noundef %4, i32 noundef %9, i32 noundef %11) #14
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 !prof !768 {
  %6 = icmp ult i32 %0, 53
  br i1 %6, label %8, label %7, !prof !769

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3102, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %5, %7
  %9 = load i32, ptr @target_flags, align 4, !tbaa !229
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = zext i32 %0 to i64
  br i1 %11, label %70, label %13, !prof !769

13:                                               ; preds = %8
  %14 = and i64 %12, 4294967288
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %70, label %16, !prof !769

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
  %23 = load i8, ptr %22, align 1, !tbaa !196
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
  %30 = load i8, ptr %29, align 1, !tbaa !196
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
  %39 = load i8, ptr %38, align 1, !tbaa !196
  %40 = zext i8 %39 to i32
  %41 = zext nneg i32 %26 to i64
  %42 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !196
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, %31
  %46 = icmp eq i32 %45, %40
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3123, ptr noundef nonnull @.str.1) #15
  br label %48

48:                                               ; preds = %37, %47
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %41
  %50 = load i8, ptr %49, align 1, !tbaa !196
  %51 = zext i8 %50 to i32
  %52 = udiv i32 %2, %51
  %53 = add i32 %52, 1
  %54 = icmp ult i32 %53, %31
  br i1 %54, label %55, label %75

55:                                               ; preds = %48
  %56 = zext i32 %3 to i64
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !196
  %59 = zext i8 %58 to i32
  %60 = add i32 %2, -1
  %61 = add i32 %60, %59
  %62 = udiv i32 %61, %51
  %63 = icmp eq i32 %52, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %65, align 4, !tbaa !770
  %66 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %56
  %67 = load i8, ptr %66, align 1, !tbaa !196
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %2, 0
  br label %92

70:                                               ; preds = %8, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %17, %13
  %71 = zext i32 %1 to i64
  %72 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !196
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %48, %55, %70
  %76 = phi i32 [ %20, %48 ], [ %20, %55 ], [ %74, %70 ]
  %77 = zext i32 %3 to i64
  %78 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !196
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %2, 0
  br i1 %81, label %82, label %92, !prof !772

82:                                               ; preds = %75
  %83 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %84 = load i8, ptr %83, align 1, !tbaa !196
  %85 = zext i32 %1 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !196
  %88 = icmp ugt i8 %84, %87
  br i1 %88, label %89, label %92, !prof !773

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 1, ptr %90, align 4, !tbaa !770
  store i32 0, ptr %4, align 4, !tbaa !774
  %91 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %80, ptr %91, align 4, !tbaa !775
  br label %225

92:                                               ; preds = %64, %82, %75
  %93 = phi i1 [ %69, %64 ], [ true, %82 ], [ false, %75 ]
  %94 = phi i1 [ false, %64 ], [ true, %82 ], [ true, %75 ]
  %95 = phi i32 [ %68, %64 ], [ %80, %82 ], [ %80, %75 ]
  %96 = phi i8 [ %67, %64 ], [ %79, %82 ], [ %79, %75 ]
  %97 = phi i64 [ %56, %64 ], [ %77, %82 ], [ %77, %75 ]
  %98 = phi i32 [ %20, %64 ], [ %76, %82 ], [ %76, %75 ]
  %99 = load i32, ptr @target_flags, align 4, !tbaa !229
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102, !prof !776

102:                                              ; preds = %92
  %103 = and i64 %12, 4294967288
  %104 = icmp eq i64 %103, 8
  br i1 %104, label %109, label %105, !prof !776

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
  %112 = load i8, ptr %111, align 1, !tbaa !196
  %113 = trunc i32 %98 to i8
  %114 = urem i8 %112, %113
  %115 = udiv i8 %112, %113
  %116 = icmp eq i8 %114, 0
  br i1 %116, label %117, label %158, !prof !776

117:                                              ; preds = %109
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %97
  %119 = load i8, ptr %118, align 1, !tbaa !196
  %120 = trunc i32 %95 to i8
  %121 = urem i8 %119, %120
  %122 = udiv i8 %119, %120
  %123 = icmp eq i8 %121, 0
  br i1 %123, label %124, label %158, !prof !776

124:                                              ; preds = %117
  %125 = zext i8 %115 to i32
  br i1 %94, label %126, label %168, !prof !776

126:                                              ; preds = %124
  %127 = icmp ugt i8 %115, %122
  %128 = icmp ugt i8 %96, 1
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %142, !prof !777

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %131, align 4, !tbaa !770
  %132 = load i8, ptr %118, align 1, !tbaa !196
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %133, %125
  %135 = trunc i32 %134 to i16
  %136 = add nsw i16 %135, -1
  %137 = zext i8 %115 to i16
  %138 = udiv i16 %136, %137
  %139 = zext i16 %138 to i32
  %140 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %139, ptr %140, align 4, !tbaa !775
  %141 = udiv i32 %2, %125
  store i32 %141, ptr %4, align 4, !tbaa !774
  br label %225

142:                                              ; preds = %126
  %143 = icmp ugt i8 %122, %115
  br i1 %143, label %144, label %159, !prof !778

144:                                              ; preds = %142
  %145 = icmp ugt i32 %98, 1
  br i1 %145, label %146, label %159

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %147, align 4, !tbaa !770
  %148 = load i8, ptr %118, align 1, !tbaa !196
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %149, %125
  %151 = trunc i32 %150 to i16
  %152 = add nsw i16 %151, -1
  %153 = zext i8 %115 to i16
  %154 = sdiv i16 %152, %153
  %155 = sext i16 %154 to i32
  %156 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %155, ptr %156, align 4, !tbaa !775
  %157 = udiv i32 %2, %125
  store i32 %157, ptr %4, align 4, !tbaa !774
  br label %225

158:                                              ; preds = %108, %108, %106, %106, %117, %109
  br i1 %94, label %159, label %168, !prof !779

159:                                              ; preds = %144, %142, %158
  %160 = tail call i32 @subreg_lowpart_offset(i32 noundef %3, i32 noundef %1) #15
  %161 = icmp eq i32 %160, %2
  br i1 %161, label %162, label %168, !prof !780

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 1, ptr %163, align 4, !tbaa !770
  br i1 %93, label %166, label %164, !prof !781

164:                                              ; preds = %162
  %165 = icmp eq i32 %98, %95
  br i1 %165, label %166, label %168

166:                                              ; preds = %164, %162
  store i32 0, ptr %4, align 4, !tbaa !774
  %167 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %95, ptr %167, align 4, !tbaa !775
  br label %225

168:                                              ; preds = %124, %164, %159, %158
  %169 = phi i1 [ false, %158 ], [ false, %164 ], [ true, %159 ], [ false, %124 ]
  %170 = zext i32 %1 to i64
  %171 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !196
  %173 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %97
  %174 = load i8, ptr %173, align 1, !tbaa !196
  %175 = urem i8 %172, %174
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %178, label %177, !prof !782

177:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3211, ptr noundef nonnull @.str.1) #15
  br label %178

178:                                              ; preds = %168, %177
  %179 = trunc i32 %98 to i8
  %180 = trunc i32 %95 to i8
  %181 = urem i8 %179, %180
  %182 = udiv i8 %179, %180
  %183 = icmp eq i8 %181, 0
  br i1 %183, label %185, label %184, !prof !782

184:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3212, ptr noundef nonnull @.str.1) #15
  br label %185

185:                                              ; preds = %178, %184
  %186 = load i8, ptr %171, align 1, !tbaa !196
  %187 = zext i8 %186 to i16
  %188 = shl nuw nsw i16 %187, 3
  %189 = trunc i32 %98 to i16
  %190 = udiv i16 %188, %189
  %191 = zext nneg i16 %190 to i32
  %192 = tail call i32 @mode_for_size(i32 noundef %191, i32 noundef 2, i32 noundef 0) #15
  %193 = tail call i32 @subreg_lowpart_offset(i32 noundef %3, i32 noundef %192) #15
  %194 = sub i32 %2, %193
  %195 = load i8, ptr %171, align 1, !tbaa !196
  %196 = load i8, ptr %173, align 1, !tbaa !196
  %197 = udiv i8 %195, %196
  %198 = icmp ugt i8 %196, %195
  br i1 %198, label %199, label %201, !prof !783

199:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3225, ptr noundef nonnull @.str.1) #15
  %200 = load i8, ptr %173, align 1, !tbaa !196
  br label %201

201:                                              ; preds = %185, %199
  %202 = phi i8 [ %196, %185 ], [ %200, %199 ]
  %203 = zext i8 %202 to i32
  %204 = udiv i32 %2, %203
  %205 = sdiv i32 %194, %203
  %206 = srem i32 %194, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208, !prof !782

208:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3231, ptr noundef nonnull @.str.1) #15
  br label %209

209:                                              ; preds = %201, %208
  %210 = urem i8 %197, %182
  %211 = udiv i8 %197, %182
  %212 = icmp eq i8 %210, 0
  br i1 %212, label %214, label %213, !prof !782

213:                                              ; preds = %209
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3232, ptr noundef nonnull @.str.1) #15
  br label %214

214:                                              ; preds = %209, %213
  %215 = zext i8 %211 to i32
  br i1 %169, label %216, label %221, !prof !782

216:                                              ; preds = %214
  %217 = srem i32 %205, %215
  %218 = icmp eq i32 %217, 0
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 %219, ptr %220, align 4, !tbaa !770
  br label %221

221:                                              ; preds = %214, %216
  %222 = sdiv i32 %204, %215
  %223 = mul nsw i32 %222, %95
  store i32 %223, ptr %4, align 4, !tbaa !774
  %224 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %95, ptr %224, align 4, !tbaa !775
  br label %225

225:                                              ; preds = %221, %166, %146, %130, %89
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_regno_offset(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !784 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %6 = load i32, ptr %5, align 4, !tbaa !774
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @subreg_offset_representable_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !785 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.subreg_info, ptr %5, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !770
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @simplify_subreg_regno(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !786 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !196
  %9 = and i8 %8, -2
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %17, label %11, !prof !787

11:                                               ; preds = %4
  %12 = zext i32 %0 to i64
  %13 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !229
  %15 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %1, i32 noundef %3, i32 noundef %14) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %40, !prof !788

17:                                               ; preds = %4, %11
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !229
  %19 = icmp eq i32 %18, 0
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %24, !prof !789

23:                                               ; preds = %17
  switch i32 %0, label %25 [
    i32 20, label %40
    i32 6, label %40
    i32 16, label %40
    i32 7, label %40
  ], !prof !790

24:                                               ; preds = %17
  switch i32 %0, label %25 [
    i32 16, label %40
    i32 7, label %40
  ], !prof !791

25:                                               ; preds = %23, %24
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #14
  %26 = getelementptr inbounds %struct.subreg_info, ptr %5, i64 0, i32 2
  %27 = load i8, ptr %26, align 4, !tbaa !770
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29, !prof !792

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4, !tbaa !774
  %31 = add i32 %30, %0
  %32 = icmp ult i32 %31, 53
  br i1 %32, label %33, label %40, !prof !788

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %31, i32 noundef %3) #15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !792

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
define dso_local i32 @subreg_nregs_with_regno(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !513 {
  %3 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !196
  %11 = load i32, ptr %1, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  call void @subreg_get_info(i32 noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %13, ptr noundef nonnull %3) #14
  %14 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !775
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_first_parameter_load(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 !prof !195 {
  %3 = alloca %struct.parms_set_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.parms_set_data, ptr %3, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !793
  store i32 0, ptr %3, align 8, !tbaa !795
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !196
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
  %17 = load ptr, ptr %16, align 8, !tbaa !196
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 24
  br i1 %20, label %21, label %48

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !196
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
  %31 = load ptr, ptr %16, align 8, !tbaa !196
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  br label %34

34:                                               ; preds = %27, %30
  %35 = phi ptr [ %23, %27 ], [ %33, %30 ]
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #14
  %37 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %36) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %16, align 8, !tbaa !196
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef %42) #14
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = or i64 %45, %14
  store i64 %46, ptr %4, align 8, !tbaa !793
  %47 = add nsw i32 %15, 1
  store i32 %47, ptr %3, align 8, !tbaa !795
  br label %48

48:                                               ; preds = %12, %21, %39, %34
  %49 = phi i32 [ %15, %12 ], [ %15, %21 ], [ %47, %39 ], [ %15, %34 ]
  %50 = phi i64 [ %14, %12 ], [ %14, %21 ], [ %46, %39 ], [ %14, %34 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !196
  %53 = icmp eq ptr %52, null
  br i1 %53, label %8, label %12, !llvm.loop !796

54:                                               ; preds = %8, %70
  %55 = phi i32 [ %71, %70 ], [ %49, %8 ]
  %56 = phi ptr [ %72, %70 ], [ %0, %8 ]
  %57 = phi ptr [ %59, %70 ], [ %0, %8 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !196
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
  %67 = load ptr, ptr %66, align 8, !tbaa !196
  call void @note_stores(ptr noundef %67, ptr noundef nonnull @parms_set, ptr noundef nonnull %3) #14
  %68 = load i32, ptr %3, align 8, !tbaa !795
  %69 = icmp eq i32 %55, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %65, %54
  %71 = phi i32 [ %68, %65 ], [ %55, %54 ]
  %72 = phi ptr [ %59, %65 ], [ %56, %54 ]
  %73 = icmp ne i32 %71, 0
  %74 = icmp ne ptr %59, %1
  %75 = and i1 %74, %73
  br i1 %75, label %54, label %76, !llvm.loop !797

76:                                               ; preds = %70, %54, %65, %2, %8, %64, %62
  %77 = phi ptr [ %56, %64 ], [ %56, %62 ], [ %0, %8 ], [ %0, %2 ], [ %72, %70 ], [ %56, %54 ], [ %56, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %77
}

; Function Attrs: optsize
declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @parms_set(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #10 !prof !195 !PGOFuncName !798 {
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
  %12 = load i64, ptr %11, align 8, !tbaa !793
  %13 = zext nneg i32 %8 to i64
  %14 = shl nuw nsw i64 1, %13
  %15 = and i64 %12, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = xor i64 %14, -1
  %19 = and i64 %12, %18
  store i64 %19, ptr %11, align 8, !tbaa !793
  %20 = load i32, ptr %2, align 8, !tbaa !795
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %2, align 8, !tbaa !795
  br label %22

22:                                               ; preds = %17, %10, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @keep_with_call_p(ptr noundef %0) local_unnamed_addr #2 !prof !799 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %66, !prof !800

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %15, label %12, !prof !801

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %66, label %15, !prof !802

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %35, !prof !803

22:                                               ; preds = %15
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #14
  %24 = icmp ult i32 %23, 53
  br i1 %24, label %25, label %35, !prof !804

25:                                               ; preds = %22
  %26 = zext nneg i32 %23 to i64
  %27 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !196
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30, !prof !805

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = tail call i32 @general_operand(ptr noundef %32, i32 noundef 0) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %66, !prof !806

35:                                               ; preds = %30, %25, %22, %15
  %36 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %43, label %41, !prof !807

41:                                               ; preds = %35
  %42 = load ptr, ptr %17, align 8, !tbaa !196
  br label %55

43:                                               ; preds = %35
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %37) #14
  %45 = tail call zeroext i8 @ix86_function_value_regno_p(i32 noundef %44) #15
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr %17, align 8, !tbaa !196
  br i1 %46, label %55, label %48, !prof !808

48:                                               ; preds = %43
  %49 = load i32, ptr %47, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %55, !prof !809

52:                                               ; preds = %48
  %53 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #14
  %54 = icmp ugt i32 %53, 52
  br i1 %54, label %66, label %55, !prof !810

55:                                               ; preds = %41, %52, %48, %43
  %56 = phi ptr [ %42, %41 ], [ %47, %52 ], [ %47, %48 ], [ %47, %43 ]
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !199
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %66, !prof !811

59:                                               ; preds = %55
  %60 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %0) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62, !prof !723

62:                                               ; preds = %59
  %63 = tail call zeroext i8 @keep_with_call_p(ptr noundef nonnull %60) #14, !range !360
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66, !prof !812

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
define dso_local noundef zeroext i8 @label_is_jump_target_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !813 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  store ptr %5, ptr %3, align 8, !tbaa !199
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %39, label %7, !prof !814

7:                                                ; preds = %2
  %8 = call zeroext i8 @tablejump_p(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %3) #14, !range !360
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %35, label %10, !prof !815

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !199
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !196
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %13, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 21
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = load i32, ptr %20, align 8, !tbaa !201
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %10
  %24 = zext nneg i32 %21 to i64
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i64 %29, 1
  %27 = icmp eq i64 %26, %24
  br i1 %27, label %35, label %28, !llvm.loop !816

28:                                               ; preds = %23, %25
  %29 = phi i64 [ 0, %23 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !199
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !196
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
define dso_local i32 @rtx_cost(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 !prof !817 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %85, label %6, !prof !818

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
  ], !prof !819

10:                                               ; preds = %6
  store i32 20, ptr %4, align 4, !tbaa !229
  br label %36

11:                                               ; preds = %6
  store i32 0, ptr %4, align 4, !tbaa !229
  br label %36

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %6, %6, %6, %6, %12
  %14 = phi i32 [ 4, %12 ], [ 28, %6 ], [ 28, %6 ], [ 28, %6 ], [ 28, %6 ]
  store i32 %14, ptr %4, align 4, !tbaa !229
  switch i16 %9, label %36 [
    i16 37, label %85
    i16 39, label %15
  ], !prof !820

15:                                               ; preds = %13
  store i32 0, ptr %4, align 4, !tbaa !229
  %16 = lshr i32 %7, 16
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %17, i32 noundef %22) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %42, !prof !821

25:                                               ; preds = %15
  %26 = load i32, ptr %0, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !196
  %32 = lshr i8 %31, 2
  %33 = add nuw nsw i8 %32, 2
  %34 = zext nneg i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 2
  br label %85

36:                                               ; preds = %10, %11, %13
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 60), align 8, !tbaa !822
  %38 = call zeroext i8 %37(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %2) #15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40, !prof !823

40:                                               ; preds = %36
  %41 = load i32, ptr %4, align 4, !tbaa !229
  br label %85

42:                                               ; preds = %36, %15
  %43 = zext nneg i32 %8 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !199
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !196
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %83, label %49, !prof !824

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = zext i8 %47 to i64
  br label %52

52:                                               ; preds = %49, %81
  %53 = phi i64 [ %51, %49 ], [ %54, %81 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds i8, ptr %45, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !196
  switch i8 %56, label %81 [
    i8 101, label %62
    i8 69, label %57
  ], !prof !825

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !196
  %60 = load i32, ptr %59, align 8, !tbaa !201
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %68, label %81

62:                                               ; preds = %52
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %64 = load ptr, ptr %63, align 8, !tbaa !196
  %65 = call i32 @rtx_cost(ptr noundef %64, i32 noundef %8, i8 noundef zeroext %2) #14
  %66 = load i32, ptr %4, align 4, !tbaa !229
  %67 = add nsw i32 %66, %65
  store i32 %67, ptr %4, align 4, !tbaa !229
  br label %81

68:                                               ; preds = %57, %68
  %69 = phi i64 [ %76, %68 ], [ 0, %57 ]
  %70 = phi ptr [ %77, %68 ], [ %59, %57 ]
  %71 = getelementptr inbounds %struct.rtvec_def, ptr %70, i64 0, i32 1, i64 %69
  %72 = load ptr, ptr %71, align 8, !tbaa !199
  %73 = call i32 @rtx_cost(ptr noundef %72, i32 noundef %8, i8 noundef zeroext %2) #14
  %74 = load i32, ptr %4, align 4, !tbaa !229
  %75 = add nsw i32 %74, %73
  store i32 %75, ptr %4, align 4, !tbaa !229
  %76 = add nuw nsw i64 %69, 1
  %77 = load ptr, ptr %58, align 8, !tbaa !196
  %78 = load i32, ptr %77, align 8, !tbaa !201
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %68, label %81, !llvm.loop !826

81:                                               ; preds = %68, %57, %52, %62
  %82 = icmp sgt i64 %53, 1
  br i1 %82, label %52, label %83, !prof !827, !llvm.loop !828

83:                                               ; preds = %81, %42
  %84 = load i32, ptr %4, align 4, !tbaa !229
  br label %85

85:                                               ; preds = %13, %3, %83, %40, %25
  %86 = phi i32 [ %41, %40 ], [ %84, %83 ], [ %35, %25 ], [ 0, %3 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %86
}

; Function Attrs: optsize
declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @address_cost(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 !prof !829 {
  %5 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %0, i8 noundef zeroext %2) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !830

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 61), align 8, !tbaa !831
  %9 = tail call i32 %8(ptr noundef %0, i8 noundef zeroext %3) #15
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi i32 [ %9, %7 ], [ 1000, %4 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_address_cost(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 !prof !195 {
  %3 = tail call i32 @rtx_cost(ptr noundef %0, i32 noundef 43, i8 noundef zeroext %1) #14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @nonzero_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !832 {
  %3 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i64 noundef 0) #14
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @cached_nonzero_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #2 !prof !833 !PGOFuncName !834 {
  %6 = icmp eq ptr %0, %2
  br i1 %6, label %7, label %9, !prof !835

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, %3
  br i1 %8, label %23, label %9, !prof !836

9:                                                ; preds = %7, %5
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !229
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %66, !prof !837

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !196
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %25, label %28, !prof !838

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
  %33 = load i32, ptr %32, align 4, !tbaa !229
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %47, !prof !839

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !196
  %39 = icmp eq ptr %21, %38
  br i1 %39, label %44, label %40, !prof !840

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  %43 = icmp eq ptr %21, %42
  br i1 %43, label %44, label %47, !prof !841

44:                                               ; preds = %40, %36
  %45 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %21, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %46 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %21, i32 noundef %1, i64 noundef %45) #14
  br label %23

47:                                               ; preds = %40, %28
  %48 = load i32, ptr %21, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !229
  %53 = and i32 %52, -2
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %66, !prof !842

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !196
  %58 = icmp eq ptr %19, %57
  br i1 %58, label %63, label %59, !prof !843

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !196
  %62 = icmp eq ptr %19, %61
  br i1 %62, label %63, label %66, !prof !844

63:                                               ; preds = %59, %55
  %64 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %19, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %65 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %19, i32 noundef %1, i64 noundef %64) #14
  br label %23

66:                                               ; preds = %59, %47, %9
  %67 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  br label %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @nonzero_bits1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #2 !prof !845 !PGOFuncName !846 {
  %6 = alloca i64, align 8
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !359
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !196
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !196
  switch i8 %19, label %20 [
    i8 8, label %419
    i8 9, label %419
    i8 11, label %419
    i8 17, label %419
  ], !prof !847

20:                                               ; preds = %5
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %22 = load i8, ptr %21, align 1, !tbaa !196
  switch i8 %22, label %23 [
    i8 8, label %419
    i8 9, label %419
    i8 11, label %419
    i8 17, label %419
  ], !prof !848

23:                                               ; preds = %20
  %24 = add i8 %19, -12
  %25 = icmp ult i8 %24, 5
  %26 = add i8 %22, -12
  %27 = icmp ult i8 %26, 5
  %28 = or i1 %25, %27
  br i1 %28, label %419, label %29, !prof !849

29:                                               ; preds = %23
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %31 = load i8, ptr %30, align 1, !tbaa !196
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 3
  %34 = icmp ugt i32 %33, %13
  br i1 %34, label %35, label %38, !prof !850

35:                                               ; preds = %29
  %36 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %37 = load i64, ptr %36, align 8, !tbaa !359
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %33, %35 ], [ %13, %29 ]
  %40 = phi i64 [ %37, %35 ], [ %9, %29 ]
  %41 = phi i32 [ %16, %35 ], [ %1, %29 ]
  %42 = icmp ugt i32 %39, 64
  br i1 %42, label %419, label %43, !prof !851

43:                                               ; preds = %38
  %44 = icmp ne i32 %16, 0
  %45 = icmp ne i32 %16, %41
  %46 = and i1 %44, %45
  %47 = icmp ult i8 %31, 5
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %65, !prof !852

49:                                               ; preds = %43
  %50 = zext i32 %41 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !196
  %53 = icmp ugt i8 %52, %31
  br i1 %53, label %54, label %65, !prof !853

54:                                               ; preds = %49
  %55 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %56 = load i32, ptr %0, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !359
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
  ], !prof !854

67:                                               ; preds = %65
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !199
  %69 = icmp eq ptr %68, %0
  %70 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %71 = icmp eq ptr %70, %0
  %72 = select i1 %69, i1 true, i1 %71
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %74 = icmp eq ptr %73, %0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %99, !prof !855

76:                                               ; preds = %67
  %77 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !856
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !196
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %99, label %83, !prof !865

83:                                               ; preds = %76
  %84 = lshr i8 %81, 3
  %85 = zext nneg i8 %84 to i64
  br i1 %69, label %86, label %95, !prof !866

86:                                               ; preds = %83
  %87 = load i32, ptr @target_flags, align 4, !tbaa !229
  %88 = and i32 %87, 8196
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95, !prof !867

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
  store i64 %100, ptr %6, align 8, !tbaa !359
  %101 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 2), align 8, !tbaa !868
  %102 = call ptr %101(ptr noundef nonnull %0, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #15
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106, !prof !870

104:                                              ; preds = %99
  %105 = load i64, ptr %6, align 8, !tbaa !359
  br label %110

106:                                              ; preds = %99
  %107 = call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %102, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %108 = load i64, ptr %6, align 8, !tbaa !359
  %109 = and i64 %108, %107
  br label %110

110:                                              ; preds = %104, %106
  %111 = phi i64 [ %105, %104 ], [ %109, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %419

112:                                              ; preds = %65
  %113 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !196
  br label %419

115:                                              ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  %116 = icmp eq i8 %19, 2
  %117 = select i1 %116, i64 1, i64 %40, !prof !871
  br label %419

118:                                              ; preds = %65
  %119 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !196
  %121 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %120, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %122 = and i64 %121, %40
  br label %419

123:                                              ; preds = %65
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !196
  %126 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %125, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %127 = and i64 %126, %40
  %128 = load ptr, ptr %124, align 8, !tbaa !196
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %419, label %133, !prof !872

133:                                              ; preds = %123
  %134 = zext nneg i32 %131 to i64
  %135 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !359
  %137 = and i64 %136, %127
  br label %419

138:                                              ; preds = %65
  %139 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !196
  %141 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %140, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %142 = load ptr, ptr %139, align 8, !tbaa !196
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 16
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %165, label %147, !prof !873

147:                                              ; preds = %138
  %148 = zext nneg i32 %145 to i64
  %149 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !359
  %151 = and i64 %150, %141
  %152 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %153 = load i8, ptr %152, align 1, !tbaa !196
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 3
  %156 = add nuw nsw i64 %155, 4294967295
  %157 = and i64 %156, 4294967295
  %158 = shl nuw i64 1, %157
  %159 = and i64 %158, %151
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %165, label %161, !prof !874

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
  %170 = load ptr, ptr %169, align 8, !tbaa !196
  %171 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %170, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %172 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !196
  %174 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %173, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %175 = and i64 %171, %174
  %176 = and i64 %175, %40
  br label %419

177:                                              ; preds = %65, %65, %65, %65, %65, %65
  %178 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !196
  %180 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %179, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %181 = and i64 %180, %40
  %182 = icmp eq i64 %181, %40
  br i1 %182, label %419, label %183, !prof !875

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !196
  %186 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %185, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %187 = or i64 %186, %180
  %188 = and i64 %187, %40
  br label %419

189:                                              ; preds = %65, %65, %65, %65, %65, %65, %65
  %190 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !196
  %192 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %191, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %193 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !196
  %195 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %194, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %196 = load i32, ptr %0, align 8
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !196
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
  switch i16 %66, label %254 [
    i16 49, label %219
    i16 50, label %223
    i16 52, label %225
    i16 55, label %228
    i16 59, label %235
    i16 58, label %238
    i16 60, label %248
  ], !prof !876

219:                                              ; preds = %189
  %220 = tail call i32 @llvm.smax.i32(i32 %206, i32 %208)
  %221 = add nsw i32 %220, 1
  %222 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %255

223:                                              ; preds = %189
  %224 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %255

225:                                              ; preds = %189
  %226 = add nsw i32 %208, %206
  %227 = add nsw i32 %214, %211
  br label %255

228:                                              ; preds = %189
  %229 = icmp eq i32 %208, 0
  br i1 %229, label %255, label %230, !prof !877

230:                                              ; preds = %228
  %231 = icmp ne i64 %217, 0
  %232 = icmp ne i64 %218, 0
  %233 = select i1 %231, i1 true, i1 %232
  %234 = select i1 %233, i32 %39, i32 %206, !prof !878
  br label %255

235:                                              ; preds = %189
  %236 = icmp eq i32 %208, 0
  %237 = select i1 %236, i32 %39, i32 %206, !prof !879
  br label %255

238:                                              ; preds = %189
  %239 = icmp eq i32 %208, 0
  br i1 %239, label %255, label %240, !prof !880

240:                                              ; preds = %238
  %241 = icmp ne i64 %217, 0
  %242 = icmp ne i64 %218, 0
  %243 = select i1 %241, i1 true, i1 %242
  %244 = icmp slt i32 %205, %207
  %245 = select i1 %244, i32 %206, i32 %208
  %246 = select i1 %243, i32 %39, i32 %245, !prof !881
  %247 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %255

248:                                              ; preds = %189
  %249 = icmp eq i32 %208, 0
  br i1 %249, label %255, label %250, !prof !882

250:                                              ; preds = %248
  %251 = icmp slt i32 %205, %207
  %252 = select i1 %251, i32 %206, i32 %208, !prof !883
  %253 = tail call i32 @llvm.smin.i32(i32 %211, i32 %214)
  br label %255

254:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3984, ptr noundef nonnull @.str.1) #15
  br label %255

255:                                              ; preds = %235, %230, %248, %238, %228, %254, %250, %240, %225, %223, %219
  %256 = phi i32 [ %39, %254 ], [ %39, %248 ], [ %252, %250 ], [ %39, %238 ], [ %246, %240 ], [ %39, %228 ], [ %226, %225 ], [ %39, %223 ], [ %221, %219 ], [ %234, %230 ], [ %237, %235 ]
  %257 = phi i32 [ 0, %254 ], [ 0, %248 ], [ %253, %250 ], [ 0, %238 ], [ %247, %240 ], [ 0, %228 ], [ %227, %225 ], [ %224, %223 ], [ %222, %219 ], [ 0, %230 ], [ 0, %235 ]
  %258 = freeze i32 %257
  %259 = icmp ult i32 %256, %39
  %260 = zext nneg i32 %256 to i64
  %261 = shl nsw i64 -1, %260
  %262 = xor i64 %261, -1
  %263 = select i1 %259, i64 %262, i64 -1, !prof !884
  %264 = icmp sgt i32 %258, 0
  %265 = zext nneg i32 %258 to i64
  %266 = shl nsw i64 -1, %265
  %267 = select i1 %264, i64 %266, i64 -1, !prof !885
  %268 = and i64 %263, %267
  %269 = and i64 %268, %40
  br label %419

270:                                              ; preds = %65
  %271 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !196
  %273 = load i32, ptr %272, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 30
  br i1 %275, label %276, label %419, !prof !886

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.rtx_def, ptr %272, i64 0, i32 1
  %278 = load i64, ptr %277, align 8, !tbaa !196
  %279 = icmp slt i64 %278, 64
  br i1 %279, label %280, label %419, !prof !886

280:                                              ; preds = %276
  %281 = shl nsw i64 -1, %278
  %282 = xor i64 %281, -1
  %283 = and i64 %40, %282
  br label %419

284:                                              ; preds = %65
  %285 = and i32 %14, 268435456
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %297, label %287, !prof !887

287:                                              ; preds = %284
  %288 = and i32 %14, 201326592
  %289 = icmp eq i32 %288, 67108864
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %292 = load i64, ptr %291, align 8, !tbaa !359
  %293 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !196
  %295 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %294, i32 noundef %16, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %296 = and i64 %295, %292
  br label %297

297:                                              ; preds = %290, %287, %284
  %298 = phi i64 [ %296, %290 ], [ %40, %287 ], [ %40, %284 ]
  %299 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !196
  %301 = load i32, ptr %300, align 8
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !196
  %307 = icmp ult i8 %306, 5
  br i1 %307, label %308, label %419, !prof !888

308:                                              ; preds = %297
  %309 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %300, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %310 = and i64 %309, %298
  %311 = load i32, ptr %0, align 8
  %312 = lshr i32 %311, 16
  %313 = and i32 %312, 255
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !196
  %317 = load ptr, ptr %299, align 8, !tbaa !196
  %318 = load i32, ptr %317, align 8
  %319 = lshr i32 %318, 16
  %320 = and i32 %319, 255
  %321 = zext nneg i32 %320 to i64
  %322 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !196
  %324 = icmp ugt i8 %316, %323
  br i1 %324, label %325, label %419, !prof !889

325:                                              ; preds = %308
  %326 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %314
  %327 = load i64, ptr %326, align 8, !tbaa !359
  %328 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %321
  %329 = load i64, ptr %328, align 8, !tbaa !359
  %330 = xor i64 %329, -1
  %331 = and i64 %327, %330
  %332 = or i64 %331, %310
  br label %419

333:                                              ; preds = %65, %65, %65, %65
  %334 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %335 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !196
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 30
  br i1 %339, label %340, label %419, !prof !890

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %342 = load i64, ptr %341, align 8, !tbaa !196
  %343 = icmp ult i64 %342, 64
  br i1 %343, label %344, label %419, !prof !891

344:                                              ; preds = %340
  %345 = zext i8 %31 to i16
  %346 = shl nuw nsw i16 %345, 3
  %347 = zext nneg i16 %346 to i64
  %348 = icmp ult i64 %342, %347
  br i1 %348, label %349, label %419, !prof !892

349:                                              ; preds = %344
  %350 = zext nneg i16 %346 to i32
  %351 = trunc i64 %342 to i32
  %352 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %353 = load i64, ptr %352, align 8, !tbaa !359
  %354 = load ptr, ptr %334, align 8, !tbaa !196
  %355 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %354, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %356 = and i64 %355, %353
  %357 = icmp ugt i32 %39, %350
  br i1 %357, label %358, label %362, !prof !893

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
  ], !prof !894

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
  br i1 %373, label %394, label %374, !prof !895

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
  %409 = load ptr, ptr %408, align 8, !tbaa !196
  %410 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %409, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %411 = and i64 %410, %40
  %412 = icmp eq i64 %411, %40
  br i1 %412, label %419, label %413, !prof !896

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %415 = load ptr, ptr %414, align 8, !tbaa !196
  %416 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %415, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4) #14
  %417 = or i64 %416, %410
  %418 = and i64 %417, %40
  br label %419

419:                                              ; preds = %255, %115, %23, %118, %165, %168, %398, %404, %405, %406, %133, %123, %280, %276, %270, %308, %325, %297, %394, %344, %340, %333, %65, %183, %177, %413, %407, %38, %5, %5, %5, %5, %20, %20, %20, %20, %112, %110, %54
  %420 = phi i64 [ %64, %54 ], [ %114, %112 ], [ %111, %110 ], [ %9, %23 ], [ %9, %20 ], [ %9, %20 ], [ %9, %20 ], [ %9, %20 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %40, %38 ], [ -1, %405 ], [ -1, %404 ], [ %403, %398 ], [ %397, %394 ], [ %40, %344 ], [ %40, %340 ], [ %40, %333 ], [ %332, %325 ], [ %310, %308 ], [ %298, %297 ], [ %283, %280 ], [ %40, %276 ], [ %40, %270 ], [ %176, %168 ], [ %167, %165 ], [ %137, %133 ], [ %127, %123 ], [ %122, %118 ], [ 1, %406 ], [ %117, %115 ], [ %188, %183 ], [ %40, %177 ], [ %418, %413 ], [ %40, %407 ], [ %269, %255 ], [ %40, %65 ]
  ret i64 %420
}

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @num_sign_bit_copies(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !897 {
  %3 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0) #14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cached_num_sign_bit_copies(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !prof !898 !PGOFuncName !899 {
  %6 = icmp eq ptr %0, %2
  br i1 %6, label %7, label %9, !prof !900

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, %3
  br i1 %8, label %23, label %9, !prof !901

9:                                                ; preds = %7, %5
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !229
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %66, !prof !902

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !196
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %25, label %28, !prof !903

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
  %33 = load i32, ptr %32, align 4, !tbaa !229
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %47, !prof !904

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !196
  %39 = icmp eq ptr %21, %38
  br i1 %39, label %44, label %40, !prof !905

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  %43 = icmp eq ptr %21, %42
  br i1 %43, label %44, label %47, !prof !906

44:                                               ; preds = %40, %36
  %45 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %21, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %46 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %21, i32 noundef %1, i32 noundef %45) #14
  br label %23

47:                                               ; preds = %40, %28
  %48 = load i32, ptr %21, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !229
  %53 = and i32 %52, -2
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %66, !prof !907

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !196
  %58 = icmp eq ptr %19, %57
  br i1 %58, label %63, label %59, !prof !908

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !196
  %62 = icmp eq ptr %19, %61
  br i1 %62, label %63, label %66, !prof !909

63:                                               ; preds = %59, %55
  %64 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %19, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %65 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %19, i32 noundef %1, i32 noundef %64) #14
  br label %23

66:                                               ; preds = %59, %47, %9
  %67 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @num_sign_bit_copies1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !prof !910 !PGOFuncName !911 {
  %6 = alloca i32, align 4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !196
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %21, !prof !912

15:                                               ; preds = %5
  %16 = lshr i32 %7, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %521, label %19, !prof !913

19:                                               ; preds = %15
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi i64 [ %20, %19 ], [ %9, %5 ]
  %23 = phi i32 [ %17, %19 ], [ %1, %5 ]
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %25 = load i8, ptr %24, align 1, !tbaa !196
  %26 = add i8 %25, -8
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %508, label %28

28:                                               ; preds = %508, %21
  %29 = lshr i32 %7, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !196
  %34 = add i8 %33, -8
  %35 = icmp ult i8 %34, 10
  br i1 %35, label %513, label %36

36:                                               ; preds = %28
  %37 = add i8 %25, -12
  %38 = icmp ult i8 %37, 5
  br i1 %38, label %521, label %39, !prof !914

39:                                               ; preds = %513, %36
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %41 = load i8, ptr %40, align 1, !tbaa !196
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 3
  %44 = icmp ult i32 %13, %43
  br i1 %44, label %45, label %59, !prof !915

45:                                               ; preds = %39
  %46 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %0, i32 noundef %30, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %47 = load i32, ptr %0, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !196
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %12, %53
  %55 = shl nsw i32 %54, 3
  %56 = add i32 %55, %46
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %521, label %58, !prof !916

58:                                               ; preds = %45
  br label %521

59:                                               ; preds = %39
  %60 = icmp ne i32 %30, 0
  %61 = icmp ugt i32 %13, %43
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %521, label %63, !prof !917

63:                                               ; preds = %59
  %64 = trunc i32 %7 to i16
  switch i16 %64, label %491 [
    i16 37, label %65
    i16 91, label %487
    i16 30, label %78
    i16 39, label %100
    i16 119, label %147
    i16 98, label %160
    i16 100, label %174
    i16 64, label %191
    i16 66, label %195
    i16 69, label %195
    i16 51, label %226
    i16 62, label %249
    i16 61, label %249
    i16 63, label %249
    i16 70, label %249
    i16 71, label %249
    i16 72, label %249
    i16 73, label %249
    i16 49, label %293
    i16 50, label %293
    i16 52, label %328
    i16 59, label %358
    i16 60, label %372
    i16 55, label %386
    i16 58, label %404
    i16 67, label %421
    i16 65, label %451
    i16 47, label %479
    i16 81, label %487
    i16 80, label %487
    i16 82, label %487
    i16 83, label %487
    i16 84, label %487
    i16 85, label %487
    i16 92, label %487
    i16 97, label %487
    i16 93, label %487
    i16 94, label %487
    i16 95, label %487
    i16 96, label %487
    i16 86, label %487
    i16 87, label %487
    i16 88, label %487
    i16 89, label %487
    i16 90, label %487
  ], !prof !918

65:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 1, ptr %6, align 4, !tbaa !229
  %66 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 3), align 8, !tbaa !919
  %67 = call ptr %66(ptr noundef nonnull %0, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69, !prof !920

69:                                               ; preds = %65
  %70 = call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %67, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i32 [ %70, %69 ], [ 1, %65 ]
  %73 = icmp ult i32 %72, 2
  %74 = load i32, ptr %6, align 4
  %75 = icmp ult i32 %74, 2
  %76 = select i1 %73, i1 %75, i1 false
  %77 = call i32 @llvm.umax.i32(i32 %72, i32 %74)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %76, label %491, label %521

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !196
  %81 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %22
  %82 = load i64, ptr %81, align 8, !tbaa !359
  %83 = and i64 %82, %80
  %84 = icmp ult i8 %11, 9
  br i1 %84, label %85, label %93, !prof !921

85:                                               ; preds = %78
  %86 = add nsw i32 %13, -1
  %87 = zext nneg i32 %86 to i64
  %88 = shl nuw i64 1, %87
  %89 = and i64 %83, %88
  %90 = icmp eq i64 %89, 0
  %91 = select i1 %90, i64 0, i64 %82, !prof !922
  %92 = xor i64 %91, %83
  br label %93

93:                                               ; preds = %85, %78
  %94 = phi i64 [ %83, %78 ], [ %92, %85 ]
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %521, label %96, !prof !923

96:                                               ; preds = %93
  %97 = tail call i32 @floor_log2(i64 noundef %94) #15
  %98 = xor i32 %97, -1
  %99 = add i32 %13, %98
  br label %521

100:                                              ; preds = %63
  %101 = and i32 %7, 268435456
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %122, label %103, !prof !924

103:                                              ; preds = %100
  %104 = and i32 %7, 201326592
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !196
  %109 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %108, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %110 = load i32, ptr %0, align 8
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !196
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %12, %116
  %118 = shl nsw i32 %117, 3
  %119 = icmp slt i32 %118, %109
  %120 = or disjoint i32 %118, 1
  %121 = select i1 %119, i32 %109, i32 %120
  br label %521

122:                                              ; preds = %103, %100
  %123 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !196
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !196
  %131 = icmp ugt i8 %11, %130
  br i1 %131, label %491, label %132, !prof !925

132:                                              ; preds = %122
  %133 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %124, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %134 = load ptr, ptr %123, align 8, !tbaa !196
  %135 = load i32, ptr %134, align 8
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 255
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !196
  %141 = zext i8 %140 to i32
  %142 = sub nsw i32 %12, %141
  %143 = shl nsw i32 %142, 3
  %144 = add i32 %143, %133
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %521, label %146, !prof !926

146:                                              ; preds = %132
  br label %521

147:                                              ; preds = %63
  %148 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !196
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 30
  br i1 %152, label %153, label %491

153:                                              ; preds = %147
  %154 = zext nneg i32 %13 to i64
  %155 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !196
  %157 = sub nsw i64 %154, %156
  %158 = tail call i64 @llvm.smax.i64(i64 %157, i64 1)
  %159 = trunc i64 %158 to i32
  br label %521

160:                                              ; preds = %63
  %161 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !196
  %163 = load i32, ptr %162, align 8
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !196
  %169 = zext i8 %168 to i32
  %170 = sub nsw i32 %12, %169
  %171 = shl nsw i32 %170, 3
  %172 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %162, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %173 = add i32 %171, %172
  br label %521

174:                                              ; preds = %63
  %175 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !196
  %177 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %176, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %178 = load ptr, ptr %175, align 8, !tbaa !196
  %179 = load i32, ptr %178, align 8
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 255
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !196
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 %12, %185
  %187 = shl nsw i32 %186, 3
  %188 = add i32 %187, %177
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %521, label %190, !prof !927

190:                                              ; preds = %174
  br label %521

191:                                              ; preds = %63
  %192 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !196
  %194 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %193, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %521

195:                                              ; preds = %63, %63
  %196 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %197 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !196
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 30
  br i1 %201, label %202, label %491, !prof !928

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !196
  %205 = icmp sgt i64 %204, -1
  br i1 %205, label %206, label %491, !prof !929

206:                                              ; preds = %202
  %207 = zext nneg i32 %13 to i64
  %208 = icmp ult i64 %204, %207
  br i1 %208, label %209, label %491, !prof !929

209:                                              ; preds = %206
  %210 = load ptr, ptr %196, align 8, !tbaa !196
  %211 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %210, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %212 = sext i32 %211 to i64
  %213 = icmp eq i32 %8, 66
  %214 = load ptr, ptr %197, align 8, !tbaa !196
  %215 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !196
  br i1 %213, label %217, label %219, !prof !930

217:                                              ; preds = %209
  %218 = icmp slt i64 %216, %212
  br i1 %218, label %222, label %521, !prof !931

219:                                              ; preds = %209
  %220 = sub nsw i64 %207, %216
  %221 = icmp slt i64 %220, %212
  br i1 %221, label %222, label %521, !prof !931

222:                                              ; preds = %219, %217
  %223 = phi i64 [ %216, %217 ], [ %220, %219 ]
  %224 = trunc i64 %223 to i32
  %225 = sub i32 %211, %224
  br label %521

226:                                              ; preds = %63
  %227 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !196
  %229 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %228, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %230 = icmp ugt i8 %11, 8
  br i1 %230, label %231, label %235, !prof !932

231:                                              ; preds = %226
  %232 = icmp sgt i32 %229, 1
  %233 = add nsw i32 %229, -1
  %234 = select i1 %232, i32 %233, i32 1
  br label %521

235:                                              ; preds = %226
  %236 = load ptr, ptr %227, align 8, !tbaa !196
  %237 = tail call i64 @nonzero_bits(ptr noundef %236, i32 noundef %23) #14
  %238 = icmp eq i64 %237, 1
  br i1 %238, label %521, label %239, !prof !933

239:                                              ; preds = %235
  %240 = icmp sgt i32 %229, 1
  br i1 %240, label %241, label %521, !prof !934

241:                                              ; preds = %239
  %242 = add nsw i32 %13, -1
  %243 = zext nneg i32 %242 to i64
  %244 = shl nuw i64 1, %243
  %245 = and i64 %237, %244
  %246 = icmp ne i64 %245, 0
  %247 = sext i1 %246 to i32
  %248 = add nsw i32 %229, %247
  br label %521

249:                                              ; preds = %63, %63, %63, %63, %63, %63, %63
  %250 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !196
  %252 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %251, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %253 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %254 = load ptr, ptr %253, align 8, !tbaa !196
  %255 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %254, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %256 = icmp eq i32 %8, 61
  %257 = icmp sgt i32 %255, 1
  %258 = select i1 %256, i1 %257, i1 false
  %259 = icmp ult i8 %11, 9
  %260 = select i1 %258, i1 %259, i1 false
  br i1 %260, label %261, label %274, !prof !935

261:                                              ; preds = %249
  %262 = load ptr, ptr %253, align 8, !tbaa !196
  %263 = load i32, ptr %262, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 30
  br i1 %265, label %266, label %291, !prof !936

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1
  %268 = load i64, ptr %267, align 8, !tbaa !196
  %269 = add nsw i32 %13, -1
  %270 = zext nneg i32 %269 to i64
  %271 = shl nuw i64 1, %270
  %272 = and i64 %268, %271
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %521, label %291, !prof !937

274:                                              ; preds = %249
  %275 = icmp eq i32 %8, 62
  %276 = select i1 %275, i1 %257, i1 false
  %277 = select i1 %276, i1 %259, i1 false
  br i1 %277, label %278, label %291, !prof !938

278:                                              ; preds = %274
  %279 = load ptr, ptr %253, align 8, !tbaa !196
  %280 = load i32, ptr %279, align 8
  %281 = and i32 %280, 65535
  %282 = icmp eq i32 %281, 30
  br i1 %282, label %283, label %291, !prof !939

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1
  %285 = load i64, ptr %284, align 8, !tbaa !196
  %286 = add nsw i32 %13, -1
  %287 = zext nneg i32 %286 to i64
  %288 = shl nuw i64 1, %287
  %289 = and i64 %285, %288
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %521, !prof !940

291:                                              ; preds = %261, %266, %283, %278, %274
  %292 = tail call i32 @llvm.smin.i32(i32 %252, i32 %255)
  br label %521

293:                                              ; preds = %63, %63
  %294 = icmp eq i32 %8, 49
  br i1 %294, label %295, label %317, !prof !941

295:                                              ; preds = %293
  %296 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %297 = load ptr, ptr %296, align 8, !tbaa !196
  %298 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !199
  %299 = icmp eq ptr %297, %298
  %300 = icmp ult i8 %11, 9
  %301 = select i1 %299, i1 %300, i1 false
  br i1 %301, label %302, label %317, !prof !942

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !196
  %305 = tail call i64 @nonzero_bits(ptr noundef %304, i32 noundef %23) #14
  %306 = add nsw i32 %13, -1
  %307 = zext nneg i32 %306 to i64
  %308 = shl nuw i64 1, %307
  %309 = and i64 %305, %308
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %317, !prof !943

311:                                              ; preds = %302
  %312 = icmp ult i64 %305, 2
  br i1 %312, label %521, label %313, !prof !944

313:                                              ; preds = %311
  %314 = tail call i32 @floor_log2(i64 noundef %305) #15
  %315 = xor i32 %314, -1
  %316 = add i32 %13, %315
  br label %521

317:                                              ; preds = %302, %295, %293
  %318 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !196
  %320 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %319, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %321 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !196
  %323 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %322, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %324 = tail call i32 @llvm.smin.i32(i32 %320, i32 %323)
  %325 = add nsw i32 %324, -1
  %326 = icmp sgt i32 %324, 1
  %327 = select i1 %326, i32 %325, i32 1, !prof !945
  br label %521

328:                                              ; preds = %63
  %329 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !196
  %331 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %330, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %332 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %333 = load ptr, ptr %332, align 8, !tbaa !196
  %334 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %333, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %335 = sub i32 %334, %13
  %336 = add i32 %335, %331
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %355, !prof !946

338:                                              ; preds = %328
  %339 = icmp ugt i8 %11, 8
  br i1 %339, label %353, label %340, !prof !947

340:                                              ; preds = %338
  %341 = load ptr, ptr %329, align 8, !tbaa !196
  %342 = tail call i64 @nonzero_bits(ptr noundef %341, i32 noundef %23) #14
  %343 = add nsw i32 %13, -1
  %344 = zext nneg i32 %343 to i64
  %345 = shl nuw i64 1, %344
  %346 = and i64 %342, %345
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %355, label %348, !prof !948

348:                                              ; preds = %340
  %349 = load ptr, ptr %332, align 8, !tbaa !196
  %350 = tail call i64 @nonzero_bits(ptr noundef %349, i32 noundef %23) #14
  %351 = and i64 %350, %345
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %355, label %353, !prof !949

353:                                              ; preds = %348, %338
  %354 = add nsw i32 %336, -1
  br label %355

355:                                              ; preds = %353, %348, %340, %328
  %356 = phi i32 [ %354, %353 ], [ %336, %348 ], [ %336, %340 ], [ %336, %328 ]
  %357 = tail call i32 @llvm.smax.i32(i32 %356, i32 1)
  br label %521

358:                                              ; preds = %63
  %359 = icmp ugt i8 %11, 8
  br i1 %359, label %521, label %360, !prof !950

360:                                              ; preds = %358
  %361 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !196
  %363 = tail call i64 @nonzero_bits(ptr noundef %362, i32 noundef %23) #14
  %364 = add nsw i32 %13, -1
  %365 = zext nneg i32 %364 to i64
  %366 = shl nuw i64 1, %365
  %367 = and i64 %363, %366
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %521, !prof !951

369:                                              ; preds = %360
  %370 = load ptr, ptr %361, align 8, !tbaa !196
  %371 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %370, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %521

372:                                              ; preds = %63
  %373 = icmp ugt i8 %11, 8
  br i1 %373, label %521, label %374, !prof !952

374:                                              ; preds = %372
  %375 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %376 = load ptr, ptr %375, align 8, !tbaa !196
  %377 = tail call i64 @nonzero_bits(ptr noundef %376, i32 noundef %23) #14
  %378 = add nsw i32 %13, -1
  %379 = zext nneg i32 %378 to i64
  %380 = shl nuw i64 1, %379
  %381 = and i64 %377, %380
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %521, !prof !953

383:                                              ; preds = %374
  %384 = load ptr, ptr %375, align 8, !tbaa !196
  %385 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %384, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  br label %521

386:                                              ; preds = %63
  %387 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !196
  %389 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %388, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %390 = icmp sgt i32 %389, 1
  br i1 %390, label %391, label %521, !prof !954

391:                                              ; preds = %386
  %392 = icmp ugt i8 %11, 8
  br i1 %392, label %402, label %393, !prof !955

393:                                              ; preds = %391
  %394 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %395 = load ptr, ptr %394, align 8, !tbaa !196
  %396 = tail call i64 @nonzero_bits(ptr noundef %395, i32 noundef %23) #14
  %397 = add nsw i32 %13, -1
  %398 = zext nneg i32 %397 to i64
  %399 = shl nuw i64 1, %398
  %400 = and i64 %396, %399
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %521, label %402, !prof !956

402:                                              ; preds = %393, %391
  %403 = add nsw i32 %389, -1
  br label %521

404:                                              ; preds = %63
  %405 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %406 = load ptr, ptr %405, align 8, !tbaa !196
  %407 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %406, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %408 = icmp sgt i32 %407, 1
  br i1 %408, label %409, label %521, !prof !957

409:                                              ; preds = %404
  %410 = icmp ugt i8 %11, 8
  br i1 %410, label %419, label %411, !prof !958

411:                                              ; preds = %409
  %412 = load ptr, ptr %405, align 8, !tbaa !196
  %413 = tail call i64 @nonzero_bits(ptr noundef %412, i32 noundef %23) #14
  %414 = add nsw i32 %13, -1
  %415 = zext nneg i32 %414 to i64
  %416 = shl nuw i64 1, %415
  %417 = and i64 %413, %416
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %521, label %419, !prof !959

419:                                              ; preds = %411, %409
  %420 = add nsw i32 %407, -1
  br label %521

421:                                              ; preds = %63
  %422 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !196
  %424 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %423, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %425 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %426 = load ptr, ptr %425, align 8, !tbaa !196
  %427 = load i32, ptr %426, align 8
  %428 = and i32 %427, 65535
  %429 = icmp eq i32 %428, 30
  br i1 %429, label %430, label %521, !prof !960

430:                                              ; preds = %421
  %431 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1
  %432 = load i64, ptr %431, align 8, !tbaa !196
  %433 = icmp sgt i64 %432, 0
  br i1 %433, label %434, label %521, !prof !961

434:                                              ; preds = %430
  %435 = load i32, ptr %0, align 8
  %436 = lshr i32 %435, 16
  %437 = and i32 %436, 255
  %438 = zext nneg i32 %437 to i64
  %439 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !196
  %441 = zext i8 %440 to i64
  %442 = shl nuw nsw i64 %441, 3
  %443 = icmp ult i64 %432, %442
  br i1 %443, label %444, label %521, !prof !961

444:                                              ; preds = %434
  %445 = zext nneg i32 %13 to i64
  %446 = sext i32 %424 to i64
  %447 = add nsw i64 %432, %446
  %448 = icmp sgt i64 %447, %445
  %449 = trunc i64 %447 to i32
  %450 = select i1 %448, i32 %13, i32 %449, !prof !962
  br label %521

451:                                              ; preds = %63
  %452 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %453 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %454 = load ptr, ptr %453, align 8, !tbaa !196
  %455 = load i32, ptr %454, align 8
  %456 = and i32 %455, 65535
  %457 = icmp eq i32 %456, 30
  br i1 %457, label %458, label %521, !prof !963

458:                                              ; preds = %451
  %459 = getelementptr inbounds %struct.rtx_def, ptr %454, i64 0, i32 1
  %460 = load i64, ptr %459, align 8, !tbaa !196
  %461 = icmp sgt i64 %460, -1
  %462 = zext nneg i32 %13 to i64
  %463 = icmp slt i64 %460, %462
  %464 = select i1 %461, i1 %463, i1 false
  %465 = zext i8 %41 to i64
  %466 = shl nuw nsw i64 %465, 3
  %467 = icmp ult i64 %460, %466
  %468 = select i1 %464, i1 %467, i1 false
  br i1 %468, label %469, label %521, !prof !964

469:                                              ; preds = %458
  %470 = load ptr, ptr %452, align 8, !tbaa !196
  %471 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %470, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %472 = sext i32 %471 to i64
  %473 = load ptr, ptr %453, align 8, !tbaa !196
  %474 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1
  %475 = load i64, ptr %474, align 8, !tbaa !196
  %476 = sub nsw i64 %472, %475
  %477 = tail call i64 @llvm.smax.i64(i64 %476, i64 1)
  %478 = trunc i64 %477 to i32
  br label %521

479:                                              ; preds = %63
  %480 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %481 = load ptr, ptr %480, align 8, !tbaa !196
  %482 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %481, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %483 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %484 = load ptr, ptr %483, align 8, !tbaa !196
  %485 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %484, i32 noundef %23, ptr noundef %2, i32 noundef %3, i32 noundef %4) #14
  %486 = tail call i32 @llvm.smin.i32(i32 %482, i32 %485)
  br label %521

487:                                              ; preds = %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63
  %488 = tail call i32 @floor_log2(i64 noundef 1) #15
  %489 = xor i32 %488, -1
  %490 = add i32 %13, %489
  br label %521

491:                                              ; preds = %63, %195, %202, %206, %147, %122, %71
  %492 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %22
  %493 = load i8, ptr %492, align 1, !tbaa !196
  %494 = zext i8 %493 to i32
  %495 = shl nuw nsw i32 %494, 3
  %496 = icmp ugt i8 %493, 8
  br i1 %496, label %521, label %497, !prof !965

497:                                              ; preds = %491
  %498 = call i64 @nonzero_bits(ptr noundef nonnull %0, i32 noundef %23) #14
  %499 = add nsw i32 %495, -1
  %500 = zext nneg i32 %499 to i64
  %501 = shl nuw i64 1, %500
  %502 = and i64 %498, %501
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %504, label %521, !prof !966

504:                                              ; preds = %497
  %505 = call i32 @floor_log2(i64 noundef %498) #15
  %506 = xor i32 %505, -1
  %507 = add i32 %495, %506
  br label %521

508:                                              ; preds = %21
  %509 = zext nneg i8 %26 to i16
  %510 = lshr i16 523, %509
  %511 = and i16 %510, 1
  %512 = icmp eq i16 %511, 0
  br i1 %512, label %28, label %521

513:                                              ; preds = %28
  %514 = zext nneg i8 %34 to i16
  %515 = lshr i16 1019, %514
  %516 = and i16 %515, 1
  %517 = icmp ne i16 %516, 0
  %518 = add i8 %25, -12
  %519 = icmp ult i8 %518, 5
  %520 = or i1 %517, %519
  br i1 %520, label %521, label %39, !prof !967

521:                                              ; preds = %513, %508, %219, %241, %36, %504, %497, %491, %451, %458, %421, %430, %434, %444, %404, %411, %419, %386, %393, %402, %374, %372, %360, %358, %313, %311, %283, %266, %239, %235, %222, %217, %190, %174, %146, %132, %96, %93, %59, %58, %45, %15, %71, %487, %479, %469, %383, %369, %355, %317, %291, %231, %191, %160, %153, %106
  %522 = phi i32 [ %486, %479 ], [ %478, %469 ], [ %385, %383 ], [ %371, %369 ], [ %357, %355 ], [ %327, %317 ], [ %292, %291 ], [ %234, %231 ], [ %194, %191 ], [ %173, %160 ], [ %159, %153 ], [ %121, %106 ], [ %490, %487 ], [ %77, %71 ], [ 1, %36 ], [ 1, %15 ], [ %56, %58 ], [ 1, %45 ], [ 1, %59 ], [ %99, %96 ], [ %13, %93 ], [ %144, %146 ], [ 1, %132 ], [ %188, %190 ], [ 1, %174 ], [ %225, %222 ], [ 1, %217 ], [ %13, %235 ], [ %229, %239 ], [ %248, %241 ], [ %255, %266 ], [ %255, %283 ], [ %316, %313 ], [ %13, %311 ], [ 1, %358 ], [ 1, %360 ], [ 1, %372 ], [ 1, %374 ], [ %403, %402 ], [ %389, %393 ], [ %389, %386 ], [ %420, %419 ], [ %407, %411 ], [ %407, %404 ], [ %450, %444 ], [ %424, %434 ], [ %424, %430 ], [ %424, %421 ], [ 1, %458 ], [ 1, %451 ], [ 1, %491 ], [ %507, %504 ], [ 1, %497 ], [ 1, %219 ], [ 1, %508 ], [ 1, %513 ]
  ret i32 %522
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @insn_rtx_cost(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 !prof !968 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %37 [
    i16 23, label %30
    i16 15, label %5
  ], !prof !969

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = load i32, ptr %7, align 8, !tbaa !201
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %37, !prof !970

10:                                               ; preds = %5
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %10, %23
  %13 = phi i64 [ 0, %10 ], [ %26, %23 ]
  %14 = phi ptr [ null, %10 ], [ %25, %23 ]
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %7, i64 0, i32 1, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !199
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 23
  %20 = icmp eq ptr %14, null
  %21 = xor i1 %19, true
  %22 = select i1 %21, i1 true, i1 %20
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = select i1 %19, i1 %20, i1 false
  %25 = select i1 %24, ptr %16, ptr %14, !prof !971
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %28, label %12, !prof !972, !llvm.loop !973

28:                                               ; preds = %23
  %29 = icmp eq ptr %25, null
  br i1 %29, label %37, label %30, !prof !235

30:                                               ; preds = %2, %28
  %31 = phi ptr [ %25, %28 ], [ %0, %2 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = tail call i32 @rtx_cost(ptr noundef %33, i32 noundef 23, i8 noundef zeroext %1) #14
  %35 = icmp sgt i32 %34, 0
  %36 = select i1 %35, i32 %34, i32 4, !prof !974
  br label %37

37:                                               ; preds = %12, %5, %2, %28, %30
  %38 = phi i32 [ %36, %30 ], [ 0, %28 ], [ 0, %2 ], [ 0, %5 ], [ 0, %12 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canonicalize_condition(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef readnone %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 !prof !975 {
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = load i32, ptr %1, align 8
  %11 = and i32 %10, 65535
  %12 = lshr i32 %10, 16
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !196
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %21, label %19, !prof !976

19:                                               ; preds = %7
  %20 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %1, ptr noundef nonnull %0) #15
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i32 [ %20, %19 ], [ %11, %7 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %239, label %24, !prof !977

24:                                               ; preds = %21
  %25 = icmp eq ptr %3, null
  br i1 %25, label %27, label %26, !prof !978

26:                                               ; preds = %24
  store ptr %0, ptr %3, align 8, !tbaa !199
  br label %27

27:                                               ; preds = %26, %24
  %28 = sext i32 %22 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !229
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %170, !prof !979

32:                                               ; preds = %27, %161
  %33 = phi i32 [ %165, %161 ], [ %22, %27 ]
  %34 = phi ptr [ %164, %161 ], [ %0, %27 ]
  %35 = phi ptr [ %163, %161 ], [ %15, %27 ]
  %36 = phi ptr [ %162, %161 ], [ %17, %27 ]
  %37 = load i32, ptr %35, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  %43 = icmp ne ptr %36, %42
  %44 = icmp eq ptr %35, %4
  %45 = or i1 %43, %44
  br i1 %45, label %170, label %46, !prof !980

46:                                               ; preds = %32
  %47 = trunc i32 %37 to i16
  switch i16 %47, label %170 [
    i16 48, label %48
    i16 37, label %53
  ], !prof !981

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %50 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !196
  %52 = load ptr, ptr %49, align 8, !tbaa !196
  br label %161, !llvm.loop !982

53:                                               ; preds = %46, %57
  %54 = phi ptr [ %55, %57 ], [ %34, %46 ]
  %55 = tail call ptr @prev_nonnote_insn(ptr noundef %54) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %170, label %57, !prof !983

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8
  %59 = trunc i32 %58 to i16
  switch i16 %59, label %170 [
    i16 7, label %53
    i16 8, label %60
  ], !prof !984

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !196
  %63 = icmp eq ptr %62, %9
  br i1 %63, label %64, label %170, !prof !985

64:                                               ; preds = %60
  %65 = tail call ptr @set_of(ptr noundef nonnull %35, ptr noundef nonnull %55) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %127, label %67, !prof !986

67:                                               ; preds = %64
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 23
  br i1 %70, label %71, label %170, !prof !987

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !196
  %74 = tail call i32 @rtx_equal_p(ptr noundef %73, ptr noundef nonnull %35) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %170, label %76, !prof !988

76:                                               ; preds = %71
  %77 = load ptr, ptr %72, align 8, !tbaa !196
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !196
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 48
  br i1 %85, label %92, label %86, !prof !989

86:                                               ; preds = %76
  switch i32 %33, label %170 [
    i32 80, label %87
    i32 81, label %108
  ], !prof !990

87:                                               ; preds = %86
  %88 = zext nneg i32 %84 to i64
  %89 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !229
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %92, label %170, !prof !991

92:                                               ; preds = %87, %76
  %93 = zext nneg i32 %13 to i64
  %94 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %93
  %95 = icmp eq i32 %13, 0
  %96 = load i8, ptr %94, align 1, !tbaa !196
  %97 = icmp eq i8 %96, 1
  %98 = zext nneg i32 %80 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !196
  %101 = icmp ne i8 %100, 1
  %102 = xor i1 %97, %101
  %103 = select i1 %102, i1 true, i1 %95
  br i1 %103, label %130, label %104, !prof !992

104:                                              ; preds = %92
  %105 = icmp eq i32 %80, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %104
  %107 = icmp eq i32 %33, 81
  br i1 %107, label %108, label %170, !prof !227

108:                                              ; preds = %106, %86
  %109 = zext nneg i32 %84 to i64
  %110 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !229
  %112 = icmp ult i32 %111, 2
  br i1 %112, label %113, label %170, !prof !993

113:                                              ; preds = %108
  %114 = zext nneg i32 %13 to i64
  %115 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !196
  %117 = icmp eq i8 %116, 1
  %118 = zext nneg i32 %80 to i64
  %119 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !196
  %121 = icmp ne i8 %120, 1
  %122 = xor i1 %117, %121
  br i1 %122, label %130, label %123, !prof !994

123:                                              ; preds = %113
  %124 = icmp eq i32 %13, 0
  %125 = icmp eq i32 %80, 0
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %130, label %170

127:                                              ; preds = %64
  %128 = tail call i32 @reg_set_p(ptr noundef nonnull %35, ptr noundef nonnull %55) #14, !range !308
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %161, label %170, !prof !995

130:                                              ; preds = %123, %113, %92, %104
  %131 = phi i1 [ false, %113 ], [ true, %92 ], [ true, %104 ], [ false, %123 ]
  %132 = icmp eq i32 %6, 0
  br i1 %132, label %142, label %133, !prof !996

133:                                              ; preds = %130
  %134 = tail call i32 @modified_in_p(ptr noundef nonnull %82, ptr noundef nonnull %55) #14, !range !308
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %170, !prof !997

136:                                              ; preds = %133
  %137 = tail call i32 @modified_between_p(ptr noundef nonnull %82, ptr noundef nonnull %55, ptr noundef %0) #14, !range !308
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %170, !prof !998

139:                                              ; preds = %136
  %140 = load i32, ptr %82, align 8
  %141 = and i32 %140, 65535
  br label %142

142:                                              ; preds = %139, %130
  %143 = phi i32 [ %141, %139 ], [ %84, %130 ]
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !229
  %147 = icmp ult i32 %146, 2
  br i1 %147, label %148, label %149, !prof !999

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %142
  %150 = phi i32 [ %143, %148 ], [ %33, %142 ]
  br i1 %131, label %154, label %151, !prof !1000

151:                                              ; preds = %149
  %152 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %82, ptr noundef nonnull %55) #15
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %239, label %154, !prof !1001

154:                                              ; preds = %151, %149
  %155 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %156 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !196
  %158 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !196
  br i1 %25, label %161, label %160, !prof !1002

160:                                              ; preds = %154
  store ptr %55, ptr %3, align 8, !tbaa !199
  br label %161

161:                                              ; preds = %127, %160, %154, %48
  %162 = phi ptr [ %51, %48 ], [ %159, %160 ], [ %159, %154 ], [ %36, %127 ]
  %163 = phi ptr [ %52, %48 ], [ %157, %160 ], [ %157, %154 ], [ %35, %127 ]
  %164 = phi ptr [ %34, %48 ], [ %55, %160 ], [ %55, %154 ], [ %55, %127 ]
  %165 = phi i32 [ %33, %48 ], [ %155, %160 ], [ %155, %154 ], [ %33, %127 ]
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !229
  %169 = icmp ult i32 %168, 2
  br i1 %169, label %32, label %170, !prof !1003

170:                                              ; preds = %32, %161, %46, %60, %71, %67, %127, %136, %133, %123, %108, %86, %106, %87, %57, %53, %27
  %171 = phi ptr [ %17, %27 ], [ %36, %53 ], [ %36, %57 ], [ %36, %32 ], [ %162, %161 ], [ %36, %46 ], [ %36, %60 ], [ %36, %71 ], [ %36, %67 ], [ %36, %127 ], [ %36, %136 ], [ %36, %133 ], [ %36, %123 ], [ %36, %108 ], [ %36, %86 ], [ %36, %106 ], [ %36, %87 ]
  %172 = phi ptr [ %15, %27 ], [ %35, %53 ], [ %35, %57 ], [ %35, %32 ], [ %163, %161 ], [ %35, %46 ], [ %35, %60 ], [ %35, %71 ], [ %35, %67 ], [ %35, %127 ], [ %35, %136 ], [ %35, %133 ], [ %35, %123 ], [ %35, %108 ], [ %35, %86 ], [ %35, %106 ], [ %35, %87 ]
  %173 = phi i32 [ %22, %27 ], [ %33, %53 ], [ %33, %57 ], [ %33, %32 ], [ %165, %161 ], [ %33, %46 ], [ %33, %60 ], [ %33, %71 ], [ %33, %67 ], [ %33, %127 ], [ %33, %136 ], [ %33, %133 ], [ 81, %123 ], [ 81, %108 ], [ %33, %86 ], [ %33, %106 ], [ 80, %87 ]
  %174 = load i32, ptr %172, align 8
  %175 = and i32 %174, 65535
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !229
  %179 = icmp eq i32 %178, 9
  br i1 %179, label %180, label %183, !prof !1004

180:                                              ; preds = %170
  %181 = tail call i32 @swap_condition(i32 noundef %173) #15
  %182 = load i32, ptr %171, align 8
  br label %183

183:                                              ; preds = %180, %170
  %184 = phi i32 [ %182, %180 ], [ %174, %170 ]
  %185 = phi ptr [ %172, %180 ], [ %171, %170 ]
  %186 = phi ptr [ %171, %180 ], [ %172, %170 ]
  %187 = phi i32 [ %181, %180 ], [ %173, %170 ]
  %188 = icmp eq i32 %5, 0
  %189 = lshr i32 %184, 16
  %190 = and i32 %189, 255
  %191 = zext nneg i32 %190 to i64
  br i1 %188, label %192, label %196, !prof !1005

192:                                              ; preds = %183
  %193 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %191
  %194 = load i8, ptr %193, align 1, !tbaa !196
  %195 = icmp eq i8 %194, 1
  br i1 %195, label %239, label %196, !prof !1006

196:                                              ; preds = %183, %192
  %197 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %191
  %198 = load i8, ptr %197, align 1, !tbaa !196
  %199 = icmp eq i8 %198, 1
  br i1 %199, label %235, label %200, !prof !1007

200:                                              ; preds = %196
  %201 = load i32, ptr %185, align 8
  %202 = and i32 %201, 65535
  %203 = icmp ne i32 %202, 30
  %204 = icmp eq i32 %190, 0
  %205 = or i1 %204, %203
  br i1 %205, label %235, label %206, !prof !1008

206:                                              ; preds = %200
  %207 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %191
  %208 = load i8, ptr %207, align 1, !tbaa !196
  %209 = zext i8 %208 to i64
  %210 = shl nuw nsw i64 %209, 3
  %211 = icmp ult i8 %208, 9
  br i1 %211, label %212, label %235, !prof !1009

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %214 = load i64, ptr %213, align 8, !tbaa !196
  %215 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %191
  %216 = load i64, ptr %215, align 8, !tbaa !359
  switch i32 %187, label %235 [
    i32 84, label %217
    i32 82, label %220
    i32 88, label %226
    i32 86, label %228
  ], !prof !1010

217:                                              ; preds = %212
  %218 = lshr i64 %216, 1
  %219 = icmp eq i64 %214, %218
  br i1 %219, label %235, label %230, !prof !1011

220:                                              ; preds = %212
  %221 = and i64 %216, %214
  %222 = add nuw nsw i64 %210, 4294967295
  %223 = and i64 %222, 4294967295
  %224 = shl nuw i64 1, %223
  %225 = icmp eq i64 %221, %224
  br i1 %225, label %235, label %230, !prof !1012

226:                                              ; preds = %212
  %227 = icmp ult i64 %214, %216
  br i1 %227, label %230, label %235, !prof !1013

228:                                              ; preds = %212
  %229 = icmp eq i64 %214, 0
  br i1 %229, label %235, label %230, !prof !1014

230:                                              ; preds = %228, %226, %220, %217
  %231 = phi i64 [ 1, %217 ], [ -1, %220 ], [ 1, %226 ], [ -1, %228 ]
  %232 = phi i32 [ 85, %217 ], [ 83, %220 ], [ 89, %226 ], [ 87, %228 ]
  %233 = add i64 %214, %231
  %234 = tail call ptr @gen_int_mode(i64 noundef %233, i32 noundef %190) #15
  br label %235

235:                                              ; preds = %230, %217, %220, %226, %228, %212, %196, %200, %206
  %236 = phi ptr [ %185, %206 ], [ %185, %200 ], [ %185, %196 ], [ %185, %212 ], [ %185, %228 ], [ %185, %226 ], [ %185, %220 ], [ %185, %217 ], [ %234, %230 ]
  %237 = phi i32 [ %187, %206 ], [ %187, %200 ], [ %187, %196 ], [ %187, %212 ], [ 86, %228 ], [ 88, %226 ], [ 82, %220 ], [ 84, %217 ], [ %232, %230 ]
  %238 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %237, i32 noundef 0, ptr noundef nonnull %186, ptr noundef %236) #15
  br label %239

239:                                              ; preds = %151, %192, %21, %235
  %240 = phi ptr [ %238, %235 ], [ null, %21 ], [ null, %192 ], [ null, %151 ]
  ret ptr %240
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
define dso_local ptr @get_condition(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !1015 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %32, !prof !1016

8:                                                ; preds = %4
  %9 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11, !prof !1017

11:                                               ; preds = %8
  %12 = tail call ptr @pc_set(ptr noundef nonnull %0) #15
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 44
  br i1 %21, label %22, label %29, !prof !1018

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !196
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !196
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
define dso_local noundef zeroext i8 @truncated_to_mode(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !195 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 4), align 8, !tbaa !1019
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
  %19 = load i32, ptr %18, align 4, !tbaa !229
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %12
  %22 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %1, i32 noundef %15) #14
  %23 = load i32, ptr %1, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %26, i64 %17
  %28 = load i32, ptr %27, align 4, !tbaa !229
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
define dso_local void @init_rtlanal() local_unnamed_addr #2 !prof !1020 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %13, %1 ]
  %3 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = tail call ptr @strpbrk(ptr noundef %4, ptr noundef nonnull @.str.2) #14
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = select i1 %6, i32 -1, i32 %10, !prof !1021
  %12 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %2
  store i32 %11, ptr %12, align 4, !tbaa !229
  %13 = add nuw nsw i64 %2, 1
  %14 = icmp eq i64 %13, 139
  br i1 %14, label %15, label %1, !prof !1022, !llvm.loop !1023

15:                                               ; preds = %1
  tail call fastcc void @init_num_sign_bit_copies_in_rep() #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_num_sign_bit_copies_in_rep() unnamed_addr #2 !prof !1020 !PGOFuncName !1024 {
  %1 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !196
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %62, label %3, !prof !271

3:                                                ; preds = %0
  %4 = zext i8 %1 to i64
  br label %5

5:                                                ; preds = %3, %57
  %6 = phi i8 [ %1, %3 ], [ %60, %57 ]
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %1, %6
  br i1 %8, label %57, label %9, !prof !1025

9:                                                ; preds = %5
  %10 = zext i8 %6 to i64
  br label %11

11:                                               ; preds = %9, %53
  %12 = phi i8 [ %1, %9 ], [ %55, %53 ]
  %13 = zext i8 %12 to i32
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 55), align 8, !tbaa !1026
  %15 = tail call i32 %14(i32 noundef %13, i32 noundef %7) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17, !prof !1027

17:                                               ; preds = %11
  %18 = zext i8 %12 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !196
  %21 = icmp eq i8 %20, %6
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5004, ptr noundef nonnull @.str.1) #15
  br label %23

23:                                               ; preds = %11, %17, %22
  %24 = icmp eq i8 %12, %6
  %25 = zext i8 %12 to i64
  br i1 %24, label %53, label %26, !prof !271

26:                                               ; preds = %23
  %27 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %10, i64 %25
  br label %28

28:                                               ; preds = %26, %51
  %29 = phi i32 [ %13, %26 ], [ %33, %51 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !196
  %33 = zext i8 %32 to i32
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 55), align 8, !tbaa !1026
  %35 = tail call i32 %34(i32 noundef %29, i32 noundef %33) #15
  %36 = icmp ne i32 %35, 98
  %37 = load i32, ptr %27, align 4, !tbaa !229
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %51, label %40, !prof !1028

40:                                               ; preds = %28
  %41 = zext i8 %32 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !196
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %46 = load i8, ptr %45, align 1, !tbaa !196
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %44, %47
  %49 = shl nsw i32 %48, 3
  %50 = add i32 %49, %37
  store i32 %50, ptr %27, align 4, !tbaa !229
  br label %51

51:                                               ; preds = %28, %40
  %52 = icmp eq i8 %32, %6
  br i1 %52, label %53, label %28, !prof !1029, !llvm.loop !1030

53:                                               ; preds = %51, %23
  %54 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %25
  %55 = load i8, ptr %54, align 1, !tbaa !196
  %56 = icmp eq i8 %55, %6
  br i1 %56, label %57, label %11, !prof !1031, !llvm.loop !1032

57:                                               ; preds = %53, %5
  %58 = phi i64 [ %4, %5 ], [ %10, %53 ]
  %59 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !196
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %5, !prof !1033, !llvm.loop !1034

62:                                               ; preds = %57, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @constant_pool_constant_p(ptr noundef %0) local_unnamed_addr #2 !prof !1035 {
  %2 = tail call ptr @avoid_constant_pool_reference(ptr noundef %0) #15
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 32
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @low_bitmask_len(i32 noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !195 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !196
  %8 = icmp ugt i8 %7, 8
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %5
  %11 = load i64, ptr %10, align 8, !tbaa !359
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
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!194}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!36 = !{ptr @rtx_varies_p, ptr @rtx_varies_p, i64 2987882}
!37 = !{ptr @rtx_addr_can_trap_p, ptr @rtx_addr_can_trap_p_1, i64 470160}
!38 = !{ptr @rtx_addr_can_trap_p_1, ptr @host_integerp, i64 32194}
!39 = !{ptr @rtx_addr_can_trap_p_1, ptr @tree_low_cst, i64 32193}
!40 = !{ptr @rtx_addr_can_trap_p_1, ptr @int_size_in_bytes, i64 87156}
!41 = !{ptr @rtx_addr_can_trap_p_1, ptr @rhs_regno, i64 591476}
!42 = !{ptr @rtx_addr_can_trap_p_1, ptr @rtx_addr_can_trap_p_1, i64 476561}
!43 = !{ptr @nonzero_address_p, ptr @rhs_regno, i64 1123898}
!44 = !{ptr @rtx_addr_varies_p, ptr @rtx_varies_p, i64 22}
!45 = !{ptr @rtx_addr_varies_p, ptr @rtx_addr_varies_p, i64 361738}
!46 = !{ptr @count_occurrences, ptr @count_occurrences, i64 62747}
!47 = !{ptr @count_occurrences, ptr @rtx_equal_p, i64 1340}
!48 = !{ptr @reg_mentioned_p, ptr @rhs_regno, i64 4076436}
!49 = !{ptr @reg_mentioned_p, ptr @rtx_equal_p, i64 9180}
!50 = !{ptr @reg_mentioned_p, ptr @reg_mentioned_p, i64 11170234}
!51 = !{ptr @reg_used_between_p, ptr @reg_overlap_mentioned_p, i64 45224}
!52 = !{ptr @reg_used_between_p, ptr @find_reg_fusage, i64 15}
!53 = !{ptr @reg_overlap_mentioned_p, ptr @rhs_regno, i64 6238144}
!54 = !{ptr @reg_overlap_mentioned_p, ptr @subreg_regno, i64 1}
!55 = !{ptr @reg_overlap_mentioned_p, ptr @subreg_nregs, i64 1}
!56 = !{ptr @reg_overlap_mentioned_p, ptr @end_hard_regno, i64 2043224}
!57 = !{ptr @reg_overlap_mentioned_p, ptr @refers_to_regno_p, i64 6238144}
!58 = !{ptr @reg_overlap_mentioned_p, ptr @reg_overlap_mentioned_p, i64 5405}
!59 = !{ptr @reg_overlap_mentioned_p, ptr @reg_mentioned_p, i64 43044}
!60 = !{ptr @reg_overlap_mentioned_p, ptr @fancy_abort, i64 1}
!61 = !{ptr @find_reg_fusage, ptr @fancy_abort, i64 1}
!62 = !{ptr @find_reg_fusage, ptr @rtx_equal_p, i64 7}
!63 = !{ptr @find_reg_fusage, ptr @rhs_regno, i64 44222}
!64 = !{ptr @find_reg_fusage, ptr @end_hard_regno, i64 6714}
!65 = !{ptr @find_reg_fusage, ptr @find_regno_fusage, i64 7550}
!66 = !{ptr @reg_referenced_p, ptr @reg_overlap_mentioned_p, i64 1310504}
!67 = !{ptr @reg_referenced_p, ptr @reg_referenced_p, i64 538687}
!68 = !{ptr @reg_set_between_p, ptr @reg_set_p, i64 221254}
!69 = !{ptr @reg_set_p, ptr @rhs_regno, i64 75327}
!70 = !{ptr @reg_set_p, ptr @overlaps_hard_reg_set_p, i64 41666}
!71 = !{ptr @reg_set_p, ptr @find_reg_fusage, i64 34504}
!72 = !{ptr @reg_set_p, ptr @set_of, i64 2267156}
!73 = !{ptr @overlaps_hard_reg_set_p, ptr @end_hard_regno, i64 843}
!74 = !{ptr @set_of, ptr @note_stores, i64 3346642}
!75 = !{ptr @modified_between_p, ptr @modified_between_p, i64 2380749}
!76 = !{ptr @modified_between_p, ptr @memory_modified_in_insn_p, i64 38075}
!77 = !{ptr @modified_between_p, ptr @reg_set_between_p, i64 983684}
!78 = !{ptr @modified_in_p, ptr @modified_in_p, i64 3506802}
!79 = !{ptr @modified_in_p, ptr @memory_modified_in_insn_p, i64 268742}
!80 = !{ptr @modified_in_p, ptr @reg_set_p, i64 1476379}
!81 = !{ptr @note_stores, ptr @rhs_regno, i64 4722}
!82 = !{ptr @note_stores, ptr @note_stores, i64 11619694}
!83 = !{ptr @set_of_1, ptr @rtx_equal_p, i64 3592370}
!84 = !{ptr @set_of_1, ptr @reg_overlap_mentioned_p, i64 1967375}
!85 = !{ptr @single_set_2, ptr @find_reg_note, i64 373941}
!86 = !{ptr @single_set_2, ptr @side_effects_p, i64 56591}
!87 = !{ptr @find_reg_note, ptr @fancy_abort, i64 1}
!88 = !{ptr @side_effects_p, ptr @side_effects_p, i64 29710261}
!89 = !{ptr @set_noop_p, ptr @rtx_equal_p, i64 34037}
!90 = !{ptr @set_noop_p, ptr @side_effects_p, i64 20}
!91 = !{ptr @set_noop_p, ptr @rhs_regno, i64 3880922}
!92 = !{ptr @noop_move_p, ptr @find_reg_note, i64 14360864}
!93 = !{ptr @noop_move_p, ptr @set_noop_p, i64 13595773}
!94 = !{ptr @refers_to_regno_p, ptr @rhs_regno, i64 7890162}
!95 = !{ptr @refers_to_regno_p, ptr @end_hard_regno, i64 1908495}
!96 = !{ptr @refers_to_regno_p, ptr @subreg_regno, i64 3}
!97 = !{ptr @refers_to_regno_p, ptr @subreg_nregs, i64 2}
!98 = !{ptr @refers_to_regno_p, ptr @refers_to_regno_p, i64 6842966}
!99 = !{ptr @subreg_regno, ptr @rhs_regno, i64 11843}
!100 = !{ptr @subreg_regno, ptr @subreg_regno_offset, i64 11843}
!101 = !{ptr @subreg_nregs, ptr @rhs_regno, i64 6999}
!102 = !{ptr @subreg_nregs, ptr @subreg_nregs_with_regno, i64 6999}
!103 = !{ptr @note_uses, ptr @note_uses, i64 1890744}
!104 = !{ptr @dead_or_set_p, ptr @fancy_abort, i64 1}
!105 = !{ptr @dead_or_set_p, ptr @rhs_regno, i64 1962808}
!106 = !{ptr @dead_or_set_p, ptr @end_hard_regno, i64 672552}
!107 = !{ptr @dead_or_set_p, ptr @dead_or_set_regno_p, i64 2355465}
!108 = !{ptr @dead_or_set_regno_p, ptr @find_regno_note, i64 1962809}
!109 = !{ptr @dead_or_set_regno_p, ptr @find_regno_fusage, i64 334}
!110 = !{ptr @dead_or_set_regno_p, ptr @covers_regno_p, i64 1545576}
!111 = !{ptr @find_regno_note, ptr @rhs_regno, i64 2027320}
!112 = !{ptr @find_regno_note, ptr @end_hard_regno, i64 856224}
!113 = !{ptr @find_regno_fusage, ptr @rhs_regno, i64 10745}
!114 = !{ptr @find_regno_fusage, ptr @end_hard_regno, i64 10739}
!115 = !{ptr @covers_regno_p, ptr @covers_regno_no_parallel_p, i64 1486646}
!116 = !{ptr @covers_regno_no_parallel_p, ptr @rhs_regno, i64 1375098}
!117 = !{ptr @covers_regno_no_parallel_p, ptr @end_hard_regno, i64 722423}
!118 = !{ptr @find_reg_equal_equiv_note, ptr @multiple_sets, i64 1020488}
!119 = !{ptr @find_constant_src, ptr @single_set_2, i64 1}
!120 = !{ptr @find_constant_src, ptr @avoid_constant_pool_reference, i64 210}
!121 = !{ptr @find_constant_src, ptr @find_reg_equal_equiv_note, i64 143}
!122 = !{ptr @alloc_reg_note, ptr @alloc_INSN_LIST, i64 1745}
!123 = !{ptr @alloc_reg_note, ptr @alloc_EXPR_LIST, i64 2013590}
!124 = !{ptr @add_reg_note, ptr @alloc_reg_note, i64 1901591}
!125 = !{ptr @remove_note, ptr @df_notes_rescan, i64 14114}
!126 = !{ptr @volatile_insn_p, ptr @volatile_insn_p, i64 630109}
!127 = !{ptr @volatile_refs_p, ptr @volatile_refs_p, i64 53635757}
!128 = !{ptr @may_trap_p_1, ptr @gen_rtx_CONST_INT, i64 212947}
!129 = !{ptr @may_trap_p_1, ptr @rtx_addr_can_trap_p_1, i64 837604}
!130 = !{ptr @may_trap_p_1, ptr @may_trap_p_1, i64 5902244}
!131 = !{ptr @may_trap_p, ptr @may_trap_p_1, i64 1517688}
!132 = !{ptr @may_trap_or_fault_p, ptr @may_trap_p_1, i64 365072}
!133 = !{ptr @replace_rtx, ptr @replace_rtx, i64 16916}
!134 = !{ptr @replace_rtx, ptr @simplify_subreg, i64 1}
!135 = !{ptr @rtx_referenced_p, ptr @for_each_rtx, i64 452}
!136 = !{ptr @for_each_rtx, ptr @for_each_rtx_1, i64 17908273}
!137 = !{ptr @rtx_referenced_p_1, ptr @rtx_equal_p, i64 5872}
!138 = !{ptr @tablejump_p, ptr @next_active_insn, i64 1212702}
!139 = !{ptr @for_each_rtx_1, ptr @for_each_rtx_1, i64 19641254}
!140 = !{ptr @commutative_operand_precedence, ptr @avoid_constant_pool_reference, i64 14761248}
!141 = !{ptr @swap_commutative_operands_p, ptr @commutative_operand_precedence, i64 28786948}
!142 = !{ptr @loc_mentioned_in_p, ptr @loc_mentioned_in_p, i64 870}
!143 = !{ptr @subreg_get_info, ptr @fancy_abort, i64 6}
!144 = !{ptr @subreg_get_info, ptr @subreg_lowpart_offset, i64 162814}
!145 = !{ptr @subreg_get_info, ptr @mode_for_size, i64 3993}
!146 = !{ptr @subreg_regno_offset, ptr @subreg_get_info, i64 134201}
!147 = !{ptr @subreg_offset_representable_p, ptr @subreg_get_info, i64 74}
!148 = !{ptr @simplify_subreg_regno, ptr @ix86_cannot_change_mode_class, i64 51296}
!149 = !{ptr @simplify_subreg_regno, ptr @subreg_get_info, i64 17099}
!150 = !{ptr @simplify_subreg_regno, ptr @ix86_hard_regno_mode_ok, i64 17098}
!151 = !{ptr @subreg_nregs_with_regno, ptr @subreg_get_info, i64 6999}
!152 = !{ptr @keep_with_call_p, ptr @single_set_2, i64 1}
!153 = !{ptr @keep_with_call_p, ptr @rhs_regno, i64 68606}
!154 = !{ptr @keep_with_call_p, ptr @general_operand, i64 27}
!155 = !{ptr @keep_with_call_p, ptr @ix86_function_value_regno_p, i64 21831}
!156 = !{ptr @keep_with_call_p, ptr @next_nonnote_insn, i64 12}
!157 = !{ptr @keep_with_call_p, ptr @keep_with_call_p, i64 11}
!158 = !{ptr @label_is_jump_target_p, ptr @tablejump_p, i64 83938}
!159 = !{ptr @label_is_jump_target_p, ptr @find_reg_note, i64 83937}
!160 = !{ptr @rtx_cost, ptr @ix86_modes_tieable_p, i64 77374}
!161 = !{ptr @rtx_cost, ptr @rtx_cost, i64 16222313}
!162 = !{ptr @address_cost, ptr @memory_address_addr_space_p, i64 88441}
!163 = !{ptr @nonzero_bits, ptr @cached_nonzero_bits, i64 13231066}
!164 = !{ptr @cached_nonzero_bits, ptr @cached_nonzero_bits, i64 33712}
!165 = !{ptr @cached_nonzero_bits, ptr @nonzero_bits1, i64 20517244}
!166 = !{ptr @nonzero_bits1, ptr @cached_nonzero_bits, i64 7308326}
!167 = !{ptr @nonzero_bits1, ptr @rhs_regno, i64 65124}
!168 = !{ptr @nonzero_bits1, ptr @ix86_cfun_abi, i64 1}
!169 = !{ptr @nonzero_bits1, ptr @floor_log2, i64 3273746}
!170 = !{ptr @nonzero_bits1, ptr @fancy_abort, i64 1}
!171 = !{ptr @num_sign_bit_copies, ptr @cached_num_sign_bit_copies, i64 4339894}
!172 = !{ptr @cached_num_sign_bit_copies, ptr @cached_num_sign_bit_copies, i64 5990}
!173 = !{ptr @cached_num_sign_bit_copies, ptr @num_sign_bit_copies1, i64 5880482}
!174 = !{ptr @num_sign_bit_copies1, ptr @cached_num_sign_bit_copies, i64 870252}
!175 = !{ptr @num_sign_bit_copies1, ptr @floor_log2, i64 416354}
!176 = !{ptr @num_sign_bit_copies1, ptr @nonzero_bits, i64 1755638}
!177 = !{ptr @insn_rtx_cost, ptr @rtx_cost, i64 1087255}
!178 = !{ptr @canonicalize_condition, ptr @reversed_comparison_code, i64 4798}
!179 = !{ptr @canonicalize_condition, ptr @prev_nonnote_insn, i64 710821}
!180 = !{ptr @canonicalize_condition, ptr @set_of, i64 665174}
!181 = !{ptr @canonicalize_condition, ptr @rtx_equal_p, i64 621527}
!182 = !{ptr @canonicalize_condition, ptr @reg_set_p, i64 43646}
!183 = !{ptr @canonicalize_condition, ptr @modified_in_p, i64 473644}
!184 = !{ptr @canonicalize_condition, ptr @modified_between_p, i64 472434}
!185 = !{ptr @canonicalize_condition, ptr @swap_condition, i64 1}
!186 = !{ptr @canonicalize_condition, ptr @gen_int_mode, i64 26073}
!187 = !{ptr @canonicalize_condition, ptr @gen_rtx_fmt_ee_stat, i64 756787}
!188 = !{ptr @get_condition, ptr @any_condjump_p, i64 630600}
!189 = !{ptr @get_condition, ptr @pc_set, i64 628040}
!190 = !{ptr @get_condition, ptr @canonicalize_condition, i64 628040}
!191 = !{ptr @init_rtlanal, ptr @strpbrk, i64 70}
!192 = !{ptr @init_rtlanal, ptr @init_num_sign_bit_copies_in_rep, i64 1}
!193 = !{ptr @constant_pool_constant_p, ptr @avoid_constant_pool_reference, i64 100}
!194 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!195 = !{!"function_entry_count", i64 0}
!196 = !{!197, !197, i64 0}
!197 = !{!"omnipotent char", !198, i64 0}
!198 = !{!"Simple C/C++ TBAA"}
!199 = !{!200, !200, i64 0}
!200 = !{!"any pointer", !197, i64 0}
!201 = !{!202, !203, i64 0}
!202 = !{!"rtvec_def", !203, i64 0, !197, i64 8}
!203 = !{!"int", !197, i64 0}
!204 = distinct !{!204, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = distinct !{!206, !205}
!207 = !{!"function_entry_count", i64 7442975}
!208 = !{!"branch_weights", i32 1, i32 7442976}
!209 = !{!"branch_weights", i32 1754252, i32 2314927, i32 46351, i32 1140127, i32 2771, i32 1, i32 1, i32 90675, i32 9821, i32 2084059, i32 1, i32 1}
!210 = !{!"branch_weights", i32 2243175, i32 71753}
!211 = !{!"branch_weights", i32 101366719, i32 -257500758}
!212 = !{!"branch_weights", i32 3904, i32 2029116}
!213 = !{!"branch_weights", i32 1, i32 3904}
!214 = !{!"branch_weights", i32 1, i32 53330}
!215 = !{!"branch_weights", i32 90187486, i32 -1889687300, i32 839}
!216 = !{!"branch_weights", i32 1164533, i32 1700922}
!217 = distinct !{!217, !205}
!218 = !{!"branch_weights", i32 2919566, i32 53330}
!219 = distinct !{!219, !205}
!220 = !{!"function_entry_count", i64 470160}
!221 = !{!"function_entry_count", i64 1814517}
!222 = !{!"rtlanal.c:rtx_addr_can_trap_p_1"}
!223 = !{!"branch_weights", i32 237761, i32 116902, i32 1, i32 906084, i32 25123, i32 512836, i32 1, i32 1, i32 15817, i32 1, i32 1, i32 1, i32 1}
!224 = !{!"branch_weights", i32 116902, i32 1}
!225 = !{!"branch_weights", i32 116864, i32 39}
!226 = !{!"branch_weights", i32 1, i32 116864}
!227 = !{!"branch_weights", i32 -2147483648, i32 0}
!228 = !{!"branch_weights", i32 86, i32 116779}
!229 = !{!203, !203, i64 0}
!230 = !{!"branch_weights", i32 116665, i32 115}
!231 = !{!"branch_weights", i32 85196, i32 31470}
!232 = !{!"branch_weights", i32 1, i32 31470}
!233 = !{!"branch_weights", i32 115, i32 85196}
!234 = !{!"branch_weights", i32 1, i32 85196}
!235 = !{!"branch_weights", i32 0, i32 -2147483648}
!236 = !{!"branch_weights", i32 1939671955, i32 -859164600}
!237 = !{!"branch_weights", i32 1003, i32 578135}
!238 = !{!"branch_weights", i32 1, i32 1003}
!239 = !{!"branch_weights", i32 1, i32 512836}
!240 = !{!"branch_weights", i32 465812, i32 47025}
!241 = !{!"branch_weights", i32 191577, i32 274236}
!242 = !{!"function_entry_count", i64 58554980}
!243 = !{!"rtlanal.c:rhs_regno"}
!244 = !{!"function_entry_count", i64 2694109}
!245 = !{!"branch_weights", i32 1150037, i32 9, i32 1, i32 824311, i32 2, i32 719755, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!246 = !{!"branch_weights", i32 15186, i32 -121822988}
!247 = !{!"branch_weights", i32 1, i32 824311}
!248 = !{!"branch_weights", i32 718158, i32 1598}
!249 = !{!"branch_weights", i32 1, i32 1598}
!250 = !{!"function_entry_count", i64 683858}
!251 = !{!"branch_weights", i32 1, i32 683859}
!252 = !{!"branch_weights", i32 23, i32 683837}
!253 = !{!"branch_weights", i32 1, i32 23}
!254 = !{!"branch_weights", i32 1, i32 683836}
!255 = !{!"branch_weights", i32 -1688628521, i32 816141301, i32 2256}
!256 = !{!"branch_weights", i32 361730, i32 1}
!257 = distinct !{!257, !205}
!258 = !{!"branch_weights", i32 833075, i32 683836}
!259 = distinct !{!259, !205}
!260 = !{!"function_entry_count", i64 29246}
!261 = !{!"branch_weights", i32 21722, i32 7526}
!262 = !{!"branch_weights", i32 986365473, i32 131072, i32 -1447869986}
!263 = !{!"branch_weights", i32 21722, i32 1}
!264 = !{!"function_entry_count", i64 66019}
!265 = !{!"branch_weights", i32 66020, i32 1}
!266 = !{!"branch_weights", i32 1, i32 132040, i32 1}
!267 = !{!268, !269, i64 16}
!268 = !{!"object_block", !200, i64 0, !203, i64 8, !269, i64 16, !200, i64 24, !200, i64 32}
!269 = !{!"long", !197, i64 0}
!270 = !{!"function_entry_count", i64 62409}
!271 = !{!"branch_weights", i32 1, i32 127}
!272 = !{!"branch_weights", i32 20485, i32 12811, i32 10343, i32 1, i32 1, i32 1, i32 316, i32 1, i32 1, i32 1, i32 1, i32 2964, i32 5337}
!273 = !{!"branch_weights", i32 127, i32 1300225}
!274 = !{!"branch_weights", i32 1114, i32 1851}
!275 = !{!"branch_weights", i32 1114, i32 1}
!276 = !{!"branch_weights", i32 4343338, i32 1000000}
!277 = !{!"branch_weights", i32 10159, i32 42092}
!278 = !{!"branch_weights", i32 1, i32 27784}
!279 = !{!"branch_weights", i32 1, i32 43800, i32 2364}
!280 = !{!"branch_weights", i32 2363, i32 1}
!281 = !{!"branch_weights", i32 2371, i32 2363}
!282 = distinct !{!282, !205}
!283 = !{!"branch_weights", i32 27784, i32 21812}
!284 = distinct !{!284, !205}
!285 = !{!"function_entry_count", i64 14714691}
!286 = !{!"branch_weights", i32 11502, i32 14703191}
!287 = !{!"branch_weights", i32 2062850, i32 12640342}
!288 = !{!"branch_weights", i32 480132, i32 12160211}
!289 = !{!"branch_weights", i32 6721547, i32 2119748, i32 773, i32 1, i32 756514, i32 2561400, i32 1, i32 234, i32 1}
!290 = !{!"branch_weights", i32 2038221, i32 81528}
!291 = !{!"branch_weights", i32 9180, i32 6712368}
!292 = !{!"branch_weights", i32 3621, i32 5560}
!293 = !{!"branch_weights", i32 1, i32 2220426}
!294 = !{!"branch_weights", i32 988714395, i32 57560491, i32 -753068650}
!295 = !{!"branch_weights", i32 7553, i32 299354}
!296 = !{!"branch_weights", i32 152107, i32 147248}
!297 = distinct !{!297, !205}
!298 = !{!"branch_weights", i32 5177073, i32 4348315}
!299 = !{!"branch_weights", i32 10118753, i32 2220426}
!300 = distinct !{!300, !205}
!301 = distinct !{!301, !205}
!302 = !{!"function_entry_count", i64 91090}
!303 = !{!"branch_weights", i32 1, i32 91091}
!304 = !{!"branch_weights", i32 1, i32 87991}
!305 = !{!"branch_weights", i32 -1841424448, i32 1029317068}
!306 = !{!"branch_weights", i32 41222, i32 3100}
!307 = !{!"branch_weights", i32 15, i32 41208}
!308 = !{i32 0, i32 2}
!309 = !{!"branch_weights", i32 15, i32 1}
!310 = !{!"branch_weights", i32 87991, i32 61982}
!311 = distinct !{!311, !205}
!312 = !{!"function_entry_count", i64 6504452}
!313 = !{!"branch_weights", i32 180282, i32 6324172}
!314 = !{!"branch_weights", i32 21, i32 1, i32 1, i32 1, i32 238, i32 6237915, i32 42960, i32 1004, i32 42039, i32 1, i32 1}
!315 = !{!"branch_weights", i32 1, i32 238}
!316 = !{!"branch_weights", i32 2043227, i32 4194689}
!317 = !{!"branch_weights", i32 3130, i32 39831}
!318 = !{!"branch_weights", i32 1, i32 39303}
!319 = !{!"branch_weights", i32 -1213995754, i32 148675499, i32 27753}
!320 = !{!"branch_weights", i32 4830, i32 528}
!321 = distinct !{!321, !205}
!322 = !{!"branch_weights", i32 77066, i32 39303}
!323 = distinct !{!323, !205}
!324 = distinct !{!324, !205}
!325 = !{!"branch_weights", i32 21, i32 1}
!326 = !{!"function_entry_count", i64 44224}
!327 = !{!"branch_weights", i32 44225, i32 1}
!328 = !{!"branch_weights", i32 1, i32 44225}
!329 = distinct !{!329, !205}
!330 = !{!"branch_weights", i32 6715, i32 37511}
!331 = !{!"branch_weights", i32 859, i32 1}
!332 = !{!"branch_weights", i32 859, i32 5856}
!333 = distinct !{!333, !205}
!334 = !{!"branch_weights", i32 860, i32 5856}
!335 = !{!"function_entry_count", i64 1821176}
!336 = !{!"branch_weights", i32 25, i32 1287539, i32 1, i32 871, i32 6290, i32 1, i32 1, i32 1, i32 1, i32 1, i32 269837, i32 256620, i32 1}
!337 = !{!"branch_weights", i32 959229, i32 328311}
!338 = !{!"branch_weights", i32 52511253, i32 3346, i32 176156324, i32 -1316046614, i32 4181749}
!339 = !{!"branch_weights", i32 1249, i32 1}
!340 = !{!"branch_weights", i32 1173, i32 77}
!341 = !{!"branch_weights", i32 14462, i32 1299}
!342 = distinct !{!342, !205}
!343 = distinct !{!343, !205}
!344 = !{!"branch_weights", i32 538692, i32 213829}
!345 = !{!"branch_weights", i32 482684, i32 56009}
!346 = distinct !{!346, !205}
!347 = !{!"branch_weights", i32 1, i32 256620}
!348 = !{!"function_entry_count", i64 990822}
!349 = !{!"branch_weights", i32 1, i32 990823}
!350 = !{!"branch_weights", i32 746745, i32 216425}
!351 = !{!"branch_weights", i32 -44788337, i32 26580520}
!352 = !{!"branch_weights", i32 187427, i32 27654}
!353 = !{!"branch_weights", i32 216425, i32 0}
!354 = distinct !{!354, !205}
!355 = !{!"function_entry_count", i64 2307981}
!356 = !{!"branch_weights", i32 140833759, i32 -120780141}
!357 = !{!"branch_weights", i32 0, i32 -1826619392, i32 32768}
!358 = !{!"branch_weights", i32 41667, i32 33662}
!359 = !{!269, !269, i64 0}
!360 = !{i8 0, i8 2}
!361 = !{!"branch_weights", i32 843, i32 40825}
!362 = !{!"branch_weights", i32 34504, i32 1}
!363 = !{!"function_entry_count", i64 41666}
!364 = !{!"rtlanal.c:overlaps_hard_reg_set_p"}
!365 = !{!"branch_weights", i32 1, i32 843}
!366 = distinct !{!366, !205}
!367 = !{!"function_entry_count", i64 3346642}
!368 = !{!369, !200, i64 0}
!369 = !{!"set_of_data", !200, i64 0, !200, i64 8}
!370 = !{!369, !200, i64 8}
!371 = !{!"branch_weights", i32 -613658399, i32 133661960}
!372 = !{!"function_entry_count", i64 5796537}
!373 = !{!"rtlanal.c:end_hard_regno"}
!374 = !{!"function_entry_count", i64 3293626}
!375 = !{!"branch_weights", i32 1, i32 3293627}
!376 = !{!"branch_weights", i32 1056104, i32 925461, i32 55, i32 1, i32 1, i32 11869, i32 75920, i32 1, i32 1, i32 1, i32 240536, i32 983688}
!377 = !{!"branch_weights", i32 240535, i32 2}
!378 = !{!"branch_weights", i32 233851, i32 6685}
!379 = !{!"branch_weights", i32 233851, i32 38076}
!380 = !{!"branch_weights", i32 38076, i32 1}
!381 = distinct !{!381, !205}
!382 = !{!"branch_weights", i32 1, i32 1030518}
!383 = !{!"branch_weights", i32 2114957, i32 920}
!384 = !{!"branch_weights", i32 2089372, i32 25586}
!385 = !{!"branch_weights", i32 1, i32 2090291}
!386 = distinct !{!386, !205}
!387 = !{!"branch_weights", i32 1085358, i32 1030518}
!388 = distinct !{!388, !205}
!389 = !{!"function_entry_count", i64 4814594}
!390 = !{!"branch_weights", i32 1539719, i32 1349487, i32 1, i32 1, i32 1, i32 52142, i32 116529, i32 1346, i32 1462, i32 1, i32 277534, i32 1476383}
!391 = !{!"branch_weights", i32 276956, i32 579}
!392 = !{!"branch_weights", i32 268745, i32 8212}
!393 = !{!"branch_weights", i32 1, i32 1369355}
!394 = !{!"branch_weights", i32 3069935, i32 931}
!395 = !{!"branch_weights", i32 2899572, i32 170364}
!396 = !{!"branch_weights", i32 1, i32 2900502}
!397 = distinct !{!397, !205}
!398 = !{!"branch_weights", i32 1701510, i32 1369355}
!399 = distinct !{!399, !205}
!400 = !{!"function_entry_count", i64 80730354}
!401 = !{!"branch_weights", i32 1, i32 80730355}
!402 = !{!"branch_weights", i32 77759333, i32 -1279600923, i32 253040042, i32 255338080}
!403 = !{!"branch_weights", i32 -1953109514, i32 150975, i32 2360164, i32 2360164, i32 31}
!404 = distinct !{!404, !205}
!405 = !{!"branch_weights", i32 4718, i32 1}
!406 = !{!"branch_weights", i32 4396, i32 323}
!407 = distinct !{!407, !205}
!408 = !{!"branch_weights", i32 5723591, i32 1}
!409 = !{!"branch_weights", i32 5896106, i32 5723591}
!410 = distinct !{!410, !205}
!411 = !{!"function_entry_count", i64 3592370}
!412 = !{!"rtlanal.c:set_of_1"}
!413 = !{!"branch_weights", i32 2340057, i32 1252315}
!414 = !{!"branch_weights", i32 372681, i32 1967377}
!415 = !{!"branch_weights", i32 1951735, i32 15643}
!416 = !{!"function_entry_count", i64 7254149}
!417 = !{!"branch_weights", i32 5687056, i32 1567095}
!418 = !{!"branch_weights", i32 5537990, i32 1}
!419 = !{!"branch_weights", i32 895, i32 65059, i32 5532206, i32 5890207}
!420 = !{!"branch_weights", i32 203878, i32 5686330}
!421 = !{!"branch_weights", i32 165170, i32 38709}
!422 = !{!"branch_weights", i32 38709, i32 1}
!423 = !{!"branch_weights", i32 2147420275, i32 63373}
!424 = !{!"branch_weights", i32 148172, i32 17167}
!425 = !{!"branch_weights", i32 17167, i32 1}
!426 = !{!"branch_weights", i32 5950374, i32 5537990}
!427 = distinct !{!427, !205}
!428 = !{!"function_entry_count", i64 88799684}
!429 = !{!"branch_weights", i32 1, i32 88799685}
!430 = !{!"branch_weights", i32 -371599464, i32 23134313}
!431 = !{!"branch_weights", i32 84053796, i32 4225349}
!432 = !{!"branch_weights", i32 1, i32 80534752}
!433 = !{!"branch_weights", i32 3519044, i32 81261667}
!434 = !{!"branch_weights", i32 80534752, i32 4245958}
!435 = distinct !{!435, !205}
!436 = !{!"branch_weights", i32 1, i32 3387929}
!437 = !{!"branch_weights", i32 1595680, i32 2710620}
!438 = !{!"branch_weights", i32 837420, i32 758261}
!439 = !{!"branch_weights", i32 3387929, i32 918370}
!440 = distinct !{!440, !205}
!441 = !{!"function_entry_count", i64 43746702}
!442 = !{!"branch_weights", i32 11998498, i32 5295196, i32 399745, i32 7421486, i32 127640, i32 73, i32 1, i32 1, i32 1, i32 3663228, i32 11857441, i32 1, i32 1, i32 1, i32 1, i32 44169, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 153141, i32 1, i32 2786096, i32 1, i32 1}
!443 = !{!"branch_weights", i32 2786067, i32 30}
!444 = !{!"branch_weights", i32 1, i32 14762179}
!445 = !{!"branch_weights", i32 246602000, i32 -1706967324, i32 3873825}
!446 = !{!"branch_weights", i32 44303, i32 1}
!447 = !{!"branch_weights", i32 29578611, i32 22381}
!448 = !{!"branch_weights", i32 44303, i32 44528}
!449 = distinct !{!449, !205}
!450 = !{!"branch_weights", i32 88827, i32 5}
!451 = !{!"branch_weights", i32 17703700, i32 14762179}
!452 = distinct !{!452, !205}
!453 = !{!"function_entry_count", i64 2048385}
!454 = !{!"branch_weights", i32 -2134998512, i32 1054}
!455 = !{!"branch_weights", i32 1237729, i32 810658}
!456 = !{!"branch_weights", i32 1233313, i32 1}
!457 = !{!"branch_weights", i32 1242144, i32 1239119}
!458 = !{!"branch_weights", i32 1237729, i32 4416}
!459 = !{!"branch_weights", i32 1233313, i32 1247949}
!460 = distinct !{!460, !205}
!461 = !{!"function_entry_count", i64 25572969}
!462 = !{!"branch_weights", i32 3422, i32 -928290024}
!463 = !{!"branch_weights", i32 -1773173374, i32 748540672, i32 127103, i32 2875389}
!464 = !{!"branch_weights", i32 33044, i32 5814931}
!465 = !{!"branch_weights", i32 33025, i32 20}
!466 = !{!"branch_weights", i32 993, i32 1}
!467 = !{!"branch_weights", i32 17355, i32 25521556}
!468 = !{!"branch_weights", i32 1, i32 17355}
!469 = !{!"branch_weights", i32 5858655, i32 19680256}
!470 = !{!"branch_weights", i32 1940462, i32 3918194}
!471 = !{!"function_entry_count", i64 14360885}
!472 = !{!"branch_weights", i32 21, i32 14360866}
!473 = !{!"branch_weights", i32 13983809, i32 377058}
!474 = !{!"branch_weights", i32 12514091, i32 1469719}
!475 = !{!"branch_weights", i32 12513202, i32 890}
!476 = !{!"branch_weights", i32 1090429, i32 12892492}
!477 = !{!"branch_weights", i32 127, i32 1}
!478 = !{!"branch_weights", i32 500533, i32 2213, i32 2213, i32 -1880436868}
!479 = !{!"branch_weights", i32 1090204, i32 1}
!480 = !{!"branch_weights", i32 139574785, i32 127}
!481 = distinct !{!481, !205}
!482 = distinct !{!482, !205}
!483 = !{!"function_entry_count", i64 12232865}
!484 = !{!"branch_weights", i32 12274589, i32 6964022, i32 173364, i32 32878, i32 200548}
!485 = !{!"branch_weights", i32 586, i32 -213339709}
!486 = !{!"branch_weights", i32 3908138, i32 3055885}
!487 = !{!"branch_weights", i32 1724095, i32 2184044}
!488 = !{!"branch_weights", i32 162024, i32 11341}
!489 = !{!"branch_weights", i32 3, i32 162022}
!490 = !{!"branch_weights", i32 3, i32 1}
!491 = !{!"branch_weights", i32 1, i32 233425}
!492 = !{!"branch_weights", i32 1762, i32 231664}
!493 = !{!"branch_weights", i32 1, i32 1762}
!494 = !{!"branch_weights", i32 1762, i32 1}
!495 = !{!"branch_weights", i32 1663, i32 100}
!496 = !{!"branch_weights", i32 1702559368, i32 444924280}
!497 = !{!"branch_weights", i32 47379, i32 966}
!498 = !{!"branch_weights", i32 409929207, i32 -1807850655}
!499 = !{!"branch_weights", i32 127, i32 -1780356607}
!500 = !{!"branch_weights", i32 1, i32 5169603}
!501 = !{!"branch_weights", i32 2000385280, i32 -1133127936, i32 8728575}
!502 = !{!"branch_weights", i32 1, i32 12350935}
!503 = !{!"branch_weights", i32 7213049, i32 5137887}
!504 = !{!"branch_weights", i32 5085604, i32 52284}
!505 = !{!"branch_weights", i32 1, i32 21080}
!506 = !{!"branch_weights", i32 1, i32 67742}
!507 = !{!"branch_weights", i32 54727, i32 13016}
!508 = !{!"branch_weights", i32 21080, i32 46662}
!509 = distinct !{!509, !205}
!510 = !{!"branch_weights", i32 15029432, i32 5169603}
!511 = distinct !{!511, !205}
!512 = !{!"function_entry_count", i64 11843}
!513 = !{!"function_entry_count", i64 6999}
!514 = !{!"function_entry_count", i64 11728933}
!515 = !{!"branch_weights", i32 256288, i32 1, i32 931387, i32 1, i32 45624, i32 1, i32 1, i32 1, i32 1, i32 1, i32 912172, i32 9583467}
!516 = !{!"branch_weights", i32 931386, i32 1}
!517 = !{!"branch_weights", i32 959340, i32 931386}
!518 = distinct !{!518, !205}
!519 = distinct !{!519, !205}
!520 = distinct !{!520, !205}
!521 = distinct !{!521, !205}
!522 = !{!"branch_weights", i32 13344, i32 898829}
!523 = !{!"branch_weights", i32 108, i32 9583360}
!524 = !{!"branch_weights", i32 -1780468020, i32 289467, i32 1312183, i32 688573551}
!525 = distinct !{!525, !205}
!526 = !{!"function_entry_count", i64 1962809}
!527 = !{!"branch_weights", i32 1916, i32 1916, i32 -532640054}
!528 = !{!"branch_weights", i32 672553, i32 1290258}
!529 = !{!"branch_weights", i32 1547903, i32 1}
!530 = !{!"branch_weights", i32 1547903, i32 414907}
!531 = distinct !{!531, !205}
!532 = !{!"branch_weights", i32 414907, i32 1547904}
!533 = !{!"branch_weights", i32 1215382, i32 747429}
!534 = !{!"branch_weights", i32 334, i32 1215049}
!535 = !{!"branch_weights", i32 334, i32 1}
!536 = !{!"branch_weights", i32 1, i32 1215382}
!537 = !{!"branch_weights", i32 1704369, i32 -285375495, i32 1154461386}
!538 = !{!"branch_weights", i32 1, i32 72766}
!539 = !{!"branch_weights", i32 1, i32 544222}
!540 = !{!"branch_weights", i32 7989679, i32 -1981169511, i32 -2020366352}
!541 = !{!"branch_weights", i32 344425, i32 198853}
!542 = !{!"branch_weights", i32 72766, i32 471456}
!543 = distinct !{!543, !205}
!544 = !{!"function_entry_count", i64 2238715}
!545 = !{!"branch_weights", i32 -1677730044, i32 47399271}
!546 = !{!"branch_weights", i32 1, i32 1282331}
!547 = !{!"branch_weights", i32 1460182, i32 450504}
!548 = !{!"branch_weights", i32 1460182, i32 1}
!549 = !{!"branch_weights", i32 264300, i32 1195883}
!550 = !{!"branch_weights", i32 616698, i32 579186}
!551 = !{!"branch_weights", i32 916562, i32 279322}
!552 = !{!"branch_weights", i32 1282331, i32 628354}
!553 = distinct !{!553, !205}
!554 = !{!"function_entry_count", i64 7047}
!555 = !{!"branch_weights", i32 334, i32 6715}
!556 = !{!"branch_weights", i32 6715, i32 1}
!557 = !{!"branch_weights", i32 1, i32 859}
!558 = !{!"branch_weights", i32 10017, i32 505}
!559 = !{!"branch_weights", i32 9994, i32 24}
!560 = !{!"branch_weights", i32 5, i32 9990}
!561 = !{!"branch_weights", i32 5856, i32 4135}
!562 = !{!"branch_weights", i32 859, i32 9662}
!563 = distinct !{!563, !205}
!564 = !{!"function_entry_count", i64 1486639}
!565 = !{!"rtlanal.c:covers_regno_p"}
!566 = !{!"branch_weights", i32 1, i32 1486640}
!567 = distinct !{!567, !205}
!568 = !{!"rtlanal.c:covers_regno_no_parallel_p"}
!569 = !{!"branch_weights", i32 567, i32 1486074}
!570 = !{!"branch_weights", i32 501, i32 67}
!571 = !{!"branch_weights", i32 1375100, i32 111541}
!572 = !{!"branch_weights", i32 722424, i32 652677}
!573 = !{!"branch_weights", i32 1281314, i32 93787}
!574 = !{!"function_entry_count", i64 37595170}
!575 = !{!"branch_weights", i32 -2059002213, i32 8682519}
!576 = !{!"branch_weights", i32 4815940, i32 31018325}
!577 = !{!"branch_weights", i32 183054862, i32 -963258213}
!578 = !{!"branch_weights", i32 976467, i32 639020}
!579 = !{!"branch_weights", i32 976467, i32 1}
!580 = !{!"branch_weights", i32 31018325, i32 0}
!581 = distinct !{!581, !205}
!582 = !{!"function_entry_count", i64 211}
!583 = !{!"branch_weights", i32 1703, i32 1}
!584 = !{!"branch_weights", i32 212, i32 1}
!585 = !{!"branch_weights", i32 1880151612, i32 267332036}
!586 = !{!"branch_weights", i32 69, i32 144}
!587 = !{!"branch_weights", i32 114, i32 31}
!588 = !{!"branch_weights", i32 1, i32 31}
!589 = !{!"function_entry_count", i64 2015335}
!590 = !{!"branch_weights", i32 1745, i32 2013595}
!591 = !{!"function_entry_count", i64 1901591}
!592 = !{!"function_entry_count", i64 49730}
!593 = !{!"branch_weights", i32 12099, i32 37633}
!594 = !{!"branch_weights", i32 32937, i32 4697}
!595 = !{!"branch_weights", i32 1, i32 5988}
!596 = !{!"branch_weights", i32 4697, i32 1292}
!597 = distinct !{!597, !205}
!598 = !{!"branch_weights", i32 14115, i32 23520}
!599 = distinct !{!599, !205}
!600 = !{!"function_entry_count", i64 94816}
!601 = !{!"branch_weights", i32 94816, i32 1}
!602 = !{!"branch_weights", i32 1, i32 0}
!603 = distinct !{!603, !205}
!604 = !{!"function_entry_count", i64 100818}
!605 = !{!"branch_weights", i32 100818, i32 1}
!606 = distinct !{!606, !205}
!607 = !{!"function_entry_count", i64 816135}
!608 = !{!"branch_weights", i32 316626, i32 10029, i32 1633, i32 86580, i32 49, i32 1, i32 1, i32 1, i32 1, i32 20057, i32 265927, i32 1, i32 40041, i32 1, i32 1, i32 2296, i32 72907, i32 1, i32 1, i32 1}
!609 = !{!"branch_weights", i32 1, i32 316625}
!610 = !{!"branch_weights", i32 22980966, i32 -1254390594, i32 221870886}
!611 = !{!"branch_weights", i32 40104, i32 1}
!612 = !{!"branch_weights", i32 549597, i32 1}
!613 = !{!"branch_weights", i32 40104, i32 40427}
!614 = distinct !{!614, !205}
!615 = !{!"branch_weights", i32 80531, i32 1}
!616 = !{!"branch_weights", i32 277229, i32 316625}
!617 = distinct !{!617, !205}
!618 = !{!"function_entry_count", i64 67937540}
!619 = !{!"branch_weights", i32 23102311, i32 369244, i32 1021623, i32 10146993, i32 305314, i32 230, i32 1, i32 1, i32 1, i32 667032, i32 23445828, i32 1, i32 1346372, i32 1, i32 1, i32 1, i32 7532603, i32 1, i32 1}
!620 = !{!"branch_weights", i32 7532504, i32 100}
!621 = !{!"branch_weights", i32 1, i32 30634723}
!622 = !{!"branch_weights", i32 454913143, i32 -1119203149, i32 11593780}
!623 = !{!"branch_weights", i32 194334, i32 1}
!624 = !{!"branch_weights", i32 53232075, i32 91}
!625 = !{!"branch_weights", i32 194334, i32 209195}
!626 = distinct !{!626, !205}
!627 = !{!"branch_weights", i32 403529, i32 1}
!628 = !{!"branch_weights", i32 30417031, i32 30634723}
!629 = distinct !{!629, !205}
!630 = !{!"function_entry_count", i64 7430959}
!631 = !{!"branch_weights", i32 1, i32 7430960}
!632 = !{!"branch_weights", i32 2598214, i32 804433, i32 35, i32 1, i32 1, i32 41800, i32 205266, i32 1745, i32 359263, i32 1, i32 2047676, i32 181, i32 255, i32 1, i32 1, i32 1, i32 1, i32 1052226, i32 591, i32 7, i32 297, i32 2, i32 1, i32 1923, i32 2014, i32 3195, i32 2739, i32 7, i32 158611, i32 91849, i32 52866, i32 70, i32 692, i32 1, i32 5028}
!633 = !{!634, !200, i64 1272}
!634 = !{!"gcc_target", !635, i64 0, !637, i64 368, !638, i64 664, !203, i64 744, !200, i64 752, !200, i64 760, !200, i64 768, !200, i64 776, !200, i64 784, !200, i64 792, !200, i64 800, !200, i64 808, !200, i64 816, !200, i64 824, !200, i64 832, !200, i64 840, !200, i64 848, !200, i64 856, !200, i64 864, !200, i64 872, !200, i64 880, !200, i64 888, !200, i64 896, !200, i64 904, !200, i64 912, !200, i64 920, !200, i64 928, !200, i64 936, !200, i64 944, !200, i64 952, !200, i64 960, !200, i64 968, !200, i64 976, !200, i64 984, !200, i64 992, !200, i64 1000, !200, i64 1008, !200, i64 1016, !200, i64 1024, !200, i64 1032, !200, i64 1040, !200, i64 1048, !200, i64 1056, !269, i64 1064, !269, i64 1072, !200, i64 1080, !200, i64 1088, !200, i64 1096, !200, i64 1104, !200, i64 1112, !200, i64 1120, !200, i64 1128, !200, i64 1136, !200, i64 1144, !200, i64 1152, !200, i64 1160, !200, i64 1168, !639, i64 1176, !200, i64 1232, !200, i64 1240, !200, i64 1248, !200, i64 1256, !200, i64 1264, !200, i64 1272, !200, i64 1280, !200, i64 1288, !200, i64 1296, !200, i64 1304, !200, i64 1312, !200, i64 1320, !200, i64 1328, !200, i64 1336, !200, i64 1344, !200, i64 1352, !200, i64 1360, !200, i64 1368, !200, i64 1376, !200, i64 1384, !200, i64 1392, !200, i64 1400, !200, i64 1408, !200, i64 1416, !200, i64 1424, !200, i64 1432, !200, i64 1440, !200, i64 1448, !200, i64 1456, !269, i64 1464, !640, i64 1472, !200, i64 1664, !200, i64 1672, !200, i64 1680, !200, i64 1688, !200, i64 1696, !200, i64 1704, !200, i64 1712, !200, i64 1720, !200, i64 1728, !200, i64 1736, !200, i64 1744, !200, i64 1752, !200, i64 1760, !200, i64 1768, !200, i64 1776, !641, i64 1784, !642, i64 1792, !643, i64 1896, !644, i64 1968, !200, i64 2016, !197, i64 2024, !197, i64 2025, !197, i64 2026, !197, i64 2027, !197, i64 2028, !197, i64 2029, !197, i64 2030, !197, i64 2031, !197, i64 2032, !197, i64 2033, !197, i64 2034, !197, i64 2035}
!635 = !{!"asm_out", !200, i64 0, !200, i64 8, !200, i64 16, !636, i64 24, !636, i64 56, !200, i64 88, !200, i64 96, !200, i64 104, !200, i64 112, !200, i64 120, !200, i64 128, !200, i64 136, !200, i64 144, !200, i64 152, !200, i64 160, !200, i64 168, !200, i64 176, !200, i64 184, !200, i64 192, !200, i64 200, !200, i64 208, !200, i64 216, !200, i64 224, !200, i64 232, !200, i64 240, !200, i64 248, !200, i64 256, !200, i64 264, !200, i64 272, !200, i64 280, !200, i64 288, !200, i64 296, !200, i64 304, !200, i64 312, !200, i64 320, !200, i64 328, !200, i64 336, !200, i64 344, !200, i64 352, !200, i64 360}
!636 = !{!"asm_int_op", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24}
!637 = !{!"sched", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32, !200, i64 40, !200, i64 48, !200, i64 56, !200, i64 64, !200, i64 72, !200, i64 80, !200, i64 88, !200, i64 96, !200, i64 104, !200, i64 112, !200, i64 120, !200, i64 128, !200, i64 136, !200, i64 144, !200, i64 152, !200, i64 160, !200, i64 168, !200, i64 176, !200, i64 184, !200, i64 192, !200, i64 200, !200, i64 208, !200, i64 216, !200, i64 224, !200, i64 232, !200, i64 240, !200, i64 248, !200, i64 256, !200, i64 264, !200, i64 272, !200, i64 280, !200, i64 288}
!638 = !{!"vectorize", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32, !200, i64 40, !200, i64 48, !200, i64 56, !200, i64 64, !200, i64 72}
!639 = !{!"addr_space", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32, !200, i64 40, !200, i64 48}
!640 = !{!"calls", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32, !200, i64 40, !200, i64 48, !200, i64 56, !200, i64 64, !200, i64 72, !200, i64 80, !200, i64 88, !200, i64 96, !200, i64 104, !200, i64 112, !200, i64 120, !200, i64 128, !200, i64 136, !200, i64 144, !200, i64 152, !200, i64 160, !200, i64 168, !200, i64 176, !200, i64 184}
!641 = !{!"c", !200, i64 0}
!642 = !{!"cxx", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32, !200, i64 40, !200, i64 48, !200, i64 56, !200, i64 64, !200, i64 72, !200, i64 80, !200, i64 88, !200, i64 96}
!643 = !{!"emutls", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32, !200, i64 40, !200, i64 48, !200, i64 56, !197, i64 64, !197, i64 65}
!644 = !{!"target_option_hooks", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32, !200, i64 40}
!645 = !{!"branch_weights", i32 1052226, i32 1}
!646 = !{!"branch_weights", i32 -1352148297, i32 754028485}
!647 = !{!"branch_weights", i32 837609, i32 1}
!648 = !{!649, !200, i64 16}
!649 = !{!"mem_attrs", !200, i64 0, !200, i64 8, !200, i64 16, !203, i64 24, !203, i64 28, !197, i64 32}
!650 = !{!"branch_weights", i32 667826, i32 1}
!651 = !{!"branch_weights", i32 498043, i32 169784}
!652 = !{!"branch_weights", i32 1, i32 209168}
!653 = !{!"branch_weights", i32 3216, i32 2147480432}
!654 = !{!"branch_weights", i32 894, i32 1}
!655 = !{!656, !197, i64 46}
!656 = !{!"real_format", !200, i64 0, !200, i64 8, !203, i64 16, !203, i64 20, !203, i64 24, !203, i64 28, !203, i64 32, !203, i64 36, !203, i64 40, !197, i64 44, !197, i64 45, !197, i64 46, !197, i64 47, !197, i64 48, !197, i64 49, !197, i64 50, !197, i64 51}
!657 = !{!"branch_weights", i32 111451, i32 558009}
!658 = !{!"branch_weights", i32 1, i32 747}
!659 = !{!"branch_weights", i32 1, i32 168484}
!660 = !{!"branch_weights", i32 -1363434056, i32 17398, i32 17398, i32 17398, i32 17399}
!661 = !{!"branch_weights", i32 -1367746745, i32 1094975, i32 17379, i32 17379, i32 17380}
!662 = !{!"branch_weights", i32 127, i32 3969}
!663 = !{!"branch_weights", i32 -1367746745, i32 17379, i32 17379, i32 17379, i32 17380}
!664 = !{!"branch_weights", i32 144714, i32 1}
!665 = !{!"branch_weights", i32 1, i32 70}
!666 = !{!"branch_weights", i32 1, i32 560, i32 4, i32 2, i32 1}
!667 = !{!"branch_weights", i32 141, i32 1}
!668 = !{!"branch_weights", i32 141, i32 4900}
!669 = !{!"branch_weights", i32 1320146, i32 -1001355001}
!670 = !{!"branch_weights", i32 1, i32 1040}
!671 = !{!"branch_weights", i32 1, i32 2574093}
!672 = !{!"branch_weights", i32 2236782, i32 -2028839646, i32 99091061}
!673 = !{!"branch_weights", i32 200821, i32 1}
!674 = !{!"branch_weights", i32 4773931, i32 320012}
!675 = !{!"branch_weights", i32 253115, i32 200821}
!676 = distinct !{!676, !205}
!677 = !{!"branch_weights", i32 432014, i32 21923}
!678 = !{!"branch_weights", i32 2747619, i32 2574093}
!679 = distinct !{!679, !205}
!680 = !{!"function_entry_count", i64 1517688}
!681 = !{!"function_entry_count", i64 365072}
!682 = distinct !{!682, !205}
!683 = distinct !{!683, !205}
!684 = !{!"function_entry_count", i64 24725}
!685 = !{!"branch_weights", i32 1, i32 24726}
!686 = !{!"branch_weights", i32 7718, i32 17009}
!687 = !{!"branch_weights", i32 286252561, i32 1539720, i32 16919}
!688 = !{!"branch_weights", i32 1, i32 91}
!689 = !{!"branch_weights", i32 1, i32 16918}
!690 = !{!"branch_weights", i32 112021056, i32 177923265, i32 10584}
!691 = distinct !{!691, !205}
!692 = !{!"branch_weights", i32 10474, i32 16918}
!693 = distinct !{!693, !205}
!694 = !{!695, !200, i64 0}
!695 = !{!"replace_label_data", !200, i64 0, !200, i64 8, !197, i64 16}
!696 = !{!695, !200, i64 8}
!697 = !{!695, !197, i64 16}
!698 = !{i32 0, i32 -1}
!699 = !{!"function_entry_count", i64 452}
!700 = !{!"function_entry_count", i64 27407238}
!701 = !{!"branch_weights", i32 138402933, i32 63115642, i32 -1695620658}
!702 = !{!"branch_weights", i32 1033668, i32 24401659}
!703 = !{!"branch_weights", i32 6493384, i32 17908276}
!704 = !{!"function_entry_count", i64 7229}
!705 = !{!"rtlanal.c:rtx_referenced_p_1"}
!706 = !{!"branch_weights", i32 453, i32 6778}
!707 = !{!"branch_weights", i32 -1215823872, i32 474480640, i32 524287}
!708 = !{!"branch_weights", i32 905, i32 1}
!709 = !{!"function_entry_count", i64 1408112}
!710 = !{!"branch_weights", i32 1235758, i32 172356}
!711 = !{!"branch_weights", i32 23054, i32 1212705}
!712 = !{!"branch_weights", i32 22662, i32 1190044}
!713 = !{!"branch_weights", i32 56192, i32 1133853}
!714 = !{!"branch_weights", i32 754108643, i32 1158925849}
!715 = !{!"branch_weights", i32 3668, i32 18483}
!716 = !{!"branch_weights", i32 247, i32 21904}
!717 = !{!"function_entry_count", i64 710047}
!718 = !{!"branch_weights", i32 619246, i32 90803}
!719 = !{!"branch_weights", i32 14179, i32 605068}
!720 = !{!"branch_weights", i32 200732224, i32 170028, i32 14168}
!721 = !{!"branch_weights", i32 191, i32 1}
!722 = !{!"branch_weights", i32 12, i32 12}
!723 = !{!"branch_weights", i32 1, i32 12}
!724 = !{!"branch_weights", i32 177, i32 191}
!725 = distinct !{!725, !205}
!726 = !{!"branch_weights", i32 1982292599, i32 165191049}
!727 = distinct !{!727, !205}
!728 = !{!"rtlanal.c:computed_jump_p_1"}
!729 = distinct !{!729, !205}
!730 = distinct !{!730, !205}
!731 = !{!"function_entry_count", i64 37545027}
!732 = !{!"rtlanal.c:for_each_rtx_1"}
!733 = !{!"branch_weights", i32 366002839, i32 1280035909, i32 -2021432930, i32 35, i32 18942202}
!734 = !{!"branch_weights", i32 57799168, i32 40960842, i32 -546470726}
!735 = !{!"branch_weights", i32 1467737, i32 60748798}
!736 = !{!"branch_weights", i32 18555602, i32 42193197}
!737 = !{!"branch_weights", i32 17926237, i32 629366}
!738 = !{!"branch_weights", i32 1, i32 532021}
!739 = !{!"branch_weights", i32 527475, i32 1}
!740 = !{!"branch_weights", i32 76095, i32 2113, i32 -2007397293}
!741 = !{!"branch_weights", i32 1, i32 1082219}
!742 = !{!"branch_weights", i32 1081152, i32 1068}
!743 = !{!"branch_weights", i32 1076642, i32 4511}
!744 = !{!"branch_weights", i32 554779, i32 527475}
!745 = distinct !{!745, !205}
!746 = distinct !{!746, !205}
!747 = distinct !{!747, !205}
!748 = distinct !{!748, !205}
!749 = !{!"function_entry_count", i64 29522496}
!750 = !{!"branch_weights", i32 228617, i32 467570, i32 377926, i32 12608765, i32 1779441, i32 1283589, i32 115850}
!751 = !{!"branch_weights", i32 377926, i32 1}
!752 = !{!"branch_weights", i32 367240, i32 10687}
!753 = !{!"branch_weights", i32 1195359056, i32 -1816101620}
!754 = !{!"branch_weights", i32 328796428, i32 -1457099586}
!755 = !{!"function_entry_count", i64 14393474}
!756 = !{i32 -8, i32 5}
!757 = !{!"function_entry_count", i64 72258}
!758 = !{!"branch_weights", i32 1, i32 72259}
!759 = !{!"branch_weights", i32 1, i32 72258}
!760 = !{!"branch_weights", i32 -1405394149, i32 11570763, i32 13438}
!761 = !{!"branch_weights", i32 1, i32 861}
!762 = !{!"branch_weights", i32 861, i32 1}
!763 = distinct !{!763, !205}
!764 = !{!"branch_weights", i32 143621, i32 72258}
!765 = distinct !{!765, !205}
!766 = !{!"function_entry_count", i64 881}
!767 = !{!"branch_weights", i32 1, i32 882}
!768 = !{!"function_entry_count", i64 193991}
!769 = !{!"branch_weights", i32 193992, i32 1}
!770 = !{!771, !197, i64 8}
!771 = !{!"subreg_info", !203, i64 0, !203, i64 4, !197, i64 8}
!772 = !{!"branch_weights", i32 2103281756, i32 44201892}
!773 = !{!"branch_weights", i32 35168, i32 154834}
!774 = !{!771, !203, i64 0}
!775 = !{!771, !203, i64 4}
!776 = !{!"branch_weights", i32 158825, i32 1}
!777 = !{!"branch_weights", i32 16083, i32 -1740465702}
!778 = !{!"branch_weights", i32 19853, i32 -1141774865}
!779 = !{!"branch_weights", i32 2147480268, i32 3380}
!780 = !{!"branch_weights", i32 154834, i32 3992}
!781 = !{!"branch_weights", i32 154834, i32 1}
!782 = !{!"branch_weights", i32 3992, i32 1}
!783 = !{!"branch_weights", i32 1, i32 3992}
!784 = !{!"function_entry_count", i64 134201}
!785 = !{!"function_entry_count", i64 74}
!786 = !{!"function_entry_count", i64 51298}
!787 = !{!"branch_weights", i32 102599, i32 -1663379895}
!788 = !{!"branch_weights", i32 51299, i32 1}
!789 = !{!"branch_weights", i32 1378558028, i32 26872}
!790 = !{!"branch_weights", i32 -1663379895, i32 -1663277296, i32 -1663277296, i32 51300, i32 51299}
!791 = !{!"branch_weights", i32 -1663379895, i32 51300, i32 51299}
!792 = !{!"branch_weights", i32 1, i32 51299}
!793 = !{!794, !269, i64 8}
!794 = !{!"parms_set_data", !203, i64 0, !269, i64 8}
!795 = !{!794, !203, i64 0}
!796 = distinct !{!796, !205}
!797 = distinct !{!797, !205}
!798 = !{!"rtlanal.c:parms_set"}
!799 = !{!"function_entry_count", i64 221767}
!800 = !{!"branch_weights", i32 -753955430, i32 11019446}
!801 = !{!"branch_weights", i32 205725, i32 1}
!802 = !{!"branch_weights", i32 2042567789, i32 104915859}
!803 = !{!"branch_weights", i32 42052, i32 174236}
!804 = !{!"branch_weights", i32 42052, i32 1}
!805 = !{!"branch_weights", i32 42027, i32 26}
!806 = !{!"branch_weights", i32 26, i32 1}
!807 = !{!"branch_weights", i32 21358, i32 194930}
!808 = !{!"branch_weights", i32 11759, i32 9600}
!809 = !{!"branch_weights", i32 3710, i32 5891}
!810 = !{!"branch_weights", i32 1, i32 3710}
!811 = !{!"branch_weights", i32 12, i32 216276}
!812 = !{!"branch_weights", i32 12, i32 1}
!813 = !{!"function_entry_count", i64 681673}
!814 = !{!"branch_weights", i32 597737, i32 83938}
!815 = !{!"branch_weights", i32 83938, i32 1}
!816 = distinct !{!816, !205}
!817 = !{!"function_entry_count", i64 25042864}
!818 = !{!"branch_weights", i32 1, i32 25042865}
!819 = !{!"branch_weights", i32 24988440, i32 46264, i32 3790, i32 1527, i32 1672, i32 1177, i32 1}
!820 = !{!"branch_weights", i32 1545688187, i32 595148182, i32 6647279}
!821 = !{!"branch_weights", i32 2137, i32 75238}
!822 = !{!634, !200, i64 1248}
!823 = !{!"branch_weights", i32 9949623, i32 8088376}
!824 = !{!"branch_weights", i32 1, i32 10024859}
!825 = !{!"branch_weights", i32 562778875, i32 -1288396634, i32 185}
!826 = distinct !{!826, !205}
!827 = !{!"branch_weights", i32 9233976, i32 10024859}
!828 = distinct !{!828, !205}
!829 = !{!"function_entry_count", i64 88441}
!830 = !{!"branch_weights", i32 930, i32 87513}
!831 = !{!634, !200, i64 1256}
!832 = !{!"function_entry_count", i64 13231066}
!833 = !{!"function_entry_count", i64 20573089}
!834 = !{!"rtlanal.c:cached_nonzero_bits"}
!835 = !{!"branch_weights", i32 57400, i32 20515691}
!836 = !{!"branch_weights", i32 55846, i32 1555}
!837 = !{!"branch_weights", i32 3259549, i32 17257697}
!838 = !{!"branch_weights", i32 101, i32 3259449}
!839 = !{!"branch_weights", i32 316979, i32 2942471}
!840 = !{!"branch_weights", i32 24626, i32 292354}
!841 = !{!"branch_weights", i32 8430, i32 283925}
!842 = !{!"branch_weights", i32 7711, i32 3218685}
!843 = !{!"branch_weights", i32 543, i32 7169}
!844 = !{!"branch_weights", i32 12, i32 7158}
!845 = !{!"function_entry_count", i64 20517244}
!846 = !{!"rtlanal.c:nonzero_bits1"}
!847 = !{!"branch_weights", i32 -1894597859, i32 301878, i32 116, i32 116, i32 117}
!848 = !{!"branch_weights", i32 -1894597859, i32 116, i32 116, i32 116, i32 117}
!849 = !{!"branch_weights", i32 1938, i32 -283387638}
!850 = !{!"branch_weights", i32 106940, i32 20407727}
!851 = !{!"branch_weights", i32 1, i32 20514666}
!852 = !{!"branch_weights", i32 451912434, i32 -1173353969}
!853 = !{!"branch_weights", i32 2592865, i32 1447}
!854 = !{!"branch_weights", i32 5154840, i32 6811870, i32 2058137, i32 11602, i32 57801, i32 29409, i32 1, i32 1, i32 1934, i32 3372, i32 1, i32 1101, i32 1856, i32 1, i32 1536, i32 526, i32 1, i32 1341, i32 4755, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3528, i32 142931, i32 22645, i32 386431, i32 33440, i32 75169, i32 1, i32 1, i32 1, i32 23, i32 714166, i32 34818, i32 61187, i32 2423, i32 2381, i32 1834, i32 1630, i32 94475, i32 1226206, i32 80564, i32 389393, i32 506298, i32 2216, i32 1, i32 1, i32 1}
!855 = !{!"branch_weights", i32 21724376, i32 -2044354813}
!856 = !{!857, !200, i64 88}
!857 = !{!"rtl_data", !858, i64 0, !859, i64 40, !860, i64 96, !861, i64 112, !863, i64 208, !864, i64 248, !203, i64 312, !200, i64 320, !200, i64 328, !200, i64 336, !200, i64 344, !200, i64 352, !200, i64 360, !200, i64 368, !200, i64 376, !200, i64 384, !200, i64 392, !269, i64 400, !200, i64 408, !200, i64 416, !200, i64 424, !203, i64 432, !203, i64 436, !203, i64 440, !203, i64 444, !203, i64 448, !203, i64 452, !200, i64 456, !197, i64 464, !197, i64 465, !197, i64 466, !197, i64 467, !197, i64 468, !197, i64 469, !197, i64 470, !197, i64 471, !197, i64 472, !197, i64 473, !197, i64 474, !197, i64 475, !197, i64 476, !197, i64 477, !197, i64 478, !197, i64 479, !197, i64 480, !197, i64 481, !197, i64 482, !197, i64 483, !197, i64 484, !197, i64 485}
!858 = !{!"expr_status", !203, i64 0, !203, i64 4, !203, i64 8, !200, i64 16, !200, i64 24, !200, i64 32}
!859 = !{!"emit_status", !203, i64 0, !203, i64 4, !200, i64 8, !200, i64 16, !200, i64 24, !203, i64 32, !203, i64 36, !203, i64 40, !203, i64 44, !200, i64 48}
!860 = !{!"varasm_status", !200, i64 0, !203, i64 8}
!861 = !{!"incoming_args", !203, i64 0, !203, i64 4, !203, i64 8, !200, i64 16, !862, i64 24, !200, i64 88}
!862 = !{!"ix86_args", !203, i64 0, !203, i64 4, !203, i64 8, !203, i64 12, !203, i64 16, !203, i64 20, !203, i64 24, !203, i64 28, !203, i64 32, !203, i64 36, !203, i64 40, !203, i64 44, !203, i64 48, !203, i64 52, !203, i64 56, !203, i64 60}
!863 = !{!"function_subsections", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32}
!864 = !{!"rtl_eh", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32, !200, i64 40, !197, i64 48}
!865 = !{!"branch_weights", i32 1, i32 65122}
!866 = !{!"branch_weights", i32 21093, i32 44030}
!867 = !{!"branch_weights", i32 21093, i32 444935743}
!868 = !{!869, !200, i64 16}
!869 = !{!"rtl_hooks", !200, i64 0, !200, i64 8, !200, i64 16, !200, i64 24, !200, i64 32}
!870 = !{!"branch_weights", i32 6811335, i32 536}
!871 = !{!"branch_weights", i32 -1610587575, i32 51811}
!872 = !{!"branch_weights", i32 1, i32 142931}
!873 = !{!"branch_weights", i32 1, i32 22645}
!874 = !{!"branch_weights", i32 7880, i32 14766}
!875 = !{!"branch_weights", i32 63000, i32 45631}
!876 = !{!"branch_weights", i32 1, i32 714166, i32 34818, i32 61187, i32 2423, i32 2381, i32 1834, i32 1630}
!877 = !{!"branch_weights", i32 2, i32 2422}
!878 = !{!"branch_weights", i32 929713, i32 175175}
!879 = !{!"branch_weights", i32 1, i32 2381}
!880 = !{!"branch_weights", i32 1, i32 1834}
!881 = !{!"branch_weights", i32 462965, i32 61845}
!882 = !{!"branch_weights", i32 1, i32 1630}
!883 = !{!"branch_weights", i32 16, i32 1615}
!884 = !{!"branch_weights", i32 19375, i32 799059}
!885 = !{!"branch_weights", i32 48110, i32 770324}
!886 = !{!"branch_weights", i32 94475, i32 1}
!887 = !{!"branch_weights", i32 1226206, i32 1}
!888 = !{!"branch_weights", i32 1220706, i32 5501}
!889 = !{!"branch_weights", i32 1124787, i32 95920}
!890 = !{!"branch_weights", i32 747412, i32 231057}
!891 = !{!"branch_weights", i32 -2112839571, i32 5839}
!892 = !{!"branch_weights", i32 747372, i32 41}
!893 = !{!"branch_weights", i32 1, i32 747372}
!894 = !{!"branch_weights", i32 12256625, i32 1788780372, i32 97504615, i32 -1003531996}
!895 = !{!"branch_weights", i32 705, i32 13337}
!896 = !{!"branch_weights", i32 9446, i32 2157}
!897 = !{!"function_entry_count", i64 4339894}
!898 = !{!"function_entry_count", i64 5890986}
!899 = !{!"rtlanal.c:cached_num_sign_bit_copies"}
!900 = !{!"branch_weights", i32 10783, i32 5880205}
!901 = !{!"branch_weights", i32 10505, i32 279}
!902 = !{!"branch_weights", i32 1107741, i32 4772743}
!903 = !{!"branch_weights", i32 53, i32 1107689}
!904 = !{!"branch_weights", i32 66076, i32 1041614}
!905 = !{!"branch_weights", i32 2492, i32 63585}
!906 = !{!"branch_weights", i32 3419, i32 60167}
!907 = !{!"branch_weights", i32 688, i32 1101093}
!908 = !{!"branch_weights", i32 19, i32 670}
!909 = !{!"branch_weights", i32 7, i32 664}
!910 = !{!"function_entry_count", i64 5880482}
!911 = !{!"rtlanal.c:num_sign_bit_copies1"}
!912 = !{!"branch_weights", i32 58346, i32 5822138}
!913 = !{!"branch_weights", i32 10158464, i32 2137325184}
!914 = !{!"branch_weights", i32 2452, i32 -1406060386}
!915 = !{!"branch_weights", i32 58145, i32 5814486}
!916 = !{!"branch_weights", i32 58089, i32 57}
!917 = !{!"branch_weights", i32 622, i32 -673575243}
!918 = !{!"branch_weights", i32 1795054, i32 2315902, i32 1, i32 712327, i32 159690, i32 1, i32 8450, i32 2818, i32 13421, i32 243, i32 7, i32 3057, i32 16080, i32 114663, i32 4796, i32 1, i32 1, i32 1, i32 1, i32 509204, i32 15736, i32 17319, i32 622, i32 779, i32 1091, i32 1136, i32 9641, i32 50232, i32 7057, i32 31760, i32 17211, i32 630, i32 707, i32 613, i32 431, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 387, i32 1262, i32 1680, i32 513, i32 1}
!919 = !{!869, !200, i64 24}
!920 = !{!"branch_weights", i32 2315679, i32 224}
!921 = !{!"branch_weights", i32 712327, i32 1}
!922 = !{!"branch_weights", i32 301715, i32 410613}
!923 = !{!"branch_weights", i32 97386, i32 614942}
!924 = !{!"branch_weights", i32 159690, i32 1}
!925 = !{!"branch_weights", i32 112889, i32 46802}
!926 = !{!"branch_weights", i32 46802, i32 1}
!927 = !{!"branch_weights", i32 2818, i32 1}
!928 = !{!"branch_weights", i32 219, i32 31}
!929 = !{!"branch_weights", i32 219, i32 1}
!930 = !{!"branch_weights", i32 213, i32 7}
!931 = !{!"branch_weights", i32 1, i32 219}
!932 = !{!"branch_weights", i32 1, i32 3057}
!933 = !{!"branch_weights", i32 570, i32 2488}
!934 = !{!"branch_weights", i32 649, i32 1840}
!935 = !{!"branch_weights", i32 -192399914, i32 1639111439}
!936 = !{!"branch_weights", i32 95461, i32 1387}
!937 = !{!"branch_weights", i32 80622, i32 14840}
!938 = !{!"branch_weights", i32 486564823, i32 1660918825}
!939 = !{!"branch_weights", i32 4789, i32 3980}
!940 = !{!"branch_weights", i32 4753, i32 37}
!941 = !{!"branch_weights", i32 509204, i32 15736}
!942 = !{!"branch_weights", i32 187288658, i32 -2018403911}
!943 = !{!"branch_weights", i32 6477, i32 32232}
!944 = !{!"branch_weights", i32 9014075, i32 19864849}
!945 = !{!"branch_weights", i32 42489, i32 475975}
!946 = !{!"branch_weights", i32 4661, i32 12659}
!947 = !{!"branch_weights", i32 1, i32 4661}
!948 = !{!"branch_weights", i32 2000, i32 2662}
!949 = !{!"branch_weights", i32 2655, i32 8}
!950 = !{!"branch_weights", i32 1, i32 622}
!951 = !{!"branch_weights", i32 20, i32 603}
!952 = !{!"branch_weights", i32 1, i32 779}
!953 = !{!"branch_weights", i32 171, i32 609}
!954 = !{!"branch_weights", i32 172, i32 920}
!955 = !{!"branch_weights", i32 1, i32 172}
!956 = !{!"branch_weights", i32 115, i32 58}
!957 = !{!"branch_weights", i32 565, i32 572}
!958 = !{!"branch_weights", i32 1, i32 565}
!959 = !{!"branch_weights", i32 542, i32 24}
!960 = !{!"branch_weights", i32 3009, i32 6633}
!961 = !{!"branch_weights", i32 3009, i32 1}
!962 = !{!"branch_weights", i32 11, i32 2999}
!963 = !{!"branch_weights", i32 43182, i32 7051}
!964 = !{!"branch_weights", i32 -1837666484, i32 170720}
!965 = !{!"branch_weights", i32 1, i32 4030789}
!966 = !{!"branch_weights", i32 84983, i32 3945807}
!967 = !{!"branch_weights", i32 -1406055482, i32 -1406060386}
!968 = !{!"function_entry_count", i64 1099661}
!969 = !{!"branch_weights", i32 18658879, i32 -306095664, i32 524971093}
!970 = !{!"branch_weights", i32 124809, i32 1}
!971 = !{!"branch_weights", i32 129926, i32 125169}
!972 = !{!"branch_weights", i32 124809, i32 130285}
!973 = distinct !{!973, !205}
!974 = !{!"branch_weights", i32 623157, i32 469422}
!975 = !{!"function_entry_count", i64 760124}
!976 = !{!"branch_weights", i32 755360, i32 4766}
!977 = !{!"branch_weights", i32 75, i32 760051}
!978 = !{!"branch_weights", i32 624905, i32 135147}
!979 = !{!"branch_weights", i32 1352, i32 1}
!980 = !{!"branch_weights", i32 1987905507, i32 -1359396498}
!981 = !{!"branch_weights", i32 173391514, i32 2394, i32 -1532785618}
!982 = distinct !{!982, !205}
!983 = !{!"branch_weights", i32 88, i32 1153475}
!984 = !{!"branch_weights", i32 165542906, i32 2252, i32 -1861670200}
!985 = !{!"branch_weights", i32 1079486, i32 516}
!986 = !{!"branch_weights", i32 70831, i32 1008656}
!987 = !{!"branch_weights", i32 1008656, i32 1}
!988 = !{!"branch_weights", i32 71, i32 1008586}
!989 = !{!"branch_weights", i32 758648, i32 249939}
!990 = !{!"branch_weights", i32 1389339338, i32 2049802528, i32 -1883081962}
!991 = !{!"branch_weights", i32 13051, i32 74512}
!992 = !{!"branch_weights", i32 -2008061375, i32 2963}
!993 = !{!"branch_weights", i32 12688, i32 140561}
!994 = !{!"branch_weights", i32 12688, i32 1}
!995 = !{!"branch_weights", i32 70831, i32 1}
!996 = !{!"branch_weights", i32 11627, i32 772759}
!997 = !{!"branch_weights", i32 770786, i32 1974}
!998 = !{!"branch_weights", i32 745202, i32 25585}
!999 = !{!"branch_weights", i32 164, i32 756665}
!1000 = !{!"branch_weights", i32 756776, i32 53}
!1001 = !{!"branch_weights", i32 1, i32 53}
!1002 = !{!"branch_weights", i32 621919, i32 134910}
!1003 = !{!"branch_weights", i32 -2145722130, i32 1352}
!1004 = !{!"branch_weights", i32 1, i32 760051}
!1005 = !{!"branch_weights", i32 756961, i32 3091}
!1006 = !{!"branch_weights", i32 3261, i32 753701}
!1007 = !{!"branch_weights", i32 1, i32 756791}
!1008 = !{!"branch_weights", i32 503385451, i32 -901920449}
!1009 = !{!"branch_weights", i32 659022, i32 1}
!1010 = !{!"branch_weights", i32 632939, i32 8525, i32 5049, i32 11592, i32 921}
!1011 = !{!"branch_weights", i32 1, i32 8525}
!1012 = !{!"branch_weights", i32 1, i32 5049}
!1013 = !{!"branch_weights", i32 11582, i32 11}
!1014 = !{!"branch_weights", i32 1, i32 921}
!1015 = !{!"function_entry_count", i64 630601}
!1016 = !{!"branch_weights", i32 630602, i32 1}
!1017 = !{!"branch_weights", i32 2560, i32 628043}
!1018 = !{!"branch_weights", i32 49, i32 627995}
!1019 = !{!869, !200, i64 32}
!1020 = !{!"function_entry_count", i64 1}
!1021 = !{!"branch_weights", i32 20, i32 121}
!1022 = !{!"branch_weights", i32 2, i32 138}
!1023 = distinct !{!1023, !205}
!1024 = !{!"rtlanal.c:init_num_sign_bit_copies_in_rep"}
!1025 = !{!"branch_weights", i32 1, i32 223}
!1026 = !{!634, !200, i64 1160}
!1027 = !{!"branch_weights", i32 16, i32 1}
!1028 = !{!"branch_weights", i32 1296, i32 73}
!1029 = !{!"branch_weights", i32 127, i32 161}
!1030 = distinct !{!1030, !205}
!1031 = !{!"branch_weights", i32 223, i32 289}
!1032 = distinct !{!1032, !205}
!1033 = !{!"branch_weights", i32 127, i32 321}
!1034 = distinct !{!1034, !205}
!1035 = !{!"function_entry_count", i64 100}
