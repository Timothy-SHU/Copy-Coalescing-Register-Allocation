; ModuleID = 'simplify-rtx.c'
source_filename = "simplify-rtx.c"
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
%struct.real_value = type { i32, [3 x i64] }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.double_int = type { i64, i64 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.simplify_plus_minus_op_data = type { ptr, i16 }

@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@.str = private unnamed_addr constant [15 x i8] c"simplify-rtx.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@dconst0 = external global %struct.real_value, align 8
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_rounding_math = external local_unnamed_addr global i32, align 4
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@warn_strict_overflow = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"assuming signed overflow does not occur when assuming abs (x) < 0 is false\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"assuming signed overflow does not occur when assuming abs (x) >= 0 is true\00", align 1
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@flag_associative_math = external local_unnamed_addr global i32, align 4
@dconst2 = external global %struct.real_value, align 8
@dconstm1 = external global %struct.real_value, align 8
@flag_reciprocal_math = external local_unnamed_addr global i32, align 4
@dconst1 = external global %struct.real_value, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @mode_signbit_p(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %51

7:                                                ; preds = %2
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %7
  %14 = icmp ult i8 %9, 9
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %36

21:                                               ; preds = %13
  %22 = icmp ult i8 %9, 17
  br i1 %22, label %23, label %51

23:                                               ; preds = %21
  %24 = load i32, ptr %1, align 8
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi i32 [ %24, %23 ], [ %16, %15 ]
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !5
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = add nsw i32 %11, -64
  br label %36

36:                                               ; preds = %33, %19
  %37 = phi ptr [ %20, %19 ], [ %34, %33 ]
  %38 = phi i32 [ %11, %19 ], [ %35, %33 ]
  %39 = load i64, ptr %37, align 8, !tbaa !5
  %40 = icmp ult i32 %38, 64
  %41 = zext nneg i32 %38 to i64
  %42 = shl nsw i64 -1, %41
  %43 = xor i64 %42, -1
  %44 = select i1 %40, i64 %43, i64 -1
  %45 = and i64 %44, %39
  %46 = add nsw i32 %38, -1
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = icmp eq i64 %45, %48
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %21, %25, %29, %7, %2, %36
  %52 = phi i8 [ %50, %36 ], [ 0, %2 ], [ 0, %7 ], [ 0, %29 ], [ 0, %25 ], [ 0, %21 ]
  ret i8 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !8
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #9
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr %2, ptr %3
  %16 = select i1 %14, ptr %3, ptr %2
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi ptr [ %2, %7 ], [ %15, %12 ]
  %19 = phi ptr [ %3, %7 ], [ %16, %12 ]
  %20 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %18, ptr noundef %19) #9
  br label %21

21:                                               ; preds = %4, %17
  %22 = phi ptr [ %20, %17 ], [ %5, %4 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !8
  switch i32 %7, label %15 [
    i32 0, label %8
    i32 1, label %9
    i32 3, label %10
  ]

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1690, ptr noundef nonnull @.str.1) #9
  br label %15

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1691, ptr noundef nonnull @.str.1) #9
  br label %15

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #9
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr %3, ptr %2
  %14 = select i1 %12, ptr %2, ptr %3
  br label %15

15:                                               ; preds = %4, %9, %8, %10
  %16 = phi ptr [ %13, %10 ], [ %3, %8 ], [ %3, %9 ], [ %3, %4 ]
  %17 = phi ptr [ %14, %10 ], [ %2, %8 ], [ %2, %9 ], [ %2, %4 ]
  %18 = tail call ptr @avoid_constant_pool_reference(ptr noundef %17) #8
  %19 = tail call ptr @avoid_constant_pool_reference(ptr noundef %16) #8
  %20 = tail call ptr @simplify_const_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %18, ptr noundef %19) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = tail call fastcc ptr @simplify_binary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %17, ptr noundef %16, ptr noundef %18, ptr noundef %19) #8
  br label %24

24:                                               ; preds = %15, %22
  %25 = phi ptr [ %23, %22 ], [ %20, %15 ]
  ret ptr %25
}

; Function Attrs: optsize
declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @avoid_constant_pool_reference(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %84 [
    i16 43, label %19
    i16 101, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @avoid_constant_pool_reference(ptr noundef %6) #8
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %84, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %84

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load i32, ptr %0, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = tail call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %14, i32 noundef %17) #9
  br label %84

19:                                               ; preds = %1
  %20 = and i32 %2, 16711680
  %21 = icmp eq i32 %20, 65536
  br i1 %21, label %84, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !10
  %26 = tail call ptr %25(ptr noundef %24) #9
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %48

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !5
  %46 = load ptr, ptr %43, align 8, !tbaa !5
  %47 = load i32, ptr %46, align 8
  br label %48

48:                                               ; preds = %42, %36, %30, %22
  %49 = phi i32 [ %47, %42 ], [ %27, %36 ], [ %27, %30 ], [ %27, %22 ]
  %50 = phi ptr [ %46, %42 ], [ %26, %36 ], [ %26, %30 ], [ %26, %22 ]
  %51 = phi i64 [ %45, %42 ], [ 0, %36 ], [ 0, %30 ], [ 0, %22 ]
  %52 = and i32 %49, 65535
  %53 = icmp eq i32 %52, 122
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i32 [ %57, %54 ], [ %49, %48 ]
  %60 = phi ptr [ %56, %54 ], [ %50, %48 ]
  %61 = and i32 %59, 67174399
  %62 = icmp eq i32 %61, 67108909
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = tail call ptr @get_pool_constant(ptr noundef nonnull %60) #9
  %65 = tail call i32 @get_pool_mode(ptr noundef nonnull %60) #9
  %66 = icmp eq i64 %51, 0
  %67 = load i32, ptr %0, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %65, %69
  %71 = select i1 %66, i1 %70, i1 false
  br i1 %71, label %84, label %72

72:                                               ; preds = %63
  %73 = trunc i64 %51 to i32
  %74 = tail call ptr @simplify_subreg(i32 noundef %69, ptr noundef %64, i32 noundef %65, i32 noundef %73) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %74, align 8
  %78 = and i32 %77, 65535
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !8
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %84, label %83

83:                                               ; preds = %76, %72
  br label %84

84:                                               ; preds = %63, %58, %83, %76, %19, %1, %4, %9, %13
  %85 = phi ptr [ %18, %13 ], [ %0, %9 ], [ %0, %4 ], [ %0, %1 ], [ %0, %19 ], [ %74, %76 ], [ %0, %83 ], [ %0, %58 ], [ %64, %63 ]
  ret ptr %85
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_pool_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5137, ptr noundef nonnull @.str.1) #9
  br label %7

7:                                                ; preds = %4, %6
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5138, ptr noundef nonnull @.str.1) #9
  br label %10

10:                                               ; preds = %7, %9
  %11 = icmp eq i32 %2, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5139, ptr noundef nonnull @.str.1) #9
  br label %13

13:                                               ; preds = %10, %12
  %14 = icmp eq i32 %0, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5140, ptr noundef nonnull @.str.1) #9
  br label %16

16:                                               ; preds = %13, %15
  %17 = load i32, ptr %1, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, %2
  %21 = icmp eq i32 %19, 0
  %22 = or i1 %20, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5143, ptr noundef nonnull @.str.1) #9
  br label %24

24:                                               ; preds = %16, %23
  %25 = zext i32 %0 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i32
  %29 = urem i32 %3, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5145, ptr noundef nonnull @.str.1) #9
  br label %32

32:                                               ; preds = %24, %31
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = icmp ugt i32 %36, %3
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5146, ptr noundef nonnull @.str.1) #9
  br label %39

39:                                               ; preds = %32, %38
  %40 = icmp ne i32 %0, %2
  %41 = icmp ne i32 %3, 0
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %500

43:                                               ; preds = %39
  %44 = load i32, ptr %1, align 8
  %45 = trunc i32 %44 to i16
  switch i16 %45, label %145 [
    i16 30, label %46
    i16 32, label %46
    i16 31, label %46
    i16 33, label %46
    i16 39, label %48
    i16 100, label %129
  ]

46:                                               ; preds = %43, %43, %43, %43
  %47 = tail call fastcc ptr @simplify_immed_subreg(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #8
  br label %500

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load i32, ptr %54, align 8, !tbaa !5
  %56 = add i32 %55, %3
  %57 = icmp eq i32 %53, %0
  %58 = icmp eq i32 %3, 0
  %59 = and i1 %58, %57
  %60 = icmp eq i32 %55, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %500, label %62

62:                                               ; preds = %48
  %63 = zext nneg i32 %53 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !5
  %66 = zext i8 %65 to i32
  %67 = load i8, ptr %26, align 1, !tbaa !5
  %68 = zext i8 %67 to i32
  %69 = icmp ugt i8 %65, %67
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = icmp slt i32 %56, 0
  br i1 %71, label %500, label %72

72:                                               ; preds = %70
  %73 = urem i32 %56, %68
  %74 = icmp eq i32 %73, 0
  %75 = icmp ult i32 %56, %66
  %76 = and i1 %75, %74
  br i1 %76, label %79, label %500

77:                                               ; preds = %62
  %78 = icmp eq i32 %56, 0
  br i1 %78, label %79, label %500

79:                                               ; preds = %72, %77
  %80 = phi i32 [ 0, %77 ], [ %56, %72 ]
  %81 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %50, i32 noundef %53, i32 noundef %80) #8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %500

83:                                               ; preds = %79
  %84 = load ptr, ptr %49, align 8, !tbaa !5
  %85 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %53, ptr noundef %84, i32 noundef %80) #9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %500, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %49, align 8, !tbaa !5
  %89 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef %88, i32 noundef %80) #9
  %90 = load i32, ptr %1, align 8
  %91 = and i32 %90, 402653184
  %92 = icmp eq i32 %91, 268435456
  br i1 %92, label %93, label %500

93:                                               ; preds = %87
  %94 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %95 = load i8, ptr %94, align 1, !tbaa !5
  %96 = icmp eq i8 %95, 2
  br i1 %96, label %97, label %500

97:                                               ; preds = %93
  %98 = load i8, ptr %26, align 1, !tbaa !5
  %99 = zext i8 %98 to i64
  %100 = load i8, ptr %34, align 1, !tbaa !5
  %101 = zext i8 %100 to i64
  %102 = sub nsw i64 %99, %101
  %103 = load i8, ptr %64, align 1, !tbaa !5
  %104 = zext i8 %103 to i64
  %105 = sub nsw i64 %104, %101
  %106 = icmp ugt i64 %102, %105
  br i1 %106, label %500, label %107

107:                                              ; preds = %97
  %108 = tail call i32 @subreg_lowpart_p(ptr noundef %89) #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %500, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %89, align 8
  %112 = or i32 %111, 268435456
  store i32 %112, ptr %89, align 8
  %113 = load i32, ptr %1, align 8
  %114 = and i32 %113, 134217728
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %110
  %117 = or i32 %111, 402653184
  br label %127

118:                                              ; preds = %110
  %119 = and i32 %112, -134217729
  store i32 %119, ptr %89, align 8
  %120 = load i32, ptr %1, align 8
  %121 = and i32 %120, 134217728
  %122 = icmp eq i32 %121, 0
  %123 = and i32 %120, 67108864
  %124 = select i1 %122, i32 %123, i32 67108864
  %125 = and i32 %112, -201326593
  %126 = or disjoint i32 %124, %125
  br label %127

127:                                              ; preds = %118, %116
  %128 = phi i32 [ %126, %118 ], [ %117, %116 ]
  store i32 %128, ptr %89, align 8
  br label %500

129:                                              ; preds = %43
  %130 = load i8, ptr %26, align 1, !tbaa !5
  %131 = load i8, ptr %34, align 1, !tbaa !5
  %132 = icmp ult i8 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #9
  %135 = icmp eq i32 %134, %3
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr %1, align 8
  br label %145

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = tail call ptr @simplify_gen_unary(i32 noundef 100, i32 noundef %0, ptr noundef nonnull %140, i32 noundef %143) #8
  br label %500

145:                                              ; preds = %136, %43, %129
  %146 = phi i32 [ %137, %136 ], [ %44, %43 ], [ %44, %129 ]
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 37
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #8
  %151 = icmp ult i32 %150, 53
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = tail call i32 @simplify_subreg_regno(i32 noundef %150, i32 noundef %2, i32 noundef %3, i32 noundef %0) #9
  %154 = icmp ult i32 %153, 53
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr %1, align 8
  br label %165

157:                                              ; preds = %152
  %158 = tail call ptr @gen_rtx_REG_offset(ptr noundef nonnull %1, i32 noundef %0, i32 noundef %153, i32 noundef %3) #9
  %159 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #9
  %160 = icmp eq i32 %159, %3
  br i1 %160, label %161, label %500

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load i32, ptr %162, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %163, ptr %164, align 8, !tbaa !5
  br label %500

165:                                              ; preds = %155, %149, %145
  %166 = phi i32 [ %156, %155 ], [ %146, %149 ], [ %146, %145 ]
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 43
  br i1 %168, label %169, label %194

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !5
  %172 = tail call i32 @mode_dependent_address_p(ptr noundef %171) #9
  %173 = icmp eq i32 %172, 0
  %174 = load i32, ptr %1, align 8
  br i1 %173, label %175, label %194

175:                                              ; preds = %169
  %176 = and i32 %174, 134217728
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = tail call i32 @have_insn_for(i32 noundef 23, i32 noundef %2) #9
  %180 = icmp eq i32 %179, 0
  %181 = load i32, ptr %1, align 8
  br i1 %180, label %182, label %194

182:                                              ; preds = %178, %175
  %183 = phi i32 [ %174, %175 ], [ %181, %178 ]
  %184 = load i8, ptr %26, align 1, !tbaa !5
  %185 = lshr i32 %183, 16
  %186 = and i32 %185, 255
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !5
  %190 = icmp ugt i8 %184, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %182
  %192 = zext i32 %3 to i64
  %193 = tail call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef %0, i64 noundef %192, i32 noundef 0, i32 noundef 1) #9
  br label %500

194:                                              ; preds = %182, %178, %169, %165
  %195 = phi i32 [ %183, %182 ], [ %181, %178 ], [ %174, %169 ], [ %166, %165 ]
  %196 = trunc i32 %195 to i16
  switch i16 %196, label %288 [
    i16 41, label %197
    i16 99, label %236
    i16 98, label %236
  ]

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !5
  %200 = load i32, ptr %199, align 8
  %201 = lshr i32 %200, 16
  %202 = and i32 %201, 255
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !5
  %206 = icmp eq i8 %205, 0
  %207 = zext i8 %205 to i64
  %208 = select i1 %206, i64 %203, i64 %207
  %209 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !5
  %211 = zext i8 %210 to i32
  %212 = icmp ugt i32 %211, %3
  %213 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %214 = select i1 %212, i32 0, i32 %211
  %215 = sub i32 %3, %214
  %216 = select i1 %212, ptr %198, ptr %213
  %217 = load ptr, ptr %216, align 8, !tbaa !5
  %218 = load i8, ptr %26, align 1, !tbaa !5
  %219 = zext i8 %218 to i32
  %220 = add i32 %215, %219
  %221 = icmp ugt i32 %220, %211
  br i1 %221, label %500, label %222

222:                                              ; preds = %197
  %223 = load i32, ptr %217, align 8
  %224 = lshr i32 %223, 16
  %225 = and i32 %224, 255
  %226 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %217, i32 noundef %225, i32 noundef %215) #8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %500

228:                                              ; preds = %222
  %229 = load i32, ptr %217, align 8
  %230 = lshr i32 %229, 16
  %231 = and i32 %230, 255
  %232 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %231, ptr noundef nonnull %217, i32 noundef %215) #9
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %500, label %234

234:                                              ; preds = %228
  %235 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef nonnull %217, i32 noundef %215) #9
  br label %500

236:                                              ; preds = %194, %194
  %237 = load i8, ptr %26, align 1, !tbaa !5
  %238 = load i8, ptr %34, align 1, !tbaa !5
  %239 = icmp ult i8 %237, %238
  br i1 %239, label %240, label %288

240:                                              ; preds = %236
  %241 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #9
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %268

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !5
  %246 = load i32, ptr %245, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = icmp eq i32 %248, %0
  br i1 %249, label %500, label %250

250:                                              ; preds = %243
  %251 = load i8, ptr %26, align 1, !tbaa !5
  %252 = zext nneg i32 %248 to i64
  %253 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !5
  %255 = icmp ugt i8 %251, %254
  br i1 %255, label %259, label %256

256:                                              ; preds = %250
  %257 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %248) #9
  %258 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %245, i32 noundef %248, i32 noundef %257) #8
  br label %500

259:                                              ; preds = %250
  %260 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %261 = load i8, ptr %260, align 1, !tbaa !5
  %262 = and i8 %261, -2
  %263 = icmp eq i8 %262, 2
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load i32, ptr %1, align 8
  %266 = and i32 %265, 65535
  %267 = tail call ptr @simplify_gen_unary(i32 noundef %266, i32 noundef %0, ptr noundef nonnull %245, i32 noundef %248) #8
  br label %500

268:                                              ; preds = %259, %240
  %269 = load i32, ptr %1, align 8
  %270 = and i32 %269, 65535
  %271 = icmp eq i32 %270, 99
  br i1 %271, label %272, label %288

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !5
  %275 = load i32, ptr %274, align 8
  %276 = lshr i32 %275, 16
  %277 = and i32 %276, 255
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !5
  %281 = zext i8 %280 to i32
  %282 = shl nuw nsw i32 %281, 3
  %283 = icmp ult i32 %241, %282
  br i1 %283, label %288, label %284

284:                                              ; preds = %272
  %285 = sext i32 %0 to i64
  %286 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !24
  br label %500

288:                                              ; preds = %268, %272, %194, %236
  %289 = phi i32 [ %269, %268 ], [ %269, %272 ], [ %195, %194 ], [ %195, %236 ]
  %290 = and i32 %289, 65535
  %291 = add nsw i32 %290, -67
  %292 = icmp ult i32 %291, 2
  br i1 %292, label %293, label %346

293:                                              ; preds = %288
  %294 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %295 = load i8, ptr %294, align 1, !tbaa !5
  %296 = and i8 %295, -2
  %297 = icmp eq i8 %296, 2
  br i1 %297, label %298, label %349

298:                                              ; preds = %293
  %299 = load i8, ptr %26, align 1, !tbaa !5
  %300 = zext i8 %299 to i16
  %301 = shl nuw nsw i16 %300, 3
  %302 = shl nuw nsw i16 %300, 4
  %303 = zext nneg i16 %302 to i32
  %304 = load i8, ptr %34, align 1, !tbaa !5
  %305 = zext i8 %304 to i32
  %306 = shl nuw nsw i32 %305, 3
  %307 = icmp ult i32 %306, %303
  br i1 %307, label %349, label %308

308:                                              ; preds = %298
  %309 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %310 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %311 = load ptr, ptr %310, align 8, !tbaa !5
  %312 = load i32, ptr %311, align 8
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 30
  br i1 %314, label %315, label %349

315:                                              ; preds = %308
  %316 = load ptr, ptr %309, align 8, !tbaa !5
  %317 = load i32, ptr %316, align 8
  %318 = and i32 %317, 65535
  %319 = icmp eq i32 %318, 98
  br i1 %319, label %320, label %349

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !5
  %323 = load i32, ptr %322, align 8
  %324 = lshr i32 %323, 16
  %325 = and i32 %324, 255
  %326 = icmp eq i32 %325, %0
  br i1 %326, label %327, label %349

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.rtx_def, ptr %311, i64 0, i32 1
  %329 = load i64, ptr %328, align 8, !tbaa !5
  %330 = zext nneg i16 %301 to i64
  %331 = icmp slt i64 %329, %330
  br i1 %331, label %332, label %349

332:                                              ; preds = %327
  %333 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #9
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %332
  %336 = load i32, ptr %1, align 8
  %337 = and i32 %336, 65535
  %338 = add nsw i32 %337, -67
  %339 = icmp ult i32 %338, 2
  br label %346

340:                                              ; preds = %332
  %341 = load ptr, ptr %309, align 8, !tbaa !5
  %342 = getelementptr inbounds %struct.rtx_def, ptr %341, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !5
  %344 = load ptr, ptr %310, align 8, !tbaa !5
  %345 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %0, ptr noundef %343, ptr noundef %344) #8
  br label %500

346:                                              ; preds = %335, %288
  %347 = phi i1 [ %339, %335 ], [ false, %288 ]
  %348 = phi i32 [ %336, %335 ], [ %289, %288 ]
  br i1 %347, label %349, label %399

349:                                              ; preds = %298, %308, %315, %320, %327, %293, %346
  %350 = phi i32 [ %348, %346 ], [ %289, %293 ], [ %289, %327 ], [ %289, %320 ], [ %289, %315 ], [ %289, %308 ], [ %289, %298 ]
  %351 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %352 = load i8, ptr %351, align 1, !tbaa !5
  %353 = and i8 %352, -2
  %354 = icmp eq i8 %353, 2
  br i1 %354, label %355, label %399

355:                                              ; preds = %349
  %356 = load i8, ptr %26, align 1, !tbaa !5
  %357 = zext i8 %356 to i16
  %358 = shl nuw nsw i16 %357, 3
  %359 = zext nneg i16 %358 to i32
  %360 = load i8, ptr %34, align 1, !tbaa !5
  %361 = zext i8 %360 to i32
  %362 = shl nuw nsw i32 %361, 3
  %363 = icmp ugt i32 %362, %359
  br i1 %363, label %364, label %399

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %366 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %367 = load ptr, ptr %366, align 8, !tbaa !5
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 65535
  %370 = icmp eq i32 %369, 30
  br i1 %370, label %371, label %399

371:                                              ; preds = %364
  %372 = load ptr, ptr %365, align 8, !tbaa !5
  %373 = load i32, ptr %372, align 8
  %374 = and i32 %373, 65535
  %375 = icmp eq i32 %374, 99
  br i1 %375, label %376, label %399

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.rtx_def, ptr %372, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !5
  %379 = load i32, ptr %378, align 8
  %380 = lshr i32 %379, 16
  %381 = and i32 %380, 255
  %382 = icmp eq i32 %381, %0
  br i1 %382, label %383, label %399

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1
  %385 = load i64, ptr %384, align 8, !tbaa !5
  %386 = zext nneg i16 %358 to i64
  %387 = icmp slt i64 %385, %386
  br i1 %387, label %388, label %399

388:                                              ; preds = %383
  %389 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #9
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %393, label %391

391:                                              ; preds = %388
  %392 = load i32, ptr %1, align 8
  br label %399

393:                                              ; preds = %388
  %394 = load ptr, ptr %365, align 8, !tbaa !5
  %395 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !5
  %397 = load ptr, ptr %366, align 8, !tbaa !5
  %398 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %0, ptr noundef %396, ptr noundef %397) #8
  br label %500

399:                                              ; preds = %391, %349, %346, %383, %376, %371, %364, %355
  %400 = phi i32 [ %392, %391 ], [ %350, %349 ], [ %348, %346 ], [ %350, %383 ], [ %350, %376 ], [ %350, %371 ], [ %350, %364 ], [ %350, %355 ]
  %401 = and i32 %400, 65535
  %402 = icmp eq i32 %401, 65
  br i1 %402, label %403, label %449

403:                                              ; preds = %399
  %404 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %405 = load i8, ptr %404, align 1, !tbaa !5
  %406 = and i8 %405, -2
  %407 = icmp eq i8 %406, 2
  br i1 %407, label %408, label %500

408:                                              ; preds = %403
  %409 = load i8, ptr %26, align 1, !tbaa !5
  %410 = load i8, ptr %34, align 1, !tbaa !5
  %411 = icmp ult i8 %409, %410
  br i1 %411, label %412, label %500

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %414 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %415 = load ptr, ptr %414, align 8, !tbaa !5
  %416 = load i32, ptr %415, align 8
  %417 = and i32 %416, 65535
  %418 = icmp eq i32 %417, 30
  br i1 %418, label %419, label %500

419:                                              ; preds = %412
  %420 = load ptr, ptr %413, align 8, !tbaa !5
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, 65534
  %423 = icmp eq i32 %422, 98
  br i1 %423, label %424, label %500

424:                                              ; preds = %419
  %425 = getelementptr inbounds %struct.rtx_def, ptr %420, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !5
  %427 = load i32, ptr %426, align 8
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  %430 = icmp eq i32 %429, %0
  br i1 %430, label %431, label %500

431:                                              ; preds = %424
  %432 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1
  %433 = load i64, ptr %432, align 8, !tbaa !5
  %434 = zext i8 %409 to i64
  %435 = shl nuw nsw i64 %434, 3
  %436 = icmp slt i64 %433, %435
  br i1 %436, label %437, label %500

437:                                              ; preds = %431
  %438 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #9
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %443, label %440

440:                                              ; preds = %437
  %441 = load i32, ptr %1, align 8
  %442 = and i32 %441, 65535
  br label %449

443:                                              ; preds = %437
  %444 = load ptr, ptr %413, align 8, !tbaa !5
  %445 = getelementptr inbounds %struct.rtx_def, ptr %444, i64 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !5
  %447 = load ptr, ptr %414, align 8, !tbaa !5
  %448 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %0, ptr noundef %446, ptr noundef %447) #8
  br label %500

449:                                              ; preds = %440, %399
  %450 = phi i32 [ %442, %440 ], [ %401, %399 ]
  %451 = add nsw i32 %450, -67
  %452 = icmp ult i32 %451, 2
  br i1 %452, label %453, label %500

453:                                              ; preds = %449
  %454 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %455 = load i8, ptr %454, align 1, !tbaa !5
  %456 = and i8 %455, -2
  %457 = icmp eq i8 %456, 2
  br i1 %457, label %458, label %500

458:                                              ; preds = %453
  %459 = load i8, ptr %26, align 1, !tbaa !5
  %460 = zext i8 %459 to i32
  %461 = shl nuw nsw i32 %460, 3
  %462 = icmp ugt i8 %459, 3
  br i1 %462, label %463, label %500

463:                                              ; preds = %458
  %464 = load i8, ptr %34, align 1, !tbaa !5
  %465 = zext i8 %464 to i16
  %466 = shl nuw nsw i16 %465, 3
  %467 = zext nneg i16 %466 to i32
  %468 = shl nuw nsw i32 %460, 4
  %469 = icmp ugt i32 %468, %467
  br i1 %469, label %500, label %470

470:                                              ; preds = %463
  %471 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %472 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !5
  %474 = load i32, ptr %473, align 8
  %475 = and i32 %474, 65535
  %476 = icmp eq i32 %475, 30
  br i1 %476, label %477, label %500

477:                                              ; preds = %470
  %478 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1
  %479 = load i64, ptr %478, align 8, !tbaa !5
  %480 = add nsw i32 %461, -1
  %481 = zext nneg i32 %480 to i64
  %482 = or disjoint i64 %481, -9223372036854775808
  %483 = and i64 %479, %482
  %484 = icmp eq i64 %483, 0
  %485 = zext nneg i16 %466 to i64
  %486 = icmp slt i64 %479, %485
  %487 = select i1 %484, i1 %486, i1 false
  br i1 %487, label %488, label %500

488:                                              ; preds = %477
  %489 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #9
  %490 = icmp eq i32 %489, %3
  br i1 %490, label %491, label %500

491:                                              ; preds = %488
  %492 = load ptr, ptr %472, align 8, !tbaa !5
  %493 = getelementptr inbounds %struct.rtx_def, ptr %492, i64 0, i32 1
  %494 = load i64, ptr %493, align 8, !tbaa !5
  %495 = sdiv i64 %494, 8
  %496 = trunc i64 %495 to i32
  %497 = load ptr, ptr %471, align 8, !tbaa !5
  %498 = add i32 %496, %3
  %499 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef %497, i32 noundef %2, i32 noundef %498) #8
  br label %500

500:                                              ; preds = %408, %412, %424, %431, %403, %419, %243, %264, %256, %161, %157, %284, %453, %449, %458, %463, %470, %477, %488, %234, %197, %222, %228, %77, %48, %70, %72, %79, %127, %107, %97, %93, %87, %83, %39, %491, %443, %393, %340, %191, %138, %46
  %501 = phi ptr [ %47, %46 ], [ %144, %138 ], [ %345, %340 ], [ %398, %393 ], [ %448, %443 ], [ %499, %491 ], [ %193, %191 ], [ %1, %39 ], [ null, %77 ], [ %50, %48 ], [ null, %70 ], [ null, %72 ], [ %81, %79 ], [ %89, %127 ], [ %89, %107 ], [ %89, %97 ], [ %89, %93 ], [ %89, %87 ], [ null, %83 ], [ %235, %234 ], [ null, %197 ], [ %226, %222 ], [ null, %228 ], [ null, %453 ], [ null, %449 ], [ null, %488 ], [ null, %477 ], [ null, %470 ], [ null, %463 ], [ null, %458 ], [ %287, %284 ], [ %158, %157 ], [ %158, %161 ], [ %245, %243 ], [ %267, %264 ], [ %258, %256 ], [ null, %419 ], [ null, %403 ], [ null, %431 ], [ null, %424 ], [ null, %412 ], [ null, %408 ]
  ret ptr %501
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @delegitimize_mem_from_attrs(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 43
  br i1 %10, label %11, label %169

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %169, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %14, align 8, !tbaa !25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %169, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %169

27:                                               ; preds = %23, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %28 = lshr i32 %8, 16
  %29 = and i32 %28, 255
  store i32 %29, ptr %2, align 4, !tbaa !8
  %30 = load i64, ptr %17, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %167 [
    i16 32, label %73
    i16 45, label %32
    i16 46, label %32
    i16 41, label %32
    i16 42, label %32
    i16 43, label %32
    i16 44, label %32
    i16 118, label %32
  ]

32:                                               ; preds = %27, %27, %27, %27, %27, %27, %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !tbaa !8
  %33 = call ptr @get_inner_reference(ptr noundef nonnull %17, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #9
  %34 = load i64, ptr %3, align 8, !tbaa !28
  %35 = load i32, ptr %2, align 4, !tbaa !8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = icmp eq i64 %34, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = load i64, ptr %4, align 8, !tbaa !28
  %44 = and i64 %43, 7
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load ptr, ptr %5, align 8, !tbaa !24
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = ashr exact i64 %43, 3
  br label %64

51:                                               ; preds = %46
  %52 = call i32 @host_integerp(ptr noundef nonnull %47, i32 noundef 0) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8, !tbaa !24
  %56 = load i64, ptr %4, align 8, !tbaa !28
  %57 = sdiv i64 %56, 8
  %58 = icmp eq ptr %55, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_int_cst, ptr %55, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !5
  %62 = add i64 %61, %57
  br label %64

63:                                               ; preds = %51, %42, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %167

64:                                               ; preds = %59, %54, %49
  %65 = phi i64 [ %62, %59 ], [ %57, %54 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %66 = icmp eq ptr %33, null
  br i1 %66, label %167, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %2, align 4, !tbaa !8
  %69 = load i32, ptr %0, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %167

73:                                               ; preds = %27, %67
  %74 = phi ptr [ %33, %67 ], [ %17, %27 ]
  %75 = phi i64 [ %65, %67 ], [ 0, %27 ]
  %76 = phi i32 [ %68, %67 ], [ %29, %27 ]
  %77 = load i64, ptr %74, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 32
  br i1 %79, label %80, label %167

80:                                               ; preds = %73
  %81 = and i64 %77, 67108864
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %74, i64 0, i32 4
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 49152
  %87 = icmp eq i32 %86, 0
  %88 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %167, label %94

91:                                               ; preds = %80
  %92 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !5
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %167, label %94

94:                                               ; preds = %83, %91
  %95 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %74, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %167, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %96, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 43
  br i1 %101, label %102, label %167

102:                                              ; preds = %98
  %103 = load ptr, ptr %13, align 8, !tbaa !5
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.mem_attrs, ptr %103, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !27
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !5
  %112 = add nsw i64 %111, %75
  br label %113

113:                                              ; preds = %102, %109, %105
  %114 = phi i64 [ %75, %102 ], [ %112, %109 ], [ %75, %105 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = load ptr, ptr %12, align 8, !tbaa !5
  %118 = icmp eq i64 %114, 0
  br i1 %118, label %157, label %119

119:                                              ; preds = %113
  %120 = load i32, ptr %117, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 49
  br i1 %122, label %123, label %164

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %125 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 30
  br i1 %129, label %130, label %164

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !5
  %133 = icmp eq i64 %114, %132
  br i1 %133, label %153, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %116, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 49
  br i1 %137, label %138, label %164

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %140 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 30
  br i1 %144, label %145, label %164

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !5
  %148 = add nsw i64 %147, %114
  %149 = icmp eq i64 %148, %132
  br i1 %149, label %150, label %164

150:                                              ; preds = %145
  %151 = load ptr, ptr %139, align 8, !tbaa !5
  %152 = icmp eq ptr %151, null
  br i1 %152, label %164, label %153

153:                                              ; preds = %150, %130
  %154 = phi ptr [ %116, %130 ], [ %151, %150 ]
  %155 = load ptr, ptr %124, align 8, !tbaa !5
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %153, %113
  %158 = phi ptr [ %116, %113 ], [ %154, %153 ]
  %159 = phi ptr [ %117, %113 ], [ %155, %153 ]
  %160 = call i32 @rtx_equal_p(ptr noundef %159, ptr noundef %158) #9
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, ptr %2, align 4, !tbaa !8
  br label %164

164:                                              ; preds = %162, %153, %150, %145, %138, %134, %123, %119
  %165 = phi i32 [ %163, %162 ], [ %76, %153 ], [ %76, %150 ], [ %76, %145 ], [ %76, %138 ], [ %76, %134 ], [ %76, %123 ], [ %76, %119 ]
  %166 = call ptr @adjust_address_1(ptr noundef nonnull %96, i32 noundef %165, i64 noundef %114, i32 noundef 0, i32 noundef 1) #9
  br label %167

167:                                              ; preds = %27, %63, %164, %157, %98, %94, %91, %83, %73, %67, %64
  %168 = phi ptr [ %0, %98 ], [ %0, %94 ], [ %0, %91 ], [ %0, %83 ], [ %0, %73 ], [ %0, %67 ], [ %0, %64 ], [ %0, %157 ], [ %166, %164 ], [ %0, %63 ], [ %0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %169

169:                                              ; preds = %11, %167, %23, %16, %1
  %170 = phi ptr [ %0, %11 ], [ %168, %167 ], [ %0, %23 ], [ %0, %16 ], [ %0, %1 ]
  ret ptr %170
}

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_gen_unary(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) #9
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call ptr @avoid_constant_pool_reference(ptr noundef %2) #8
  %6 = tail call ptr @simplify_const_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %3) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @simplify_unary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ %6, %4 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_gen_ternary(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = tail call ptr @simplify_ternary_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5) #9
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_ternary_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = icmp eq i8 %9, 0
  %13 = select i1 %12, i32 64, i32 %11
  switch i32 %0, label %368 [
    i32 119, label %14
    i32 120, label %14
    i32 47, label %71
    i32 123, label %294
  ]

14:                                               ; preds = %6, %6
  %15 = load i32, ptr %3, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %18, label %369

18:                                               ; preds = %14
  %19 = load i32, ptr %4, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %369

22:                                               ; preds = %18
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %369

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !5
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !5
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, %29
  %34 = icmp ule i32 %33, %13
  %35 = icmp ult i32 %13, 65
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %369

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !5
  %40 = ashr i64 %39, %31
  %41 = icmp eq i64 %28, 64
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  %43 = shl nsw i64 -1, %28
  %44 = xor i64 %43, -1
  %45 = and i64 %40, %44
  %46 = icmp eq i32 %0, 119
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = add nsw i64 %28, -1
  %49 = shl nuw nsw i64 1, %48
  %50 = and i64 %45, %49
  %51 = icmp eq i64 %50, 0
  %52 = or i64 %40, %43
  %53 = select i1 %51, i64 %45, i64 %52
  br label %54

54:                                               ; preds = %47, %42, %37
  %55 = phi i64 [ %45, %42 ], [ %40, %37 ], [ %53, %47 ]
  %56 = icmp ult i32 %13, 64
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = add nsw i32 %13, -1
  %59 = zext nneg i32 %58 to i64
  %60 = shl nsw i64 -1, %59
  %61 = and i64 %55, %60
  %62 = icmp eq i64 %61, %60
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = zext nneg i32 %13 to i64
  %65 = shl nsw i64 -1, %64
  %66 = xor i64 %65, -1
  %67 = and i64 %55, %66
  br label %68

68:                                               ; preds = %63, %57, %54
  %69 = phi i64 [ %67, %63 ], [ %55, %57 ], [ %55, %54 ]
  %70 = tail call ptr @gen_int_mode(i64 noundef %69, i32 noundef %1) #9
  br label %369

71:                                               ; preds = %6
  %72 = load i32, ptr %3, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 30
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %77 = icmp eq ptr %76, %3
  %78 = select i1 %77, ptr %5, ptr %4
  br label %369

79:                                               ; preds = %71
  %80 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %369, label %85

85:                                               ; preds = %82, %79
  %86 = load i32, ptr %3, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 80
  br i1 %88, label %89, label %151

89:                                               ; preds = %85
  %90 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %151

92:                                               ; preds = %89
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %94 = load i8, ptr %93, align 1, !tbaa !5
  switch i8 %94, label %132 [
    i8 8, label %95
    i8 9, label %95
    i8 11, label %95
    i8 17, label %95
  ]

95:                                               ; preds = %92, %92, %92, %92
  %96 = and i8 %94, -2
  %97 = icmp eq i8 %96, 8
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = zext i8 %100 to i32
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i32 [ %1, %95 ], [ %101, %98 ]
  %104 = add i32 %103, -38
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !24
  %108 = getelementptr inbounds %struct.real_format, ptr %107, i64 0, i32 11
  %109 = load i8, ptr %108, align 2, !tbaa !29
  %110 = icmp eq i8 %109, 0
  %111 = load i32, ptr @flag_finite_math_only, align 4
  %112 = icmp ne i32 %111, 0
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %114, label %151

114:                                              ; preds = %102
  switch i8 %94, label %132 [
    i8 8, label %115
    i8 9, label %115
    i8 11, label %115
    i8 17, label %115
  ]

115:                                              ; preds = %114, %114, %114, %114
  br i1 %97, label %120, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %118 = load i8, ptr %117, align 1, !tbaa !5
  %119 = zext i8 %118 to i32
  br label %120

120:                                              ; preds = %116, %115
  %121 = phi i32 [ %1, %115 ], [ %119, %116 ]
  %122 = add i32 %121, -38
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !24
  %126 = getelementptr inbounds %struct.real_format, ptr %125, i64 0, i32 14
  %127 = load i8, ptr %126, align 1, !tbaa !31
  %128 = icmp ne i8 %127, 0
  %129 = load i32, ptr @flag_signed_zeros, align 4
  %130 = icmp ne i32 %129, 0
  %131 = select i1 %128, i1 %130, i1 false
  br i1 %131, label %151, label %132

132:                                              ; preds = %92, %114, %120
  %133 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = tail call i32 @rtx_equal_p(ptr noundef %134, ptr noundef %4) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = tail call i32 @rtx_equal_p(ptr noundef %139, ptr noundef %5) #9
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %369

142:                                              ; preds = %137, %132
  %143 = load ptr, ptr %133, align 8, !tbaa !5
  %144 = tail call i32 @rtx_equal_p(ptr noundef %143, ptr noundef %5) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !5
  %149 = tail call i32 @rtx_equal_p(ptr noundef %148, ptr noundef %4) #9
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %369

151:                                              ; preds = %120, %102, %146, %142, %89, %85
  %152 = load i32, ptr %3, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 81
  br i1 %154, label %155, label %217

155:                                              ; preds = %151
  %156 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %217

158:                                              ; preds = %155
  %159 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %160 = load i8, ptr %159, align 1, !tbaa !5
  switch i8 %160, label %198 [
    i8 8, label %161
    i8 9, label %161
    i8 11, label %161
    i8 17, label %161
  ]

161:                                              ; preds = %158, %158, %158, %158
  %162 = and i8 %160, -2
  %163 = icmp eq i8 %162, 8
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %166 = load i8, ptr %165, align 1, !tbaa !5
  %167 = zext i8 %166 to i32
  br label %168

168:                                              ; preds = %164, %161
  %169 = phi i32 [ %1, %161 ], [ %167, %164 ]
  %170 = add i32 %169, -38
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !24
  %174 = getelementptr inbounds %struct.real_format, ptr %173, i64 0, i32 11
  %175 = load i8, ptr %174, align 2, !tbaa !29
  %176 = icmp eq i8 %175, 0
  %177 = load i32, ptr @flag_finite_math_only, align 4
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %180, label %217

180:                                              ; preds = %168
  switch i8 %160, label %198 [
    i8 8, label %181
    i8 9, label %181
    i8 11, label %181
    i8 17, label %181
  ]

181:                                              ; preds = %180, %180, %180, %180
  br i1 %163, label %186, label %182

182:                                              ; preds = %181
  %183 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %184 = load i8, ptr %183, align 1, !tbaa !5
  %185 = zext i8 %184 to i32
  br label %186

186:                                              ; preds = %182, %181
  %187 = phi i32 [ %1, %181 ], [ %185, %182 ]
  %188 = add i32 %187, -38
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !24
  %192 = getelementptr inbounds %struct.real_format, ptr %191, i64 0, i32 14
  %193 = load i8, ptr %192, align 1, !tbaa !31
  %194 = icmp ne i8 %193, 0
  %195 = load i32, ptr @flag_signed_zeros, align 4
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %217, label %198

198:                                              ; preds = %158, %180, %186
  %199 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !5
  %201 = tail call i32 @rtx_equal_p(ptr noundef %200, ptr noundef %4) #9
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !5
  %206 = tail call i32 @rtx_equal_p(ptr noundef %205, ptr noundef %5) #9
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %369

208:                                              ; preds = %203, %198
  %209 = load ptr, ptr %199, align 8, !tbaa !5
  %210 = tail call i32 @rtx_equal_p(ptr noundef %209, ptr noundef %5) #9
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !5
  %215 = tail call i32 @rtx_equal_p(ptr noundef %214, ptr noundef %4) #9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %369

217:                                              ; preds = %186, %168, %212, %208, %155, %151
  %218 = load i32, ptr %3, align 8
  %219 = and i32 %218, 65535
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !8
  %223 = icmp ult i32 %222, 2
  br i1 %223, label %224, label %369

224:                                              ; preds = %217
  %225 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #9
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %369

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  %230 = load i32, ptr %229, align 8
  %231 = lshr i32 %230, 16
  %232 = and i32 %231, 255
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = load i32, ptr %236, align 8
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  br label %240

240:                                              ; preds = %227, %234
  %241 = phi i32 [ %239, %234 ], [ %232, %227 ]
  %242 = load i32, ptr %4, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 30
  br i1 %244, label %245, label %275

245:                                              ; preds = %240
  %246 = load i32, ptr %5, align 8
  %247 = and i32 %246, 65535
  %248 = icmp eq i32 %247, 30
  br i1 %248, label %249, label %275

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !5
  %252 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !5
  %254 = icmp eq i64 %251, 1
  %255 = icmp eq i64 %253, 0
  %256 = select i1 %254, i1 %255, i1 false
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load i32, ptr %3, align 8
  %259 = and i32 %258, 65535
  br label %269

260:                                              ; preds = %249
  %261 = icmp eq i64 %251, 0
  %262 = icmp eq i64 %253, 1
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %369

264:                                              ; preds = %260
  %265 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %3, ptr noundef null) #9
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %369, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr %228, align 8, !tbaa !5
  br label %269

269:                                              ; preds = %267, %257
  %270 = phi ptr [ %229, %257 ], [ %268, %267 ]
  %271 = phi i32 [ %259, %257 ], [ %265, %267 ]
  %272 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !5
  %274 = tail call ptr @simplify_gen_relational(i32 noundef %271, i32 noundef %1, i32 noundef %241, ptr noundef %270, ptr noundef %273) #8
  br label %369

275:                                              ; preds = %245, %240
  %276 = icmp eq i32 %241, 0
  %277 = select i1 %276, i32 %2, i32 %241
  %278 = load i32, ptr %3, align 8
  %279 = and i32 %278, 65535
  %280 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !5
  %282 = tail call ptr @simplify_relational_operation(i32 noundef %279, i32 noundef %2, i32 noundef %277, ptr noundef nonnull %229, ptr noundef %281) #8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %369, label %284

284:                                              ; preds = %275
  %285 = load i32, ptr %282, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 30
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %290 = icmp eq ptr %282, %289
  %291 = select i1 %290, ptr %5, ptr %4
  br label %369

292:                                              ; preds = %284
  %293 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %1, ptr noundef nonnull %282, ptr noundef nonnull %4, ptr noundef %5) #9
  br label %369

294:                                              ; preds = %6
  %295 = load i32, ptr %3, align 8
  %296 = lshr i32 %295, 16
  %297 = and i32 %296, 255
  %298 = icmp eq i32 %297, %1
  br i1 %298, label %300, label %299

299:                                              ; preds = %294
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4781, ptr noundef nonnull @.str.1) #9
  br label %300

300:                                              ; preds = %294, %299
  %301 = load i32, ptr %4, align 8
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = icmp eq i32 %303, %1
  br i1 %304, label %306, label %305

305:                                              ; preds = %300
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4782, ptr noundef nonnull @.str.1) #9
  br label %306

306:                                              ; preds = %300, %305
  %307 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %308 = load i8, ptr %307, align 1, !tbaa !5
  %309 = add i8 %308, -12
  %310 = icmp ult i8 %309, 6
  br i1 %310, label %312, label %311

311:                                              ; preds = %306
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4783, ptr noundef nonnull @.str.1) #9
  br label %312

312:                                              ; preds = %306, %311
  %313 = tail call ptr @avoid_constant_pool_reference(ptr noundef %5) #8
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, 65535
  %316 = icmp eq i32 %315, 30
  br i1 %316, label %317, label %369

317:                                              ; preds = %312
  %318 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %319 = load i8, ptr %318, align 1, !tbaa !5
  %320 = zext i8 %319 to i64
  %321 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !5
  %323 = load i8, ptr %8, align 1, !tbaa !5
  %324 = udiv i8 %323, %322
  %325 = zext i8 %324 to i32
  %326 = shl nsw i32 -1, %325
  %327 = xor i32 %326, -1
  %328 = getelementptr inbounds %struct.rtx_def, ptr %313, i64 0, i32 1
  %329 = load i64, ptr %328, align 8, !tbaa !5
  %330 = zext nneg i32 %327 to i64
  %331 = and i64 %329, %330
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %369, label %333

333:                                              ; preds = %317
  %334 = icmp eq i64 %331, %330
  br i1 %334, label %369, label %335

335:                                              ; preds = %333
  %336 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %3) #8
  %337 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %4) #8
  %338 = load i32, ptr %336, align 8
  %339 = and i32 %338, 65535
  %340 = icmp eq i32 %339, 33
  br i1 %340, label %341, label %369

341:                                              ; preds = %335
  %342 = load i32, ptr %337, align 8
  %343 = and i32 %342, 65535
  %344 = icmp eq i32 %343, 33
  br i1 %344, label %345, label %369

345:                                              ; preds = %341
  %346 = tail call ptr @rtvec_alloc(i32 noundef %325) #9
  %347 = icmp ugt i8 %322, %323
  br i1 %347, label %366, label %348

348:                                              ; preds = %345
  %349 = zext i8 %324 to i64
  br label %350

350:                                              ; preds = %348, %350
  %351 = phi i64 [ 0, %348 ], [ %364, %350 ]
  %352 = load i64, ptr %328, align 8, !tbaa !5
  %353 = trunc i64 %351 to i32
  %354 = shl nuw i32 1, %353
  %355 = sext i32 %354 to i64
  %356 = and i64 %352, %355
  %357 = icmp eq i64 %356, 0
  %358 = select i1 %357, ptr %337, ptr %336
  %359 = getelementptr inbounds %struct.rtx_def, ptr %358, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !5
  %361 = getelementptr inbounds %struct.rtvec_def, ptr %360, i64 0, i32 1, i64 %351
  %362 = load ptr, ptr %361, align 8, !tbaa !24
  %363 = getelementptr inbounds %struct.rtvec_def, ptr %346, i64 0, i32 1, i64 %351
  store ptr %362, ptr %363, align 8, !tbaa !24
  %364 = add nuw nsw i64 %351, 1
  %365 = icmp ult i64 %364, %349
  br i1 %365, label %350, label %366, !llvm.loop !32

366:                                              ; preds = %350, %345
  %367 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %346) #9
  br label %369

368:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4814, ptr noundef nonnull @.str.1) #9
  br label %369

369:                                              ; preds = %368, %26, %22, %18, %14, %224, %217, %312, %335, %341, %260, %275, %264, %333, %317, %366, %269, %292, %288, %203, %212, %137, %146, %82, %75, %68
  %370 = phi ptr [ %78, %75 ], [ %70, %68 ], [ %4, %82 ], [ %4, %146 ], [ %4, %137 ], [ %5, %212 ], [ %5, %203 ], [ %274, %269 ], [ %293, %292 ], [ %291, %288 ], [ %3, %333 ], [ %4, %317 ], [ %367, %366 ], [ null, %264 ], [ null, %275 ], [ null, %260 ], [ null, %341 ], [ null, %335 ], [ null, %312 ], [ null, %217 ], [ null, %224 ], [ null, %14 ], [ null, %18 ], [ null, %22 ], [ null, %26 ], [ null, %368 ]
  ret ptr %370
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = tail call ptr @simplify_relational_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4) #9
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_relational_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i32, ptr %4, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %5, %12, %7
  %17 = phi i32 [ %15, %12 ], [ %10, %7 ], [ %2, %5 ]
  %18 = tail call ptr @simplify_const_relational_operation(i32 noundef %0, i32 noundef %17, ptr noundef %3, ptr noundef %4) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = zext i32 %1 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !5
  switch i8 %23, label %74 [
    i8 8, label %24
    i8 9, label %24
    i8 12, label %31
    i8 17, label %31
    i8 13, label %31
    i8 14, label %31
    i8 15, label %31
    i8 16, label %31
  ]

24:                                               ; preds = %20, %20
  %25 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %26 = icmp eq ptr %18, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !24
  br label %74

31:                                               ; preds = %20, %20, %20, %20, %20, %20
  %32 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %33 = icmp eq ptr %18, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = sext i32 %1 to i64
  %36 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !24
  br label %74

38:                                               ; preds = %16
  %39 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %3, ptr noundef %4) #9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %43 = icmp ne ptr %42, %3
  %44 = icmp eq ptr %42, %4
  %45 = or i1 %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %38
  %47 = tail call i32 @swap_condition(i32 noundef %0) #9
  %48 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi ptr [ %48, %46 ], [ %42, %41 ]
  %51 = phi ptr [ %4, %46 ], [ %3, %41 ]
  %52 = phi ptr [ %3, %46 ], [ %4, %41 ]
  %53 = phi i32 [ %47, %46 ], [ %0, %41 ]
  %54 = load i32, ptr %51, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 48
  %57 = icmp eq ptr %52, %50
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = tail call ptr @simplify_gen_relational(i32 noundef %53, i32 noundef %1, i32 noundef 0, ptr noundef %61, ptr noundef %63) #8
  br label %74

65:                                               ; preds = %49
  %66 = zext i32 %17 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %51) #8
  %72 = tail call ptr @avoid_constant_pool_reference(ptr noundef %52) #8
  %73 = tail call fastcc ptr @simplify_relational_operation_1(i32 noundef %53, i32 noundef %1, i32 noundef %17, ptr noundef %71, ptr noundef %72) #8
  br label %74

74:                                               ; preds = %65, %20, %31, %24, %70, %59, %34, %27
  %75 = phi ptr [ %30, %27 ], [ %37, %34 ], [ %64, %59 ], [ %73, %70 ], [ null, %24 ], [ null, %31 ], [ %18, %20 ], [ null, %65 ]
  ret ptr %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_replace_fn_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = lshr i32 %5, 16
  %8 = and i32 %7, 255
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = tail call ptr %2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %222

13:                                               ; preds = %4
  %14 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef %1) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @copy_rtx(ptr noundef %3) #9
  br label %222

18:                                               ; preds = %13, %10
  %19 = zext nneg i32 %6 to i64
  %20 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !8
  switch i32 %21, label %154 [
    i32 4, label %22
    i32 2, label %33
    i32 3, label %33
    i32 0, label %47
    i32 1, label %47
    i32 10, label %71
    i32 11, label %71
    i32 5, label %101
    i32 8, label %121
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load i32, ptr %24, align 8
  %26 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %24, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %27 = load ptr, ptr %23, align 8, !tbaa !5
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %222, label %29

29:                                               ; preds = %22
  %30 = lshr i32 %25, 16
  %31 = and i32 %30, 255
  %32 = tail call ptr @simplify_gen_unary(i32 noundef %6, i32 noundef %8, ptr noundef %26, i32 noundef %31) #8
  br label %222

33:                                               ; preds = %18, %18
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %35, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %38, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %40 = load ptr, ptr %34, align 8, !tbaa !5
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load ptr, ptr %37, align 8, !tbaa !5
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %222, label %45

45:                                               ; preds = %42, %33
  %46 = tail call ptr @simplify_gen_binary(i32 noundef %6, i32 noundef %8, ptr noundef %36, ptr noundef %39) #8
  br label %222

47:                                               ; preds = %18, %18
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = load i32, ptr %49, align 8
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, ptr %51, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  br label %60

60:                                               ; preds = %47, %56
  %61 = phi i32 [ %59, %56 ], [ %54, %47 ]
  %62 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %49, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %63 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %51, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %64 = load ptr, ptr %48, align 8, !tbaa !5
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load ptr, ptr %50, align 8, !tbaa !5
  %68 = icmp eq ptr %63, %67
  br i1 %68, label %222, label %69

69:                                               ; preds = %66, %60
  %70 = tail call ptr @simplify_gen_relational(i32 noundef %6, i32 noundef %8, i32 noundef %61, ptr noundef %62, ptr noundef %63) #8
  br label %222

71:                                               ; preds = %18, %18
  %72 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %73, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %78 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %79, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %82, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %84 = load ptr, ptr %72, align 8, !tbaa !5
  %85 = icmp eq ptr %77, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %71
  %87 = load ptr, ptr %78, align 8, !tbaa !5
  %88 = icmp eq ptr %80, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load ptr, ptr %81, align 8, !tbaa !5
  %91 = icmp eq ptr %83, %90
  br i1 %91, label %222, label %92

92:                                               ; preds = %89, %86, %71
  %93 = icmp eq i32 %76, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = load i32, ptr %77, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  br label %98

98:                                               ; preds = %94, %92
  %99 = phi i32 [ %97, %94 ], [ %76, %92 ]
  %100 = tail call ptr @simplify_gen_ternary(i32 noundef %6, i32 noundef %8, i32 noundef %99, ptr noundef %77, ptr noundef %80, ptr noundef %83) #8
  br label %222

101:                                              ; preds = %18
  %102 = icmp eq i32 %6, 39
  br i1 %102, label %103, label %154

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %105, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %107 = load ptr, ptr %104, align 8, !tbaa !5
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %222, label %109

109:                                              ; preds = %103
  %110 = load i32, ptr %0, align 8
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = load i32, ptr %107, align 8
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load i32, ptr %116, align 8, !tbaa !5
  %118 = tail call ptr @simplify_gen_subreg(i32 noundef %112, ptr noundef %106, i32 noundef %115, i32 noundef %117) #8
  %119 = icmp eq ptr %118, null
  %120 = select i1 %119, ptr %0, ptr %118
  br label %222

121:                                              ; preds = %18
  %122 = trunc i32 %5 to i16
  switch i16 %122, label %154 [
    i16 43, label %123
    i16 122, label %131
  ]

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %125, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %127 = load ptr, ptr %124, align 8, !tbaa !5
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %222, label %129

129:                                              ; preds = %123
  %130 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %126) #9
  br label %222

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !5
  %134 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %133, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %135 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %136, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %138 = load i32, ptr %134, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 121
  br i1 %140, label %141, label %146

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  %144 = tail call i32 @rtx_equal_p(ptr noundef %143, ptr noundef %137) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %222

146:                                              ; preds = %141, %131
  %147 = load ptr, ptr %132, align 8, !tbaa !5
  %148 = icmp eq ptr %134, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load ptr, ptr %135, align 8, !tbaa !5
  %151 = icmp eq ptr %137, %150
  br i1 %151, label %222, label %152

152:                                              ; preds = %149, %146
  %153 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %8, ptr noundef nonnull %134, ptr noundef %137) #9
  br label %222

154:                                              ; preds = %121, %18, %101
  %155 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %19
  %156 = load ptr, ptr %155, align 8, !tbaa !24
  %157 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br label %158

158:                                              ; preds = %219, %154
  %159 = phi i64 [ %221, %219 ], [ 0, %154 ]
  %160 = phi ptr [ %220, %219 ], [ %0, %154 ]
  %161 = getelementptr inbounds i8, ptr %156, i64 %159
  %162 = load i8, ptr %161, align 1, !tbaa !5
  switch i8 %162, label %219 [
    i8 0, label %222
    i8 69, label %163
    i8 101, label %203
  ]

163:                                              ; preds = %158
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %157, i64 0, i64 %159
  %165 = load ptr, ptr %164, align 8, !tbaa !5
  %166 = load i32, ptr %165, align 8, !tbaa !34
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %219

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1
  %170 = getelementptr inbounds [1 x %union.rtunion_def], ptr %169, i64 0, i64 %159
  %171 = load ptr, ptr %170, align 8, !tbaa !5
  br label %172

172:                                              ; preds = %168, %196
  %173 = phi i64 [ 0, %168 ], [ %199, %196 ]
  %174 = phi ptr [ %171, %168 ], [ %198, %196 ]
  %175 = phi ptr [ %160, %168 ], [ %197, %196 ]
  %176 = getelementptr inbounds %struct.rtvec_def, ptr %165, i64 0, i32 1, i64 %173
  %177 = load ptr, ptr %176, align 8, !tbaa !24
  %178 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %177, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %179 = load ptr, ptr %176, align 8, !tbaa !24
  %180 = icmp eq ptr %178, %179
  br i1 %180, label %196, label %181

181:                                              ; preds = %172
  %182 = icmp eq ptr %174, %165
  br i1 %182, label %183, label %192

183:                                              ; preds = %181
  %184 = tail call ptr @shallow_copy_rtvec(ptr noundef nonnull %165) #9
  %185 = icmp eq ptr %175, %0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #9
  br label %188

188:                                              ; preds = %186, %183
  %189 = phi ptr [ %187, %186 ], [ %175, %183 ]
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1
  %191 = getelementptr inbounds [1 x %union.rtunion_def], ptr %190, i64 0, i64 %159
  store ptr %184, ptr %191, align 8, !tbaa !5
  br label %192

192:                                              ; preds = %188, %181
  %193 = phi ptr [ %189, %188 ], [ %175, %181 ]
  %194 = phi ptr [ %184, %188 ], [ %174, %181 ]
  %195 = getelementptr inbounds %struct.rtvec_def, ptr %194, i64 0, i32 1, i64 %173
  store ptr %178, ptr %195, align 8, !tbaa !24
  br label %196

196:                                              ; preds = %172, %192
  %197 = phi ptr [ %193, %192 ], [ %175, %172 ]
  %198 = phi ptr [ %194, %192 ], [ %174, %172 ]
  %199 = add nuw nsw i64 %173, 1
  %200 = load i32, ptr %165, align 8, !tbaa !34
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %199, %201
  br i1 %202, label %172, label %219, !llvm.loop !36

203:                                              ; preds = %158
  %204 = getelementptr inbounds [1 x %union.rtunion_def], ptr %157, i64 0, i64 %159
  %205 = load ptr, ptr %204, align 8, !tbaa !5
  %206 = icmp eq ptr %205, null
  br i1 %206, label %219, label %207

207:                                              ; preds = %203
  %208 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %205, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %209 = load ptr, ptr %204, align 8, !tbaa !5
  %210 = icmp eq ptr %208, %209
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  %212 = icmp eq ptr %160, %0
  br i1 %212, label %213, label %215

213:                                              ; preds = %211
  %214 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #9
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi ptr [ %214, %213 ], [ %160, %211 ]
  %217 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %218 = getelementptr inbounds [1 x %union.rtunion_def], ptr %217, i64 0, i64 %159
  store ptr %208, ptr %218, align 8, !tbaa !5
  br label %219

219:                                              ; preds = %196, %163, %158, %207, %215, %203
  %220 = phi ptr [ %216, %215 ], [ %160, %207 ], [ %160, %203 ], [ %160, %158 ], [ %160, %163 ], [ %197, %196 ]
  %221 = add nuw i64 %159, 1
  br label %158, !llvm.loop !37

222:                                              ; preds = %158, %149, %141, %123, %103, %89, %66, %42, %22, %10, %152, %129, %109, %98, %69, %45, %29, %16
  %223 = phi ptr [ %130, %129 ], [ %153, %152 ], [ %120, %109 ], [ %100, %98 ], [ %70, %69 ], [ %46, %45 ], [ %32, %29 ], [ %17, %16 ], [ %11, %10 ], [ %0, %22 ], [ %0, %42 ], [ %0, %66 ], [ %0, %89 ], [ %0, %103 ], [ %0, %123 ], [ %137, %141 ], [ %0, %149 ], [ %160, %158 ]
  ret ptr %223
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %10 [
    i16 39, label %18
    i16 41, label %18
  ]

10:                                               ; preds = %7
  %11 = and i32 %8, 16711680
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %2, ptr noundef nonnull %1, i32 noundef %3) #9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %3) #9
  br label %18

18:                                               ; preds = %13, %10, %7, %7, %4, %16
  %19 = phi ptr [ %17, %16 ], [ %5, %4 ], [ null, %7 ], [ null, %7 ], [ null, %10 ], [ null, %13 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @shallow_copy_rtvec(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2) #8
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_const_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  %8 = alloca %struct.real_value, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.real_value, align 8
  %12 = alloca %struct.real_value, align 8
  %13 = alloca %struct.real_value, align 8
  %14 = alloca %struct.real_value, align 8
  %15 = alloca [4 x i64], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.real_value, align 8
  %19 = alloca %struct.real_value, align 8
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 3
  %25 = icmp eq i32 %0, 126
  %26 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = add i8 %27, -12
  br i1 %25, label %29, label %133

29:                                               ; preds = %4
  %30 = icmp ult i8 %28, 6
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1073, ptr noundef nonnull @.str.1) #9
  br label %32

32:                                               ; preds = %29, %31
  %33 = load i32, ptr %2, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = add i8 %40, -12
  %42 = icmp ult i8 %41, 6
  %43 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %44 = load i8, ptr %43, align 1, !tbaa !5
  br i1 %42, label %48, label %45

45:                                               ; preds = %37
  %46 = trunc i32 %34 to i8
  %47 = icmp eq i8 %44, %46
  br i1 %47, label %54, label %52

48:                                               ; preds = %37
  %49 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = icmp eq i8 %44, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %48, %45
  %53 = phi i32 [ 1077, %45 ], [ 1080, %48 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %53, ptr noundef nonnull @.str.1) #9
  br label %54

54:                                               ; preds = %52, %48, %45, %32
  %55 = load i32, ptr %2, align 8
  %56 = trunc i32 %55 to i16
  switch i16 %56, label %133 [
    i16 30, label %57
    i16 32, label %57
    i16 33, label %57
  ]

57:                                               ; preds = %54, %54, %54
  %58 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %59 = load i8, ptr %58, align 1, !tbaa !5
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = load i8, ptr %21, align 1, !tbaa !5
  %64 = udiv i8 %63, %62
  %65 = zext i8 %64 to i32
  %66 = tail call ptr @rtvec_alloc(i32 noundef %65) #9
  %67 = load i32, ptr %2, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 33
  br i1 %69, label %96, label %70

70:                                               ; preds = %57
  %71 = icmp ugt i8 %62, %63
  br i1 %71, label %131, label %72

72:                                               ; preds = %70
  %73 = tail call i8 @llvm.umax.i8(i8 %64, i8 1)
  %74 = zext i8 %73 to i64
  %75 = add nuw nsw i64 %74, 1
  %76 = and i64 %75, 510
  %77 = add nsw i64 %74, -1
  %78 = insertelement <2 x i64> poison, i64 %77, i64 0
  %79 = shufflevector <2 x i64> %78, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %80

80:                                               ; preds = %92, %72
  %81 = phi i64 [ 0, %72 ], [ %93, %92 ]
  %82 = phi <2 x i64> [ <i64 0, i64 1>, %72 ], [ %94, %92 ]
  %83 = icmp ule <2 x i64> %82, %79
  %84 = extractelement <2 x i1> %83, i64 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %81
  store ptr %2, ptr %86, align 8, !tbaa !24
  br label %87

87:                                               ; preds = %85, %80
  %88 = extractelement <2 x i1> %83, i64 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = or disjoint i64 %81, 1
  %91 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %90
  store ptr %2, ptr %91, align 8, !tbaa !24
  br label %92

92:                                               ; preds = %89, %87
  %93 = add i64 %81, 2
  %94 = add <2 x i64> %82, <i64 2, i64 2>
  %95 = icmp eq i64 %93, %76
  br i1 %95, label %131, label %80, !llvm.loop !38

96:                                               ; preds = %57
  %97 = lshr i32 %67, 16
  %98 = and i32 %97, 255
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !5
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !5
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %99
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = udiv i8 %106, %104
  %108 = zext i8 %107 to i32
  %109 = icmp ult i8 %107, %64
  br i1 %109, label %111, label %110

110:                                              ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1099, ptr noundef nonnull @.str.1) #9
  br label %111

111:                                              ; preds = %96, %110
  %112 = urem i8 %64, %107
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1100, ptr noundef nonnull @.str.1) #9
  br label %115

115:                                              ; preds = %111, %114
  %116 = icmp ugt i8 %62, %63
  br i1 %116, label %131, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %119 = zext i8 %64 to i64
  br label %120

120:                                              ; preds = %117, %120
  %121 = phi i64 [ 0, %117 ], [ %129, %120 ]
  %122 = load ptr, ptr %118, align 8, !tbaa !5
  %123 = trunc i64 %121 to i32
  %124 = urem i32 %123, %108
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds %struct.rtvec_def, ptr %122, i64 0, i32 1, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !24
  %128 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %121
  store ptr %127, ptr %128, align 8, !tbaa !24
  %129 = add nuw nsw i64 %121, 1
  %130 = icmp ult i64 %129, %119
  br i1 %130, label %120, label %131, !llvm.loop !41

131:                                              ; preds = %92, %120, %70, %115
  %132 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %66) #9
  br label %717

133:                                              ; preds = %4, %54
  %134 = icmp ult i8 %28, 6
  br i1 %134, label %135, label %182

135:                                              ; preds = %133
  %136 = load i32, ptr %2, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 33
  br i1 %138, label %139, label %182

139:                                              ; preds = %135
  %140 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %141 = load i8, ptr %140, align 1, !tbaa !5
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !5
  %145 = load i8, ptr %21, align 1, !tbaa !5
  %146 = udiv i8 %145, %144
  %147 = zext i8 %146 to i32
  %148 = lshr i32 %136, 16
  %149 = and i32 %148, 255
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  %156 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %150
  %157 = load i8, ptr %156, align 1, !tbaa !5
  %158 = udiv i8 %157, %155
  %159 = tail call ptr @rtvec_alloc(i32 noundef %147) #9
  %160 = icmp eq i8 %158, %146
  br i1 %160, label %162, label %161

161:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1118, ptr noundef nonnull @.str.1) #9
  br label %162

162:                                              ; preds = %139, %161
  %163 = icmp ugt i8 %144, %145
  br i1 %163, label %180, label %164

164:                                              ; preds = %162
  %165 = zext i8 %141 to i32
  %166 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %167 = zext i8 %152 to i32
  %168 = zext i8 %146 to i64
  br label %169

169:                                              ; preds = %164, %176
  %170 = phi i64 [ 0, %164 ], [ %178, %176 ]
  %171 = load ptr, ptr %166, align 8, !tbaa !5
  %172 = getelementptr inbounds %struct.rtvec_def, ptr %171, i64 0, i32 1, i64 %170
  %173 = load ptr, ptr %172, align 8, !tbaa !24
  %174 = tail call ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %165, ptr noundef %173, i32 noundef %167) #8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %717, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.rtvec_def, ptr %159, i64 0, i32 1, i64 %170
  store ptr %174, ptr %177, align 8, !tbaa !24
  %178 = add nuw nsw i64 %170, 1
  %179 = icmp ult i64 %178, %168
  br i1 %179, label %169, label %180, !llvm.loop !42

180:                                              ; preds = %176, %162
  %181 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %159) #9
  br label %717

182:                                              ; preds = %133, %135
  %183 = load i32, ptr %2, align 8
  switch i32 %0, label %237 [
    i32 103, label %184
    i32 105, label %202
  ]

184:                                              ; preds = %182
  %185 = and i32 %183, 16711680
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %237

187:                                              ; preds = %184
  %188 = trunc i32 %183 to i16
  switch i16 %188, label %237 [
    i16 32, label %189
    i16 30, label %189
  ]

189:                                              ; preds = %187, %187
  %190 = and i32 %183, 65535
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %191 = icmp eq i32 %190, 30
  %192 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !5
  br i1 %191, label %194, label %196

194:                                              ; preds = %189
  %195 = ashr i64 %193, 63
  br label %199

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load i64, ptr %197, align 8, !tbaa !5
  br label %199

199:                                              ; preds = %196, %194
  %200 = phi i64 [ %195, %194 ], [ %198, %196 ]
  call void @real_from_integer(ptr noundef nonnull %5, i32 noundef %1, i64 noundef %193, i64 noundef %200, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %6, i32 noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  %201 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %5, i32 noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %717

202:                                              ; preds = %182
  %203 = and i32 %183, 16711680
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %237

205:                                              ; preds = %202
  %206 = trunc i32 %183 to i16
  switch i16 %206, label %237 [
    i16 32, label %207
    i16 30, label %207
  ]

207:                                              ; preds = %205, %205
  %208 = and i32 %183, 65535
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  %209 = icmp eq i32 %208, 30
  %210 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !5
  br i1 %209, label %212, label %214

212:                                              ; preds = %207
  %213 = ashr i64 %211, 63
  br label %217

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %216 = load i64, ptr %215, align 8, !tbaa !5
  br label %217

217:                                              ; preds = %214, %212
  %218 = phi i64 [ %213, %212 ], [ %216, %214 ]
  %219 = icmp eq i32 %3, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = icmp slt i64 %218, 0
  br i1 %221, label %235, label %231

222:                                              ; preds = %217
  %223 = zext i32 %3 to i64
  %224 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !5
  %226 = icmp ugt i8 %225, 15
  br i1 %226, label %231, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %223
  %229 = load i64, ptr %228, align 8, !tbaa !28
  %230 = and i64 %229, %211
  br label %231

231:                                              ; preds = %227, %222, %220
  %232 = phi i64 [ %218, %220 ], [ %218, %222 ], [ 0, %227 ]
  %233 = phi i64 [ %211, %220 ], [ %211, %222 ], [ %230, %227 ]
  call void @real_from_integer(ptr noundef nonnull %7, i32 noundef %1, i64 noundef %233, i64 noundef %232, i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %8, i32 noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  %234 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %7, i32 noundef %1) #9
  br label %235

235:                                              ; preds = %220, %231
  %236 = phi ptr [ %234, %231 ], [ null, %220 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  br label %717

237:                                              ; preds = %182, %184, %187, %205, %202
  %238 = and i32 %183, 65535
  %239 = icmp eq i32 %238, 30
  %240 = icmp ult i8 %22, 9
  %241 = select i1 %239, i1 %240, i1 false
  %242 = icmp ne i8 %22, 0
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %244, label %376

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %246 = load i64, ptr %245, align 8, !tbaa !5
  switch i32 %0, label %372 [
    i32 64, label %251
    i32 51, label %253
    i32 111, label %255
    i32 114, label %257
    i32 115, label %266
    i32 116, label %277
    i32 117, label %291
    i32 118, label %303
    i32 113, label %247
    i32 100, label %373
    i32 99, label %327
    i32 98, label %346
    i32 112, label %717
    i32 101, label %717
    i32 102, label %717
    i32 136, label %717
    i32 137, label %717
    i32 130, label %717
    i32 131, label %717
    i32 132, label %717
  ]

247:                                              ; preds = %244
  %248 = add nsw i32 %24, -8
  %249 = zext nneg i32 %24 to i64
  %250 = sext i32 %248 to i64
  br label %317

251:                                              ; preds = %244
  %252 = xor i64 %246, -1
  br label %373

253:                                              ; preds = %244
  %254 = sub nsw i64 0, %246
  br label %373

255:                                              ; preds = %244
  %256 = tail call i64 @llvm.abs.i64(i64 %246, i1 true)
  br label %373

257:                                              ; preds = %244
  %258 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %259 = load i64, ptr %258, align 8, !tbaa !28
  %260 = and i64 %259, %246
  %261 = sub nsw i64 0, %260
  %262 = and i64 %260, %261
  %263 = tail call i32 @exact_log2(i64 noundef %262) #9
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  br label %373

266:                                              ; preds = %244
  %267 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %268 = load i64, ptr %267, align 8, !tbaa !28
  %269 = and i64 %268, %246
  %270 = load i8, ptr %21, align 1, !tbaa !5
  %271 = zext i8 %270 to i32
  %272 = shl nuw nsw i32 %271, 3
  %273 = tail call i32 @floor_log2(i64 noundef %269) #9
  %274 = xor i32 %273, -1
  %275 = add i32 %272, %274
  %276 = sext i32 %275 to i64
  br label %373

277:                                              ; preds = %244
  %278 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %279 = load i64, ptr %278, align 8, !tbaa !28
  %280 = and i64 %279, %246
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %277
  %283 = load i8, ptr %21, align 1, !tbaa !5
  %284 = zext i8 %283 to i64
  %285 = shl nuw nsw i64 %284, 3
  br label %373

286:                                              ; preds = %277
  %287 = sub nsw i64 0, %280
  %288 = and i64 %280, %287
  %289 = tail call i32 @exact_log2(i64 noundef %288) #9
  %290 = sext i32 %289 to i64
  br label %373

291:                                              ; preds = %244
  %292 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %293 = load i64, ptr %292, align 8, !tbaa !28
  %294 = and i64 %293, %246
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %373, label %296

296:                                              ; preds = %291, %296
  %297 = phi i64 [ %299, %296 ], [ 0, %291 ]
  %298 = phi i64 [ %301, %296 ], [ %294, %291 ]
  %299 = add nuw nsw i64 %297, 1
  %300 = add nsw i64 %298, -1
  %301 = and i64 %300, %298
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %373, label %296, !llvm.loop !44

303:                                              ; preds = %244
  %304 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %305 = load i64, ptr %304, align 8, !tbaa !28
  %306 = and i64 %305, %246
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %373, label %308

308:                                              ; preds = %303, %308
  %309 = phi i64 [ %311, %308 ], [ 0, %303 ]
  %310 = phi i64 [ %313, %308 ], [ %306, %303 ]
  %311 = add nuw nsw i64 %309, 1
  %312 = add nsw i64 %310, -1
  %313 = and i64 %312, %310
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %308, !llvm.loop !45

315:                                              ; preds = %308
  %316 = and i64 %311, 1
  br label %373

317:                                              ; preds = %247, %317
  %318 = phi i64 [ 0, %247 ], [ %325, %317 ]
  %319 = phi i64 [ 0, %247 ], [ %324, %317 ]
  %320 = sub nsw i64 %250, %318
  %321 = ashr i64 %246, %318
  %322 = and i64 %321, 255
  %323 = shl i64 %322, %320
  %324 = or i64 %323, %319
  %325 = add nuw nsw i64 %318, 8
  %326 = icmp ult i64 %325, %249
  br i1 %326, label %317, label %373, !llvm.loop !46

327:                                              ; preds = %244
  %328 = icmp eq i32 %3, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %327
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1264, ptr noundef nonnull @.str.1) #9
  br label %330

330:                                              ; preds = %327, %329
  %331 = zext i32 %3 to i64
  %332 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !5
  %334 = zext i8 %333 to i64
  %335 = shl nuw nsw i64 %334, 3
  %336 = icmp eq i8 %333, 8
  br i1 %336, label %337, label %340

337:                                              ; preds = %330
  %338 = icmp eq i8 %22, 8
  br i1 %338, label %373, label %339

339:                                              ; preds = %337
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.1) #9
  br label %373

340:                                              ; preds = %330
  %341 = icmp ult i8 %333, 8
  br i1 %341, label %342, label %717

342:                                              ; preds = %340
  %343 = shl nsw i64 -1, %335
  %344 = xor i64 %343, -1
  %345 = and i64 %246, %344
  br label %373

346:                                              ; preds = %244
  %347 = icmp eq i32 %3, 0
  %348 = select i1 %347, i32 %1, i32 %3
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !5
  %352 = zext i8 %351 to i32
  %353 = shl nuw nsw i32 %352, 3
  %354 = icmp eq i8 %351, 8
  br i1 %354, label %355, label %358

355:                                              ; preds = %346
  %356 = icmp eq i8 %22, 8
  br i1 %356, label %373, label %357

357:                                              ; preds = %355
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1287, ptr noundef nonnull @.str.1) #9
  br label %373

358:                                              ; preds = %346
  %359 = icmp ult i8 %351, 8
  br i1 %359, label %360, label %717

360:                                              ; preds = %358
  %361 = zext nneg i32 %353 to i64
  %362 = shl nsw i64 -1, %361
  %363 = xor i64 %362, -1
  %364 = and i64 %246, %363
  %365 = add nsw i32 %353, -1
  %366 = zext nneg i32 %365 to i64
  %367 = shl nuw i64 1, %366
  %368 = and i64 %364, %367
  %369 = icmp eq i64 %368, 0
  %370 = select i1 %369, i64 0, i64 %362
  %371 = add nsw i64 %370, %364
  br label %373

372:                                              ; preds = %244
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1313, ptr noundef nonnull @.str.1) #9
  unreachable

373:                                              ; preds = %317, %296, %303, %315, %291, %360, %357, %355, %339, %337, %244, %342, %282, %286, %266, %257, %255, %253, %251
  %374 = phi i64 [ %345, %342 ], [ %285, %282 ], [ %290, %286 ], [ %276, %266 ], [ %265, %257 ], [ %256, %255 ], [ %254, %253 ], [ %252, %251 ], [ %246, %244 ], [ %246, %337 ], [ %246, %339 ], [ %246, %355 ], [ %246, %357 ], [ %371, %360 ], [ 0, %291 ], [ 0, %303 ], [ %316, %315 ], [ %299, %296 ], [ %324, %317 ]
  %375 = tail call ptr @gen_int_mode(i64 noundef %374, i32 noundef %1) #9
  br label %717

376:                                              ; preds = %237
  %377 = and i32 %183, 16711680
  %378 = icmp eq i32 %377, 0
  %379 = icmp ult i8 %22, 17
  %380 = select i1 %378, i1 %379, i1 false
  br i1 %380, label %381, label %584

381:                                              ; preds = %376
  %382 = trunc i32 %183 to i16
  switch i16 %382, label %717 [
    i16 32, label %383
    i16 30, label %383
  ]

383:                                              ; preds = %381, %381
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %384 = icmp eq i32 %238, 32
  %385 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %386 = load i64, ptr %385, align 8, !tbaa !5
  br i1 %384, label %387, label %390

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %389 = load i64, ptr %388, align 8, !tbaa !5
  br label %392

390:                                              ; preds = %383
  %391 = ashr i64 %386, 63
  br label %392

392:                                              ; preds = %390, %387
  %393 = phi i64 [ %389, %387 ], [ %391, %390 ]
  switch i32 %0, label %582 [
    i32 64, label %394
    i32 51, label %397
    i32 111, label %399
    i32 114, label %404
    i32 115, label %421
    i32 116, label %444
    i32 117, label %463
    i32 118, label %482
    i32 113, label %504
    i32 100, label %534
    i32 99, label %535
    i32 98, label %547
  ]

394:                                              ; preds = %392
  %395 = xor i64 %386, -1
  store i64 %395, ptr %9, align 8, !tbaa !28
  %396 = xor i64 %393, -1
  store i64 %396, ptr %10, align 8, !tbaa !28
  br label %578

397:                                              ; preds = %392
  %398 = call i32 @neg_double(i64 noundef %386, i64 noundef %393, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  br label %578

399:                                              ; preds = %392
  %400 = icmp slt i64 %393, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %399
  %402 = call i32 @neg_double(i64 noundef %386, i64 noundef %393, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  br label %578

403:                                              ; preds = %399
  store i64 %386, ptr %9, align 8, !tbaa !28
  store i64 %393, ptr %10, align 8, !tbaa !28
  br label %578

404:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !28
  %405 = icmp eq i64 %386, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %404
  %407 = icmp eq i64 %393, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %406
  store i64 0, ptr %9, align 8, !tbaa !28
  br label %578

409:                                              ; preds = %406
  %410 = sub nsw i64 0, %393
  %411 = and i64 %393, %410
  %412 = tail call i32 @exact_log2(i64 noundef %411) #9
  %413 = add nsw i32 %412, 65
  %414 = sext i32 %413 to i64
  store i64 %414, ptr %9, align 8, !tbaa !28
  br label %578

415:                                              ; preds = %404
  %416 = sub i64 0, %386
  %417 = and i64 %386, %416
  %418 = tail call i32 @exact_log2(i64 noundef %417) #9
  %419 = add nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  store i64 %420, ptr %9, align 8, !tbaa !28
  br label %578

421:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !28
  %422 = icmp eq i64 %393, 0
  br i1 %422, label %431, label %423

423:                                              ; preds = %421
  %424 = load i8, ptr %21, align 1, !tbaa !5
  %425 = zext i8 %424 to i32
  %426 = shl nuw nsw i32 %425, 3
  %427 = tail call i32 @floor_log2(i64 noundef %393) #9
  %428 = sub i32 %426, %427
  %429 = add i32 %428, -65
  %430 = sext i32 %429 to i64
  store i64 %430, ptr %9, align 8, !tbaa !28
  br label %578

431:                                              ; preds = %421
  %432 = icmp eq i64 %386, 0
  %433 = load i8, ptr %21, align 1, !tbaa !5
  br i1 %432, label %441, label %434

434:                                              ; preds = %431
  %435 = zext i8 %433 to i32
  %436 = shl nuw nsw i32 %435, 3
  %437 = tail call i32 @floor_log2(i64 noundef %386) #9
  %438 = xor i32 %437, -1
  %439 = add i32 %436, %438
  %440 = sext i32 %439 to i64
  store i64 %440, ptr %9, align 8, !tbaa !28
  br label %578

441:                                              ; preds = %431
  %442 = zext i8 %433 to i64
  %443 = shl nuw nsw i64 %442, 3
  store i64 %443, ptr %9, align 8, !tbaa !28
  br label %578

444:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !28
  %445 = icmp eq i64 %386, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %444
  %447 = sub i64 0, %386
  %448 = and i64 %386, %447
  %449 = tail call i32 @exact_log2(i64 noundef %448) #9
  %450 = sext i32 %449 to i64
  store i64 %450, ptr %9, align 8, !tbaa !28
  br label %578

451:                                              ; preds = %444
  %452 = icmp eq i64 %393, 0
  br i1 %452, label %459, label %453

453:                                              ; preds = %451
  %454 = sub nsw i64 0, %393
  %455 = and i64 %393, %454
  %456 = tail call i32 @exact_log2(i64 noundef %455) #9
  %457 = add nsw i32 %456, 64
  %458 = sext i32 %457 to i64
  store i64 %458, ptr %9, align 8, !tbaa !28
  br label %578

459:                                              ; preds = %451
  %460 = load i8, ptr %21, align 1, !tbaa !5
  %461 = zext i8 %460 to i64
  %462 = shl nuw nsw i64 %461, 3
  store i64 %462, ptr %9, align 8, !tbaa !28
  br label %578

463:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !28
  %464 = icmp eq i64 %386, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %468, %463
  %466 = phi i64 [ 0, %463 ], [ %471, %468 ]
  %467 = icmp eq i64 %393, 0
  br i1 %467, label %573, label %475

468:                                              ; preds = %463, %468
  %469 = phi i64 [ %473, %468 ], [ %386, %463 ]
  %470 = phi i64 [ %471, %468 ], [ 0, %463 ]
  %471 = add i64 %470, 1
  %472 = add i64 %469, -1
  %473 = and i64 %472, %469
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %465, label %468, !llvm.loop !47

475:                                              ; preds = %465, %475
  %476 = phi i64 [ %480, %475 ], [ %393, %465 ]
  %477 = phi i64 [ %478, %475 ], [ %466, %465 ]
  %478 = add i64 %477, 1
  %479 = add nsw i64 %476, -1
  %480 = and i64 %479, %476
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %573, label %475, !llvm.loop !48

482:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !28
  %483 = icmp eq i64 %386, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %487, %482
  %485 = phi i64 [ 0, %482 ], [ %490, %487 ]
  %486 = icmp eq i64 %393, 0
  br i1 %486, label %501, label %494

487:                                              ; preds = %482, %487
  %488 = phi i64 [ %492, %487 ], [ %386, %482 ]
  %489 = phi i64 [ %490, %487 ], [ 0, %482 ]
  %490 = add i64 %489, 1
  %491 = add i64 %488, -1
  %492 = and i64 %491, %488
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %484, label %487, !llvm.loop !49

494:                                              ; preds = %484, %494
  %495 = phi i64 [ %499, %494 ], [ %393, %484 ]
  %496 = phi i64 [ %497, %494 ], [ %485, %484 ]
  %497 = add i64 %496, 1
  %498 = add nsw i64 %495, -1
  %499 = and i64 %498, %495
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %501, label %494, !llvm.loop !50

501:                                              ; preds = %494, %484
  %502 = phi i64 [ %485, %484 ], [ %497, %494 ]
  %503 = and i64 %502, 1
  store i64 %503, ptr %9, align 8, !tbaa !28
  br label %578

504:                                              ; preds = %392
  %505 = icmp eq i8 %22, 0
  br i1 %505, label %575, label %506

506:                                              ; preds = %504
  %507 = zext nneg i32 %24 to i64
  br label %508

508:                                              ; preds = %506, %529
  %509 = phi i64 [ 0, %506 ], [ %532, %529 ]
  %510 = phi i64 [ 0, %506 ], [ %531, %529 ]
  %511 = phi i64 [ 0, %506 ], [ %530, %529 ]
  %512 = sub nsw i64 %507, %509
  %513 = add nsw i64 %512, -8
  %514 = icmp ult i64 %509, 64
  %515 = lshr i64 %386, %509
  %516 = add nsw i64 %509, -64
  %517 = ashr i64 %393, %516
  %518 = select i1 %514, i64 %515, i64 %517
  %519 = and i64 %518, 255
  %520 = and i64 %513, 4294967232
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %508
  %523 = shl nuw i64 %519, %513
  %524 = or i64 %511, %523
  br label %529

525:                                              ; preds = %508
  %526 = add nsw i64 %512, -72
  %527 = shl i64 %519, %526
  %528 = or i64 %510, %527
  br label %529

529:                                              ; preds = %525, %522
  %530 = phi i64 [ %511, %525 ], [ %524, %522 ]
  %531 = phi i64 [ %528, %525 ], [ %510, %522 ]
  %532 = add nuw nsw i64 %509, 8
  %533 = icmp ult i64 %532, %507
  br i1 %533, label %508, label %575, !llvm.loop !51

534:                                              ; preds = %392
  store i64 %386, ptr %9, align 8, !tbaa !28
  store i64 %393, ptr %10, align 8, !tbaa !28
  br label %578

535:                                              ; preds = %392
  %536 = icmp eq i32 %3, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %535
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1435, ptr noundef nonnull @.str.1) #9
  br label %538

538:                                              ; preds = %535, %537
  %539 = zext i32 %3 to i64
  %540 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %539
  %541 = load i8, ptr %540, align 1, !tbaa !5
  %542 = icmp ugt i8 %541, 8
  br i1 %542, label %582, label %543

543:                                              ; preds = %538
  store i64 0, ptr %10, align 8, !tbaa !28
  %544 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %539
  %545 = load i64, ptr %544, align 8, !tbaa !28
  %546 = and i64 %545, %386
  store i64 %546, ptr %9, align 8, !tbaa !28
  br label %578

547:                                              ; preds = %392
  %548 = icmp eq i32 %3, 0
  br i1 %548, label %582, label %549

549:                                              ; preds = %547
  %550 = zext i32 %3 to i64
  %551 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %550
  %552 = load i8, ptr %551, align 1, !tbaa !5
  %553 = icmp ugt i8 %552, 8
  br i1 %553, label %582, label %554

554:                                              ; preds = %549
  %555 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %550
  %556 = load i64, ptr %555, align 8, !tbaa !28
  %557 = and i64 %556, %386
  store i64 %557, ptr %9, align 8, !tbaa !28
  %558 = icmp eq i8 %552, 8
  br i1 %558, label %570, label %559

559:                                              ; preds = %554
  %560 = shl nuw nsw i8 %552, 3
  %561 = zext nneg i8 %560 to i64
  %562 = add nuw nsw i64 %561, 4294967295
  %563 = and i64 %562, 4294967295
  %564 = shl nuw i64 1, %563
  %565 = and i64 %557, %564
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %570, label %567

567:                                              ; preds = %559
  %568 = shl nsw i64 -1, %561
  %569 = add i64 %557, %568
  store i64 %569, ptr %9, align 8, !tbaa !28
  br label %570

570:                                              ; preds = %567, %559, %554
  %571 = phi i64 [ %569, %567 ], [ %557, %559 ], [ %557, %554 ]
  %572 = ashr i64 %571, 63
  store i64 %572, ptr %10, align 8, !tbaa !28
  br label %578

573:                                              ; preds = %475, %465
  %574 = phi i64 [ %466, %465 ], [ %478, %475 ]
  store i64 %574, ptr %9, align 8, !tbaa !28
  br label %578

575:                                              ; preds = %529, %504
  %576 = phi i64 [ 0, %504 ], [ %530, %529 ]
  %577 = phi i64 [ 0, %504 ], [ %531, %529 ]
  store i64 %577, ptr %10, align 8, !tbaa !28
  store i64 %576, ptr %9, align 8, !tbaa !28
  br label %578

578:                                              ; preds = %575, %573, %446, %459, %453, %423, %441, %434, %415, %409, %408, %401, %403, %570, %543, %534, %501, %397, %394
  %579 = load i64, ptr %9, align 8, !tbaa !28
  %580 = load i64, ptr %10, align 8, !tbaa !28
  %581 = call ptr @immed_double_const(i64 noundef %579, i64 noundef %580, i32 noundef %1) #9
  br label %582

582:                                              ; preds = %392, %547, %549, %538, %578
  %583 = phi ptr [ %581, %578 ], [ null, %538 ], [ null, %549 ], [ null, %547 ], [ null, %392 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  br label %717

584:                                              ; preds = %376
  %585 = icmp eq i32 %238, 32
  br i1 %585, label %586, label %717

586:                                              ; preds = %584
  %587 = and i8 %27, -2
  %588 = icmp eq i8 %587, 8
  br i1 %588, label %589, label %632

589:                                              ; preds = %586
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #10
  %590 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %590, i64 32, i1 false), !tbaa.struct !43
  switch i32 %0, label %627 [
    i32 112, label %591
    i32 111, label %610
    i32 51, label %611
    i32 102, label %612
    i32 101, label %628
    i32 104, label %613
    i32 64, label %615
  ]

591:                                              ; preds = %589
  %592 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !8
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %608, label %594

594:                                              ; preds = %591
  %595 = add i32 %1, -38
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %596
  %598 = load ptr, ptr %597, align 8, !tbaa !24
  %599 = getelementptr inbounds %struct.real_format, ptr %598, i64 0, i32 11
  %600 = load i8, ptr %599, align 2, !tbaa !29
  %601 = icmp eq i8 %600, 0
  %602 = load i32, ptr @flag_finite_math_only, align 4
  %603 = icmp ne i32 %602, 0
  %604 = select i1 %601, i1 true, i1 %603
  br i1 %604, label %608, label %605

605:                                              ; preds = %594
  %606 = call zeroext i8 @real_isnan(ptr noundef nonnull %11) #9
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %608, label %630

608:                                              ; preds = %605, %594, %591
  %609 = call zeroext i8 @real_sqrt(ptr noundef nonnull %12, i32 noundef %1, ptr noundef nonnull %11) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !43
  br label %628

610:                                              ; preds = %589
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #10
  call void @real_arithmetic2(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %13, i32 noundef 82, ptr noundef nonnull %11, ptr noundef null) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #10
  br label %628

611:                                              ; preds = %589
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #10
  call void @real_arithmetic2(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %14, i32 noundef 79, ptr noundef nonnull %11, ptr noundef null) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #10
  br label %628

612:                                              ; preds = %589
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %11, i32 noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %590) #9
  br label %628

613:                                              ; preds = %589
  %614 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %11, i32 noundef 77, ptr noundef nonnull %11, ptr noundef null) #9
  br label %628

615:                                              ; preds = %589
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #10
  %616 = lshr i32 %183, 16
  %617 = and i32 %616, 255
  %618 = call i64 @real_to_target(ptr noundef nonnull %15, ptr noundef nonnull %11, i32 noundef %617) #9
  br label %619

619:                                              ; preds = %619, %615
  %620 = phi i64 [ 0, %615 ], [ %624, %619 ]
  %621 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 %620
  %622 = load <2 x i64>, ptr %621, align 16, !tbaa !28
  %623 = xor <2 x i64> %622, <i64 -1, i64 -1>
  store <2 x i64> %623, ptr %621, align 16, !tbaa !28
  %624 = add nuw i64 %620, 2
  %625 = icmp eq i64 %624, 4
  br i1 %625, label %626, label %619, !llvm.loop !52

626:                                              ; preds = %619
  call void @real_from_target(ptr noundef nonnull %11, ptr noundef nonnull %15, i32 noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #10
  br label %628

627:                                              ; preds = %589
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1511, ptr noundef nonnull @.str.1) #9
  br label %628

628:                                              ; preds = %627, %626, %613, %589, %612, %611, %610, %608
  %629 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %11, i32 noundef %1) #9
  br label %630

630:                                              ; preds = %605, %628
  %631 = phi ptr [ %629, %628 ], [ null, %605 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  br label %717

632:                                              ; preds = %586
  %633 = lshr i32 %183, 16
  %634 = and i32 %633, 255
  %635 = zext nneg i32 %634 to i64
  %636 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !5
  %638 = and i8 %637, -2
  %639 = icmp eq i8 %638, 8
  br i1 %639, label %640, label %717

640:                                              ; preds = %632
  %641 = icmp eq i8 %27, 2
  %642 = select i1 %641, i1 %379, i1 false
  %643 = select i1 %642, i1 %242, i1 false
  br i1 %643, label %644, label %717

644:                                              ; preds = %640
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #10
  %645 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %645, i64 32, i1 false), !tbaa.struct !43
  switch i32 %0, label %710 [
    i32 104, label %646
    i32 106, label %682
  ]

646:                                              ; preds = %644
  %647 = call zeroext i8 @real_isnan(ptr noundef nonnull %18) #9
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %651, label %649

649:                                              ; preds = %646
  %650 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %715

651:                                              ; preds = %646
  %652 = icmp ugt i8 %22, 8
  br i1 %652, label %653, label %658

653:                                              ; preds = %651
  %654 = add nsw i32 %24, -65
  %655 = zext nneg i32 %654 to i64
  %656 = shl nsw i64 -1, %655
  %657 = xor i64 %656, -1
  br label %663

658:                                              ; preds = %651
  %659 = add nsw i32 %24, -1
  %660 = zext nneg i32 %659 to i64
  %661 = shl nsw i64 -1, %660
  %662 = xor i64 %661, -1
  br label %663

663:                                              ; preds = %658, %653
  %664 = phi i64 [ %657, %653 ], [ 0, %658 ]
  %665 = phi i64 [ -1, %653 ], [ %662, %658 ]
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %665, i64 noundef %664, i32 noundef 0) #9
  %666 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %19, ptr noundef nonnull %18) #9
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %669, label %668

668:                                              ; preds = %663
  store i64 %664, ptr %16, align 8, !tbaa !28
  store i64 %665, ptr %17, align 8, !tbaa !28
  br label %711

669:                                              ; preds = %663
  %670 = add nsw i32 %24, -65
  %671 = zext nneg i32 %670 to i64
  %672 = shl nsw i64 -1, %671
  %673 = add nsw i32 %24, -1
  %674 = zext nneg i32 %673 to i64
  %675 = shl nsw i64 -1, %674
  %676 = select i1 %652, i64 %672, i64 -1
  %677 = select i1 %652, i64 0, i64 %675
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %677, i64 noundef %676, i32 noundef 0) #9
  %678 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %18, ptr noundef nonnull %19) #9
  %679 = icmp eq i8 %678, 0
  br i1 %679, label %681, label %680

680:                                              ; preds = %669
  store i64 %676, ptr %16, align 8, !tbaa !28
  store i64 %677, ptr %17, align 8, !tbaa !28
  br label %711

681:                                              ; preds = %669
  call void @real_to_integer2(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18) #9
  br label %711

682:                                              ; preds = %644
  %683 = call zeroext i8 @real_isnan(ptr noundef nonnull %18) #9
  %684 = icmp eq i8 %683, 0
  br i1 %684, label %685, label %688

685:                                              ; preds = %682
  %686 = call zeroext i8 @real_isneg(ptr noundef nonnull %18) #9
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %690, label %688

688:                                              ; preds = %685, %682
  %689 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %715

690:                                              ; preds = %685
  %691 = icmp eq i8 %22, 16
  br i1 %691, label %703, label %692

692:                                              ; preds = %690
  %693 = icmp ugt i8 %22, 7
  br i1 %693, label %694, label %699

694:                                              ; preds = %692
  %695 = add nsw i32 %24, -64
  %696 = zext nneg i32 %695 to i64
  %697 = shl nsw i64 -1, %696
  %698 = xor i64 %697, -1
  br label %703

699:                                              ; preds = %692
  %700 = zext nneg i32 %24 to i64
  %701 = shl nsw i64 -1, %700
  %702 = xor i64 %701, -1
  br label %703

703:                                              ; preds = %690, %694, %699
  %704 = phi i64 [ %698, %694 ], [ 0, %699 ], [ -1, %690 ]
  %705 = phi i64 [ -1, %694 ], [ %702, %699 ], [ -1, %690 ]
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %705, i64 noundef %704, i32 noundef 1) #9
  %706 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %19, ptr noundef nonnull %18) #9
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %709, label %708

708:                                              ; preds = %703
  store i64 %704, ptr %16, align 8, !tbaa !28
  store i64 %705, ptr %17, align 8, !tbaa !28
  br label %711

709:                                              ; preds = %703
  call void @real_to_integer2(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18) #9
  br label %711

710:                                              ; preds = %644
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1611, ptr noundef nonnull @.str.1) #9
  br label %711

711:                                              ; preds = %710, %709, %708, %681, %680, %668
  %712 = load i64, ptr %17, align 8, !tbaa !28
  %713 = load i64, ptr %16, align 8, !tbaa !28
  %714 = call ptr @immed_double_const(i64 noundef %712, i64 noundef %713, i32 noundef %1) #9
  br label %715

715:                                              ; preds = %711, %688, %649
  %716 = phi ptr [ %714, %711 ], [ %689, %688 ], [ %650, %649 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #10
  br label %717

717:                                              ; preds = %169, %381, %584, %632, %640, %373, %340, %358, %244, %244, %244, %244, %244, %244, %244, %244, %180, %715, %630, %582, %235, %199, %131
  %718 = phi ptr [ %132, %131 ], [ %201, %199 ], [ %236, %235 ], [ %583, %582 ], [ %631, %630 ], [ %716, %715 ], [ %181, %180 ], [ %375, %373 ], [ null, %340 ], [ null, %358 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %632 ], [ null, %640 ], [ null, %584 ], [ null, %381 ], [ null, %169 ]
  ret ptr %718
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_unary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  switch i32 %0, label %857 [
    i32 64, label %4
    i32 51, label %167
    i32 100, label %429
    i32 102, label %528
    i32 101, label %630
    i32 111, label %672
    i32 114, label %719
    i32 117, label %730
    i32 118, label %752
    i32 113, label %774
    i32 103, label %781
    i32 98, label %792
    i32 99, label %837
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 64
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  br label %858

11:                                               ; preds = %4
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %15 = icmp ult i32 %14, 2
  %16 = icmp eq i32 %1, 13
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %2, ptr noundef null) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, ptr %2, align 8
  br label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = tail call ptr @simplify_gen_relational(i32 noundef %19, i32 noundef 13, i32 noundef 0, ptr noundef %25, ptr noundef %27) #8
  br label %858

29:                                               ; preds = %21, %11
  %30 = phi i32 [ %22, %21 ], [ %5, %11 ]
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %60 [
    i16 49, label %32
    i16 51, label %41
    i16 63, label %45
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !24
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %39, i32 noundef %1) #8
  br label %858

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = tail call ptr @plus_constant(ptr noundef %43, i64 noundef -1) #9
  br label %858

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 30
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %48, i32 noundef %1) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, ptr %2, align 8
  br label %60

57:                                               ; preds = %52
  %58 = load ptr, ptr %46, align 8, !tbaa !5
  %59 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %58, ptr noundef nonnull %53) #8
  br label %858

60:                                               ; preds = %55, %29, %32, %45
  %61 = phi i32 [ %56, %55 ], [ %30, %29 ], [ %30, %32 ], [ %30, %45 ]
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 49
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %66 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 30
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %67) #8, !range !53
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %67, i32 noundef %1) #8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, ptr %2, align 8
  br label %82

79:                                               ; preds = %74
  %80 = load ptr, ptr %65, align 8, !tbaa !5
  %81 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %80, ptr noundef nonnull %75) #8
  br label %858

82:                                               ; preds = %77, %71, %64, %60
  %83 = phi i32 [ %78, %77 ], [ %61, %71 ], [ %61, %64 ], [ %61, %60 ]
  %84 = trunc i32 %83 to i16
  switch i16 %84, label %130 [
    i16 65, label %85
    i16 39, label %95
  ]

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !24
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %85
  %91 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %87, i32 noundef %1) #8
  %92 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = tail call ptr @simplify_gen_binary(i32 noundef 66, i32 noundef %1, ptr noundef %91, ptr noundef %93) #8
  br label %858

95:                                               ; preds = %82
  %96 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #9
  %97 = icmp eq i32 %96, 0
  %98 = load i32, ptr %2, align 8
  br i1 %97, label %130, label %99

99:                                               ; preds = %95
  %100 = lshr i32 %98, 16
  %101 = and i32 %100, 255
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !5
  %105 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !5
  %113 = icmp ult i8 %104, %112
  %114 = and i32 %107, 65535
  %115 = icmp eq i32 %114, 65
  %116 = and i1 %113, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %99
  %118 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !24
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %109, ptr noundef %119, i32 noundef %109) #8
  %124 = load ptr, ptr %105, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %109, ptr noundef %123, ptr noundef %126) #9
  %128 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !54
  %129 = tail call ptr %128(i32 noundef %1, ptr noundef %127) #9
  br label %858

130:                                              ; preds = %82, %85, %117, %99, %95
  %131 = phi i32 [ %83, %82 ], [ %83, %85 ], [ %98, %117 ], [ %98, %99 ], [ %98, %95 ]
  %132 = and i32 %131, 65535
  %133 = add nsw i32 %132, -61
  %134 = icmp ult i32 %133, 2
  br i1 %134, label %135, label %857

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = load i32, ptr %137, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %142, ptr noundef nonnull %137, i32 noundef %142) #8
  %144 = load i32, ptr %139, align 8
  %145 = lshr i32 %144, 16
  %146 = and i32 %145, 255
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 %1, i32 %146
  %149 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %148, ptr noundef nonnull %139, i32 noundef %148) #8
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 64
  br i1 %152, label %153, label %159

153:                                              ; preds = %135
  %154 = load i32, ptr %143, align 8
  %155 = and i32 %154, 65535
  %156 = icmp eq i32 %155, 64
  %157 = select i1 %156, ptr %143, ptr %149
  %158 = select i1 %156, ptr %149, ptr %143
  br label %159

159:                                              ; preds = %153, %135
  %160 = phi ptr [ %143, %135 ], [ %157, %153 ]
  %161 = phi ptr [ %149, %135 ], [ %158, %153 ]
  %162 = load i32, ptr %2, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 62
  %165 = select i1 %164, i32 61, i32 62
  %166 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %165, i32 noundef %1, ptr noundef %160, ptr noundef nonnull %161) #9
  br label %858

167:                                              ; preds = %3
  %168 = load i32, ptr %2, align 8
  %169 = trunc i32 %168 to i16
  switch i16 %169, label %330 [
    i16 51, label %170
    i16 49, label %173
    i16 64, label %182
    i16 50, label %186
    i16 52, label %289
    i16 65, label %319
  ]

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  br label %858

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %175 = load ptr, ptr %174, align 8, !tbaa !5
  %176 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !24
  %177 = icmp eq ptr %175, %176
  br i1 %177, label %178, label %233

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %180, i32 noundef %1) #8
  br label %858

182:                                              ; preds = %167
  %183 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !5
  %185 = tail call ptr @plus_constant(ptr noundef %184, i64 noundef 1) #9
  br label %858

186:                                              ; preds = %167
  %187 = zext i32 %1 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !5
  switch i8 %189, label %227 [
    i8 8, label %190
    i8 9, label %190
    i8 11, label %190
    i8 17, label %190
  ]

190:                                              ; preds = %186, %186, %186, %186
  %191 = and i8 %189, -2
  %192 = icmp eq i8 %191, 8
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %187
  %195 = load i8, ptr %194, align 1, !tbaa !5
  %196 = zext i8 %195 to i32
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i32 [ %1, %190 ], [ %196, %193 ]
  %199 = add i32 %198, -38
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !24
  %203 = getelementptr inbounds %struct.real_format, ptr %202, i64 0, i32 14
  %204 = load i8, ptr %203, align 1, !tbaa !31
  %205 = icmp ne i8 %204, 0
  %206 = load i32, ptr @flag_signed_zeros, align 4
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %205, i1 %207, i1 false
  br i1 %208, label %330, label %209

209:                                              ; preds = %197
  switch i8 %189, label %227 [
    i8 8, label %210
    i8 9, label %210
    i8 11, label %210
    i8 17, label %210
  ]

210:                                              ; preds = %209, %209, %209, %209
  br i1 %192, label %215, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %187
  %213 = load i8, ptr %212, align 1, !tbaa !5
  %214 = zext i8 %213 to i32
  br label %215

215:                                              ; preds = %211, %210
  %216 = phi i32 [ %1, %210 ], [ %214, %211 ]
  %217 = add i32 %216, -38
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !24
  %221 = getelementptr inbounds %struct.real_format, ptr %220, i64 0, i32 10
  %222 = load i8, ptr %221, align 1, !tbaa !56
  %223 = icmp ne i8 %222, 0
  %224 = load i32, ptr @flag_rounding_math, align 4
  %225 = icmp ne i32 %224, 0
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %330, label %227

227:                                              ; preds = %186, %209, %215
  %228 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %229 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !5
  %231 = load ptr, ptr %228, align 8, !tbaa !5
  %232 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %230, ptr noundef %231) #8
  br label %858

233:                                              ; preds = %173
  %234 = zext i32 %1 to i64
  %235 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !5
  switch i8 %236, label %274 [
    i8 8, label %237
    i8 9, label %237
    i8 11, label %237
    i8 17, label %237
  ]

237:                                              ; preds = %233, %233, %233, %233
  %238 = and i8 %236, -2
  %239 = icmp eq i8 %238, 8
  br i1 %239, label %244, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %234
  %242 = load i8, ptr %241, align 1, !tbaa !5
  %243 = zext i8 %242 to i32
  br label %244

244:                                              ; preds = %240, %237
  %245 = phi i32 [ %1, %237 ], [ %243, %240 ]
  %246 = add i32 %245, -38
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !24
  %250 = getelementptr inbounds %struct.real_format, ptr %249, i64 0, i32 14
  %251 = load i8, ptr %250, align 1, !tbaa !31
  %252 = icmp ne i8 %251, 0
  %253 = load i32, ptr @flag_signed_zeros, align 4
  %254 = icmp ne i32 %253, 0
  %255 = select i1 %252, i1 %254, i1 false
  br i1 %255, label %330, label %256

256:                                              ; preds = %244
  switch i8 %236, label %274 [
    i8 8, label %257
    i8 9, label %257
    i8 11, label %257
    i8 17, label %257
  ]

257:                                              ; preds = %256, %256, %256, %256
  br i1 %239, label %262, label %258

258:                                              ; preds = %257
  %259 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %234
  %260 = load i8, ptr %259, align 1, !tbaa !5
  %261 = zext i8 %260 to i32
  br label %262

262:                                              ; preds = %258, %257
  %263 = phi i32 [ %1, %257 ], [ %261, %258 ]
  %264 = add i32 %263, -38
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !24
  %268 = getelementptr inbounds %struct.real_format, ptr %267, i64 0, i32 10
  %269 = load i8, ptr %268, align 1, !tbaa !56
  %270 = icmp ne i8 %269, 0
  %271 = load i32, ptr @flag_rounding_math, align 4
  %272 = icmp ne i32 %271, 0
  %273 = select i1 %270, i1 %272, i1 false
  br i1 %273, label %330, label %274

274:                                              ; preds = %233, %256, %262
  %275 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %276 = load i32, ptr %175, align 8
  %277 = trunc i32 %276 to i16
  switch i16 %277, label %284 [
    i16 30, label %278
    i16 32, label %278
  ]

278:                                              ; preds = %274, %274
  %279 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %175, i32 noundef %1) #8
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %275, align 8, !tbaa !5
  %283 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %279, ptr noundef %282) #8
  br label %858

284:                                              ; preds = %274, %278
  %285 = load ptr, ptr %275, align 8, !tbaa !5
  %286 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %285, i32 noundef %1) #8
  %287 = load ptr, ptr %174, align 8, !tbaa !5
  %288 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %286, ptr noundef %287) #8
  br label %858

289:                                              ; preds = %167
  %290 = zext i32 %1 to i64
  %291 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !5
  switch i8 %292, label %312 [
    i8 8, label %293
    i8 9, label %293
    i8 11, label %293
    i8 17, label %293
  ]

293:                                              ; preds = %289, %289, %289, %289
  %294 = and i8 %292, -2
  %295 = icmp eq i8 %294, 8
  br i1 %295, label %300, label %296

296:                                              ; preds = %293
  %297 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %290
  %298 = load i8, ptr %297, align 1, !tbaa !5
  %299 = zext i8 %298 to i32
  br label %300

300:                                              ; preds = %296, %293
  %301 = phi i32 [ %1, %293 ], [ %299, %296 ]
  %302 = add i32 %301, -38
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !24
  %306 = getelementptr inbounds %struct.real_format, ptr %305, i64 0, i32 10
  %307 = load i8, ptr %306, align 1, !tbaa !56
  %308 = icmp ne i8 %307, 0
  %309 = load i32, ptr @flag_rounding_math, align 4
  %310 = icmp ne i32 %309, 0
  %311 = select i1 %308, i1 %310, i1 false
  br i1 %311, label %330, label %312

312:                                              ; preds = %289, %300
  %313 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !5
  %315 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %314, i32 noundef %1) #8
  %316 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !5
  %318 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %315, ptr noundef %317) #8
  br label %858

319:                                              ; preds = %167
  %320 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !5
  %322 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %321, i32 noundef %1) #8
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = load i32, ptr %2, align 8
  br label %330

326:                                              ; preds = %319
  %327 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !5
  %329 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef nonnull %322, ptr noundef %328) #8
  br label %858

330:                                              ; preds = %324, %167, %197, %215, %244, %262, %300
  %331 = phi i32 [ %325, %324 ], [ %168, %167 ], [ %168, %197 ], [ %168, %215 ], [ %168, %244 ], [ %168, %262 ], [ %168, %300 ]
  %332 = trunc i32 %331 to i16
  switch i16 %332, label %390 [
    i16 67, label %333
    i16 68, label %354
    i16 63, label %375
  ]

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %335 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 30
  br i1 %339, label %340, label %390

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %342 = load i64, ptr %341, align 8, !tbaa !5
  %343 = zext i32 %1 to i64
  %344 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !5
  %346 = zext i8 %345 to i32
  %347 = shl nuw nsw i32 %346, 3
  %348 = add nsw i32 %347, -1
  %349 = sext i32 %348 to i64
  %350 = icmp eq i64 %342, %349
  br i1 %350, label %351, label %390

351:                                              ; preds = %340
  %352 = load ptr, ptr %334, align 8, !tbaa !5
  %353 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %1, ptr noundef %352, ptr noundef nonnull %336) #8
  br label %858

354:                                              ; preds = %330
  %355 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %356 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !5
  %358 = load i32, ptr %357, align 8
  %359 = and i32 %358, 65535
  %360 = icmp eq i32 %359, 30
  br i1 %360, label %361, label %390

361:                                              ; preds = %354
  %362 = getelementptr inbounds %struct.rtx_def, ptr %357, i64 0, i32 1
  %363 = load i64, ptr %362, align 8, !tbaa !5
  %364 = zext i32 %1 to i64
  %365 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !5
  %367 = zext i8 %366 to i32
  %368 = shl nuw nsw i32 %367, 3
  %369 = add nsw i32 %368, -1
  %370 = sext i32 %369 to i64
  %371 = icmp eq i64 %363, %370
  br i1 %371, label %372, label %390

372:                                              ; preds = %361
  %373 = load ptr, ptr %355, align 8, !tbaa !5
  %374 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %1, ptr noundef %373, ptr noundef nonnull %357) #8
  br label %858

375:                                              ; preds = %330
  %376 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %377 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %378 = load ptr, ptr %377, align 8, !tbaa !5
  %379 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !24
  %380 = icmp eq ptr %378, %379
  br i1 %380, label %381, label %390

381:                                              ; preds = %375
  %382 = load ptr, ptr %376, align 8, !tbaa !5
  %383 = tail call i64 @nonzero_bits(ptr noundef %382, i32 noundef %1) #9
  %384 = icmp eq i64 %383, 1
  br i1 %384, label %387, label %385

385:                                              ; preds = %381
  %386 = load i32, ptr %2, align 8
  br label %390

387:                                              ; preds = %381
  %388 = load ptr, ptr %376, align 8, !tbaa !5
  %389 = tail call ptr @plus_constant(ptr noundef %388, i64 noundef -1) #9
  br label %858

390:                                              ; preds = %385, %330, %333, %340, %354, %361, %375
  %391 = phi i32 [ %386, %385 ], [ %331, %330 ], [ %331, %333 ], [ %331, %340 ], [ %331, %354 ], [ %331, %361 ], [ %331, %375 ]
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 85
  br i1 %393, label %394, label %857

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !5
  %397 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %398 = icmp eq ptr %396, %397
  br i1 %398, label %399, label %857

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !5
  %402 = load i32, ptr %401, align 8
  %403 = lshr i32 %402, 16
  %404 = and i32 %403, 255
  %405 = zext nneg i32 %404 to i64
  %406 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !5
  %408 = and i8 %407, -2
  %409 = icmp eq i8 %408, 2
  br i1 %409, label %410, label %857

410:                                              ; preds = %399
  %411 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %405
  %412 = load i8, ptr %411, align 1, !tbaa !5
  %413 = zext i8 %412 to i32
  %414 = shl nuw nsw i32 %413, 3
  %415 = add nsw i32 %414, -1
  %416 = sext i32 %415 to i64
  %417 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %416) #9
  %418 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %404, ptr noundef nonnull %401, ptr noundef %417) #8
  %419 = icmp eq i32 %404, %1
  br i1 %419, label %858, label %420

420:                                              ; preds = %410
  %421 = zext i32 %1 to i64
  %422 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !5
  %424 = icmp ugt i8 %423, %412
  br i1 %424, label %425, label %427

425:                                              ; preds = %420
  %426 = tail call ptr @simplify_gen_unary(i32 noundef 98, i32 noundef %1, ptr noundef %418, i32 noundef %404) #8
  br label %858

427:                                              ; preds = %420
  %428 = tail call ptr @simplify_gen_unary(i32 noundef 100, i32 noundef %1, ptr noundef %418, i32 noundef %404) #8
  br label %858

429:                                              ; preds = %3
  %430 = zext i32 %1 to i64
  %431 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %430
  %432 = load i8, ptr %431, align 1, !tbaa !5
  %433 = icmp eq i8 %432, 3
  br i1 %433, label %857, label %434

434:                                              ; preds = %429
  %435 = load i32, ptr %2, align 8
  %436 = and i32 %435, 65535
  %437 = and i32 %435, 65534
  %438 = icmp eq i32 %437, 98
  br i1 %438, label %439, label %446

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !5
  %442 = load i32, ptr %441, align 8
  %443 = lshr i32 %442, 16
  %444 = and i32 %443, 255
  %445 = icmp eq i32 %444, %1
  br i1 %445, label %858, label %446

446:                                              ; preds = %434, %439
  %447 = trunc i32 %435 to i16
  switch i16 %447, label %482 [
    i16 111, label %448
    i16 51, label %448
    i16 39, label %463
  ]

448:                                              ; preds = %446, %446
  %449 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !5
  %451 = load i32, ptr %450, align 8
  %452 = and i32 %451, 65534
  %453 = icmp eq i32 %452, 98
  br i1 %453, label %454, label %482

454:                                              ; preds = %448
  %455 = getelementptr inbounds %struct.rtx_def, ptr %450, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !5
  %457 = load i32, ptr %456, align 8
  %458 = lshr i32 %457, 16
  %459 = and i32 %458, 255
  %460 = icmp eq i32 %459, %1
  br i1 %460, label %461, label %482

461:                                              ; preds = %454
  %462 = tail call ptr @simplify_gen_unary(i32 noundef %436, i32 noundef %1, ptr noundef nonnull %456, i32 noundef %1) #8
  br label %858

463:                                              ; preds = %446
  %464 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !5
  %466 = load i32, ptr %465, align 8
  %467 = and i32 %466, 65535
  %468 = icmp eq i32 %467, 100
  br i1 %468, label %469, label %482

469:                                              ; preds = %463
  %470 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #9
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %469
  %473 = load i32, ptr %2, align 8
  br label %482

474:                                              ; preds = %469
  %475 = load ptr, ptr %464, align 8, !tbaa !5
  %476 = getelementptr inbounds %struct.rtx_def, ptr %475, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !5
  %478 = load i32, ptr %477, align 8
  %479 = lshr i32 %478, 16
  %480 = and i32 %479, 255
  %481 = tail call ptr @simplify_gen_unary(i32 noundef 100, i32 noundef %1, ptr noundef nonnull %477, i32 noundef %480) #8
  br label %858

482:                                              ; preds = %472, %446, %454, %448, %463
  %483 = phi i32 [ %473, %472 ], [ %435, %446 ], [ %435, %454 ], [ %435, %448 ], [ %435, %463 ]
  %484 = lshr i32 %483, 16
  %485 = and i32 %484, 255
  %486 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %2, i32 noundef %485) #9
  %487 = load i32, ptr %2, align 8
  %488 = lshr i32 %487, 16
  %489 = and i32 %488, 255
  %490 = zext nneg i32 %489 to i64
  %491 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %490
  %492 = load i8, ptr %491, align 1, !tbaa !5
  %493 = zext i8 %492 to i32
  %494 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %430
  %495 = load i8, ptr %494, align 1, !tbaa !5
  %496 = zext i8 %495 to i32
  %497 = sub nsw i32 %493, %496
  %498 = shl nsw i32 %497, 3
  %499 = icmp ugt i32 %486, %498
  br i1 %499, label %500, label %512

500:                                              ; preds = %482
  %501 = and i32 %487, 65535
  %502 = icmp eq i32 %501, 68
  br i1 %502, label %503, label %509

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !5
  %506 = load i32, ptr %505, align 8
  %507 = and i32 %506, 65535
  %508 = icmp eq i32 %507, 52
  br i1 %508, label %512, label %509

509:                                              ; preds = %503, %500
  %510 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !54
  %511 = tail call ptr %510(i32 noundef %1, ptr noundef nonnull %2) #9
  br label %858

512:                                              ; preds = %503, %482
  %513 = icmp ult i8 %495, 9
  br i1 %513, label %514, label %857

514:                                              ; preds = %512
  %515 = and i32 %487, 65535
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !8
  %519 = icmp ult i32 %518, 2
  br i1 %519, label %520, label %857

520:                                              ; preds = %514
  %521 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %430
  %522 = load i64, ptr %521, align 8, !tbaa !28
  %523 = and i64 %522, 1
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %857, label %525

525:                                              ; preds = %520
  %526 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !54
  %527 = tail call ptr %526(i32 noundef %1, ptr noundef nonnull %2) #9
  br label %858

528:                                              ; preds = %3
  %529 = zext i32 %1 to i64
  %530 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %529
  %531 = load i8, ptr %530, align 1, !tbaa !5
  %532 = icmp eq i8 %531, 9
  br i1 %532, label %857, label %533

533:                                              ; preds = %528
  %534 = load i32, ptr %2, align 8
  %535 = and i32 %534, 65535
  %536 = icmp eq i32 %535, 101
  br i1 %536, label %537, label %544

537:                                              ; preds = %533
  %538 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %539 = load ptr, ptr %538, align 8, !tbaa !5
  %540 = load i32, ptr %539, align 8
  %541 = lshr i32 %540, 16
  %542 = and i32 %541, 255
  %543 = icmp eq i32 %542, %1
  br i1 %543, label %858, label %555

544:                                              ; preds = %533
  %545 = icmp eq i32 %535, 102
  %546 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %547 = icmp ne i32 %546, 0
  %548 = select i1 %545, i1 %547, i1 false
  br i1 %548, label %549, label %566

549:                                              ; preds = %544
  %550 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !5
  %552 = load i32, ptr %551, align 8
  %553 = lshr i32 %552, 16
  %554 = and i32 %553, 255
  br label %555

555:                                              ; preds = %549, %537
  %556 = phi i32 [ %554, %549 ], [ %542, %537 ]
  %557 = phi ptr [ %551, %549 ], [ %539, %537 ]
  %558 = zext nneg i32 %556 to i64
  %559 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !5
  %561 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %529
  %562 = load i8, ptr %561, align 1, !tbaa !5
  %563 = icmp ugt i8 %560, %562
  %564 = select i1 %563, i32 102, i32 101
  %565 = tail call ptr @simplify_gen_unary(i32 noundef %564, i32 noundef %1, ptr noundef nonnull %557, i32 noundef %1) #8
  br label %858

566:                                              ; preds = %544
  %567 = icmp eq i32 %535, 103
  br i1 %567, label %568, label %602

568:                                              ; preds = %566
  br i1 %547, label %595, label %569

569:                                              ; preds = %568
  %570 = lshr i32 %534, 16
  %571 = and i32 %570, 255
  %572 = zext nneg i32 %571 to i64
  %573 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %572
  %574 = load i8, ptr %573, align 1, !tbaa !5
  %575 = and i8 %574, -2
  %576 = icmp eq i8 %575, 8
  br i1 %576, label %577, label %602

577:                                              ; preds = %569
  %578 = tail call i32 @significand_size(i32 noundef %571) #9
  %579 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %580 = load ptr, ptr %579, align 8, !tbaa !5
  %581 = load i32, ptr %580, align 8
  %582 = lshr i32 %581, 16
  %583 = and i32 %582, 255
  %584 = zext nneg i32 %583 to i64
  %585 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %584
  %586 = load i8, ptr %585, align 1, !tbaa !5
  %587 = zext i8 %586 to i32
  %588 = shl nuw nsw i32 %587, 3
  %589 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %580, i32 noundef %583) #9
  %590 = sub i32 %588, %589
  %591 = icmp ult i32 %578, %590
  br i1 %591, label %592, label %595

592:                                              ; preds = %577
  %593 = load i32, ptr %2, align 8
  %594 = and i32 %593, 65535
  br label %602

595:                                              ; preds = %577, %568
  %596 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !5
  %598 = load i32, ptr %597, align 8
  %599 = lshr i32 %598, 16
  %600 = and i32 %599, 255
  %601 = tail call ptr @simplify_gen_unary(i32 noundef 103, i32 noundef %1, ptr noundef nonnull %597, i32 noundef %600) #8
  br label %858

602:                                              ; preds = %592, %569, %566
  %603 = phi i32 [ %594, %592 ], [ 103, %569 ], [ %535, %566 ]
  %604 = phi i32 [ %593, %592 ], [ %534, %569 ], [ %534, %566 ]
  %605 = trunc i32 %604 to i16
  switch i16 %605, label %857 [
    i16 111, label %606
    i16 51, label %606
    i16 39, label %621
  ]

606:                                              ; preds = %602, %602
  %607 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !5
  %609 = load i32, ptr %608, align 8
  %610 = and i32 %609, 65535
  %611 = icmp eq i32 %610, 101
  br i1 %611, label %612, label %857

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.rtx_def, ptr %608, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !5
  %615 = load i32, ptr %614, align 8
  %616 = lshr i32 %615, 16
  %617 = and i32 %616, 255
  %618 = icmp eq i32 %617, %1
  br i1 %618, label %619, label %857

619:                                              ; preds = %612
  %620 = tail call ptr @simplify_gen_unary(i32 noundef %603, i32 noundef %1, ptr noundef nonnull %614, i32 noundef %1) #8
  br label %858

621:                                              ; preds = %602
  %622 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #9
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %857, label %624

624:                                              ; preds = %621
  %625 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %626 = load ptr, ptr %625, align 8, !tbaa !5
  %627 = load i32, ptr %626, align 8
  %628 = and i32 %627, 65535
  %629 = icmp eq i32 %628, 102
  br i1 %629, label %858, label %857

630:                                              ; preds = %3
  %631 = zext i32 %1 to i64
  %632 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !5
  %634 = icmp eq i8 %633, 9
  br i1 %634, label %857, label %635

635:                                              ; preds = %630
  %636 = load i32, ptr %2, align 8
  %637 = trunc i32 %636 to i16
  switch i16 %637, label %857 [
    i16 101, label %663
    i16 103, label %638
  ]

638:                                              ; preds = %635
  %639 = lshr i32 %636, 16
  %640 = and i32 %639, 255
  %641 = zext nneg i32 %640 to i64
  %642 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !5
  %644 = and i8 %643, -2
  %645 = icmp eq i8 %644, 8
  br i1 %645, label %646, label %857

646:                                              ; preds = %638
  %647 = tail call i32 @significand_size(i32 noundef %640) #9
  %648 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %649 = load ptr, ptr %648, align 8, !tbaa !5
  %650 = load i32, ptr %649, align 8
  %651 = lshr i32 %650, 16
  %652 = and i32 %651, 255
  %653 = zext nneg i32 %652 to i64
  %654 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !5
  %656 = zext i8 %655 to i32
  %657 = shl nuw nsw i32 %656, 3
  %658 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %649, i32 noundef %652) #9
  %659 = sub i32 %657, %658
  %660 = icmp ult i32 %647, %659
  br i1 %660, label %857, label %661

661:                                              ; preds = %646
  %662 = load i32, ptr %2, align 8
  br label %663

663:                                              ; preds = %661, %635
  %664 = phi i32 [ %662, %661 ], [ %636, %635 ]
  %665 = and i32 %664, 65535
  %666 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %667 = load ptr, ptr %666, align 8, !tbaa !5
  %668 = load i32, ptr %667, align 8
  %669 = lshr i32 %668, 16
  %670 = and i32 %669, 255
  %671 = tail call ptr @simplify_gen_unary(i32 noundef %665, i32 noundef %1, ptr noundef nonnull %667, i32 noundef %670) #8
  br label %858

672:                                              ; preds = %3
  %673 = load i32, ptr %2, align 8
  %674 = and i32 %673, 65535
  %675 = icmp eq i32 %674, 51
  br i1 %675, label %676, label %683

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !5
  %679 = load i32, ptr %678, align 8
  %680 = lshr i32 %679, 16
  %681 = and i32 %680, 255
  %682 = tail call ptr @simplify_gen_unary(i32 noundef 111, i32 noundef %1, ptr noundef nonnull %678, i32 noundef %681) #8
  br label %858

683:                                              ; preds = %672
  %684 = lshr i32 %673, 16
  %685 = and i32 %684, 255
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %857, label %687

687:                                              ; preds = %683
  %688 = trunc i32 %673 to i16
  switch i16 %688, label %689 [
    i16 114, label %858
    i16 111, label %858
  ]

689:                                              ; preds = %687
  %690 = zext nneg i32 %685 to i64
  %691 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !5
  %693 = icmp ult i8 %692, 9
  br i1 %693, label %694, label %709

694:                                              ; preds = %689
  %695 = tail call i64 @nonzero_bits(ptr noundef nonnull %2, i32 noundef %685) #9
  %696 = load i32, ptr %2, align 8
  %697 = lshr i32 %696, 16
  %698 = and i32 %697, 255
  %699 = zext nneg i32 %698 to i64
  %700 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %699
  %701 = load i8, ptr %700, align 1, !tbaa !5
  %702 = zext i8 %701 to i64
  %703 = shl nuw nsw i64 %702, 3
  %704 = add nuw nsw i64 %703, 4294967295
  %705 = and i64 %704, 4294967295
  %706 = shl nuw i64 1, %705
  %707 = and i64 %706, %695
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %858, label %709

709:                                              ; preds = %694, %689
  %710 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %2, i32 noundef %1) #9
  %711 = zext i32 %1 to i64
  %712 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !5
  %714 = zext i8 %713 to i32
  %715 = shl nuw nsw i32 %714, 3
  %716 = icmp eq i32 %710, %715
  br i1 %716, label %717, label %857

717:                                              ; preds = %709
  %718 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %2) #9
  br label %858

719:                                              ; preds = %3
  %720 = load i32, ptr %2, align 8
  %721 = and i32 %720, 65534
  %722 = icmp eq i32 %721, 98
  br i1 %722, label %723, label %857

723:                                              ; preds = %719
  %724 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %725 = load ptr, ptr %724, align 8, !tbaa !5
  %726 = load i32, ptr %725, align 8
  %727 = lshr i32 %726, 16
  %728 = and i32 %727, 255
  %729 = tail call ptr @simplify_gen_unary(i32 noundef 114, i32 noundef %1, ptr noundef nonnull %725, i32 noundef %728) #8
  br label %858

730:                                              ; preds = %3
  %731 = load i32, ptr %2, align 8
  %732 = trunc i32 %731 to i16
  switch i16 %732, label %857 [
    i16 113, label %733
    i16 99, label %733
    i16 66, label %740
    i16 69, label %740
  ]

733:                                              ; preds = %730, %730
  %734 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %735 = load ptr, ptr %734, align 8, !tbaa !5
  %736 = load i32, ptr %735, align 8
  %737 = lshr i32 %736, 16
  %738 = and i32 %737, 255
  %739 = tail call ptr @simplify_gen_unary(i32 noundef 117, i32 noundef %1, ptr noundef nonnull %735, i32 noundef %738) #8
  br label %858

740:                                              ; preds = %730, %730
  %741 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %742 = load ptr, ptr %741, align 8, !tbaa !5
  %743 = tail call i32 @side_effects_p(ptr noundef %742) #9
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %857

745:                                              ; preds = %740
  %746 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %747 = load ptr, ptr %746, align 8, !tbaa !5
  %748 = load i32, ptr %747, align 8
  %749 = lshr i32 %748, 16
  %750 = and i32 %749, 255
  %751 = tail call ptr @simplify_gen_unary(i32 noundef 117, i32 noundef %1, ptr noundef nonnull %747, i32 noundef %750) #8
  br label %858

752:                                              ; preds = %3
  %753 = load i32, ptr %2, align 8
  %754 = trunc i32 %753 to i16
  switch i16 %754, label %857 [
    i16 64, label %755
    i16 113, label %755
    i16 99, label %755
    i16 98, label %755
    i16 66, label %762
    i16 69, label %762
  ]

755:                                              ; preds = %752, %752, %752, %752
  %756 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %757 = load ptr, ptr %756, align 8, !tbaa !5
  %758 = load i32, ptr %757, align 8
  %759 = lshr i32 %758, 16
  %760 = and i32 %759, 255
  %761 = tail call ptr @simplify_gen_unary(i32 noundef 118, i32 noundef %1, ptr noundef nonnull %757, i32 noundef %760) #8
  br label %858

762:                                              ; preds = %752, %752
  %763 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %764 = load ptr, ptr %763, align 8, !tbaa !5
  %765 = tail call i32 @side_effects_p(ptr noundef %764) #9
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %857

767:                                              ; preds = %762
  %768 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %769 = load ptr, ptr %768, align 8, !tbaa !5
  %770 = load i32, ptr %769, align 8
  %771 = lshr i32 %770, 16
  %772 = and i32 %771, 255
  %773 = tail call ptr @simplify_gen_unary(i32 noundef 118, i32 noundef %1, ptr noundef nonnull %769, i32 noundef %772) #8
  br label %858

774:                                              ; preds = %3
  %775 = load i32, ptr %2, align 8
  %776 = and i32 %775, 65535
  %777 = icmp eq i32 %776, 113
  br i1 %777, label %778, label %857

778:                                              ; preds = %774
  %779 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %780 = load ptr, ptr %779, align 8, !tbaa !5
  br label %858

781:                                              ; preds = %3
  %782 = load i32, ptr %2, align 8
  %783 = and i32 %782, 65535
  %784 = icmp eq i32 %783, 98
  br i1 %784, label %785, label %857

785:                                              ; preds = %781
  %786 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %787 = load ptr, ptr %786, align 8, !tbaa !5
  %788 = load i32, ptr %787, align 8
  %789 = lshr i32 %788, 16
  %790 = and i32 %789, 255
  %791 = tail call ptr @simplify_gen_unary(i32 noundef 103, i32 noundef %1, ptr noundef nonnull %787, i32 noundef %790) #8
  br label %858

792:                                              ; preds = %3
  %793 = load i32, ptr %2, align 8
  %794 = and i32 %793, 65535
  %795 = icmp eq i32 %794, 100
  br i1 %795, label %796, label %818

796:                                              ; preds = %792
  %797 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %798 = load ptr, ptr %797, align 8, !tbaa !5
  %799 = load i32, ptr %798, align 8
  %800 = lshr i32 %799, 16
  %801 = and i32 %800, 255
  %802 = icmp eq i32 %801, %1
  %803 = and i32 %799, 65535
  %804 = icmp eq i32 %803, 50
  %805 = and i1 %804, %802
  br i1 %805, label %806, label %818

806:                                              ; preds = %796
  %807 = getelementptr inbounds %struct.rtx_def, ptr %798, i64 0, i32 1
  %808 = load ptr, ptr %807, align 8, !tbaa !5
  %809 = load i32, ptr %808, align 8
  %810 = and i32 %809, 65535
  %811 = icmp eq i32 %810, 44
  br i1 %811, label %812, label %818

812:                                              ; preds = %806
  %813 = getelementptr inbounds %struct.rtx_def, ptr %798, i64 0, i32 1, i32 0, i32 0, i64 1
  %814 = load ptr, ptr %813, align 8, !tbaa !5
  %815 = load i32, ptr %814, align 8
  %816 = and i32 %815, 65535
  %817 = icmp eq i32 %816, 44
  br i1 %817, label %858, label %818

818:                                              ; preds = %812, %806, %796, %792
  %819 = and i32 %793, 469827583
  %820 = icmp eq i32 %819, 268435495
  br i1 %820, label %821, label %857

821:                                              ; preds = %818
  %822 = zext i32 %1 to i64
  %823 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !5
  %825 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %826 = load ptr, ptr %825, align 8, !tbaa !5
  %827 = load i32, ptr %826, align 8
  %828 = lshr i32 %827, 16
  %829 = and i32 %828, 255
  %830 = zext nneg i32 %829 to i64
  %831 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %830
  %832 = load i8, ptr %831, align 1, !tbaa !5
  %833 = icmp ugt i8 %824, %832
  br i1 %833, label %857, label %834

834:                                              ; preds = %821
  %835 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !54
  %836 = tail call ptr %835(i32 noundef %1, ptr noundef nonnull %2) #9
  br label %858

837:                                              ; preds = %3
  %838 = load i32, ptr %2, align 8
  %839 = and i32 %838, 469827583
  %840 = icmp eq i32 %839, 335544359
  br i1 %840, label %841, label %857

841:                                              ; preds = %837
  %842 = zext i32 %1 to i64
  %843 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %842
  %844 = load i8, ptr %843, align 1, !tbaa !5
  %845 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %846 = load ptr, ptr %845, align 8, !tbaa !5
  %847 = load i32, ptr %846, align 8
  %848 = lshr i32 %847, 16
  %849 = and i32 %848, 255
  %850 = zext nneg i32 %849 to i64
  %851 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %850
  %852 = load i8, ptr %851, align 1, !tbaa !5
  %853 = icmp ugt i8 %844, %852
  br i1 %853, label %857, label %854

854:                                              ; preds = %841
  %855 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !54
  %856 = tail call ptr %855(i32 noundef %1, ptr noundef nonnull %2) #9
  br label %858

857:                                              ; preds = %602, %606, %612, %719, %638, %399, %130, %635, %3, %837, %841, %818, %821, %781, %774, %762, %752, %740, %730, %709, %683, %646, %630, %621, %624, %528, %512, %514, %520, %429, %390, %394
  br label %858

858:                                              ; preds = %812, %694, %687, %687, %624, %537, %439, %425, %427, %410, %857, %854, %834, %785, %778, %767, %755, %745, %733, %723, %717, %676, %663, %619, %595, %555, %525, %509, %474, %461, %387, %372, %351, %326, %312, %284, %281, %227, %182, %178, %170, %159, %122, %90, %79, %57, %41, %37, %23, %8
  %859 = phi ptr [ null, %857 ], [ %856, %854 ], [ %836, %834 ], [ %791, %785 ], [ %780, %778 ], [ %773, %767 ], [ %761, %755 ], [ %751, %745 ], [ %739, %733 ], [ %729, %723 ], [ %682, %676 ], [ %718, %717 ], [ %671, %663 ], [ %565, %555 ], [ %601, %595 ], [ %620, %619 ], [ %462, %461 ], [ %481, %474 ], [ %527, %525 ], [ %511, %509 ], [ %172, %170 ], [ %181, %178 ], [ %185, %182 ], [ %329, %326 ], [ %353, %351 ], [ %374, %372 ], [ %389, %387 ], [ %318, %312 ], [ %283, %281 ], [ %288, %284 ], [ %232, %227 ], [ %10, %8 ], [ %28, %23 ], [ %40, %37 ], [ %44, %41 ], [ %59, %57 ], [ %81, %79 ], [ %94, %90 ], [ %129, %122 ], [ %166, %159 ], [ %426, %425 ], [ %428, %427 ], [ %418, %410 ], [ %441, %439 ], [ %539, %537 ], [ %626, %624 ], [ %2, %687 ], [ %2, %687 ], [ %2, %694 ], [ %798, %812 ]
  ret ptr %859
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_VECTOR(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_value_truncate(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @neg_double(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_sqrt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_arithmetic2(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @real_to_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_from_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_const_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca [4 x i64], align 16
  %6 = alloca [4 x i64], align 16
  %7 = alloca %struct.real_value, align 8
  %8 = alloca %struct.real_value, align 8
  %9 = alloca %struct.real_value, align 8
  %10 = alloca %struct.real_value, align 8
  %11 = alloca %struct.real_value, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 3
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %22 = load i8, ptr %21, align 1, !tbaa !5
  switch i8 %22, label %23 [
    i8 12, label %27
    i8 17, label %27
    i8 13, label %27
    i8 14, label %27
    i8 15, label %27
  ]

23:                                               ; preds = %4
  %24 = icmp eq i8 %22, 16
  %25 = icmp ne i32 %0, 125
  %26 = and i1 %25, %24
  br i1 %26, label %29, label %82

27:                                               ; preds = %4, %4, %4, %4, %4
  %28 = icmp eq i32 %0, 125
  br i1 %28, label %82, label %29

29:                                               ; preds = %23, %27
  %30 = load i32, ptr %2, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 33
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load i32, ptr %3, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 33
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  %38 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %16
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = zext i8 %39 to i32
  %41 = lshr i32 %30, 16
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = lshr i32 %34, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = tail call ptr @rtvec_alloc(i32 noundef %40) #9
  %52 = icmp eq i8 %45, %39
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3099, ptr noundef nonnull @.str.1) #9
  br label %54

54:                                               ; preds = %37, %53
  %55 = icmp eq i8 %50, %39
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3100, ptr noundef nonnull @.str.1) #9
  br label %57

57:                                               ; preds = %54, %56
  %58 = icmp eq i8 %39, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %16
  %61 = load i8, ptr %60, align 1, !tbaa !5
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %65 = zext i8 %39 to i64
  br label %66

66:                                               ; preds = %59, %76
  %67 = phi i64 [ 0, %59 ], [ %78, %76 ]
  %68 = load ptr, ptr %63, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !24
  %71 = load ptr, ptr %64, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %71, i64 0, i32 1, i64 %67
  %73 = load ptr, ptr %72, align 8, !tbaa !24
  %74 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %62, ptr noundef %70, ptr noundef %73) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %628, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.rtvec_def, ptr %51, i64 0, i32 1, i64 %67
  store ptr %74, ptr %77, align 8, !tbaa !24
  %78 = add nuw nsw i64 %67, 1
  %79 = icmp eq i64 %78, %65
  br i1 %79, label %80, label %66, !llvm.loop !57

80:                                               ; preds = %76, %57
  %81 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %51) #9
  br label %628

82:                                               ; preds = %33, %29, %27, %23
  switch i8 %22, label %83 [
    i8 12, label %89
    i8 17, label %89
    i8 13, label %89
    i8 14, label %89
    i8 15, label %89
  ]

83:                                               ; preds = %82
  %84 = icmp eq i8 %22, 16
  %85 = icmp eq i32 %0, 125
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %182

87:                                               ; preds = %83
  %88 = load i32, ptr %2, align 8
  br label %92

89:                                               ; preds = %82, %82, %82, %82, %82
  %90 = icmp eq i32 %0, 125
  %91 = load i32, ptr %2, align 8
  br i1 %90, label %92, label %493

92:                                               ; preds = %87, %89
  %93 = phi i32 [ %88, %87 ], [ %91, %89 ]
  %94 = and i32 %93, 65535
  %95 = add nsw i32 %94, -30
  %96 = icmp ult i32 %95, 3
  br i1 %96, label %97, label %493

97:                                               ; preds = %92
  %98 = load i32, ptr %3, align 8
  %99 = and i32 %98, 65535
  %100 = add nsw i32 %99, -30
  %101 = icmp ult i32 %100, 3
  br i1 %101, label %102, label %493

102:                                              ; preds = %97
  %103 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %16
  %104 = load i8, ptr %103, align 1, !tbaa !5
  %105 = zext i8 %104 to i32
  %106 = tail call ptr @rtvec_alloc(i32 noundef %105) #9
  %107 = icmp ugt i8 %104, 1
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3126, ptr noundef nonnull @.str.1) #9
  br label %124

109:                                              ; preds = %102
  %110 = icmp eq i8 %104, 2
  br i1 %110, label %111, label %124

111:                                              ; preds = %109
  %112 = load i32, ptr %2, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 33
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3129, ptr noundef nonnull @.str.1) #9
  br label %116

116:                                              ; preds = %111, %115
  %117 = load i32, ptr %3, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 33
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3130, ptr noundef nonnull @.str.1) #9
  br label %121

121:                                              ; preds = %116, %120
  %122 = getelementptr inbounds %struct.rtvec_def, ptr %106, i64 0, i32 1
  store ptr %2, ptr %122, align 8, !tbaa !24
  %123 = getelementptr inbounds %struct.rtvec_def, ptr %106, i64 1
  store ptr %3, ptr %123, align 8, !tbaa !24
  br label %180

124:                                              ; preds = %108, %109
  %125 = load i32, ptr %2, align 8
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !5
  %131 = zext i8 %130 to i32
  %132 = load i32, ptr %3, align 8
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = zext i8 %137 to i32
  %139 = and i32 %125, 65535
  %140 = icmp eq i32 %139, 33
  br i1 %140, label %143, label %141

141:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3141, ptr noundef nonnull @.str.1) #9
  %142 = load i32, ptr %3, align 8
  br label %143

143:                                              ; preds = %124, %141
  %144 = phi i32 [ %132, %124 ], [ %142, %141 ]
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 33
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3142, ptr noundef nonnull @.str.1) #9
  br label %148

148:                                              ; preds = %143, %147
  %149 = add nuw nsw i32 %138, %131
  %150 = icmp eq i32 %149, %105
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3143, ptr noundef nonnull @.str.1) #9
  br label %152

152:                                              ; preds = %148, %151
  %153 = icmp eq i8 %130, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %156 = zext i8 %130 to i64
  br label %163

157:                                              ; preds = %163, %152
  %158 = icmp eq i8 %137, 0
  br i1 %158, label %180, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %161 = zext i8 %130 to i64
  %162 = zext i8 %137 to i64
  br label %171

163:                                              ; preds = %154, %163
  %164 = phi i64 [ 0, %154 ], [ %169, %163 ]
  %165 = load ptr, ptr %155, align 8, !tbaa !5
  %166 = getelementptr inbounds %struct.rtvec_def, ptr %165, i64 0, i32 1, i64 %164
  %167 = load ptr, ptr %166, align 8, !tbaa !24
  %168 = getelementptr inbounds %struct.rtvec_def, ptr %106, i64 0, i32 1, i64 %164
  store ptr %167, ptr %168, align 8, !tbaa !24
  %169 = add nuw nsw i64 %164, 1
  %170 = icmp eq i64 %169, %156
  br i1 %170, label %157, label %163, !llvm.loop !58

171:                                              ; preds = %159, %171
  %172 = phi i64 [ 0, %159 ], [ %178, %171 ]
  %173 = load ptr, ptr %160, align 8, !tbaa !5
  %174 = getelementptr inbounds %struct.rtvec_def, ptr %173, i64 0, i32 1, i64 %172
  %175 = load ptr, ptr %174, align 8, !tbaa !24
  %176 = add nuw nsw i64 %172, %161
  %177 = getelementptr inbounds %struct.rtvec_def, ptr %106, i64 0, i32 1, i64 %176
  store ptr %175, ptr %177, align 8, !tbaa !24
  %178 = add nuw nsw i64 %172, 1
  %179 = icmp eq i64 %178, %162
  br i1 %179, label %180, label %171, !llvm.loop !59

180:                                              ; preds = %171, %157, %121
  %181 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %106) #9
  br label %628

182:                                              ; preds = %83
  %183 = and i8 %22, -2
  %184 = icmp eq i8 %183, 8
  br i1 %184, label %185, label %377

185:                                              ; preds = %182
  %186 = load i32, ptr %2, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 32
  br i1 %188, label %189, label %493

189:                                              ; preds = %185
  %190 = load i32, ptr %3, align 8
  %191 = and i32 %190, 65535
  %192 = icmp eq i32 %191, 32
  br i1 %192, label %193, label %493

193:                                              ; preds = %189
  %194 = lshr i32 %186, 16
  %195 = and i32 %194, 255
  %196 = icmp eq i32 %195, %1
  br i1 %196, label %197, label %493

197:                                              ; preds = %193
  %198 = lshr i32 %190, 16
  %199 = and i32 %198, 255
  %200 = icmp eq i32 %199, %1
  br i1 %200, label %201, label %493

201:                                              ; preds = %197
  %202 = add i32 %0, -61
  %203 = icmp ult i32 %202, 3
  br i1 %203, label %204, label %238

204:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  %205 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %206 = call i64 @real_to_target(ptr noundef nonnull %5, ptr noundef nonnull %205, i32 noundef %1) #9
  %207 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %208 = load i32, ptr %3, align 8
  %209 = lshr i32 %208, 16
  %210 = and i32 %209, 255
  %211 = call i64 @real_to_target(ptr noundef nonnull %6, ptr noundef nonnull %207, i32 noundef %210) #9
  br label %212

212:                                              ; preds = %204, %233
  %213 = phi i64 [ 0, %204 ], [ %234, %233 ]
  switch i32 %0, label %232 [
    i32 61, label %214
    i32 62, label %220
    i32 63, label %226
  ]

214:                                              ; preds = %212
  %215 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %213
  %216 = load i64, ptr %215, align 8, !tbaa !28
  %217 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %213
  %218 = load i64, ptr %217, align 8, !tbaa !28
  %219 = and i64 %218, %216
  store i64 %219, ptr %217, align 8, !tbaa !28
  br label %233

220:                                              ; preds = %212
  %221 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %213
  %222 = load i64, ptr %221, align 8, !tbaa !28
  %223 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %213
  %224 = load i64, ptr %223, align 8, !tbaa !28
  %225 = or i64 %224, %222
  store i64 %225, ptr %223, align 8, !tbaa !28
  br label %233

226:                                              ; preds = %212
  %227 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %213
  %228 = load i64, ptr %227, align 8, !tbaa !28
  %229 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %213
  %230 = load i64, ptr %229, align 8, !tbaa !28
  %231 = xor i64 %230, %228
  store i64 %231, ptr %229, align 8, !tbaa !28
  br label %233

232:                                              ; preds = %212
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3186, ptr noundef nonnull @.str.1) #9
  br label %233

233:                                              ; preds = %214, %220, %226, %232
  %234 = add nuw nsw i64 %213, 1
  %235 = icmp eq i64 %234, 4
  br i1 %235, label %236, label %212, !llvm.loop !60

236:                                              ; preds = %233
  call void @real_from_target(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %1) #9
  %237 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %7, i32 noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %628

238:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  %239 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %239, i64 32, i1 false), !tbaa.struct !43
  %240 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %240, i64 32, i1 false), !tbaa.struct !43
  call void @real_convert(ptr noundef nonnull %8, i32 noundef %1, ptr noundef nonnull %8) #9
  call void @real_convert(ptr noundef nonnull %9, i32 noundef %1, ptr noundef nonnull %9) #9
  %241 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %260, label %243

243:                                              ; preds = %238
  %244 = add nsw i32 %1, -38
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !24
  %248 = getelementptr inbounds %struct.real_format, ptr %247, i64 0, i32 11
  %249 = load i8, ptr %248, align 2, !tbaa !29
  %250 = icmp eq i8 %249, 0
  %251 = load i32, ptr @flag_finite_math_only, align 4
  %252 = icmp ne i32 %251, 0
  %253 = select i1 %250, i1 true, i1 %252
  br i1 %253, label %260, label %254

254:                                              ; preds = %243
  %255 = call zeroext i8 @real_isnan(ptr noundef nonnull %8) #9
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %375

257:                                              ; preds = %254
  %258 = call zeroext i8 @real_isnan(ptr noundef nonnull %9) #9
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %375

260:                                              ; preds = %257, %243, %238
  %261 = icmp eq i32 %0, 55
  br i1 %261, label %262, label %276

262:                                              ; preds = %260
  %263 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %9, ptr noundef nonnull @dconst0) #9
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %276, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr @flag_trapping_math, align 4, !tbaa !8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %375

268:                                              ; preds = %265
  %269 = add nsw i32 %1, -38
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !24
  %273 = getelementptr inbounds %struct.real_format, ptr %272, i64 0, i32 12
  %274 = load i8, ptr %273, align 1, !tbaa !61
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %375, label %276

276:                                              ; preds = %260, %262, %268
  %277 = add nsw i32 %1, -38
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !24
  %281 = getelementptr inbounds %struct.real_format, ptr %280, i64 0, i32 12
  %282 = load i8, ptr %281, align 1, !tbaa !61
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %307, label %284

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.real_format, ptr %280, i64 0, i32 11
  %286 = load i8, ptr %285, align 2, !tbaa !29
  %287 = icmp ne i8 %286, 0
  %288 = load i32, ptr @flag_finite_math_only, align 4
  %289 = icmp eq i32 %288, 0
  %290 = select i1 %287, i1 %289, i1 false
  %291 = load i32, ptr @flag_trapping_math, align 4
  %292 = icmp ne i32 %291, 0
  %293 = select i1 %290, i1 %292, i1 false
  br i1 %293, label %294, label %307

294:                                              ; preds = %284
  %295 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #9
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %307, label %297

297:                                              ; preds = %294
  %298 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #9
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %297
  %301 = call zeroext i8 @real_isneg(ptr noundef nonnull %8) #9
  %302 = call zeroext i8 @real_isneg(ptr noundef nonnull %9) #9
  switch i32 %0, label %336 [
    i32 49, label %303
    i32 50, label %305
    i32 55, label %375
    i32 52, label %309
  ]

303:                                              ; preds = %300
  %304 = icmp eq i8 %301, %302
  br i1 %304, label %336, label %375

305:                                              ; preds = %300
  %306 = icmp eq i8 %301, %302
  br i1 %306, label %375, label %336

307:                                              ; preds = %297, %294, %284, %276
  %308 = icmp eq i32 %0, 52
  br i1 %308, label %309, label %336

309:                                              ; preds = %300, %307
  %310 = load ptr, ptr %279, align 8, !tbaa !24
  %311 = getelementptr inbounds %struct.real_format, ptr %310, i64 0, i32 12
  %312 = load i8, ptr %311, align 1, !tbaa !61
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %336, label %314

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.real_format, ptr %310, i64 0, i32 11
  %316 = load i8, ptr %315, align 2, !tbaa !29
  %317 = icmp ne i8 %316, 0
  %318 = load i32, ptr @flag_finite_math_only, align 4
  %319 = icmp eq i32 %318, 0
  %320 = select i1 %317, i1 %319, i1 false
  %321 = load i32, ptr @flag_trapping_math, align 4
  %322 = icmp ne i32 %321, 0
  %323 = select i1 %320, i1 %322, i1 false
  br i1 %323, label %324, label %336

324:                                              ; preds = %314
  %325 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #9
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %9, ptr noundef nonnull @dconst0) #9
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %375

330:                                              ; preds = %327, %324
  %331 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #9
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %330
  %334 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %8, ptr noundef nonnull @dconst0) #9
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %375

336:                                              ; preds = %305, %303, %300, %333, %330, %314, %309, %307
  %337 = call i32 @rtx_to_tree_code(i32 noundef %0) #9
  %338 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %10, i32 noundef %337, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  call void @real_convert(ptr noundef nonnull %11, i32 noundef %1, ptr noundef nonnull %10) #9
  %339 = load i32, ptr @flag_trapping_math, align 4, !tbaa !8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %355, label %341

341:                                              ; preds = %336
  %342 = load ptr, ptr %279, align 8, !tbaa !24
  %343 = getelementptr inbounds %struct.real_format, ptr %342, i64 0, i32 12
  %344 = load i8, ptr %343, align 1, !tbaa !61
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %355, label %346

346:                                              ; preds = %341
  %347 = call zeroext i8 @real_isinf(ptr noundef nonnull %11) #9
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %355, label %349

349:                                              ; preds = %346
  %350 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #9
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %349
  %353 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #9
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %375, label %355

355:                                              ; preds = %352, %349, %346, %341, %336
  %356 = load i32, ptr @flag_rounding_math, align 4, !tbaa !8
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %368

358:                                              ; preds = %355
  %359 = load ptr, ptr %279, align 8, !tbaa !24
  %360 = getelementptr inbounds %struct.real_format, ptr %359, i64 0, i32 4
  %361 = load i32, ptr %360, align 8, !tbaa !62
  %362 = getelementptr inbounds %struct.real_format, ptr %359, i64 0, i32 3
  %363 = load i32, ptr %362, align 4, !tbaa !63
  %364 = icmp sge i32 %361, %363
  %365 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %366 = icmp ne i32 %365, 0
  %367 = select i1 %364, i1 true, i1 %366
  br i1 %367, label %373, label %368

368:                                              ; preds = %358, %355
  %369 = icmp eq i8 %338, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %368
  %371 = call zeroext i8 @real_identical(ptr noundef nonnull %11, ptr noundef nonnull %10) #9
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %375, label %373

373:                                              ; preds = %370, %358
  %374 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %11, i32 noundef %1) #9
  br label %375

375:                                              ; preds = %300, %368, %370, %352, %327, %333, %303, %305, %265, %268, %254, %257, %373
  %376 = phi ptr [ %374, %373 ], [ null, %257 ], [ null, %254 ], [ null, %268 ], [ null, %265 ], [ null, %300 ], [ null, %305 ], [ null, %303 ], [ null, %333 ], [ null, %327 ], [ null, %352 ], [ null, %370 ], [ null, %368 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  br label %628

377:                                              ; preds = %182
  %378 = icmp eq i8 %22, 2
  %379 = icmp eq i8 %18, 16
  %380 = select i1 %378, i1 %379, i1 false
  %381 = load i32, ptr %2, align 8
  br i1 %380, label %382, label %493

382:                                              ; preds = %377
  %383 = and i32 %381, 65535
  %384 = trunc i32 %381 to i16
  switch i16 %384, label %493 [
    i16 32, label %385
    i16 30, label %385
  ]

385:                                              ; preds = %382, %382
  %386 = load i32, ptr %3, align 8
  %387 = and i32 %386, 65535
  %388 = trunc i32 %386 to i16
  switch i16 %388, label %493 [
    i16 32, label %389
    i16 30, label %389
  ]

389:                                              ; preds = %385, %385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #10
  %390 = icmp eq i32 %383, 32
  %391 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %392 = load i64, ptr %391, align 8, !tbaa !5
  br i1 %390, label %393, label %396

393:                                              ; preds = %389
  %394 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %395 = load i64, ptr %394, align 8, !tbaa !5
  br label %398

396:                                              ; preds = %389
  %397 = ashr i64 %392, 63
  br label %398

398:                                              ; preds = %396, %393
  %399 = phi i64 [ %395, %393 ], [ %397, %396 ]
  %400 = icmp eq i32 %387, 32
  %401 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %402 = load i64, ptr %401, align 8, !tbaa !5
  br i1 %400, label %403, label %406

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %405 = load i64, ptr %404, align 8, !tbaa !5
  br label %408

406:                                              ; preds = %398
  %407 = ashr i64 %402, 63
  br label %408

408:                                              ; preds = %406, %403
  %409 = phi i64 [ %405, %403 ], [ %407, %406 ]
  switch i32 %0, label %491 [
    i32 50, label %410
    i32 49, label %414
    i32 52, label %418
    i32 55, label %420
    i32 58, label %423
    i32 59, label %426
    i32 60, label %429
    i32 61, label %432
    i32 62, label %435
    i32 63, label %438
    i32 70, label %441
    i32 71, label %449
    i32 72, label %457
    i32 73, label %465
    i32 68, label %473
    i32 67, label %473
    i32 65, label %473
    i32 66, label %473
    i32 69, label %473
  ]

410:                                              ; preds = %408
  %411 = call i32 @neg_double(i64 noundef %402, i64 noundef %409, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  %412 = load i64, ptr %12, align 8, !tbaa !28
  %413 = load i64, ptr %14, align 8, !tbaa !28
  br label %414

414:                                              ; preds = %408, %410
  %415 = phi i64 [ %402, %408 ], [ %412, %410 ]
  %416 = phi i64 [ %409, %408 ], [ %413, %410 ]
  %417 = call i32 @add_double_with_sign(i64 noundef %392, i64 noundef %399, i64 noundef %415, i64 noundef %416, ptr noundef nonnull %12, ptr noundef nonnull %14, i8 noundef zeroext 0) #9
  br label %487

418:                                              ; preds = %408
  %419 = call i32 @mul_double_with_sign(i64 noundef %392, i64 noundef %399, i64 noundef %402, i64 noundef %409, ptr noundef nonnull %12, ptr noundef nonnull %14, i8 noundef zeroext 0) #9
  br label %487

420:                                              ; preds = %408
  %421 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %392, i64 noundef %399, i64 noundef %402, i64 noundef %409, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %15) #9
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %487, label %491

423:                                              ; preds = %408
  %424 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %392, i64 noundef %399, i64 noundef %402, i64 noundef %409, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %487, label %491

426:                                              ; preds = %408
  %427 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %392, i64 noundef %399, i64 noundef %402, i64 noundef %409, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %15) #9
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %487, label %491

429:                                              ; preds = %408
  %430 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %392, i64 noundef %399, i64 noundef %402, i64 noundef %409, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %487, label %491

432:                                              ; preds = %408
  %433 = and i64 %402, %392
  store i64 %433, ptr %12, align 8, !tbaa !28
  %434 = and i64 %409, %399
  store i64 %434, ptr %14, align 8, !tbaa !28
  br label %487

435:                                              ; preds = %408
  %436 = or i64 %402, %392
  store i64 %436, ptr %12, align 8, !tbaa !28
  %437 = or i64 %409, %399
  store i64 %437, ptr %14, align 8, !tbaa !28
  br label %487

438:                                              ; preds = %408
  %439 = xor i64 %402, %392
  store i64 %439, ptr %12, align 8, !tbaa !28
  %440 = xor i64 %409, %399
  store i64 %440, ptr %14, align 8, !tbaa !28
  br label %487

441:                                              ; preds = %408
  %442 = icmp slt i64 %399, %409
  br i1 %442, label %447, label %443

443:                                              ; preds = %441
  %444 = icmp eq i64 %399, %409
  %445 = icmp ult i64 %392, %402
  %446 = select i1 %444, i1 %445, i1 false
  br i1 %446, label %447, label %448

447:                                              ; preds = %443, %441
  store i64 %392, ptr %12, align 8, !tbaa !28
  store i64 %399, ptr %14, align 8, !tbaa !28
  br label %487

448:                                              ; preds = %443
  store i64 %402, ptr %12, align 8, !tbaa !28
  store i64 %409, ptr %14, align 8, !tbaa !28
  br label %487

449:                                              ; preds = %408
  %450 = icmp sgt i64 %399, %409
  br i1 %450, label %455, label %451

451:                                              ; preds = %449
  %452 = icmp eq i64 %399, %409
  %453 = icmp ugt i64 %392, %402
  %454 = select i1 %452, i1 %453, i1 false
  br i1 %454, label %455, label %456

455:                                              ; preds = %451, %449
  store i64 %392, ptr %12, align 8, !tbaa !28
  store i64 %399, ptr %14, align 8, !tbaa !28
  br label %487

456:                                              ; preds = %451
  store i64 %402, ptr %12, align 8, !tbaa !28
  store i64 %409, ptr %14, align 8, !tbaa !28
  br label %487

457:                                              ; preds = %408
  %458 = icmp ult i64 %399, %409
  br i1 %458, label %463, label %459

459:                                              ; preds = %457
  %460 = icmp eq i64 %399, %409
  %461 = icmp ult i64 %392, %402
  %462 = select i1 %460, i1 %461, i1 false
  br i1 %462, label %463, label %464

463:                                              ; preds = %459, %457
  store i64 %392, ptr %12, align 8, !tbaa !28
  store i64 %399, ptr %14, align 8, !tbaa !28
  br label %487

464:                                              ; preds = %459
  store i64 %402, ptr %12, align 8, !tbaa !28
  store i64 %409, ptr %14, align 8, !tbaa !28
  br label %487

465:                                              ; preds = %408
  %466 = icmp ugt i64 %399, %409
  br i1 %466, label %471, label %467

467:                                              ; preds = %465
  %468 = icmp eq i64 %399, %409
  %469 = icmp ugt i64 %392, %402
  %470 = select i1 %468, i1 %469, i1 false
  br i1 %470, label %471, label %472

471:                                              ; preds = %467, %465
  store i64 %392, ptr %12, align 8, !tbaa !28
  store i64 %399, ptr %14, align 8, !tbaa !28
  br label %487

472:                                              ; preds = %467
  store i64 %402, ptr %12, align 8, !tbaa !28
  store i64 %409, ptr %14, align 8, !tbaa !28
  br label %487

473:                                              ; preds = %408, %408, %408, %408, %408
  %474 = icmp eq i64 %409, 0
  %475 = icmp ult i64 %402, 128
  %476 = select i1 %474, i1 %475, i1 false
  br i1 %476, label %477, label %491

477:                                              ; preds = %473
  %478 = add nsw i32 %0, -67
  %479 = icmp ult i32 %478, 2
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = icmp eq i32 %0, 67
  %482 = zext i1 %481 to i32
  call void @rshift_double(i64 noundef %392, i64 noundef %399, i64 noundef %402, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %14, i32 noundef %482) #9
  br label %487

483:                                              ; preds = %477
  switch i32 %0, label %486 [
    i32 65, label %484
    i32 66, label %485
  ]

484:                                              ; preds = %483
  call void @lshift_double(i64 noundef %392, i64 noundef %399, i64 noundef %402, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %14, i32 noundef 1) #9
  br label %487

485:                                              ; preds = %483
  call void @lrotate_double(i64 noundef %392, i64 noundef %399, i64 noundef %402, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  br label %487

486:                                              ; preds = %483
  call void @rrotate_double(i64 noundef %392, i64 noundef %399, i64 noundef %402, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  br label %487

487:                                              ; preds = %480, %485, %486, %484, %471, %472, %463, %464, %455, %456, %447, %448, %429, %426, %423, %420, %438, %435, %432, %418, %414
  %488 = load i64, ptr %12, align 8, !tbaa !28
  %489 = load i64, ptr %14, align 8, !tbaa !28
  %490 = call ptr @immed_double_const(i64 noundef %488, i64 noundef %489, i32 noundef %1) #9
  br label %491

491:                                              ; preds = %408, %473, %429, %426, %423, %420, %487
  %492 = phi ptr [ %490, %487 ], [ null, %420 ], [ null, %423 ], [ null, %426 ], [ null, %429 ], [ null, %473 ], [ null, %408 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  br label %628

493:                                              ; preds = %89, %92, %97, %185, %189, %193, %197, %385, %382, %377
  %494 = phi i32 [ %93, %92 ], [ %93, %97 ], [ %186, %185 ], [ %186, %189 ], [ %186, %193 ], [ %186, %197 ], [ %381, %385 ], [ %381, %382 ], [ %381, %377 ], [ %91, %89 ]
  %495 = and i32 %494, 65535
  %496 = icmp eq i32 %495, 30
  br i1 %496, label %497, label %628

497:                                              ; preds = %493
  %498 = load i32, ptr %3, align 8
  %499 = and i32 %498, 65535
  %500 = icmp eq i32 %499, 30
  %501 = icmp ult i8 %18, 9
  %502 = select i1 %500, i1 %501, i1 false
  %503 = icmp ne i8 %18, 0
  %504 = select i1 %502, i1 %503, i1 false
  br i1 %504, label %505, label %628

505:                                              ; preds = %497
  %506 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %507 = load i64, ptr %506, align 8, !tbaa !5
  %508 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %509 = load i64, ptr %508, align 8, !tbaa !5
  %510 = icmp ult i8 %18, 8
  br i1 %510, label %511, label %528

511:                                              ; preds = %505
  %512 = zext nneg i32 %20 to i64
  %513 = shl nsw i64 -1, %512
  %514 = xor i64 %513, -1
  %515 = and i64 %507, %514
  %516 = and i64 %509, %514
  %517 = add nsw i32 %20, -1
  %518 = zext nneg i32 %517 to i64
  %519 = shl nuw nsw i64 1, %518
  %520 = and i64 %515, %519
  %521 = icmp eq i64 %520, 0
  %522 = or i64 %507, %513
  %523 = select i1 %521, i64 %515, i64 %522
  %524 = and i64 %516, %519
  %525 = icmp eq i64 %524, 0
  %526 = or i64 %509, %513
  %527 = select i1 %525, i64 %516, i64 %526
  br label %528

528:                                              ; preds = %511, %505
  %529 = phi i64 [ %509, %505 ], [ %527, %511 ]
  %530 = phi i64 [ %507, %505 ], [ %523, %511 ]
  %531 = phi i64 [ %509, %505 ], [ %516, %511 ]
  %532 = phi i64 [ %507, %505 ], [ %515, %511 ]
  switch i32 %0, label %624 [
    i32 49, label %533
    i32 50, label %535
    i32 52, label %537
    i32 55, label %539
    i32 58, label %547
    i32 59, label %555
    i32 60, label %563
    i32 61, label %571
    i32 62, label %573
    i32 63, label %575
    i32 68, label %577
    i32 65, label %577
    i32 67, label %577
    i32 69, label %598
    i32 66, label %607
    i32 48, label %628
    i32 70, label %616
    i32 72, label %618
    i32 71, label %620
    i32 73, label %622
    i32 127, label %628
    i32 128, label %628
    i32 129, label %628
    i32 135, label %628
    i32 53, label %628
    i32 54, label %628
    i32 56, label %628
    i32 57, label %628
    i32 133, label %628
    i32 134, label %628
  ]

533:                                              ; preds = %528
  %534 = add nsw i64 %530, %529
  br label %625

535:                                              ; preds = %528
  %536 = sub nsw i64 %530, %529
  br label %625

537:                                              ; preds = %528
  %538 = mul nsw i64 %530, %529
  br label %625

539:                                              ; preds = %528
  %540 = icmp eq i64 %529, 0
  br i1 %540, label %628, label %541

541:                                              ; preds = %539
  %542 = icmp eq i64 %530, -9223372036854775808
  %543 = icmp eq i64 %529, -1
  %544 = select i1 %542, i1 %543, i1 false
  br i1 %544, label %628, label %545

545:                                              ; preds = %541
  %546 = sdiv i64 %530, %529
  br label %625

547:                                              ; preds = %528
  %548 = icmp eq i64 %529, 0
  br i1 %548, label %628, label %549

549:                                              ; preds = %547
  %550 = icmp eq i64 %530, -9223372036854775808
  %551 = icmp eq i64 %529, -1
  %552 = select i1 %550, i1 %551, i1 false
  br i1 %552, label %628, label %553

553:                                              ; preds = %549
  %554 = srem i64 %530, %529
  br label %625

555:                                              ; preds = %528
  %556 = icmp eq i64 %531, 0
  br i1 %556, label %628, label %557

557:                                              ; preds = %555
  %558 = icmp eq i64 %530, -9223372036854775808
  %559 = icmp eq i64 %529, -1
  %560 = select i1 %558, i1 %559, i1 false
  br i1 %560, label %628, label %561

561:                                              ; preds = %557
  %562 = udiv i64 %532, %531
  br label %625

563:                                              ; preds = %528
  %564 = icmp eq i64 %531, 0
  br i1 %564, label %628, label %565

565:                                              ; preds = %563
  %566 = icmp eq i64 %530, -9223372036854775808
  %567 = icmp eq i64 %529, -1
  %568 = select i1 %566, i1 %567, i1 false
  br i1 %568, label %628, label %569

569:                                              ; preds = %565
  %570 = urem i64 %532, %531
  br label %625

571:                                              ; preds = %528
  %572 = and i64 %532, %531
  br label %625

573:                                              ; preds = %528
  %574 = or i64 %532, %531
  br label %625

575:                                              ; preds = %528
  %576 = xor i64 %532, %531
  br label %625

577:                                              ; preds = %528, %528, %528
  %578 = icmp sgt i64 %531, -1
  %579 = zext nneg i8 %18 to i64
  %580 = shl nuw nsw i64 %579, 3
  %581 = icmp ult i64 %531, %580
  %582 = select i1 %578, i1 %581, i1 false
  br i1 %582, label %583, label %628

583:                                              ; preds = %577
  %584 = icmp eq i32 %0, 65
  %585 = shl i64 %532, %531
  %586 = lshr i64 %532, %531
  %587 = select i1 %584, i64 %585, i64 %586
  %588 = icmp eq i32 %0, 67
  %589 = icmp slt i64 %530, 0
  %590 = select i1 %588, i1 %589, i1 false
  %591 = icmp ne i64 %531, 0
  %592 = select i1 %590, i1 %591, i1 false
  br i1 %592, label %593, label %625

593:                                              ; preds = %583
  %594 = zext nneg i32 %20 to i64
  %595 = sub nsw i64 %594, %531
  %596 = shl nsw i64 -1, %595
  %597 = or i64 %586, %596
  br label %625

598:                                              ; preds = %528
  %599 = icmp slt i64 %531, 0
  br i1 %599, label %628, label %600

600:                                              ; preds = %598
  %601 = zext nneg i32 %20 to i64
  %602 = urem i64 %531, %601
  %603 = sub nsw i64 %601, %602
  %604 = shl i64 %532, %603
  %605 = lshr i64 %532, %602
  %606 = or i64 %604, %605
  br label %625

607:                                              ; preds = %528
  %608 = icmp slt i64 %531, 0
  br i1 %608, label %628, label %609

609:                                              ; preds = %607
  %610 = zext nneg i32 %20 to i64
  %611 = urem i64 %531, %610
  %612 = shl i64 %532, %611
  %613 = sub nsw i64 %610, %611
  %614 = lshr i64 %532, %613
  %615 = or i64 %614, %612
  br label %625

616:                                              ; preds = %528
  %617 = tail call i64 @llvm.smin.i64(i64 %530, i64 %529)
  br label %625

618:                                              ; preds = %528
  %619 = tail call i64 @llvm.umin.i64(i64 %532, i64 %531)
  br label %625

620:                                              ; preds = %528
  %621 = tail call i64 @llvm.smax.i64(i64 %530, i64 %529)
  br label %625

622:                                              ; preds = %528
  %623 = tail call i64 @llvm.umax.i64(i64 %532, i64 %531)
  br label %625

624:                                              ; preds = %528
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3580, ptr noundef nonnull @.str.1) #9
  unreachable

625:                                              ; preds = %583, %593, %622, %620, %618, %616, %609, %600, %575, %573, %571, %569, %561, %553, %545, %537, %535, %533
  %626 = phi i64 [ %623, %622 ], [ %621, %620 ], [ %619, %618 ], [ %617, %616 ], [ %615, %609 ], [ %606, %600 ], [ %597, %593 ], [ %587, %583 ], [ %576, %575 ], [ %574, %573 ], [ %572, %571 ], [ %570, %569 ], [ %562, %561 ], [ %554, %553 ], [ %546, %545 ], [ %538, %537 ], [ %536, %535 ], [ %534, %533 ]
  %627 = tail call ptr @gen_int_mode(i64 noundef %626, i32 noundef %1) #9
  br label %628

628:                                              ; preds = %66, %493, %497, %528, %528, %528, %528, %528, %528, %528, %528, %528, %528, %528, %607, %598, %577, %563, %565, %555, %557, %547, %549, %539, %541, %80, %625, %491, %375, %236, %180
  %629 = phi ptr [ %181, %180 ], [ %237, %236 ], [ %376, %375 ], [ %492, %491 ], [ %627, %625 ], [ %81, %80 ], [ null, %541 ], [ null, %539 ], [ null, %549 ], [ null, %547 ], [ null, %557 ], [ null, %555 ], [ null, %565 ], [ null, %563 ], [ null, %577 ], [ null, %598 ], [ null, %607 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %528 ], [ null, %497 ], [ null, %493 ], [ null, %66 ]
  ret ptr %629
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_binary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.real_value, align 8
  %12 = alloca [2 x ptr], align 16
  %13 = alloca %struct.real_value, align 8
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  switch i32 %0, label %2552 [
    i32 49, label %19
    i32 48, label %269
    i32 50, label %323
    i32 52, label %673
    i32 62, label %924
    i32 63, label %1263
    i32 61, label %1459
    i32 59, label %1817
    i32 55, label %1847
    i32 60, label %1956
    i32 58, label %1991
    i32 69, label %2014
    i32 66, label %2014
    i32 67, label %2014
    i32 65, label %2039
    i32 133, label %2039
    i32 134, label %2039
    i32 68, label %2049
    i32 70, label %2059
    i32 71, label %2084
    i32 72, label %2109
    i32 73, label %2126
    i32 127, label %2554
    i32 128, label %2554
    i32 129, label %2554
    i32 135, label %2554
    i32 53, label %2554
    i32 54, label %2554
    i32 56, label %2554
    i32 57, label %2554
    i32 124, label %2141
    i32 125, label %2433
  ]

19:                                               ; preds = %6
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %21 = load i8, ptr %20, align 1, !tbaa !5
  switch i8 %21, label %41 [
    i8 8, label %22
    i8 9, label %22
    i8 11, label %22
    i8 17, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19
  %23 = and i8 %21, -2
  %24 = icmp eq i8 %23, 8
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %1, %22 ], [ %28, %25 ]
  %31 = add i32 %30, -38
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.real_format, ptr %34, i64 0, i32 14
  %36 = load i8, ptr %35, align 1, !tbaa !31
  %37 = icmp ne i8 %36, 0
  %38 = load i32, ptr @flag_signed_zeros, align 4
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %46, label %41

41:                                               ; preds = %19, %29
  %42 = sext i32 %1 to i64
  %43 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !24
  %45 = icmp eq ptr %44, %5
  br i1 %45, label %2554, label %46

46:                                               ; preds = %29, %41
  %47 = load i32, ptr %2, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 51
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %3, ptr noundef %52) #8
  br label %2554

54:                                               ; preds = %46
  %55 = load i32, ptr %3, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 51
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %60) #8
  br label %2554

62:                                               ; preds = %54
  switch i8 %21, label %72 [
    i8 2, label %63
    i8 3, label %63
    i8 10, label %63
    i8 12, label %63
  ]

63:                                               ; preds = %62, %62, %62, %62
  %64 = icmp eq i32 %48, 64
  %65 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %66 = icmp eq ptr %65, %5
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %70, i32 noundef %1) #8
  br label %2554

72:                                               ; preds = %62, %63
  %73 = trunc i32 %47 to i16
  switch i16 %73, label %80 [
    i16 35, label %74
    i16 45, label %74
    i16 44, label %74
  ]

74:                                               ; preds = %72, %72, %72
  %75 = trunc i32 %55 to i16
  switch i16 %75, label %88 [
    i16 30, label %76
    i16 35, label %82
    i16 45, label %82
    i16 44, label %82
  ]

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !5
  %79 = tail call ptr @plus_constant(ptr noundef nonnull %2, i64 noundef %78) #9
  br label %2554

80:                                               ; preds = %72
  %81 = trunc i32 %55 to i16
  switch i16 %81, label %88 [
    i16 35, label %82
    i16 45, label %82
    i16 44, label %82
  ]

82:                                               ; preds = %74, %74, %74, %80, %80, %80
  %83 = icmp eq i32 %48, 30
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !5
  %87 = tail call ptr @plus_constant(ptr noundef nonnull %3, i64 noundef %86) #9
  br label %2554

88:                                               ; preds = %74, %80, %82
  %89 = and i8 %21, -2
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %172

91:                                               ; preds = %88
  switch i16 %73, label %119 [
    i16 51, label %114
    i16 52, label %92
    i16 65, label %102
  ]

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 30
  br i1 %97, label %98, label %119

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !5
  %101 = ashr i64 %100, 63
  br label %114

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 30
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !5
  %111 = icmp ult i64 %110, 64
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = shl nuw i64 1, %110
  br label %114

114:                                              ; preds = %91, %112, %98
  %115 = phi i64 [ %113, %112 ], [ %100, %98 ], [ -1, %91 ]
  %116 = phi i64 [ 0, %112 ], [ %101, %98 ], [ -1, %91 ]
  %117 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  br label %119

119:                                              ; preds = %114, %91, %92, %108, %102
  %120 = phi ptr [ %2, %108 ], [ %2, %102 ], [ %2, %92 ], [ %2, %91 ], [ %118, %114 ]
  %121 = phi i64 [ 1, %108 ], [ 1, %102 ], [ 1, %92 ], [ 1, %91 ], [ %115, %114 ]
  %122 = phi i64 [ 0, %108 ], [ 0, %102 ], [ 0, %92 ], [ 0, %91 ], [ %116, %114 ]
  %123 = trunc i32 %55 to i16
  switch i16 %123, label %151 [
    i16 51, label %146
    i16 52, label %124
    i16 65, label %134
  ]

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 30
  br i1 %129, label %130, label %151

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !5
  %133 = ashr i64 %132, 63
  br label %146

134:                                              ; preds = %119
  %135 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 30
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !5
  %143 = icmp ult i64 %142, 64
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = shl nuw i64 1, %142
  br label %146

146:                                              ; preds = %119, %144, %130
  %147 = phi i64 [ %145, %144 ], [ %132, %130 ], [ -1, %119 ]
  %148 = phi i64 [ 0, %144 ], [ %133, %130 ], [ -1, %119 ]
  %149 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !5
  br label %151

151:                                              ; preds = %146, %119, %124, %140, %134
  %152 = phi ptr [ %3, %140 ], [ %3, %134 ], [ %3, %124 ], [ %3, %119 ], [ %150, %146 ]
  %153 = phi i64 [ 1, %140 ], [ 1, %134 ], [ 1, %124 ], [ 1, %119 ], [ %147, %146 ]
  %154 = phi i64 [ 0, %140 ], [ 0, %134 ], [ 0, %124 ], [ 0, %119 ], [ %148, %146 ]
  %155 = tail call i32 @rtx_equal_p(ptr noundef %120, ptr noundef %152) #9
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, ptr %3, align 8
  br label %172

159:                                              ; preds = %151
  %160 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %161 = load ptr, ptr @cfun, align 8, !tbaa !24
  %162 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %161) #9
  %163 = call i32 @add_double_with_sign(i64 noundef %121, i64 noundef %122, i64 noundef %153, i64 noundef %154, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 0) #9
  %164 = load i64, ptr %7, align 8, !tbaa !28
  %165 = load i64, ptr %8, align 8, !tbaa !28
  %166 = call ptr @immed_double_const(i64 noundef %164, i64 noundef %165, i32 noundef %1) #9
  %167 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %120, ptr noundef %166) #8
  %168 = call i32 @rtx_cost(ptr noundef %167, i32 noundef 23, i8 noundef zeroext %162) #9
  %169 = call i32 @rtx_cost(ptr noundef %160, i32 noundef 23, i8 noundef zeroext %162) #9
  %170 = icmp sgt i32 %168, %169
  %171 = select i1 %170, ptr null, ptr %167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %2554

172:                                              ; preds = %157, %88
  %173 = phi i32 [ %158, %157 ], [ %55, %88 ]
  %174 = trunc i32 %173 to i16
  switch i16 %174, label %192 [
    i16 30, label %175
    i16 32, label %175
  ]

175:                                              ; preds = %172, %172
  %176 = load i32, ptr %2, align 8
  %177 = and i32 %176, 65535
  %178 = icmp eq i32 %177, 63
  br i1 %178, label %179, label %192

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %181 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  %183 = load i32, ptr %182, align 8
  %184 = trunc i32 %183 to i16
  switch i16 %184, label %192 [
    i16 30, label %185
    i16 32, label %185
  ]

185:                                              ; preds = %179, %179
  %186 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %3) #8, !range !53
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %180, align 8, !tbaa !5
  %190 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %182) #8
  %191 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %189, ptr noundef %190) #8
  br label %2554

192:                                              ; preds = %179, %172, %185, %175
  switch i8 %21, label %193 [
    i8 8, label %195
    i8 9, label %195
    i8 11, label %195
    i8 17, label %195
  ]

193:                                              ; preds = %192
  %194 = load i32, ptr %2, align 8
  br label %216

195:                                              ; preds = %192, %192, %192, %192
  %196 = icmp eq i8 %89, 8
  br i1 %196, label %201, label %197

197:                                              ; preds = %195
  %198 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %199 = load i8, ptr %198, align 1, !tbaa !5
  %200 = zext i8 %199 to i32
  br label %201

201:                                              ; preds = %197, %195
  %202 = phi i32 [ %1, %195 ], [ %200, %197 ]
  %203 = add i32 %202, -38
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !24
  %207 = getelementptr inbounds %struct.real_format, ptr %206, i64 0, i32 10
  %208 = load i8, ptr %207, align 1, !tbaa !56
  %209 = icmp ne i8 %208, 0
  %210 = load i32, ptr @flag_rounding_math, align 4
  %211 = icmp ne i32 %210, 0
  %212 = select i1 %209, i1 %211, i1 false
  %213 = load i32, ptr %2, align 8
  br i1 %212, label %214, label %216

214:                                              ; preds = %201
  %215 = and i32 %213, 65535
  br label %233

216:                                              ; preds = %193, %201
  %217 = phi i32 [ %194, %193 ], [ %213, %201 ]
  %218 = and i32 %217, 65535
  %219 = icmp eq i32 %218, 52
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !5
  %223 = load i32, ptr %222, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 51
  br i1 %225, label %226, label %233

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !5
  %229 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !5
  %231 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %228, ptr noundef %230) #8
  %232 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %3, ptr noundef %231) #8
  br label %2554

233:                                              ; preds = %214, %220, %216
  %234 = phi i32 [ %215, %214 ], [ 52, %220 ], [ %218, %216 ]
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !8
  %238 = icmp ult i32 %237, 2
  %239 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %240 = icmp eq ptr %239, %5
  %241 = select i1 %238, i1 %240, i1 false
  br i1 %241, label %242, label %247

242:                                              ; preds = %233
  %243 = tail call ptr @reversed_comparison(ptr noundef nonnull %2, i32 noundef %1) #9
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %243, i32 noundef %1) #8
  br label %2554

247:                                              ; preds = %242, %233
  switch i8 %21, label %258 [
    i8 2, label %248
    i8 3, label %248
    i8 10, label %248
    i8 12, label %248
    i8 8, label %263
    i8 9, label %263
    i8 11, label %263
  ]

248:                                              ; preds = %247, %247, %247, %247
  %249 = tail call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef nonnull %2) #8, !range !53
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = tail call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef nonnull %3) #8, !range !53
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %251, %248
  %255 = tail call fastcc ptr @simplify_plus_minus(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %2554

257:                                              ; preds = %254, %251
  switch i8 %21, label %2553 [
    i8 8, label %263
    i8 9, label %263
    i8 11, label %263
  ]

258:                                              ; preds = %247
  %259 = icmp eq i8 %21, 17
  %260 = load i32, ptr @flag_associative_math, align 4
  %261 = icmp ne i32 %260, 0
  %262 = select i1 %259, i1 %261, i1 false
  br i1 %262, label %266, label %2553

263:                                              ; preds = %247, %247, %247, %257, %257, %257
  %264 = load i32, ptr @flag_associative_math, align 4, !tbaa !8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %2553, label %266

266:                                              ; preds = %258, %263
  %267 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %268 = icmp eq ptr %267, null
  br i1 %268, label %2553, label %2554

269:                                              ; preds = %6
  %270 = load i32, ptr %2, align 8
  %271 = trunc i32 %270 to i16
  switch i16 %271, label %2553 [
    i16 83, label %272
    i16 87, label %276
  ]

272:                                              ; preds = %269
  %273 = load i32, ptr %3, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 85
  br i1 %275, label %280, label %2553

276:                                              ; preds = %269
  %277 = load i32, ptr %3, align 8
  %278 = and i32 %277, 65535
  %279 = icmp eq i32 %278, 89
  br i1 %279, label %280, label %2553

280:                                              ; preds = %276, %272
  %281 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %282 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !5
  %284 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %285 = icmp eq ptr %283, %284
  br i1 %285, label %286, label %2553

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !5
  %289 = icmp eq ptr %288, %283
  br i1 %289, label %290, label %2553

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %292 = load ptr, ptr %281, align 8, !tbaa !5
  %293 = load ptr, ptr %291, align 8, !tbaa !5
  %294 = load i32, ptr %292, align 8
  %295 = and i32 %294, 65535
  %296 = icmp eq i32 %295, 37
  br i1 %296, label %297, label %2553

297:                                              ; preds = %290
  %298 = load i32, ptr %293, align 8
  %299 = and i32 %298, 65535
  %300 = icmp eq i32 %299, 37
  br i1 %300, label %301, label %2553

301:                                              ; preds = %297
  %302 = xor i32 %298, %294
  %303 = and i32 %302, 16711680
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %2553

305:                                              ; preds = %301
  %306 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %292) #8
  %307 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %293) #8
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %2553

309:                                              ; preds = %305
  %310 = lshr i32 %294, 16
  %311 = and i32 %310, 255
  %312 = zext nneg i32 %311 to i64
  %313 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !5
  %315 = icmp eq i8 %314, 1
  br i1 %315, label %316, label %2553

316:                                              ; preds = %309
  %317 = lshr i32 %298, 16
  %318 = and i32 %317, 255
  %319 = zext nneg i32 %318 to i64
  %320 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !5
  %322 = icmp eq i8 %321, 1
  br i1 %322, label %2554, label %2553

323:                                              ; preds = %6
  %324 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %355, label %326

326:                                              ; preds = %323
  %327 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %355

329:                                              ; preds = %326
  %330 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %331 = load i8, ptr %330, align 1, !tbaa !5
  switch i8 %331, label %351 [
    i8 8, label %332
    i8 9, label %332
    i8 11, label %332
    i8 17, label %332
  ]

332:                                              ; preds = %329, %329, %329, %329
  %333 = and i8 %331, -2
  %334 = icmp eq i8 %333, 8
  br i1 %334, label %339, label %335

335:                                              ; preds = %332
  %336 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %337 = load i8, ptr %336, align 1, !tbaa !5
  %338 = zext i8 %337 to i32
  br label %339

339:                                              ; preds = %335, %332
  %340 = phi i32 [ %1, %332 ], [ %338, %335 ]
  %341 = add i32 %340, -38
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !24
  %345 = getelementptr inbounds %struct.real_format, ptr %344, i64 0, i32 11
  %346 = load i8, ptr %345, align 2, !tbaa !29
  %347 = icmp eq i8 %346, 0
  %348 = load i32, ptr @flag_finite_math_only, align 4
  %349 = icmp ne i32 %348, 0
  %350 = select i1 %347, i1 true, i1 %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %329, %339
  %352 = sext i32 %1 to i64
  %353 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !24
  br label %2554

355:                                              ; preds = %339, %326, %323
  %356 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %357 = load i8, ptr %356, align 1, !tbaa !5
  switch i8 %357, label %377 [
    i8 8, label %358
    i8 9, label %358
    i8 11, label %358
    i8 17, label %358
  ]

358:                                              ; preds = %355, %355, %355, %355
  %359 = and i8 %357, -2
  %360 = icmp eq i8 %359, 8
  br i1 %360, label %365, label %361

361:                                              ; preds = %358
  %362 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %363 = load i8, ptr %362, align 1, !tbaa !5
  %364 = zext i8 %363 to i32
  br label %365

365:                                              ; preds = %361, %358
  %366 = phi i32 [ %1, %358 ], [ %364, %361 ]
  %367 = add i32 %366, -38
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !24
  %371 = getelementptr inbounds %struct.real_format, ptr %370, i64 0, i32 14
  %372 = load i8, ptr %371, align 1, !tbaa !31
  %373 = icmp ne i8 %372, 0
  %374 = load i32, ptr @flag_signed_zeros, align 4
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %373, i1 %375, i1 false
  br i1 %376, label %384, label %377

377:                                              ; preds = %355, %365
  %378 = sext i32 %1 to i64
  %379 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !24
  %381 = icmp eq ptr %380, %4
  br i1 %381, label %382, label %384

382:                                              ; preds = %377
  %383 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %3, i32 noundef %1) #8
  br label %2554

384:                                              ; preds = %365, %377
  %385 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !24
  %386 = icmp eq ptr %385, %4
  br i1 %386, label %387, label %389

387:                                              ; preds = %384
  %388 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %3, i32 noundef %1) #8
  br label %2554

389:                                              ; preds = %384
  switch i8 %357, label %427 [
    i8 8, label %390
    i8 9, label %390
    i8 11, label %390
    i8 17, label %390
  ]

390:                                              ; preds = %389, %389, %389, %389
  %391 = and i8 %357, -2
  %392 = icmp eq i8 %391, 8
  br i1 %392, label %397, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %395 = load i8, ptr %394, align 1, !tbaa !5
  %396 = zext i8 %395 to i32
  br label %397

397:                                              ; preds = %393, %390
  %398 = phi i32 [ %1, %390 ], [ %396, %393 ]
  %399 = add i32 %398, -38
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !24
  %403 = getelementptr inbounds %struct.real_format, ptr %402, i64 0, i32 14
  %404 = load i8, ptr %403, align 1, !tbaa !31
  %405 = icmp ne i8 %404, 0
  %406 = load i32, ptr @flag_signed_zeros, align 4
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %405, i1 %407, i1 false
  br i1 %408, label %409, label %427

409:                                              ; preds = %397
  switch i8 %357, label %427 [
    i8 8, label %410
    i8 9, label %410
    i8 11, label %410
    i8 17, label %410
  ]

410:                                              ; preds = %409, %409, %409, %409
  br i1 %392, label %415, label %411

411:                                              ; preds = %410
  %412 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %413 = load i8, ptr %412, align 1, !tbaa !5
  %414 = zext i8 %413 to i32
  br label %415

415:                                              ; preds = %411, %410
  %416 = phi i32 [ %1, %410 ], [ %414, %411 ]
  %417 = add i32 %416, -38
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !24
  %421 = getelementptr inbounds %struct.real_format, ptr %420, i64 0, i32 10
  %422 = load i8, ptr %421, align 1, !tbaa !56
  %423 = icmp ne i8 %422, 0
  %424 = load i32, ptr @flag_rounding_math, align 4
  %425 = icmp ne i32 %424, 0
  %426 = select i1 %423, i1 %425, i1 false
  br i1 %426, label %519, label %427

427:                                              ; preds = %409, %389, %415, %397
  %428 = sext i32 %1 to i64
  %429 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !24
  %431 = icmp eq ptr %430, %5
  br i1 %431, label %2554, label %432

432:                                              ; preds = %427
  %433 = and i8 %357, -2
  %434 = icmp eq i8 %433, 2
  br i1 %434, label %435, label %519

435:                                              ; preds = %432
  %436 = load i32, ptr %2, align 8
  %437 = trunc i32 %436 to i16
  switch i16 %437, label %465 [
    i16 51, label %460
    i16 52, label %438
    i16 65, label %448
  ]

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %440 = load ptr, ptr %439, align 8, !tbaa !5
  %441 = load i32, ptr %440, align 8
  %442 = and i32 %441, 65535
  %443 = icmp eq i32 %442, 30
  br i1 %443, label %444, label %465

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.rtx_def, ptr %440, i64 0, i32 1
  %446 = load i64, ptr %445, align 8, !tbaa !5
  %447 = ashr i64 %446, 63
  br label %460

448:                                              ; preds = %435
  %449 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !5
  %451 = load i32, ptr %450, align 8
  %452 = and i32 %451, 65535
  %453 = icmp eq i32 %452, 30
  br i1 %453, label %454, label %465

454:                                              ; preds = %448
  %455 = getelementptr inbounds %struct.rtx_def, ptr %450, i64 0, i32 1
  %456 = load i64, ptr %455, align 8, !tbaa !5
  %457 = icmp ult i64 %456, 64
  br i1 %457, label %458, label %465

458:                                              ; preds = %454
  %459 = shl nuw i64 1, %456
  br label %460

460:                                              ; preds = %435, %458, %444
  %461 = phi i64 [ %459, %458 ], [ %446, %444 ], [ -1, %435 ]
  %462 = phi i64 [ 0, %458 ], [ %447, %444 ], [ -1, %435 ]
  %463 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !5
  br label %465

465:                                              ; preds = %460, %435, %438, %454, %448
  %466 = phi ptr [ %2, %454 ], [ %2, %448 ], [ %2, %438 ], [ %2, %435 ], [ %464, %460 ]
  %467 = phi i64 [ 1, %454 ], [ 1, %448 ], [ 1, %438 ], [ 1, %435 ], [ %461, %460 ]
  %468 = phi i64 [ 0, %454 ], [ 0, %448 ], [ 0, %438 ], [ 0, %435 ], [ %462, %460 ]
  %469 = load i32, ptr %3, align 8
  %470 = trunc i32 %469 to i16
  switch i16 %470, label %500 [
    i16 51, label %495
    i16 52, label %471
    i16 65, label %483
  ]

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !5
  %474 = load i32, ptr %473, align 8
  %475 = and i32 %474, 65535
  %476 = icmp eq i32 %475, 30
  br i1 %476, label %477, label %500

477:                                              ; preds = %471
  %478 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1
  %479 = load i64, ptr %478, align 8, !tbaa !5
  %480 = sub nsw i64 0, %479
  %481 = icmp sgt i64 %479, 0
  %482 = sext i1 %481 to i64
  br label %495

483:                                              ; preds = %465
  %484 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !5
  %486 = load i32, ptr %485, align 8
  %487 = and i32 %486, 65535
  %488 = icmp eq i32 %487, 30
  br i1 %488, label %489, label %500

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.rtx_def, ptr %485, i64 0, i32 1
  %491 = load i64, ptr %490, align 8, !tbaa !5
  %492 = icmp ult i64 %491, 64
  br i1 %492, label %493, label %500

493:                                              ; preds = %489
  %494 = shl nsw i64 -1, %491
  br label %495

495:                                              ; preds = %465, %493, %477
  %496 = phi i64 [ %494, %493 ], [ %480, %477 ], [ 1, %465 ]
  %497 = phi i64 [ -1, %493 ], [ %482, %477 ], [ 0, %465 ]
  %498 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !5
  br label %500

500:                                              ; preds = %495, %465, %471, %489, %483
  %501 = phi ptr [ %3, %489 ], [ %3, %483 ], [ %3, %471 ], [ %3, %465 ], [ %499, %495 ]
  %502 = phi i64 [ -1, %489 ], [ -1, %483 ], [ -1, %471 ], [ -1, %465 ], [ %496, %495 ]
  %503 = phi i64 [ -1, %489 ], [ -1, %483 ], [ -1, %471 ], [ -1, %465 ], [ %497, %495 ]
  %504 = tail call i32 @rtx_equal_p(ptr noundef %466, ptr noundef %501) #9
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %519, label %506

506:                                              ; preds = %500
  %507 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %508 = load ptr, ptr @cfun, align 8, !tbaa !24
  %509 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %508) #9
  %510 = call i32 @add_double_with_sign(i64 noundef %467, i64 noundef %468, i64 noundef %502, i64 noundef %503, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext 0) #9
  %511 = load i64, ptr %9, align 8, !tbaa !28
  %512 = load i64, ptr %10, align 8, !tbaa !28
  %513 = call ptr @immed_double_const(i64 noundef %511, i64 noundef %512, i32 noundef %1) #9
  %514 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %466, ptr noundef %513) #8
  %515 = call i32 @rtx_cost(ptr noundef %514, i32 noundef 23, i8 noundef zeroext %509) #9
  %516 = call i32 @rtx_cost(ptr noundef %507, i32 noundef 23, i8 noundef zeroext %509) #9
  %517 = icmp sgt i32 %515, %516
  %518 = select i1 %517, ptr null, ptr %514
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  br label %2554

519:                                              ; preds = %500, %415, %432
  %520 = load i32, ptr %3, align 8
  %521 = and i32 %520, 65535
  %522 = icmp eq i32 %521, 51
  br i1 %522, label %523, label %527

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %525 = load ptr, ptr %524, align 8, !tbaa !5
  %526 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef %525) #8
  br label %2554

527:                                              ; preds = %519
  %528 = load i32, ptr %2, align 8
  %529 = and i32 %528, 65535
  %530 = icmp eq i32 %529, 51
  br i1 %530, label %531, label %542

531:                                              ; preds = %527
  %532 = trunc i32 %520 to i16
  switch i16 %532, label %542 [
    i16 30, label %533
    i16 32, label %533
  ]

533:                                              ; preds = %531, %531
  %534 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %1) #8
  %535 = icmp eq ptr %534, null
  br i1 %535, label %536, label %538

536:                                              ; preds = %533
  %537 = load i32, ptr %3, align 8
  br label %542

538:                                              ; preds = %533
  %539 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !5
  %541 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %534, ptr noundef %540) #8
  br label %2554

542:                                              ; preds = %536, %531, %527
  %543 = phi i32 [ %537, %536 ], [ %520, %531 ], [ %520, %527 ]
  %544 = trunc i32 %543 to i16
  switch i16 %544, label %575 [
    i16 30, label %545
    i16 61, label %552
  ]

545:                                              ; preds = %542
  %546 = load i32, ptr %2, align 8
  %547 = and i32 %546, 16711680
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %575, label %549

549:                                              ; preds = %545
  %550 = tail call fastcc ptr @neg_const_int(i32 noundef %1, ptr noundef nonnull %3) #8
  %551 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %550) #8
  br label %2554

552:                                              ; preds = %542
  %553 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !5
  %555 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef %554) #9
  %556 = icmp eq i32 %555, 0
  %557 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %558 = load ptr, ptr %557, align 8, !tbaa !5
  br i1 %556, label %565, label %559

559:                                              ; preds = %552
  %560 = load i32, ptr %558, align 8
  %561 = lshr i32 %560, 16
  %562 = and i32 %561, 255
  %563 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %558, i32 noundef %562) #8
  %564 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %563) #8
  br label %2554

565:                                              ; preds = %552
  %566 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef %558) #9
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %575, label %568

568:                                              ; preds = %565
  %569 = load ptr, ptr %553, align 8, !tbaa !5
  %570 = load i32, ptr %569, align 8
  %571 = lshr i32 %570, 16
  %572 = and i32 %571, 255
  %573 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %569, i32 noundef %572) #8
  %574 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %573) #8
  br label %2554

575:                                              ; preds = %542, %545, %565
  %576 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !24
  %577 = icmp eq ptr %576, %4
  br i1 %577, label %578, label %588

578:                                              ; preds = %575
  %579 = load i32, ptr %3, align 8
  %580 = and i32 %579, 65535
  %581 = zext nneg i32 %580 to i64
  %582 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %581
  %583 = load i32, ptr %582, align 4, !tbaa !8
  %584 = icmp ult i32 %583, 2
  br i1 %584, label %585, label %588

585:                                              ; preds = %578
  %586 = tail call ptr @reversed_comparison(ptr noundef nonnull %3, i32 noundef %1) #9
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %2554

588:                                              ; preds = %585, %578, %575
  switch i8 %357, label %608 [
    i8 8, label %589
    i8 9, label %589
    i8 11, label %589
    i8 17, label %589
  ]

589:                                              ; preds = %588, %588, %588, %588
  %590 = and i8 %357, -2
  %591 = icmp eq i8 %590, 8
  br i1 %591, label %596, label %592

592:                                              ; preds = %589
  %593 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %594 = load i8, ptr %593, align 1, !tbaa !5
  %595 = zext i8 %594 to i32
  br label %596

596:                                              ; preds = %592, %589
  %597 = phi i32 [ %1, %589 ], [ %595, %592 ]
  %598 = add i32 %597, -38
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %599
  %601 = load ptr, ptr %600, align 8, !tbaa !24
  %602 = getelementptr inbounds %struct.real_format, ptr %601, i64 0, i32 10
  %603 = load i8, ptr %602, align 1, !tbaa !56
  %604 = icmp ne i8 %603, 0
  %605 = load i32, ptr @flag_rounding_math, align 4
  %606 = icmp ne i32 %605, 0
  %607 = select i1 %604, i1 %606, i1 false
  br i1 %607, label %625, label %608

608:                                              ; preds = %588, %596
  %609 = load i32, ptr %3, align 8
  %610 = and i32 %609, 65535
  %611 = icmp eq i32 %610, 52
  br i1 %611, label %612, label %625

612:                                              ; preds = %608
  %613 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !5
  %615 = load i32, ptr %614, align 8
  %616 = and i32 %615, 65535
  %617 = icmp eq i32 %616, 51
  br i1 %617, label %618, label %625

618:                                              ; preds = %612
  %619 = getelementptr inbounds %struct.rtx_def, ptr %614, i64 0, i32 1
  %620 = load ptr, ptr %619, align 8, !tbaa !5
  %621 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %622 = load ptr, ptr %621, align 8, !tbaa !5
  %623 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %620, ptr noundef %622) #8
  %624 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %623, ptr noundef nonnull %2) #8
  br label %2554

625:                                              ; preds = %596, %612, %608
  switch i8 %357, label %645 [
    i8 8, label %626
    i8 9, label %626
    i8 11, label %626
    i8 17, label %626
  ]

626:                                              ; preds = %625, %625, %625, %625
  %627 = and i8 %357, -2
  %628 = icmp eq i8 %627, 8
  br i1 %628, label %633, label %629

629:                                              ; preds = %626
  %630 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %631 = load i8, ptr %630, align 1, !tbaa !5
  %632 = zext i8 %631 to i32
  br label %633

633:                                              ; preds = %629, %626
  %634 = phi i32 [ %1, %626 ], [ %632, %629 ]
  %635 = add i32 %634, -38
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %636
  %638 = load ptr, ptr %637, align 8, !tbaa !24
  %639 = getelementptr inbounds %struct.real_format, ptr %638, i64 0, i32 10
  %640 = load i8, ptr %639, align 1, !tbaa !56
  %641 = icmp ne i8 %640, 0
  %642 = load i32, ptr @flag_rounding_math, align 4
  %643 = icmp ne i32 %642, 0
  %644 = select i1 %641, i1 %643, i1 false
  br i1 %644, label %663, label %645

645:                                              ; preds = %625, %633
  %646 = load i32, ptr %3, align 8
  %647 = and i32 %646, 65535
  %648 = icmp eq i32 %647, 52
  br i1 %648, label %649, label %663

649:                                              ; preds = %645
  %650 = load i32, ptr %2, align 8
  %651 = and i32 %650, 65535
  %652 = icmp eq i32 %651, 51
  br i1 %652, label %653, label %663

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %655 = load ptr, ptr %654, align 8, !tbaa !5
  %656 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %655, i32 noundef %1) #8
  %657 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %658 = load ptr, ptr %657, align 8, !tbaa !5
  %659 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %656, ptr noundef %658) #8
  %660 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %661 = load ptr, ptr %660, align 8, !tbaa !5
  %662 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %659, ptr noundef %661) #8
  br label %2554

663:                                              ; preds = %633, %649, %645
  switch i8 %357, label %2553 [
    i8 2, label %664
    i8 3, label %664
    i8 10, label %664
    i8 12, label %664
  ]

664:                                              ; preds = %663, %663, %663, %663
  %665 = tail call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef nonnull %2) #8, !range !53
  %666 = icmp eq i8 %665, 0
  br i1 %666, label %667, label %670

667:                                              ; preds = %664
  %668 = tail call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef nonnull %3) #8, !range !53
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %2553, label %670

670:                                              ; preds = %667, %664
  %671 = tail call fastcc ptr @simplify_plus_minus(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %672 = icmp eq ptr %671, null
  br i1 %672, label %2553, label %2554

673:                                              ; preds = %6
  %674 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !24
  %675 = icmp eq ptr %674, %5
  br i1 %675, label %676, label %678

676:                                              ; preds = %673
  %677 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %2, i32 noundef %1) #8
  br label %2554

678:                                              ; preds = %673
  %679 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %680 = load i8, ptr %679, align 1, !tbaa !5
  switch i8 %680, label %718 [
    i8 8, label %681
    i8 9, label %681
    i8 11, label %681
    i8 17, label %681
  ]

681:                                              ; preds = %678, %678, %678, %678
  %682 = and i8 %680, -2
  %683 = icmp eq i8 %682, 8
  br i1 %683, label %688, label %684

684:                                              ; preds = %681
  %685 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %686 = load i8, ptr %685, align 1, !tbaa !5
  %687 = zext i8 %686 to i32
  br label %688

688:                                              ; preds = %684, %681
  %689 = phi i32 [ %1, %681 ], [ %687, %684 ]
  %690 = add i32 %689, -38
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %691
  %693 = load ptr, ptr %692, align 8, !tbaa !24
  %694 = getelementptr inbounds %struct.real_format, ptr %693, i64 0, i32 11
  %695 = load i8, ptr %694, align 2, !tbaa !29
  %696 = icmp eq i8 %695, 0
  %697 = load i32, ptr @flag_finite_math_only, align 4
  %698 = icmp ne i32 %697, 0
  %699 = select i1 %696, i1 true, i1 %698
  br i1 %699, label %700, label %726

700:                                              ; preds = %688
  switch i8 %680, label %718 [
    i8 8, label %701
    i8 9, label %701
    i8 11, label %701
    i8 17, label %701
  ]

701:                                              ; preds = %700, %700, %700, %700
  br i1 %683, label %706, label %702

702:                                              ; preds = %701
  %703 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %704 = load i8, ptr %703, align 1, !tbaa !5
  %705 = zext i8 %704 to i32
  br label %706

706:                                              ; preds = %702, %701
  %707 = phi i32 [ %1, %701 ], [ %705, %702 ]
  %708 = add i32 %707, -38
  %709 = zext i32 %708 to i64
  %710 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %709
  %711 = load ptr, ptr %710, align 8, !tbaa !24
  %712 = getelementptr inbounds %struct.real_format, ptr %711, i64 0, i32 14
  %713 = load i8, ptr %712, align 1, !tbaa !31
  %714 = icmp ne i8 %713, 0
  %715 = load i32, ptr @flag_signed_zeros, align 4
  %716 = icmp ne i32 %715, 0
  %717 = select i1 %714, i1 %716, i1 false
  br i1 %717, label %726, label %718

718:                                              ; preds = %678, %700, %706
  %719 = sext i32 %1 to i64
  %720 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %719
  %721 = load ptr, ptr %720, align 8, !tbaa !24
  %722 = icmp eq ptr %721, %5
  br i1 %722, label %723, label %726

723:                                              ; preds = %718
  %724 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %2554, label %726

726:                                              ; preds = %706, %688, %723, %718
  %727 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !8
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %749, label %729

729:                                              ; preds = %726
  switch i8 %680, label %749 [
    i8 8, label %730
    i8 9, label %730
    i8 11, label %730
    i8 17, label %730
  ]

730:                                              ; preds = %729, %729, %729, %729
  %731 = and i8 %680, -2
  %732 = icmp eq i8 %731, 8
  br i1 %732, label %737, label %733

733:                                              ; preds = %730
  %734 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %735 = load i8, ptr %734, align 1, !tbaa !5
  %736 = zext i8 %735 to i32
  br label %737

737:                                              ; preds = %733, %730
  %738 = phi i32 [ %1, %730 ], [ %736, %733 ]
  %739 = add i32 %738, -38
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %740
  %742 = load ptr, ptr %741, align 8, !tbaa !24
  %743 = getelementptr inbounds %struct.real_format, ptr %742, i64 0, i32 11
  %744 = load i8, ptr %743, align 2, !tbaa !29
  %745 = icmp eq i8 %744, 0
  %746 = load i32, ptr @flag_finite_math_only, align 4
  %747 = icmp ne i32 %746, 0
  %748 = select i1 %745, i1 true, i1 %747
  br i1 %748, label %749, label %754

749:                                              ; preds = %729, %737, %726
  %750 = sext i32 %1 to i64
  %751 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %750
  %752 = load ptr, ptr %751, align 8, !tbaa !24
  %753 = icmp eq ptr %752, %5
  br i1 %753, label %2554, label %754

754:                                              ; preds = %737, %749
  %755 = load i32, ptr %5, align 8
  %756 = and i32 %755, 65535
  %757 = icmp eq i32 %756, 30
  br i1 %757, label %758, label %771

758:                                              ; preds = %754
  %759 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %760 = load i64, ptr %759, align 8, !tbaa !5
  %761 = tail call i32 @exact_log2(i64 noundef %760) #9
  %762 = sext i32 %761 to i64
  %763 = icmp sgt i32 %761, -1
  br i1 %763, label %764, label %771

764:                                              ; preds = %758
  %765 = icmp ult i8 %16, 9
  %766 = icmp ne i32 %761, 63
  %767 = or i1 %765, %766
  br i1 %767, label %768, label %771

768:                                              ; preds = %764
  %769 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %762) #9
  %770 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef %2, ptr noundef %769) #8
  br label %2554

771:                                              ; preds = %764, %758, %754
  %772 = load i32, ptr %5, align 8
  %773 = and i32 %772, 65535
  %774 = icmp eq i32 %773, 32
  br i1 %774, label %775, label %805

775:                                              ; preds = %771
  %776 = lshr i32 %772, 16
  %777 = and i32 %776, 255
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %784, label %779

779:                                              ; preds = %775
  %780 = zext nneg i32 %777 to i64
  %781 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %780
  %782 = load i8, ptr %781, align 1, !tbaa !5
  %783 = icmp eq i8 %782, 2
  br i1 %783, label %784, label %805

784:                                              ; preds = %779, %775
  %785 = load i32, ptr %2, align 8
  %786 = lshr i32 %785, 16
  %787 = and i32 %786, 255
  %788 = icmp eq i32 %787, %1
  br i1 %788, label %789, label %805

789:                                              ; preds = %784
  %790 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %791 = load i64, ptr %790, align 8, !tbaa !5
  %792 = icmp eq i64 %791, 0
  br i1 %792, label %793, label %805

793:                                              ; preds = %789
  %794 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %795 = load i64, ptr %794, align 8, !tbaa !5
  %796 = tail call i32 @exact_log2(i64 noundef %795) #9
  %797 = icmp sgt i32 %796, -1
  br i1 %797, label %800, label %798

798:                                              ; preds = %793
  %799 = load i32, ptr %5, align 8
  br label %805

800:                                              ; preds = %793
  %801 = add nuw i32 %796, 64
  %802 = zext i32 %801 to i64
  %803 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %802) #9
  %804 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %803) #8
  br label %2554

805:                                              ; preds = %798, %789, %784, %779, %771
  %806 = phi i32 [ %799, %798 ], [ %772, %789 ], [ %772, %784 ], [ %772, %779 ], [ %772, %771 ]
  %807 = and i32 %806, 65535
  %808 = icmp eq i32 %807, 32
  br i1 %808, label %809, label %862

809:                                              ; preds = %805
  %810 = lshr i32 %806, 16
  %811 = and i32 %810, 255
  %812 = zext nneg i32 %811 to i64
  %813 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %812
  %814 = load i8, ptr %813, align 1, !tbaa !5
  %815 = and i8 %814, -2
  %816 = icmp ne i8 %815, 8
  %817 = icmp eq i8 %814, 9
  %818 = or i1 %817, %816
  br i1 %818, label %862, label %819

819:                                              ; preds = %809
  %820 = load i32, ptr %2, align 8
  %821 = lshr i32 %820, 16
  %822 = and i32 %821, 255
  %823 = icmp eq i32 %822, %1
  br i1 %823, label %824, label %862

824:                                              ; preds = %819
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  %825 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %825, i64 32, i1 false), !tbaa.struct !43
  %826 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %11, ptr noundef nonnull @dconst2) #9
  %827 = icmp eq i8 %826, 0
  br i1 %827, label %831, label %828

828:                                              ; preds = %824
  %829 = call ptr @copy_rtx(ptr noundef nonnull %2) #9
  %830 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %829) #8
  br label %860

831:                                              ; preds = %824
  %832 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !8
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %854, label %834

834:                                              ; preds = %831
  switch i8 %680, label %854 [
    i8 8, label %835
    i8 9, label %835
    i8 11, label %835
    i8 17, label %835
  ]

835:                                              ; preds = %834, %834, %834, %834
  %836 = and i8 %680, -2
  %837 = icmp eq i8 %836, 8
  br i1 %837, label %842, label %838

838:                                              ; preds = %835
  %839 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %840 = load i8, ptr %839, align 1, !tbaa !5
  %841 = zext i8 %840 to i32
  br label %842

842:                                              ; preds = %838, %835
  %843 = phi i32 [ %1, %835 ], [ %841, %838 ]
  %844 = add nsw i32 %843, -38
  %845 = zext i32 %844 to i64
  %846 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %845
  %847 = load ptr, ptr %846, align 8, !tbaa !24
  %848 = getelementptr inbounds %struct.real_format, ptr %847, i64 0, i32 11
  %849 = load i8, ptr %848, align 2, !tbaa !29
  %850 = icmp eq i8 %849, 0
  %851 = load i32, ptr @flag_finite_math_only, align 4
  %852 = icmp ne i32 %851, 0
  %853 = select i1 %850, i1 true, i1 %852
  br i1 %853, label %854, label %859

854:                                              ; preds = %834, %842, %831
  %855 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %11, ptr noundef nonnull @dconstm1) #9
  %856 = icmp eq i8 %855, 0
  br i1 %856, label %859, label %857

857:                                              ; preds = %854
  %858 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %1) #8
  br label %860

859:                                              ; preds = %842, %854
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  br label %862

860:                                              ; preds = %857, %828
  %861 = phi ptr [ %830, %828 ], [ %858, %857 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  br label %2554

862:                                              ; preds = %859, %809, %819, %805
  switch i8 %680, label %913 [
    i8 8, label %863
    i8 9, label %863
    i8 11, label %863
    i8 17, label %863
  ]

863:                                              ; preds = %862, %862, %862, %862
  %864 = load i32, ptr %2, align 8
  %865 = and i32 %864, 65535
  %866 = icmp eq i32 %865, 51
  br i1 %866, label %867, label %886

867:                                              ; preds = %863
  %868 = load i32, ptr %3, align 8
  %869 = and i32 %868, 65535
  %870 = icmp eq i32 %869, 51
  br i1 %870, label %871, label %886

871:                                              ; preds = %867
  %872 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %873 = load ptr, ptr %872, align 8, !tbaa !5
  %874 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %875 = load ptr, ptr %874, align 8, !tbaa !5
  %876 = call i32 @rtx_equal_p(ptr noundef %873, ptr noundef %875) #9
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %886, label %878

878:                                              ; preds = %871
  %879 = load ptr, ptr %872, align 8, !tbaa !5
  %880 = call i32 @side_effects_p(ptr noundef %879) #9
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %886

882:                                              ; preds = %878
  %883 = load ptr, ptr %872, align 8, !tbaa !5
  %884 = load ptr, ptr %874, align 8, !tbaa !5
  %885 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %883, ptr noundef %884) #8
  br label %2554

886:                                              ; preds = %878, %871, %867, %863
  %887 = and i8 %680, -2
  %888 = icmp eq i8 %887, 8
  br i1 %888, label %889, label %912

889:                                              ; preds = %886
  %890 = load i32, ptr %2, align 8
  %891 = and i32 %890, 65535
  %892 = icmp eq i32 %891, 111
  br i1 %892, label %893, label %912

893:                                              ; preds = %889
  %894 = load i32, ptr %3, align 8
  %895 = and i32 %894, 65535
  %896 = icmp eq i32 %895, 111
  br i1 %896, label %897, label %912

897:                                              ; preds = %893
  %898 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %899 = load ptr, ptr %898, align 8, !tbaa !5
  %900 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %901 = load ptr, ptr %900, align 8, !tbaa !5
  %902 = call i32 @rtx_equal_p(ptr noundef %899, ptr noundef %901) #9
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %912, label %904

904:                                              ; preds = %897
  %905 = load ptr, ptr %898, align 8, !tbaa !5
  %906 = call i32 @side_effects_p(ptr noundef %905) #9
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %912

908:                                              ; preds = %904
  %909 = load ptr, ptr %898, align 8, !tbaa !5
  %910 = load ptr, ptr %900, align 8, !tbaa !5
  %911 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %909, ptr noundef %910) #8
  br label %2554

912:                                              ; preds = %886, %904, %897, %893, %889
  switch i8 %680, label %913 [
    i8 8, label %918
    i8 9, label %918
    i8 11, label %918
  ]

913:                                              ; preds = %862, %912
  %914 = icmp ne i8 %680, 17
  %915 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %916 = icmp ne i32 %915, 0
  %917 = select i1 %914, i1 true, i1 %916
  br i1 %917, label %921, label %2553

918:                                              ; preds = %912, %912, %912
  %919 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !8
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %2553, label %921

921:                                              ; preds = %918, %913
  %922 = call fastcc ptr @simplify_associative_operation(i32 noundef 52, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %923 = icmp eq ptr %922, null
  br i1 %923, label %2553, label %2554

924:                                              ; preds = %6
  %925 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %926 = icmp eq ptr %925, %5
  br i1 %926, label %2554, label %927

927:                                              ; preds = %924
  %928 = load i32, ptr %5, align 8
  %929 = and i32 %928, 65535
  %930 = icmp eq i32 %929, 30
  br i1 %930, label %931, label %938

931:                                              ; preds = %927
  %932 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %933 = load i64, ptr %932, align 8, !tbaa !5
  %934 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %935 = load i64, ptr %934, align 8, !tbaa !28
  %936 = and i64 %935, %933
  %937 = icmp eq i64 %936, %935
  br i1 %937, label %2554, label %938

938:                                              ; preds = %931, %927
  %939 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef nonnull %5) #9
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %944, label %941

941:                                              ; preds = %938
  %942 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %2554, label %944

944:                                              ; preds = %941, %938
  %945 = load i32, ptr %2, align 8
  %946 = and i32 %945, 65535
  %947 = icmp eq i32 %946, 64
  br i1 %947, label %948, label %953

948:                                              ; preds = %944
  %949 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %950 = load ptr, ptr %949, align 8, !tbaa !5
  %951 = tail call i32 @rtx_equal_p(ptr noundef %950, ptr noundef %3) #9
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %953, label %962

953:                                              ; preds = %948, %944
  %954 = load i32, ptr %3, align 8
  %955 = and i32 %954, 65535
  %956 = icmp eq i32 %955, 64
  br i1 %956, label %957, label %972

957:                                              ; preds = %953
  %958 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %959 = load ptr, ptr %958, align 8, !tbaa !5
  %960 = tail call i32 @rtx_equal_p(ptr noundef %959, ptr noundef nonnull %2) #9
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %972, label %962

962:                                              ; preds = %957, %948
  %963 = tail call i32 @side_effects_p(ptr noundef nonnull %2) #9
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %965, label %972

965:                                              ; preds = %962
  %966 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %967 = load i8, ptr %966, align 1, !tbaa !5
  %968 = and i8 %967, -2
  %969 = icmp eq i8 %968, 2
  br i1 %969, label %970, label %972

970:                                              ; preds = %965
  %971 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !24
  br label %2554

972:                                              ; preds = %965, %962, %957, %953
  %973 = load i32, ptr %3, align 8
  %974 = and i32 %973, 65535
  %975 = icmp eq i32 %974, 30
  br i1 %975, label %976, label %986

976:                                              ; preds = %972
  %977 = load i8, ptr %15, align 1, !tbaa !5
  %978 = icmp ult i8 %977, 9
  br i1 %978, label %979, label %986

979:                                              ; preds = %976
  %980 = tail call i64 @nonzero_bits(ptr noundef nonnull %2, i32 noundef %1) #9
  %981 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %982 = load i64, ptr %981, align 8, !tbaa !5
  %983 = xor i64 %982, -1
  %984 = and i64 %980, %983
  %985 = icmp eq i64 %984, 0
  br i1 %985, label %2554, label %986

986:                                              ; preds = %979, %976, %972
  %987 = load i32, ptr %2, align 8
  %988 = and i32 %987, 65535
  %989 = icmp eq i32 %988, 61
  br i1 %989, label %990, label %1033

990:                                              ; preds = %986
  %991 = load i32, ptr %5, align 8
  %992 = and i32 %991, 65535
  %993 = icmp eq i32 %992, 30
  br i1 %993, label %994, label %1033

994:                                              ; preds = %990
  %995 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %996 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %997 = load ptr, ptr %996, align 8, !tbaa !5
  %998 = load i32, ptr %997, align 8
  %999 = and i32 %998, 65535
  %1000 = icmp eq i32 %999, 30
  br i1 %1000, label %1001, label %1033

1001:                                             ; preds = %994
  %1002 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1003 = load i64, ptr %1002, align 8, !tbaa !28
  %1004 = getelementptr inbounds %struct.rtx_def, ptr %997, i64 0, i32 1
  %1005 = load i64, ptr %1004, align 8, !tbaa !5
  %1006 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1007 = load i64, ptr %1006, align 8, !tbaa !5
  %1008 = and i64 %1007, %1005
  %1009 = icmp eq i64 %1008, %1005
  br i1 %1009, label %1010, label %1014

1010:                                             ; preds = %1001
  %1011 = load ptr, ptr %995, align 8, !tbaa !5
  %1012 = tail call i32 @side_effects_p(ptr noundef %1011) #9
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %2554, label %1014

1014:                                             ; preds = %1010, %1001
  %1015 = or i64 %1007, %1005
  %1016 = and i64 %1015, %1003
  %1017 = icmp eq i64 %1016, %1003
  br i1 %1017, label %1018, label %1021

1018:                                             ; preds = %1014
  %1019 = load ptr, ptr %995, align 8, !tbaa !5
  %1020 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1019, ptr noundef nonnull %3) #8
  br label %2554

1021:                                             ; preds = %1014
  %1022 = and i64 %1008, %1003
  %1023 = icmp eq i64 %1022, 0
  br i1 %1023, label %1024, label %1026

1024:                                             ; preds = %1021
  %1025 = load i32, ptr %2, align 8
  br label %1033

1026:                                             ; preds = %1021
  %1027 = xor i64 %1007, -1
  %1028 = and i64 %1005, %1027
  %1029 = load ptr, ptr %995, align 8, !tbaa !5
  %1030 = tail call ptr @gen_int_mode(i64 noundef %1028, i32 noundef %1) #9
  %1031 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1029, ptr noundef %1030) #8
  %1032 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1031, ptr noundef nonnull %3) #8
  br label %2554

1033:                                             ; preds = %1024, %994, %990, %986
  %1034 = phi i32 [ %1025, %1024 ], [ %987, %994 ], [ %987, %990 ], [ %987, %986 ]
  %1035 = and i32 %1034, 65535
  %1036 = icmp eq i32 %1035, 61
  br i1 %1036, label %1037, label %1056

1037:                                             ; preds = %1033
  %1038 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1039 = load ptr, ptr %1038, align 8, !tbaa !5
  %1040 = tail call i32 @rtx_equal_p(ptr noundef %1039, ptr noundef nonnull %3) #9
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1047

1042:                                             ; preds = %1037
  %1043 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1044 = load ptr, ptr %1043, align 8, !tbaa !5
  %1045 = tail call i32 @rtx_equal_p(ptr noundef %1044, ptr noundef nonnull %3) #9
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1056, label %1047

1047:                                             ; preds = %1042, %1037
  %1048 = load ptr, ptr %1038, align 8, !tbaa !5
  %1049 = tail call i32 @side_effects_p(ptr noundef %1048) #9
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1056

1051:                                             ; preds = %1047
  %1052 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1053 = load ptr, ptr %1052, align 8, !tbaa !5
  %1054 = tail call i32 @side_effects_p(ptr noundef %1053) #9
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %2554, label %1056

1056:                                             ; preds = %1051, %1047, %1042, %1033
  %1057 = load i32, ptr %3, align 8
  %1058 = trunc i32 %1057 to i16
  switch i16 %1058, label %1059 [
    i16 65, label %1061
    i16 39, label %1061
  ]

1059:                                             ; preds = %1056
  %1060 = load i32, ptr %2, align 8
  br label %1061

1061:                                             ; preds = %1056, %1056, %1059
  %1062 = phi i32 [ %1060, %1059 ], [ %1057, %1056 ], [ %1057, %1056 ]
  %1063 = phi ptr [ %3, %1059 ], [ %2, %1056 ], [ %2, %1056 ]
  %1064 = phi ptr [ %2, %1059 ], [ %3, %1056 ], [ %3, %1056 ]
  %1065 = and i32 %1062, 65535
  %1066 = icmp eq i32 %1065, 65
  br i1 %1066, label %1067, label %1103

1067:                                             ; preds = %1061
  %1068 = load i32, ptr %1063, align 8
  %1069 = and i32 %1068, 65535
  %1070 = icmp eq i32 %1069, 68
  br i1 %1070, label %1071, label %1103

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds %struct.rtx_def, ptr %1064, i64 0, i32 1
  %1073 = load ptr, ptr %1072, align 8, !tbaa !5
  %1074 = getelementptr inbounds %struct.rtx_def, ptr %1063, i64 0, i32 1
  %1075 = load ptr, ptr %1074, align 8, !tbaa !5
  %1076 = tail call i32 @rtx_equal_p(ptr noundef %1073, ptr noundef %1075) #9
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1103, label %1078

1078:                                             ; preds = %1071
  %1079 = getelementptr inbounds %struct.rtx_def, ptr %1064, i64 0, i32 1, i32 0, i32 0, i64 1
  %1080 = load ptr, ptr %1079, align 8, !tbaa !5
  %1081 = load i32, ptr %1080, align 8
  %1082 = and i32 %1081, 65535
  %1083 = icmp eq i32 %1082, 30
  br i1 %1083, label %1084, label %1103

1084:                                             ; preds = %1078
  %1085 = getelementptr inbounds %struct.rtx_def, ptr %1063, i64 0, i32 1, i32 0, i32 0, i64 1
  %1086 = load ptr, ptr %1085, align 8, !tbaa !5
  %1087 = load i32, ptr %1086, align 8
  %1088 = and i32 %1087, 65535
  %1089 = icmp eq i32 %1088, 30
  br i1 %1089, label %1090, label %1103

1090:                                             ; preds = %1084
  %1091 = getelementptr inbounds %struct.rtx_def, ptr %1080, i64 0, i32 1
  %1092 = load i64, ptr %1091, align 8, !tbaa !5
  %1093 = getelementptr inbounds %struct.rtx_def, ptr %1086, i64 0, i32 1
  %1094 = load i64, ptr %1093, align 8, !tbaa !5
  %1095 = add nsw i64 %1094, %1092
  %1096 = load i8, ptr %15, align 1, !tbaa !5
  %1097 = zext i8 %1096 to i64
  %1098 = shl nuw nsw i64 %1097, 3
  %1099 = icmp eq i64 %1095, %1098
  br i1 %1099, label %1100, label %1103

1100:                                             ; preds = %1090
  %1101 = load ptr, ptr %1074, align 8, !tbaa !5
  %1102 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %1, ptr noundef %1101, ptr noundef nonnull %1080) #9
  br label %2554

1103:                                             ; preds = %1090, %1084, %1078, %1071, %1067, %1061
  %1104 = load i32, ptr %1064, align 8
  %1105 = and i32 %1104, 65535
  %1106 = icmp eq i32 %1105, 39
  br i1 %1106, label %1107, label %1178

1107:                                             ; preds = %1103
  %1108 = getelementptr inbounds %struct.rtx_def, ptr %1064, i64 0, i32 1
  %1109 = load ptr, ptr %1108, align 8, !tbaa !5
  %1110 = load i32, ptr %1109, align 8
  %1111 = and i32 %1110, 65535
  %1112 = icmp eq i32 %1111, 65
  br i1 %1112, label %1113, label %1178

1113:                                             ; preds = %1107
  %1114 = load i32, ptr %1063, align 8
  %1115 = and i32 %1114, 65535
  %1116 = icmp eq i32 %1115, 68
  br i1 %1116, label %1117, label %1178

1117:                                             ; preds = %1113
  %1118 = getelementptr inbounds %struct.rtx_def, ptr %1063, i64 0, i32 1
  %1119 = load ptr, ptr %1118, align 8, !tbaa !5
  %1120 = load i32, ptr %1119, align 8
  %1121 = and i32 %1120, 65535
  %1122 = icmp eq i32 %1121, 39
  br i1 %1122, label %1123, label %1178

1123:                                             ; preds = %1117
  %1124 = lshr i32 %1104, 16
  %1125 = and i32 %1124, 255
  %1126 = lshr i32 %1120, 16
  %1127 = and i32 %1126, 255
  %1128 = icmp eq i32 %1125, %1127
  br i1 %1128, label %1129, label %1178

1129:                                             ; preds = %1123
  %1130 = getelementptr inbounds %struct.rtx_def, ptr %1064, i64 0, i32 1, i32 0, i32 0, i64 1
  %1131 = load i32, ptr %1130, align 8, !tbaa !5
  %1132 = getelementptr inbounds %struct.rtx_def, ptr %1119, i64 0, i32 1
  %1133 = getelementptr inbounds %struct.rtx_def, ptr %1119, i64 0, i32 1, i32 0, i32 0, i64 1
  %1134 = load i32, ptr %1133, align 8, !tbaa !5
  %1135 = icmp eq i32 %1131, %1134
  br i1 %1135, label %1136, label %1178

1136:                                             ; preds = %1129
  %1137 = zext nneg i32 %1125 to i64
  %1138 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1137
  %1139 = load i8, ptr %1138, align 1, !tbaa !5
  %1140 = lshr i32 %1110, 16
  %1141 = and i32 %1140, 255
  %1142 = zext nneg i32 %1141 to i64
  %1143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1142
  %1144 = load i8, ptr %1143, align 1, !tbaa !5
  %1145 = icmp ult i8 %1139, %1144
  br i1 %1145, label %1146, label %1178

1146:                                             ; preds = %1136
  %1147 = getelementptr inbounds %struct.rtx_def, ptr %1109, i64 0, i32 1
  %1148 = load ptr, ptr %1147, align 8, !tbaa !5
  %1149 = load ptr, ptr %1132, align 8, !tbaa !5
  %1150 = tail call i32 @rtx_equal_p(ptr noundef %1148, ptr noundef %1149) #9
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1178, label %1152

1152:                                             ; preds = %1146
  %1153 = load ptr, ptr %1108, align 8, !tbaa !5
  %1154 = getelementptr inbounds %struct.rtx_def, ptr %1153, i64 0, i32 1, i32 0, i32 0, i64 1
  %1155 = load ptr, ptr %1154, align 8, !tbaa !5
  %1156 = load i32, ptr %1155, align 8
  %1157 = and i32 %1156, 65535
  %1158 = icmp eq i32 %1157, 30
  br i1 %1158, label %1159, label %1178

1159:                                             ; preds = %1152
  %1160 = getelementptr inbounds %struct.rtx_def, ptr %1063, i64 0, i32 1, i32 0, i32 0, i64 1
  %1161 = load ptr, ptr %1160, align 8, !tbaa !5
  %1162 = load i32, ptr %1161, align 8
  %1163 = and i32 %1162, 65535
  %1164 = icmp eq i32 %1163, 30
  br i1 %1164, label %1165, label %1178

1165:                                             ; preds = %1159
  %1166 = getelementptr inbounds %struct.rtx_def, ptr %1155, i64 0, i32 1
  %1167 = load i64, ptr %1166, align 8, !tbaa !5
  %1168 = getelementptr inbounds %struct.rtx_def, ptr %1161, i64 0, i32 1
  %1169 = load i64, ptr %1168, align 8, !tbaa !5
  %1170 = add nsw i64 %1169, %1167
  %1171 = load i8, ptr %15, align 1, !tbaa !5
  %1172 = zext i8 %1171 to i64
  %1173 = shl nuw nsw i64 %1172, 3
  %1174 = icmp eq i64 %1170, %1173
  br i1 %1174, label %1175, label %1178

1175:                                             ; preds = %1165
  %1176 = load ptr, ptr %1118, align 8, !tbaa !5
  %1177 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %1, ptr noundef %1176, ptr noundef nonnull %1155) #9
  br label %2554

1178:                                             ; preds = %1165, %1159, %1152, %1146, %1136, %1129, %1123, %1117, %1113, %1107, %1103
  %1179 = load i32, ptr %3, align 8
  %1180 = and i32 %1179, 65535
  %1181 = icmp eq i32 %1180, 30
  br i1 %1181, label %1182, label %1214

1182:                                             ; preds = %1178
  %1183 = load i8, ptr %15, align 1, !tbaa !5
  %1184 = icmp ult i8 %1183, 9
  br i1 %1184, label %1189, label %1185

1185:                                             ; preds = %1182
  %1186 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1187 = load i64, ptr %1186, align 8, !tbaa !5
  %1188 = icmp sgt i64 %1187, 0
  br i1 %1188, label %1189, label %1214

1189:                                             ; preds = %1185, %1182
  %1190 = load i32, ptr %2, align 8
  %1191 = and i32 %1190, 65535
  %1192 = icmp eq i32 %1191, 61
  br i1 %1192, label %1193, label %1214

1193:                                             ; preds = %1189
  %1194 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1195 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1196 = load ptr, ptr %1195, align 8, !tbaa !5
  %1197 = load i32, ptr %1196, align 8
  %1198 = and i32 %1197, 65535
  %1199 = icmp eq i32 %1198, 30
  br i1 %1199, label %1200, label %1214

1200:                                             ; preds = %1193
  %1201 = getelementptr inbounds %struct.rtx_def, ptr %1196, i64 0, i32 1
  %1202 = load i64, ptr %1201, align 8, !tbaa !5
  %1203 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1204 = load i64, ptr %1203, align 8, !tbaa !5
  %1205 = and i64 %1204, %1202
  %1206 = icmp eq i64 %1205, 0
  br i1 %1206, label %1214, label %1207

1207:                                             ; preds = %1200
  %1208 = load ptr, ptr %1194, align 8, !tbaa !5
  %1209 = xor i64 %1204, -1
  %1210 = and i64 %1202, %1209
  %1211 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1210) #9
  %1212 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1208, ptr noundef %1211) #8
  %1213 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1212, ptr noundef nonnull %3) #8
  br label %2554

1214:                                             ; preds = %1200, %1193, %1189, %1185, %1178
  %1215 = load i32, ptr %5, align 8
  %1216 = and i32 %1215, 65535
  %1217 = icmp eq i32 %1216, 30
  br i1 %1217, label %1218, label %1260

1218:                                             ; preds = %1214
  %1219 = load i32, ptr %2, align 8
  %1220 = and i32 %1219, 65535
  %1221 = icmp eq i32 %1220, 67
  br i1 %1221, label %1222, label %1260

1222:                                             ; preds = %1218
  %1223 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1224 = load ptr, ptr %1223, align 8, !tbaa !5
  %1225 = load i32, ptr %1224, align 8
  %1226 = and i32 %1225, 65535
  %1227 = icmp eq i32 %1226, 49
  br i1 %1227, label %1228, label %1260

1228:                                             ; preds = %1222
  %1229 = getelementptr inbounds %struct.rtx_def, ptr %1224, i64 0, i32 1, i32 0, i32 0, i64 1
  %1230 = load ptr, ptr %1229, align 8, !tbaa !5
  %1231 = load i32, ptr %1230, align 8
  %1232 = and i32 %1231, 65535
  %1233 = icmp eq i32 %1232, 30
  br i1 %1233, label %1234, label %1260

1234:                                             ; preds = %1228
  %1235 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1236 = load ptr, ptr %1235, align 8, !tbaa !5
  %1237 = load i32, ptr %1236, align 8
  %1238 = and i32 %1237, 65535
  %1239 = icmp eq i32 %1238, 30
  br i1 %1239, label %1240, label %1260

1240:                                             ; preds = %1234
  %1241 = getelementptr inbounds %struct.rtx_def, ptr %1236, i64 0, i32 1
  %1242 = load i64, ptr %1241, align 8, !tbaa !5
  %1243 = icmp slt i64 %1242, 64
  br i1 %1243, label %1244, label %1260

1244:                                             ; preds = %1240
  %1245 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1246 = load i64, ptr %1245, align 8, !tbaa !5
  %1247 = and i64 %1242, 4294967295
  %1248 = shl i64 %1246, %1247
  %1249 = ashr exact i64 %1248, %1247
  %1250 = icmp eq i64 %1249, %1246
  br i1 %1250, label %1251, label %1260

1251:                                             ; preds = %1244
  %1252 = tail call i64 @nonzero_bits(ptr noundef nonnull %1224, i32 noundef %1) #9
  %1253 = and i64 %1252, %1248
  %1254 = icmp eq i64 %1253, 0
  br i1 %1254, label %1255, label %1260

1255:                                             ; preds = %1251
  %1256 = load ptr, ptr %1223, align 8, !tbaa !5
  %1257 = tail call ptr @plus_constant(ptr noundef %1256, i64 noundef %1248) #9
  %1258 = load ptr, ptr %1235, align 8, !tbaa !5
  %1259 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %1, ptr noundef %1257, ptr noundef %1258) #8
  br label %2554

1260:                                             ; preds = %1244, %1251, %1240, %1234, %1228, %1222, %1218, %1214
  %1261 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 62, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %1262 = icmp eq ptr %1261, null
  br i1 %1262, label %2553, label %2554

1263:                                             ; preds = %6
  %1264 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %1265 = icmp eq ptr %1264, %5
  br i1 %1265, label %2554, label %1266

1266:                                             ; preds = %1263
  %1267 = load i32, ptr %5, align 8
  %1268 = and i32 %1267, 65535
  %1269 = icmp eq i32 %1268, 30
  br i1 %1269, label %1270, label %1279

1270:                                             ; preds = %1266
  %1271 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1272 = load i64, ptr %1271, align 8, !tbaa !5
  %1273 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1274 = load i64, ptr %1273, align 8, !tbaa !28
  %1275 = and i64 %1274, %1272
  %1276 = icmp eq i64 %1275, %1274
  br i1 %1276, label %1277, label %1279

1277:                                             ; preds = %1270
  %1278 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %2, i32 noundef %1) #8
  br label %2554

1279:                                             ; preds = %1270, %1266
  %1280 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef nonnull %5) #9
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1293, label %1282

1282:                                             ; preds = %1279
  %1283 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1285, label %1293

1285:                                             ; preds = %1282
  %1286 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1287 = load i8, ptr %1286, align 1, !tbaa !5
  %1288 = icmp eq i8 %1287, 1
  br i1 %1288, label %1293, label %1289

1289:                                             ; preds = %1285
  %1290 = sext i32 %1 to i64
  %1291 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1290
  %1292 = load ptr, ptr %1291, align 8, !tbaa !24
  br label %2554

1293:                                             ; preds = %1285, %1282, %1279
  %1294 = load i32, ptr %3, align 8
  %1295 = trunc i32 %1294 to i16
  switch i16 %1295, label %1319 [
    i16 30, label %1296
    i16 32, label %1296
  ]

1296:                                             ; preds = %1293, %1293
  %1297 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %3) #8, !range !53
  %1298 = icmp eq i8 %1297, 0
  br i1 %1298, label %1301, label %1299

1299:                                             ; preds = %1296
  %1300 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #8
  br label %2554

1301:                                             ; preds = %1296
  switch i16 %1295, label %1319 [
    i16 30, label %1302
    i16 32, label %1302
  ]

1302:                                             ; preds = %1301, %1301
  %1303 = load i32, ptr %2, align 8
  %1304 = and i32 %1303, 65535
  %1305 = icmp eq i32 %1304, 49
  br i1 %1305, label %1306, label %1319

1306:                                             ; preds = %1302
  %1307 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1308 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1309 = load ptr, ptr %1308, align 8, !tbaa !5
  %1310 = load i32, ptr %1309, align 8
  %1311 = trunc i32 %1310 to i16
  switch i16 %1311, label %1319 [
    i16 30, label %1312
    i16 32, label %1312
  ]

1312:                                             ; preds = %1306, %1306
  %1313 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %1309) #8, !range !53
  %1314 = icmp eq i8 %1313, 0
  br i1 %1314, label %1319, label %1315

1315:                                             ; preds = %1312
  %1316 = load ptr, ptr %1307, align 8, !tbaa !5
  %1317 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %1309) #8
  %1318 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1316, ptr noundef %1317) #8
  br label %2554

1319:                                             ; preds = %1293, %1306, %1301, %1312, %1302
  %1320 = load i8, ptr %15, align 1, !tbaa !5
  %1321 = icmp ult i8 %1320, 9
  br i1 %1321, label %1322, label %1329

1322:                                             ; preds = %1319
  %1323 = tail call i64 @nonzero_bits(ptr noundef %2, i32 noundef %1) #9
  %1324 = tail call i64 @nonzero_bits(ptr noundef nonnull %3, i32 noundef %1) #9
  %1325 = and i64 %1324, %1323
  %1326 = icmp eq i64 %1325, 0
  br i1 %1326, label %1327, label %1329

1327:                                             ; preds = %1322
  %1328 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #8
  br label %2554

1329:                                             ; preds = %1322, %1319
  %1330 = load i32, ptr %2, align 8
  %1331 = and i32 %1330, 65535
  %1332 = icmp eq i32 %1331, 64
  br i1 %1332, label %1333, label %1336

1333:                                             ; preds = %1329
  %1334 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1335 = load ptr, ptr %1334, align 8, !tbaa !5
  br label %1336

1336:                                             ; preds = %1333, %1329
  %1337 = phi i32 [ 1, %1333 ], [ 0, %1329 ]
  %1338 = phi ptr [ %1335, %1333 ], [ %2, %1329 ]
  %1339 = load i32, ptr %3, align 8
  %1340 = and i32 %1339, 65535
  %1341 = icmp eq i32 %1340, 64
  br i1 %1341, label %1342, label %1346

1342:                                             ; preds = %1336
  %1343 = add nuw nsw i32 %1337, 1
  %1344 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1345 = load ptr, ptr %1344, align 8, !tbaa !5
  br label %1346

1346:                                             ; preds = %1342, %1336
  %1347 = phi i32 [ %1343, %1342 ], [ %1337, %1336 ]
  %1348 = phi ptr [ %1345, %1342 ], [ %3, %1336 ]
  switch i32 %1347, label %1354 [
    i32 2, label %1349
    i32 1, label %1351
  ]

1349:                                             ; preds = %1346
  %1350 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1338, ptr noundef %1348) #8
  br label %2554

1351:                                             ; preds = %1346
  %1352 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1338, ptr noundef %1348) #8
  %1353 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1352, i32 noundef %1) #8
  br label %2554

1354:                                             ; preds = %1346
  %1355 = load i32, ptr %1338, align 8
  %1356 = and i32 %1355, 65535
  %1357 = icmp eq i32 %1356, 61
  br i1 %1357, label %1358, label %1371

1358:                                             ; preds = %1354
  %1359 = getelementptr inbounds %struct.rtx_def, ptr %1338, i64 0, i32 1
  %1360 = getelementptr inbounds %struct.rtx_def, ptr %1338, i64 0, i32 1, i32 0, i32 0, i64 1
  %1361 = load ptr, ptr %1360, align 8, !tbaa !5
  %1362 = tail call i32 @rtx_equal_p(ptr noundef %1361, ptr noundef %1348) #9
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1371, label %1364

1364:                                             ; preds = %1358
  %1365 = tail call i32 @side_effects_p(ptr noundef %1348) #9
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1367, label %1371

1367:                                             ; preds = %1364
  %1368 = load ptr, ptr %1359, align 8, !tbaa !5
  %1369 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1368, i32 noundef %1) #8
  %1370 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1369, ptr noundef %1348) #8
  br label %2554

1371:                                             ; preds = %1364, %1358, %1354
  %1372 = load i32, ptr %1338, align 8
  %1373 = and i32 %1372, 65535
  %1374 = icmp eq i32 %1373, 61
  br i1 %1374, label %1375, label %1388

1375:                                             ; preds = %1371
  %1376 = getelementptr inbounds %struct.rtx_def, ptr %1338, i64 0, i32 1
  %1377 = load ptr, ptr %1376, align 8, !tbaa !5
  %1378 = tail call i32 @rtx_equal_p(ptr noundef %1377, ptr noundef %1348) #9
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1388, label %1380

1380:                                             ; preds = %1375
  %1381 = tail call i32 @side_effects_p(ptr noundef %1348) #9
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1383, label %1388

1383:                                             ; preds = %1380
  %1384 = getelementptr inbounds %struct.rtx_def, ptr %1338, i64 0, i32 1, i32 0, i32 0, i64 1
  %1385 = load ptr, ptr %1384, align 8, !tbaa !5
  %1386 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1385, i32 noundef %1) #8
  %1387 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1386, ptr noundef %1348) #8
  br label %2554

1388:                                             ; preds = %1371, %1375, %1380
  %1389 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !24
  %1390 = icmp eq ptr %1389, %5
  br i1 %1390, label %1391, label %1403

1391:                                             ; preds = %1388
  %1392 = load i32, ptr %1338, align 8
  %1393 = and i32 %1392, 65535
  %1394 = zext nneg i32 %1393 to i64
  %1395 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1394
  %1396 = load i32, ptr %1395, align 4, !tbaa !8
  %1397 = icmp ult i32 %1396, 2
  br i1 %1397, label %1398, label %1406

1398:                                             ; preds = %1391
  %1399 = tail call ptr @reversed_comparison(ptr noundef nonnull %1338, i32 noundef %1) #9
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1401, label %2554

1401:                                             ; preds = %1398
  %1402 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !24
  br label %1403

1403:                                             ; preds = %1401, %1388
  %1404 = phi ptr [ %1402, %1401 ], [ %1389, %1388 ]
  %1405 = icmp eq ptr %1404, %5
  br i1 %1405, label %1406, label %1430

1406:                                             ; preds = %1391, %1403
  %1407 = load i32, ptr %1338, align 8
  %1408 = and i32 %1407, 65535
  %1409 = icmp eq i32 %1408, 68
  br i1 %1409, label %1410, label %1430

1410:                                             ; preds = %1406
  %1411 = getelementptr inbounds %struct.rtx_def, ptr %1338, i64 0, i32 1
  %1412 = getelementptr inbounds %struct.rtx_def, ptr %1338, i64 0, i32 1, i32 0, i32 0, i64 1
  %1413 = load ptr, ptr %1412, align 8, !tbaa !5
  %1414 = load i32, ptr %1413, align 8
  %1415 = and i32 %1414, 65535
  %1416 = icmp eq i32 %1415, 30
  br i1 %1416, label %1417, label %1430

1417:                                             ; preds = %1410
  %1418 = getelementptr inbounds %struct.rtx_def, ptr %1413, i64 0, i32 1
  %1419 = load i64, ptr %1418, align 8, !tbaa !5
  %1420 = load i8, ptr %15, align 1, !tbaa !5
  %1421 = zext i8 %1420 to i32
  %1422 = shl nuw nsw i32 %1421, 3
  %1423 = add nsw i32 %1422, -1
  %1424 = sext i32 %1423 to i64
  %1425 = icmp eq i64 %1419, %1424
  br i1 %1425, label %1426, label %1430

1426:                                             ; preds = %1417
  %1427 = load ptr, ptr %1411, align 8, !tbaa !5
  %1428 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %1429 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef %1, ptr noundef %1427, ptr noundef %1428) #9
  br label %2554

1430:                                             ; preds = %1417, %1410, %1406, %1403
  %1431 = load i8, ptr %15, align 1, !tbaa !5
  %1432 = icmp ult i8 %1431, 9
  br i1 %1432, label %1433, label %1456

1433:                                             ; preds = %1430
  %1434 = shl nuw nsw i8 %1431, 3
  %1435 = zext nneg i8 %1434 to i64
  %1436 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1437 = load i64, ptr %1436, align 8, !tbaa !28
  %1438 = and i64 %1437, 1
  %1439 = add nuw nsw i64 %1435, 4294967295
  %1440 = and i64 %1439, 4294967295
  %1441 = shl nuw i64 1, %1440
  %1442 = icmp eq i64 %1438, %1441
  %1443 = load ptr, ptr @const_true_rtx, align 8
  %1444 = icmp eq ptr %1443, %5
  %1445 = select i1 %1442, i1 %1444, i1 false
  br i1 %1445, label %1446, label %1456

1446:                                             ; preds = %1433
  %1447 = load i32, ptr %1338, align 8
  %1448 = and i32 %1447, 65535
  %1449 = zext nneg i32 %1448 to i64
  %1450 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1449
  %1451 = load i32, ptr %1450, align 4, !tbaa !8
  %1452 = icmp ult i32 %1451, 2
  br i1 %1452, label %1453, label %1456

1453:                                             ; preds = %1446
  %1454 = tail call ptr @reversed_comparison(ptr noundef nonnull %1338, i32 noundef %1) #9
  %1455 = icmp eq ptr %1454, null
  br i1 %1455, label %1456, label %2554

1456:                                             ; preds = %1453, %1446, %1433, %1430
  %1457 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 63, i32 noundef %1, ptr noundef nonnull %1338, ptr noundef %1348) #8
  %1458 = icmp eq ptr %1457, null
  br i1 %1458, label %2553, label %2554

1459:                                             ; preds = %6
  %1460 = sext i32 %1 to i64
  %1461 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1460
  %1462 = load ptr, ptr %1461, align 8, !tbaa !24
  %1463 = icmp eq ptr %1462, %5
  br i1 %1463, label %1464, label %1469

1464:                                             ; preds = %1459
  %1465 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %2554, label %1467

1467:                                             ; preds = %1464
  %1468 = load i8, ptr %15, align 1, !tbaa !5
  br label %1469

1469:                                             ; preds = %1467, %1459
  %1470 = phi i8 [ %1468, %1467 ], [ %16, %1459 ]
  %1471 = icmp ult i8 %1470, 9
  br i1 %1471, label %1472, label %1495

1472:                                             ; preds = %1469
  %1473 = tail call i64 @nonzero_bits(ptr noundef %4, i32 noundef %1) #9
  %1474 = load i32, ptr %5, align 8
  %1475 = and i32 %1474, 65535
  %1476 = icmp eq i32 %1475, 30
  br i1 %1476, label %1477, label %1483

1477:                                             ; preds = %1472
  %1478 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1479 = load i64, ptr %1478, align 8, !tbaa !5
  %1480 = xor i64 %1479, -1
  %1481 = and i64 %1473, %1480
  %1482 = icmp eq i64 %1481, 0
  br i1 %1482, label %2554, label %1483

1483:                                             ; preds = %1477, %1472
  %1484 = tail call i64 @nonzero_bits(ptr noundef nonnull %5, i32 noundef %1) #9
  %1485 = and i64 %1484, %1473
  %1486 = icmp eq i64 %1485, 0
  br i1 %1486, label %1487, label %1495

1487:                                             ; preds = %1483
  %1488 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1490, label %1495

1490:                                             ; preds = %1487
  %1491 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1493, label %1495

1493:                                             ; preds = %1490
  %1494 = load ptr, ptr %1461, align 8, !tbaa !24
  br label %2554

1495:                                             ; preds = %1483, %1487, %1490, %1469
  %1496 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1505, label %1498

1498:                                             ; preds = %1495
  %1499 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1501, label %1505

1501:                                             ; preds = %1498
  %1502 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1503 = load i8, ptr %1502, align 1, !tbaa !5
  %1504 = icmp eq i8 %1503, 1
  br i1 %1504, label %1505, label %2554

1505:                                             ; preds = %1501, %1498, %1495
  %1506 = load i32, ptr %2, align 8
  %1507 = and i32 %1506, 65535
  %1508 = icmp eq i32 %1507, 64
  br i1 %1508, label %1509, label %1514

1509:                                             ; preds = %1505
  %1510 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1511 = load ptr, ptr %1510, align 8, !tbaa !5
  %1512 = tail call i32 @rtx_equal_p(ptr noundef %1511, ptr noundef %3) #9
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1514, label %1523

1514:                                             ; preds = %1509, %1505
  %1515 = load i32, ptr %3, align 8
  %1516 = and i32 %1515, 65535
  %1517 = icmp eq i32 %1516, 64
  br i1 %1517, label %1518, label %1532

1518:                                             ; preds = %1514
  %1519 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1520 = load ptr, ptr %1519, align 8, !tbaa !5
  %1521 = tail call i32 @rtx_equal_p(ptr noundef %1520, ptr noundef nonnull %2) #9
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1532, label %1523

1523:                                             ; preds = %1518, %1509
  %1524 = tail call i32 @side_effects_p(ptr noundef nonnull %2) #9
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1526, label %1532

1526:                                             ; preds = %1523
  %1527 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1528 = load i8, ptr %1527, align 1, !tbaa !5
  %1529 = icmp eq i8 %1528, 1
  br i1 %1529, label %1532, label %1530

1530:                                             ; preds = %1526
  %1531 = load ptr, ptr %1461, align 8, !tbaa !24
  br label %2554

1532:                                             ; preds = %1526, %1523, %1518, %1514
  %1533 = load i32, ptr %2, align 8
  %1534 = and i32 %1533, 65534
  %1535 = icmp eq i32 %1534, 98
  br i1 %1535, label %1536, label %1561

1536:                                             ; preds = %1532
  %1537 = load i32, ptr %5, align 8
  %1538 = and i32 %1537, 65535
  %1539 = icmp eq i32 %1538, 30
  br i1 %1539, label %1540, label %1612

1540:                                             ; preds = %1536
  %1541 = load i8, ptr %15, align 1, !tbaa !5
  %1542 = icmp ult i8 %1541, 9
  br i1 %1542, label %1543, label %1612

1543:                                             ; preds = %1540
  %1544 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1545 = load ptr, ptr %1544, align 8, !tbaa !5
  %1546 = load i32, ptr %1545, align 8
  %1547 = lshr i32 %1546, 16
  %1548 = and i32 %1547, 255
  %1549 = zext nneg i32 %1548 to i64
  %1550 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %1549
  %1551 = load i64, ptr %1550, align 8, !tbaa !28
  %1552 = xor i64 %1551, -1
  %1553 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1554 = load i64, ptr %1553, align 8, !tbaa !5
  %1555 = and i64 %1554, %1552
  %1556 = icmp eq i64 %1555, 0
  br i1 %1556, label %1557, label %1612

1557:                                             ; preds = %1543
  %1558 = tail call ptr @gen_int_mode(i64 noundef %1554, i32 noundef %1548) #9
  %1559 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1548, ptr noundef nonnull %1545, ptr noundef %1558) #8
  %1560 = tail call ptr @simplify_gen_unary(i32 noundef 99, i32 noundef %1, ptr noundef %1559, i32 noundef %1548) #8
  br label %2554

1561:                                             ; preds = %1532
  %1562 = trunc i32 %1533 to i16
  switch i16 %1562, label %1612 [
    i16 100, label %1563
    i16 62, label %1578
    i16 63, label %1599
  ]

1563:                                             ; preds = %1561
  %1564 = load i32, ptr %5, align 8
  %1565 = and i32 %1564, 65535
  %1566 = icmp eq i32 %1565, 30
  br i1 %1566, label %1567, label %1612

1567:                                             ; preds = %1563
  %1568 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1569 = load ptr, ptr %1568, align 8, !tbaa !5
  %1570 = load i32, ptr %1569, align 8
  %1571 = lshr i32 %1570, 16
  %1572 = and i32 %1571, 255
  %1573 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1574 = load i64, ptr %1573, align 8, !tbaa !5
  %1575 = tail call ptr @gen_int_mode(i64 noundef %1574, i32 noundef %1572) #9
  %1576 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1572, ptr noundef nonnull %1569, ptr noundef %1575) #8
  %1577 = tail call ptr @simplify_gen_unary(i32 noundef 100, i32 noundef %1, ptr noundef %1576, i32 noundef %1572) #8
  br label %2554

1578:                                             ; preds = %1561
  %1579 = load i32, ptr %5, align 8
  %1580 = and i32 %1579, 65535
  %1581 = icmp eq i32 %1580, 30
  br i1 %1581, label %1582, label %1612

1582:                                             ; preds = %1578
  %1583 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1584 = load ptr, ptr %1583, align 8, !tbaa !5
  %1585 = load i32, ptr %1584, align 8
  %1586 = and i32 %1585, 65535
  %1587 = icmp eq i32 %1586, 30
  br i1 %1587, label %1588, label %1612

1588:                                             ; preds = %1582
  %1589 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1590 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1591 = load i64, ptr %1590, align 8, !tbaa !5
  %1592 = getelementptr inbounds %struct.rtx_def, ptr %1584, i64 0, i32 1
  %1593 = load i64, ptr %1592, align 8, !tbaa !5
  %1594 = and i64 %1593, %1591
  %1595 = load ptr, ptr %1589, align 8, !tbaa !5
  %1596 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1595, ptr noundef %3) #8
  %1597 = tail call ptr @gen_int_mode(i64 noundef %1594, i32 noundef %1) #9
  %1598 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1596, ptr noundef %1597) #8
  br label %2554

1599:                                             ; preds = %1561
  %1600 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1601 = load ptr, ptr %1600, align 8, !tbaa !5
  %1602 = tail call i32 @rtx_equal_p(ptr noundef %1601, ptr noundef %3) #9
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1612, label %1604

1604:                                             ; preds = %1599
  %1605 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1607, label %1612

1607:                                             ; preds = %1604
  %1608 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1609 = load ptr, ptr %1608, align 8, !tbaa !5
  %1610 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1609, i32 noundef %1) #8
  %1611 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1610, ptr noundef %3) #8
  br label %2554

1612:                                             ; preds = %1561, %1536, %1540, %1543, %1563, %1578, %1582, %1604, %1599
  %1613 = load i32, ptr %2, align 8
  %1614 = and i32 %1613, 65535
  %1615 = icmp eq i32 %1614, 63
  br i1 %1615, label %1616, label %1629

1616:                                             ; preds = %1612
  %1617 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1618 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1619 = load ptr, ptr %1618, align 8, !tbaa !5
  %1620 = tail call i32 @rtx_equal_p(ptr noundef %1619, ptr noundef %3) #9
  %1621 = icmp eq i32 %1620, 0
  br i1 %1621, label %1629, label %1622

1622:                                             ; preds = %1616
  %1623 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1625, label %1629

1625:                                             ; preds = %1622
  %1626 = load ptr, ptr %1617, align 8, !tbaa !5
  %1627 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1626, i32 noundef %1) #8
  %1628 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1627, ptr noundef %3) #8
  br label %2554

1629:                                             ; preds = %1622, %1616, %1612
  %1630 = load i32, ptr %2, align 8
  %1631 = and i32 %1630, 65535
  %1632 = icmp eq i32 %1631, 64
  br i1 %1632, label %1633, label %1652

1633:                                             ; preds = %1629
  %1634 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1635 = load ptr, ptr %1634, align 8, !tbaa !5
  %1636 = load i32, ptr %1635, align 8
  %1637 = and i32 %1636, 65535
  %1638 = icmp eq i32 %1637, 63
  br i1 %1638, label %1639, label %1652

1639:                                             ; preds = %1633
  %1640 = getelementptr inbounds %struct.rtx_def, ptr %1635, i64 0, i32 1
  %1641 = load ptr, ptr %1640, align 8, !tbaa !5
  %1642 = tail call i32 @rtx_equal_p(ptr noundef %1641, ptr noundef %3) #9
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1652, label %1644

1644:                                             ; preds = %1639
  %1645 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1646 = icmp eq i32 %1645, 0
  br i1 %1646, label %1647, label %1652

1647:                                             ; preds = %1644
  %1648 = load ptr, ptr %1634, align 8, !tbaa !5
  %1649 = getelementptr inbounds %struct.rtx_def, ptr %1648, i64 0, i32 1, i32 0, i32 0, i64 1
  %1650 = load ptr, ptr %1649, align 8, !tbaa !5
  %1651 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1650, ptr noundef %3) #8
  br label %2554

1652:                                             ; preds = %1644, %1639, %1633, %1629
  %1653 = load i32, ptr %2, align 8
  %1654 = and i32 %1653, 65535
  %1655 = icmp eq i32 %1654, 64
  br i1 %1655, label %1656, label %1675

1656:                                             ; preds = %1652
  %1657 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1658 = load ptr, ptr %1657, align 8, !tbaa !5
  %1659 = load i32, ptr %1658, align 8
  %1660 = and i32 %1659, 65535
  %1661 = icmp eq i32 %1660, 63
  br i1 %1661, label %1662, label %1675

1662:                                             ; preds = %1656
  %1663 = getelementptr inbounds %struct.rtx_def, ptr %1658, i64 0, i32 1, i32 0, i32 0, i64 1
  %1664 = load ptr, ptr %1663, align 8, !tbaa !5
  %1665 = tail call i32 @rtx_equal_p(ptr noundef %1664, ptr noundef %3) #9
  %1666 = icmp eq i32 %1665, 0
  br i1 %1666, label %1675, label %1667

1667:                                             ; preds = %1662
  %1668 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1670, label %1675

1670:                                             ; preds = %1667
  %1671 = load ptr, ptr %1657, align 8, !tbaa !5
  %1672 = getelementptr inbounds %struct.rtx_def, ptr %1671, i64 0, i32 1
  %1673 = load ptr, ptr %1672, align 8, !tbaa !5
  %1674 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1673, ptr noundef %3) #8
  br label %2554

1675:                                             ; preds = %1667, %1662, %1656, %1652
  %1676 = load i32, ptr %2, align 8
  %1677 = and i32 %1676, 65535
  %1678 = icmp eq i32 %1677, 62
  br i1 %1678, label %1679, label %1698

1679:                                             ; preds = %1675
  %1680 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1681 = load ptr, ptr %1680, align 8, !tbaa !5
  %1682 = tail call i32 @rtx_equal_p(ptr noundef %1681, ptr noundef %3) #9
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1684, label %1689

1684:                                             ; preds = %1679
  %1685 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1686 = load ptr, ptr %1685, align 8, !tbaa !5
  %1687 = tail call i32 @rtx_equal_p(ptr noundef %1686, ptr noundef %3) #9
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1698, label %1689

1689:                                             ; preds = %1684, %1679
  %1690 = load ptr, ptr %1680, align 8, !tbaa !5
  %1691 = tail call i32 @side_effects_p(ptr noundef %1690) #9
  %1692 = icmp eq i32 %1691, 0
  br i1 %1692, label %1693, label %1698

1693:                                             ; preds = %1689
  %1694 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1695 = load ptr, ptr %1694, align 8, !tbaa !5
  %1696 = tail call i32 @side_effects_p(ptr noundef %1695) #9
  %1697 = icmp eq i32 %1696, 0
  br i1 %1697, label %2554, label %1698

1698:                                             ; preds = %1693, %1689, %1684, %1675
  %1699 = load i32, ptr %5, align 8
  %1700 = and i32 %1699, 65535
  %1701 = icmp eq i32 %1700, 30
  br i1 %1701, label %1702, label %1778

1702:                                             ; preds = %1698
  %1703 = load i8, ptr %15, align 1, !tbaa !5
  %1704 = icmp ult i8 %1703, 9
  br i1 %1704, label %1705, label %1778

1705:                                             ; preds = %1702
  %1706 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1707 = load i64, ptr %1706, align 8, !tbaa !5
  %1708 = icmp eq i64 %1707, -1
  br i1 %1708, label %1778, label %1709

1709:                                             ; preds = %1705
  %1710 = add nuw nsw i64 %1707, 1
  %1711 = and i64 %1710, %1707
  %1712 = icmp eq i64 %1711, 0
  br i1 %1712, label %1713, label %1778

1713:                                             ; preds = %1709
  %1714 = load i32, ptr %2, align 8
  %1715 = and i32 %1714, 65535
  %1716 = add nsw i32 %1715, -49
  %1717 = icmp ult i32 %1716, 2
  br i1 %1717, label %1718, label %1778

1718:                                             ; preds = %1713
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #10
  %1719 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1720 = load ptr, ptr %1719, align 8, !tbaa !5
  store ptr %1720, ptr %12, align 16, !tbaa !24
  %1721 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1722 = load ptr, ptr %1721, align 8, !tbaa !5
  %1723 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 1
  store ptr %1722, ptr %1723, align 8, !tbaa !24
  %1724 = load i32, ptr %1722, align 8
  %1725 = and i32 %1724, 65535
  %1726 = icmp eq i32 %1725, 30
  br i1 %1726, label %1727, label %1732

1727:                                             ; preds = %1718
  %1728 = getelementptr inbounds %struct.rtx_def, ptr %1722, i64 0, i32 1
  %1729 = load i64, ptr %1728, align 8, !tbaa !5
  %1730 = and i64 %1729, %1707
  %1731 = icmp eq i64 %1730, 0
  br i1 %1731, label %1774, label %1732

1732:                                             ; preds = %1727, %1718
  br label %1733

1733:                                             ; preds = %1732, %1765
  %1734 = phi i1 [ false, %1765 ], [ true, %1732 ]
  %1735 = phi i64 [ 1, %1765 ], [ 0, %1732 ]
  %1736 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 %1735
  %1737 = load ptr, ptr %1736, align 8, !tbaa !24
  %1738 = load i32, ptr %1737, align 8
  %1739 = trunc i32 %1738 to i16
  switch i16 %1739, label %1765 [
    i16 61, label %1740
    i16 62, label %1751
    i16 63, label %1751
  ]

1740:                                             ; preds = %1733
  %1741 = getelementptr inbounds %struct.rtx_def, ptr %1737, i64 0, i32 1, i32 0, i32 0, i64 1
  %1742 = load ptr, ptr %1741, align 8, !tbaa !5
  %1743 = load i32, ptr %1742, align 8
  %1744 = and i32 %1743, 65535
  %1745 = icmp eq i32 %1744, 30
  br i1 %1745, label %1746, label %1765

1746:                                             ; preds = %1740
  %1747 = getelementptr inbounds %struct.rtx_def, ptr %1742, i64 0, i32 1
  %1748 = load i64, ptr %1747, align 8, !tbaa !5
  %1749 = and i64 %1748, %1707
  %1750 = icmp eq i64 %1749, %1707
  br i1 %1750, label %1762, label %1765

1751:                                             ; preds = %1733, %1733
  %1752 = getelementptr inbounds %struct.rtx_def, ptr %1737, i64 0, i32 1, i32 0, i32 0, i64 1
  %1753 = load ptr, ptr %1752, align 8, !tbaa !5
  %1754 = load i32, ptr %1753, align 8
  %1755 = and i32 %1754, 65535
  %1756 = icmp eq i32 %1755, 30
  br i1 %1756, label %1757, label %1765

1757:                                             ; preds = %1751
  %1758 = getelementptr inbounds %struct.rtx_def, ptr %1753, i64 0, i32 1
  %1759 = load i64, ptr %1758, align 8, !tbaa !5
  %1760 = and i64 %1759, %1707
  %1761 = icmp eq i64 %1760, 0
  br i1 %1761, label %1762, label %1765

1762:                                             ; preds = %1757, %1746
  %1763 = getelementptr inbounds %struct.rtx_def, ptr %1737, i64 0, i32 1
  %1764 = load ptr, ptr %1763, align 8, !tbaa !5
  store ptr %1764, ptr %1736, align 8, !tbaa !24
  br label %1765

1765:                                             ; preds = %1762, %1746, %1740, %1757, %1751, %1733
  br i1 %1734, label %1733, label %1766, !llvm.loop !64

1766:                                             ; preds = %1765
  %1767 = load ptr, ptr %12, align 16, !tbaa !24
  %1768 = icmp eq ptr %1767, %1720
  %1769 = load ptr, ptr %1723, align 8
  %1770 = icmp eq ptr %1769, %1722
  %1771 = select i1 %1768, i1 %1770, i1 false
  br i1 %1771, label %1777, label %1772

1772:                                             ; preds = %1766
  %1773 = tail call ptr @simplify_gen_binary(i32 noundef %1715, i32 noundef %1, ptr noundef %1767, ptr noundef %1769) #8
  br label %1774

1774:                                             ; preds = %1727, %1772
  %1775 = phi ptr [ %1773, %1772 ], [ %1720, %1727 ]
  %1776 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1775, ptr noundef %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  br label %2554

1777:                                             ; preds = %1766
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  br label %1778

1778:                                             ; preds = %1777, %1713, %1709, %1705, %1702, %1698
  %1779 = load i32, ptr %3, align 8
  %1780 = and i32 %1779, 65535
  %1781 = icmp eq i32 %1780, 62
  br i1 %1781, label %1782, label %1796

1782:                                             ; preds = %1778
  %1783 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1784 = load ptr, ptr %1783, align 8, !tbaa !5
  %1785 = load i32, ptr %1784, align 8
  %1786 = and i32 %1785, 65535
  %1787 = icmp eq i32 %1786, 64
  br i1 %1787, label %1788, label %1796

1788:                                             ; preds = %1782
  %1789 = getelementptr inbounds %struct.rtx_def, ptr %1784, i64 0, i32 1
  %1790 = load ptr, ptr %1789, align 8, !tbaa !5
  %1791 = icmp eq ptr %1790, %2
  br i1 %1791, label %1792, label %1796

1792:                                             ; preds = %1788
  %1793 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %1794 = load ptr, ptr %1793, align 8, !tbaa !5
  %1795 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %1794) #8
  br label %2554

1796:                                             ; preds = %1788, %1782, %1778
  %1797 = load i32, ptr %2, align 8
  %1798 = and i32 %1797, 65535
  %1799 = icmp eq i32 %1798, 62
  br i1 %1799, label %1800, label %1814

1800:                                             ; preds = %1796
  %1801 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1802 = load ptr, ptr %1801, align 8, !tbaa !5
  %1803 = load i32, ptr %1802, align 8
  %1804 = and i32 %1803, 65535
  %1805 = icmp eq i32 %1804, 64
  br i1 %1805, label %1806, label %1814

1806:                                             ; preds = %1800
  %1807 = getelementptr inbounds %struct.rtx_def, ptr %1802, i64 0, i32 1
  %1808 = load ptr, ptr %1807, align 8, !tbaa !5
  %1809 = icmp eq ptr %1808, %3
  br i1 %1809, label %1810, label %1814

1810:                                             ; preds = %1806
  %1811 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1812 = load ptr, ptr %1811, align 8, !tbaa !5
  %1813 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %3, ptr noundef %1812) #8
  br label %2554

1814:                                             ; preds = %1806, %1800, %1796
  %1815 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %1816 = icmp eq ptr %1815, null
  br i1 %1816, label %2553, label %2554

1817:                                             ; preds = %6
  %1818 = sext i32 %1 to i64
  %1819 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1818
  %1820 = load ptr, ptr %1819, align 8, !tbaa !24
  %1821 = icmp eq ptr %1820, %4
  br i1 %1821, label %1822, label %1827

1822:                                             ; preds = %1817
  %1823 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %2554, label %1825

1825:                                             ; preds = %1822
  %1826 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4) #8
  br label %2554

1827:                                             ; preds = %1817
  %1828 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1818
  %1829 = load ptr, ptr %1828, align 8, !tbaa !24
  %1830 = icmp eq ptr %1829, %5
  br i1 %1830, label %1831, label %1834

1831:                                             ; preds = %1827
  %1832 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !54
  %1833 = tail call ptr %1832(i32 noundef %1, ptr noundef %2) #9
  br label %2554

1834:                                             ; preds = %1827
  %1835 = load i32, ptr %5, align 8
  %1836 = and i32 %1835, 65535
  %1837 = icmp eq i32 %1836, 30
  br i1 %1837, label %1838, label %2553

1838:                                             ; preds = %1834
  %1839 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1840 = load i64, ptr %1839, align 8, !tbaa !5
  %1841 = tail call i32 @exact_log2(i64 noundef %1840) #9
  %1842 = icmp sgt i32 %1841, 0
  br i1 %1842, label %1843, label %2553

1843:                                             ; preds = %1838
  %1844 = zext nneg i32 %1841 to i64
  %1845 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1844) #9
  %1846 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %1, ptr noundef %2, ptr noundef %1845) #8
  br label %2554

1847:                                             ; preds = %6
  %1848 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1849 = load i8, ptr %1848, align 1, !tbaa !5
  %1850 = and i8 %1849, -2
  %1851 = icmp eq i8 %1850, 8
  %1852 = sext i32 %1 to i64
  %1853 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1852
  %1854 = load ptr, ptr %1853, align 8, !tbaa !24
  %1855 = icmp eq ptr %1854, %4
  br i1 %1851, label %1856, label %1936

1856:                                             ; preds = %1847
  br i1 %1855, label %1857, label %1878

1857:                                             ; preds = %1856
  %1858 = add i32 %1, -38
  %1859 = zext i32 %1858 to i64
  %1860 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1859
  %1861 = load ptr, ptr %1860, align 8, !tbaa !24
  %1862 = getelementptr inbounds %struct.real_format, ptr %1861, i64 0, i32 11
  %1863 = load i8, ptr %1862, align 2, !tbaa !29
  %1864 = icmp eq i8 %1863, 0
  %1865 = load i32, ptr @flag_finite_math_only, align 4
  %1866 = icmp ne i32 %1865, 0
  %1867 = select i1 %1864, i1 true, i1 %1866
  br i1 %1867, label %1868, label %1878

1868:                                             ; preds = %1857
  %1869 = getelementptr inbounds %struct.real_format, ptr %1861, i64 0, i32 14
  %1870 = load i8, ptr %1869, align 1, !tbaa !31
  %1871 = icmp ne i8 %1870, 0
  %1872 = load i32, ptr @flag_signed_zeros, align 4
  %1873 = icmp ne i32 %1872, 0
  %1874 = select i1 %1871, i1 %1873, i1 false
  br i1 %1874, label %1878, label %1875

1875:                                             ; preds = %1868
  %1876 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1877 = icmp eq i32 %1876, 0
  br i1 %1877, label %2554, label %1878

1878:                                             ; preds = %1868, %1857, %1875, %1856
  %1879 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1852
  %1880 = load ptr, ptr %1879, align 8, !tbaa !24
  %1881 = icmp eq ptr %1880, %5
  br i1 %1881, label %1882, label %1896

1882:                                             ; preds = %1878
  %1883 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !8
  %1884 = icmp eq i32 %1883, 0
  br i1 %1884, label %2554, label %1885

1885:                                             ; preds = %1882
  %1886 = add i32 %1, -38
  %1887 = zext i32 %1886 to i64
  %1888 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1887
  %1889 = load ptr, ptr %1888, align 8, !tbaa !24
  %1890 = getelementptr inbounds %struct.real_format, ptr %1889, i64 0, i32 11
  %1891 = load i8, ptr %1890, align 2, !tbaa !29
  %1892 = icmp eq i8 %1891, 0
  %1893 = load i32, ptr @flag_finite_math_only, align 4
  %1894 = icmp ne i32 %1893, 0
  %1895 = select i1 %1892, i1 true, i1 %1894
  br i1 %1895, label %2554, label %1896

1896:                                             ; preds = %1885, %1878
  %1897 = load i32, ptr %5, align 8
  %1898 = and i32 %1897, 65535
  %1899 = icmp eq i32 %1898, 32
  br i1 %1899, label %1900, label %2553

1900:                                             ; preds = %1896
  %1901 = load ptr, ptr %1853, align 8, !tbaa !24
  %1902 = icmp eq ptr %1901, %5
  br i1 %1902, label %2553, label %1903

1903:                                             ; preds = %1900
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #10
  %1904 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %1904, i64 32, i1 false), !tbaa.struct !43
  %1905 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %13, ptr noundef nonnull @dconstm1) #9
  %1906 = icmp eq i8 %1905, 0
  br i1 %1906, label %1923, label %1907

1907:                                             ; preds = %1903
  %1908 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !8
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1921, label %1910

1910:                                             ; preds = %1907
  %1911 = add i32 %1, -38
  %1912 = zext i32 %1911 to i64
  %1913 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1912
  %1914 = load ptr, ptr %1913, align 8, !tbaa !24
  %1915 = getelementptr inbounds %struct.real_format, ptr %1914, i64 0, i32 11
  %1916 = load i8, ptr %1915, align 2, !tbaa !29
  %1917 = icmp eq i8 %1916, 0
  %1918 = load i32, ptr @flag_finite_math_only, align 4
  %1919 = icmp ne i32 %1918, 0
  %1920 = select i1 %1917, i1 true, i1 %1919
  br i1 %1920, label %1921, label %1923

1921:                                             ; preds = %1910, %1907
  %1922 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %2, i32 noundef %1) #8
  br label %1934

1923:                                             ; preds = %1910, %1903
  %1924 = load i32, ptr @flag_reciprocal_math, align 4, !tbaa !8
  %1925 = icmp eq i32 %1924, 0
  br i1 %1925, label %1933, label %1926

1926:                                             ; preds = %1923
  %1927 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %13, ptr noundef nonnull @dconst0) #9
  %1928 = icmp eq i8 %1927, 0
  br i1 %1928, label %1929, label %1933

1929:                                             ; preds = %1926
  %1930 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %13, i32 noundef 75, ptr noundef nonnull @dconst1, ptr noundef nonnull %13) #9
  %1931 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %13, i32 noundef %1) #9
  %1932 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %2, ptr noundef %1931) #8
  br label %1934

1933:                                             ; preds = %1926, %1923
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #10
  br label %2553

1934:                                             ; preds = %1929, %1921
  %1935 = phi ptr [ %1922, %1921 ], [ %1932, %1929 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #10
  br label %2554

1936:                                             ; preds = %1847
  br i1 %1855, label %1937, label %1942

1937:                                             ; preds = %1936
  %1938 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1939 = icmp eq i32 %1938, 0
  br i1 %1939, label %2554, label %1940

1940:                                             ; preds = %1937
  %1941 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4) #8
  br label %2554

1942:                                             ; preds = %1936
  %1943 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1852
  %1944 = load ptr, ptr %1943, align 8, !tbaa !24
  %1945 = icmp eq ptr %1944, %5
  br i1 %1945, label %1946, label %1949

1946:                                             ; preds = %1942
  %1947 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !54
  %1948 = tail call ptr %1947(i32 noundef %1, ptr noundef %2) #9
  br label %2554

1949:                                             ; preds = %1942
  %1950 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !24
  %1951 = icmp eq ptr %1950, %5
  br i1 %1951, label %1952, label %2553

1952:                                             ; preds = %1949
  %1953 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !54
  %1954 = tail call ptr %1953(i32 noundef %1, ptr noundef %2) #9
  %1955 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %1954, i32 noundef %1) #8
  br label %2554

1956:                                             ; preds = %6
  %1957 = sext i32 %1 to i64
  %1958 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1957
  %1959 = load ptr, ptr %1958, align 8, !tbaa !24
  %1960 = icmp eq ptr %1959, %4
  br i1 %1960, label %1961, label %1966

1961:                                             ; preds = %1956
  %1962 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %2554, label %1964

1964:                                             ; preds = %1961
  %1965 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4) #8
  br label %2554

1966:                                             ; preds = %1956
  %1967 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1957
  %1968 = load ptr, ptr %1967, align 8, !tbaa !24
  %1969 = icmp eq ptr %1968, %5
  br i1 %1969, label %1970, label %1976

1970:                                             ; preds = %1966
  %1971 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1972 = icmp eq i32 %1971, 0
  %1973 = load ptr, ptr %1958, align 8, !tbaa !24
  br i1 %1972, label %2554, label %1974

1974:                                             ; preds = %1970
  %1975 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %1973) #8
  br label %2554

1976:                                             ; preds = %1966
  %1977 = load i32, ptr %5, align 8
  %1978 = and i32 %1977, 65535
  %1979 = icmp eq i32 %1978, 30
  br i1 %1979, label %1980, label %2553

1980:                                             ; preds = %1976
  %1981 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1982 = load i64, ptr %1981, align 8, !tbaa !5
  %1983 = tail call i32 @exact_log2(i64 noundef %1982) #9
  %1984 = icmp sgt i32 %1983, 0
  br i1 %1984, label %1985, label %2553

1985:                                             ; preds = %1980
  %1986 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1987 = load i64, ptr %1986, align 8, !tbaa !5
  %1988 = add nsw i64 %1987, -1
  %1989 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1988) #9
  %1990 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %1989) #8
  br label %2554

1991:                                             ; preds = %6
  %1992 = sext i32 %1 to i64
  %1993 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1992
  %1994 = load ptr, ptr %1993, align 8, !tbaa !24
  %1995 = icmp eq ptr %1994, %4
  br i1 %1995, label %1996, label %2001

1996:                                             ; preds = %1991
  %1997 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2554, label %1999

1999:                                             ; preds = %1996
  %2000 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4) #8
  br label %2554

2001:                                             ; preds = %1991
  %2002 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1992
  %2003 = load ptr, ptr %2002, align 8, !tbaa !24
  %2004 = icmp eq ptr %2003, %5
  %2005 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %2006 = icmp eq ptr %2005, %5
  %2007 = select i1 %2004, i1 true, i1 %2006
  br i1 %2007, label %2008, label %2553

2008:                                             ; preds = %2001
  %2009 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2010 = icmp eq i32 %2009, 0
  %2011 = load ptr, ptr %1993, align 8, !tbaa !24
  br i1 %2010, label %2554, label %2012

2012:                                             ; preds = %2008
  %2013 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %2011) #8
  br label %2554

2014:                                             ; preds = %6, %6, %6
  %2015 = sext i32 %1 to i64
  %2016 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2015
  %2017 = load ptr, ptr %2016, align 8, !tbaa !24
  %2018 = icmp eq ptr %2017, %5
  br i1 %2018, label %2554, label %2019

2019:                                             ; preds = %2014
  %2020 = icmp eq ptr %2017, %4
  br i1 %2020, label %2021, label %2024

2021:                                             ; preds = %2019
  %2022 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2554, label %2024

2024:                                             ; preds = %2021, %2019
  %2025 = load i32, ptr %4, align 8
  %2026 = and i32 %2025, 65535
  %2027 = icmp eq i32 %2026, 30
  %2028 = icmp ult i8 %16, 9
  %2029 = select i1 %2027, i1 %2028, i1 false
  br i1 %2029, label %2030, label %2553

2030:                                             ; preds = %2024
  %2031 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2032 = load i64, ptr %2031, align 8, !tbaa !5
  %2033 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %2034 = load i64, ptr %2033, align 8, !tbaa !28
  %2035 = icmp eq i64 %2032, %2034
  br i1 %2035, label %2036, label %2553

2036:                                             ; preds = %2030
  %2037 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2554, label %2553

2039:                                             ; preds = %6, %6, %6
  %2040 = sext i32 %1 to i64
  %2041 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2040
  %2042 = load ptr, ptr %2041, align 8, !tbaa !24
  %2043 = icmp eq ptr %2042, %5
  br i1 %2043, label %2554, label %2044

2044:                                             ; preds = %2039
  %2045 = icmp eq ptr %2042, %4
  br i1 %2045, label %2046, label %2553

2046:                                             ; preds = %2044
  %2047 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2554, label %2553

2049:                                             ; preds = %6
  %2050 = sext i32 %1 to i64
  %2051 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2050
  %2052 = load ptr, ptr %2051, align 8, !tbaa !24
  %2053 = icmp eq ptr %2052, %5
  br i1 %2053, label %2554, label %2054

2054:                                             ; preds = %2049
  %2055 = icmp eq ptr %2052, %4
  br i1 %2055, label %2056, label %2553

2056:                                             ; preds = %2054
  %2057 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2554, label %2553

2059:                                             ; preds = %6
  %2060 = icmp ult i8 %16, 9
  br i1 %2060, label %2061, label %2075

2061:                                             ; preds = %2059
  %2062 = load i32, ptr %5, align 8
  %2063 = and i32 %2062, 65535
  %2064 = icmp eq i32 %2063, 30
  br i1 %2064, label %2065, label %2075

2065:                                             ; preds = %2061
  %2066 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2067 = load i64, ptr %2066, align 8, !tbaa !5
  %2068 = add nuw nsw i64 %18, 4294967295
  %2069 = and i64 %2068, 4294967295
  %2070 = shl nuw i64 1, %2069
  %2071 = icmp eq i64 %2067, %2070
  br i1 %2071, label %2072, label %2075

2072:                                             ; preds = %2065
  %2073 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2074 = icmp eq i32 %2073, 0
  br i1 %2074, label %2554, label %2075

2075:                                             ; preds = %2072, %2065, %2061, %2059
  %2076 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %2077 = icmp eq i32 %2076, 0
  br i1 %2077, label %2081, label %2078

2078:                                             ; preds = %2075
  %2079 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2080 = icmp eq i32 %2079, 0
  br i1 %2080, label %2554, label %2081

2081:                                             ; preds = %2078, %2075
  %2082 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 70, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %2083 = icmp eq ptr %2082, null
  br i1 %2083, label %2553, label %2554

2084:                                             ; preds = %6
  %2085 = icmp ult i8 %16, 9
  br i1 %2085, label %2086, label %2100

2086:                                             ; preds = %2084
  %2087 = load i32, ptr %5, align 8
  %2088 = and i32 %2087, 65535
  %2089 = icmp eq i32 %2088, 30
  br i1 %2089, label %2090, label %2100

2090:                                             ; preds = %2086
  %2091 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2092 = load i64, ptr %2091, align 8, !tbaa !5
  %2093 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %2094 = load i64, ptr %2093, align 8, !tbaa !28
  %2095 = lshr i64 %2094, 1
  %2096 = icmp eq i64 %2092, %2095
  br i1 %2096, label %2097, label %2100

2097:                                             ; preds = %2090
  %2098 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2554, label %2100

2100:                                             ; preds = %2097, %2090, %2086, %2084
  %2101 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2106, label %2103

2103:                                             ; preds = %2100
  %2104 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %2554, label %2106

2106:                                             ; preds = %2103, %2100
  %2107 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 71, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %2108 = icmp eq ptr %2107, null
  br i1 %2108, label %2553, label %2554

2109:                                             ; preds = %6
  %2110 = sext i32 %1 to i64
  %2111 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2110
  %2112 = load ptr, ptr %2111, align 8, !tbaa !24
  %2113 = icmp eq ptr %2112, %5
  br i1 %2113, label %2114, label %2117

2114:                                             ; preds = %2109
  %2115 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2116 = icmp eq i32 %2115, 0
  br i1 %2116, label %2554, label %2117

2117:                                             ; preds = %2114, %2109
  %2118 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %2119 = icmp eq i32 %2118, 0
  br i1 %2119, label %2123, label %2120

2120:                                             ; preds = %2117
  %2121 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2122 = icmp eq i32 %2121, 0
  br i1 %2122, label %2554, label %2123

2123:                                             ; preds = %2120, %2117
  %2124 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 72, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %2125 = icmp eq ptr %2124, null
  br i1 %2125, label %2553, label %2554

2126:                                             ; preds = %6
  %2127 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !24
  %2128 = icmp eq ptr %2127, %5
  br i1 %2128, label %2129, label %2132

2129:                                             ; preds = %2126
  %2130 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2131 = icmp eq i32 %2130, 0
  br i1 %2131, label %2554, label %2132

2132:                                             ; preds = %2129, %2126
  %2133 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2138, label %2135

2135:                                             ; preds = %2132
  %2136 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2554, label %2138

2138:                                             ; preds = %2135, %2132
  %2139 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 73, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %2140 = icmp eq ptr %2139, null
  br i1 %2140, label %2553, label %2554

2141:                                             ; preds = %6
  %2142 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %2143 = load i8, ptr %2142, align 1, !tbaa !5
  %2144 = add i8 %2143, -12
  %2145 = icmp ult i8 %2144, 6
  %2146 = load i32, ptr %4, align 8
  %2147 = lshr i32 %2146, 16
  %2148 = and i32 %2147, 255
  %2149 = zext nneg i32 %2148 to i64
  %2150 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2149
  %2151 = load i8, ptr %2150, align 1, !tbaa !5
  %2152 = add i8 %2151, -12
  %2153 = icmp ult i8 %2152, 6
  br i1 %2145, label %2313, label %2154

2154:                                             ; preds = %2141
  br i1 %2153, label %2160, label %2155

2155:                                             ; preds = %2154
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2860, ptr noundef nonnull @.str.1) #9
  %2156 = load i32, ptr %4, align 8
  %2157 = lshr i32 %2156, 16
  %2158 = and i32 %2157, 255
  %2159 = zext nneg i32 %2158 to i64
  br label %2160

2160:                                             ; preds = %2154, %2155
  %2161 = phi i64 [ %2149, %2154 ], [ %2159, %2155 ]
  %2162 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2161
  %2163 = load i8, ptr %2162, align 1, !tbaa !5
  %2164 = zext i8 %2163 to i32
  %2165 = icmp eq i32 %2164, %1
  br i1 %2165, label %2167, label %2166

2166:                                             ; preds = %2160
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2861, ptr noundef nonnull @.str.1) #9
  br label %2167

2167:                                             ; preds = %2160, %2166
  %2168 = load i32, ptr %5, align 8
  %2169 = and i32 %2168, 65535
  %2170 = icmp eq i32 %2169, 15
  br i1 %2170, label %2172, label %2171

2171:                                             ; preds = %2167
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2862, ptr noundef nonnull @.str.1) #9
  br label %2172

2172:                                             ; preds = %2167, %2171
  %2173 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2174 = load ptr, ptr %2173, align 8, !tbaa !5
  %2175 = load i32, ptr %2174, align 8, !tbaa !34
  %2176 = icmp eq i32 %2175, 1
  br i1 %2176, label %2179, label %2177

2177:                                             ; preds = %2172
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2863, ptr noundef nonnull @.str.1) #9
  %2178 = load ptr, ptr %2173, align 8, !tbaa !5
  br label %2179

2179:                                             ; preds = %2172, %2177
  %2180 = phi ptr [ %2174, %2172 ], [ %2178, %2177 ]
  %2181 = getelementptr inbounds %struct.rtvec_def, ptr %2180, i64 0, i32 1
  %2182 = load ptr, ptr %2181, align 8, !tbaa !24
  %2183 = load i32, ptr %2182, align 8
  %2184 = and i32 %2183, 65535
  %2185 = icmp eq i32 %2184, 30
  br i1 %2185, label %2187, label %2186

2186:                                             ; preds = %2179
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2864, ptr noundef nonnull @.str.1) #9
  br label %2187

2187:                                             ; preds = %2179, %2186
  %2188 = load i32, ptr %4, align 8
  %2189 = trunc i32 %2188 to i16
  switch i16 %2189, label %2374 [
    i16 33, label %2190
    i16 124, label %2200
    i16 126, label %2306
  ]

2190:                                             ; preds = %2187
  %2191 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2192 = load ptr, ptr %2191, align 8, !tbaa !5
  %2193 = load ptr, ptr %2173, align 8, !tbaa !5
  %2194 = getelementptr inbounds %struct.rtvec_def, ptr %2193, i64 0, i32 1
  %2195 = load ptr, ptr %2194, align 8, !tbaa !24
  %2196 = getelementptr inbounds %struct.rtx_def, ptr %2195, i64 0, i32 1
  %2197 = load i64, ptr %2196, align 8, !tbaa !5
  %2198 = getelementptr inbounds %struct.rtvec_def, ptr %2192, i64 0, i32 1, i64 %2197
  %2199 = load ptr, ptr %2198, align 8, !tbaa !24
  br label %2554

2200:                                             ; preds = %2187
  %2201 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2202 = load ptr, ptr %2201, align 8, !tbaa !5
  %2203 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %2204 = load ptr, ptr %2203, align 8, !tbaa !5
  %2205 = load i32, ptr %2202, align 8
  %2206 = lshr i32 %2205, 16
  %2207 = and i32 %2206, 255
  %2208 = zext nneg i32 %2207 to i64
  %2209 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2208
  %2210 = load i8, ptr %2209, align 1, !tbaa !5
  %2211 = zext i8 %2210 to i64
  %2212 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2211
  %2213 = load i8, ptr %2212, align 1, !tbaa !5
  %2214 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2208
  %2215 = load i8, ptr %2214, align 1, !tbaa !5
  %2216 = udiv i8 %2215, %2213
  %2217 = zext i8 %2216 to i32
  %2218 = load ptr, ptr %2173, align 8, !tbaa !5
  %2219 = getelementptr inbounds %struct.rtvec_def, ptr %2218, i64 0, i32 1
  %2220 = load ptr, ptr %2219, align 8, !tbaa !24
  %2221 = getelementptr inbounds %struct.rtx_def, ptr %2220, i64 0, i32 1
  %2222 = load i64, ptr %2221, align 8, !tbaa !5
  %2223 = trunc i64 %2222 to i32
  %2224 = load i32, ptr %2204, align 8
  %2225 = and i32 %2224, 65535
  %2226 = icmp eq i32 %2225, 15
  br i1 %2226, label %2228, label %2227

2227:                                             ; preds = %2200
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2891, ptr noundef nonnull @.str.1) #9
  br label %2228

2228:                                             ; preds = %2200, %2227
  %2229 = icmp slt i32 %2223, %2217
  br i1 %2229, label %2231, label %2230

2230:                                             ; preds = %2228
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2892, ptr noundef nonnull @.str.1) #9
  br label %2231

2231:                                             ; preds = %2228, %2230
  %2232 = getelementptr inbounds %struct.rtx_def, ptr %2204, i64 0, i32 1
  %2233 = load ptr, ptr %2232, align 8, !tbaa !5
  %2234 = shl i64 %2222, 32
  %2235 = ashr exact i64 %2234, 32
  %2236 = getelementptr inbounds %struct.rtvec_def, ptr %2233, i64 0, i32 1, i64 %2235
  %2237 = load ptr, ptr %2236, align 8, !tbaa !24
  %2238 = getelementptr inbounds %struct.rtx_def, ptr %2237, i64 0, i32 1
  %2239 = load i64, ptr %2238, align 8, !tbaa !5
  %2240 = trunc i64 %2239 to i32
  %2241 = load i32, ptr %2202, align 8
  %2242 = and i32 %2241, 65535
  %2243 = icmp eq i32 %2242, 125
  br i1 %2243, label %2244, label %2297

2244:                                             ; preds = %2231
  %2245 = getelementptr inbounds %struct.rtx_def, ptr %2202, i64 0, i32 1
  %2246 = load ptr, ptr %2245, align 8, !tbaa !5
  %2247 = getelementptr inbounds %struct.rtx_def, ptr %2202, i64 0, i32 1, i32 0, i32 0, i64 1
  %2248 = load ptr, ptr %2247, align 8, !tbaa !5
  %2249 = load i32, ptr %2246, align 8
  %2250 = lshr i32 %2249, 16
  %2251 = and i32 %2250, 255
  %2252 = load i32, ptr %2248, align 8
  %2253 = lshr i32 %2252, 16
  %2254 = and i32 %2253, 255
  %2255 = zext nneg i32 %2251 to i64
  %2256 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2255
  %2257 = load i8, ptr %2256, align 1, !tbaa !5
  %2258 = add i8 %2257, -12
  %2259 = icmp ult i8 %2258, 6
  br i1 %2259, label %2260, label %2270

2260:                                             ; preds = %2244
  %2261 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2255
  %2262 = load i8, ptr %2261, align 1, !tbaa !5
  %2263 = zext i8 %2262 to i64
  %2264 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2263
  %2265 = load i8, ptr %2264, align 1, !tbaa !5
  %2266 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2255
  %2267 = load i8, ptr %2266, align 1, !tbaa !5
  %2268 = udiv i8 %2267, %2265
  %2269 = zext i8 %2268 to i32
  br label %2270

2270:                                             ; preds = %2244, %2260
  %2271 = phi i32 [ %2269, %2260 ], [ 1, %2244 ]
  %2272 = zext nneg i32 %2254 to i64
  %2273 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2272
  %2274 = load i8, ptr %2273, align 1, !tbaa !5
  %2275 = add i8 %2274, -12
  %2276 = icmp ult i8 %2275, 6
  br i1 %2276, label %2277, label %2287

2277:                                             ; preds = %2270
  %2278 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2272
  %2279 = load i8, ptr %2278, align 1, !tbaa !5
  %2280 = zext i8 %2279 to i64
  %2281 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2280
  %2282 = load i8, ptr %2281, align 1, !tbaa !5
  %2283 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2272
  %2284 = load i8, ptr %2283, align 1, !tbaa !5
  %2285 = udiv i8 %2284, %2282
  %2286 = zext i8 %2285 to i32
  br label %2287

2287:                                             ; preds = %2270, %2277
  %2288 = phi i32 [ %2286, %2277 ], [ 1, %2270 ]
  %2289 = add nuw nsw i32 %2288, %2271
  %2290 = icmp eq i32 %2289, %2217
  br i1 %2290, label %2292, label %2291

2291:                                             ; preds = %2287
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2926, ptr noundef nonnull @.str.1) #9
  br label %2292

2292:                                             ; preds = %2287, %2291
  %2293 = icmp sgt i32 %2288, %2240
  %2294 = select i1 %2293, i32 0, i32 %2271
  %2295 = sub nsw i32 %2240, %2294
  %2296 = select i1 %2293, ptr %2246, ptr %2248
  br label %2297

2297:                                             ; preds = %2231, %2292
  %2298 = phi i32 [ %2295, %2292 ], [ %2240, %2231 ]
  %2299 = phi ptr [ %2296, %2292 ], [ %2202, %2231 ]
  %2300 = tail call ptr @rtvec_alloc(i32 noundef 1) #9
  %2301 = sext i32 %2298 to i64
  %2302 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2301) #9
  %2303 = getelementptr inbounds %struct.rtvec_def, ptr %2300, i64 0, i32 1
  store ptr %2302, ptr %2303, align 8, !tbaa !24
  %2304 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %2300) #9
  %2305 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 124, i32 noundef %1, ptr noundef nonnull %2299, ptr noundef %2304) #9
  br label %2554

2306:                                             ; preds = %2187
  %2307 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2308 = load ptr, ptr %2307, align 8, !tbaa !5
  %2309 = load i32, ptr %2308, align 8
  %2310 = lshr i32 %2309, 16
  %2311 = and i32 %2310, 255
  %2312 = icmp eq i32 %2311, %1
  br i1 %2312, label %2554, label %2374

2313:                                             ; preds = %2141
  br i1 %2153, label %2319, label %2314

2314:                                             ; preds = %2313
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2954, ptr noundef nonnull @.str.1) #9
  %2315 = load i32, ptr %4, align 8
  %2316 = lshr i32 %2315, 16
  %2317 = and i32 %2316, 255
  %2318 = zext nneg i32 %2317 to i64
  br label %2319

2319:                                             ; preds = %2313, %2314
  %2320 = phi i64 [ %2149, %2313 ], [ %2318, %2314 ]
  %2321 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2322 = load i8, ptr %2321, align 1, !tbaa !5
  %2323 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2320
  %2324 = load i8, ptr %2323, align 1, !tbaa !5
  %2325 = icmp eq i8 %2322, %2324
  br i1 %2325, label %2327, label %2326

2326:                                             ; preds = %2319
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2956, ptr noundef nonnull @.str.1) #9
  br label %2327

2327:                                             ; preds = %2319, %2326
  %2328 = load i32, ptr %5, align 8
  %2329 = and i32 %2328, 65535
  %2330 = icmp eq i32 %2329, 15
  br i1 %2330, label %2332, label %2331

2331:                                             ; preds = %2327
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2957, ptr noundef nonnull @.str.1) #9
  br label %2332

2332:                                             ; preds = %2327, %2331
  %2333 = load i32, ptr %4, align 8
  %2334 = and i32 %2333, 65535
  %2335 = icmp eq i32 %2334, 33
  br i1 %2335, label %2336, label %2374

2336:                                             ; preds = %2332
  %2337 = zext i8 %2322 to i64
  %2338 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2337
  %2339 = load i8, ptr %2338, align 1, !tbaa !5
  %2340 = load i8, ptr %15, align 1, !tbaa !5
  %2341 = udiv i8 %2340, %2339
  %2342 = zext i8 %2341 to i32
  %2343 = tail call ptr @rtvec_alloc(i32 noundef %2342) #9
  %2344 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2345 = load ptr, ptr %2344, align 8, !tbaa !5
  %2346 = load i32, ptr %2345, align 8, !tbaa !34
  %2347 = icmp eq i32 %2346, %2342
  br i1 %2347, label %2349, label %2348

2348:                                             ; preds = %2336
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2966, ptr noundef nonnull @.str.1) #9
  br label %2349

2349:                                             ; preds = %2336, %2348
  %2350 = icmp ugt i8 %2339, %2340
  br i1 %2350, label %2372, label %2351

2351:                                             ; preds = %2349
  %2352 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2353 = zext i8 %2341 to i64
  br label %2354

2354:                                             ; preds = %2351, %2363
  %2355 = phi i64 [ 0, %2351 ], [ %2370, %2363 ]
  %2356 = load ptr, ptr %2344, align 8, !tbaa !5
  %2357 = getelementptr inbounds %struct.rtvec_def, ptr %2356, i64 0, i32 1, i64 %2355
  %2358 = load ptr, ptr %2357, align 8, !tbaa !24
  %2359 = load i32, ptr %2358, align 8
  %2360 = and i32 %2359, 65535
  %2361 = icmp eq i32 %2360, 30
  br i1 %2361, label %2363, label %2362

2362:                                             ; preds = %2354
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2971, ptr noundef nonnull @.str.1) #9
  br label %2363

2363:                                             ; preds = %2354, %2362
  %2364 = load ptr, ptr %2352, align 8, !tbaa !5
  %2365 = getelementptr inbounds %struct.rtx_def, ptr %2358, i64 0, i32 1
  %2366 = load i64, ptr %2365, align 8, !tbaa !5
  %2367 = getelementptr inbounds %struct.rtvec_def, ptr %2364, i64 0, i32 1, i64 %2366
  %2368 = load ptr, ptr %2367, align 8, !tbaa !24
  %2369 = getelementptr inbounds %struct.rtvec_def, ptr %2343, i64 0, i32 1, i64 %2355
  store ptr %2368, ptr %2369, align 8, !tbaa !24
  %2370 = add nuw nsw i64 %2355, 1
  %2371 = icmp ult i64 %2370, %2353
  br i1 %2371, label %2354, label %2372, !llvm.loop !65

2372:                                             ; preds = %2363, %2349
  %2373 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %2343) #9
  br label %2554

2374:                                             ; preds = %2187, %2332, %2306
  %2375 = phi i32 [ %2188, %2187 ], [ %2333, %2332 ], [ %2188, %2306 ]
  %2376 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2377 = load ptr, ptr %2376, align 8, !tbaa !5
  %2378 = load i32, ptr %2377, align 8, !tbaa !34
  %2379 = icmp eq i32 %2378, 1
  br i1 %2379, label %2380, label %2432

2380:                                             ; preds = %2374
  %2381 = getelementptr inbounds %struct.rtvec_def, ptr %2377, i64 0, i32 1
  %2382 = load ptr, ptr %2381, align 8, !tbaa !24
  %2383 = load i32, ptr %2382, align 8
  %2384 = and i32 %2383, 65535
  %2385 = icmp eq i32 %2384, 30
  %2386 = and i32 %2375, 65535
  %2387 = icmp eq i32 %2386, 125
  %2388 = and i1 %2385, %2387
  br i1 %2388, label %2389, label %2432

2389:                                             ; preds = %2380
  %2390 = lshr i32 %2375, 16
  %2391 = and i32 %2390, 255
  %2392 = icmp eq i32 %2391, %1
  br i1 %2392, label %2554, label %2393

2393:                                             ; preds = %2389
  %2394 = getelementptr inbounds %struct.rtx_def, ptr %2382, i64 0, i32 1
  %2395 = load i64, ptr %2394, align 8, !tbaa !5
  %2396 = load i8, ptr %15, align 1, !tbaa !5
  %2397 = zext i8 %2396 to i64
  %2398 = mul nsw i64 %2395, %2397
  %2399 = trunc i64 %2398 to i32
  br label %2400

2400:                                             ; preds = %2393, %2419
  %2401 = phi i32 [ %2421, %2419 ], [ %2399, %2393 ]
  %2402 = phi ptr [ %2422, %2419 ], [ %4, %2393 ]
  %2403 = getelementptr inbounds %struct.rtx_def, ptr %2402, i64 0, i32 1
  %2404 = load ptr, ptr %2403, align 8, !tbaa !5
  %2405 = load i32, ptr %2404, align 8
  %2406 = lshr i32 %2405, 16
  %2407 = and i32 %2406, 255
  %2408 = zext nneg i32 %2407 to i64
  %2409 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2408
  %2410 = load i8, ptr %2409, align 1, !tbaa !5
  %2411 = zext i8 %2410 to i64
  %2412 = sext i32 %2401 to i64
  %2413 = icmp slt i64 %2412, %2411
  br i1 %2413, label %2419, label %2414

2414:                                             ; preds = %2400
  %2415 = zext i8 %2410 to i32
  %2416 = sub i32 %2401, %2415
  %2417 = getelementptr inbounds %struct.rtx_def, ptr %2402, i64 0, i32 1, i32 0, i32 0, i64 1
  %2418 = load ptr, ptr %2417, align 8, !tbaa !5
  br label %2419

2419:                                             ; preds = %2400, %2414
  %2420 = phi ptr [ %2418, %2414 ], [ %2404, %2400 ]
  %2421 = phi i32 [ %2416, %2414 ], [ %2401, %2400 ]
  %2422 = tail call ptr @avoid_constant_pool_reference(ptr noundef %2420) #8
  %2423 = load i32, ptr %2422, align 8
  %2424 = lshr i32 %2423, 16
  %2425 = and i32 %2424, 255
  %2426 = icmp ne i32 %2425, %1
  %2427 = and i32 %2423, 65535
  %2428 = icmp eq i32 %2427, 125
  %2429 = and i1 %2428, %2426
  br i1 %2429, label %2400, label %2430, !llvm.loop !66

2430:                                             ; preds = %2419
  %2431 = icmp eq i32 %2425, %1
  br i1 %2431, label %2554, label %2432

2432:                                             ; preds = %2430, %2380, %2374
  br label %2554

2433:                                             ; preds = %6
  %2434 = load i32, ptr %4, align 8
  %2435 = lshr i32 %2434, 16
  %2436 = and i32 %2435, 255
  %2437 = icmp eq i32 %2436, 0
  br i1 %2437, label %2438, label %2442

2438:                                             ; preds = %2433
  %2439 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2440 = load i8, ptr %2439, align 1, !tbaa !5
  %2441 = zext i8 %2440 to i32
  br label %2442

2442:                                             ; preds = %2433, %2438
  %2443 = phi i32 [ %2441, %2438 ], [ %2436, %2433 ]
  %2444 = load i32, ptr %5, align 8
  %2445 = lshr i32 %2444, 16
  %2446 = and i32 %2445, 255
  %2447 = icmp eq i32 %2446, 0
  br i1 %2447, label %2448, label %2452

2448:                                             ; preds = %2442
  %2449 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2450 = load i8, ptr %2449, align 1, !tbaa !5
  %2451 = zext i8 %2450 to i32
  br label %2452

2452:                                             ; preds = %2442, %2448
  %2453 = phi i32 [ %2451, %2448 ], [ %2446, %2442 ]
  %2454 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %2455 = load i8, ptr %2454, align 1, !tbaa !5
  %2456 = add i8 %2455, -12
  %2457 = icmp ult i8 %2456, 6
  br i1 %2457, label %2460, label %2458

2458:                                             ; preds = %2452
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3016, ptr noundef nonnull @.str.1) #9
  %2459 = load i8, ptr %15, align 1, !tbaa !5
  br label %2460

2460:                                             ; preds = %2452, %2458
  %2461 = phi i8 [ %16, %2452 ], [ %2459, %2458 ]
  %2462 = zext nneg i32 %2443 to i64
  %2463 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2462
  %2464 = load i8, ptr %2463, align 1, !tbaa !5
  %2465 = zext i8 %2464 to i32
  %2466 = zext nneg i32 %2453 to i64
  %2467 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2466
  %2468 = load i8, ptr %2467, align 1, !tbaa !5
  %2469 = zext i8 %2468 to i32
  %2470 = add nuw nsw i32 %2469, %2465
  %2471 = zext i8 %2461 to i32
  %2472 = icmp eq i32 %2470, %2471
  br i1 %2472, label %2474, label %2473

2473:                                             ; preds = %2460
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3018, ptr noundef nonnull @.str.1) #9
  br label %2474

2474:                                             ; preds = %2460, %2473
  %2475 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2462
  %2476 = load i8, ptr %2475, align 1, !tbaa !5
  %2477 = add i8 %2476, -12
  %2478 = icmp ult i8 %2477, 6
  %2479 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2480 = load i8, ptr %2479, align 1, !tbaa !5
  br i1 %2478, label %2481, label %2485

2481:                                             ; preds = %2474
  %2482 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2462
  %2483 = load i8, ptr %2482, align 1, !tbaa !5
  %2484 = icmp eq i8 %2480, %2483
  br i1 %2484, label %2490, label %2488

2485:                                             ; preds = %2474
  %2486 = zext i8 %2480 to i32
  %2487 = icmp eq i32 %2443, %2486
  br i1 %2487, label %2490, label %2488

2488:                                             ; preds = %2485, %2481
  %2489 = phi i32 [ 3022, %2481 ], [ 3024, %2485 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %2489, ptr noundef nonnull @.str.1) #9
  br label %2490

2490:                                             ; preds = %2488, %2485, %2481
  %2491 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2466
  %2492 = load i8, ptr %2491, align 1, !tbaa !5
  %2493 = add i8 %2492, -12
  %2494 = icmp ult i8 %2493, 6
  br i1 %2494, label %2495, label %2499

2495:                                             ; preds = %2490
  %2496 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2466
  %2497 = load i8, ptr %2496, align 1, !tbaa !5
  %2498 = icmp eq i8 %2480, %2497
  br i1 %2498, label %2504, label %2502

2499:                                             ; preds = %2490
  %2500 = zext i8 %2480 to i32
  %2501 = icmp eq i32 %2453, %2500
  br i1 %2501, label %2504, label %2502

2502:                                             ; preds = %2499, %2495
  %2503 = phi i32 [ 3028, %2495 ], [ 3030, %2499 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %2503, ptr noundef nonnull @.str.1) #9
  br label %2504

2504:                                             ; preds = %2502, %2499, %2495
  %2505 = load i32, ptr %4, align 8
  %2506 = trunc i32 %2505 to i16
  switch i16 %2506, label %2554 [
    i16 33, label %2507
    i16 30, label %2507
    i16 32, label %2507
  ]

2507:                                             ; preds = %2504, %2504, %2504
  %2508 = load i32, ptr %5, align 8
  %2509 = trunc i32 %2508 to i16
  switch i16 %2509, label %2554 [
    i16 33, label %2510
    i16 30, label %2510
    i16 32, label %2510
  ]

2510:                                             ; preds = %2507, %2507, %2507
  %2511 = zext i8 %2480 to i64
  %2512 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2511
  %2513 = load i8, ptr %2512, align 1, !tbaa !5
  %2514 = load i8, ptr %15, align 1, !tbaa !5
  %2515 = udiv i8 %2514, %2513
  %2516 = zext i8 %2515 to i32
  %2517 = tail call ptr @rtvec_alloc(i32 noundef %2516) #9
  br i1 %2478, label %2518, label %2522

2518:                                             ; preds = %2510
  %2519 = load i8, ptr %2463, align 1, !tbaa !5
  %2520 = udiv i8 %2519, %2513
  %2521 = zext i8 %2520 to i64
  br label %2522

2522:                                             ; preds = %2510, %2518
  %2523 = phi i64 [ %2521, %2518 ], [ 1, %2510 ]
  %2524 = icmp ugt i8 %2513, %2514
  br i1 %2524, label %2550, label %2525

2525:                                             ; preds = %2522
  %2526 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2527 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2528 = zext i8 %2515 to i64
  br label %2529

2529:                                             ; preds = %2525, %2545
  %2530 = phi i64 [ 0, %2525 ], [ %2548, %2545 ]
  %2531 = icmp ult i64 %2530, %2523
  br i1 %2531, label %2532, label %2536

2532:                                             ; preds = %2529
  br i1 %2478, label %2533, label %2545

2533:                                             ; preds = %2532
  %2534 = load ptr, ptr %2527, align 8, !tbaa !5
  %2535 = getelementptr inbounds %struct.rtvec_def, ptr %2534, i64 0, i32 1, i64 %2530
  br label %2542

2536:                                             ; preds = %2529
  br i1 %2494, label %2537, label %2545

2537:                                             ; preds = %2536
  %2538 = load ptr, ptr %2526, align 8, !tbaa !5
  %2539 = sub nsw i64 %2530, %2523
  %2540 = and i64 %2539, 4294967295
  %2541 = getelementptr inbounds %struct.rtvec_def, ptr %2538, i64 0, i32 1, i64 %2540
  br label %2542

2542:                                             ; preds = %2537, %2533
  %2543 = phi ptr [ %2535, %2533 ], [ %2541, %2537 ]
  %2544 = load ptr, ptr %2543, align 8, !tbaa !24
  br label %2545

2545:                                             ; preds = %2542, %2536, %2532
  %2546 = phi ptr [ %4, %2532 ], [ %5, %2536 ], [ %2544, %2542 ]
  %2547 = getelementptr inbounds %struct.rtvec_def, ptr %2517, i64 0, i32 1, i64 %2530
  store ptr %2546, ptr %2547, align 8, !tbaa !24
  %2548 = add nuw nsw i64 %2530, 1
  %2549 = icmp ult i64 %2548, %2528
  br i1 %2549, label %2529, label %2550, !llvm.loop !67

2550:                                             ; preds = %2545, %2522
  %2551 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %2517) #9
  br label %2554

2552:                                             ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3072, ptr noundef nonnull @.str.1) #9
  br label %2553

2553:                                             ; preds = %257, %269, %272, %1933, %2054, %2056, %290, %297, %301, %305, %309, %316, %2001, %663, %2138, %2123, %2106, %2081, %2044, %2046, %2036, %2030, %2024, %1976, %1980, %1900, %1896, %1949, %1834, %1838, %1814, %1456, %1260, %918, %913, %921, %667, %670, %276, %280, %286, %258, %263, %266, %2552
  br label %2554

2554:                                             ; preds = %2008, %1970, %2389, %1351, %1349, %1010, %1026, %1018, %2550, %2507, %2504, %1934, %1774, %1493, %1477, %1255, %860, %506, %159, %2306, %6, %6, %6, %6, %6, %6, %6, %6, %2138, %2135, %2129, %2123, %2120, %2114, %2106, %2103, %2097, %2081, %2078, %2072, %2056, %2049, %2046, %2039, %2036, %2021, %2014, %1996, %1961, %1937, %1882, %1885, %1875, %1822, %1814, %1693, %1501, %1464, %1456, %1453, %1398, %1263, %1260, %1051, %979, %941, %931, %924, %921, %749, %723, %670, %585, %427, %316, %266, %254, %41, %2430, %2553, %2432, %2372, %2297, %2190, %2012, %1999, %1985, %1974, %1964, %1952, %1946, %1940, %1843, %1831, %1825, %1810, %1792, %1670, %1647, %1625, %1607, %1588, %1567, %1557, %1530, %1426, %1383, %1367, %1327, %1315, %1299, %1289, %1277, %1207, %1175, %1100, %970, %908, %882, %800, %768, %676, %653, %618, %568, %559, %549, %538, %523, %387, %382, %351, %245, %226, %188, %84, %76, %68, %58, %50
  %2555 = phi ptr [ null, %2553 ], [ %2373, %2372 ], [ null, %2432 ], [ %2422, %2430 ], [ %2199, %2190 ], [ %2305, %2297 ], [ %2000, %1999 ], [ %2013, %2012 ], [ %1965, %1964 ], [ %1975, %1974 ], [ %1990, %1985 ], [ %1935, %1934 ], [ %1941, %1940 ], [ %1948, %1946 ], [ %1955, %1952 ], [ %1826, %1825 ], [ %1833, %1831 ], [ %1846, %1843 ], [ %1560, %1557 ], [ %1577, %1567 ], [ %1598, %1588 ], [ %1795, %1792 ], [ %1813, %1810 ], [ %1674, %1670 ], [ %1651, %1647 ], [ %1628, %1625 ], [ %1611, %1607 ], [ %1531, %1530 ], [ %1278, %1277 ], [ %1300, %1299 ], [ %1318, %1315 ], [ %1328, %1327 ], [ %1429, %1426 ], [ %1387, %1383 ], [ %1370, %1367 ], [ %1292, %1289 ], [ %1102, %1100 ], [ %1177, %1175 ], [ %1213, %1207 ], [ %1259, %1255 ], [ %971, %970 ], [ %677, %676 ], [ %770, %768 ], [ %804, %800 ], [ %911, %908 ], [ %885, %882 ], [ %861, %860 ], [ %388, %387 ], [ %526, %523 ], [ %541, %538 ], [ %551, %549 ], [ %564, %559 ], [ %574, %568 ], [ %662, %653 ], [ %624, %618 ], [ %518, %506 ], [ %383, %382 ], [ %354, %351 ], [ %53, %50 ], [ %61, %58 ], [ %71, %68 ], [ %79, %76 ], [ %87, %84 ], [ %191, %188 ], [ %246, %245 ], [ %232, %226 ], [ %171, %159 ], [ %2, %41 ], [ %255, %254 ], [ %267, %266 ], [ %292, %316 ], [ %2, %427 ], [ %586, %585 ], [ %671, %670 ], [ %3, %723 ], [ %2, %749 ], [ %922, %921 ], [ %2, %924 ], [ %3, %931 ], [ %2, %941 ], [ %3, %979 ], [ %3, %1051 ], [ %1261, %1260 ], [ %2, %1263 ], [ %1399, %1398 ], [ %1454, %1453 ], [ %1457, %1456 ], [ %5, %1464 ], [ %2, %1501 ], [ %3, %1693 ], [ %1815, %1814 ], [ %4, %1822 ], [ %2, %1875 ], [ %2, %1885 ], [ %2, %1882 ], [ %4, %1937 ], [ %4, %1961 ], [ %4, %1996 ], [ %2, %2014 ], [ %2, %2021 ], [ %2, %2036 ], [ %2, %2039 ], [ %2, %2046 ], [ %2, %2049 ], [ %2, %2056 ], [ %3, %2072 ], [ %2, %2078 ], [ %2082, %2081 ], [ %3, %2097 ], [ %2, %2103 ], [ %2107, %2106 ], [ %3, %2114 ], [ %2, %2120 ], [ %2124, %2123 ], [ %3, %2129 ], [ %2, %2135 ], [ %2139, %2138 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ %2308, %2306 ], [ %1494, %1493 ], [ %2, %1477 ], [ %1776, %1774 ], [ %2551, %2550 ], [ null, %2507 ], [ null, %2504 ], [ %5, %1010 ], [ %1032, %1026 ], [ %1020, %1018 ], [ %1353, %1351 ], [ %1350, %1349 ], [ %4, %2389 ], [ %1973, %1970 ], [ %2011, %2008 ]
  ret ptr %2555
}

; Function Attrs: optsize
declare void @real_convert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_to_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @add_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mul_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lrotate_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rrotate_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_const_relational_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  br label %9

9:                                                ; preds = %100, %4
  %10 = phi i32 [ %0, %4 ], [ %101, %100 ]
  %11 = phi i32 [ %1, %4 ], [ %53, %100 ]
  %12 = phi ptr [ %2, %4 ], [ %95, %100 ]
  %13 = phi ptr [ %3, %4 ], [ %102, %100 ]
  %14 = icmp eq i32 %11, 0
  %15 = load i32, ptr %12, align 8
  br i1 %14, label %16, label %25

16:                                               ; preds = %9
  %17 = and i32 %15, 16711680
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, ptr %13, align 8
  %21 = and i32 %20, 16711680
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4259, ptr noundef nonnull @.str.1) #9
  %24 = load i32, ptr %12, align 8
  br label %25

25:                                               ; preds = %9, %19, %23
  %26 = phi i32 [ %15, %9 ], [ %15, %19 ], [ %24, %23 ]
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 48
  %29 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %30 = icmp eq ptr %29, %13
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = lshr i32 %26, 16
  %34 = and i32 %33, 255
  br label %49

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load ptr, ptr %36, align 8, !tbaa !5
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, ptr %38, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %599, label %49

49:                                               ; preds = %32, %44, %35
  %50 = phi i32 [ %34, %32 ], [ 0, %44 ], [ %42, %35 ]
  %51 = phi ptr [ %13, %32 ], [ %38, %44 ], [ %38, %35 ]
  %52 = phi ptr [ %12, %32 ], [ %39, %44 ], [ %39, %35 ]
  %53 = phi i32 [ %11, %32 ], [ %47, %44 ], [ %42, %35 ]
  %54 = zext nneg i32 %50 to i64
  %55 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = icmp eq i8 %56, 1
  br i1 %57, label %599, label %58

58:                                               ; preds = %49
  %59 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %52, ptr noundef %51) #9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @swap_condition(i32 noundef %10) #9
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi ptr [ %52, %61 ], [ %51, %58 ]
  %65 = phi ptr [ %51, %61 ], [ %52, %58 ]
  %66 = phi i32 [ %62, %61 ], [ %10, %58 ]
  %67 = tail call ptr @avoid_constant_pool_reference(ptr noundef %65) #8
  %68 = tail call ptr @avoid_constant_pool_reference(ptr noundef %64) #8
  %69 = zext i32 %53 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !5
  switch i8 %71, label %125 [
    i8 2, label %72
    i8 3, label %72
    i8 10, label %72
    i8 12, label %72
    i8 8, label %104
    i8 9, label %104
    i8 11, label %104
    i8 17, label %104
  ]

72:                                               ; preds = %63, %63, %63, %63
  %73 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %74 = icmp ne ptr %68, %73
  %75 = and i32 %66, -2
  %76 = icmp eq i32 %75, 80
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = load i32, ptr %65, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, ptr %67, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 30
  br i1 %85, label %86, label %94

86:                                               ; preds = %82, %78
  %87 = load i32, ptr %64, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 37
  br i1 %89, label %103, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %68, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 30
  br i1 %93, label %103, label %94

94:                                               ; preds = %90, %82
  %95 = tail call ptr @simplify_binary_operation(i32 noundef 50, i32 noundef %53, ptr noundef nonnull %65, ptr noundef %64) #8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = tail call zeroext i8 @nonzero_address_p(ptr noundef nonnull %95) #9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = tail call i32 @signed_condition(i32 noundef %66) #9
  %102 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %9

103:                                              ; preds = %97, %94, %90, %86, %72
  switch i8 %71, label %125 [
    i8 8, label %104
    i8 9, label %104
    i8 11, label %104
  ]

104:                                              ; preds = %63, %63, %63, %63, %103, %103, %103
  %105 = and i8 %71, -2
  %106 = icmp eq i8 %105, 8
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %69
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = zext i8 %109 to i32
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i32 [ %53, %104 ], [ %110, %107 ]
  %113 = add i32 %112, -38
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !24
  %117 = getelementptr inbounds %struct.real_format, ptr %116, i64 0, i32 11
  %118 = load i8, ptr %117, align 2, !tbaa !29
  %119 = icmp eq i8 %118, 0
  %120 = load i32, ptr @flag_finite_math_only, align 4
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %119, i1 true, i1 %121
  %123 = icmp eq i32 %66, 91
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %127, label %129

125:                                              ; preds = %63, %103
  %126 = icmp eq i32 %66, 91
  br i1 %126, label %127, label %129

127:                                              ; preds = %111, %125
  %128 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

129:                                              ; preds = %111, %125
  switch i8 %71, label %151 [
    i8 8, label %130
    i8 9, label %130
    i8 11, label %130
    i8 17, label %130
  ]

130:                                              ; preds = %129, %129, %129, %129
  %131 = and i8 %71, -2
  %132 = icmp eq i8 %131, 8
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %69
  %135 = load i8, ptr %134, align 1, !tbaa !5
  %136 = zext i8 %135 to i32
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i32 [ %53, %130 ], [ %136, %133 ]
  %139 = add i32 %138, -38
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !24
  %143 = getelementptr inbounds %struct.real_format, ptr %142, i64 0, i32 11
  %144 = load i8, ptr %143, align 2, !tbaa !29
  %145 = icmp eq i8 %144, 0
  %146 = load i32, ptr @flag_finite_math_only, align 4
  %147 = icmp ne i32 %146, 0
  %148 = select i1 %145, i1 true, i1 %147
  %149 = icmp eq i32 %66, 90
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %153, label %155

151:                                              ; preds = %129
  %152 = icmp eq i32 %66, 90
  br i1 %152, label %153, label %155

153:                                              ; preds = %137, %151
  %154 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %599

155:                                              ; preds = %137, %151
  %156 = load i32, ptr %67, align 8
  %157 = lshr i32 %156, 16
  %158 = and i32 %157, 255
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !5
  switch i8 %161, label %206 [
    i8 8, label %162
    i8 9, label %162
    i8 11, label %162
    i8 17, label %162
  ]

162:                                              ; preds = %155, %155, %155, %155
  %163 = and i8 %161, -2
  %164 = icmp eq i8 %163, 8
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %159
  %167 = load i8, ptr %166, align 1, !tbaa !5
  %168 = zext i8 %167 to i32
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i32 [ %158, %162 ], [ %168, %165 ]
  %171 = add nsw i32 %170, -38
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !24
  %175 = getelementptr inbounds %struct.real_format, ptr %174, i64 0, i32 11
  %176 = load i8, ptr %175, align 2, !tbaa !29
  %177 = icmp eq i8 %176, 0
  %178 = load i32, ptr @flag_finite_math_only, align 4
  %179 = icmp ne i32 %178, 0
  %180 = select i1 %177, i1 true, i1 %179
  %181 = icmp eq i32 %66, 92
  %182 = select i1 %180, i1 true, i1 %181
  %183 = icmp eq i32 %66, 95
  %184 = select i1 %182, i1 true, i1 %183
  %185 = icmp eq i32 %66, 93
  %186 = select i1 %184, i1 true, i1 %185
  br i1 %186, label %206, label %187

187:                                              ; preds = %169
  switch i32 %66, label %214 [
    i32 97, label %188
    i32 85, label %188
    i32 83, label %188
  ]

188:                                              ; preds = %187, %187, %187
  %189 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %206, label %191

191:                                              ; preds = %188
  switch i8 %161, label %206 [
    i8 8, label %192
    i8 9, label %192
    i8 11, label %192
    i8 17, label %192
  ]

192:                                              ; preds = %191, %191, %191, %191
  br i1 %164, label %197, label %193

193:                                              ; preds = %192
  %194 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %159
  %195 = load i8, ptr %194, align 1, !tbaa !5
  %196 = zext i8 %195 to i32
  br label %197

197:                                              ; preds = %193, %192
  %198 = phi i32 [ %158, %192 ], [ %196, %193 ]
  %199 = add nsw i32 %198, -38
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !24
  %203 = getelementptr inbounds %struct.real_format, ptr %202, i64 0, i32 11
  %204 = load i8, ptr %203, align 2, !tbaa !29
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %191, %155, %197, %188, %169
  %207 = tail call i32 @rtx_equal_p(ptr noundef nonnull %67, ptr noundef %68) #9
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %206
  %210 = tail call i32 @side_effects_p(ptr noundef nonnull %67) #9
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = tail call fastcc ptr @comparison_result(i32 noundef %66, i32 noundef 1) #8
  br label %599

214:                                              ; preds = %187, %197, %209, %206
  %215 = load i32, ptr %67, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 32
  br i1 %217, label %218, label %255

218:                                              ; preds = %214
  %219 = load i32, ptr %68, align 8
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 32
  br i1 %221, label %222, label %255

222:                                              ; preds = %218
  %223 = lshr i32 %215, 16
  %224 = and i32 %223, 255
  %225 = zext nneg i32 %224 to i64
  %226 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !5
  %228 = and i8 %227, -2
  %229 = icmp eq i8 %228, 8
  br i1 %229, label %230, label %255

230:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %231 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %231, i64 32, i1 false), !tbaa.struct !43
  %232 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %232, i64 32, i1 false), !tbaa.struct !43
  %233 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #9
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = call zeroext i8 @real_isnan(ptr noundef nonnull %6) #9
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %235, %230
  switch i32 %66, label %253 [
    i32 92, label %239
    i32 96, label %239
    i32 94, label %239
    i32 95, label %239
    i32 93, label %239
    i32 80, label %239
    i32 90, label %239
    i32 81, label %241
    i32 85, label %241
    i32 83, label %241
    i32 84, label %241
    i32 82, label %241
    i32 97, label %241
    i32 91, label %241
  ]

239:                                              ; preds = %238, %238, %238, %238, %238, %238, %238
  %240 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %253

241:                                              ; preds = %238, %238, %238, %238, %238, %238, %238
  %242 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %253

243:                                              ; preds = %235
  %244 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %248 = icmp eq i8 %247, 0
  %249 = select i1 %248, i32 4, i32 2
  br label %250

250:                                              ; preds = %243, %246
  %251 = phi i32 [ %249, %246 ], [ 1, %243 ]
  %252 = call fastcc ptr @comparison_result(i32 noundef %66, i32 noundef %251) #8
  br label %253

253:                                              ; preds = %238, %250, %241, %239
  %254 = phi ptr [ %242, %241 ], [ %240, %239 ], [ %252, %250 ], [ null, %238 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %599

255:                                              ; preds = %222, %218, %214
  %256 = icmp eq i8 %71, 2
  %257 = icmp eq i32 %53, 0
  %258 = or i1 %257, %256
  br i1 %258, label %259, label %342

259:                                              ; preds = %255
  %260 = trunc i32 %215 to i16
  switch i16 %260, label %342 [
    i16 32, label %261
    i16 30, label %261
  ]

261:                                              ; preds = %259, %259
  %262 = load i32, ptr %68, align 8
  %263 = and i32 %262, 65535
  %264 = trunc i32 %262 to i16
  switch i16 %264, label %342 [
    i16 32, label %265
    i16 30, label %265
  ]

265:                                              ; preds = %261, %261
  %266 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %267 = load i8, ptr %266, align 1, !tbaa !5
  %268 = zext i8 %267 to i32
  %269 = shl nuw nsw i32 %268, 3
  %270 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %271 = load i64, ptr %270, align 8, !tbaa !5
  br i1 %217, label %272, label %275

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %274 = load i64, ptr %273, align 8, !tbaa !5
  br label %277

275:                                              ; preds = %265
  %276 = ashr i64 %271, 63
  br label %277

277:                                              ; preds = %275, %272
  %278 = phi i64 [ %274, %272 ], [ %276, %275 ]
  %279 = icmp eq i32 %263, 32
  %280 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %281 = load i64, ptr %280, align 8, !tbaa !5
  br i1 %279, label %282, label %285

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  %284 = load i64, ptr %283, align 8, !tbaa !5
  br label %287

285:                                              ; preds = %277
  %286 = ashr i64 %281, 63
  br label %287

287:                                              ; preds = %285, %282
  %288 = phi i64 [ %284, %282 ], [ %286, %285 ]
  %289 = add i8 %267, -1
  %290 = icmp ult i8 %289, 7
  br i1 %290, label %291, label %308

291:                                              ; preds = %287
  %292 = zext nneg i32 %269 to i64
  %293 = shl nsw i64 -1, %292
  %294 = xor i64 %293, -1
  %295 = and i64 %271, %294
  %296 = and i64 %281, %294
  %297 = add nsw i32 %269, -1
  %298 = zext nneg i32 %297 to i64
  %299 = shl nuw nsw i64 1, %298
  %300 = and i64 %271, %299
  %301 = icmp eq i64 %300, 0
  %302 = select i1 %301, i64 0, i64 %293
  %303 = or i64 %302, %271
  %304 = and i64 %281, %299
  %305 = icmp eq i64 %304, 0
  %306 = select i1 %305, i64 0, i64 %293
  %307 = or i64 %306, %281
  br label %310

308:                                              ; preds = %287
  %309 = icmp eq i8 %289, 7
  br i1 %309, label %310, label %317

310:                                              ; preds = %291, %308
  %311 = phi i64 [ %281, %308 ], [ %296, %291 ]
  %312 = phi i64 [ %271, %308 ], [ %295, %291 ]
  %313 = phi i64 [ %281, %308 ], [ %307, %291 ]
  %314 = phi i64 [ %271, %308 ], [ %303, %291 ]
  %315 = ashr i64 %314, 63
  %316 = ashr i64 %313, 63
  br label %317

317:                                              ; preds = %310, %308
  %318 = phi i64 [ %311, %310 ], [ %281, %308 ]
  %319 = phi i64 [ %312, %310 ], [ %271, %308 ]
  %320 = phi i64 [ %315, %310 ], [ %278, %308 ]
  %321 = phi i64 [ %316, %310 ], [ %288, %308 ]
  %322 = phi i64 [ 0, %310 ], [ %278, %308 ]
  %323 = phi i64 [ 0, %310 ], [ %288, %308 ]
  %324 = icmp eq i64 %322, %323
  %325 = icmp eq i64 %319, %318
  %326 = select i1 %324, i1 %325, i1 false
  br i1 %326, label %327, label %329

327:                                              ; preds = %317
  %328 = tail call fastcc ptr @comparison_result(i32 noundef %66, i32 noundef 1) #8
  br label %599

329:                                              ; preds = %317
  %330 = icmp slt i64 %320, %321
  %331 = icmp eq i64 %320, %321
  %332 = icmp ult i64 %319, %318
  %333 = select i1 %331, i1 %332, i1 false
  %334 = select i1 %330, i1 true, i1 %333
  %335 = select i1 %334, i32 2, i32 4
  %336 = icmp ult i64 %322, %323
  %337 = select i1 %324, i1 %332, i1 false
  %338 = select i1 %336, i1 true, i1 %337
  %339 = select i1 %338, i32 8, i32 16
  %340 = or disjoint i32 %339, %335
  %341 = tail call fastcc ptr @comparison_result(i32 noundef %66, i32 noundef %340) #8
  br label %599

342:                                              ; preds = %261, %259, %255
  %343 = and i8 %71, -2
  %344 = icmp eq i8 %343, 2
  br i1 %344, label %345, label %449

345:                                              ; preds = %342
  %346 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %347 = load i8, ptr %346, align 1, !tbaa !5
  %348 = icmp ult i8 %347, 9
  br i1 %348, label %349, label %449

349:                                              ; preds = %345
  %350 = load i32, ptr %68, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 30
  br i1 %352, label %353, label %449

353:                                              ; preds = %349
  %354 = tail call i64 @nonzero_bits(ptr noundef nonnull %67, i32 noundef %53) #9
  %355 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %356 = load i64, ptr %355, align 8, !tbaa !5
  %357 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %69
  %358 = load i64, ptr %357, align 8, !tbaa !28
  %359 = lshr i64 %358, 1
  %360 = icmp ugt i64 %354, %359
  br i1 %360, label %361, label %380

361:                                              ; preds = %353
  %362 = add i32 %66, -90
  %363 = icmp ult i32 %362, -4
  %364 = zext i1 %363 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @get_mode_bounds(i32 noundef %53, i32 noundef %364, i32 noundef %53, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %365 = load ptr, ptr %7, align 8, !tbaa !24
  %366 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1
  %367 = load i64, ptr %366, align 8, !tbaa !5
  %368 = load ptr, ptr %8, align 8, !tbaa !24
  %369 = getelementptr inbounds %struct.rtx_def, ptr %368, i64 0, i32 1
  %370 = load i64, ptr %369, align 8, !tbaa !5
  br i1 %363, label %371, label %377

371:                                              ; preds = %361
  %372 = call i32 @num_sign_bit_copies(ptr noundef nonnull %67, i32 noundef %53) #9
  %373 = add i32 %372, -1
  %374 = zext i32 %373 to i64
  %375 = ashr i64 %367, %374
  %376 = ashr i64 %370, %374
  br label %377

377:                                              ; preds = %361, %371
  %378 = phi i64 [ %375, %371 ], [ %367, %361 ]
  %379 = phi i64 [ %376, %371 ], [ %370, %361 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %380

380:                                              ; preds = %353, %377
  %381 = phi i64 [ %378, %377 ], [ 0, %353 ]
  %382 = phi i64 [ %379, %377 ], [ %354, %353 ]
  switch i32 %66, label %449 [
    i32 86, label %383
    i32 82, label %390
    i32 88, label %397
    i32 84, label %404
    i32 81, label %411
    i32 87, label %416
    i32 83, label %423
    i32 89, label %430
    i32 85, label %437
    i32 80, label %444
  ]

383:                                              ; preds = %380
  %384 = icmp ugt i64 %356, %381
  br i1 %384, label %387, label %385

385:                                              ; preds = %383
  %386 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

387:                                              ; preds = %383
  %388 = icmp ugt i64 %356, %382
  %389 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br i1 %388, label %599, label %449

390:                                              ; preds = %380
  %391 = icmp sgt i64 %356, %381
  br i1 %391, label %394, label %392

392:                                              ; preds = %390
  %393 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

394:                                              ; preds = %390
  %395 = icmp sgt i64 %356, %382
  %396 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br i1 %395, label %599, label %449

397:                                              ; preds = %380
  %398 = icmp ult i64 %356, %382
  br i1 %398, label %401, label %399

399:                                              ; preds = %397
  %400 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

401:                                              ; preds = %397
  %402 = icmp ult i64 %356, %381
  %403 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br i1 %402, label %599, label %449

404:                                              ; preds = %380
  %405 = icmp slt i64 %356, %382
  br i1 %405, label %408, label %406

406:                                              ; preds = %404
  %407 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

408:                                              ; preds = %404
  %409 = icmp slt i64 %356, %381
  %410 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br i1 %409, label %599, label %449

411:                                              ; preds = %380
  %412 = icmp sge i64 %356, %381
  %413 = icmp sle i64 %356, %382
  %414 = select i1 %412, i1 %413, i1 false
  %415 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br i1 %414, label %449, label %599

416:                                              ; preds = %380
  %417 = icmp ult i64 %356, %382
  br i1 %417, label %420, label %418

418:                                              ; preds = %416
  %419 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %599

420:                                              ; preds = %416
  %421 = icmp ult i64 %356, %381
  %422 = load ptr, ptr @const_true_rtx, align 8
  br i1 %421, label %599, label %449

423:                                              ; preds = %380
  %424 = icmp slt i64 %356, %382
  br i1 %424, label %427, label %425

425:                                              ; preds = %423
  %426 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %599

427:                                              ; preds = %423
  %428 = icmp slt i64 %356, %381
  %429 = load ptr, ptr @const_true_rtx, align 8
  br i1 %428, label %599, label %449

430:                                              ; preds = %380
  %431 = icmp ugt i64 %356, %381
  br i1 %431, label %434, label %432

432:                                              ; preds = %430
  %433 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %599

434:                                              ; preds = %430
  %435 = icmp ugt i64 %356, %382
  %436 = load ptr, ptr @const_true_rtx, align 8
  br i1 %435, label %599, label %449

437:                                              ; preds = %380
  %438 = icmp sgt i64 %356, %381
  br i1 %438, label %441, label %439

439:                                              ; preds = %437
  %440 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %599

441:                                              ; preds = %437
  %442 = icmp sgt i64 %356, %382
  %443 = load ptr, ptr @const_true_rtx, align 8
  br i1 %442, label %599, label %449

444:                                              ; preds = %380
  %445 = icmp sge i64 %356, %381
  %446 = icmp sle i64 %356, %382
  %447 = select i1 %445, i1 %446, i1 false
  %448 = load ptr, ptr @const_true_rtx, align 8
  br i1 %447, label %449, label %599

449:                                              ; preds = %380, %441, %434, %427, %420, %411, %408, %401, %394, %387, %342, %444, %349, %345
  %450 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %451 = icmp eq ptr %68, %450
  br i1 %451, label %452, label %495

452:                                              ; preds = %449
  %453 = call zeroext i8 @nonzero_address_p(ptr noundef nonnull %67) #9
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %452
  switch i32 %66, label %460 [
    i32 88, label %456
    i32 81, label %456
    i32 87, label %458
    i32 80, label %458
  ]

456:                                              ; preds = %455, %455
  %457 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %599

458:                                              ; preds = %455, %455
  %459 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

460:                                              ; preds = %455, %452
  %461 = load i32, ptr %65, align 8
  %462 = and i32 %461, 65535
  %463 = icmp eq i32 %462, 62
  br i1 %463, label %464, label %495

464:                                              ; preds = %460
  %465 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %466 = load ptr, ptr %465, align 8, !tbaa !5
  %467 = call ptr @avoid_constant_pool_reference(ptr noundef %466) #8
  %468 = load i32, ptr %467, align 8
  %469 = and i32 %468, 65535
  %470 = icmp ne i32 %469, 30
  %471 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %472 = icmp eq ptr %467, %471
  %473 = select i1 %470, i1 true, i1 %472
  br i1 %473, label %495, label %474

474:                                              ; preds = %464
  %475 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %476 = load i8, ptr %475, align 1, !tbaa !5
  %477 = icmp ult i8 %476, 9
  br i1 %477, label %478, label %488

478:                                              ; preds = %474
  %479 = shl nuw nsw i8 %476, 3
  %480 = zext nneg i8 %479 to i64
  %481 = add nuw nsw i64 %480, 4294967295
  %482 = getelementptr inbounds %struct.rtx_def, ptr %467, i64 0, i32 1
  %483 = load i64, ptr %482, align 8, !tbaa !5
  %484 = and i64 %481, 4294967295
  %485 = shl nuw i64 1, %484
  %486 = and i64 %483, %485
  %487 = icmp ne i64 %486, 0
  br label %488

488:                                              ; preds = %478, %474
  %489 = phi i1 [ false, %474 ], [ %487, %478 ]
  switch i32 %66, label %495 [
    i32 81, label %599
    i32 88, label %599
    i32 80, label %490
    i32 87, label %490
    i32 85, label %492
    i32 84, label %492
    i32 83, label %494
    i32 82, label %494
  ]

490:                                              ; preds = %488, %488
  %491 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

492:                                              ; preds = %488, %488
  %493 = load ptr, ptr @const_true_rtx, align 8
  br i1 %489, label %599, label %495

494:                                              ; preds = %488, %488
  br i1 %489, label %599, label %495

495:                                              ; preds = %488, %464, %492, %460, %494, %449
  %496 = sext i32 %53 to i64
  %497 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %496
  %498 = load ptr, ptr %497, align 8, !tbaa !24
  %499 = icmp eq ptr %68, %498
  br i1 %499, label %500, label %599

500:                                              ; preds = %495
  %501 = load i32, ptr %67, align 8
  %502 = trunc i32 %501 to i16
  switch i16 %502, label %599 [
    i16 111, label %509
    i16 101, label %503
  ]

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !5
  %506 = load i32, ptr %505, align 8
  %507 = and i32 %506, 65535
  %508 = icmp eq i32 %507, 111
  br i1 %508, label %509, label %599

509:                                              ; preds = %500, %503
  switch i32 %66, label %599 [
    i32 85, label %510
    i32 82, label %555
    i32 93, label %597
  ]

510:                                              ; preds = %509
  %511 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !8
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %532, label %513

513:                                              ; preds = %510
  switch i8 %71, label %543 [
    i8 8, label %514
    i8 9, label %514
    i8 11, label %514
    i8 17, label %514
    i8 2, label %533
    i8 3, label %533
    i8 10, label %533
    i8 12, label %533
  ]

514:                                              ; preds = %513, %513, %513, %513
  %515 = icmp eq i8 %343, 8
  br i1 %515, label %520, label %516

516:                                              ; preds = %514
  %517 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %69
  %518 = load i8, ptr %517, align 1, !tbaa !5
  %519 = zext i8 %518 to i32
  br label %520

520:                                              ; preds = %516, %514
  %521 = phi i32 [ %53, %514 ], [ %519, %516 ]
  %522 = add i32 %521, -38
  %523 = zext i32 %522 to i64
  %524 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %523
  %525 = load ptr, ptr %524, align 8, !tbaa !24
  %526 = getelementptr inbounds %struct.real_format, ptr %525, i64 0, i32 11
  %527 = load i8, ptr %526, align 2, !tbaa !29
  %528 = icmp eq i8 %527, 0
  %529 = load i32, ptr @flag_finite_math_only, align 4
  %530 = icmp ne i32 %529, 0
  %531 = select i1 %528, i1 true, i1 %530
  br i1 %531, label %532, label %599

532:                                              ; preds = %520, %510
  switch i8 %71, label %543 [
    i8 2, label %533
    i8 3, label %533
    i8 10, label %533
    i8 12, label %533
  ]

533:                                              ; preds = %513, %513, %513, %513, %532, %532, %532, %532
  %534 = load i32, ptr @flag_wrapv, align 4, !tbaa !8
  %535 = icmp eq i32 %534, 0
  %536 = load i32, ptr @flag_trapv, align 4
  %537 = icmp eq i32 %536, 0
  %538 = select i1 %535, i1 %537, i1 false
  %539 = load i32, ptr @flag_strict_overflow, align 4
  %540 = icmp ne i32 %539, 0
  %541 = select i1 %538, i1 %540, i1 false
  br i1 %541, label %542, label %599

542:                                              ; preds = %533
  switch i8 %71, label %543 [
    i8 2, label %548
    i8 3, label %548
    i8 10, label %548
  ]

543:                                              ; preds = %513, %532, %542
  %544 = icmp eq i8 %71, 12
  %545 = load i32, ptr @warn_strict_overflow, align 4
  %546 = icmp sgt i32 %545, 1
  %547 = select i1 %544, i1 %546, i1 false
  br i1 %547, label %551, label %553

548:                                              ; preds = %542, %542, %542
  %549 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !8
  %550 = icmp sgt i32 %549, 1
  br i1 %550, label %551, label %553

551:                                              ; preds = %543, %548
  %552 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 187, ptr noundef nonnull @.str.2) #9
  br label %553

553:                                              ; preds = %551, %548, %543
  %554 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %599

555:                                              ; preds = %509
  switch i8 %71, label %585 [
    i8 8, label %556
    i8 9, label %556
    i8 11, label %556
    i8 17, label %556
    i8 2, label %575
    i8 3, label %575
    i8 10, label %575
    i8 12, label %575
  ]

556:                                              ; preds = %555, %555, %555, %555
  %557 = icmp eq i8 %343, 8
  br i1 %557, label %562, label %558

558:                                              ; preds = %556
  %559 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %69
  %560 = load i8, ptr %559, align 1, !tbaa !5
  %561 = zext i8 %560 to i32
  br label %562

562:                                              ; preds = %558, %556
  %563 = phi i32 [ %53, %556 ], [ %561, %558 ]
  %564 = add i32 %563, -38
  %565 = zext i32 %564 to i64
  %566 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !24
  %568 = getelementptr inbounds %struct.real_format, ptr %567, i64 0, i32 11
  %569 = load i8, ptr %568, align 2, !tbaa !29
  %570 = icmp eq i8 %569, 0
  %571 = load i32, ptr @flag_finite_math_only, align 4
  %572 = icmp ne i32 %571, 0
  %573 = select i1 %570, i1 true, i1 %572
  br i1 %573, label %574, label %599

574:                                              ; preds = %562
  switch i8 %71, label %585 [
    i8 12, label %575
    i8 10, label %575
  ]

575:                                              ; preds = %574, %574, %555, %555, %555, %555
  %576 = load i32, ptr @flag_wrapv, align 4, !tbaa !8
  %577 = icmp eq i32 %576, 0
  %578 = load i32, ptr @flag_trapv, align 4
  %579 = icmp eq i32 %578, 0
  %580 = select i1 %577, i1 %579, i1 false
  %581 = load i32, ptr @flag_strict_overflow, align 4
  %582 = icmp ne i32 %581, 0
  %583 = select i1 %580, i1 %582, i1 false
  br i1 %583, label %584, label %599

584:                                              ; preds = %575
  switch i8 %71, label %585 [
    i8 2, label %590
    i8 3, label %590
    i8 10, label %590
  ]

585:                                              ; preds = %555, %574, %584
  %586 = icmp eq i8 %71, 12
  %587 = load i32, ptr @warn_strict_overflow, align 4
  %588 = icmp sgt i32 %587, 1
  %589 = select i1 %586, i1 %588, i1 false
  br i1 %589, label %593, label %595

590:                                              ; preds = %584, %584, %584
  %591 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !8
  %592 = icmp sgt i32 %591, 1
  br i1 %592, label %593, label %595

593:                                              ; preds = %585, %590
  %594 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 187, ptr noundef nonnull @.str.3) #9
  br label %595

595:                                              ; preds = %593, %590, %585
  %596 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

597:                                              ; preds = %509
  %598 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %599

599:                                              ; preds = %49, %44, %488, %488, %490, %385, %392, %399, %406, %418, %425, %432, %439, %492, %441, %434, %427, %420, %411, %408, %401, %394, %387, %495, %503, %509, %575, %562, %533, %520, %500, %327, %329, %444, %494, %597, %595, %553, %458, %456, %253, %212, %153, %127
  %600 = phi ptr [ %128, %127 ], [ %154, %153 ], [ %254, %253 ], [ %457, %456 ], [ %459, %458 ], [ %598, %597 ], [ %596, %595 ], [ %554, %553 ], [ %471, %494 ], [ %448, %444 ], [ %213, %212 ], [ %328, %327 ], [ %341, %329 ], [ null, %500 ], [ null, %520 ], [ null, %533 ], [ null, %562 ], [ null, %575 ], [ null, %509 ], [ null, %503 ], [ null, %495 ], [ %389, %387 ], [ %396, %394 ], [ %403, %401 ], [ %410, %408 ], [ %415, %411 ], [ %422, %420 ], [ %429, %427 ], [ %436, %434 ], [ %443, %441 ], [ %493, %492 ], [ %386, %385 ], [ %393, %392 ], [ %400, %399 ], [ %407, %406 ], [ %419, %418 ], [ %426, %425 ], [ %433, %432 ], [ %440, %439 ], [ %491, %490 ], [ %471, %488 ], [ %471, %488 ], [ null, %44 ], [ null, %49 ]
  ret ptr %600
}

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_relational_operation_1(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = zext nneg i32 %7 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !8
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  switch i32 %0, label %37 [
    i32 80, label %16
    i32 81, label %28
  ]

16:                                               ; preds = %15
  %17 = lshr i32 %6, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call ptr @simplify_rtx(ptr noundef nonnull %3) #8
  br label %249

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = tail call ptr @simplify_gen_relational(i32 noundef %7, i32 noundef %1, i32 noundef 0, ptr noundef %24, ptr noundef %26) #8
  br label %249

28:                                               ; preds = %15
  %29 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %3, ptr noundef null) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = tail call ptr @simplify_gen_relational(i32 noundef %29, i32 noundef %1, i32 noundef 0, ptr noundef %33, ptr noundef %35) #8
  br label %249

37:                                               ; preds = %15, %10, %5
  %38 = icmp eq i32 %0, 89
  switch i32 %0, label %81 [
    i32 89, label %39
    i32 86, label %39
  ]

39:                                               ; preds = %37, %37
  %40 = icmp eq i32 %7, 49
  br i1 %40, label %41, label %62

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 30
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load ptr, ptr %42, align 8, !tbaa !5
  %50 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %49) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load ptr, ptr %43, align 8, !tbaa !5
  %54 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %53) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52, %48
  %57 = load ptr, ptr %43, align 8, !tbaa !5
  %58 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %2, ptr noundef %57, i32 noundef %2) #8
  %59 = select i1 %38, i32 86, i32 89
  %60 = load ptr, ptr %42, align 8, !tbaa !5
  %61 = tail call ptr @simplify_gen_relational(i32 noundef %59, i32 noundef %1, i32 noundef %2, ptr noundef %60, ptr noundef %58) #8
  br label %249

62:                                               ; preds = %52, %41, %39
  switch i32 %0, label %81 [
    i32 89, label %63
    i32 86, label %63
  ]

63:                                               ; preds = %62, %62
  %64 = load i32, ptr %3, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 49
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %70) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %68, align 8, !tbaa !5
  %75 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %74) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load ptr, ptr %68, align 8, !tbaa !5
  %79 = tail call ptr @copy_rtx(ptr noundef %78) #9
  %80 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %79) #8
  br label %249

81:                                               ; preds = %28, %37, %62, %73, %67, %63
  %82 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %83 = icmp eq ptr %82, %4
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  switch i32 %0, label %109 [
    i32 87, label %85
    i32 88, label %87
  ]

85:                                               ; preds = %84
  %86 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4) #8
  br label %249

87:                                               ; preds = %84
  %88 = tail call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4) #8
  br label %249

89:                                               ; preds = %81
  %90 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !24
  %91 = icmp eq ptr %90, %4
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  switch i32 %0, label %109 [
    i32 82, label %93
    i32 86, label %95
    i32 85, label %97
    i32 89, label %99
  ]

93:                                               ; preds = %92
  %94 = tail call ptr @simplify_gen_relational(i32 noundef 83, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %249

95:                                               ; preds = %92
  %96 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %249

97:                                               ; preds = %92
  %98 = tail call ptr @simplify_gen_relational(i32 noundef 84, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %249

99:                                               ; preds = %92
  %100 = tail call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %249

101:                                              ; preds = %89
  %102 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !24
  %103 = icmp eq ptr %102, %4
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  switch i32 %0, label %109 [
    i32 84, label %105
    i32 83, label %107
  ]

105:                                              ; preds = %104
  %106 = tail call ptr @simplify_gen_relational(i32 noundef 85, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %249

107:                                              ; preds = %104
  %108 = tail call ptr @simplify_gen_relational(i32 noundef 82, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %249

109:                                              ; preds = %104, %84, %92, %101
  %110 = icmp eq i32 %0, 80
  %111 = and i32 %0, -2
  %112 = icmp eq i32 %111, 80
  br i1 %112, label %113, label %150

113:                                              ; preds = %109
  %114 = icmp eq i32 %7, 49
  %115 = add nsw i32 %7, -49
  %116 = icmp ult i32 %115, 2
  br i1 %116, label %117, label %148

117:                                              ; preds = %113
  %118 = load i32, ptr %4, align 8
  %119 = and i32 %118, 65535
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !8
  %123 = icmp eq i32 %122, 9
  br i1 %123, label %124, label %148

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %126 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !5
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !8
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %134, label %148

134:                                              ; preds = %124
  %135 = zext i32 %2 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !5
  switch i8 %137, label %138 [
    i8 2, label %143
    i8 3, label %143
    i8 10, label %143
  ]

138:                                              ; preds = %134
  %139 = icmp eq i8 %137, 12
  %140 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %141 = icmp ne i32 %140, 0
  %142 = select i1 %139, i1 true, i1 %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %134, %134, %134, %138
  %144 = load ptr, ptr %125, align 8, !tbaa !5
  %145 = select i1 %114, i32 50, i32 49
  %146 = tail call ptr @simplify_gen_binary(i32 noundef %145, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %127) #8
  %147 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %144, ptr noundef %146) #8
  br label %249

148:                                              ; preds = %138, %113, %124, %117
  %149 = and i1 %110, %83
  br i1 %149, label %152, label %179

150:                                              ; preds = %109
  %151 = and i1 %110, %83
  br i1 %151, label %152, label %229

152:                                              ; preds = %150, %148
  %153 = zext i32 %1 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  %156 = icmp eq i8 %155, 2
  %157 = icmp ne i32 %2, 0
  %158 = and i1 %157, %156
  %159 = icmp ne i32 %1, 13
  %160 = and i1 %159, %158
  %161 = icmp ne i32 %2, 13
  %162 = and i1 %161, %160
  br i1 %162, label %163, label %179

163:                                              ; preds = %152
  %164 = tail call i64 @nonzero_bits(ptr noundef nonnull %3, i32 noundef %2) #9
  %165 = icmp eq i64 %164, 1
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br label %179

168:                                              ; preds = %163
  %169 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %170 = load i8, ptr %169, align 1, !tbaa !5
  %171 = zext i32 %2 to i64
  %172 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !5
  %174 = icmp ugt i8 %170, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = tail call ptr @simplify_gen_unary(i32 noundef 99, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %2) #8
  br label %249

177:                                              ; preds = %168
  %178 = tail call ptr @lowpart_subreg(i32 noundef %1, ptr noundef nonnull %3, i32 noundef %2) #9
  br label %249

179:                                              ; preds = %166, %148, %152
  %180 = phi ptr [ %167, %166 ], [ %82, %148 ], [ %82, %152 ]
  %181 = icmp eq ptr %180, %4
  %182 = icmp eq i32 %7, 63
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !5
  %187 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !5
  %189 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %186, ptr noundef %188) #8
  br label %249

190:                                              ; preds = %179
  br i1 %182, label %191, label %229

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = tail call i32 @rtx_equal_p(ptr noundef %193, ptr noundef %4) #9
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %191
  %197 = load ptr, ptr %192, align 8, !tbaa !5
  %198 = tail call i32 @side_effects_p(ptr noundef %197) #9
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %204 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %202, ptr noundef %203) #8
  br label %249

205:                                              ; preds = %191, %196
  %206 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = tail call i32 @rtx_equal_p(ptr noundef %207, ptr noundef %4) #9
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %205
  %211 = load ptr, ptr %206, align 8, !tbaa !5
  %212 = tail call i32 @side_effects_p(ptr noundef %211) #9
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load ptr, ptr %192, align 8, !tbaa !5
  %216 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  %217 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %215, ptr noundef %216) #8
  br label %249

218:                                              ; preds = %205, %210
  %219 = load i32, ptr %4, align 8
  %220 = trunc i32 %219 to i16
  switch i16 %220, label %249 [
    i16 30, label %221
    i16 32, label %221
  ]

221:                                              ; preds = %218, %218
  %222 = load ptr, ptr %206, align 8, !tbaa !5
  %223 = load i32, ptr %222, align 8
  %224 = trunc i32 %223 to i16
  switch i16 %224, label %249 [
    i16 30, label %225
    i16 32, label %225
  ]

225:                                              ; preds = %221, %221
  %226 = load ptr, ptr %192, align 8, !tbaa !5
  %227 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %2, ptr noundef nonnull %222, ptr noundef nonnull %4) #8
  %228 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %226, ptr noundef %227) #8
  br label %249

229:                                              ; preds = %150, %190
  %230 = phi ptr [ %82, %150 ], [ %180, %190 ]
  %231 = icmp eq i32 %7, 117
  %232 = icmp eq ptr %230, %4
  %233 = and i1 %231, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %229
  switch i32 %0, label %249 [
    i32 81, label %235
    i32 84, label %235
    i32 88, label %235
    i32 80, label %242
    i32 83, label %242
    i32 87, label %242
  ]

235:                                              ; preds = %234, %234, %234
  %236 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  %238 = load i32, ptr %237, align 8
  %239 = lshr i32 %238, 16
  %240 = and i32 %239, 255
  %241 = tail call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef %1, i32 noundef %240, ptr noundef nonnull %237, ptr noundef %4) #8
  br label %249

242:                                              ; preds = %234, %234, %234
  %243 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !5
  %245 = load i32, ptr %244, align 8
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  %248 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %1, i32 noundef %247, ptr noundef nonnull %244, ptr noundef %4) #8
  br label %249

249:                                              ; preds = %218, %221, %31, %229, %234, %175, %177, %242, %235, %225, %214, %200, %184, %143, %107, %105, %99, %97, %95, %93, %87, %85, %77, %56, %22, %20
  %250 = phi ptr [ %21, %20 ], [ %27, %22 ], [ %61, %56 ], [ %86, %85 ], [ %88, %87 ], [ %147, %143 ], [ %189, %184 ], [ %228, %225 ], [ %248, %242 ], [ %241, %235 ], [ %217, %214 ], [ %204, %200 ], [ %100, %99 ], [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %106, %105 ], [ %108, %107 ], [ %80, %77 ], [ %36, %31 ], [ %176, %175 ], [ %178, %177 ], [ null, %234 ], [ null, %229 ], [ null, %221 ], [ null, %218 ]
  ret ptr %250
}

; Function Attrs: optsize
declare zeroext i8 @nonzero_address_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @signed_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @comparison_result(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %0, label %67 [
    i32 81, label %3
    i32 92, label %3
    i32 80, label %9
    i32 97, label %9
    i32 85, label %15
    i32 96, label %15
    i32 82, label %21
    i32 93, label %21
    i32 83, label %27
    i32 94, label %27
    i32 84, label %33
    i32 95, label %33
    i32 89, label %39
    i32 86, label %45
    i32 87, label %51
    i32 88, label %57
    i32 91, label %63
    i32 90, label %65
  ]

3:                                                ; preds = %2, %2
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr @const_true_rtx, align 8
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %8 = select i1 %5, ptr %7, ptr %6
  br label %69

9:                                                ; preds = %2, %2
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %13 = load ptr, ptr @const_true_rtx, align 8
  %14 = select i1 %11, ptr %13, ptr %12
  br label %69

15:                                               ; preds = %2, %2
  %16 = and i32 %1, 2
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @const_true_rtx, align 8
  %19 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %20 = select i1 %17, ptr %19, ptr %18
  br label %69

21:                                               ; preds = %2, %2
  %22 = and i32 %1, 2
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %25 = load ptr, ptr @const_true_rtx, align 8
  %26 = select i1 %23, ptr %25, ptr %24
  br label %69

27:                                               ; preds = %2, %2
  %28 = and i32 %1, 4
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr @const_true_rtx, align 8
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %32 = select i1 %29, ptr %31, ptr %30
  br label %69

33:                                               ; preds = %2, %2
  %34 = and i32 %1, 4
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %37 = load ptr, ptr @const_true_rtx, align 8
  %38 = select i1 %35, ptr %37, ptr %36
  br label %69

39:                                               ; preds = %2
  %40 = and i32 %1, 8
  %41 = icmp eq i32 %40, 0
  %42 = load ptr, ptr @const_true_rtx, align 8
  %43 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %44 = select i1 %41, ptr %43, ptr %42
  br label %69

45:                                               ; preds = %2
  %46 = and i32 %1, 8
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %49 = load ptr, ptr @const_true_rtx, align 8
  %50 = select i1 %47, ptr %49, ptr %48
  br label %69

51:                                               ; preds = %2
  %52 = and i32 %1, 16
  %53 = icmp eq i32 %52, 0
  %54 = load ptr, ptr @const_true_rtx, align 8
  %55 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %56 = select i1 %53, ptr %55, ptr %54
  br label %69

57:                                               ; preds = %2
  %58 = and i32 %1, 16
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %61 = load ptr, ptr @const_true_rtx, align 8
  %62 = select i1 %59, ptr %61, ptr %60
  br label %69

63:                                               ; preds = %2
  %64 = load ptr, ptr @const_true_rtx, align 8, !tbaa !24
  br label %69

65:                                               ; preds = %2
  %66 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %69

67:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4236, ptr noundef nonnull @.str.1) #9
  %68 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !24
  br label %69

69:                                               ; preds = %67, %65, %63, %57, %51, %45, %39, %33, %27, %21, %15, %9, %3
  %70 = phi ptr [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %57 ], [ %56, %51 ], [ %50, %45 ], [ %44, %39 ], [ %38, %33 ], [ %32, %27 ], [ %26, %21 ], [ %20, %15 ], [ %14, %9 ], [ %8, %3 ]
  ret ptr %70
}

; Function Attrs: optsize
declare i64 @nonzero_bits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @get_mode_bounds(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @num_sign_bit_copies(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_immed_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [16 x i64], align 16
  %9 = alloca %struct.real_value, align 8
  %10 = alloca [16 x i64], align 16
  %11 = alloca %struct.fixed_value, align 8
  store ptr %1, ptr %5, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %12 = zext i32 %0 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %441, label %25

20:                                               ; preds = %4
  %21 = and i8 %14, -2
  %22 = icmp eq i8 %21, 10
  br i1 %22, label %441, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %1, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ %17, %16 ]
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 33
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = load i32, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1
  %34 = zext i32 %2 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = freeze i8 %39
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 3
  %43 = icmp sgt i32 %32, 0
  br i1 %43, label %44, label %276

44:                                               ; preds = %25, %29
  %45 = phi i32 [ %42, %29 ], [ 512, %25 ]
  %46 = phi i32 [ %32, %29 ], [ 1, %25 ]
  %47 = phi ptr [ %33, %29 ], [ %5, %25 ]
  %48 = icmp ult i32 %45, 65
  %49 = tail call i32 @llvm.umin.i32(i32 %45, i32 128)
  %50 = icmp eq i32 %45, 0
  %51 = icmp ugt i32 %45, 64
  %52 = tail call i32 @llvm.umin.i32(i32 %45, i32 64)
  %53 = zext nneg i32 %49 to i64
  %54 = add nsw i32 %45, -1
  %55 = zext nneg i32 %45 to i64
  %56 = zext nneg i32 %52 to i64
  %57 = zext nneg i32 %46 to i64
  %58 = icmp ugt i32 %45, 64
  %59 = add nsw i64 %55, -1
  %60 = lshr i64 %59, 3
  %61 = insertelement <16 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <16 x i64> %61, <16 x i64> poison, <16 x i32> zeroinitializer
  %63 = icmp uge <16 x i64> %62, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %64 = extractelement <16 x i1> %63, i64 0
  %65 = extractelement <16 x i1> %63, i64 1
  %66 = extractelement <16 x i1> %63, i64 2
  %67 = extractelement <16 x i1> %63, i64 3
  %68 = extractelement <16 x i1> %63, i64 4
  %69 = extractelement <16 x i1> %63, i64 5
  %70 = extractelement <16 x i1> %63, i64 6
  %71 = extractelement <16 x i1> %63, i64 7
  br label %72

72:                                               ; preds = %44, %273
  %73 = phi i64 [ 0, %44 ], [ %274, %273 ]
  %74 = getelementptr inbounds ptr, ptr %47, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !24
  %76 = trunc i64 %73 to i32
  %77 = mul i32 %45, %76
  %78 = lshr exact i32 %77, 3
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %6, i64 %79
  %81 = load i32, ptr %75, align 8
  %82 = trunc i32 %81 to i16
  switch i16 %82, label %272 [
    i16 30, label %83
    i16 32, label %112
    i16 31, label %199
  ]

83:                                               ; preds = %72
  br i1 %50, label %89, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !5
  br label %98

87:                                               ; preds = %98
  %88 = trunc i64 %104 to i32
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi ptr [ %80, %83 ], [ %103, %87 ]
  %91 = phi i32 [ 0, %83 ], [ %88, %87 ]
  %92 = icmp ult i32 %91, %45
  br i1 %92, label %93, label %273

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !5
  %96 = ashr i64 %95, 63
  %97 = trunc i64 %96 to i8
  br label %106

98:                                               ; preds = %84, %98
  %99 = phi i64 [ 0, %84 ], [ %104, %98 ]
  %100 = phi ptr [ %80, %84 ], [ %103, %98 ]
  %101 = ashr i64 %86, %99
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds i8, ptr %100, i64 1
  store i8 %102, ptr %100, align 1, !tbaa !5
  %104 = add nuw nsw i64 %99, 8
  %105 = icmp ult i64 %104, %56
  br i1 %105, label %98, label %87, !llvm.loop !68

106:                                              ; preds = %93, %106
  %107 = phi i32 [ %91, %93 ], [ %110, %106 ]
  %108 = phi ptr [ %90, %93 ], [ %109, %106 ]
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  store i8 %97, ptr %108, align 1, !tbaa !5
  %110 = add nuw nsw i32 %107, 8
  %111 = icmp ult i32 %110, %45
  br i1 %111, label %106, label %273, !llvm.loop !69

112:                                              ; preds = %72
  %113 = and i32 %81, 16711680
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %152

115:                                              ; preds = %112
  br i1 %51, label %117, label %116

116:                                              ; preds = %115
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4913, ptr noundef nonnull @.str.1) #9
  br label %117

117:                                              ; preds = %115, %116
  %118 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !5
  br label %124

120:                                              ; preds = %124
  br i1 %58, label %121, label %134

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load i64, ptr %122, align 8, !tbaa !5
  br label %143

124:                                              ; preds = %117, %124
  %125 = phi i64 [ 0, %117 ], [ %130, %124 ]
  %126 = phi ptr [ %80, %117 ], [ %129, %124 ]
  %127 = ashr i64 %119, %125
  %128 = trunc i64 %127 to i8
  %129 = getelementptr inbounds i8, ptr %126, i64 1
  store i8 %128, ptr %126, align 1, !tbaa !5
  %130 = add nuw nsw i64 %125, 8
  %131 = icmp ult i64 %125, 56
  br i1 %131, label %124, label %120, !llvm.loop !70

132:                                              ; preds = %143
  %133 = trunc i64 %150 to i32
  br label %134

134:                                              ; preds = %132, %120
  %135 = phi ptr [ %129, %120 ], [ %149, %132 ]
  %136 = phi i32 [ 64, %120 ], [ %133, %132 ]
  %137 = icmp ult i32 %136, %45
  br i1 %137, label %138, label %273

138:                                              ; preds = %134
  %139 = sub i32 %54, %136
  %140 = lshr i32 %139, 3
  %141 = add nuw nsw i32 %140, 1
  %142 = zext nneg i32 %141 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %135, i8 0, i64 %142, i1 false), !tbaa !5
  br label %273

143:                                              ; preds = %121, %143
  %144 = phi i64 [ 64, %121 ], [ %150, %143 ]
  %145 = phi ptr [ %129, %121 ], [ %149, %143 ]
  %146 = add nsw i64 %144, -64
  %147 = ashr i64 %123, %146
  %148 = trunc i64 %147 to i8
  %149 = getelementptr inbounds i8, ptr %145, i64 1
  store i8 %148, ptr %145, align 1, !tbaa !5
  %150 = add nuw nsw i64 %144, 8
  %151 = icmp ult i64 %150, %53
  br i1 %151, label %143, label %132, !llvm.loop !71

152:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #10
  %153 = lshr i32 %81, 16
  %154 = and i32 %153, 255
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !5
  %158 = zext i8 %157 to i32
  %159 = shl nuw nsw i32 %158, 3
  %160 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %155
  %161 = load i8, ptr %160, align 1, !tbaa !5
  %162 = and i8 %161, -2
  %163 = icmp eq i8 %162, 8
  br i1 %163, label %165, label %164

164:                                              ; preds = %152
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4933, ptr noundef nonnull @.str.1) #9
  br label %165

165:                                              ; preds = %152, %164
  %166 = icmp ugt i32 %159, %45
  br i1 %166, label %167, label %168

167:                                              ; preds = %165
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4934, ptr noundef nonnull @.str.1) #9
  br label %168

168:                                              ; preds = %167, %165
  %169 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %170 = load i32, ptr %75, align 8
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = call i64 @real_to_target(ptr noundef nonnull %8, ptr noundef nonnull %169, i32 noundef %172) #9
  %174 = icmp eq i8 %157, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %184, %168
  %176 = phi ptr [ %80, %168 ], [ %195, %184 ]
  %177 = phi i32 [ 0, %168 ], [ %196, %184 ]
  %178 = icmp ult i32 %177, %45
  br i1 %178, label %179, label %198

179:                                              ; preds = %175
  %180 = sub i32 %54, %177
  %181 = lshr i32 %180, 3
  %182 = add nuw nsw i32 %181, 1
  %183 = zext nneg i32 %182 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %176, i8 0, i64 %183, i1 false), !tbaa !5
  br label %198

184:                                              ; preds = %168, %184
  %185 = phi i32 [ %196, %184 ], [ 0, %168 ]
  %186 = phi ptr [ %195, %184 ], [ %80, %168 ]
  %187 = lshr i32 %185, 5
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds [16 x i64], ptr %8, i64 0, i64 %188
  %190 = load i64, ptr %189, align 8, !tbaa !28
  %191 = and i32 %185, 24
  %192 = zext nneg i32 %191 to i64
  %193 = ashr i64 %190, %192
  %194 = trunc i64 %193 to i8
  %195 = getelementptr inbounds i8, ptr %186, i64 1
  store i8 %194, ptr %186, align 1, !tbaa !5
  %196 = add nuw nsw i32 %185, 8
  %197 = icmp ult i32 %196, %159
  br i1 %197, label %184, label %175, !llvm.loop !72

198:                                              ; preds = %179, %175
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #10
  br label %273

199:                                              ; preds = %72
  br i1 %48, label %203, label %200

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %202 = load i64, ptr %201, align 8, !tbaa !5
  br label %247

203:                                              ; preds = %199
  br i1 %50, label %273, label %204

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %206 = load i64, ptr %205, align 8, !tbaa !5
  br i1 %64, label %207, label %209

207:                                              ; preds = %204
  %208 = trunc i64 %206 to i8
  store i8 %208, ptr %80, align 1, !tbaa !5
  br label %209

209:                                              ; preds = %207, %204
  br i1 %65, label %210, label %214

210:                                              ; preds = %209
  %211 = getelementptr i8, ptr %80, i64 1
  %212 = lshr i64 %206, 8
  %213 = trunc i64 %212 to i8
  store i8 %213, ptr %211, align 1, !tbaa !5
  br label %214

214:                                              ; preds = %210, %209
  br i1 %66, label %215, label %219

215:                                              ; preds = %214
  %216 = getelementptr i8, ptr %80, i64 2
  %217 = lshr i64 %206, 16
  %218 = trunc i64 %217 to i8
  store i8 %218, ptr %216, align 1, !tbaa !5
  br label %219

219:                                              ; preds = %215, %214
  br i1 %67, label %220, label %224

220:                                              ; preds = %219
  %221 = getelementptr i8, ptr %80, i64 3
  %222 = lshr i64 %206, 24
  %223 = trunc i64 %222 to i8
  store i8 %223, ptr %221, align 1, !tbaa !5
  br label %224

224:                                              ; preds = %220, %219
  br i1 %68, label %225, label %229

225:                                              ; preds = %224
  %226 = getelementptr i8, ptr %80, i64 4
  %227 = lshr i64 %206, 32
  %228 = trunc i64 %227 to i8
  store i8 %228, ptr %226, align 1, !tbaa !5
  br label %229

229:                                              ; preds = %225, %224
  br i1 %69, label %230, label %234

230:                                              ; preds = %229
  %231 = getelementptr i8, ptr %80, i64 5
  %232 = lshr i64 %206, 40
  %233 = trunc i64 %232 to i8
  store i8 %233, ptr %231, align 1, !tbaa !5
  br label %234

234:                                              ; preds = %230, %229
  br i1 %70, label %235, label %239

235:                                              ; preds = %234
  %236 = getelementptr i8, ptr %80, i64 6
  %237 = lshr i64 %206, 48
  %238 = trunc i64 %237 to i8
  store i8 %238, ptr %236, align 1, !tbaa !5
  br label %239

239:                                              ; preds = %235, %234
  br i1 %71, label %240, label %273

240:                                              ; preds = %239
  %241 = getelementptr i8, ptr %80, i64 7
  %242 = lshr i64 %206, 56
  %243 = trunc i64 %242 to i8
  store i8 %243, ptr %241, align 1, !tbaa !5
  br label %273

244:                                              ; preds = %247
  %245 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %246 = load i64, ptr %245, align 8, !tbaa !5
  br label %263

247:                                              ; preds = %200, %247
  %248 = phi i64 [ 0, %200 ], [ %253, %247 ]
  %249 = phi ptr [ %80, %200 ], [ %252, %247 ]
  %250 = ashr i64 %202, %248
  %251 = trunc i64 %250 to i8
  %252 = getelementptr inbounds i8, ptr %249, i64 1
  store i8 %251, ptr %249, align 1, !tbaa !5
  %253 = add nuw nsw i64 %248, 8
  %254 = icmp ult i64 %248, 56
  br i1 %254, label %247, label %244, !llvm.loop !73

255:                                              ; preds = %263
  %256 = trunc i64 %270 to i32
  %257 = icmp ugt i32 %45, %256
  br i1 %257, label %258, label %273

258:                                              ; preds = %255
  %259 = sub i32 %54, %256
  %260 = lshr i32 %259, 3
  %261 = add nuw nsw i32 %260, 1
  %262 = zext nneg i32 %261 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %269, i8 0, i64 %262, i1 false), !tbaa !5
  br label %273

263:                                              ; preds = %244, %263
  %264 = phi i64 [ 64, %244 ], [ %270, %263 ]
  %265 = phi ptr [ %252, %244 ], [ %269, %263 ]
  %266 = add nsw i64 %264, -64
  %267 = ashr i64 %246, %266
  %268 = trunc i64 %267 to i8
  %269 = getelementptr inbounds i8, ptr %265, i64 1
  store i8 %268, ptr %265, align 1, !tbaa !5
  %270 = add nuw nsw i64 %264, 8
  %271 = icmp ult i64 %270, %53
  br i1 %271, label %263, label %255, !llvm.loop !74

272:                                              ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4981, ptr noundef nonnull @.str.1) #9
  br label %273

273:                                              ; preds = %106, %239, %240, %258, %138, %255, %203, %134, %89, %198, %272
  %274 = add nuw nsw i64 %73, 1
  %275 = icmp eq i64 %274, %57
  br i1 %275, label %276, label %72, !llvm.loop !75

276:                                              ; preds = %273, %29
  %277 = zext i32 %2 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !5
  %280 = zext i8 %279 to i32
  %281 = icmp ugt i32 %280, %3
  br i1 %281, label %283, label %282

282:                                              ; preds = %276
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5001, ptr noundef nonnull @.str.1) #9
  br label %283

283:                                              ; preds = %276, %282
  %284 = add i8 %14, -12
  %285 = icmp ult i8 %284, 6
  br i1 %285, label %286, label %298

286:                                              ; preds = %283
  %287 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %12
  %288 = load i8, ptr %287, align 1, !tbaa !5
  %289 = zext i8 %288 to i32
  %290 = call ptr @rtvec_alloc(i32 noundef %289) #9
  %291 = getelementptr inbounds %struct.rtvec_def, ptr %290, i64 0, i32 1
  %292 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %12
  %293 = load i8, ptr %292, align 1, !tbaa !5
  %294 = zext i8 %293 to i32
  %295 = zext i8 %293 to i64
  %296 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !5
  br label %298

298:                                              ; preds = %283, %286
  %299 = phi i8 [ %14, %283 ], [ %297, %286 ]
  %300 = phi i64 [ %12, %283 ], [ %295, %286 ]
  %301 = phi i32 [ %0, %283 ], [ %294, %286 ]
  %302 = phi ptr [ null, %283 ], [ %290, %286 ]
  %303 = phi ptr [ %7, %283 ], [ %291, %286 ]
  %304 = phi i32 [ 1, %283 ], [ %289, %286 ]
  %305 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %300
  %306 = load i8, ptr %305, align 1, !tbaa !5
  %307 = freeze i8 %306
  %308 = zext i8 %307 to i32
  %309 = shl nuw nsw i32 %308, 3
  %310 = add i32 %308, %3
  %311 = shl i32 %310, 3
  %312 = icmp slt i32 %311, 513
  br i1 %312, label %314, label %313

313:                                              ; preds = %298
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5026, ptr noundef nonnull @.str.1) #9
  br label %314

314:                                              ; preds = %298, %313
  %315 = icmp eq i32 %304, 0
  br i1 %315, label %436, label %316

316:                                              ; preds = %314
  %317 = sext i32 %3 to i64
  %318 = getelementptr inbounds i8, ptr %6, i64 %317
  %319 = getelementptr inbounds %struct.double_int, ptr %11, i64 0, i32 1
  %320 = getelementptr inbounds %struct.fixed_value, ptr %11, i64 0, i32 1
  %321 = call i32 @llvm.umin.i32(i32 %309, i32 64)
  %322 = icmp eq i8 %307, 0
  %323 = icmp ult i8 %307, 9
  %324 = icmp ult i8 %307, 17
  %325 = zext nneg i32 %321 to i64
  %326 = zext nneg i32 %309 to i64
  %327 = zext nneg i32 %304 to i64
  br label %328

328:                                              ; preds = %316, %433
  %329 = phi i64 [ 0, %316 ], [ %434, %433 ]
  %330 = trunc i64 %329 to i32
  %331 = mul i32 %309, %330
  %332 = lshr exact i32 %331, 3
  %333 = zext nneg i32 %332 to i64
  %334 = getelementptr inbounds i8, ptr %318, i64 %333
  switch i8 %299, label %432 [
    i8 2, label %335
    i8 3, label %335
    i8 8, label %377
    i8 9, label %377
    i8 4, label %397
    i8 5, label %397
    i8 6, label %397
    i8 7, label %397
  ]

335:                                              ; preds = %328, %328
  br i1 %322, label %338, label %345

336:                                              ; preds = %345
  %337 = trunc i64 %354 to i32
  br label %338

338:                                              ; preds = %336, %335
  %339 = phi ptr [ %334, %335 ], [ %349, %336 ]
  %340 = phi i32 [ 0, %335 ], [ %337, %336 ]
  %341 = phi i64 [ 0, %335 ], [ %353, %336 ]
  %342 = icmp ult i32 %340, %309
  br i1 %342, label %343, label %368

343:                                              ; preds = %338
  %344 = zext nneg i32 %340 to i64
  br label %356

345:                                              ; preds = %335, %345
  %346 = phi i64 [ %354, %345 ], [ 0, %335 ]
  %347 = phi i64 [ %353, %345 ], [ 0, %335 ]
  %348 = phi ptr [ %349, %345 ], [ %334, %335 ]
  %349 = getelementptr inbounds i8, ptr %348, i64 1
  %350 = load i8, ptr %348, align 1, !tbaa !5
  %351 = zext i8 %350 to i64
  %352 = shl i64 %351, %346
  %353 = or i64 %352, %347
  %354 = add nuw nsw i64 %346, 8
  %355 = icmp ult i64 %354, %325
  br i1 %355, label %345, label %336, !llvm.loop !76

356:                                              ; preds = %343, %356
  %357 = phi i64 [ %344, %343 ], [ %366, %356 ]
  %358 = phi i64 [ 0, %343 ], [ %365, %356 ]
  %359 = phi ptr [ %339, %343 ], [ %360, %356 ]
  %360 = getelementptr inbounds i8, ptr %359, i64 1
  %361 = load i8, ptr %359, align 1, !tbaa !5
  %362 = zext i8 %361 to i64
  %363 = add nsw i64 %357, -64
  %364 = shl i64 %362, %363
  %365 = or i64 %364, %358
  %366 = add nuw nsw i64 %357, 8
  %367 = icmp ult i64 %366, %326
  br i1 %367, label %356, label %368, !llvm.loop !77

368:                                              ; preds = %356, %338
  %369 = phi i64 [ 0, %338 ], [ %365, %356 ]
  br i1 %323, label %370, label %373

370:                                              ; preds = %368
  %371 = call ptr @gen_int_mode(i64 noundef %341, i32 noundef %301) #9
  %372 = getelementptr inbounds ptr, ptr %303, i64 %329
  store ptr %371, ptr %372, align 8, !tbaa !24
  br label %433

373:                                              ; preds = %368
  br i1 %324, label %374, label %441

374:                                              ; preds = %373
  %375 = call ptr @immed_double_const(i64 noundef %341, i64 noundef %369, i32 noundef %301) #9
  %376 = getelementptr inbounds ptr, ptr %303, i64 %329
  store ptr %375, ptr %376, align 8, !tbaa !24
  br label %433

377:                                              ; preds = %328, %328
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %10, i8 0, i64 128, i1 false), !tbaa !28
  br i1 %322, label %394, label %378

378:                                              ; preds = %377, %378
  %379 = phi i32 [ %392, %378 ], [ 0, %377 ]
  %380 = phi ptr [ %381, %378 ], [ %334, %377 ]
  %381 = getelementptr inbounds i8, ptr %380, i64 1
  %382 = load i8, ptr %380, align 1, !tbaa !5
  %383 = zext i8 %382 to i32
  %384 = and i32 %379, 24
  %385 = shl nuw i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = lshr i32 %379, 5
  %388 = zext nneg i32 %387 to i64
  %389 = getelementptr inbounds [16 x i64], ptr %10, i64 0, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !28
  %391 = or i64 %390, %386
  store i64 %391, ptr %389, align 8, !tbaa !28
  %392 = add nuw nsw i32 %379, 8
  %393 = icmp ult i32 %392, %309
  br i1 %393, label %378, label %394, !llvm.loop !78

394:                                              ; preds = %378, %377
  call void @real_from_target(ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %301) #9
  %395 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %9, i32 noundef %301) #9
  %396 = getelementptr inbounds ptr, ptr %303, i64 %329
  store ptr %395, ptr %396, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #10
  br label %433

397:                                              ; preds = %328, %328, %328, %328
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i32 %301, ptr %320, align 8, !tbaa !79
  br i1 %322, label %400, label %406

398:                                              ; preds = %406
  %399 = trunc i64 %415 to i32
  store i64 %414, ptr %11, align 8, !tbaa !82
  br label %400

400:                                              ; preds = %398, %397
  %401 = phi ptr [ %410, %398 ], [ %334, %397 ]
  %402 = phi i32 [ %399, %398 ], [ 0, %397 ]
  %403 = icmp ult i32 %402, %309
  br i1 %403, label %404, label %429

404:                                              ; preds = %400
  %405 = zext nneg i32 %402 to i64
  br label %417

406:                                              ; preds = %397, %406
  %407 = phi i64 [ %415, %406 ], [ 0, %397 ]
  %408 = phi ptr [ %410, %406 ], [ %334, %397 ]
  %409 = phi i64 [ %414, %406 ], [ 0, %397 ]
  %410 = getelementptr inbounds i8, ptr %408, i64 1
  %411 = load i8, ptr %408, align 1, !tbaa !5
  %412 = zext i8 %411 to i64
  %413 = shl i64 %412, %407
  %414 = or i64 %413, %409
  %415 = add nuw nsw i64 %407, 8
  %416 = icmp ult i64 %415, %325
  br i1 %416, label %406, label %398, !llvm.loop !83

417:                                              ; preds = %404, %417
  %418 = phi i64 [ %405, %404 ], [ %427, %417 ]
  %419 = phi ptr [ %401, %404 ], [ %421, %417 ]
  %420 = phi i64 [ 0, %404 ], [ %426, %417 ]
  %421 = getelementptr inbounds i8, ptr %419, i64 1
  %422 = load i8, ptr %419, align 1, !tbaa !5
  %423 = zext i8 %422 to i64
  %424 = add nsw i64 %418, -64
  %425 = shl i64 %423, %424
  %426 = or i64 %425, %420
  store i64 %426, ptr %319, align 8, !tbaa !84
  %427 = add nuw nsw i64 %418, 8
  %428 = icmp ult i64 %427, %326
  br i1 %428, label %417, label %429, !llvm.loop !85

429:                                              ; preds = %417, %400
  %430 = call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %11, i32 noundef %301) #9
  %431 = getelementptr inbounds ptr, ptr %303, i64 %329
  store ptr %430, ptr %431, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  br label %433

432:                                              ; preds = %328
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5121, ptr noundef nonnull @.str.1) #9
  br label %433

433:                                              ; preds = %394, %429, %432, %370, %374
  %434 = add nuw nsw i64 %329, 1
  %435 = icmp eq i64 %434, %327
  br i1 %435, label %436, label %328, !llvm.loop !86

436:                                              ; preds = %433, %314
  br i1 %285, label %437, label %439

437:                                              ; preds = %436
  %438 = call ptr @gen_rtx_CONST_VECTOR(i32 noundef %0, ptr noundef %302) #9
  br label %441

439:                                              ; preds = %436
  %440 = load ptr, ptr %7, align 8, !tbaa !24
  br label %441

441:                                              ; preds = %373, %20, %16, %439, %437
  %442 = phi ptr [ %438, %437 ], [ %440, %439 ], [ %1, %16 ], [ null, %20 ], [ null, %373 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  ret ptr %442
}

; Function Attrs: optsize
declare zeroext i8 @validate_subreg(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !5
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @simplify_subreg_regno(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_REG_offset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mode_dependent_address_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @subreg_lsb_1(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_rtx(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = lshr i32 %2, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !8
  switch i32 %8, label %88 [
    i32 4, label %9
    i32 3, label %16
    i32 2, label %27
    i32 10, label %33
    i32 11, label %33
    i32 0, label %44
    i32 1, label %44
    i32 5, label %60
    i32 8, label %71
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call ptr @simplify_unary_operation(i32 noundef %3, i32 noundef %5, ptr noundef nonnull %11, i32 noundef %14) #8
  br label %88

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %18, ptr noundef %20) #9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %19, align 8, !tbaa !5
  %25 = load ptr, ptr %17, align 8, !tbaa !5
  %26 = tail call ptr @simplify_gen_binary(i32 noundef %3, i32 noundef %5, ptr noundef %24, ptr noundef %25) #8
  br label %88

27:                                               ; preds = %16, %1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = tail call ptr @simplify_binary_operation(i32 noundef %3, i32 noundef %5, ptr noundef %29, ptr noundef %31) #8
  br label %88

33:                                               ; preds = %1, %1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = tail call ptr @simplify_ternary_operation(i32 noundef %3, i32 noundef %5, i32 noundef %38, ptr noundef nonnull %35, ptr noundef %40, ptr noundef %42) #8
  br label %88

44:                                               ; preds = %1, %1
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  br i1 %50, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, ptr %52, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  br label %57

57:                                               ; preds = %44, %53
  %58 = phi i32 [ %56, %53 ], [ %49, %44 ]
  %59 = tail call ptr @simplify_relational_operation(i32 noundef %3, i32 noundef %5, i32 noundef %58, ptr noundef nonnull %46, ptr noundef %52) #8
  br label %88

60:                                               ; preds = %1
  %61 = icmp eq i32 %3, 39
  br i1 %61, label %62, label %88

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %69 = load i32, ptr %68, align 8, !tbaa !5
  %70 = tail call ptr @simplify_subreg(i32 noundef %5, ptr noundef nonnull %64, i32 noundef %67, i32 noundef %69) #8
  br label %88

71:                                               ; preds = %1
  %72 = icmp eq i32 %3, 122
  br i1 %72, label %73, label %88

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 121
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = tail call i32 @rtx_equal_p(ptr noundef %81, ptr noundef %83) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %82, align 8, !tbaa !5
  br label %88

88:                                               ; preds = %60, %73, %79, %71, %1, %86, %62, %57, %33, %27, %23, %9
  %89 = phi ptr [ %87, %86 ], [ %70, %62 ], [ %59, %57 ], [ %43, %33 ], [ %32, %27 ], [ %26, %23 ], [ %15, %9 ], [ null, %1 ], [ null, %71 ], [ null, %79 ], [ null, %73 ], [ null, %60 ]
  ret ptr %89
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @significand_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @reversed_comparison(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @plus_minus_operand_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %29 [
    i16 49, label %30
    i16 50, label %30
    i16 35, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 49
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !8
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %27 = icmp eq i32 %26, 9
  %28 = zext i1 %27 to i8
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %1, %1, %29, %4, %10, %19
  %31 = phi i8 [ 1, %1 ], [ 0, %10 ], [ 0, %4 ], [ %28, %19 ], [ 1, %1 ], [ 0, %29 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_plus_minus(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca [8 x %struct.simplify_plus_minus_op_data], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  store ptr %2, ptr %5, align 16, !tbaa !87
  %6 = getelementptr inbounds %struct.simplify_plus_minus_op_data, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 1
  store ptr %3, ptr %7, align 16, !tbaa !87
  %8 = icmp eq i32 %0, 50
  %9 = zext i1 %8 to i16
  %10 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !90
  br label %11

11:                                               ; preds = %112, %4
  %12 = phi i32 [ 0, %4 ], [ %105, %112 ]
  %13 = phi i32 [ 0, %4 ], [ %106, %112 ]
  %14 = phi i32 [ 2, %4 ], [ %108, %112 ]
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %13, 1
  %18 = select i1 %17, i32 1, i32 %12
  br label %118

19:                                               ; preds = %11, %104
  %20 = phi i64 [ %109, %104 ], [ 0, %11 ]
  %21 = phi i32 [ %108, %104 ], [ %14, %11 ]
  %22 = phi i32 [ %107, %104 ], [ 0, %11 ]
  %23 = phi i32 [ %106, %104 ], [ %13, %11 ]
  %24 = phi i32 [ %105, %104 ], [ %12, %11 ]
  %25 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %20
  %26 = load ptr, ptr %25, align 16, !tbaa !87
  %27 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %20, i32 1
  %28 = load i16, ptr %27, align 8, !tbaa !90
  %29 = sext i16 %28 to i32
  %30 = load i32, ptr %26, align 8
  %31 = and i32 %30, 65535
  %32 = trunc i32 %30 to i16
  switch i16 %32, label %104 [
    i16 49, label %33
    i16 50, label %33
    i16 51, label %48
    i16 35, label %53
    i16 64, label %87
    i16 30, label %99
  ]

33:                                               ; preds = %19, %19
  %34 = icmp eq i32 %21, 7
  br i1 %34, label %456, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = sext i32 %21 to i64
  %40 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %39
  store ptr %38, ptr %40, align 16, !tbaa !87
  %41 = icmp eq i32 %31, 50
  %42 = zext i1 %41 to i16
  %43 = xor i16 %28, %42
  %44 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %39, i32 1
  store i16 %43, ptr %44, align 8, !tbaa !90
  %45 = add nsw i32 %21, 1
  %46 = load ptr, ptr %36, align 8, !tbaa !5
  store ptr %46, ptr %25, align 16, !tbaa !87
  %47 = or i32 %24, %29
  br label %104

48:                                               ; preds = %19
  %49 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  store ptr %50, ptr %25, align 16, !tbaa !87
  %51 = icmp eq i16 %28, 0
  %52 = zext i1 %51 to i16
  store i16 %52, ptr %27, align 8, !tbaa !90
  br label %104

53:                                               ; preds = %19
  %54 = icmp slt i32 %21, 7
  br i1 %54, label %55, label %104

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 49
  br i1 %60, label %61, label %104

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %69 = icmp eq i32 %68, 9
  br i1 %69, label %70, label %104

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !8
  %78 = icmp eq i32 %77, 9
  br i1 %78, label %79, label %104

79:                                               ; preds = %70
  store ptr %63, ptr %25, align 16, !tbaa !87
  %80 = load ptr, ptr %56, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = sext i32 %21 to i64
  %84 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %83
  store ptr %82, ptr %84, align 16, !tbaa !87
  %85 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %83, i32 1
  store i16 %28, ptr %85, align 8, !tbaa !90
  %86 = add nsw i32 %21, 1
  br label %104

87:                                               ; preds = %19
  %88 = icmp eq i32 %21, 7
  br i1 %88, label %104, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !24
  %91 = sext i32 %21 to i64
  %92 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %91
  store ptr %90, ptr %92, align 16, !tbaa !87
  %93 = add nsw i32 %21, 1
  %94 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %91, i32 1
  store i16 %28, ptr %94, align 8, !tbaa !90
  %95 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  store ptr %96, ptr %25, align 16, !tbaa !87
  %97 = icmp eq i16 %28, 0
  %98 = zext i1 %97 to i16
  store i16 %98, ptr %27, align 8, !tbaa !90
  br label %104

99:                                               ; preds = %19
  %100 = add nsw i32 %23, 1
  %101 = icmp eq i16 %28, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc ptr @neg_const_int(i32 noundef %1, ptr noundef nonnull %26) #8
  store ptr %103, ptr %25, align 16, !tbaa !87
  store i16 0, ptr %27, align 8, !tbaa !90
  br label %104

104:                                              ; preds = %19, %99, %102, %87, %89, %53, %55, %61, %70, %79, %48, %35
  %105 = phi i32 [ %47, %35 ], [ 1, %48 ], [ %24, %53 ], [ %24, %55 ], [ %24, %61 ], [ %24, %70 ], [ 1, %79 ], [ %24, %87 ], [ 1, %89 ], [ %24, %99 ], [ 1, %102 ], [ %24, %19 ]
  %106 = phi i32 [ %23, %35 ], [ %23, %48 ], [ %23, %53 ], [ %23, %55 ], [ %23, %61 ], [ %23, %70 ], [ %23, %79 ], [ %23, %87 ], [ %23, %89 ], [ %100, %99 ], [ %100, %102 ], [ %23, %19 ]
  %107 = phi i32 [ 1, %35 ], [ 1, %48 ], [ %22, %53 ], [ %22, %55 ], [ %22, %61 ], [ %22, %70 ], [ 1, %79 ], [ %22, %87 ], [ 1, %89 ], [ %22, %99 ], [ 1, %102 ], [ %22, %19 ]
  %108 = phi i32 [ %45, %35 ], [ %21, %48 ], [ %21, %53 ], [ %21, %55 ], [ %21, %61 ], [ %21, %70 ], [ %86, %79 ], [ 7, %87 ], [ %93, %89 ], [ %21, %99 ], [ %21, %102 ], [ %21, %19 ]
  %109 = add nuw nsw i64 %20, 1
  %110 = sext i32 %108 to i64
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %19, label %112, !llvm.loop !91

112:                                              ; preds = %104
  %113 = icmp eq i32 %107, 0
  br i1 %113, label %114, label %11, !llvm.loop !92

114:                                              ; preds = %112
  %115 = icmp sgt i32 %106, 1
  %116 = select i1 %115, i32 1, i32 %105
  %117 = icmp sgt i32 %108, 1
  br i1 %117, label %121, label %118

118:                                              ; preds = %114, %16
  %119 = phi i32 [ %18, %16 ], [ %116, %114 ]
  %120 = phi i32 [ %14, %16 ], [ %108, %114 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3725, ptr noundef nonnull @.str.1) #9
  br label %123

121:                                              ; preds = %114
  %122 = icmp eq i32 %108, 2
  br i1 %122, label %126, label %123

123:                                              ; preds = %118, %121
  %124 = phi i32 [ %116, %121 ], [ %119, %118 ]
  %125 = phi i32 [ %108, %121 ], [ %120, %118 ]
  br label %150

126:                                              ; preds = %121
  %127 = load i16, ptr %6, align 8, !tbaa !90
  %128 = icmp ne i16 %127, 0
  %129 = load i16, ptr %10, align 8
  %130 = icmp ne i16 %129, 0
  %131 = select i1 %128, i1 true, i1 %130
  %132 = select i1 %131, i32 50, i32 49
  %133 = select i1 %128, i1 %130, i1 false
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load ptr, ptr %5, align 16, !tbaa !87
  %136 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %135) #9
  %137 = load ptr, ptr %7, align 16, !tbaa !87
  br label %146

138:                                              ; preds = %126
  %139 = icmp eq i16 %127, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr %7, align 16, !tbaa !87
  %142 = load ptr, ptr %5, align 16, !tbaa !87
  br label %146

143:                                              ; preds = %138
  %144 = load ptr, ptr %5, align 16, !tbaa !87
  %145 = load ptr, ptr %7, align 16, !tbaa !87
  br label %146

146:                                              ; preds = %140, %143, %134
  %147 = phi ptr [ %136, %134 ], [ %141, %140 ], [ %144, %143 ]
  %148 = phi ptr [ %137, %134 ], [ %142, %140 ], [ %145, %143 ]
  %149 = tail call ptr @simplify_const_binary_operation(i32 noundef %132, i32 noundef %1, ptr noundef %147, ptr noundef %148) #8
  br label %456

150:                                              ; preds = %350, %123
  %151 = phi i32 [ %124, %123 ], [ %327, %350 ]
  %152 = phi i32 [ %125, %123 ], [ %351, %350 ]
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %326

154:                                              ; preds = %150
  %155 = add nsw i32 %152, -1
  %156 = zext nneg i32 %155 to i64
  br label %162

157:                                              ; preds = %191
  br i1 %153, label %158, label %326

158:                                              ; preds = %157
  %159 = add nsw i32 %152, -2
  %160 = zext nneg i32 %159 to i64
  %161 = zext nneg i32 %152 to i64
  br label %199

162:                                              ; preds = %154, %191
  %163 = phi i64 [ 1, %154 ], [ %193, %191 ]
  %164 = phi i64 [ 0, %154 ], [ %194, %191 ]
  %165 = phi i32 [ %151, %154 ], [ %192, %191 ]
  %166 = add nsw i64 %163, -1
  %167 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %166
  %168 = load ptr, ptr %167, align 16, !tbaa !87
  %169 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %163
  %170 = load ptr, ptr %169, align 16
  %171 = tail call fastcc zeroext i8 @simplify_plus_minus_op_data_cmp(ptr noundef %168, ptr noundef %170) #8, !range !53
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %191, label %173

173:                                              ; preds = %162
  %174 = getelementptr inbounds i8, ptr %169, i64 8
  %175 = load i64, ptr %174, align 8, !tbaa.struct !93
  br label %176

176:                                              ; preds = %182, %173
  %177 = phi i64 [ %183, %182 ], [ %164, %173 ]
  %178 = add nuw nsw i64 %177, 1
  %179 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %178
  %180 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %179, ptr noundef nonnull align 16 dereferenceable(16) %180, i64 16, i1 false), !tbaa.struct !95
  %181 = icmp eq i64 %177, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %176
  %183 = add nsw i64 %177, -1
  %184 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %183
  %185 = load ptr, ptr %184, align 16, !tbaa !87
  %186 = tail call fastcc zeroext i8 @simplify_plus_minus_op_data_cmp(ptr noundef %185, ptr noundef %170) #8, !range !53
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %176, !llvm.loop !96

188:                                              ; preds = %176, %182
  %189 = phi ptr [ %5, %176 ], [ %180, %182 ]
  store ptr %170, ptr %189, align 16, !tbaa.struct !95
  %190 = getelementptr inbounds i8, ptr %189, i64 8
  store i64 %175, ptr %190, align 8, !tbaa.struct !93
  br label %191

191:                                              ; preds = %162, %188
  %192 = phi i32 [ 1, %188 ], [ %165, %162 ]
  %193 = add nuw nsw i64 %163, 1
  %194 = add nuw nsw i64 %164, 1
  %195 = icmp eq i64 %194, %156
  br i1 %195, label %157, label %162, !llvm.loop !97

196:                                              ; preds = %319
  %197 = icmp sgt i64 %200, 2
  %198 = add nsw i64 %201, -1
  br i1 %197, label %199, label %326, !llvm.loop !98

199:                                              ; preds = %196, %158
  %200 = phi i64 [ %161, %158 ], [ %204, %196 ]
  %201 = phi i64 [ %160, %158 ], [ %198, %196 ]
  %202 = phi i32 [ 0, %158 ], [ %322, %196 ]
  %203 = phi i32 [ %192, %158 ], [ %321, %196 ]
  %204 = add nsw i64 %200, -1
  %205 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %204
  %206 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %204, i32 1
  %207 = load i16, ptr %206, align 8, !tbaa !90
  br label %208

208:                                              ; preds = %199, %319
  %209 = phi i64 [ %201, %199 ], [ %325, %319 ]
  %210 = phi i16 [ %207, %199 ], [ %320, %319 ]
  %211 = phi i32 [ %202, %199 ], [ %322, %319 ]
  %212 = phi i32 [ %203, %199 ], [ %321, %319 ]
  %213 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %209
  %214 = load ptr, ptr %213, align 16, !tbaa !87
  %215 = load ptr, ptr %205, align 16, !tbaa !87
  %216 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %209, i32 1
  %217 = load i16, ptr %216, align 8, !tbaa !90
  %218 = icmp ne ptr %214, null
  %219 = icmp ne ptr %215, null
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %221, label %319

221:                                              ; preds = %208
  %222 = icmp eq i16 %217, %210
  br i1 %222, label %225, label %223

223:                                              ; preds = %221
  %224 = icmp eq i16 %217, 0
  br label %228

225:                                              ; preds = %221
  %226 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %214, ptr noundef nonnull %215) #9
  %227 = icmp eq i8 %226, 0
  br label %228

228:                                              ; preds = %225, %223
  %229 = phi i1 [ %227, %225 ], [ %224, %223 ]
  %230 = phi i32 [ 49, %225 ], [ 50, %223 ]
  %231 = select i1 %229, ptr %214, ptr %215
  %232 = select i1 %229, ptr %215, ptr %214
  %233 = load i32, ptr %231, align 8
  %234 = and i32 %233, 65535
  %235 = trunc i32 %233 to i16
  switch i16 %235, label %266 [
    i16 35, label %236
    i16 30, label %236
  ]

236:                                              ; preds = %228, %228
  %237 = load i32, ptr %232, align 8
  %238 = and i32 %237, 65535
  %239 = trunc i32 %237 to i16
  switch i16 %239, label %266 [
    i16 35, label %240
    i16 30, label %240
  ]

240:                                              ; preds = %236, %236
  %241 = icmp eq i32 %234, 35
  br i1 %241, label %242, label %245

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !5
  br label %245

245:                                              ; preds = %240, %242
  %246 = phi ptr [ %244, %242 ], [ %231, %240 ]
  %247 = icmp eq i32 %238, 35
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !5
  br label %251

251:                                              ; preds = %245, %248
  %252 = phi ptr [ %250, %248 ], [ %232, %245 ]
  %253 = tail call ptr @simplify_binary_operation(i32 noundef %230, i32 noundef %1, ptr noundef %246, ptr noundef %252) #8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %319, label %255

255:                                              ; preds = %251
  %256 = load i32, ptr %253, align 8
  %257 = and i32 %256, 65535
  %258 = zext nneg i32 %257 to i64
  %259 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !8
  %261 = icmp eq i32 %260, 9
  br i1 %261, label %273, label %262

262:                                              ; preds = %255
  %263 = lshr i32 %256, 16
  %264 = and i32 %263, 255
  %265 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %264, ptr noundef nonnull %253) #9
  br label %268

266:                                              ; preds = %236, %228
  %267 = tail call ptr @simplify_binary_operation(i32 noundef %230, i32 noundef %1, ptr noundef nonnull %231, ptr noundef nonnull %232) #8
  br label %268

268:                                              ; preds = %262, %266
  %269 = phi ptr [ %267, %266 ], [ %265, %262 ]
  %270 = icmp eq ptr %269, null
  br i1 %270, label %319, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %269, align 8
  br label %273

273:                                              ; preds = %271, %255
  %274 = phi i32 [ %272, %271 ], [ %256, %255 ]
  %275 = phi ptr [ %269, %271 ], [ %253, %255 ]
  %276 = and i32 %274, 65535
  %277 = icmp eq i32 %276, 35
  br i1 %277, label %278, label %295

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !5
  %281 = load i32, ptr %280, align 8
  %282 = and i32 %281, 65535
  %283 = icmp eq i32 %282, %230
  br i1 %283, label %284, label %292

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.rtx_def, ptr %280, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !5
  %287 = icmp eq ptr %286, %231
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.rtx_def, ptr %280, i64 0, i32 1, i32 0, i32 0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !5
  %291 = icmp eq ptr %290, %232
  br i1 %291, label %319, label %292

292:                                              ; preds = %288, %284, %278
  %293 = and i16 %210, %217
  %294 = sext i16 %293 to i32
  br label %305

295:                                              ; preds = %273
  %296 = and i16 %210, %217
  %297 = sext i16 %296 to i32
  %298 = icmp eq i32 %276, 51
  br i1 %298, label %299, label %305

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  %302 = icmp eq i16 %296, 0
  %303 = zext i1 %302 to i32
  %304 = load i32, ptr %301, align 8
  br label %305

305:                                              ; preds = %292, %299, %295
  %306 = phi i32 [ %304, %299 ], [ %274, %295 ], [ %274, %292 ]
  %307 = phi i32 [ %303, %299 ], [ %297, %295 ], [ %294, %292 ]
  %308 = phi ptr [ %301, %299 ], [ %275, %295 ], [ %275, %292 ]
  %309 = and i32 %306, 65535
  %310 = icmp eq i32 %309, 30
  %311 = icmp ne i32 %307, 0
  %312 = select i1 %310, i1 %311, i1 false
  br i1 %312, label %313, label %315

313:                                              ; preds = %305
  %314 = tail call fastcc ptr @neg_const_int(i32 noundef %1, ptr noundef nonnull %308) #8
  br label %315

315:                                              ; preds = %313, %305
  %316 = phi i32 [ 0, %313 ], [ %307, %305 ]
  %317 = phi ptr [ %314, %313 ], [ %308, %305 ]
  store ptr %317, ptr %205, align 16, !tbaa !87
  %318 = trunc i32 %316 to i16
  store i16 %318, ptr %206, align 8, !tbaa !90
  store ptr null, ptr %213, align 16, !tbaa !87
  br label %319

319:                                              ; preds = %251, %268, %288, %315, %208
  %320 = phi i16 [ %210, %208 ], [ %210, %288 ], [ %318, %315 ], [ %210, %268 ], [ %210, %251 ]
  %321 = phi i32 [ %212, %208 ], [ %212, %288 ], [ 1, %315 ], [ %212, %268 ], [ %212, %251 ]
  %322 = phi i32 [ %211, %208 ], [ %211, %288 ], [ 1, %315 ], [ %211, %268 ], [ %211, %251 ]
  %323 = trunc i64 %209 to i32
  %324 = icmp sgt i32 %323, 0
  %325 = add nsw i64 %209, -1
  br i1 %324, label %208, label %196, !llvm.loop !99

326:                                              ; preds = %196, %150, %157
  %327 = phi i32 [ %192, %157 ], [ %151, %150 ], [ %321, %196 ]
  %328 = phi i32 [ 0, %157 ], [ 0, %150 ], [ %322, %196 ]
  %329 = icmp eq i32 %327, 0
  br i1 %329, label %456, label %330

330:                                              ; preds = %326
  %331 = icmp sgt i32 %152, 0
  br i1 %331, label %332, label %352

332:                                              ; preds = %330
  %333 = zext nneg i32 %152 to i64
  br label %334

334:                                              ; preds = %332, %344
  %335 = phi i64 [ 0, %332 ], [ %346, %344 ]
  %336 = phi i32 [ 0, %332 ], [ %345, %344 ]
  %337 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %335
  %338 = load ptr, ptr %337, align 16, !tbaa !87
  %339 = icmp eq ptr %338, null
  br i1 %339, label %344, label %340

340:                                              ; preds = %334
  %341 = sext i32 %336 to i64
  %342 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %342, ptr noundef nonnull align 16 dereferenceable(16) %337, i64 16, i1 false), !tbaa.struct !95
  %343 = add nsw i32 %336, 1
  br label %344

344:                                              ; preds = %334, %340
  %345 = phi i32 [ %343, %340 ], [ %336, %334 ]
  %346 = add nuw nsw i64 %335, 1
  %347 = icmp eq i64 %346, %333
  br i1 %347, label %348, label %334, !llvm.loop !100

348:                                              ; preds = %344
  %349 = icmp eq i32 %328, 0
  br i1 %349, label %354, label %350

350:                                              ; preds = %348, %352
  %351 = phi i32 [ %345, %348 ], [ 0, %352 ]
  br label %150, !llvm.loop !101

352:                                              ; preds = %330
  %353 = icmp eq i32 %328, 0
  br i1 %353, label %426, label %350

354:                                              ; preds = %348
  %355 = icmp eq i32 %345, 2
  br i1 %355, label %356, label %374

356:                                              ; preds = %354
  %357 = load ptr, ptr %7, align 16, !tbaa !87
  %358 = load i32, ptr %357, align 8
  %359 = and i32 %358, 65535
  %360 = icmp eq i32 %359, 30
  br i1 %360, label %361, label %376

361:                                              ; preds = %356
  %362 = load ptr, ptr %5, align 16, !tbaa !87
  %363 = load i32, ptr %362, align 8
  %364 = and i32 %363, 65535
  %365 = zext nneg i32 %364 to i64
  %366 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !8
  %368 = icmp eq i32 %367, 9
  %369 = load i16, ptr %6, align 8
  %370 = icmp ne i16 %369, 0
  %371 = select i1 %368, i1 %370, i1 false
  br i1 %371, label %372, label %376

372:                                              ; preds = %361
  %373 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %357, ptr noundef nonnull %362) #9
  br label %456

374:                                              ; preds = %354
  %375 = icmp sgt i32 %345, 1
  br i1 %375, label %376, label %409

376:                                              ; preds = %356, %361, %374
  %377 = phi i32 [ 2, %356 ], [ 2, %361 ], [ %345, %374 ]
  %378 = add nsw i32 %377, -1
  %379 = zext nneg i32 %378 to i64
  %380 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %379
  %381 = load ptr, ptr %380, align 16, !tbaa !87
  %382 = load i32, ptr %381, align 8
  %383 = and i32 %382, 65535
  %384 = icmp eq i32 %383, 30
  br i1 %384, label %385, label %410

385:                                              ; preds = %376
  %386 = add nsw i32 %377, -2
  %387 = zext nneg i32 %386 to i64
  %388 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %387
  %389 = load ptr, ptr %388, align 16, !tbaa !87
  %390 = load i32, ptr %389, align 8
  %391 = and i32 %390, 65535
  %392 = zext nneg i32 %391 to i64
  %393 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !8
  %395 = icmp eq i32 %394, 9
  br i1 %395, label %396, label %410

396:                                              ; preds = %385
  %397 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %379, i32 1
  %398 = load i16, ptr %397, align 8, !tbaa !90
  %399 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %387, i32 1
  %400 = load i16, ptr %399, align 8, !tbaa !90
  %401 = icmp eq i16 %398, %400
  br i1 %401, label %404, label %402

402:                                              ; preds = %396
  %403 = tail call fastcc ptr @neg_const_int(i32 noundef %1, ptr noundef nonnull %381) #8
  br label %404

404:                                              ; preds = %402, %396
  %405 = phi ptr [ %403, %402 ], [ %381, %396 ]
  %406 = getelementptr inbounds %struct.rtx_def, ptr %405, i64 0, i32 1
  %407 = load i64, ptr %406, align 8, !tbaa !5
  %408 = tail call ptr @plus_constant(ptr noundef nonnull %389, i64 noundef %407) #9
  store ptr %408, ptr %388, align 16, !tbaa !87
  br label %410

409:                                              ; preds = %374
  switch i32 %345, label %424 [
    i32 1, label %410
    i32 0, label %426
  ]

410:                                              ; preds = %409, %376, %385, %404
  %411 = phi i32 [ %345, %409 ], [ %377, %376 ], [ %377, %385 ], [ %378, %404 ]
  %412 = zext nneg i32 %411 to i64
  br label %413

413:                                              ; preds = %410, %418
  %414 = phi i64 [ 0, %410 ], [ %419, %418 ]
  %415 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %414, i32 1
  %416 = load i16, ptr %415, align 8, !tbaa !90
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %413
  %419 = add nuw nsw i64 %414, 1
  %420 = icmp eq i64 %419, %412
  br i1 %420, label %426, label %413, !llvm.loop !102

421:                                              ; preds = %413
  %422 = trunc i64 %414 to i32
  %423 = icmp eq i32 %411, %422
  br i1 %423, label %426, label %430

424:                                              ; preds = %409
  %425 = load ptr, ptr %5, align 16, !tbaa !87
  br label %456

426:                                              ; preds = %352, %418, %409, %421
  %427 = phi i32 [ %411, %421 ], [ %345, %409 ], [ %411, %418 ], [ 0, %352 ]
  %428 = load ptr, ptr %5, align 16, !tbaa !87
  %429 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %428) #9
  br label %438

430:                                              ; preds = %421
  %431 = icmp eq i32 %422, 0
  %432 = load ptr, ptr %5, align 16, !tbaa !87
  br i1 %431, label %438, label %433

433:                                              ; preds = %430
  %434 = and i64 %414, 4294967295
  %435 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %435, i64 16, i1 false), !tbaa.struct !95
  store ptr %432, ptr %435, align 16, !tbaa !87
  %436 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %434, i32 1
  store i16 1, ptr %436, align 8, !tbaa !90
  %437 = load ptr, ptr %5, align 16, !tbaa !87
  br label %438

438:                                              ; preds = %430, %433, %426
  %439 = phi i32 [ %411, %430 ], [ %411, %433 ], [ %427, %426 ]
  %440 = phi ptr [ %432, %430 ], [ %437, %433 ], [ %429, %426 ]
  %441 = icmp sgt i32 %439, 1
  br i1 %441, label %442, label %456

442:                                              ; preds = %438
  %443 = zext nneg i32 %439 to i64
  br label %444

444:                                              ; preds = %442, %444
  %445 = phi i64 [ 1, %442 ], [ %454, %444 ]
  %446 = phi ptr [ %440, %442 ], [ %453, %444 ]
  %447 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %445
  %448 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %445, i32 1
  %449 = load i16, ptr %448, align 8, !tbaa !90
  %450 = icmp eq i16 %449, 0
  %451 = select i1 %450, i32 49, i32 50
  %452 = load ptr, ptr %447, align 16, !tbaa !87
  %453 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %451, i32 noundef %1, ptr noundef %446, ptr noundef %452) #9
  %454 = add nuw nsw i64 %445, 1
  %455 = icmp eq i64 %454, %443
  br i1 %455, label %456, label %444, !llvm.loop !103

456:                                              ; preds = %33, %326, %444, %424, %438, %372, %146
  %457 = phi ptr [ %149, %146 ], [ %373, %372 ], [ %440, %438 ], [ %425, %424 ], [ %453, %444 ], [ null, %326 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #10
  ret ptr %457
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_associative_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = load i32, ptr %3, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %15, ptr noundef %17) #8
  br label %54

19:                                               ; preds = %8
  %20 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %3, ptr noundef nonnull %2) #9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2) #8
  br label %54

24:                                               ; preds = %19, %4
  %25 = phi ptr [ %2, %4 ], [ %3, %19 ]
  %26 = phi ptr [ %3, %4 ], [ %2, %19 ]
  %27 = load i32, ptr %25, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %33, ptr noundef nonnull %26) #9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %31, align 8, !tbaa !5
  %38 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %37, ptr noundef nonnull %26) #8
  %39 = load ptr, ptr %32, align 8, !tbaa !5
  %40 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %38, ptr noundef %39) #8
  br label %54

41:                                               ; preds = %30
  %42 = load ptr, ptr %32, align 8, !tbaa !5
  %43 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %42, ptr noundef nonnull %26) #8
  %44 = icmp eq ptr %43, null
  %45 = load ptr, ptr %31, align 8, !tbaa !5
  br i1 %44, label %48, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %45, ptr noundef nonnull %43) #8
  br label %54

48:                                               ; preds = %41
  %49 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %45, ptr noundef nonnull %26) #8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %32, align 8, !tbaa !5
  %53 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %49, ptr noundef %52) #8
  br label %54

54:                                               ; preds = %24, %48, %51, %46, %36, %22, %12
  %55 = phi ptr [ %18, %12 ], [ %40, %36 ], [ %47, %46 ], [ %53, %51 ], [ %23, %22 ], [ null, %48 ], [ null, %24 ]
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @neg_const_int(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = sub nsw i64 0, %4
  %6 = tail call ptr @gen_int_mode(i64 noundef %5, i32 noundef %0) #9
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @simplify_plus_minus_op_data_cmp(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @commutative_operand_precedence(ptr noundef %1) #9
  %4 = tail call i32 @commutative_operand_precedence(ptr noundef %0) #9
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %3, %4
  br label %20

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #8
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #8
  %19 = icmp ugt i32 %17, %18
  br label %20

20:                                               ; preds = %8, %12, %16, %6
  %21 = phi i1 [ %7, %6 ], [ %19, %16 ], [ false, %12 ], [ false, %8 ]
  %22 = zext i1 %21 to i8
  ret i8 %22
}

; Function Attrs: optsize
declare i32 @commutative_operand_precedence(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !13, i64 1040}
!11 = !{!"gcc_target", !12, i64 0, !15, i64 368, !16, i64 664, !9, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !13, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048, !13, i64 1056, !17, i64 1064, !17, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !13, i64 1160, !13, i64 1168, !18, i64 1176, !13, i64 1232, !13, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !13, i64 1272, !13, i64 1280, !13, i64 1288, !13, i64 1296, !13, i64 1304, !13, i64 1312, !13, i64 1320, !13, i64 1328, !13, i64 1336, !13, i64 1344, !13, i64 1352, !13, i64 1360, !13, i64 1368, !13, i64 1376, !13, i64 1384, !13, i64 1392, !13, i64 1400, !13, i64 1408, !13, i64 1416, !13, i64 1424, !13, i64 1432, !13, i64 1440, !13, i64 1448, !13, i64 1456, !17, i64 1464, !19, i64 1472, !13, i64 1664, !13, i64 1672, !13, i64 1680, !13, i64 1688, !13, i64 1696, !13, i64 1704, !13, i64 1712, !13, i64 1720, !13, i64 1728, !13, i64 1736, !13, i64 1744, !13, i64 1752, !13, i64 1760, !13, i64 1768, !13, i64 1776, !20, i64 1784, !21, i64 1792, !22, i64 1896, !23, i64 1968, !13, i64 2016, !6, i64 2024, !6, i64 2025, !6, i64 2026, !6, i64 2027, !6, i64 2028, !6, i64 2029, !6, i64 2030, !6, i64 2031, !6, i64 2032, !6, i64 2033, !6, i64 2034, !6, i64 2035}
!12 = !{!"asm_out", !13, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !14, i64 56, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"asm_int_op", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!"sched", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!16 = !{!"vectorize", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!17 = !{!"long", !6, i64 0}
!18 = !{!"addr_space", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!19 = !{!"calls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!20 = !{!"c", !13, i64 0}
!21 = !{!"cxx", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!22 = !{!"emutls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !6, i64 64, !6, i64 65}
!23 = !{!"target_option_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!24 = !{!13, !13, i64 0}
!25 = !{!26, !13, i64 0}
!26 = !{!"mem_attrs", !13, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !9, i64 28, !6, i64 32}
!27 = !{!26, !13, i64 8}
!28 = !{!17, !17, i64 0}
!29 = !{!30, !6, i64 46}
!30 = !{!"real_format", !13, i64 0, !13, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !6, i64 44, !6, i64 45, !6, i64 46, !6, i64 47, !6, i64 48, !6, i64 49, !6, i64 50, !6, i64 51}
!31 = !{!30, !6, i64 49}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !9, i64 0}
!35 = !{!"rtvec_def", !9, i64 0, !6, i64 8}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = !{i64 0, i64 4, !8, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 8, i64 24, !5}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33, !39, !40}
!53 = !{i8 0, i8 2}
!54 = !{!55, !13, i64 8}
!55 = !{!"rtl_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!56 = !{!30, !6, i64 45}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = !{!30, !6, i64 47}
!62 = !{!30, !9, i64 24}
!63 = !{!30, !9, i64 20}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !33}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !33}
!78 = distinct !{!78, !33}
!79 = !{!80, !9, i64 16}
!80 = !{!"fixed_value", !81, i64 0, !9, i64 16}
!81 = !{!"", !17, i64 0, !17, i64 8}
!82 = !{!80, !17, i64 0}
!83 = distinct !{!83, !33}
!84 = !{!80, !17, i64 8}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = !{!88, !13, i64 0}
!88 = !{!"simplify_plus_minus_op_data", !13, i64 0, !89, i64 8}
!89 = !{!"short", !6, i64 0}
!90 = !{!88, !89, i64 8}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = !{i64 0, i64 2, !94}
!94 = !{!89, !89, i64 0}
!95 = !{i64 0, i64 8, !24, i64 8, i64 2, !94}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33}
!103 = distinct !{!103, !33}
