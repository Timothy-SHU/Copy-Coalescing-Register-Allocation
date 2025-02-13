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
define dso_local zeroext i8 @mode_signbit_p(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !192 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !193
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %51, !prof !196

7:                                                ; preds = %2
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %9 = load i8, ptr %8, align 1, !tbaa !193
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %51, label %13, !prof !197

13:                                               ; preds = %7
  %14 = icmp ult i8 %9, 9
  br i1 %14, label %15, label %21, !prof !196

15:                                               ; preds = %13
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %25, !prof !196

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
  %31 = load i64, ptr %30, align 8, !tbaa !193
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = add nsw i32 %11, -64
  br label %36

36:                                               ; preds = %33, %19
  %37 = phi ptr [ %20, %19 ], [ %34, %33 ]
  %38 = phi i32 [ %11, %19 ], [ %35, %33 ]
  %39 = load i64, ptr %37, align 8, !tbaa !193
  %40 = icmp ult i32 %38, 64
  %41 = zext nneg i32 %38 to i64
  %42 = shl nsw i64 -1, %41
  %43 = xor i64 %42, -1
  %44 = select i1 %40, i64 %43, i64 -1, !prof !196
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
define dso_local ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 !prof !198 {
  %5 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %20, !prof !199

7:                                                ; preds = %4
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !200
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %16, !prof !202

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !203

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12, %7
  %17 = phi ptr [ %3, %15 ], [ %2, %12 ], [ %2, %7 ]
  %18 = phi ptr [ %2, %15 ], [ %3, %12 ], [ %3, %7 ]
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %17, ptr noundef %18) #9
  br label %20

20:                                               ; preds = %4, %16
  %21 = phi ptr [ %19, %16 ], [ %5, %4 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 !prof !204 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !200
  switch i32 %7, label %14 [
    i32 0, label %8
    i32 1, label %9
    i32 3, label %10
  ], !prof !205

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1690, ptr noundef nonnull @.str.1) #9
  br label %14

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1691, ptr noundef nonnull @.str.1) #9
  br label %14

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !206

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %4, %9, %8, %13, %10
  %15 = phi ptr [ %2, %13 ], [ %3, %10 ], [ %3, %8 ], [ %3, %9 ], [ %3, %4 ]
  %16 = phi ptr [ %3, %13 ], [ %2, %10 ], [ %2, %8 ], [ %2, %9 ], [ %2, %4 ]
  %17 = tail call ptr @avoid_constant_pool_reference(ptr noundef %16) #8
  %18 = tail call ptr @avoid_constant_pool_reference(ptr noundef %15) #8
  %19 = tail call ptr @simplify_const_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %17, ptr noundef %18) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23, !prof !207

21:                                               ; preds = %14
  %22 = tail call fastcc ptr @simplify_binary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %16, ptr noundef %15, ptr noundef %17, ptr noundef %18) #8
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ %19, %14 ]
  ret ptr %24
}

; Function Attrs: optsize
declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @avoid_constant_pool_reference(ptr noundef readonly %0) local_unnamed_addr #2 !prof !208 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %84 [
    i16 43, label %19
    i16 101, label %4
  ], !prof !209

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !193
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
  br i1 %21, label %84, label %22, !prof !210

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !193
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !211
  %26 = tail call ptr %25(ptr noundef %24) #9
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %48, !prof !225

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !193
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %48, !prof !226

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %48, !prof !226

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !193
  %46 = load ptr, ptr %43, align 8, !tbaa !193
  %47 = load i32, ptr %46, align 8
  br label %48

48:                                               ; preds = %42, %36, %30, %22
  %49 = phi i32 [ %47, %42 ], [ %27, %36 ], [ %27, %30 ], [ %27, %22 ]
  %50 = phi ptr [ %46, %42 ], [ %26, %36 ], [ %26, %30 ], [ %26, %22 ]
  %51 = phi i64 [ %45, %42 ], [ 0, %36 ], [ 0, %30 ], [ 0, %22 ]
  %52 = and i32 %49, 65535
  %53 = icmp eq i32 %52, 122
  br i1 %53, label %54, label %58, !prof !210

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !193
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i32 [ %57, %54 ], [ %49, %48 ]
  %60 = phi ptr [ %56, %54 ], [ %50, %48 ]
  %61 = and i32 %59, 67174399
  %62 = icmp eq i32 %61, 67108909
  br i1 %62, label %63, label %84, !prof !227

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
  %81 = load i32, ptr %80, align 4, !tbaa !200
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
define dso_local ptr @simplify_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !228 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %7, !prof !229

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5137, ptr noundef nonnull @.str.1) #9
  br label %7

7:                                                ; preds = %4, %6
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %9, label %10, !prof !229

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5138, ptr noundef nonnull @.str.1) #9
  br label %10

10:                                               ; preds = %7, %9
  %11 = icmp eq i32 %2, 1
  br i1 %11, label %12, label %13, !prof !229

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5139, ptr noundef nonnull @.str.1) #9
  br label %13

13:                                               ; preds = %10, %12
  %14 = icmp eq i32 %0, 1
  br i1 %14, label %15, label %16, !prof !229

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
  br i1 %22, label %24, label %23, !prof !230

23:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5143, ptr noundef nonnull @.str.1) #9
  br label %24

24:                                               ; preds = %16, %23
  %25 = zext i32 %0 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !193
  %28 = zext i8 %27 to i32
  %29 = urem i32 %3, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !231

31:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5145, ptr noundef nonnull @.str.1) #9
  br label %32

32:                                               ; preds = %24, %31
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !193
  %36 = zext i8 %35 to i32
  %37 = icmp ugt i32 %36, %3
  br i1 %37, label %39, label %38, !prof !231

38:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5146, ptr noundef nonnull @.str.1) #9
  br label %39

39:                                               ; preds = %32, %38
  %40 = icmp eq i32 %0, %2
  br i1 %40, label %41, label %43, !prof !232

41:                                               ; preds = %39
  %42 = icmp eq i32 %3, 0
  br i1 %42, label %500, label %43, !prof !233

43:                                               ; preds = %41, %39
  %44 = load i32, ptr %1, align 8
  %45 = trunc i32 %44 to i16
  switch i16 %45, label %145 [
    i16 30, label %46
    i16 32, label %46
    i16 31, label %46
    i16 33, label %46
    i16 39, label %48
    i16 100, label %129
  ], !prof !234

46:                                               ; preds = %43, %43, %43, %43
  %47 = tail call fastcc ptr @simplify_immed_subreg(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #8
  br label %500

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !193
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load i32, ptr %54, align 8, !tbaa !193
  %56 = add i32 %55, %3
  %57 = icmp eq i32 %53, %0
  %58 = icmp eq i32 %3, 0
  %59 = and i1 %58, %57
  %60 = icmp eq i32 %55, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %500, label %62, !prof !235

62:                                               ; preds = %48
  %63 = zext nneg i32 %53 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !193
  %66 = zext i8 %65 to i32
  %67 = load i8, ptr %26, align 1, !tbaa !193
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
  %84 = load ptr, ptr %49, align 8, !tbaa !193
  %85 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %53, ptr noundef %84, i32 noundef %80) #9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %500, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %49, align 8, !tbaa !193
  %89 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef %88, i32 noundef %80) #9
  %90 = load i32, ptr %1, align 8
  %91 = and i32 %90, 402653184
  %92 = icmp eq i32 %91, 268435456
  br i1 %92, label %93, label %500

93:                                               ; preds = %87
  %94 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %95 = load i8, ptr %94, align 1, !tbaa !193
  %96 = icmp eq i8 %95, 2
  br i1 %96, label %97, label %500

97:                                               ; preds = %93
  %98 = load i8, ptr %26, align 1, !tbaa !193
  %99 = zext i8 %98 to i64
  %100 = load i8, ptr %34, align 1, !tbaa !193
  %101 = zext i8 %100 to i64
  %102 = sub nsw i64 %99, %101
  %103 = load i8, ptr %64, align 1, !tbaa !193
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
  %130 = load i8, ptr %26, align 1, !tbaa !193
  %131 = load i8, ptr %34, align 1, !tbaa !193
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
  %140 = load ptr, ptr %139, align 8, !tbaa !193
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = tail call ptr @simplify_gen_unary(i32 noundef 100, i32 noundef %0, ptr noundef nonnull %140, i32 noundef %143) #8
  br label %500

145:                                              ; preds = %136, %43, %129
  %146 = phi i32 [ %137, %136 ], [ %44, %43 ], [ %44, %129 ]
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 37
  br i1 %148, label %149, label %165, !prof !236

149:                                              ; preds = %145
  %150 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #8
  %151 = icmp ult i32 %150, 53
  br i1 %151, label %152, label %165, !prof !237

152:                                              ; preds = %149
  %153 = tail call i32 @simplify_subreg_regno(i32 noundef %150, i32 noundef %2, i32 noundef %3, i32 noundef %0) #9
  %154 = icmp ult i32 %153, 53
  br i1 %154, label %157, label %155, !prof !238

155:                                              ; preds = %152
  %156 = load i32, ptr %1, align 8
  br label %165

157:                                              ; preds = %152
  %158 = tail call ptr @gen_rtx_REG_offset(ptr noundef nonnull %1, i32 noundef %0, i32 noundef %153, i32 noundef %3) #9
  %159 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #9
  %160 = icmp eq i32 %159, %3
  br i1 %160, label %161, label %500, !prof !238

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load i32, ptr %162, align 8, !tbaa !193
  %164 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %163, ptr %164, align 8, !tbaa !193
  br label %500

165:                                              ; preds = %155, %149, %145
  %166 = phi i32 [ %156, %155 ], [ %146, %149 ], [ %146, %145 ]
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 43
  br i1 %168, label %169, label %194, !prof !239

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !193
  %172 = tail call i32 @mode_dependent_address_p(ptr noundef %171) #9
  %173 = icmp eq i32 %172, 0
  %174 = load i32, ptr %1, align 8
  br i1 %173, label %175, label %194, !prof !240

175:                                              ; preds = %169
  %176 = and i32 %174, 134217728
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178, !prof !240

178:                                              ; preds = %175
  %179 = tail call i32 @have_insn_for(i32 noundef 23, i32 noundef %2) #9
  %180 = icmp eq i32 %179, 0
  %181 = load i32, ptr %1, align 8
  br i1 %180, label %182, label %194

182:                                              ; preds = %178, %175
  %183 = phi i32 [ %174, %175 ], [ %181, %178 ]
  %184 = load i8, ptr %26, align 1, !tbaa !193
  %185 = lshr i32 %183, 16
  %186 = and i32 %185, 255
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !193
  %190 = icmp ugt i8 %184, %189
  br i1 %190, label %194, label %191, !prof !241

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
  ], !prof !242

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !193
  %200 = load i32, ptr %199, align 8
  %201 = lshr i32 %200, 16
  %202 = and i32 %201, 255
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !193
  %206 = icmp eq i8 %205, 0
  %207 = zext i8 %205 to i64
  %208 = select i1 %206, i64 %203, i64 %207
  %209 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !193
  %211 = zext i8 %210 to i32
  %212 = icmp ugt i32 %211, %3
  %213 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %214 = select i1 %212, i32 0, i32 %211
  %215 = sub i32 %3, %214
  %216 = select i1 %212, ptr %198, ptr %213
  %217 = load ptr, ptr %216, align 8, !tbaa !193
  %218 = load i8, ptr %26, align 1, !tbaa !193
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
  %237 = load i8, ptr %26, align 1, !tbaa !193
  %238 = load i8, ptr %34, align 1, !tbaa !193
  %239 = icmp ult i8 %237, %238
  br i1 %239, label %240, label %288

240:                                              ; preds = %236
  %241 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #9
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %268

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !193
  %246 = load i32, ptr %245, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = icmp eq i32 %248, %0
  br i1 %249, label %500, label %250

250:                                              ; preds = %243
  %251 = load i8, ptr %26, align 1, !tbaa !193
  %252 = zext nneg i32 %248 to i64
  %253 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !193
  %255 = icmp ugt i8 %251, %254
  br i1 %255, label %259, label %256

256:                                              ; preds = %250
  %257 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %248) #9
  %258 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %245, i32 noundef %248, i32 noundef %257) #8
  br label %500

259:                                              ; preds = %250
  %260 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %261 = load i8, ptr %260, align 1, !tbaa !193
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
  %274 = load ptr, ptr %273, align 8, !tbaa !193
  %275 = load i32, ptr %274, align 8
  %276 = lshr i32 %275, 16
  %277 = and i32 %276, 255
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !193
  %281 = zext i8 %280 to i32
  %282 = shl nuw nsw i32 %281, 3
  %283 = icmp ult i32 %241, %282
  br i1 %283, label %288, label %284

284:                                              ; preds = %272
  %285 = sext i32 %0 to i64
  %286 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !243
  br label %500

288:                                              ; preds = %268, %272, %194, %236
  %289 = phi i32 [ %269, %268 ], [ %269, %272 ], [ %195, %194 ], [ %195, %236 ]
  %290 = and i32 %289, 65535
  %291 = add nsw i32 %290, -67
  %292 = icmp ult i32 %291, 2
  br i1 %292, label %293, label %346, !prof !244

293:                                              ; preds = %288
  %294 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %295 = load i8, ptr %294, align 1, !tbaa !193
  %296 = and i8 %295, -2
  %297 = icmp eq i8 %296, 2
  br i1 %297, label %298, label %349, !prof !245

298:                                              ; preds = %293
  %299 = load i8, ptr %26, align 1, !tbaa !193
  %300 = zext i8 %299 to i16
  %301 = shl nuw nsw i16 %300, 3
  %302 = shl nuw nsw i16 %300, 4
  %303 = zext nneg i16 %302 to i32
  %304 = load i8, ptr %34, align 1, !tbaa !193
  %305 = zext i8 %304 to i32
  %306 = shl nuw nsw i32 %305, 3
  %307 = icmp ult i32 %306, %303
  br i1 %307, label %349, label %308, !prof !246

308:                                              ; preds = %298
  %309 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %310 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %311 = load ptr, ptr %310, align 8, !tbaa !193
  %312 = load i32, ptr %311, align 8
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 30
  br i1 %314, label %315, label %349, !prof !247

315:                                              ; preds = %308
  %316 = load ptr, ptr %309, align 8, !tbaa !193
  %317 = load i32, ptr %316, align 8
  %318 = and i32 %317, 65535
  %319 = icmp eq i32 %318, 98
  br i1 %319, label %320, label %349, !prof !248

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !193
  %323 = load i32, ptr %322, align 8
  %324 = lshr i32 %323, 16
  %325 = and i32 %324, 255
  %326 = icmp eq i32 %325, %0
  br i1 %326, label %327, label %349

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.rtx_def, ptr %311, i64 0, i32 1
  %329 = load i64, ptr %328, align 8, !tbaa !193
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
  %341 = load ptr, ptr %309, align 8, !tbaa !193
  %342 = getelementptr inbounds %struct.rtx_def, ptr %341, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !193
  %344 = load ptr, ptr %310, align 8, !tbaa !193
  %345 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %0, ptr noundef %343, ptr noundef %344) #8
  br label %500

346:                                              ; preds = %335, %288
  %347 = phi i1 [ %339, %335 ], [ false, %288 ]
  %348 = phi i32 [ %336, %335 ], [ %289, %288 ]
  br i1 %347, label %349, label %399, !prof !249

349:                                              ; preds = %298, %308, %315, %320, %327, %293, %346
  %350 = phi i32 [ %348, %346 ], [ %289, %293 ], [ %289, %327 ], [ %289, %320 ], [ %289, %315 ], [ %289, %308 ], [ %289, %298 ]
  %351 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %352 = load i8, ptr %351, align 1, !tbaa !193
  %353 = and i8 %352, -2
  %354 = icmp eq i8 %353, 2
  br i1 %354, label %355, label %399, !prof !245

355:                                              ; preds = %349
  %356 = load i8, ptr %26, align 1, !tbaa !193
  %357 = zext i8 %356 to i16
  %358 = shl nuw nsw i16 %357, 3
  %359 = zext nneg i16 %358 to i32
  %360 = load i8, ptr %34, align 1, !tbaa !193
  %361 = zext i8 %360 to i32
  %362 = shl nuw nsw i32 %361, 3
  %363 = icmp ugt i32 %362, %359
  br i1 %363, label %364, label %399, !prof !250

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %366 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %367 = load ptr, ptr %366, align 8, !tbaa !193
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 65535
  %370 = icmp eq i32 %369, 30
  br i1 %370, label %371, label %399, !prof !247

371:                                              ; preds = %364
  %372 = load ptr, ptr %365, align 8, !tbaa !193
  %373 = load i32, ptr %372, align 8
  %374 = and i32 %373, 65535
  %375 = icmp eq i32 %374, 99
  br i1 %375, label %376, label %399, !prof !248

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.rtx_def, ptr %372, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !193
  %379 = load i32, ptr %378, align 8
  %380 = lshr i32 %379, 16
  %381 = and i32 %380, 255
  %382 = icmp eq i32 %381, %0
  br i1 %382, label %383, label %399

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1
  %385 = load i64, ptr %384, align 8, !tbaa !193
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
  %394 = load ptr, ptr %365, align 8, !tbaa !193
  %395 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !193
  %397 = load ptr, ptr %366, align 8, !tbaa !193
  %398 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %0, ptr noundef %396, ptr noundef %397) #8
  br label %500

399:                                              ; preds = %391, %349, %346, %383, %376, %371, %364, %355
  %400 = phi i32 [ %392, %391 ], [ %350, %349 ], [ %348, %346 ], [ %350, %383 ], [ %350, %376 ], [ %350, %371 ], [ %350, %364 ], [ %350, %355 ]
  %401 = and i32 %400, 65535
  %402 = icmp eq i32 %401, 65
  br i1 %402, label %403, label %449, !prof !251

403:                                              ; preds = %399
  %404 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %405 = load i8, ptr %404, align 1, !tbaa !193
  %406 = and i8 %405, -2
  %407 = icmp eq i8 %406, 2
  br i1 %407, label %408, label %500

408:                                              ; preds = %403
  %409 = load i8, ptr %26, align 1, !tbaa !193
  %410 = load i8, ptr %34, align 1, !tbaa !193
  %411 = icmp ult i8 %409, %410
  br i1 %411, label %412, label %500

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %414 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %415 = load ptr, ptr %414, align 8, !tbaa !193
  %416 = load i32, ptr %415, align 8
  %417 = and i32 %416, 65535
  %418 = icmp eq i32 %417, 30
  br i1 %418, label %419, label %500

419:                                              ; preds = %412
  %420 = load ptr, ptr %413, align 8, !tbaa !193
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, 65534
  %423 = icmp eq i32 %422, 98
  br i1 %423, label %424, label %500

424:                                              ; preds = %419
  %425 = getelementptr inbounds %struct.rtx_def, ptr %420, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !193
  %427 = load i32, ptr %426, align 8
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  %430 = icmp eq i32 %429, %0
  br i1 %430, label %431, label %500

431:                                              ; preds = %424
  %432 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1
  %433 = load i64, ptr %432, align 8, !tbaa !193
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
  %444 = load ptr, ptr %413, align 8, !tbaa !193
  %445 = getelementptr inbounds %struct.rtx_def, ptr %444, i64 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !193
  %447 = load ptr, ptr %414, align 8, !tbaa !193
  %448 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %0, ptr noundef %446, ptr noundef %447) #8
  br label %500

449:                                              ; preds = %440, %399
  %450 = phi i32 [ %442, %440 ], [ %401, %399 ]
  %451 = add nsw i32 %450, -67
  %452 = icmp ult i32 %451, 2
  br i1 %452, label %453, label %500, !prof !252

453:                                              ; preds = %449
  %454 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %455 = load i8, ptr %454, align 1, !tbaa !193
  %456 = and i8 %455, -2
  %457 = icmp eq i8 %456, 2
  br i1 %457, label %458, label %500, !prof !245

458:                                              ; preds = %453
  %459 = load i8, ptr %26, align 1, !tbaa !193
  %460 = zext i8 %459 to i32
  %461 = shl nuw nsw i32 %460, 3
  %462 = icmp ugt i8 %459, 3
  br i1 %462, label %463, label %500, !prof !246

463:                                              ; preds = %458
  %464 = load i8, ptr %34, align 1, !tbaa !193
  %465 = zext i8 %464 to i16
  %466 = shl nuw nsw i16 %465, 3
  %467 = zext nneg i16 %466 to i32
  %468 = shl nuw nsw i32 %460, 4
  %469 = icmp ugt i32 %468, %467
  br i1 %469, label %500, label %470

470:                                              ; preds = %463
  %471 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %472 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !193
  %474 = load i32, ptr %473, align 8
  %475 = and i32 %474, 65535
  %476 = icmp eq i32 %475, 30
  br i1 %476, label %477, label %500

477:                                              ; preds = %470
  %478 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1
  %479 = load i64, ptr %478, align 8, !tbaa !193
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
  %492 = load ptr, ptr %472, align 8, !tbaa !193
  %493 = getelementptr inbounds %struct.rtx_def, ptr %492, i64 0, i32 1
  %494 = load i64, ptr %493, align 8, !tbaa !193
  %495 = sdiv i64 %494, 8
  %496 = trunc i64 %495 to i32
  %497 = load ptr, ptr %471, align 8, !tbaa !193
  %498 = add i32 %496, %3
  %499 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef %497, i32 noundef %2, i32 noundef %498) #8
  br label %500

500:                                              ; preds = %408, %412, %424, %431, %403, %419, %243, %264, %256, %161, %157, %284, %453, %449, %458, %463, %470, %477, %488, %234, %197, %222, %228, %77, %48, %70, %72, %79, %127, %107, %97, %93, %87, %83, %41, %491, %443, %393, %340, %191, %138, %46
  %501 = phi ptr [ %47, %46 ], [ %144, %138 ], [ %345, %340 ], [ %398, %393 ], [ %448, %443 ], [ %499, %491 ], [ %193, %191 ], [ %1, %41 ], [ null, %77 ], [ %50, %48 ], [ null, %70 ], [ null, %72 ], [ %81, %79 ], [ %89, %127 ], [ %89, %107 ], [ %89, %97 ], [ %89, %93 ], [ %89, %87 ], [ null, %83 ], [ %235, %234 ], [ null, %197 ], [ %226, %222 ], [ null, %228 ], [ null, %453 ], [ null, %449 ], [ null, %488 ], [ null, %477 ], [ null, %470 ], [ null, %463 ], [ null, %458 ], [ %287, %284 ], [ %158, %157 ], [ %158, %161 ], [ %245, %243 ], [ %267, %264 ], [ %258, %256 ], [ null, %419 ], [ null, %403 ], [ null, %431 ], [ null, %424 ], [ null, %412 ], [ null, %408 ]
  ret ptr %501
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @delegitimize_mem_from_attrs(ptr noundef readonly %0) local_unnamed_addr #2 !prof !253 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 43
  br i1 %10, label %11, label %166, !prof !254

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = icmp eq ptr %14, null
  br i1 %15, label %166, label %16, !prof !255

16:                                               ; preds = %11
  %17 = load ptr, ptr %14, align 8, !tbaa !256
  %18 = icmp eq ptr %17, null
  br i1 %18, label %166, label %19, !prof !258

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !259
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !260

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %166, !prof !261

27:                                               ; preds = %23, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %28 = lshr i32 %8, 16
  %29 = and i32 %28, 255
  store i32 %29, ptr %2, align 4, !tbaa !200
  %30 = load i64, ptr %17, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %164 [
    i16 32, label %73
    i16 45, label %32
    i16 46, label %32
    i16 41, label %32
    i16 42, label %32
    i16 43, label %32
    i16 44, label %32
    i16 118, label %32
  ], !prof !262

32:                                               ; preds = %27, %27, %27, %27, %27, %27, %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !tbaa !200
  %33 = call ptr @get_inner_reference(ptr noundef nonnull %17, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #9
  %34 = load i64, ptr %3, align 8, !tbaa !263
  %35 = load i32, ptr %2, align 4, !tbaa !200
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !193
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = icmp eq i64 %34, %40
  br i1 %41, label %42, label %63, !prof !264

42:                                               ; preds = %32
  %43 = load i64, ptr %4, align 8, !tbaa !263
  %44 = and i64 %43, 7
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %63, !prof !265

46:                                               ; preds = %42
  %47 = load ptr, ptr %5, align 8, !tbaa !243
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51, !prof !265

49:                                               ; preds = %46
  %50 = ashr exact i64 %43, 3
  br label %64

51:                                               ; preds = %46
  %52 = call i32 @host_integerp(ptr noundef nonnull %47, i32 noundef 0) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8, !tbaa !243
  %56 = load i64, ptr %4, align 8, !tbaa !263
  %57 = sdiv i64 %56, 8
  %58 = icmp eq ptr %55, null
  br i1 %58, label %64, label %59, !prof !266

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_int_cst, ptr %55, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !193
  %62 = add i64 %61, %57
  br label %64

63:                                               ; preds = %51, %42, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %164

64:                                               ; preds = %59, %54, %49
  %65 = phi i64 [ %62, %59 ], [ %57, %54 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %66 = icmp eq ptr %33, null
  br i1 %66, label %164, label %67, !prof !266

67:                                               ; preds = %64
  %68 = load i32, ptr %2, align 4, !tbaa !200
  %69 = load i32, ptr %0, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %164, !prof !267

73:                                               ; preds = %27, %67
  %74 = phi ptr [ %33, %67 ], [ %17, %27 ]
  %75 = phi i64 [ %65, %67 ], [ 0, %27 ]
  %76 = phi i32 [ %68, %67 ], [ %29, %27 ]
  %77 = load i64, ptr %74, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 32
  br i1 %79, label %80, label %164, !prof !268

80:                                               ; preds = %73
  %81 = and i64 %77, 67108864
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88, !prof !269

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %74, i64 0, i32 4
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 49152
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %164, label %88, !prof !269

88:                                               ; preds = %83, %80
  %89 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !193
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %164, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %74, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !193
  %94 = icmp eq ptr %93, null
  br i1 %94, label %164, label %95

95:                                               ; preds = %91
  %96 = load i32, ptr %93, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 43
  br i1 %98, label %99, label %164

99:                                               ; preds = %95
  %100 = load ptr, ptr %13, align 8, !tbaa !193
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.mem_attrs, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !259
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !193
  %109 = add nsw i64 %108, %75
  br label %110

110:                                              ; preds = %99, %106, %102
  %111 = phi i64 [ %75, %99 ], [ %109, %106 ], [ %75, %102 ]
  %112 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !193
  %114 = load ptr, ptr %12, align 8, !tbaa !193
  %115 = icmp eq i64 %111, 0
  br i1 %115, label %154, label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %114, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 49
  br i1 %119, label %120, label %161

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %122 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !193
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = icmp eq i32 %125, 30
  br i1 %126, label %127, label %161

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !193
  %130 = icmp eq i64 %111, %129
  br i1 %130, label %150, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %113, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 49
  br i1 %134, label %135, label %161

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %137 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !193
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 30
  br i1 %141, label %142, label %161

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !193
  %145 = add nsw i64 %144, %111
  %146 = icmp eq i64 %145, %129
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load ptr, ptr %136, align 8, !tbaa !193
  %149 = icmp eq ptr %148, null
  br i1 %149, label %161, label %150

150:                                              ; preds = %147, %127
  %151 = phi ptr [ %113, %127 ], [ %148, %147 ]
  %152 = load ptr, ptr %121, align 8, !tbaa !193
  %153 = icmp eq ptr %152, null
  br i1 %153, label %161, label %154

154:                                              ; preds = %150, %110
  %155 = phi ptr [ %113, %110 ], [ %151, %150 ]
  %156 = phi ptr [ %114, %110 ], [ %152, %150 ]
  %157 = call i32 @rtx_equal_p(ptr noundef %156, ptr noundef %155) #9
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i32, ptr %2, align 4, !tbaa !200
  br label %161

161:                                              ; preds = %159, %150, %147, %142, %135, %131, %120, %116
  %162 = phi i32 [ %160, %159 ], [ %76, %150 ], [ %76, %147 ], [ %76, %142 ], [ %76, %135 ], [ %76, %131 ], [ %76, %120 ], [ %76, %116 ]
  %163 = call ptr @adjust_address_1(ptr noundef nonnull %93, i32 noundef %162, i64 noundef %111, i32 noundef 0, i32 noundef 1) #9
  br label %164

164:                                              ; preds = %27, %63, %161, %154, %95, %91, %88, %83, %73, %67, %64
  %165 = phi ptr [ %0, %95 ], [ %0, %91 ], [ %0, %88 ], [ %0, %83 ], [ %0, %73 ], [ %0, %67 ], [ %0, %64 ], [ %0, %154 ], [ %163, %161 ], [ %0, %63 ], [ %0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %166

166:                                              ; preds = %11, %164, %23, %16, %1
  %167 = phi ptr [ %0, %11 ], [ %165, %164 ], [ %0, %23 ], [ %0, %16 ], [ %0, %1 ]
  ret ptr %167
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
define dso_local ptr @simplify_gen_unary(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !270 {
  %5 = tail call ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !271

7:                                                ; preds = %4
  %8 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) #9
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !272 {
  %5 = tail call ptr @avoid_constant_pool_reference(ptr noundef %2) #8
  %6 = tail call ptr @simplify_const_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %3) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !273

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
define dso_local ptr @simplify_gen_ternary(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 !prof !274 {
  %7 = tail call ptr @simplify_ternary_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11, !prof !275

9:                                                ; preds = %6
  %10 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5) #9
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_ternary_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 !prof !276 {
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !193
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = icmp eq i8 %9, 0
  %13 = select i1 %12, i32 64, i32 %11, !prof !277
  switch i32 %0, label %370 [
    i32 119, label %14
    i32 120, label %14
    i32 47, label %71
    i32 123, label %296
  ], !prof !278

14:                                               ; preds = %6, %6
  %15 = load i32, ptr %3, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %18, label %371, !prof !279

18:                                               ; preds = %14
  %19 = load i32, ptr %4, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %371, !prof !280

22:                                               ; preds = %18
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %371, !prof !281

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !193
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !193
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, %29
  %34 = icmp ule i32 %33, %13
  %35 = icmp ult i32 %13, 65
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %371

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !193
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
  br label %371

71:                                               ; preds = %6
  %72 = load i32, ptr %3, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 30
  br i1 %74, label %75, label %79, !prof !282

75:                                               ; preds = %71
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %77 = icmp eq ptr %76, %3
  %78 = select i1 %77, ptr %5, ptr %4, !prof !283
  br label %371

79:                                               ; preds = %71
  %80 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82, !prof !284

82:                                               ; preds = %79
  %83 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %371, label %85

85:                                               ; preds = %82, %79
  %86 = load i32, ptr %3, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 80
  br i1 %88, label %89, label %151, !prof !285

89:                                               ; preds = %85
  %90 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %151, !prof !286

92:                                               ; preds = %89
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %94 = load i8, ptr %93, align 1, !tbaa !193
  switch i8 %94, label %132 [
    i8 8, label %95
    i8 9, label %95
    i8 11, label %95
    i8 17, label %95
  ], !prof !287

95:                                               ; preds = %92, %92, %92, %92
  %96 = and i8 %94, -2
  %97 = icmp eq i8 %96, 8
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %100 = load i8, ptr %99, align 1, !tbaa !193
  %101 = zext i8 %100 to i32
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i32 [ %1, %95 ], [ %101, %98 ]
  %104 = add i32 %103, -38
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !243
  %108 = getelementptr inbounds %struct.real_format, ptr %107, i64 0, i32 11
  %109 = load i8, ptr %108, align 2, !tbaa !288
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
  ], !prof !290

115:                                              ; preds = %114, %114, %114, %114
  br i1 %97, label %120, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %118 = load i8, ptr %117, align 1, !tbaa !193
  %119 = zext i8 %118 to i32
  br label %120

120:                                              ; preds = %116, %115
  %121 = phi i32 [ %1, %115 ], [ %119, %116 ]
  %122 = add i32 %121, -38
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !243
  %126 = getelementptr inbounds %struct.real_format, ptr %125, i64 0, i32 14
  %127 = load i8, ptr %126, align 1, !tbaa !291
  %128 = icmp ne i8 %127, 0
  %129 = load i32, ptr @flag_signed_zeros, align 4
  %130 = icmp ne i32 %129, 0
  %131 = select i1 %128, i1 %130, i1 false
  br i1 %131, label %151, label %132

132:                                              ; preds = %92, %114, %120
  %133 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !193
  %135 = tail call i32 @rtx_equal_p(ptr noundef %134, ptr noundef %4) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137, !prof !286

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !193
  %140 = tail call i32 @rtx_equal_p(ptr noundef %139, ptr noundef %5) #9
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %371

142:                                              ; preds = %137, %132
  %143 = load ptr, ptr %133, align 8, !tbaa !193
  %144 = tail call i32 @rtx_equal_p(ptr noundef %143, ptr noundef %5) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146, !prof !286

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !193
  %149 = tail call i32 @rtx_equal_p(ptr noundef %148, ptr noundef %4) #9
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %371

151:                                              ; preds = %120, %102, %146, %142, %89, %85
  %152 = load i32, ptr %3, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 81
  br i1 %154, label %155, label %217, !prof !292

155:                                              ; preds = %151
  %156 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %217, !prof !293

158:                                              ; preds = %155
  %159 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %160 = load i8, ptr %159, align 1, !tbaa !193
  switch i8 %160, label %198 [
    i8 8, label %161
    i8 9, label %161
    i8 11, label %161
    i8 17, label %161
  ], !prof !294

161:                                              ; preds = %158, %158, %158, %158
  %162 = and i8 %160, -2
  %163 = icmp eq i8 %162, 8
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %166 = load i8, ptr %165, align 1, !tbaa !193
  %167 = zext i8 %166 to i32
  br label %168

168:                                              ; preds = %164, %161
  %169 = phi i32 [ %1, %161 ], [ %167, %164 ]
  %170 = add i32 %169, -38
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !243
  %174 = getelementptr inbounds %struct.real_format, ptr %173, i64 0, i32 11
  %175 = load i8, ptr %174, align 2, !tbaa !288
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
  ], !prof !295

181:                                              ; preds = %180, %180, %180, %180
  br i1 %163, label %186, label %182

182:                                              ; preds = %181
  %183 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %184 = load i8, ptr %183, align 1, !tbaa !193
  %185 = zext i8 %184 to i32
  br label %186

186:                                              ; preds = %182, %181
  %187 = phi i32 [ %1, %181 ], [ %185, %182 ]
  %188 = add i32 %187, -38
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !243
  %192 = getelementptr inbounds %struct.real_format, ptr %191, i64 0, i32 14
  %193 = load i8, ptr %192, align 1, !tbaa !291
  %194 = icmp ne i8 %193, 0
  %195 = load i32, ptr @flag_signed_zeros, align 4
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %217, label %198

198:                                              ; preds = %158, %180, %186
  %199 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !193
  %201 = tail call i32 @rtx_equal_p(ptr noundef %200, ptr noundef %4) #9
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203, !prof !293

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !193
  %206 = tail call i32 @rtx_equal_p(ptr noundef %205, ptr noundef %5) #9
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %371

208:                                              ; preds = %203, %198
  %209 = load ptr, ptr %199, align 8, !tbaa !193
  %210 = tail call i32 @rtx_equal_p(ptr noundef %209, ptr noundef %5) #9
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212, !prof !293

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !193
  %215 = tail call i32 @rtx_equal_p(ptr noundef %214, ptr noundef %4) #9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %371

217:                                              ; preds = %186, %168, %212, %208, %155, %151
  %218 = load i32, ptr %3, align 8
  %219 = and i32 %218, 65535
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !200
  %223 = icmp ult i32 %222, 2
  br i1 %223, label %224, label %371, !prof !296

224:                                              ; preds = %217
  %225 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #9
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %371, !prof !297

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !193
  %230 = load i32, ptr %229, align 8
  %231 = lshr i32 %230, 16
  %232 = and i32 %231, 255
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240, !prof !298

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !193
  %237 = load i32, ptr %236, align 8
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  br label %240

240:                                              ; preds = %227, %234
  %241 = phi i32 [ %239, %234 ], [ %232, %227 ]
  %242 = load i32, ptr %4, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 30
  br i1 %244, label %245, label %275, !prof !299

245:                                              ; preds = %240
  %246 = load i32, ptr %5, align 8
  %247 = and i32 %246, 65535
  %248 = icmp eq i32 %247, 30
  br i1 %248, label %249, label %275, !prof !300

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !193
  %252 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !193
  %254 = icmp eq i64 %251, 1
  br i1 %254, label %255, label %260, !prof !301

255:                                              ; preds = %249
  %256 = icmp eq i64 %253, 0
  br i1 %256, label %257, label %371, !prof !302

257:                                              ; preds = %255
  %258 = load i32, ptr %3, align 8
  %259 = and i32 %258, 65535
  br label %269

260:                                              ; preds = %249
  %261 = icmp eq i64 %251, 0
  %262 = icmp eq i64 %253, 1
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %371, !prof !303

264:                                              ; preds = %260
  %265 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %3, ptr noundef null) #9
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %371, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr %228, align 8, !tbaa !193
  br label %269

269:                                              ; preds = %267, %257
  %270 = phi ptr [ %229, %257 ], [ %268, %267 ]
  %271 = phi i32 [ %259, %257 ], [ %265, %267 ]
  %272 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !193
  %274 = tail call ptr @simplify_gen_relational(i32 noundef %271, i32 noundef %1, i32 noundef %241, ptr noundef %270, ptr noundef %273) #8
  br label %371

275:                                              ; preds = %245, %240
  %276 = icmp eq i32 %241, 0
  br i1 %276, label %277, label %278, !prof !304

277:                                              ; preds = %275
  br label %278

278:                                              ; preds = %277, %275
  %279 = phi i32 [ %2, %277 ], [ %241, %275 ]
  %280 = load i32, ptr %3, align 8
  %281 = and i32 %280, 65535
  %282 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !193
  %284 = tail call ptr @simplify_relational_operation(i32 noundef %281, i32 noundef %2, i32 noundef %279, ptr noundef nonnull %229, ptr noundef %283) #8
  %285 = icmp eq ptr %284, null
  br i1 %285, label %371, label %286, !prof !305

286:                                              ; preds = %278
  %287 = load i32, ptr %284, align 8
  %288 = and i32 %287, 65535
  %289 = icmp eq i32 %288, 30
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %292 = icmp eq ptr %284, %291
  %293 = select i1 %292, ptr %5, ptr %4
  br label %371

294:                                              ; preds = %286
  %295 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %1, ptr noundef nonnull %284, ptr noundef nonnull %4, ptr noundef %5) #9
  br label %371

296:                                              ; preds = %6
  %297 = load i32, ptr %3, align 8
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  %300 = icmp eq i32 %299, %1
  br i1 %300, label %302, label %301

301:                                              ; preds = %296
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4781, ptr noundef nonnull @.str.1) #9
  br label %302

302:                                              ; preds = %296, %301
  %303 = load i32, ptr %4, align 8
  %304 = lshr i32 %303, 16
  %305 = and i32 %304, 255
  %306 = icmp eq i32 %305, %1
  br i1 %306, label %308, label %307

307:                                              ; preds = %302
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4782, ptr noundef nonnull @.str.1) #9
  br label %308

308:                                              ; preds = %302, %307
  %309 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %310 = load i8, ptr %309, align 1, !tbaa !193
  %311 = add i8 %310, -12
  %312 = icmp ult i8 %311, 6
  br i1 %312, label %314, label %313

313:                                              ; preds = %308
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4783, ptr noundef nonnull @.str.1) #9
  br label %314

314:                                              ; preds = %308, %313
  %315 = tail call ptr @avoid_constant_pool_reference(ptr noundef %5) #8
  %316 = load i32, ptr %315, align 8
  %317 = and i32 %316, 65535
  %318 = icmp eq i32 %317, 30
  br i1 %318, label %319, label %371

319:                                              ; preds = %314
  %320 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %321 = load i8, ptr %320, align 1, !tbaa !193
  %322 = zext i8 %321 to i64
  %323 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !193
  %325 = load i8, ptr %8, align 1, !tbaa !193
  %326 = udiv i8 %325, %324
  %327 = zext i8 %326 to i32
  %328 = shl nsw i32 -1, %327
  %329 = xor i32 %328, -1
  %330 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %331 = load i64, ptr %330, align 8, !tbaa !193
  %332 = zext nneg i32 %329 to i64
  %333 = and i64 %331, %332
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %371, label %335

335:                                              ; preds = %319
  %336 = icmp eq i64 %333, %332
  br i1 %336, label %371, label %337

337:                                              ; preds = %335
  %338 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %3) #8
  %339 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %4) #8
  %340 = load i32, ptr %338, align 8
  %341 = and i32 %340, 65535
  %342 = icmp eq i32 %341, 33
  br i1 %342, label %343, label %371

343:                                              ; preds = %337
  %344 = load i32, ptr %339, align 8
  %345 = and i32 %344, 65535
  %346 = icmp eq i32 %345, 33
  br i1 %346, label %347, label %371

347:                                              ; preds = %343
  %348 = tail call ptr @rtvec_alloc(i32 noundef %327) #9
  %349 = icmp ugt i8 %324, %325
  br i1 %349, label %368, label %350

350:                                              ; preds = %347
  %351 = zext i8 %326 to i64
  br label %352

352:                                              ; preds = %350, %352
  %353 = phi i64 [ 0, %350 ], [ %366, %352 ]
  %354 = load i64, ptr %330, align 8, !tbaa !193
  %355 = trunc i64 %353 to i32
  %356 = shl nuw i32 1, %355
  %357 = sext i32 %356 to i64
  %358 = and i64 %354, %357
  %359 = icmp eq i64 %358, 0
  %360 = select i1 %359, ptr %339, ptr %338
  %361 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !193
  %363 = getelementptr inbounds %struct.rtvec_def, ptr %362, i64 0, i32 1, i64 %353
  %364 = load ptr, ptr %363, align 8, !tbaa !243
  %365 = getelementptr inbounds %struct.rtvec_def, ptr %348, i64 0, i32 1, i64 %353
  store ptr %364, ptr %365, align 8, !tbaa !243
  %366 = add nuw nsw i64 %353, 1
  %367 = icmp ult i64 %366, %351
  br i1 %367, label %352, label %368, !llvm.loop !306

368:                                              ; preds = %352, %347
  %369 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %348) #9
  br label %371

370:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4814, ptr noundef nonnull @.str.1) #9
  br label %371

371:                                              ; preds = %370, %26, %22, %18, %14, %224, %217, %314, %337, %343, %260, %278, %255, %264, %335, %319, %368, %269, %294, %290, %203, %212, %137, %146, %82, %75, %68
  %372 = phi ptr [ %78, %75 ], [ %70, %68 ], [ %4, %82 ], [ %4, %146 ], [ %4, %137 ], [ %5, %212 ], [ %5, %203 ], [ %274, %269 ], [ %295, %294 ], [ %293, %290 ], [ %3, %335 ], [ %4, %319 ], [ %369, %368 ], [ null, %264 ], [ null, %255 ], [ null, %278 ], [ null, %260 ], [ null, %343 ], [ null, %337 ], [ null, %314 ], [ null, %217 ], [ null, %224 ], [ null, %14 ], [ null, %18 ], [ null, %22 ], [ null, %26 ], [ null, %370 ]
  ret ptr %372
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 !prof !308 {
  %6 = tail call ptr @simplify_relational_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !309

8:                                                ; preds = %5
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4) #9
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_relational_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 !prof !310 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %16, !prof !311

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !312

12:                                               ; preds = %7
  %13 = load i32, ptr %4, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %5, %12, %7
  %17 = phi i32 [ %15, %12 ], [ %10, %7 ], [ %2, %5 ]
  %18 = tail call ptr @simplify_const_relational_operation(i32 noundef %0, i32 noundef %17, ptr noundef %3, ptr noundef %4) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20, !prof !313

20:                                               ; preds = %16
  %21 = zext i32 %1 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !193
  switch i8 %23, label %74 [
    i8 8, label %24
    i8 9, label %24
    i8 12, label %31
    i8 17, label %31
    i8 13, label %31
    i8 14, label %31
    i8 15, label %31
    i8 16, label %31
  ], !prof !314

24:                                               ; preds = %20, %20
  %25 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %26 = icmp eq ptr %18, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !243
  br label %74

31:                                               ; preds = %20, %20, %20, %20, %20, %20
  %32 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %33 = icmp eq ptr %18, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = sext i32 %1 to i64
  %36 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !243
  br label %74

38:                                               ; preds = %16
  %39 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %3, ptr noundef %4) #9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %46, !prof !315

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %43 = icmp eq ptr %42, %3
  br i1 %43, label %44, label %49, !prof !316

44:                                               ; preds = %41
  %45 = icmp eq ptr %3, %4
  br i1 %45, label %49, label %46

46:                                               ; preds = %44, %38
  %47 = tail call i32 @swap_condition(i32 noundef %0) #9
  %48 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br label %49

49:                                               ; preds = %46, %44, %41
  %50 = phi ptr [ %48, %46 ], [ %3, %44 ], [ %42, %41 ]
  %51 = phi ptr [ %4, %46 ], [ %3, %44 ], [ %3, %41 ]
  %52 = phi ptr [ %3, %46 ], [ %3, %44 ], [ %4, %41 ]
  %53 = phi i32 [ %47, %46 ], [ %0, %44 ], [ %0, %41 ]
  %54 = load i32, ptr %51, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 48
  %57 = icmp eq ptr %52, %50
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %65, !prof !317

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !193
  %62 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !193
  %64 = tail call ptr @simplify_gen_relational(i32 noundef %53, i32 noundef %1, i32 noundef 0, ptr noundef %61, ptr noundef %63) #8
  br label %74

65:                                               ; preds = %49
  %66 = zext i32 %17 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !193
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %74, label %70, !prof !318

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
define dso_local ptr @simplify_replace_fn_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 !prof !319 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = lshr i32 %5, 16
  %8 = and i32 %7, 255
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10, !prof !320

10:                                               ; preds = %4
  %11 = tail call ptr %2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %222

13:                                               ; preds = %4
  %14 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef %1) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !321

16:                                               ; preds = %13
  %17 = tail call ptr @copy_rtx(ptr noundef %3) #9
  br label %222

18:                                               ; preds = %13, %10
  %19 = zext nneg i32 %6 to i64
  %20 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !200
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
  ], !prof !322

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !193
  %25 = load i32, ptr %24, align 8
  %26 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %24, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %27 = load ptr, ptr %23, align 8, !tbaa !193
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %222, label %29

29:                                               ; preds = %22
  %30 = lshr i32 %25, 16
  %31 = and i32 %30, 255
  %32 = tail call ptr @simplify_gen_unary(i32 noundef %6, i32 noundef %8, ptr noundef %26, i32 noundef %31) #8
  br label %222

33:                                               ; preds = %18, %18
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !193
  %36 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %35, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  %39 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %38, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %40 = load ptr, ptr %34, align 8, !tbaa !193
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %42, label %45, !prof !323

42:                                               ; preds = %33
  %43 = load ptr, ptr %37, align 8, !tbaa !193
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %222, label %45, !prof !324

45:                                               ; preds = %42, %33
  %46 = tail call ptr @simplify_gen_binary(i32 noundef %6, i32 noundef %8, ptr noundef %36, ptr noundef %39) #8
  br label %222

47:                                               ; preds = %18, %18
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !193
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !193
  %52 = load i32, ptr %49, align 8
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60, !prof !325

56:                                               ; preds = %47
  %57 = load i32, ptr %51, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  br label %60

60:                                               ; preds = %47, %56
  %61 = phi i32 [ %59, %56 ], [ %54, %47 ]
  %62 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %49, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %63 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %51, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %64 = load ptr, ptr %48, align 8, !tbaa !193
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %66, label %69, !prof !325

66:                                               ; preds = %60
  %67 = load ptr, ptr %50, align 8, !tbaa !193
  %68 = icmp eq ptr %63, %67
  br i1 %68, label %222, label %69

69:                                               ; preds = %66, %60
  %70 = tail call ptr @simplify_gen_relational(i32 noundef %6, i32 noundef %8, i32 noundef %61, ptr noundef %62, ptr noundef %63) #8
  br label %222

71:                                               ; preds = %18, %18
  %72 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !193
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %73, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %78 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !193
  %80 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %79, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !193
  %83 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %82, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %84 = load ptr, ptr %72, align 8, !tbaa !193
  %85 = icmp eq ptr %77, %84
  br i1 %85, label %86, label %92, !prof !325

86:                                               ; preds = %71
  %87 = load ptr, ptr %78, align 8, !tbaa !193
  %88 = icmp eq ptr %80, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load ptr, ptr %81, align 8, !tbaa !193
  %91 = icmp eq ptr %83, %90
  br i1 %91, label %222, label %92

92:                                               ; preds = %89, %86, %71
  %93 = icmp eq i32 %76, 0
  br i1 %93, label %94, label %98, !prof !326

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
  br i1 %102, label %103, label %154, !prof !327

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !193
  %106 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %105, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %107 = load ptr, ptr %104, align 8, !tbaa !193
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %222, label %109, !prof !328

109:                                              ; preds = %103
  %110 = load i32, ptr %0, align 8
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = load i32, ptr %107, align 8
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load i32, ptr %116, align 8, !tbaa !193
  %118 = tail call ptr @simplify_gen_subreg(i32 noundef %112, ptr noundef %106, i32 noundef %115, i32 noundef %117) #8
  %119 = icmp eq ptr %118, null
  %120 = select i1 %119, ptr %0, ptr %118, !prof !329
  br label %222

121:                                              ; preds = %18
  %122 = trunc i32 %5 to i16
  switch i16 %122, label %154 [
    i16 43, label %123
    i16 122, label %131
  ], !prof !330

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !193
  %126 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %125, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %127 = load ptr, ptr %124, align 8, !tbaa !193
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %222, label %129, !prof !331

129:                                              ; preds = %123
  %130 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %126) #9
  br label %222

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !193
  %134 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %133, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %135 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !193
  %137 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %136, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %138 = load i32, ptr %134, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 121
  br i1 %140, label %141, label %146

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !193
  %144 = tail call i32 @rtx_equal_p(ptr noundef %143, ptr noundef %137) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %222

146:                                              ; preds = %141, %131
  %147 = load ptr, ptr %132, align 8, !tbaa !193
  %148 = icmp eq ptr %134, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load ptr, ptr %135, align 8, !tbaa !193
  %151 = icmp eq ptr %137, %150
  br i1 %151, label %222, label %152

152:                                              ; preds = %149, %146
  %153 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %8, ptr noundef nonnull %134, ptr noundef %137) #9
  br label %222

154:                                              ; preds = %121, %18, %101
  %155 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %19
  %156 = load ptr, ptr %155, align 8, !tbaa !243
  %157 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br label %158

158:                                              ; preds = %219, %154
  %159 = phi i64 [ %221, %219 ], [ 0, %154 ]
  %160 = phi ptr [ %220, %219 ], [ %0, %154 ]
  %161 = getelementptr inbounds i8, ptr %156, i64 %159
  %162 = load i8, ptr %161, align 1, !tbaa !193
  switch i8 %162, label %219 [
    i8 0, label %222
    i8 69, label %163
    i8 101, label %203
  ], !prof !332

163:                                              ; preds = %158
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %157, i64 0, i64 %159
  %165 = load ptr, ptr %164, align 8, !tbaa !193
  %166 = load i32, ptr %165, align 8, !tbaa !333
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %219

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1
  %170 = getelementptr inbounds [1 x %union.rtunion_def], ptr %169, i64 0, i64 %159
  %171 = load ptr, ptr %170, align 8, !tbaa !193
  br label %172

172:                                              ; preds = %168, %196
  %173 = phi i64 [ 0, %168 ], [ %199, %196 ]
  %174 = phi ptr [ %171, %168 ], [ %198, %196 ]
  %175 = phi ptr [ %160, %168 ], [ %197, %196 ]
  %176 = getelementptr inbounds %struct.rtvec_def, ptr %165, i64 0, i32 1, i64 %173
  %177 = load ptr, ptr %176, align 8, !tbaa !243
  %178 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %177, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %179 = load ptr, ptr %176, align 8, !tbaa !243
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
  store ptr %184, ptr %191, align 8, !tbaa !193
  br label %192

192:                                              ; preds = %188, %181
  %193 = phi ptr [ %189, %188 ], [ %175, %181 ]
  %194 = phi ptr [ %184, %188 ], [ %174, %181 ]
  %195 = getelementptr inbounds %struct.rtvec_def, ptr %194, i64 0, i32 1, i64 %173
  store ptr %178, ptr %195, align 8, !tbaa !243
  br label %196

196:                                              ; preds = %172, %192
  %197 = phi ptr [ %193, %192 ], [ %175, %172 ]
  %198 = phi ptr [ %194, %192 ], [ %174, %172 ]
  %199 = add nuw nsw i64 %173, 1
  %200 = load i32, ptr %165, align 8, !tbaa !333
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %199, %201
  br i1 %202, label %172, label %219, !llvm.loop !335

203:                                              ; preds = %158
  %204 = getelementptr inbounds [1 x %union.rtunion_def], ptr %157, i64 0, i64 %159
  %205 = load ptr, ptr %204, align 8, !tbaa !193
  %206 = icmp eq ptr %205, null
  br i1 %206, label %219, label %207

207:                                              ; preds = %203
  %208 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %205, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %209 = load ptr, ptr %204, align 8, !tbaa !193
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
  store ptr %208, ptr %218, align 8, !tbaa !193
  br label %219

219:                                              ; preds = %196, %163, %158, %207, %215, %203
  %220 = phi ptr [ %216, %215 ], [ %160, %207 ], [ %160, %203 ], [ %160, %158 ], [ %160, %163 ], [ %197, %196 ]
  %221 = add nuw i64 %159, 1
  br label %158, !llvm.loop !336

222:                                              ; preds = %158, %149, %141, %123, %103, %89, %66, %42, %22, %10, %152, %129, %109, %98, %69, %45, %29, %16
  %223 = phi ptr [ %130, %129 ], [ %153, %152 ], [ %120, %109 ], [ %100, %98 ], [ %70, %69 ], [ %46, %45 ], [ %32, %29 ], [ %17, %16 ], [ %11, %10 ], [ %0, %22 ], [ %0, %42 ], [ %0, %66 ], [ %0, %89 ], [ %0, %103 ], [ %0, %123 ], [ %137, %141 ], [ %0, %149 ], [ %160, %158 ]
  ret ptr %223
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !337 {
  %5 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18, !prof !338

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %10 [
    i16 39, label %18
    i16 41, label %18
  ], !prof !339

10:                                               ; preds = %7
  %11 = and i32 %8, 16711680
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !340

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %2, ptr noundef nonnull %1, i32 noundef %3) #9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16, !prof !340

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
define dso_local ptr @simplify_replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !341 {
  %4 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2) #8
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_const_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !272 {
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
  %22 = load i8, ptr %21, align 1, !tbaa !193
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 3
  %25 = icmp eq i32 %0, 126
  %26 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %27 = load i8, ptr %26, align 1, !tbaa !193
  %28 = add i8 %27, -12
  br i1 %25, label %29, label %133, !prof !342

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
  %40 = load i8, ptr %39, align 1, !tbaa !193
  %41 = add i8 %40, -12
  %42 = icmp ult i8 %41, 6
  %43 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %44 = load i8, ptr %43, align 1, !tbaa !193
  br i1 %42, label %48, label %45

45:                                               ; preds = %37
  %46 = trunc i32 %34 to i8
  %47 = icmp eq i8 %44, %46
  br i1 %47, label %54, label %52

48:                                               ; preds = %37
  %49 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %50 = load i8, ptr %49, align 1, !tbaa !193
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
  %59 = load i8, ptr %58, align 1, !tbaa !193
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !193
  %63 = load i8, ptr %21, align 1, !tbaa !193
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
  store ptr %2, ptr %86, align 8, !tbaa !243
  br label %87

87:                                               ; preds = %85, %80
  %88 = extractelement <2 x i1> %83, i64 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = or disjoint i64 %81, 1
  %91 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %90
  store ptr %2, ptr %91, align 8, !tbaa !243
  br label %92

92:                                               ; preds = %89, %87
  %93 = add i64 %81, 2
  %94 = add <2 x i64> %82, <i64 2, i64 2>
  %95 = icmp eq i64 %93, %76
  br i1 %95, label %131, label %80, !llvm.loop !343

96:                                               ; preds = %57
  %97 = lshr i32 %67, 16
  %98 = and i32 %97, 255
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !193
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !193
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %99
  %106 = load i8, ptr %105, align 1, !tbaa !193
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
  %122 = load ptr, ptr %118, align 8, !tbaa !193
  %123 = trunc i64 %121 to i32
  %124 = urem i32 %123, %108
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds %struct.rtvec_def, ptr %122, i64 0, i32 1, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !243
  %128 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %121
  store ptr %127, ptr %128, align 8, !tbaa !243
  %129 = add nuw nsw i64 %121, 1
  %130 = icmp ult i64 %129, %119
  br i1 %130, label %120, label %131, !llvm.loop !346

131:                                              ; preds = %92, %120, %70, %115
  %132 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %66) #9
  br label %718

133:                                              ; preds = %4, %54
  %134 = icmp ult i8 %28, 6
  br i1 %134, label %135, label %182, !prof !347

135:                                              ; preds = %133
  %136 = load i32, ptr %2, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 33
  br i1 %138, label %139, label %182

139:                                              ; preds = %135
  %140 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %141 = load i8, ptr %140, align 1, !tbaa !193
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !193
  %145 = load i8, ptr %21, align 1, !tbaa !193
  %146 = udiv i8 %145, %144
  %147 = zext i8 %146 to i32
  %148 = lshr i32 %136, 16
  %149 = and i32 %148, 255
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !193
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !193
  %156 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %150
  %157 = load i8, ptr %156, align 1, !tbaa !193
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
  %171 = load ptr, ptr %166, align 8, !tbaa !193
  %172 = getelementptr inbounds %struct.rtvec_def, ptr %171, i64 0, i32 1, i64 %170
  %173 = load ptr, ptr %172, align 8, !tbaa !243
  %174 = tail call ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %165, ptr noundef %173, i32 noundef %167) #8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %718, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.rtvec_def, ptr %159, i64 0, i32 1, i64 %170
  store ptr %174, ptr %177, align 8, !tbaa !243
  %178 = add nuw nsw i64 %170, 1
  %179 = icmp ult i64 %178, %168
  br i1 %179, label %169, label %180, !llvm.loop !348

180:                                              ; preds = %176, %162
  %181 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %159) #9
  br label %718

182:                                              ; preds = %133, %135
  %183 = load i32, ptr %2, align 8
  switch i32 %0, label %237 [
    i32 103, label %184
    i32 105, label %202
  ], !prof !349

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
  %193 = load i64, ptr %192, align 8, !tbaa !193
  br i1 %191, label %194, label %196

194:                                              ; preds = %189
  %195 = ashr i64 %193, 63
  br label %199

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load i64, ptr %197, align 8, !tbaa !193
  br label %199

199:                                              ; preds = %196, %194
  %200 = phi i64 [ %195, %194 ], [ %198, %196 ]
  call void @real_from_integer(ptr noundef nonnull %5, i32 noundef %1, i64 noundef %193, i64 noundef %200, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %6, i32 noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  %201 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %5, i32 noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %718

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
  %211 = load i64, ptr %210, align 8, !tbaa !193
  br i1 %209, label %212, label %214

212:                                              ; preds = %207
  %213 = ashr i64 %211, 63
  br label %217

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %216 = load i64, ptr %215, align 8, !tbaa !193
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
  %225 = load i8, ptr %224, align 1, !tbaa !193
  %226 = icmp ugt i8 %225, 15
  br i1 %226, label %231, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %223
  %229 = load i64, ptr %228, align 8, !tbaa !263
  %230 = and i64 %229, %211
  br label %231

231:                                              ; preds = %227, %222, %220
  %232 = phi i64 [ %218, %220 ], [ %218, %222 ], [ 0, %227 ]
  %233 = phi i64 [ %211, %220 ], [ %211, %222 ], [ %230, %227 ]
  call void @real_from_integer(ptr noundef nonnull %7, i32 noundef %1, i64 noundef %233, i64 noundef %232, i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %8, i32 noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  %234 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %7, i32 noundef %1) #9
  br label %235

235:                                              ; preds = %220, %231
  %236 = phi ptr [ %234, %231 ], [ null, %220 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  br label %718

237:                                              ; preds = %182, %184, %187, %205, %202
  %238 = and i32 %183, 65535
  %239 = icmp eq i32 %238, 30
  %240 = icmp ult i8 %22, 9
  %241 = select i1 %239, i1 %240, i1 false
  %242 = icmp ne i8 %22, 0
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %244, label %376, !prof !351

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %246 = load i64, ptr %245, align 8, !tbaa !193
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
    i32 112, label %718
    i32 101, label %718
    i32 102, label %718
    i32 136, label %718
    i32 137, label %718
    i32 130, label %718
    i32 131, label %718
    i32 132, label %718
  ], !prof !352

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
  %259 = load i64, ptr %258, align 8, !tbaa !263
  %260 = and i64 %259, %246
  %261 = sub nsw i64 0, %260
  %262 = and i64 %260, %261
  %263 = tail call i32 @exact_log2(i64 noundef %262) #9
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  br label %373

266:                                              ; preds = %244
  %267 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %268 = load i64, ptr %267, align 8, !tbaa !263
  %269 = and i64 %268, %246
  %270 = load i8, ptr %21, align 1, !tbaa !193
  %271 = zext i8 %270 to i32
  %272 = shl nuw nsw i32 %271, 3
  %273 = tail call i32 @floor_log2(i64 noundef %269) #9
  %274 = xor i32 %273, -1
  %275 = add i32 %272, %274
  %276 = sext i32 %275 to i64
  br label %373

277:                                              ; preds = %244
  %278 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %279 = load i64, ptr %278, align 8, !tbaa !263
  %280 = and i64 %279, %246
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %277
  %283 = load i8, ptr %21, align 1, !tbaa !193
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
  %293 = load i64, ptr %292, align 8, !tbaa !263
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
  br i1 %302, label %373, label %296, !llvm.loop !353

303:                                              ; preds = %244
  %304 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %305 = load i64, ptr %304, align 8, !tbaa !263
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
  br i1 %314, label %315, label %308, !llvm.loop !354

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
  br i1 %326, label %317, label %373, !llvm.loop !355

327:                                              ; preds = %244
  %328 = icmp eq i32 %3, 0
  br i1 %328, label %329, label %330, !prof !356

329:                                              ; preds = %327
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1264, ptr noundef nonnull @.str.1) #9
  br label %330

330:                                              ; preds = %327, %329
  %331 = zext i32 %3 to i64
  %332 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !193
  %334 = zext i8 %333 to i64
  %335 = shl nuw nsw i64 %334, 3
  %336 = icmp eq i8 %333, 8
  br i1 %336, label %337, label %340, !prof !356

337:                                              ; preds = %330
  %338 = icmp eq i8 %22, 8
  br i1 %338, label %373, label %339

339:                                              ; preds = %337
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.1) #9
  br label %373

340:                                              ; preds = %330
  %341 = icmp ult i8 %333, 8
  br i1 %341, label %342, label %718, !prof !357

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
  %351 = load i8, ptr %350, align 1, !tbaa !193
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
  br i1 %359, label %360, label %718

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
  br label %718

376:                                              ; preds = %237
  %377 = and i32 %183, 16711680
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %584, !prof !358

379:                                              ; preds = %376
  %380 = icmp ult i8 %22, 17
  br i1 %380, label %381, label %584

381:                                              ; preds = %379
  %382 = trunc i32 %183 to i16
  switch i16 %382, label %718 [
    i16 32, label %383
    i16 30, label %383
  ], !prof !359

383:                                              ; preds = %381, %381
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %384 = icmp eq i32 %238, 32
  %385 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %386 = load i64, ptr %385, align 8, !tbaa !193
  br i1 %384, label %387, label %390

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %389 = load i64, ptr %388, align 8, !tbaa !193
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
  store i64 %395, ptr %9, align 8, !tbaa !263
  %396 = xor i64 %393, -1
  store i64 %396, ptr %10, align 8, !tbaa !263
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
  store i64 %386, ptr %9, align 8, !tbaa !263
  store i64 %393, ptr %10, align 8, !tbaa !263
  br label %578

404:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !263
  %405 = icmp eq i64 %386, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %404
  %407 = icmp eq i64 %393, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %406
  store i64 0, ptr %9, align 8, !tbaa !263
  br label %578

409:                                              ; preds = %406
  %410 = sub nsw i64 0, %393
  %411 = and i64 %393, %410
  %412 = tail call i32 @exact_log2(i64 noundef %411) #9
  %413 = add nsw i32 %412, 65
  %414 = sext i32 %413 to i64
  store i64 %414, ptr %9, align 8, !tbaa !263
  br label %578

415:                                              ; preds = %404
  %416 = sub i64 0, %386
  %417 = and i64 %386, %416
  %418 = tail call i32 @exact_log2(i64 noundef %417) #9
  %419 = add nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  store i64 %420, ptr %9, align 8, !tbaa !263
  br label %578

421:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !263
  %422 = icmp eq i64 %393, 0
  br i1 %422, label %431, label %423

423:                                              ; preds = %421
  %424 = load i8, ptr %21, align 1, !tbaa !193
  %425 = zext i8 %424 to i32
  %426 = shl nuw nsw i32 %425, 3
  %427 = tail call i32 @floor_log2(i64 noundef %393) #9
  %428 = sub i32 %426, %427
  %429 = add i32 %428, -65
  %430 = sext i32 %429 to i64
  store i64 %430, ptr %9, align 8, !tbaa !263
  br label %578

431:                                              ; preds = %421
  %432 = icmp eq i64 %386, 0
  %433 = load i8, ptr %21, align 1, !tbaa !193
  br i1 %432, label %441, label %434

434:                                              ; preds = %431
  %435 = zext i8 %433 to i32
  %436 = shl nuw nsw i32 %435, 3
  %437 = tail call i32 @floor_log2(i64 noundef %386) #9
  %438 = xor i32 %437, -1
  %439 = add i32 %436, %438
  %440 = sext i32 %439 to i64
  store i64 %440, ptr %9, align 8, !tbaa !263
  br label %578

441:                                              ; preds = %431
  %442 = zext i8 %433 to i64
  %443 = shl nuw nsw i64 %442, 3
  store i64 %443, ptr %9, align 8, !tbaa !263
  br label %578

444:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !263
  %445 = icmp eq i64 %386, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %444
  %447 = sub i64 0, %386
  %448 = and i64 %386, %447
  %449 = tail call i32 @exact_log2(i64 noundef %448) #9
  %450 = sext i32 %449 to i64
  store i64 %450, ptr %9, align 8, !tbaa !263
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
  store i64 %458, ptr %9, align 8, !tbaa !263
  br label %578

459:                                              ; preds = %451
  %460 = load i8, ptr %21, align 1, !tbaa !193
  %461 = zext i8 %460 to i64
  %462 = shl nuw nsw i64 %461, 3
  store i64 %462, ptr %9, align 8, !tbaa !263
  br label %578

463:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !263
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
  br i1 %474, label %465, label %468, !llvm.loop !360

475:                                              ; preds = %465, %475
  %476 = phi i64 [ %480, %475 ], [ %393, %465 ]
  %477 = phi i64 [ %478, %475 ], [ %466, %465 ]
  %478 = add i64 %477, 1
  %479 = add nsw i64 %476, -1
  %480 = and i64 %479, %476
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %573, label %475, !llvm.loop !361

482:                                              ; preds = %392
  store i64 0, ptr %10, align 8, !tbaa !263
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
  br i1 %493, label %484, label %487, !llvm.loop !362

494:                                              ; preds = %484, %494
  %495 = phi i64 [ %499, %494 ], [ %393, %484 ]
  %496 = phi i64 [ %497, %494 ], [ %485, %484 ]
  %497 = add i64 %496, 1
  %498 = add nsw i64 %495, -1
  %499 = and i64 %498, %495
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %501, label %494, !llvm.loop !363

501:                                              ; preds = %494, %484
  %502 = phi i64 [ %485, %484 ], [ %497, %494 ]
  %503 = and i64 %502, 1
  store i64 %503, ptr %9, align 8, !tbaa !263
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
  br i1 %533, label %508, label %575, !llvm.loop !364

534:                                              ; preds = %392
  store i64 %386, ptr %9, align 8, !tbaa !263
  store i64 %393, ptr %10, align 8, !tbaa !263
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
  %541 = load i8, ptr %540, align 1, !tbaa !193
  %542 = icmp ugt i8 %541, 8
  br i1 %542, label %582, label %543

543:                                              ; preds = %538
  store i64 0, ptr %10, align 8, !tbaa !263
  %544 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %539
  %545 = load i64, ptr %544, align 8, !tbaa !263
  %546 = and i64 %545, %386
  store i64 %546, ptr %9, align 8, !tbaa !263
  br label %578

547:                                              ; preds = %392
  %548 = icmp eq i32 %3, 0
  br i1 %548, label %582, label %549

549:                                              ; preds = %547
  %550 = zext i32 %3 to i64
  %551 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %550
  %552 = load i8, ptr %551, align 1, !tbaa !193
  %553 = icmp ugt i8 %552, 8
  br i1 %553, label %582, label %554

554:                                              ; preds = %549
  %555 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %550
  %556 = load i64, ptr %555, align 8, !tbaa !263
  %557 = and i64 %556, %386
  store i64 %557, ptr %9, align 8, !tbaa !263
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
  store i64 %569, ptr %9, align 8, !tbaa !263
  br label %570

570:                                              ; preds = %567, %559, %554
  %571 = phi i64 [ %569, %567 ], [ %557, %559 ], [ %557, %554 ]
  %572 = ashr i64 %571, 63
  store i64 %572, ptr %10, align 8, !tbaa !263
  br label %578

573:                                              ; preds = %475, %465
  %574 = phi i64 [ %466, %465 ], [ %478, %475 ]
  store i64 %574, ptr %9, align 8, !tbaa !263
  br label %578

575:                                              ; preds = %529, %504
  %576 = phi i64 [ 0, %504 ], [ %530, %529 ]
  %577 = phi i64 [ 0, %504 ], [ %531, %529 ]
  store i64 %577, ptr %10, align 8, !tbaa !263
  store i64 %576, ptr %9, align 8, !tbaa !263
  br label %578

578:                                              ; preds = %575, %573, %446, %459, %453, %423, %441, %434, %415, %409, %408, %401, %403, %570, %543, %534, %501, %397, %394
  %579 = load i64, ptr %9, align 8, !tbaa !263
  %580 = load i64, ptr %10, align 8, !tbaa !263
  %581 = call ptr @immed_double_const(i64 noundef %579, i64 noundef %580, i32 noundef %1) #9
  br label %582

582:                                              ; preds = %392, %547, %549, %538, %578
  %583 = phi ptr [ %581, %578 ], [ null, %538 ], [ null, %549 ], [ null, %547 ], [ null, %392 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  br label %718

584:                                              ; preds = %379, %376
  %585 = icmp eq i32 %238, 32
  br i1 %585, label %586, label %718, !prof !358

586:                                              ; preds = %584
  %587 = and i8 %27, -2
  %588 = icmp eq i8 %587, 8
  br i1 %588, label %589, label %632

589:                                              ; preds = %586
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #10
  %590 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %590, i64 32, i1 false), !tbaa.struct !350
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
  %592 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !200
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %608, label %594

594:                                              ; preds = %591
  %595 = add i32 %1, -38
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %596
  %598 = load ptr, ptr %597, align 8, !tbaa !243
  %599 = getelementptr inbounds %struct.real_format, ptr %598, i64 0, i32 11
  %600 = load i8, ptr %599, align 2, !tbaa !288
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !350
  br label %628

610:                                              ; preds = %589
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #10
  call void @real_arithmetic2(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %13, i32 noundef 82, ptr noundef nonnull %11, ptr noundef null) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #10
  br label %628

611:                                              ; preds = %589
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #10
  call void @real_arithmetic2(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %14, i32 noundef 79, ptr noundef nonnull %11, ptr noundef null) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !350
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
  %622 = load <2 x i64>, ptr %621, align 16, !tbaa !263
  %623 = xor <2 x i64> %622, <i64 -1, i64 -1>
  store <2 x i64> %623, ptr %621, align 16, !tbaa !263
  %624 = add nuw i64 %620, 2
  %625 = icmp eq i64 %624, 4
  br i1 %625, label %626, label %619, !llvm.loop !365

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
  br label %718

632:                                              ; preds = %586
  %633 = lshr i32 %183, 16
  %634 = and i32 %633, 255
  %635 = zext nneg i32 %634 to i64
  %636 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !193
  %638 = and i8 %637, -2
  %639 = icmp eq i8 %638, 8
  br i1 %639, label %640, label %718

640:                                              ; preds = %632
  %641 = icmp eq i8 %27, 2
  %642 = icmp ult i8 %22, 17
  %643 = select i1 %641, i1 %642, i1 false
  %644 = select i1 %643, i1 %242, i1 false
  br i1 %644, label %645, label %718

645:                                              ; preds = %640
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #10
  %646 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %646, i64 32, i1 false), !tbaa.struct !350
  switch i32 %0, label %711 [
    i32 104, label %647
    i32 106, label %683
  ]

647:                                              ; preds = %645
  %648 = call zeroext i8 @real_isnan(ptr noundef nonnull %18) #9
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %652, label %650

650:                                              ; preds = %647
  %651 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %716

652:                                              ; preds = %647
  %653 = icmp ugt i8 %22, 8
  br i1 %653, label %654, label %659

654:                                              ; preds = %652
  %655 = add nsw i32 %24, -65
  %656 = zext nneg i32 %655 to i64
  %657 = shl nsw i64 -1, %656
  %658 = xor i64 %657, -1
  br label %664

659:                                              ; preds = %652
  %660 = add nsw i32 %24, -1
  %661 = zext nneg i32 %660 to i64
  %662 = shl nsw i64 -1, %661
  %663 = xor i64 %662, -1
  br label %664

664:                                              ; preds = %659, %654
  %665 = phi i64 [ %658, %654 ], [ 0, %659 ]
  %666 = phi i64 [ -1, %654 ], [ %663, %659 ]
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %666, i64 noundef %665, i32 noundef 0) #9
  %667 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %19, ptr noundef nonnull %18) #9
  %668 = icmp eq i8 %667, 0
  br i1 %668, label %670, label %669

669:                                              ; preds = %664
  store i64 %665, ptr %16, align 8, !tbaa !263
  store i64 %666, ptr %17, align 8, !tbaa !263
  br label %712

670:                                              ; preds = %664
  %671 = add nsw i32 %24, -65
  %672 = zext nneg i32 %671 to i64
  %673 = shl nsw i64 -1, %672
  %674 = add nsw i32 %24, -1
  %675 = zext nneg i32 %674 to i64
  %676 = shl nsw i64 -1, %675
  %677 = select i1 %653, i64 %673, i64 -1
  %678 = select i1 %653, i64 0, i64 %676
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %678, i64 noundef %677, i32 noundef 0) #9
  %679 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %18, ptr noundef nonnull %19) #9
  %680 = icmp eq i8 %679, 0
  br i1 %680, label %682, label %681

681:                                              ; preds = %670
  store i64 %677, ptr %16, align 8, !tbaa !263
  store i64 %678, ptr %17, align 8, !tbaa !263
  br label %712

682:                                              ; preds = %670
  call void @real_to_integer2(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18) #9
  br label %712

683:                                              ; preds = %645
  %684 = call zeroext i8 @real_isnan(ptr noundef nonnull %18) #9
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %686, label %689

686:                                              ; preds = %683
  %687 = call zeroext i8 @real_isneg(ptr noundef nonnull %18) #9
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %691, label %689

689:                                              ; preds = %686, %683
  %690 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %716

691:                                              ; preds = %686
  %692 = icmp eq i8 %22, 16
  br i1 %692, label %704, label %693

693:                                              ; preds = %691
  %694 = icmp ugt i8 %22, 7
  br i1 %694, label %695, label %700

695:                                              ; preds = %693
  %696 = add nsw i32 %24, -64
  %697 = zext nneg i32 %696 to i64
  %698 = shl nsw i64 -1, %697
  %699 = xor i64 %698, -1
  br label %704

700:                                              ; preds = %693
  %701 = zext nneg i32 %24 to i64
  %702 = shl nsw i64 -1, %701
  %703 = xor i64 %702, -1
  br label %704

704:                                              ; preds = %691, %695, %700
  %705 = phi i64 [ %699, %695 ], [ 0, %700 ], [ -1, %691 ]
  %706 = phi i64 [ -1, %695 ], [ %703, %700 ], [ -1, %691 ]
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %706, i64 noundef %705, i32 noundef 1) #9
  %707 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %19, ptr noundef nonnull %18) #9
  %708 = icmp eq i8 %707, 0
  br i1 %708, label %710, label %709

709:                                              ; preds = %704
  store i64 %705, ptr %16, align 8, !tbaa !263
  store i64 %706, ptr %17, align 8, !tbaa !263
  br label %712

710:                                              ; preds = %704
  call void @real_to_integer2(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18) #9
  br label %712

711:                                              ; preds = %645
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1611, ptr noundef nonnull @.str.1) #9
  br label %712

712:                                              ; preds = %711, %710, %709, %682, %681, %669
  %713 = load i64, ptr %17, align 8, !tbaa !263
  %714 = load i64, ptr %16, align 8, !tbaa !263
  %715 = call ptr @immed_double_const(i64 noundef %713, i64 noundef %714, i32 noundef %1) #9
  br label %716

716:                                              ; preds = %712, %689, %650
  %717 = phi ptr [ %715, %712 ], [ %690, %689 ], [ %651, %650 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #10
  br label %718

718:                                              ; preds = %169, %381, %584, %632, %640, %373, %340, %358, %244, %244, %244, %244, %244, %244, %244, %244, %180, %716, %630, %582, %235, %199, %131
  %719 = phi ptr [ %132, %131 ], [ %201, %199 ], [ %236, %235 ], [ %583, %582 ], [ %631, %630 ], [ %717, %716 ], [ %181, %180 ], [ %375, %373 ], [ null, %340 ], [ null, %358 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %244 ], [ null, %632 ], [ null, %640 ], [ null, %584 ], [ null, %381 ], [ null, %169 ]
  ret ptr %719
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_unary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 !prof !366 !PGOFuncName !367 {
  switch i32 %0, label %860 [
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
  ], !prof !368

4:                                                ; preds = %3
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 64
  br i1 %7, label %8, label %11, !prof !369

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !193
  br label %861

11:                                               ; preds = %4
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !200
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %29, !prof !369

16:                                               ; preds = %11
  %17 = icmp eq i32 %1, 13
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %2, ptr noundef null) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, ptr %2, align 8
  br label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !193
  %26 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !193
  %28 = tail call ptr @simplify_gen_relational(i32 noundef %19, i32 noundef 13, i32 noundef 0, ptr noundef %25, ptr noundef %27) #8
  br label %861

29:                                               ; preds = %21, %16, %11
  %30 = phi i32 [ %22, %21 ], [ %5, %16 ], [ %5, %11 ]
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %60 [
    i16 49, label %32
    i16 51, label %41
    i16 63, label %45
  ], !prof !370

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !193
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !193
  %40 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %39, i32 noundef %1) #8
  br label %861

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !193
  %44 = tail call ptr @plus_constant(ptr noundef %43, i64 noundef -1) #9
  br label %861

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !193
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
  %58 = load ptr, ptr %46, align 8, !tbaa !193
  %59 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %58, ptr noundef nonnull %53) #8
  br label %861

60:                                               ; preds = %55, %29, %32, %45
  %61 = phi i32 [ %56, %55 ], [ %30, %29 ], [ %30, %32 ], [ %30, %45 ]
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 49
  br i1 %63, label %64, label %82, !prof !369

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %66 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !193
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 30
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %67) #8, !range !371
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
  %80 = load ptr, ptr %65, align 8, !tbaa !193
  %81 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %80, ptr noundef nonnull %75) #8
  br label %861

82:                                               ; preds = %77, %71, %64, %60
  %83 = phi i32 [ %78, %77 ], [ %61, %71 ], [ %61, %64 ], [ %61, %60 ]
  %84 = trunc i32 %83 to i16
  switch i16 %84, label %130 [
    i16 65, label %85
    i16 39, label %95
  ], !prof !372

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !193
  %88 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %85
  %91 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %87, i32 noundef %1) #8
  %92 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !193
  %94 = tail call ptr @simplify_gen_binary(i32 noundef 66, i32 noundef %1, ptr noundef %91, ptr noundef %93) #8
  br label %861

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
  %104 = load i8, ptr %103, align 1, !tbaa !193
  %105 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !193
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !193
  %113 = icmp ult i8 %104, %112
  %114 = and i32 %107, 65535
  %115 = icmp eq i32 %114, 65
  %116 = and i1 %113, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %99
  %118 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !193
  %120 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %109, ptr noundef %119, i32 noundef %109) #8
  %124 = load ptr, ptr %105, align 8, !tbaa !193
  %125 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !193
  %127 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %109, ptr noundef %123, ptr noundef %126) #9
  %128 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !373
  %129 = tail call ptr %128(i32 noundef %1, ptr noundef %127) #9
  br label %861

130:                                              ; preds = %82, %85, %117, %99, %95
  %131 = phi i32 [ %83, %82 ], [ %83, %85 ], [ %98, %117 ], [ %98, %99 ], [ %98, %95 ]
  %132 = and i32 %131, 65535
  %133 = add nsw i32 %132, -61
  %134 = icmp ult i32 %133, 2
  br i1 %134, label %135, label %860, !prof !375

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !193
  %138 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !193
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
  br label %861

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
  ], !prof !376

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !193
  br label %861

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %175 = load ptr, ptr %174, align 8, !tbaa !193
  %176 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  %177 = icmp eq ptr %175, %176
  br i1 %177, label %178, label %233

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !193
  %181 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %180, i32 noundef %1) #8
  br label %861

182:                                              ; preds = %167
  %183 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !193
  %185 = tail call ptr @plus_constant(ptr noundef %184, i64 noundef 1) #9
  br label %861

186:                                              ; preds = %167
  %187 = zext i32 %1 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !193
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
  %195 = load i8, ptr %194, align 1, !tbaa !193
  %196 = zext i8 %195 to i32
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i32 [ %1, %190 ], [ %196, %193 ]
  %199 = add i32 %198, -38
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !243
  %203 = getelementptr inbounds %struct.real_format, ptr %202, i64 0, i32 14
  %204 = load i8, ptr %203, align 1, !tbaa !291
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
  %213 = load i8, ptr %212, align 1, !tbaa !193
  %214 = zext i8 %213 to i32
  br label %215

215:                                              ; preds = %211, %210
  %216 = phi i32 [ %1, %210 ], [ %214, %211 ]
  %217 = add i32 %216, -38
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !243
  %221 = getelementptr inbounds %struct.real_format, ptr %220, i64 0, i32 10
  %222 = load i8, ptr %221, align 1, !tbaa !377
  %223 = icmp ne i8 %222, 0
  %224 = load i32, ptr @flag_rounding_math, align 4
  %225 = icmp ne i32 %224, 0
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %330, label %227

227:                                              ; preds = %186, %209, %215
  %228 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %229 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !193
  %231 = load ptr, ptr %228, align 8, !tbaa !193
  %232 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %230, ptr noundef %231) #8
  br label %861

233:                                              ; preds = %173
  %234 = zext i32 %1 to i64
  %235 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !193
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
  %242 = load i8, ptr %241, align 1, !tbaa !193
  %243 = zext i8 %242 to i32
  br label %244

244:                                              ; preds = %240, %237
  %245 = phi i32 [ %1, %237 ], [ %243, %240 ]
  %246 = add i32 %245, -38
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !243
  %250 = getelementptr inbounds %struct.real_format, ptr %249, i64 0, i32 14
  %251 = load i8, ptr %250, align 1, !tbaa !291
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
  %260 = load i8, ptr %259, align 1, !tbaa !193
  %261 = zext i8 %260 to i32
  br label %262

262:                                              ; preds = %258, %257
  %263 = phi i32 [ %1, %257 ], [ %261, %258 ]
  %264 = add i32 %263, -38
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !243
  %268 = getelementptr inbounds %struct.real_format, ptr %267, i64 0, i32 10
  %269 = load i8, ptr %268, align 1, !tbaa !377
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
  %282 = load ptr, ptr %275, align 8, !tbaa !193
  %283 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %279, ptr noundef %282) #8
  br label %861

284:                                              ; preds = %274, %278
  %285 = load ptr, ptr %275, align 8, !tbaa !193
  %286 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %285, i32 noundef %1) #8
  %287 = load ptr, ptr %174, align 8, !tbaa !193
  %288 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %286, ptr noundef %287) #8
  br label %861

289:                                              ; preds = %167
  %290 = zext i32 %1 to i64
  %291 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !193
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
  %298 = load i8, ptr %297, align 1, !tbaa !193
  %299 = zext i8 %298 to i32
  br label %300

300:                                              ; preds = %296, %293
  %301 = phi i32 [ %1, %293 ], [ %299, %296 ]
  %302 = add i32 %301, -38
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !243
  %306 = getelementptr inbounds %struct.real_format, ptr %305, i64 0, i32 10
  %307 = load i8, ptr %306, align 1, !tbaa !377
  %308 = icmp ne i8 %307, 0
  %309 = load i32, ptr @flag_rounding_math, align 4
  %310 = icmp ne i32 %309, 0
  %311 = select i1 %308, i1 %310, i1 false
  br i1 %311, label %330, label %312

312:                                              ; preds = %289, %300
  %313 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !193
  %315 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %314, i32 noundef %1) #8
  %316 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !193
  %318 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %315, ptr noundef %317) #8
  br label %861

319:                                              ; preds = %167
  %320 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !193
  %322 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %321, i32 noundef %1) #8
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = load i32, ptr %2, align 8
  br label %330

326:                                              ; preds = %319
  %327 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !193
  %329 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef nonnull %322, ptr noundef %328) #8
  br label %861

330:                                              ; preds = %324, %167, %197, %215, %244, %262, %300
  %331 = phi i32 [ %325, %324 ], [ %168, %167 ], [ %168, %197 ], [ %168, %215 ], [ %168, %244 ], [ %168, %262 ], [ %168, %300 ]
  %332 = trunc i32 %331 to i16
  switch i16 %332, label %390 [
    i16 67, label %333
    i16 68, label %354
    i16 63, label %375
  ], !prof !378

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %335 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !193
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 30
  br i1 %339, label %340, label %390

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %342 = load i64, ptr %341, align 8, !tbaa !193
  %343 = zext i32 %1 to i64
  %344 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !193
  %346 = zext i8 %345 to i32
  %347 = shl nuw nsw i32 %346, 3
  %348 = add nsw i32 %347, -1
  %349 = sext i32 %348 to i64
  %350 = icmp eq i64 %342, %349
  br i1 %350, label %351, label %390

351:                                              ; preds = %340
  %352 = load ptr, ptr %334, align 8, !tbaa !193
  %353 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %1, ptr noundef %352, ptr noundef nonnull %336) #8
  br label %861

354:                                              ; preds = %330
  %355 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %356 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !193
  %358 = load i32, ptr %357, align 8
  %359 = and i32 %358, 65535
  %360 = icmp eq i32 %359, 30
  br i1 %360, label %361, label %390

361:                                              ; preds = %354
  %362 = getelementptr inbounds %struct.rtx_def, ptr %357, i64 0, i32 1
  %363 = load i64, ptr %362, align 8, !tbaa !193
  %364 = zext i32 %1 to i64
  %365 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !193
  %367 = zext i8 %366 to i32
  %368 = shl nuw nsw i32 %367, 3
  %369 = add nsw i32 %368, -1
  %370 = sext i32 %369 to i64
  %371 = icmp eq i64 %363, %370
  br i1 %371, label %372, label %390

372:                                              ; preds = %361
  %373 = load ptr, ptr %355, align 8, !tbaa !193
  %374 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %1, ptr noundef %373, ptr noundef nonnull %357) #8
  br label %861

375:                                              ; preds = %330
  %376 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %377 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %378 = load ptr, ptr %377, align 8, !tbaa !193
  %379 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  %380 = icmp eq ptr %378, %379
  br i1 %380, label %381, label %390

381:                                              ; preds = %375
  %382 = load ptr, ptr %376, align 8, !tbaa !193
  %383 = tail call i64 @nonzero_bits(ptr noundef %382, i32 noundef %1) #9
  %384 = icmp eq i64 %383, 1
  br i1 %384, label %387, label %385

385:                                              ; preds = %381
  %386 = load i32, ptr %2, align 8
  br label %390

387:                                              ; preds = %381
  %388 = load ptr, ptr %376, align 8, !tbaa !193
  %389 = tail call ptr @plus_constant(ptr noundef %388, i64 noundef -1) #9
  br label %861

390:                                              ; preds = %385, %330, %333, %340, %354, %361, %375
  %391 = phi i32 [ %386, %385 ], [ %331, %330 ], [ %331, %333 ], [ %331, %340 ], [ %331, %354 ], [ %331, %361 ], [ %331, %375 ]
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 85
  br i1 %393, label %394, label %860, !prof !379

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !193
  %397 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %398 = icmp eq ptr %396, %397
  br i1 %398, label %399, label %860

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !193
  %402 = load i32, ptr %401, align 8
  %403 = lshr i32 %402, 16
  %404 = and i32 %403, 255
  %405 = zext nneg i32 %404 to i64
  %406 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !193
  %408 = and i8 %407, -2
  %409 = icmp eq i8 %408, 2
  br i1 %409, label %410, label %860

410:                                              ; preds = %399
  %411 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %405
  %412 = load i8, ptr %411, align 1, !tbaa !193
  %413 = zext i8 %412 to i32
  %414 = shl nuw nsw i32 %413, 3
  %415 = add nsw i32 %414, -1
  %416 = sext i32 %415 to i64
  %417 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %416) #9
  %418 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %404, ptr noundef nonnull %401, ptr noundef %417) #8
  %419 = icmp eq i32 %404, %1
  br i1 %419, label %861, label %420

420:                                              ; preds = %410
  %421 = zext i32 %1 to i64
  %422 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !193
  %424 = icmp ugt i8 %423, %412
  br i1 %424, label %425, label %427

425:                                              ; preds = %420
  %426 = tail call ptr @simplify_gen_unary(i32 noundef 98, i32 noundef %1, ptr noundef %418, i32 noundef %404) #8
  br label %861

427:                                              ; preds = %420
  %428 = tail call ptr @simplify_gen_unary(i32 noundef 100, i32 noundef %1, ptr noundef %418, i32 noundef %404) #8
  br label %861

429:                                              ; preds = %3
  %430 = zext i32 %1 to i64
  %431 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %430
  %432 = load i8, ptr %431, align 1, !tbaa !193
  %433 = icmp eq i8 %432, 3
  br i1 %433, label %860, label %434

434:                                              ; preds = %429
  %435 = load i32, ptr %2, align 8
  %436 = and i32 %435, 65535
  %437 = and i32 %435, 65534
  %438 = icmp eq i32 %437, 98
  br i1 %438, label %439, label %446

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !193
  %442 = load i32, ptr %441, align 8
  %443 = lshr i32 %442, 16
  %444 = and i32 %443, 255
  %445 = icmp eq i32 %444, %1
  br i1 %445, label %861, label %446

446:                                              ; preds = %434, %439
  %447 = trunc i32 %435 to i16
  switch i16 %447, label %482 [
    i16 111, label %448
    i16 51, label %448
    i16 39, label %463
  ]

448:                                              ; preds = %446, %446
  %449 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !193
  %451 = load i32, ptr %450, align 8
  %452 = and i32 %451, 65534
  %453 = icmp eq i32 %452, 98
  br i1 %453, label %454, label %482

454:                                              ; preds = %448
  %455 = getelementptr inbounds %struct.rtx_def, ptr %450, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !193
  %457 = load i32, ptr %456, align 8
  %458 = lshr i32 %457, 16
  %459 = and i32 %458, 255
  %460 = icmp eq i32 %459, %1
  br i1 %460, label %461, label %482

461:                                              ; preds = %454
  %462 = tail call ptr @simplify_gen_unary(i32 noundef %436, i32 noundef %1, ptr noundef nonnull %456, i32 noundef %1) #8
  br label %861

463:                                              ; preds = %446
  %464 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !193
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
  %475 = load ptr, ptr %464, align 8, !tbaa !193
  %476 = getelementptr inbounds %struct.rtx_def, ptr %475, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !193
  %478 = load i32, ptr %477, align 8
  %479 = lshr i32 %478, 16
  %480 = and i32 %479, 255
  %481 = tail call ptr @simplify_gen_unary(i32 noundef 100, i32 noundef %1, ptr noundef nonnull %477, i32 noundef %480) #8
  br label %861

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
  %492 = load i8, ptr %491, align 1, !tbaa !193
  %493 = zext i8 %492 to i32
  %494 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %430
  %495 = load i8, ptr %494, align 1, !tbaa !193
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
  %505 = load ptr, ptr %504, align 8, !tbaa !193
  %506 = load i32, ptr %505, align 8
  %507 = and i32 %506, 65535
  %508 = icmp eq i32 %507, 52
  br i1 %508, label %512, label %509

509:                                              ; preds = %503, %500
  %510 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !373
  %511 = tail call ptr %510(i32 noundef %1, ptr noundef nonnull %2) #9
  br label %861

512:                                              ; preds = %503, %482
  %513 = icmp ult i8 %495, 9
  br i1 %513, label %514, label %860

514:                                              ; preds = %512
  %515 = and i32 %487, 65535
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !200
  %519 = icmp ult i32 %518, 2
  br i1 %519, label %520, label %860

520:                                              ; preds = %514
  %521 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %430
  %522 = load i64, ptr %521, align 8, !tbaa !263
  %523 = and i64 %522, 1
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %860, label %525

525:                                              ; preds = %520
  %526 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !373
  %527 = tail call ptr %526(i32 noundef %1, ptr noundef nonnull %2) #9
  br label %861

528:                                              ; preds = %3
  %529 = zext i32 %1 to i64
  %530 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %529
  %531 = load i8, ptr %530, align 1, !tbaa !193
  %532 = icmp eq i8 %531, 9
  br i1 %532, label %860, label %533

533:                                              ; preds = %528
  %534 = load i32, ptr %2, align 8
  %535 = and i32 %534, 65535
  %536 = icmp eq i32 %535, 101
  br i1 %536, label %537, label %544

537:                                              ; preds = %533
  %538 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %539 = load ptr, ptr %538, align 8, !tbaa !193
  %540 = load i32, ptr %539, align 8
  %541 = lshr i32 %540, 16
  %542 = and i32 %541, 255
  %543 = icmp eq i32 %542, %1
  br i1 %543, label %861, label %555

544:                                              ; preds = %533
  %545 = icmp eq i32 %535, 102
  %546 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %547 = icmp ne i32 %546, 0
  %548 = select i1 %545, i1 %547, i1 false
  br i1 %548, label %549, label %566

549:                                              ; preds = %544
  %550 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !193
  %552 = load i32, ptr %551, align 8
  %553 = lshr i32 %552, 16
  %554 = and i32 %553, 255
  br label %555

555:                                              ; preds = %549, %537
  %556 = phi i32 [ %554, %549 ], [ %542, %537 ]
  %557 = phi ptr [ %551, %549 ], [ %539, %537 ]
  %558 = zext nneg i32 %556 to i64
  %559 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !193
  %561 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %529
  %562 = load i8, ptr %561, align 1, !tbaa !193
  %563 = icmp ugt i8 %560, %562
  %564 = select i1 %563, i32 102, i32 101
  %565 = tail call ptr @simplify_gen_unary(i32 noundef %564, i32 noundef %1, ptr noundef nonnull %557, i32 noundef %1) #8
  br label %861

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
  %574 = load i8, ptr %573, align 1, !tbaa !193
  %575 = and i8 %574, -2
  %576 = icmp eq i8 %575, 8
  br i1 %576, label %577, label %602

577:                                              ; preds = %569
  %578 = tail call i32 @significand_size(i32 noundef %571) #9
  %579 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %580 = load ptr, ptr %579, align 8, !tbaa !193
  %581 = load i32, ptr %580, align 8
  %582 = lshr i32 %581, 16
  %583 = and i32 %582, 255
  %584 = zext nneg i32 %583 to i64
  %585 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %584
  %586 = load i8, ptr %585, align 1, !tbaa !193
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
  %597 = load ptr, ptr %596, align 8, !tbaa !193
  %598 = load i32, ptr %597, align 8
  %599 = lshr i32 %598, 16
  %600 = and i32 %599, 255
  %601 = tail call ptr @simplify_gen_unary(i32 noundef 103, i32 noundef %1, ptr noundef nonnull %597, i32 noundef %600) #8
  br label %861

602:                                              ; preds = %592, %569, %566
  %603 = phi i32 [ %594, %592 ], [ 103, %569 ], [ %535, %566 ]
  %604 = phi i32 [ %593, %592 ], [ %534, %569 ], [ %534, %566 ]
  %605 = trunc i32 %604 to i16
  switch i16 %605, label %860 [
    i16 111, label %606
    i16 51, label %606
    i16 39, label %621
  ]

606:                                              ; preds = %602, %602
  %607 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !193
  %609 = load i32, ptr %608, align 8
  %610 = and i32 %609, 65535
  %611 = icmp eq i32 %610, 101
  br i1 %611, label %612, label %860

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.rtx_def, ptr %608, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !193
  %615 = load i32, ptr %614, align 8
  %616 = lshr i32 %615, 16
  %617 = and i32 %616, 255
  %618 = icmp eq i32 %617, %1
  br i1 %618, label %619, label %860

619:                                              ; preds = %612
  %620 = tail call ptr @simplify_gen_unary(i32 noundef %603, i32 noundef %1, ptr noundef nonnull %614, i32 noundef %1) #8
  br label %861

621:                                              ; preds = %602
  %622 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #9
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %860, label %624

624:                                              ; preds = %621
  %625 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %626 = load ptr, ptr %625, align 8, !tbaa !193
  %627 = load i32, ptr %626, align 8
  %628 = and i32 %627, 65535
  %629 = icmp eq i32 %628, 102
  br i1 %629, label %861, label %860

630:                                              ; preds = %3
  %631 = zext i32 %1 to i64
  %632 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !193
  %634 = icmp eq i8 %633, 9
  br i1 %634, label %860, label %635

635:                                              ; preds = %630
  %636 = load i32, ptr %2, align 8
  %637 = trunc i32 %636 to i16
  switch i16 %637, label %860 [
    i16 101, label %663
    i16 103, label %638
  ]

638:                                              ; preds = %635
  %639 = lshr i32 %636, 16
  %640 = and i32 %639, 255
  %641 = zext nneg i32 %640 to i64
  %642 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !193
  %644 = and i8 %643, -2
  %645 = icmp eq i8 %644, 8
  br i1 %645, label %646, label %860

646:                                              ; preds = %638
  %647 = tail call i32 @significand_size(i32 noundef %640) #9
  %648 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %649 = load ptr, ptr %648, align 8, !tbaa !193
  %650 = load i32, ptr %649, align 8
  %651 = lshr i32 %650, 16
  %652 = and i32 %651, 255
  %653 = zext nneg i32 %652 to i64
  %654 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !193
  %656 = zext i8 %655 to i32
  %657 = shl nuw nsw i32 %656, 3
  %658 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %649, i32 noundef %652) #9
  %659 = sub i32 %657, %658
  %660 = icmp ult i32 %647, %659
  br i1 %660, label %860, label %661

661:                                              ; preds = %646
  %662 = load i32, ptr %2, align 8
  br label %663

663:                                              ; preds = %661, %635
  %664 = phi i32 [ %662, %661 ], [ %636, %635 ]
  %665 = and i32 %664, 65535
  %666 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %667 = load ptr, ptr %666, align 8, !tbaa !193
  %668 = load i32, ptr %667, align 8
  %669 = lshr i32 %668, 16
  %670 = and i32 %669, 255
  %671 = tail call ptr @simplify_gen_unary(i32 noundef %665, i32 noundef %1, ptr noundef nonnull %667, i32 noundef %670) #8
  br label %861

672:                                              ; preds = %3
  %673 = load i32, ptr %2, align 8
  %674 = and i32 %673, 65535
  %675 = icmp eq i32 %674, 51
  br i1 %675, label %676, label %683

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !193
  %679 = load i32, ptr %678, align 8
  %680 = lshr i32 %679, 16
  %681 = and i32 %680, 255
  %682 = tail call ptr @simplify_gen_unary(i32 noundef 111, i32 noundef %1, ptr noundef nonnull %678, i32 noundef %681) #8
  br label %861

683:                                              ; preds = %672
  %684 = lshr i32 %673, 16
  %685 = and i32 %684, 255
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %860, label %687

687:                                              ; preds = %683
  %688 = trunc i32 %673 to i16
  switch i16 %688, label %689 [
    i16 114, label %861
    i16 111, label %861
  ]

689:                                              ; preds = %687
  %690 = zext nneg i32 %685 to i64
  %691 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !193
  %693 = icmp ult i8 %692, 9
  br i1 %693, label %694, label %709

694:                                              ; preds = %689
  %695 = tail call i64 @nonzero_bits(ptr noundef nonnull %2, i32 noundef %685) #9
  %696 = load i32, ptr %2, align 8
  %697 = lshr i32 %696, 16
  %698 = and i32 %697, 255
  %699 = zext nneg i32 %698 to i64
  %700 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %699
  %701 = load i8, ptr %700, align 1, !tbaa !193
  %702 = zext i8 %701 to i64
  %703 = shl nuw nsw i64 %702, 3
  %704 = add nuw nsw i64 %703, 4294967295
  %705 = and i64 %704, 4294967295
  %706 = shl nuw i64 1, %705
  %707 = and i64 %706, %695
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %861, label %709

709:                                              ; preds = %694, %689
  %710 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %2, i32 noundef %1) #9
  %711 = zext i32 %1 to i64
  %712 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !193
  %714 = zext i8 %713 to i32
  %715 = shl nuw nsw i32 %714, 3
  %716 = icmp eq i32 %710, %715
  br i1 %716, label %717, label %860

717:                                              ; preds = %709
  %718 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %2) #9
  br label %861

719:                                              ; preds = %3
  %720 = load i32, ptr %2, align 8
  %721 = and i32 %720, 65534
  %722 = icmp eq i32 %721, 98
  br i1 %722, label %723, label %860

723:                                              ; preds = %719
  %724 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %725 = load ptr, ptr %724, align 8, !tbaa !193
  %726 = load i32, ptr %725, align 8
  %727 = lshr i32 %726, 16
  %728 = and i32 %727, 255
  %729 = tail call ptr @simplify_gen_unary(i32 noundef 114, i32 noundef %1, ptr noundef nonnull %725, i32 noundef %728) #8
  br label %861

730:                                              ; preds = %3
  %731 = load i32, ptr %2, align 8
  %732 = trunc i32 %731 to i16
  switch i16 %732, label %860 [
    i16 113, label %733
    i16 99, label %733
    i16 66, label %740
    i16 69, label %740
  ]

733:                                              ; preds = %730, %730
  %734 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %735 = load ptr, ptr %734, align 8, !tbaa !193
  %736 = load i32, ptr %735, align 8
  %737 = lshr i32 %736, 16
  %738 = and i32 %737, 255
  %739 = tail call ptr @simplify_gen_unary(i32 noundef 117, i32 noundef %1, ptr noundef nonnull %735, i32 noundef %738) #8
  br label %861

740:                                              ; preds = %730, %730
  %741 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %742 = load ptr, ptr %741, align 8, !tbaa !193
  %743 = tail call i32 @side_effects_p(ptr noundef %742) #9
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %860

745:                                              ; preds = %740
  %746 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %747 = load ptr, ptr %746, align 8, !tbaa !193
  %748 = load i32, ptr %747, align 8
  %749 = lshr i32 %748, 16
  %750 = and i32 %749, 255
  %751 = tail call ptr @simplify_gen_unary(i32 noundef 117, i32 noundef %1, ptr noundef nonnull %747, i32 noundef %750) #8
  br label %861

752:                                              ; preds = %3
  %753 = load i32, ptr %2, align 8
  %754 = trunc i32 %753 to i16
  switch i16 %754, label %860 [
    i16 64, label %755
    i16 113, label %755
    i16 99, label %755
    i16 98, label %755
    i16 66, label %762
    i16 69, label %762
  ]

755:                                              ; preds = %752, %752, %752, %752
  %756 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %757 = load ptr, ptr %756, align 8, !tbaa !193
  %758 = load i32, ptr %757, align 8
  %759 = lshr i32 %758, 16
  %760 = and i32 %759, 255
  %761 = tail call ptr @simplify_gen_unary(i32 noundef 118, i32 noundef %1, ptr noundef nonnull %757, i32 noundef %760) #8
  br label %861

762:                                              ; preds = %752, %752
  %763 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %764 = load ptr, ptr %763, align 8, !tbaa !193
  %765 = tail call i32 @side_effects_p(ptr noundef %764) #9
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %860

767:                                              ; preds = %762
  %768 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %769 = load ptr, ptr %768, align 8, !tbaa !193
  %770 = load i32, ptr %769, align 8
  %771 = lshr i32 %770, 16
  %772 = and i32 %771, 255
  %773 = tail call ptr @simplify_gen_unary(i32 noundef 118, i32 noundef %1, ptr noundef nonnull %769, i32 noundef %772) #8
  br label %861

774:                                              ; preds = %3
  %775 = load i32, ptr %2, align 8
  %776 = and i32 %775, 65535
  %777 = icmp eq i32 %776, 113
  br i1 %777, label %778, label %860

778:                                              ; preds = %774
  %779 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %780 = load ptr, ptr %779, align 8, !tbaa !193
  br label %861

781:                                              ; preds = %3
  %782 = load i32, ptr %2, align 8
  %783 = and i32 %782, 65535
  %784 = icmp eq i32 %783, 98
  br i1 %784, label %785, label %860

785:                                              ; preds = %781
  %786 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %787 = load ptr, ptr %786, align 8, !tbaa !193
  %788 = load i32, ptr %787, align 8
  %789 = lshr i32 %788, 16
  %790 = and i32 %789, 255
  %791 = tail call ptr @simplify_gen_unary(i32 noundef 103, i32 noundef %1, ptr noundef nonnull %787, i32 noundef %790) #8
  br label %861

792:                                              ; preds = %3
  %793 = load i32, ptr %2, align 8
  %794 = and i32 %793, 65535
  %795 = icmp eq i32 %794, 100
  br i1 %795, label %796, label %818

796:                                              ; preds = %792
  %797 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %798 = load ptr, ptr %797, align 8, !tbaa !193
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
  %808 = load ptr, ptr %807, align 8, !tbaa !193
  %809 = load i32, ptr %808, align 8
  %810 = and i32 %809, 65535
  %811 = icmp eq i32 %810, 44
  br i1 %811, label %812, label %818

812:                                              ; preds = %806
  %813 = getelementptr inbounds %struct.rtx_def, ptr %798, i64 0, i32 1, i32 0, i32 0, i64 1
  %814 = load ptr, ptr %813, align 8, !tbaa !193
  %815 = load i32, ptr %814, align 8
  %816 = and i32 %815, 65535
  %817 = icmp eq i32 %816, 44
  br i1 %817, label %861, label %818

818:                                              ; preds = %812, %806, %796, %792
  %819 = and i32 %793, 469827583
  %820 = icmp eq i32 %819, 268435495
  br i1 %820, label %821, label %860

821:                                              ; preds = %818
  %822 = zext i32 %1 to i64
  %823 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !193
  %825 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %826 = load ptr, ptr %825, align 8, !tbaa !193
  %827 = load i32, ptr %826, align 8
  %828 = lshr i32 %827, 16
  %829 = and i32 %828, 255
  %830 = zext nneg i32 %829 to i64
  %831 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %830
  %832 = load i8, ptr %831, align 1, !tbaa !193
  %833 = icmp ugt i8 %824, %832
  br i1 %833, label %860, label %834

834:                                              ; preds = %821
  %835 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !373
  %836 = tail call ptr %835(i32 noundef %1, ptr noundef nonnull %2) #9
  br label %861

837:                                              ; preds = %3
  %838 = load i32, ptr %2, align 8
  %839 = and i32 %838, 268500991
  %840 = icmp eq i32 %839, 268435495
  br i1 %840, label %841, label %860, !prof !380

841:                                              ; preds = %837
  %842 = and i32 %838, 201326592
  %843 = icmp eq i32 %842, 67108864
  br i1 %843, label %844, label %860

844:                                              ; preds = %841
  %845 = zext i32 %1 to i64
  %846 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %845
  %847 = load i8, ptr %846, align 1, !tbaa !193
  %848 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %849 = load ptr, ptr %848, align 8, !tbaa !193
  %850 = load i32, ptr %849, align 8
  %851 = lshr i32 %850, 16
  %852 = and i32 %851, 255
  %853 = zext nneg i32 %852 to i64
  %854 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %853
  %855 = load i8, ptr %854, align 1, !tbaa !193
  %856 = icmp ugt i8 %847, %855
  br i1 %856, label %860, label %857

857:                                              ; preds = %844
  %858 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !373
  %859 = tail call ptr %858(i32 noundef %1, ptr noundef nonnull %2) #9
  br label %861

860:                                              ; preds = %602, %606, %612, %719, %638, %399, %130, %635, %3, %837, %841, %844, %818, %821, %781, %774, %762, %752, %740, %730, %709, %683, %646, %630, %621, %624, %528, %512, %514, %520, %429, %390, %394
  br label %861

861:                                              ; preds = %812, %694, %687, %687, %624, %537, %439, %425, %427, %410, %860, %857, %834, %785, %778, %767, %755, %745, %733, %723, %717, %676, %663, %619, %595, %555, %525, %509, %474, %461, %387, %372, %351, %326, %312, %284, %281, %227, %182, %178, %170, %159, %122, %90, %79, %57, %41, %37, %23, %8
  %862 = phi ptr [ null, %860 ], [ %859, %857 ], [ %836, %834 ], [ %791, %785 ], [ %780, %778 ], [ %773, %767 ], [ %761, %755 ], [ %751, %745 ], [ %739, %733 ], [ %729, %723 ], [ %682, %676 ], [ %718, %717 ], [ %671, %663 ], [ %565, %555 ], [ %601, %595 ], [ %620, %619 ], [ %462, %461 ], [ %481, %474 ], [ %527, %525 ], [ %511, %509 ], [ %172, %170 ], [ %181, %178 ], [ %185, %182 ], [ %329, %326 ], [ %353, %351 ], [ %374, %372 ], [ %389, %387 ], [ %318, %312 ], [ %283, %281 ], [ %288, %284 ], [ %232, %227 ], [ %10, %8 ], [ %28, %23 ], [ %40, %37 ], [ %44, %41 ], [ %59, %57 ], [ %81, %79 ], [ %94, %90 ], [ %129, %122 ], [ %166, %159 ], [ %426, %425 ], [ %428, %427 ], [ %418, %410 ], [ %441, %439 ], [ %539, %537 ], [ %626, %624 ], [ %2, %687 ], [ %2, %687 ], [ %2, %694 ], [ %798, %812 ]
  ret ptr %862
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
define dso_local ptr @simplify_const_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 !prof !381 {
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
  %18 = load i8, ptr %17, align 1, !tbaa !193
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 3
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %22 = load i8, ptr %21, align 1, !tbaa !193
  %23 = add i8 %22, -12
  %24 = icmp ult i8 %23, 6
  br i1 %24, label %25, label %168, !prof !382

25:                                               ; preds = %4
  %26 = icmp eq i32 %0, 125
  %27 = load i32, ptr %2, align 8
  %28 = and i32 %27, 65535
  br i1 %26, label %80, label %29

29:                                               ; preds = %25
  %30 = icmp eq i32 %28, 33
  br i1 %30, label %31, label %479

31:                                               ; preds = %29
  %32 = load i32, ptr %3, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 33
  br i1 %34, label %35, label %479

35:                                               ; preds = %31
  %36 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %16
  %37 = load i8, ptr %36, align 1, !tbaa !193
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %27, 16
  %40 = and i32 %39, 255
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !193
  %44 = lshr i32 %32, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !193
  %49 = tail call ptr @rtvec_alloc(i32 noundef %38) #9
  %50 = icmp eq i8 %43, %37
  br i1 %50, label %52, label %51

51:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3099, ptr noundef nonnull @.str.1) #9
  br label %52

52:                                               ; preds = %35, %51
  %53 = icmp eq i8 %48, %37
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3100, ptr noundef nonnull @.str.1) #9
  br label %55

55:                                               ; preds = %52, %54
  %56 = icmp eq i8 %37, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %16
  %59 = load i8, ptr %58, align 1, !tbaa !193
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %62 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %63 = zext i8 %37 to i64
  br label %64

64:                                               ; preds = %57, %74
  %65 = phi i64 [ 0, %57 ], [ %76, %74 ]
  %66 = load ptr, ptr %61, align 8, !tbaa !193
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !243
  %69 = load ptr, ptr %62, align 8, !tbaa !193
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %65
  %71 = load ptr, ptr %70, align 8, !tbaa !243
  %72 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %60, ptr noundef %68, ptr noundef %71) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %615, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.rtvec_def, ptr %49, i64 0, i32 1, i64 %65
  store ptr %72, ptr %75, align 8, !tbaa !243
  %76 = add nuw nsw i64 %65, 1
  %77 = icmp eq i64 %76, %63
  br i1 %77, label %78, label %64, !llvm.loop !383

78:                                               ; preds = %74, %55
  %79 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %49) #9
  br label %615

80:                                               ; preds = %25
  %81 = add nsw i32 %28, -30
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %83, label %479

83:                                               ; preds = %80
  %84 = load i32, ptr %3, align 8
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, -30
  %87 = icmp ult i32 %86, 3
  br i1 %87, label %88, label %479

88:                                               ; preds = %83
  %89 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %16
  %90 = load i8, ptr %89, align 1, !tbaa !193
  %91 = zext i8 %90 to i32
  %92 = tail call ptr @rtvec_alloc(i32 noundef %91) #9
  %93 = icmp ugt i8 %90, 1
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3126, ptr noundef nonnull @.str.1) #9
  br label %110

95:                                               ; preds = %88
  %96 = icmp eq i8 %90, 2
  br i1 %96, label %97, label %110

97:                                               ; preds = %95
  %98 = load i32, ptr %2, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 33
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3129, ptr noundef nonnull @.str.1) #9
  br label %102

102:                                              ; preds = %97, %101
  %103 = load i32, ptr %3, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 33
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3130, ptr noundef nonnull @.str.1) #9
  br label %107

107:                                              ; preds = %102, %106
  %108 = getelementptr inbounds %struct.rtvec_def, ptr %92, i64 0, i32 1
  store ptr %2, ptr %108, align 8, !tbaa !243
  %109 = getelementptr inbounds %struct.rtvec_def, ptr %92, i64 1
  store ptr %3, ptr %109, align 8, !tbaa !243
  br label %166

110:                                              ; preds = %94, %95
  %111 = load i32, ptr %2, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !193
  %117 = zext i8 %116 to i32
  %118 = load i32, ptr %3, align 8
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !193
  %124 = zext i8 %123 to i32
  %125 = and i32 %111, 65535
  %126 = icmp eq i32 %125, 33
  br i1 %126, label %129, label %127

127:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3141, ptr noundef nonnull @.str.1) #9
  %128 = load i32, ptr %3, align 8
  br label %129

129:                                              ; preds = %110, %127
  %130 = phi i32 [ %118, %110 ], [ %128, %127 ]
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 33
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3142, ptr noundef nonnull @.str.1) #9
  br label %134

134:                                              ; preds = %129, %133
  %135 = add nuw nsw i32 %124, %117
  %136 = icmp eq i32 %135, %91
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3143, ptr noundef nonnull @.str.1) #9
  br label %138

138:                                              ; preds = %134, %137
  %139 = icmp eq i8 %116, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %142 = zext i8 %116 to i64
  br label %149

143:                                              ; preds = %149, %138
  %144 = icmp eq i8 %123, 0
  br i1 %144, label %166, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %147 = zext i8 %116 to i64
  %148 = zext i8 %123 to i64
  br label %157

149:                                              ; preds = %140, %149
  %150 = phi i64 [ 0, %140 ], [ %155, %149 ]
  %151 = load ptr, ptr %141, align 8, !tbaa !193
  %152 = getelementptr inbounds %struct.rtvec_def, ptr %151, i64 0, i32 1, i64 %150
  %153 = load ptr, ptr %152, align 8, !tbaa !243
  %154 = getelementptr inbounds %struct.rtvec_def, ptr %92, i64 0, i32 1, i64 %150
  store ptr %153, ptr %154, align 8, !tbaa !243
  %155 = add nuw nsw i64 %150, 1
  %156 = icmp eq i64 %155, %142
  br i1 %156, label %143, label %149, !llvm.loop !384

157:                                              ; preds = %145, %157
  %158 = phi i64 [ 0, %145 ], [ %164, %157 ]
  %159 = load ptr, ptr %146, align 8, !tbaa !193
  %160 = getelementptr inbounds %struct.rtvec_def, ptr %159, i64 0, i32 1, i64 %158
  %161 = load ptr, ptr %160, align 8, !tbaa !243
  %162 = add nuw nsw i64 %158, %147
  %163 = getelementptr inbounds %struct.rtvec_def, ptr %92, i64 0, i32 1, i64 %162
  store ptr %161, ptr %163, align 8, !tbaa !243
  %164 = add nuw nsw i64 %158, 1
  %165 = icmp eq i64 %164, %148
  br i1 %165, label %166, label %157, !llvm.loop !385

166:                                              ; preds = %157, %143, %107
  %167 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %92) #9
  br label %615

168:                                              ; preds = %4
  %169 = and i8 %22, -2
  %170 = icmp eq i8 %169, 8
  br i1 %170, label %171, label %363, !prof !386

171:                                              ; preds = %168
  %172 = load i32, ptr %2, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 32
  br i1 %174, label %175, label %479

175:                                              ; preds = %171
  %176 = load i32, ptr %3, align 8
  %177 = and i32 %176, 65535
  %178 = icmp eq i32 %177, 32
  br i1 %178, label %179, label %479

179:                                              ; preds = %175
  %180 = lshr i32 %172, 16
  %181 = and i32 %180, 255
  %182 = icmp eq i32 %181, %1
  br i1 %182, label %183, label %479

183:                                              ; preds = %179
  %184 = lshr i32 %176, 16
  %185 = and i32 %184, 255
  %186 = icmp eq i32 %185, %1
  br i1 %186, label %187, label %479

187:                                              ; preds = %183
  %188 = add i32 %0, -61
  %189 = icmp ult i32 %188, 3
  br i1 %189, label %190, label %224

190:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  %191 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %192 = call i64 @real_to_target(ptr noundef nonnull %5, ptr noundef nonnull %191, i32 noundef %1) #9
  %193 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %194 = load i32, ptr %3, align 8
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  %197 = call i64 @real_to_target(ptr noundef nonnull %6, ptr noundef nonnull %193, i32 noundef %196) #9
  br label %198

198:                                              ; preds = %190, %219
  %199 = phi i64 [ 0, %190 ], [ %220, %219 ]
  switch i32 %0, label %218 [
    i32 61, label %200
    i32 62, label %206
    i32 63, label %212
  ]

200:                                              ; preds = %198
  %201 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %199
  %202 = load i64, ptr %201, align 8, !tbaa !263
  %203 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %199
  %204 = load i64, ptr %203, align 8, !tbaa !263
  %205 = and i64 %204, %202
  store i64 %205, ptr %203, align 8, !tbaa !263
  br label %219

206:                                              ; preds = %198
  %207 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %199
  %208 = load i64, ptr %207, align 8, !tbaa !263
  %209 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %199
  %210 = load i64, ptr %209, align 8, !tbaa !263
  %211 = or i64 %210, %208
  store i64 %211, ptr %209, align 8, !tbaa !263
  br label %219

212:                                              ; preds = %198
  %213 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %199
  %214 = load i64, ptr %213, align 8, !tbaa !263
  %215 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %199
  %216 = load i64, ptr %215, align 8, !tbaa !263
  %217 = xor i64 %216, %214
  store i64 %217, ptr %215, align 8, !tbaa !263
  br label %219

218:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3186, ptr noundef nonnull @.str.1) #9
  br label %219

219:                                              ; preds = %200, %206, %212, %218
  %220 = add nuw nsw i64 %199, 1
  %221 = icmp eq i64 %220, 4
  br i1 %221, label %222, label %198, !llvm.loop !387

222:                                              ; preds = %219
  call void @real_from_target(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %1) #9
  %223 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %7, i32 noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %615

224:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  %225 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %225, i64 32, i1 false), !tbaa.struct !350
  %226 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %226, i64 32, i1 false), !tbaa.struct !350
  call void @real_convert(ptr noundef nonnull %8, i32 noundef %1, ptr noundef nonnull %8) #9
  call void @real_convert(ptr noundef nonnull %9, i32 noundef %1, ptr noundef nonnull %9) #9
  %227 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !200
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %246, label %229

229:                                              ; preds = %224
  %230 = add nsw i32 %1, -38
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !243
  %234 = getelementptr inbounds %struct.real_format, ptr %233, i64 0, i32 11
  %235 = load i8, ptr %234, align 2, !tbaa !288
  %236 = icmp eq i8 %235, 0
  %237 = load i32, ptr @flag_finite_math_only, align 4
  %238 = icmp ne i32 %237, 0
  %239 = select i1 %236, i1 true, i1 %238
  br i1 %239, label %246, label %240

240:                                              ; preds = %229
  %241 = call zeroext i8 @real_isnan(ptr noundef nonnull %8) #9
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %361

243:                                              ; preds = %240
  %244 = call zeroext i8 @real_isnan(ptr noundef nonnull %9) #9
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %361

246:                                              ; preds = %243, %229, %224
  %247 = icmp eq i32 %0, 55
  br i1 %247, label %248, label %262

248:                                              ; preds = %246
  %249 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %9, ptr noundef nonnull @dconst0) #9
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %262, label %251

251:                                              ; preds = %248
  %252 = load i32, ptr @flag_trapping_math, align 4, !tbaa !200
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %361

254:                                              ; preds = %251
  %255 = add nsw i32 %1, -38
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !243
  %259 = getelementptr inbounds %struct.real_format, ptr %258, i64 0, i32 12
  %260 = load i8, ptr %259, align 1, !tbaa !388
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %361, label %262

262:                                              ; preds = %246, %248, %254
  %263 = add nsw i32 %1, -38
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !243
  %267 = getelementptr inbounds %struct.real_format, ptr %266, i64 0, i32 12
  %268 = load i8, ptr %267, align 1, !tbaa !388
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %293, label %270

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.real_format, ptr %266, i64 0, i32 11
  %272 = load i8, ptr %271, align 2, !tbaa !288
  %273 = icmp ne i8 %272, 0
  %274 = load i32, ptr @flag_finite_math_only, align 4
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %273, i1 %275, i1 false
  %277 = load i32, ptr @flag_trapping_math, align 4
  %278 = icmp ne i32 %277, 0
  %279 = select i1 %276, i1 %278, i1 false
  br i1 %279, label %280, label %293

280:                                              ; preds = %270
  %281 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #9
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %280
  %284 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #9
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %293, label %286

286:                                              ; preds = %283
  %287 = call zeroext i8 @real_isneg(ptr noundef nonnull %8) #9
  %288 = call zeroext i8 @real_isneg(ptr noundef nonnull %9) #9
  switch i32 %0, label %322 [
    i32 49, label %289
    i32 50, label %291
    i32 55, label %361
    i32 52, label %295
  ]

289:                                              ; preds = %286
  %290 = icmp eq i8 %287, %288
  br i1 %290, label %322, label %361

291:                                              ; preds = %286
  %292 = icmp eq i8 %287, %288
  br i1 %292, label %361, label %322

293:                                              ; preds = %283, %280, %270, %262
  %294 = icmp eq i32 %0, 52
  br i1 %294, label %295, label %322

295:                                              ; preds = %286, %293
  %296 = load ptr, ptr %265, align 8, !tbaa !243
  %297 = getelementptr inbounds %struct.real_format, ptr %296, i64 0, i32 12
  %298 = load i8, ptr %297, align 1, !tbaa !388
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %322, label %300

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.real_format, ptr %296, i64 0, i32 11
  %302 = load i8, ptr %301, align 2, !tbaa !288
  %303 = icmp ne i8 %302, 0
  %304 = load i32, ptr @flag_finite_math_only, align 4
  %305 = icmp eq i32 %304, 0
  %306 = select i1 %303, i1 %305, i1 false
  %307 = load i32, ptr @flag_trapping_math, align 4
  %308 = icmp ne i32 %307, 0
  %309 = select i1 %306, i1 %308, i1 false
  br i1 %309, label %310, label %322

310:                                              ; preds = %300
  %311 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #9
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %9, ptr noundef nonnull @dconst0) #9
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %316, label %361

316:                                              ; preds = %313, %310
  %317 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #9
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %8, ptr noundef nonnull @dconst0) #9
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %361

322:                                              ; preds = %291, %289, %286, %319, %316, %300, %295, %293
  %323 = call i32 @rtx_to_tree_code(i32 noundef %0) #9
  %324 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %10, i32 noundef %323, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  call void @real_convert(ptr noundef nonnull %11, i32 noundef %1, ptr noundef nonnull %10) #9
  %325 = load i32, ptr @flag_trapping_math, align 4, !tbaa !200
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %341, label %327

327:                                              ; preds = %322
  %328 = load ptr, ptr %265, align 8, !tbaa !243
  %329 = getelementptr inbounds %struct.real_format, ptr %328, i64 0, i32 12
  %330 = load i8, ptr %329, align 1, !tbaa !388
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %341, label %332

332:                                              ; preds = %327
  %333 = call zeroext i8 @real_isinf(ptr noundef nonnull %11) #9
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %332
  %336 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #9
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #9
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %361, label %341

341:                                              ; preds = %338, %335, %332, %327, %322
  %342 = load i32, ptr @flag_rounding_math, align 4, !tbaa !200
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %341
  %345 = load ptr, ptr %265, align 8, !tbaa !243
  %346 = getelementptr inbounds %struct.real_format, ptr %345, i64 0, i32 4
  %347 = load i32, ptr %346, align 8, !tbaa !389
  %348 = getelementptr inbounds %struct.real_format, ptr %345, i64 0, i32 3
  %349 = load i32, ptr %348, align 4, !tbaa !390
  %350 = icmp sge i32 %347, %349
  %351 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %352 = icmp ne i32 %351, 0
  %353 = select i1 %350, i1 true, i1 %352
  br i1 %353, label %359, label %354

354:                                              ; preds = %344, %341
  %355 = icmp eq i8 %324, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %354
  %357 = call zeroext i8 @real_identical(ptr noundef nonnull %11, ptr noundef nonnull %10) #9
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %356, %344
  %360 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %11, i32 noundef %1) #9
  br label %361

361:                                              ; preds = %286, %354, %356, %338, %313, %319, %289, %291, %251, %254, %240, %243, %359
  %362 = phi ptr [ %360, %359 ], [ null, %243 ], [ null, %240 ], [ null, %254 ], [ null, %251 ], [ null, %286 ], [ null, %291 ], [ null, %289 ], [ null, %319 ], [ null, %313 ], [ null, %338 ], [ null, %356 ], [ null, %354 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  br label %615

363:                                              ; preds = %168
  %364 = icmp eq i8 %22, 2
  %365 = icmp eq i8 %18, 16
  %366 = select i1 %364, i1 %365, i1 false
  %367 = load i32, ptr %2, align 8
  br i1 %366, label %368, label %479, !prof !391

368:                                              ; preds = %363
  %369 = and i32 %367, 65535
  %370 = trunc i32 %367 to i16
  switch i16 %370, label %479 [
    i16 32, label %371
    i16 30, label %371
  ]

371:                                              ; preds = %368, %368
  %372 = load i32, ptr %3, align 8
  %373 = and i32 %372, 65535
  %374 = trunc i32 %372 to i16
  switch i16 %374, label %479 [
    i16 32, label %375
    i16 30, label %375
  ]

375:                                              ; preds = %371, %371
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #10
  %376 = icmp eq i32 %369, 32
  %377 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !193
  br i1 %376, label %379, label %382

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %381 = load i64, ptr %380, align 8, !tbaa !193
  br label %384

382:                                              ; preds = %375
  %383 = ashr i64 %378, 63
  br label %384

384:                                              ; preds = %382, %379
  %385 = phi i64 [ %381, %379 ], [ %383, %382 ]
  %386 = icmp eq i32 %373, 32
  %387 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %388 = load i64, ptr %387, align 8, !tbaa !193
  br i1 %386, label %389, label %392

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %391 = load i64, ptr %390, align 8, !tbaa !193
  br label %394

392:                                              ; preds = %384
  %393 = ashr i64 %388, 63
  br label %394

394:                                              ; preds = %392, %389
  %395 = phi i64 [ %391, %389 ], [ %393, %392 ]
  switch i32 %0, label %477 [
    i32 50, label %396
    i32 49, label %400
    i32 52, label %404
    i32 55, label %406
    i32 58, label %409
    i32 59, label %412
    i32 60, label %415
    i32 61, label %418
    i32 62, label %421
    i32 63, label %424
    i32 70, label %427
    i32 71, label %435
    i32 72, label %443
    i32 73, label %451
    i32 68, label %459
    i32 67, label %459
    i32 65, label %459
    i32 66, label %459
    i32 69, label %459
  ]

396:                                              ; preds = %394
  %397 = call i32 @neg_double(i64 noundef %388, i64 noundef %395, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  %398 = load i64, ptr %12, align 8, !tbaa !263
  %399 = load i64, ptr %14, align 8, !tbaa !263
  br label %400

400:                                              ; preds = %394, %396
  %401 = phi i64 [ %388, %394 ], [ %398, %396 ]
  %402 = phi i64 [ %395, %394 ], [ %399, %396 ]
  %403 = call i32 @add_double_with_sign(i64 noundef %378, i64 noundef %385, i64 noundef %401, i64 noundef %402, ptr noundef nonnull %12, ptr noundef nonnull %14, i8 noundef zeroext 0) #9
  br label %473

404:                                              ; preds = %394
  %405 = call i32 @mul_double_with_sign(i64 noundef %378, i64 noundef %385, i64 noundef %388, i64 noundef %395, ptr noundef nonnull %12, ptr noundef nonnull %14, i8 noundef zeroext 0) #9
  br label %473

406:                                              ; preds = %394
  %407 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %378, i64 noundef %385, i64 noundef %388, i64 noundef %395, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %15) #9
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %473, label %477

409:                                              ; preds = %394
  %410 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %378, i64 noundef %385, i64 noundef %388, i64 noundef %395, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %473, label %477

412:                                              ; preds = %394
  %413 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %378, i64 noundef %385, i64 noundef %388, i64 noundef %395, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %15) #9
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %473, label %477

415:                                              ; preds = %394
  %416 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %378, i64 noundef %385, i64 noundef %388, i64 noundef %395, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %473, label %477

418:                                              ; preds = %394
  %419 = and i64 %388, %378
  store i64 %419, ptr %12, align 8, !tbaa !263
  %420 = and i64 %395, %385
  store i64 %420, ptr %14, align 8, !tbaa !263
  br label %473

421:                                              ; preds = %394
  %422 = or i64 %388, %378
  store i64 %422, ptr %12, align 8, !tbaa !263
  %423 = or i64 %395, %385
  store i64 %423, ptr %14, align 8, !tbaa !263
  br label %473

424:                                              ; preds = %394
  %425 = xor i64 %388, %378
  store i64 %425, ptr %12, align 8, !tbaa !263
  %426 = xor i64 %395, %385
  store i64 %426, ptr %14, align 8, !tbaa !263
  br label %473

427:                                              ; preds = %394
  %428 = icmp slt i64 %385, %395
  br i1 %428, label %433, label %429

429:                                              ; preds = %427
  %430 = icmp eq i64 %385, %395
  %431 = icmp ult i64 %378, %388
  %432 = select i1 %430, i1 %431, i1 false
  br i1 %432, label %433, label %434

433:                                              ; preds = %429, %427
  store i64 %378, ptr %12, align 8, !tbaa !263
  store i64 %385, ptr %14, align 8, !tbaa !263
  br label %473

434:                                              ; preds = %429
  store i64 %388, ptr %12, align 8, !tbaa !263
  store i64 %395, ptr %14, align 8, !tbaa !263
  br label %473

435:                                              ; preds = %394
  %436 = icmp sgt i64 %385, %395
  br i1 %436, label %441, label %437

437:                                              ; preds = %435
  %438 = icmp eq i64 %385, %395
  %439 = icmp ugt i64 %378, %388
  %440 = select i1 %438, i1 %439, i1 false
  br i1 %440, label %441, label %442

441:                                              ; preds = %437, %435
  store i64 %378, ptr %12, align 8, !tbaa !263
  store i64 %385, ptr %14, align 8, !tbaa !263
  br label %473

442:                                              ; preds = %437
  store i64 %388, ptr %12, align 8, !tbaa !263
  store i64 %395, ptr %14, align 8, !tbaa !263
  br label %473

443:                                              ; preds = %394
  %444 = icmp ult i64 %385, %395
  br i1 %444, label %449, label %445

445:                                              ; preds = %443
  %446 = icmp eq i64 %385, %395
  %447 = icmp ult i64 %378, %388
  %448 = select i1 %446, i1 %447, i1 false
  br i1 %448, label %449, label %450

449:                                              ; preds = %445, %443
  store i64 %378, ptr %12, align 8, !tbaa !263
  store i64 %385, ptr %14, align 8, !tbaa !263
  br label %473

450:                                              ; preds = %445
  store i64 %388, ptr %12, align 8, !tbaa !263
  store i64 %395, ptr %14, align 8, !tbaa !263
  br label %473

451:                                              ; preds = %394
  %452 = icmp ugt i64 %385, %395
  br i1 %452, label %457, label %453

453:                                              ; preds = %451
  %454 = icmp eq i64 %385, %395
  %455 = icmp ugt i64 %378, %388
  %456 = select i1 %454, i1 %455, i1 false
  br i1 %456, label %457, label %458

457:                                              ; preds = %453, %451
  store i64 %378, ptr %12, align 8, !tbaa !263
  store i64 %385, ptr %14, align 8, !tbaa !263
  br label %473

458:                                              ; preds = %453
  store i64 %388, ptr %12, align 8, !tbaa !263
  store i64 %395, ptr %14, align 8, !tbaa !263
  br label %473

459:                                              ; preds = %394, %394, %394, %394, %394
  %460 = icmp eq i64 %395, 0
  %461 = icmp ult i64 %388, 128
  %462 = select i1 %460, i1 %461, i1 false
  br i1 %462, label %463, label %477

463:                                              ; preds = %459
  %464 = add nsw i32 %0, -67
  %465 = icmp ult i32 %464, 2
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = icmp eq i32 %0, 67
  %468 = zext i1 %467 to i32
  call void @rshift_double(i64 noundef %378, i64 noundef %385, i64 noundef %388, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %14, i32 noundef %468) #9
  br label %473

469:                                              ; preds = %463
  switch i32 %0, label %472 [
    i32 65, label %470
    i32 66, label %471
  ]

470:                                              ; preds = %469
  call void @lshift_double(i64 noundef %378, i64 noundef %385, i64 noundef %388, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %14, i32 noundef 1) #9
  br label %473

471:                                              ; preds = %469
  call void @lrotate_double(i64 noundef %378, i64 noundef %385, i64 noundef %388, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  br label %473

472:                                              ; preds = %469
  call void @rrotate_double(i64 noundef %378, i64 noundef %385, i64 noundef %388, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %14) #9
  br label %473

473:                                              ; preds = %466, %471, %472, %470, %457, %458, %449, %450, %441, %442, %433, %434, %415, %412, %409, %406, %424, %421, %418, %404, %400
  %474 = load i64, ptr %12, align 8, !tbaa !263
  %475 = load i64, ptr %14, align 8, !tbaa !263
  %476 = call ptr @immed_double_const(i64 noundef %474, i64 noundef %475, i32 noundef %1) #9
  br label %477

477:                                              ; preds = %394, %459, %415, %412, %409, %406, %473
  %478 = phi ptr [ %476, %473 ], [ null, %406 ], [ null, %409 ], [ null, %412 ], [ null, %415 ], [ null, %459 ], [ null, %394 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  br label %615

479:                                              ; preds = %29, %31, %80, %83, %171, %175, %179, %183, %371, %368, %363
  %480 = phi i32 [ %27, %29 ], [ %27, %31 ], [ %27, %80 ], [ %27, %83 ], [ %172, %171 ], [ %172, %175 ], [ %172, %179 ], [ %172, %183 ], [ %367, %371 ], [ %367, %368 ], [ %367, %363 ]
  %481 = and i32 %480, 65535
  %482 = icmp eq i32 %481, 30
  br i1 %482, label %483, label %615, !prof !392

483:                                              ; preds = %479
  %484 = load i32, ptr %3, align 8
  %485 = and i32 %484, 65535
  %486 = icmp eq i32 %485, 30
  %487 = icmp ult i8 %18, 9
  %488 = select i1 %486, i1 %487, i1 false
  %489 = icmp ne i8 %18, 0
  %490 = select i1 %488, i1 %489, i1 false
  br i1 %490, label %491, label %615, !prof !393

491:                                              ; preds = %483
  %492 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %493 = load i64, ptr %492, align 8, !tbaa !193
  %494 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %495 = load i64, ptr %494, align 8, !tbaa !193
  %496 = icmp ult i8 %18, 8
  br i1 %496, label %497, label %514, !prof !394

497:                                              ; preds = %491
  %498 = zext nneg i32 %20 to i64
  %499 = shl nsw i64 -1, %498
  %500 = xor i64 %499, -1
  %501 = and i64 %493, %500
  %502 = and i64 %495, %500
  %503 = add nsw i32 %20, -1
  %504 = zext nneg i32 %503 to i64
  %505 = shl nuw nsw i64 1, %504
  %506 = and i64 %501, %505
  %507 = icmp eq i64 %506, 0
  %508 = or i64 %493, %499
  %509 = select i1 %507, i64 %501, i64 %508, !prof !395
  %510 = and i64 %502, %505
  %511 = icmp eq i64 %510, 0
  %512 = or i64 %495, %499
  %513 = select i1 %511, i64 %502, i64 %512, !prof !396
  br label %514

514:                                              ; preds = %497, %491
  %515 = phi i64 [ %495, %491 ], [ %513, %497 ]
  %516 = phi i64 [ %493, %491 ], [ %509, %497 ]
  %517 = phi i64 [ %495, %491 ], [ %502, %497 ]
  %518 = phi i64 [ %493, %491 ], [ %501, %497 ]
  switch i32 %0, label %611 [
    i32 49, label %519
    i32 50, label %521
    i32 52, label %523
    i32 55, label %525
    i32 58, label %533
    i32 59, label %541
    i32 60, label %549
    i32 61, label %557
    i32 62, label %559
    i32 63, label %561
    i32 68, label %563
    i32 65, label %563
    i32 67, label %563
    i32 69, label %585
    i32 66, label %594
    i32 48, label %615
    i32 70, label %603
    i32 72, label %605
    i32 71, label %607
    i32 73, label %609
    i32 127, label %615
    i32 128, label %615
    i32 129, label %615
    i32 135, label %615
    i32 53, label %615
    i32 54, label %615
    i32 56, label %615
    i32 57, label %615
    i32 133, label %615
    i32 134, label %615
  ], !prof !397

519:                                              ; preds = %514
  %520 = add nsw i64 %516, %515
  br label %612

521:                                              ; preds = %514
  %522 = sub nsw i64 %516, %515
  br label %612

523:                                              ; preds = %514
  %524 = mul nsw i64 %516, %515
  br label %612

525:                                              ; preds = %514
  %526 = icmp eq i64 %515, 0
  br i1 %526, label %615, label %527

527:                                              ; preds = %525
  %528 = icmp eq i64 %516, -9223372036854775808
  %529 = icmp eq i64 %515, -1
  %530 = select i1 %528, i1 %529, i1 false
  br i1 %530, label %615, label %531

531:                                              ; preds = %527
  %532 = sdiv i64 %516, %515
  br label %612

533:                                              ; preds = %514
  %534 = icmp eq i64 %515, 0
  br i1 %534, label %615, label %535

535:                                              ; preds = %533
  %536 = icmp eq i64 %516, -9223372036854775808
  %537 = icmp eq i64 %515, -1
  %538 = select i1 %536, i1 %537, i1 false
  br i1 %538, label %615, label %539

539:                                              ; preds = %535
  %540 = srem i64 %516, %515
  br label %612

541:                                              ; preds = %514
  %542 = icmp eq i64 %517, 0
  br i1 %542, label %615, label %543

543:                                              ; preds = %541
  %544 = icmp eq i64 %516, -9223372036854775808
  %545 = icmp eq i64 %515, -1
  %546 = select i1 %544, i1 %545, i1 false
  br i1 %546, label %615, label %547

547:                                              ; preds = %543
  %548 = udiv i64 %518, %517
  br label %612

549:                                              ; preds = %514
  %550 = icmp eq i64 %517, 0
  br i1 %550, label %615, label %551

551:                                              ; preds = %549
  %552 = icmp eq i64 %516, -9223372036854775808
  %553 = icmp eq i64 %515, -1
  %554 = select i1 %552, i1 %553, i1 false
  br i1 %554, label %615, label %555

555:                                              ; preds = %551
  %556 = urem i64 %518, %517
  br label %612

557:                                              ; preds = %514
  %558 = and i64 %518, %517
  br label %612

559:                                              ; preds = %514
  %560 = or i64 %518, %517
  br label %612

561:                                              ; preds = %514
  %562 = xor i64 %518, %517
  br label %612

563:                                              ; preds = %514, %514, %514
  %564 = icmp sgt i64 %517, -1
  %565 = zext nneg i8 %18 to i64
  %566 = shl nuw nsw i64 %565, 3
  %567 = icmp ult i64 %517, %566
  %568 = select i1 %564, i1 %567, i1 false
  br i1 %568, label %569, label %615, !prof !398

569:                                              ; preds = %563
  %570 = icmp eq i32 %0, 65
  br i1 %570, label %571, label %573, !prof !399

571:                                              ; preds = %569
  %572 = shl i64 %518, %517
  br label %612

573:                                              ; preds = %569
  %574 = lshr i64 %518, %517
  %575 = icmp eq i32 %0, 67
  br i1 %575, label %576, label %612, !prof !400

576:                                              ; preds = %573
  %577 = icmp slt i64 %516, 0
  %578 = icmp ne i64 %517, 0
  %579 = select i1 %577, i1 %578, i1 false
  br i1 %579, label %580, label %612

580:                                              ; preds = %576
  %581 = zext nneg i32 %20 to i64
  %582 = sub nsw i64 %581, %517
  %583 = shl nsw i64 -1, %582
  %584 = or i64 %574, %583
  br label %612

585:                                              ; preds = %514
  %586 = icmp slt i64 %517, 0
  br i1 %586, label %615, label %587

587:                                              ; preds = %585
  %588 = zext nneg i32 %20 to i64
  %589 = urem i64 %517, %588
  %590 = sub nsw i64 %588, %589
  %591 = shl i64 %518, %590
  %592 = lshr i64 %518, %589
  %593 = or i64 %591, %592
  br label %612

594:                                              ; preds = %514
  %595 = icmp slt i64 %517, 0
  br i1 %595, label %615, label %596

596:                                              ; preds = %594
  %597 = zext nneg i32 %20 to i64
  %598 = urem i64 %517, %597
  %599 = shl i64 %518, %598
  %600 = sub nsw i64 %597, %598
  %601 = lshr i64 %518, %600
  %602 = or i64 %601, %599
  br label %612

603:                                              ; preds = %514
  %604 = tail call i64 @llvm.smin.i64(i64 %516, i64 %515)
  br label %612

605:                                              ; preds = %514
  %606 = tail call i64 @llvm.umin.i64(i64 %518, i64 %517)
  br label %612

607:                                              ; preds = %514
  %608 = tail call i64 @llvm.smax.i64(i64 %516, i64 %515)
  br label %612

609:                                              ; preds = %514
  %610 = tail call i64 @llvm.umax.i64(i64 %518, i64 %517)
  br label %612

611:                                              ; preds = %514
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3580, ptr noundef nonnull @.str.1) #9
  unreachable

612:                                              ; preds = %571, %573, %576, %580, %609, %607, %605, %603, %596, %587, %561, %559, %557, %555, %547, %539, %531, %523, %521, %519
  %613 = phi i64 [ %610, %609 ], [ %608, %607 ], [ %606, %605 ], [ %604, %603 ], [ %602, %596 ], [ %593, %587 ], [ %584, %580 ], [ %574, %576 ], [ %574, %573 ], [ %562, %561 ], [ %560, %559 ], [ %558, %557 ], [ %556, %555 ], [ %548, %547 ], [ %540, %539 ], [ %532, %531 ], [ %524, %523 ], [ %522, %521 ], [ %520, %519 ], [ %572, %571 ]
  %614 = tail call ptr @gen_int_mode(i64 noundef %613, i32 noundef %1) #9
  br label %615

615:                                              ; preds = %64, %479, %483, %514, %514, %514, %514, %514, %514, %514, %514, %514, %514, %514, %594, %585, %563, %549, %551, %541, %543, %533, %535, %525, %527, %78, %612, %477, %361, %222, %166
  %616 = phi ptr [ %167, %166 ], [ %223, %222 ], [ %362, %361 ], [ %478, %477 ], [ %614, %612 ], [ %79, %78 ], [ null, %527 ], [ null, %525 ], [ null, %535 ], [ null, %533 ], [ null, %543 ], [ null, %541 ], [ null, %551 ], [ null, %549 ], [ null, %563 ], [ null, %585 ], [ null, %594 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %514 ], [ null, %483 ], [ null, %479 ], [ null, %64 ]
  ret ptr %616
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_binary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 !prof !401 !PGOFuncName !402 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.real_value, align 8
  %12 = alloca [2 x ptr], align 16
  %13 = alloca %struct.real_value, align 8
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !193
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  switch i32 %0, label %2543 [
    i32 49, label %19
    i32 48, label %265
    i32 50, label %319
    i32 52, label %669
    i32 62, label %915
    i32 63, label %1254
    i32 61, label %1450
    i32 59, label %1808
    i32 55, label %1838
    i32 60, label %1947
    i32 58, label %1982
    i32 69, label %2005
    i32 66, label %2005
    i32 67, label %2005
    i32 65, label %2030
    i32 133, label %2030
    i32 134, label %2030
    i32 68, label %2040
    i32 70, label %2050
    i32 71, label %2075
    i32 72, label %2100
    i32 73, label %2117
    i32 127, label %2545
    i32 128, label %2545
    i32 129, label %2545
    i32 135, label %2545
    i32 53, label %2545
    i32 54, label %2545
    i32 56, label %2545
    i32 57, label %2545
    i32 124, label %2132
    i32 125, label %2424
  ], !prof !403

19:                                               ; preds = %6
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %21 = load i8, ptr %20, align 1, !tbaa !193
  switch i8 %21, label %41 [
    i8 8, label %22
    i8 9, label %22
    i8 11, label %22
    i8 17, label %22
  ], !prof !404

22:                                               ; preds = %19, %19, %19, %19
  %23 = and i8 %21, -2
  %24 = icmp eq i8 %23, 8
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %27 = load i8, ptr %26, align 1, !tbaa !193
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %1, %22 ], [ %28, %25 ]
  %31 = add i32 %30, -38
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !243
  %35 = getelementptr inbounds %struct.real_format, ptr %34, i64 0, i32 14
  %36 = load i8, ptr %35, align 1, !tbaa !291
  %37 = icmp ne i8 %36, 0
  %38 = load i32, ptr @flag_signed_zeros, align 4
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %46, label %41

41:                                               ; preds = %19, %29
  %42 = sext i32 %1 to i64
  %43 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !243
  %45 = icmp eq ptr %44, %5
  br i1 %45, label %2545, label %46, !prof !405

46:                                               ; preds = %29, %41
  %47 = load i32, ptr %2, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 51
  br i1 %49, label %50, label %54, !prof !405

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !193
  %53 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %3, ptr noundef %52) #8
  br label %2545

54:                                               ; preds = %46
  %55 = load i32, ptr %3, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 51
  br i1 %57, label %58, label %62, !prof !405

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !193
  %61 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %60) #8
  br label %2545

62:                                               ; preds = %54
  switch i8 %21, label %72 [
    i8 2, label %63
    i8 3, label %63
    i8 10, label %63
    i8 12, label %63
  ], !prof !406

63:                                               ; preds = %62, %62, %62, %62
  %64 = trunc i32 %47 to i16
  switch i16 %64, label %80 [
    i16 64, label %65
    i16 35, label %74
    i16 45, label %74
    i16 44, label %74
  ], !prof !407

65:                                               ; preds = %63
  %66 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  %67 = icmp eq ptr %66, %5
  br i1 %67, label %68, label %80, !prof !408

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !193
  %71 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %70, i32 noundef %1) #8
  br label %2545

72:                                               ; preds = %62
  %73 = trunc i32 %47 to i16
  switch i16 %73, label %80 [
    i16 35, label %74
    i16 45, label %74
    i16 44, label %74
  ], !prof !409

74:                                               ; preds = %63, %63, %63, %72, %72, %72
  %75 = trunc i32 %55 to i16
  switch i16 %75, label %88 [
    i16 30, label %76
    i16 35, label %82
    i16 45, label %82
    i16 44, label %82
  ], !prof !410

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !193
  %79 = tail call ptr @plus_constant(ptr noundef nonnull %2, i64 noundef %78) #9
  br label %2545

80:                                               ; preds = %63, %65, %72
  %81 = trunc i32 %55 to i16
  switch i16 %81, label %88 [
    i16 35, label %82
    i16 45, label %82
    i16 44, label %82
  ], !prof !411

82:                                               ; preds = %74, %74, %74, %80, %80, %80
  %83 = icmp eq i32 %48, 30
  br i1 %83, label %84, label %88, !prof !412

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !193
  %87 = tail call ptr @plus_constant(ptr noundef nonnull %3, i64 noundef %86) #9
  br label %2545

88:                                               ; preds = %74, %80, %82
  %89 = and i8 %21, -2
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %173, !prof !413

91:                                               ; preds = %88
  %92 = trunc i32 %47 to i16
  switch i16 %92, label %120 [
    i16 51, label %115
    i16 52, label %93
    i16 65, label %103
  ], !prof !414

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !193
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 30
  br i1 %98, label %99, label %120, !prof !415

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !193
  %102 = ashr i64 %101, 63
  br label %115

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !193
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 30
  br i1 %108, label %109, label %120, !prof !416

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !193
  %112 = icmp ult i64 %111, 64
  br i1 %112, label %113, label %120, !prof !417

113:                                              ; preds = %109
  %114 = shl nuw i64 1, %111
  br label %115

115:                                              ; preds = %91, %113, %99
  %116 = phi i64 [ %114, %113 ], [ %101, %99 ], [ -1, %91 ]
  %117 = phi i64 [ 0, %113 ], [ %102, %99 ], [ -1, %91 ]
  %118 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !193
  br label %120

120:                                              ; preds = %115, %91, %93, %109, %103
  %121 = phi ptr [ %2, %109 ], [ %2, %103 ], [ %2, %93 ], [ %2, %91 ], [ %119, %115 ]
  %122 = phi i64 [ 1, %109 ], [ 1, %103 ], [ 1, %93 ], [ 1, %91 ], [ %116, %115 ]
  %123 = phi i64 [ 0, %109 ], [ 0, %103 ], [ 0, %93 ], [ 0, %91 ], [ %117, %115 ]
  %124 = trunc i32 %55 to i16
  switch i16 %124, label %152 [
    i16 51, label %147
    i16 52, label %125
    i16 65, label %135
  ], !prof !418

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !193
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  br i1 %130, label %131, label %152, !prof !419

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !193
  %134 = ashr i64 %133, 63
  br label %147

135:                                              ; preds = %120
  %136 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !193
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 30
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !193
  %144 = icmp ult i64 %143, 64
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = shl nuw i64 1, %143
  br label %147

147:                                              ; preds = %120, %145, %131
  %148 = phi i64 [ %146, %145 ], [ %133, %131 ], [ -1, %120 ]
  %149 = phi i64 [ 0, %145 ], [ %134, %131 ], [ -1, %120 ]
  %150 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !193
  br label %152

152:                                              ; preds = %147, %120, %125, %141, %135
  %153 = phi ptr [ %3, %141 ], [ %3, %135 ], [ %3, %125 ], [ %3, %120 ], [ %151, %147 ]
  %154 = phi i64 [ 1, %141 ], [ 1, %135 ], [ 1, %125 ], [ 1, %120 ], [ %148, %147 ]
  %155 = phi i64 [ 0, %141 ], [ 0, %135 ], [ 0, %125 ], [ 0, %120 ], [ %149, %147 ]
  %156 = tail call i32 @rtx_equal_p(ptr noundef %121, ptr noundef %153) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160, !prof !420

158:                                              ; preds = %152
  %159 = load i32, ptr %3, align 8
  br label %173

160:                                              ; preds = %152
  %161 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %162 = load ptr, ptr @cfun, align 8, !tbaa !243
  %163 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %162) #9
  %164 = call i32 @add_double_with_sign(i64 noundef %122, i64 noundef %123, i64 noundef %154, i64 noundef %155, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 0) #9
  %165 = load i64, ptr %7, align 8, !tbaa !263
  %166 = load i64, ptr %8, align 8, !tbaa !263
  %167 = call ptr @immed_double_const(i64 noundef %165, i64 noundef %166, i32 noundef %1) #9
  %168 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %121, ptr noundef %167) #8
  %169 = call i32 @rtx_cost(ptr noundef %168, i32 noundef 23, i8 noundef zeroext %163) #9
  %170 = call i32 @rtx_cost(ptr noundef %161, i32 noundef 23, i8 noundef zeroext %163) #9
  %171 = icmp sgt i32 %169, %170
  %172 = select i1 %171, ptr null, ptr %168, !prof !421
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %2545

173:                                              ; preds = %158, %88
  %174 = phi i32 [ %159, %158 ], [ %55, %88 ]
  %175 = trunc i32 %174 to i16
  switch i16 %175, label %193 [
    i16 30, label %176
    i16 32, label %176
  ], !prof !422

176:                                              ; preds = %173, %173
  %177 = load i32, ptr %2, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 63
  br i1 %179, label %180, label %193, !prof !423

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %182 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !193
  %184 = load i32, ptr %183, align 8
  %185 = trunc i32 %184 to i16
  switch i16 %185, label %193 [
    i16 30, label %186
    i16 32, label %186
  ]

186:                                              ; preds = %180, %180
  %187 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %3) #8, !range !371
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %181, align 8, !tbaa !193
  %191 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %183) #8
  %192 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %190, ptr noundef %191) #8
  br label %2545

193:                                              ; preds = %180, %173, %186, %176
  switch i8 %21, label %194 [
    i8 8, label %196
    i8 9, label %196
    i8 11, label %196
    i8 17, label %196
  ], !prof !424

194:                                              ; preds = %193
  %195 = load i32, ptr %2, align 8
  br label %217

196:                                              ; preds = %193, %193, %193, %193
  %197 = icmp eq i8 %89, 8
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %200 = load i8, ptr %199, align 1, !tbaa !193
  %201 = zext i8 %200 to i32
  br label %202

202:                                              ; preds = %198, %196
  %203 = phi i32 [ %1, %196 ], [ %201, %198 ]
  %204 = add i32 %203, -38
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !243
  %208 = getelementptr inbounds %struct.real_format, ptr %207, i64 0, i32 10
  %209 = load i8, ptr %208, align 1, !tbaa !377
  %210 = icmp ne i8 %209, 0
  %211 = load i32, ptr @flag_rounding_math, align 4
  %212 = icmp ne i32 %211, 0
  %213 = select i1 %210, i1 %212, i1 false
  %214 = load i32, ptr %2, align 8
  br i1 %213, label %215, label %217

215:                                              ; preds = %202
  %216 = and i32 %214, 65535
  br label %234

217:                                              ; preds = %194, %202
  %218 = phi i32 [ %195, %194 ], [ %214, %202 ]
  %219 = and i32 %218, 65535
  %220 = icmp eq i32 %219, 52
  br i1 %220, label %221, label %234, !prof !425

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !193
  %224 = load i32, ptr %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 51
  br i1 %226, label %227, label %234, !prof !426

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !193
  %230 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !193
  %232 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %229, ptr noundef %231) #8
  %233 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %3, ptr noundef %232) #8
  br label %2545

234:                                              ; preds = %215, %221, %217
  %235 = phi i32 [ %216, %215 ], [ 52, %221 ], [ %219, %217 ]
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !200
  %239 = icmp ult i32 %238, 2
  br i1 %239, label %240, label %248, !prof !427

240:                                              ; preds = %234
  %241 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  %242 = icmp eq ptr %241, %5
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = tail call ptr @reversed_comparison(ptr noundef nonnull %2, i32 noundef %1) #9
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %243
  %247 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %244, i32 noundef %1) #8
  br label %2545

248:                                              ; preds = %243, %240, %234
  switch i8 %21, label %2544 [
    i8 2, label %249
    i8 3, label %249
    i8 10, label %249
    i8 12, label %249
    i8 8, label %259
    i8 9, label %259
    i8 11, label %259
    i8 17, label %259
  ], !prof !428

249:                                              ; preds = %248, %248, %248, %248
  %250 = tail call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef nonnull %2) #8, !range !371
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %255, !prof !429

252:                                              ; preds = %249
  %253 = tail call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef nonnull %3) #8, !range !371
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %258, label %255, !prof !430

255:                                              ; preds = %252, %249
  %256 = tail call fastcc ptr @simplify_plus_minus(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %2545, !prof !431

258:                                              ; preds = %255, %252
  switch i8 %21, label %2544 [
    i8 8, label %259
    i8 9, label %259
    i8 11, label %259
  ], !prof !432

259:                                              ; preds = %248, %248, %248, %248, %258, %258, %258
  %260 = load i32, ptr @flag_associative_math, align 4, !tbaa !200
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %2544, label %262

262:                                              ; preds = %259
  %263 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %2544, label %2545

265:                                              ; preds = %6
  %266 = load i32, ptr %2, align 8
  %267 = trunc i32 %266 to i16
  switch i16 %267, label %2544 [
    i16 83, label %268
    i16 87, label %272
  ], !prof !433

268:                                              ; preds = %265
  %269 = load i32, ptr %3, align 8
  %270 = and i32 %269, 65535
  %271 = icmp eq i32 %270, 85
  br i1 %271, label %276, label %2544

272:                                              ; preds = %265
  %273 = load i32, ptr %3, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 89
  br i1 %275, label %276, label %2544

276:                                              ; preds = %272, %268
  %277 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %278 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !193
  %280 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %281 = icmp eq ptr %279, %280
  br i1 %281, label %282, label %2544

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !193
  %285 = icmp eq ptr %284, %279
  br i1 %285, label %286, label %2544

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %288 = load ptr, ptr %277, align 8, !tbaa !193
  %289 = load ptr, ptr %287, align 8, !tbaa !193
  %290 = load i32, ptr %288, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 37
  br i1 %292, label %293, label %2544

293:                                              ; preds = %286
  %294 = load i32, ptr %289, align 8
  %295 = and i32 %294, 65535
  %296 = icmp eq i32 %295, 37
  br i1 %296, label %297, label %2544

297:                                              ; preds = %293
  %298 = xor i32 %294, %290
  %299 = and i32 %298, 16711680
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %2544

301:                                              ; preds = %297
  %302 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %288) #8
  %303 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %289) #8
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %2544

305:                                              ; preds = %301
  %306 = lshr i32 %290, 16
  %307 = and i32 %306, 255
  %308 = zext nneg i32 %307 to i64
  %309 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !193
  %311 = icmp eq i8 %310, 1
  br i1 %311, label %312, label %2544

312:                                              ; preds = %305
  %313 = lshr i32 %294, 16
  %314 = and i32 %313, 255
  %315 = zext nneg i32 %314 to i64
  %316 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !193
  %318 = icmp eq i8 %317, 1
  br i1 %318, label %2545, label %2544

319:                                              ; preds = %6
  %320 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %351, label %322, !prof !434

322:                                              ; preds = %319
  %323 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %351

325:                                              ; preds = %322
  %326 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %327 = load i8, ptr %326, align 1, !tbaa !193
  switch i8 %327, label %347 [
    i8 8, label %328
    i8 9, label %328
    i8 11, label %328
    i8 17, label %328
  ]

328:                                              ; preds = %325, %325, %325, %325
  %329 = and i8 %327, -2
  %330 = icmp eq i8 %329, 8
  br i1 %330, label %335, label %331

331:                                              ; preds = %328
  %332 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %333 = load i8, ptr %332, align 1, !tbaa !193
  %334 = zext i8 %333 to i32
  br label %335

335:                                              ; preds = %331, %328
  %336 = phi i32 [ %1, %328 ], [ %334, %331 ]
  %337 = add i32 %336, -38
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !243
  %341 = getelementptr inbounds %struct.real_format, ptr %340, i64 0, i32 11
  %342 = load i8, ptr %341, align 2, !tbaa !288
  %343 = icmp eq i8 %342, 0
  %344 = load i32, ptr @flag_finite_math_only, align 4
  %345 = icmp ne i32 %344, 0
  %346 = select i1 %343, i1 true, i1 %345
  br i1 %346, label %347, label %351

347:                                              ; preds = %325, %335
  %348 = sext i32 %1 to i64
  %349 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !243
  br label %2545

351:                                              ; preds = %335, %322, %319
  %352 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %353 = load i8, ptr %352, align 1, !tbaa !193
  switch i8 %353, label %373 [
    i8 8, label %354
    i8 9, label %354
    i8 11, label %354
    i8 17, label %354
  ], !prof !435

354:                                              ; preds = %351, %351, %351, %351
  %355 = and i8 %353, -2
  %356 = icmp eq i8 %355, 8
  br i1 %356, label %361, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %359 = load i8, ptr %358, align 1, !tbaa !193
  %360 = zext i8 %359 to i32
  br label %361

361:                                              ; preds = %357, %354
  %362 = phi i32 [ %1, %354 ], [ %360, %357 ]
  %363 = add i32 %362, -38
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !243
  %367 = getelementptr inbounds %struct.real_format, ptr %366, i64 0, i32 14
  %368 = load i8, ptr %367, align 1, !tbaa !291
  %369 = icmp ne i8 %368, 0
  %370 = load i32, ptr @flag_signed_zeros, align 4
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %369, i1 %371, i1 false
  br i1 %372, label %380, label %373

373:                                              ; preds = %351, %361
  %374 = sext i32 %1 to i64
  %375 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !243
  %377 = icmp eq ptr %376, %4
  br i1 %377, label %378, label %380, !prof !436

378:                                              ; preds = %373
  %379 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %3, i32 noundef %1) #8
  br label %2545

380:                                              ; preds = %361, %373
  %381 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  %382 = icmp eq ptr %381, %4
  br i1 %382, label %383, label %385, !prof !436

383:                                              ; preds = %380
  %384 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %3, i32 noundef %1) #8
  br label %2545

385:                                              ; preds = %380
  switch i8 %353, label %423 [
    i8 8, label %386
    i8 9, label %386
    i8 11, label %386
    i8 17, label %386
  ], !prof !435

386:                                              ; preds = %385, %385, %385, %385
  %387 = and i8 %353, -2
  %388 = icmp eq i8 %387, 8
  br i1 %388, label %393, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %391 = load i8, ptr %390, align 1, !tbaa !193
  %392 = zext i8 %391 to i32
  br label %393

393:                                              ; preds = %389, %386
  %394 = phi i32 [ %1, %386 ], [ %392, %389 ]
  %395 = add i32 %394, -38
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !243
  %399 = getelementptr inbounds %struct.real_format, ptr %398, i64 0, i32 14
  %400 = load i8, ptr %399, align 1, !tbaa !291
  %401 = icmp ne i8 %400, 0
  %402 = load i32, ptr @flag_signed_zeros, align 4
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %401, i1 %403, i1 false
  br i1 %404, label %405, label %423

405:                                              ; preds = %393
  switch i8 %353, label %423 [
    i8 8, label %406
    i8 9, label %406
    i8 11, label %406
    i8 17, label %406
  ]

406:                                              ; preds = %405, %405, %405, %405
  br i1 %388, label %411, label %407

407:                                              ; preds = %406
  %408 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %409 = load i8, ptr %408, align 1, !tbaa !193
  %410 = zext i8 %409 to i32
  br label %411

411:                                              ; preds = %407, %406
  %412 = phi i32 [ %1, %406 ], [ %410, %407 ]
  %413 = add i32 %412, -38
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %414
  %416 = load ptr, ptr %415, align 8, !tbaa !243
  %417 = getelementptr inbounds %struct.real_format, ptr %416, i64 0, i32 10
  %418 = load i8, ptr %417, align 1, !tbaa !377
  %419 = icmp ne i8 %418, 0
  %420 = load i32, ptr @flag_rounding_math, align 4
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %419, i1 %421, i1 false
  br i1 %422, label %515, label %423

423:                                              ; preds = %405, %385, %411, %393
  %424 = sext i32 %1 to i64
  %425 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !243
  %427 = icmp eq ptr %426, %5
  br i1 %427, label %2545, label %428, !prof !436

428:                                              ; preds = %423
  %429 = and i8 %353, -2
  %430 = icmp eq i8 %429, 2
  br i1 %430, label %431, label %515, !prof !437

431:                                              ; preds = %428
  %432 = load i32, ptr %2, align 8
  %433 = trunc i32 %432 to i16
  switch i16 %433, label %461 [
    i16 51, label %456
    i16 52, label %434
    i16 65, label %444
  ], !prof !438

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %436 = load ptr, ptr %435, align 8, !tbaa !193
  %437 = load i32, ptr %436, align 8
  %438 = and i32 %437, 65535
  %439 = icmp eq i32 %438, 30
  br i1 %439, label %440, label %461

440:                                              ; preds = %434
  %441 = getelementptr inbounds %struct.rtx_def, ptr %436, i64 0, i32 1
  %442 = load i64, ptr %441, align 8, !tbaa !193
  %443 = ashr i64 %442, 63
  br label %456

444:                                              ; preds = %431
  %445 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %446 = load ptr, ptr %445, align 8, !tbaa !193
  %447 = load i32, ptr %446, align 8
  %448 = and i32 %447, 65535
  %449 = icmp eq i32 %448, 30
  br i1 %449, label %450, label %461

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.rtx_def, ptr %446, i64 0, i32 1
  %452 = load i64, ptr %451, align 8, !tbaa !193
  %453 = icmp ult i64 %452, 64
  br i1 %453, label %454, label %461

454:                                              ; preds = %450
  %455 = shl nuw i64 1, %452
  br label %456

456:                                              ; preds = %431, %454, %440
  %457 = phi i64 [ %455, %454 ], [ %442, %440 ], [ -1, %431 ]
  %458 = phi i64 [ 0, %454 ], [ %443, %440 ], [ -1, %431 ]
  %459 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !193
  br label %461

461:                                              ; preds = %456, %431, %434, %450, %444
  %462 = phi ptr [ %2, %450 ], [ %2, %444 ], [ %2, %434 ], [ %2, %431 ], [ %460, %456 ]
  %463 = phi i64 [ 1, %450 ], [ 1, %444 ], [ 1, %434 ], [ 1, %431 ], [ %457, %456 ]
  %464 = phi i64 [ 0, %450 ], [ 0, %444 ], [ 0, %434 ], [ 0, %431 ], [ %458, %456 ]
  %465 = load i32, ptr %3, align 8
  %466 = trunc i32 %465 to i16
  switch i16 %466, label %496 [
    i16 51, label %491
    i16 52, label %467
    i16 65, label %479
  ], !prof !438

467:                                              ; preds = %461
  %468 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %469 = load ptr, ptr %468, align 8, !tbaa !193
  %470 = load i32, ptr %469, align 8
  %471 = and i32 %470, 65535
  %472 = icmp eq i32 %471, 30
  br i1 %472, label %473, label %496

473:                                              ; preds = %467
  %474 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1
  %475 = load i64, ptr %474, align 8, !tbaa !193
  %476 = sub nsw i64 0, %475
  %477 = icmp sgt i64 %475, 0
  %478 = sext i1 %477 to i64
  br label %491

479:                                              ; preds = %461
  %480 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %481 = load ptr, ptr %480, align 8, !tbaa !193
  %482 = load i32, ptr %481, align 8
  %483 = and i32 %482, 65535
  %484 = icmp eq i32 %483, 30
  br i1 %484, label %485, label %496

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.rtx_def, ptr %481, i64 0, i32 1
  %487 = load i64, ptr %486, align 8, !tbaa !193
  %488 = icmp ult i64 %487, 64
  br i1 %488, label %489, label %496

489:                                              ; preds = %485
  %490 = shl nsw i64 -1, %487
  br label %491

491:                                              ; preds = %461, %489, %473
  %492 = phi i64 [ %490, %489 ], [ %476, %473 ], [ 1, %461 ]
  %493 = phi i64 [ -1, %489 ], [ %478, %473 ], [ 0, %461 ]
  %494 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !193
  br label %496

496:                                              ; preds = %491, %461, %467, %485, %479
  %497 = phi ptr [ %3, %485 ], [ %3, %479 ], [ %3, %467 ], [ %3, %461 ], [ %495, %491 ]
  %498 = phi i64 [ -1, %485 ], [ -1, %479 ], [ -1, %467 ], [ -1, %461 ], [ %492, %491 ]
  %499 = phi i64 [ -1, %485 ], [ -1, %479 ], [ -1, %467 ], [ -1, %461 ], [ %493, %491 ]
  %500 = tail call i32 @rtx_equal_p(ptr noundef %462, ptr noundef %497) #9
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %515, label %502, !prof !434

502:                                              ; preds = %496
  %503 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %504 = load ptr, ptr @cfun, align 8, !tbaa !243
  %505 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %504) #9
  %506 = call i32 @add_double_with_sign(i64 noundef %463, i64 noundef %464, i64 noundef %498, i64 noundef %499, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext 0) #9
  %507 = load i64, ptr %9, align 8, !tbaa !263
  %508 = load i64, ptr %10, align 8, !tbaa !263
  %509 = call ptr @immed_double_const(i64 noundef %507, i64 noundef %508, i32 noundef %1) #9
  %510 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %462, ptr noundef %509) #8
  %511 = call i32 @rtx_cost(ptr noundef %510, i32 noundef 23, i8 noundef zeroext %505) #9
  %512 = call i32 @rtx_cost(ptr noundef %503, i32 noundef 23, i8 noundef zeroext %505) #9
  %513 = icmp sgt i32 %511, %512
  %514 = select i1 %513, ptr null, ptr %510
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  br label %2545

515:                                              ; preds = %496, %411, %428
  %516 = load i32, ptr %3, align 8
  %517 = and i32 %516, 65535
  %518 = icmp eq i32 %517, 51
  br i1 %518, label %519, label %523, !prof !436

519:                                              ; preds = %515
  %520 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !193
  %522 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef %521) #8
  br label %2545

523:                                              ; preds = %515
  %524 = load i32, ptr %2, align 8
  %525 = and i32 %524, 65535
  %526 = icmp eq i32 %525, 51
  br i1 %526, label %527, label %538, !prof !436

527:                                              ; preds = %523
  %528 = trunc i32 %516 to i16
  switch i16 %528, label %538 [
    i16 30, label %529
    i16 32, label %529
  ]

529:                                              ; preds = %527, %527
  %530 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %1) #8
  %531 = icmp eq ptr %530, null
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  %533 = load i32, ptr %3, align 8
  br label %538

534:                                              ; preds = %529
  %535 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !193
  %537 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %530, ptr noundef %536) #8
  br label %2545

538:                                              ; preds = %532, %527, %523
  %539 = phi i32 [ %533, %532 ], [ %516, %527 ], [ %516, %523 ]
  %540 = trunc i32 %539 to i16
  switch i16 %540, label %571 [
    i16 30, label %541
    i16 61, label %548
  ], !prof !439

541:                                              ; preds = %538
  %542 = load i32, ptr %2, align 8
  %543 = and i32 %542, 16711680
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %571, label %545, !prof !440

545:                                              ; preds = %541
  %546 = tail call fastcc ptr @neg_const_int(i32 noundef %1, ptr noundef nonnull %3) #8
  %547 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %546) #8
  br label %2545

548:                                              ; preds = %538
  %549 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !193
  %551 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef %550) #9
  %552 = icmp eq i32 %551, 0
  %553 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %554 = load ptr, ptr %553, align 8, !tbaa !193
  br i1 %552, label %561, label %555

555:                                              ; preds = %548
  %556 = load i32, ptr %554, align 8
  %557 = lshr i32 %556, 16
  %558 = and i32 %557, 255
  %559 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %554, i32 noundef %558) #8
  %560 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %559) #8
  br label %2545

561:                                              ; preds = %548
  %562 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef %554) #9
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %571, label %564

564:                                              ; preds = %561
  %565 = load ptr, ptr %549, align 8, !tbaa !193
  %566 = load i32, ptr %565, align 8
  %567 = lshr i32 %566, 16
  %568 = and i32 %567, 255
  %569 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %565, i32 noundef %568) #8
  %570 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %569) #8
  br label %2545

571:                                              ; preds = %538, %541, %561
  %572 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  %573 = icmp eq ptr %572, %4
  br i1 %573, label %574, label %584, !prof !441

574:                                              ; preds = %571
  %575 = load i32, ptr %3, align 8
  %576 = and i32 %575, 65535
  %577 = zext nneg i32 %576 to i64
  %578 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %577
  %579 = load i32, ptr %578, align 4, !tbaa !200
  %580 = icmp ult i32 %579, 2
  br i1 %580, label %581, label %584

581:                                              ; preds = %574
  %582 = tail call ptr @reversed_comparison(ptr noundef nonnull %3, i32 noundef %1) #9
  %583 = icmp eq ptr %582, null
  br i1 %583, label %584, label %2545

584:                                              ; preds = %581, %574, %571
  switch i8 %353, label %604 [
    i8 8, label %585
    i8 9, label %585
    i8 11, label %585
    i8 17, label %585
  ], !prof !442

585:                                              ; preds = %584, %584, %584, %584
  %586 = and i8 %353, -2
  %587 = icmp eq i8 %586, 8
  br i1 %587, label %592, label %588

588:                                              ; preds = %585
  %589 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %590 = load i8, ptr %589, align 1, !tbaa !193
  %591 = zext i8 %590 to i32
  br label %592

592:                                              ; preds = %588, %585
  %593 = phi i32 [ %1, %585 ], [ %591, %588 ]
  %594 = add i32 %593, -38
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %595
  %597 = load ptr, ptr %596, align 8, !tbaa !243
  %598 = getelementptr inbounds %struct.real_format, ptr %597, i64 0, i32 10
  %599 = load i8, ptr %598, align 1, !tbaa !377
  %600 = icmp ne i8 %599, 0
  %601 = load i32, ptr @flag_rounding_math, align 4
  %602 = icmp ne i32 %601, 0
  %603 = select i1 %600, i1 %602, i1 false
  br i1 %603, label %621, label %604

604:                                              ; preds = %584, %592
  %605 = load i32, ptr %3, align 8
  %606 = and i32 %605, 65535
  %607 = icmp eq i32 %606, 52
  br i1 %607, label %608, label %621, !prof !441

608:                                              ; preds = %604
  %609 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %610 = load ptr, ptr %609, align 8, !tbaa !193
  %611 = load i32, ptr %610, align 8
  %612 = and i32 %611, 65535
  %613 = icmp eq i32 %612, 51
  br i1 %613, label %614, label %621

614:                                              ; preds = %608
  %615 = getelementptr inbounds %struct.rtx_def, ptr %610, i64 0, i32 1
  %616 = load ptr, ptr %615, align 8, !tbaa !193
  %617 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %618 = load ptr, ptr %617, align 8, !tbaa !193
  %619 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %616, ptr noundef %618) #8
  %620 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %619, ptr noundef nonnull %2) #8
  br label %2545

621:                                              ; preds = %592, %608, %604
  switch i8 %353, label %641 [
    i8 8, label %622
    i8 9, label %622
    i8 11, label %622
    i8 17, label %622
  ], !prof !442

622:                                              ; preds = %621, %621, %621, %621
  %623 = and i8 %353, -2
  %624 = icmp eq i8 %623, 8
  br i1 %624, label %629, label %625

625:                                              ; preds = %622
  %626 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %627 = load i8, ptr %626, align 1, !tbaa !193
  %628 = zext i8 %627 to i32
  br label %629

629:                                              ; preds = %625, %622
  %630 = phi i32 [ %1, %622 ], [ %628, %625 ]
  %631 = add i32 %630, -38
  %632 = zext i32 %631 to i64
  %633 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %632
  %634 = load ptr, ptr %633, align 8, !tbaa !243
  %635 = getelementptr inbounds %struct.real_format, ptr %634, i64 0, i32 10
  %636 = load i8, ptr %635, align 1, !tbaa !377
  %637 = icmp ne i8 %636, 0
  %638 = load i32, ptr @flag_rounding_math, align 4
  %639 = icmp ne i32 %638, 0
  %640 = select i1 %637, i1 %639, i1 false
  br i1 %640, label %659, label %641

641:                                              ; preds = %621, %629
  %642 = load i32, ptr %3, align 8
  %643 = and i32 %642, 65535
  %644 = icmp eq i32 %643, 52
  br i1 %644, label %645, label %659, !prof !441

645:                                              ; preds = %641
  %646 = load i32, ptr %2, align 8
  %647 = and i32 %646, 65535
  %648 = icmp eq i32 %647, 51
  br i1 %648, label %649, label %659

649:                                              ; preds = %645
  %650 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %651 = load ptr, ptr %650, align 8, !tbaa !193
  %652 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %651, i32 noundef %1) #8
  %653 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %654 = load ptr, ptr %653, align 8, !tbaa !193
  %655 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %652, ptr noundef %654) #8
  %656 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %657 = load ptr, ptr %656, align 8, !tbaa !193
  %658 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %655, ptr noundef %657) #8
  br label %2545

659:                                              ; preds = %629, %645, %641
  switch i8 %353, label %2544 [
    i8 2, label %660
    i8 3, label %660
    i8 10, label %660
    i8 12, label %660
  ], !prof !443

660:                                              ; preds = %659, %659, %659, %659
  %661 = tail call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef nonnull %2) #8, !range !371
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %663, label %666, !prof !444

663:                                              ; preds = %660
  %664 = tail call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef nonnull %3) #8, !range !371
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %2544, label %666, !prof !444

666:                                              ; preds = %663, %660
  %667 = tail call fastcc ptr @simplify_plus_minus(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %668 = icmp eq ptr %667, null
  br i1 %668, label %2544, label %2545

669:                                              ; preds = %6
  %670 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  %671 = icmp eq ptr %670, %5
  br i1 %671, label %672, label %674, !prof !445

672:                                              ; preds = %669
  %673 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %2, i32 noundef %1) #8
  br label %2545

674:                                              ; preds = %669
  %675 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %676 = load i8, ptr %675, align 1, !tbaa !193
  switch i8 %676, label %714 [
    i8 8, label %677
    i8 9, label %677
    i8 11, label %677
    i8 17, label %677
  ], !prof !446

677:                                              ; preds = %674, %674, %674, %674
  %678 = and i8 %676, -2
  %679 = icmp eq i8 %678, 8
  br i1 %679, label %684, label %680

680:                                              ; preds = %677
  %681 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %682 = load i8, ptr %681, align 1, !tbaa !193
  %683 = zext i8 %682 to i32
  br label %684

684:                                              ; preds = %680, %677
  %685 = phi i32 [ %1, %677 ], [ %683, %680 ]
  %686 = add i32 %685, -38
  %687 = zext i32 %686 to i64
  %688 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %687
  %689 = load ptr, ptr %688, align 8, !tbaa !243
  %690 = getelementptr inbounds %struct.real_format, ptr %689, i64 0, i32 11
  %691 = load i8, ptr %690, align 2, !tbaa !288
  %692 = icmp eq i8 %691, 0
  %693 = load i32, ptr @flag_finite_math_only, align 4
  %694 = icmp ne i32 %693, 0
  %695 = select i1 %692, i1 true, i1 %694
  br i1 %695, label %696, label %722

696:                                              ; preds = %684
  switch i8 %676, label %714 [
    i8 8, label %697
    i8 9, label %697
    i8 11, label %697
    i8 17, label %697
  ], !prof !447

697:                                              ; preds = %696, %696, %696, %696
  br i1 %679, label %702, label %698

698:                                              ; preds = %697
  %699 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %700 = load i8, ptr %699, align 1, !tbaa !193
  %701 = zext i8 %700 to i32
  br label %702

702:                                              ; preds = %698, %697
  %703 = phi i32 [ %1, %697 ], [ %701, %698 ]
  %704 = add i32 %703, -38
  %705 = zext i32 %704 to i64
  %706 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %705
  %707 = load ptr, ptr %706, align 8, !tbaa !243
  %708 = getelementptr inbounds %struct.real_format, ptr %707, i64 0, i32 14
  %709 = load i8, ptr %708, align 1, !tbaa !291
  %710 = icmp ne i8 %709, 0
  %711 = load i32, ptr @flag_signed_zeros, align 4
  %712 = icmp ne i32 %711, 0
  %713 = select i1 %710, i1 %712, i1 false
  br i1 %713, label %722, label %714

714:                                              ; preds = %674, %696, %702
  %715 = sext i32 %1 to i64
  %716 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %715
  %717 = load ptr, ptr %716, align 8, !tbaa !243
  %718 = icmp eq ptr %717, %5
  br i1 %718, label %719, label %722, !prof !445

719:                                              ; preds = %714
  %720 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %2545, label %722

722:                                              ; preds = %702, %684, %719, %714
  %723 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !200
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %745, label %725, !prof !448

725:                                              ; preds = %722
  switch i8 %676, label %745 [
    i8 8, label %726
    i8 9, label %726
    i8 11, label %726
    i8 17, label %726
  ]

726:                                              ; preds = %725, %725, %725, %725
  %727 = and i8 %676, -2
  %728 = icmp eq i8 %727, 8
  br i1 %728, label %733, label %729

729:                                              ; preds = %726
  %730 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %731 = load i8, ptr %730, align 1, !tbaa !193
  %732 = zext i8 %731 to i32
  br label %733

733:                                              ; preds = %729, %726
  %734 = phi i32 [ %1, %726 ], [ %732, %729 ]
  %735 = add i32 %734, -38
  %736 = zext i32 %735 to i64
  %737 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %736
  %738 = load ptr, ptr %737, align 8, !tbaa !243
  %739 = getelementptr inbounds %struct.real_format, ptr %738, i64 0, i32 11
  %740 = load i8, ptr %739, align 2, !tbaa !288
  %741 = icmp eq i8 %740, 0
  %742 = load i32, ptr @flag_finite_math_only, align 4
  %743 = icmp ne i32 %742, 0
  %744 = select i1 %741, i1 true, i1 %743
  br i1 %744, label %745, label %750

745:                                              ; preds = %725, %733, %722
  %746 = sext i32 %1 to i64
  %747 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %746
  %748 = load ptr, ptr %747, align 8, !tbaa !243
  %749 = icmp eq ptr %748, %5
  br i1 %749, label %2545, label %750, !prof !445

750:                                              ; preds = %733, %745
  %751 = load i32, ptr %5, align 8
  %752 = and i32 %751, 65535
  %753 = icmp eq i32 %752, 30
  br i1 %753, label %754, label %767, !prof !448

754:                                              ; preds = %750
  %755 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %756 = load i64, ptr %755, align 8, !tbaa !193
  %757 = tail call i32 @exact_log2(i64 noundef %756) #9
  %758 = sext i32 %757 to i64
  %759 = icmp sgt i32 %757, -1
  br i1 %759, label %760, label %767, !prof !449

760:                                              ; preds = %754
  %761 = icmp ult i8 %16, 9
  br i1 %761, label %764, label %762, !prof !450

762:                                              ; preds = %760
  %763 = icmp eq i32 %757, 63
  br i1 %763, label %767, label %764

764:                                              ; preds = %762, %760
  %765 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %758) #9
  %766 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef %2, ptr noundef %765) #8
  br label %2545

767:                                              ; preds = %762, %754, %750
  %768 = load i32, ptr %5, align 8
  %769 = and i32 %768, 65535
  %770 = icmp eq i32 %769, 32
  br i1 %770, label %771, label %801, !prof !451

771:                                              ; preds = %767
  %772 = lshr i32 %768, 16
  %773 = and i32 %772, 255
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %780, label %775

775:                                              ; preds = %771
  %776 = zext nneg i32 %773 to i64
  %777 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %776
  %778 = load i8, ptr %777, align 1, !tbaa !193
  %779 = icmp eq i8 %778, 2
  br i1 %779, label %780, label %801

780:                                              ; preds = %775, %771
  %781 = load i32, ptr %2, align 8
  %782 = lshr i32 %781, 16
  %783 = and i32 %782, 255
  %784 = icmp eq i32 %783, %1
  br i1 %784, label %785, label %801

785:                                              ; preds = %780
  %786 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %787 = load i64, ptr %786, align 8, !tbaa !193
  %788 = icmp eq i64 %787, 0
  br i1 %788, label %789, label %801

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %791 = load i64, ptr %790, align 8, !tbaa !193
  %792 = tail call i32 @exact_log2(i64 noundef %791) #9
  %793 = icmp sgt i32 %792, -1
  br i1 %793, label %796, label %794

794:                                              ; preds = %789
  %795 = load i32, ptr %5, align 8
  br label %801

796:                                              ; preds = %789
  %797 = add nuw i32 %792, 64
  %798 = zext i32 %797 to i64
  %799 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %798) #9
  %800 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %799) #8
  br label %2545

801:                                              ; preds = %794, %785, %780, %775, %767
  %802 = phi i32 [ %795, %794 ], [ %768, %785 ], [ %768, %780 ], [ %768, %775 ], [ %768, %767 ]
  %803 = and i32 %802, 65535
  %804 = icmp eq i32 %803, 32
  br i1 %804, label %805, label %858, !prof !451

805:                                              ; preds = %801
  %806 = lshr i32 %802, 16
  %807 = and i32 %806, 255
  %808 = zext nneg i32 %807 to i64
  %809 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %808
  %810 = load i8, ptr %809, align 1, !tbaa !193
  %811 = and i8 %810, -2
  %812 = icmp ne i8 %811, 8
  %813 = icmp eq i8 %810, 9
  %814 = or i1 %813, %812
  br i1 %814, label %858, label %815

815:                                              ; preds = %805
  %816 = load i32, ptr %2, align 8
  %817 = lshr i32 %816, 16
  %818 = and i32 %817, 255
  %819 = icmp eq i32 %818, %1
  br i1 %819, label %820, label %858

820:                                              ; preds = %815
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  %821 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %821, i64 32, i1 false), !tbaa.struct !350
  %822 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %11, ptr noundef nonnull @dconst2) #9
  %823 = icmp eq i8 %822, 0
  br i1 %823, label %827, label %824

824:                                              ; preds = %820
  %825 = call ptr @copy_rtx(ptr noundef nonnull %2) #9
  %826 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %825) #8
  br label %856

827:                                              ; preds = %820
  %828 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !200
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %850, label %830

830:                                              ; preds = %827
  switch i8 %676, label %850 [
    i8 8, label %831
    i8 9, label %831
    i8 11, label %831
    i8 17, label %831
  ]

831:                                              ; preds = %830, %830, %830, %830
  %832 = and i8 %676, -2
  %833 = icmp eq i8 %832, 8
  br i1 %833, label %838, label %834

834:                                              ; preds = %831
  %835 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %836 = load i8, ptr %835, align 1, !tbaa !193
  %837 = zext i8 %836 to i32
  br label %838

838:                                              ; preds = %834, %831
  %839 = phi i32 [ %1, %831 ], [ %837, %834 ]
  %840 = add nsw i32 %839, -38
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %841
  %843 = load ptr, ptr %842, align 8, !tbaa !243
  %844 = getelementptr inbounds %struct.real_format, ptr %843, i64 0, i32 11
  %845 = load i8, ptr %844, align 2, !tbaa !288
  %846 = icmp eq i8 %845, 0
  %847 = load i32, ptr @flag_finite_math_only, align 4
  %848 = icmp ne i32 %847, 0
  %849 = select i1 %846, i1 true, i1 %848
  br i1 %849, label %850, label %855

850:                                              ; preds = %830, %838, %827
  %851 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %11, ptr noundef nonnull @dconstm1) #9
  %852 = icmp eq i8 %851, 0
  br i1 %852, label %855, label %853

853:                                              ; preds = %850
  %854 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %1) #8
  br label %856

855:                                              ; preds = %838, %850
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  br label %858

856:                                              ; preds = %853, %824
  %857 = phi ptr [ %826, %824 ], [ %854, %853 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  br label %2545

858:                                              ; preds = %855, %805, %815, %801
  switch i8 %676, label %912 [
    i8 8, label %859
    i8 9, label %859
    i8 11, label %859
    i8 17, label %859
  ], !prof !452

859:                                              ; preds = %858, %858, %858, %858
  %860 = load i32, ptr %2, align 8
  %861 = and i32 %860, 65535
  %862 = icmp eq i32 %861, 51
  br i1 %862, label %863, label %882

863:                                              ; preds = %859
  %864 = load i32, ptr %3, align 8
  %865 = and i32 %864, 65535
  %866 = icmp eq i32 %865, 51
  br i1 %866, label %867, label %882

867:                                              ; preds = %863
  %868 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %869 = load ptr, ptr %868, align 8, !tbaa !193
  %870 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %871 = load ptr, ptr %870, align 8, !tbaa !193
  %872 = call i32 @rtx_equal_p(ptr noundef %869, ptr noundef %871) #9
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %882, label %874

874:                                              ; preds = %867
  %875 = load ptr, ptr %868, align 8, !tbaa !193
  %876 = call i32 @side_effects_p(ptr noundef %875) #9
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %882

878:                                              ; preds = %874
  %879 = load ptr, ptr %868, align 8, !tbaa !193
  %880 = load ptr, ptr %870, align 8, !tbaa !193
  %881 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %879, ptr noundef %880) #8
  br label %2545

882:                                              ; preds = %874, %867, %863, %859
  %883 = and i8 %676, -2
  %884 = icmp eq i8 %883, 8
  br i1 %884, label %885, label %908, !prof !453

885:                                              ; preds = %882
  %886 = load i32, ptr %2, align 8
  %887 = and i32 %886, 65535
  %888 = icmp eq i32 %887, 111
  br i1 %888, label %889, label %908

889:                                              ; preds = %885
  %890 = load i32, ptr %3, align 8
  %891 = and i32 %890, 65535
  %892 = icmp eq i32 %891, 111
  br i1 %892, label %893, label %908

893:                                              ; preds = %889
  %894 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %895 = load ptr, ptr %894, align 8, !tbaa !193
  %896 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %897 = load ptr, ptr %896, align 8, !tbaa !193
  %898 = call i32 @rtx_equal_p(ptr noundef %895, ptr noundef %897) #9
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %908, label %900

900:                                              ; preds = %893
  %901 = load ptr, ptr %894, align 8, !tbaa !193
  %902 = call i32 @side_effects_p(ptr noundef %901) #9
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %908

904:                                              ; preds = %900
  %905 = load ptr, ptr %894, align 8, !tbaa !193
  %906 = load ptr, ptr %896, align 8, !tbaa !193
  %907 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %905, ptr noundef %906) #8
  br label %2545

908:                                              ; preds = %882, %900, %893, %889, %885
  switch i8 %676, label %912 [
    i8 8, label %909
    i8 9, label %909
    i8 11, label %909
    i8 17, label %909
  ], !prof !454

909:                                              ; preds = %908, %908, %908, %908
  %910 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !200
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %2544, label %912

912:                                              ; preds = %858, %908, %909
  %913 = call fastcc ptr @simplify_associative_operation(i32 noundef 52, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %914 = icmp eq ptr %913, null
  br i1 %914, label %2544, label %2545, !prof !455

915:                                              ; preds = %6
  %916 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %917 = icmp eq ptr %916, %5
  br i1 %917, label %2545, label %918, !prof !456

918:                                              ; preds = %915
  %919 = load i32, ptr %5, align 8
  %920 = and i32 %919, 65535
  %921 = icmp eq i32 %920, 30
  br i1 %921, label %922, label %929, !prof !457

922:                                              ; preds = %918
  %923 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %924 = load i64, ptr %923, align 8, !tbaa !193
  %925 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %926 = load i64, ptr %925, align 8, !tbaa !263
  %927 = and i64 %926, %924
  %928 = icmp eq i64 %927, %926
  br i1 %928, label %2545, label %929, !prof !458

929:                                              ; preds = %922, %918
  %930 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef nonnull %5) #9
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %935, label %932, !prof !459

932:                                              ; preds = %929
  %933 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %2545, label %935

935:                                              ; preds = %932, %929
  %936 = load i32, ptr %2, align 8
  %937 = and i32 %936, 65535
  %938 = icmp eq i32 %937, 64
  br i1 %938, label %939, label %944, !prof !460

939:                                              ; preds = %935
  %940 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %941 = load ptr, ptr %940, align 8, !tbaa !193
  %942 = tail call i32 @rtx_equal_p(ptr noundef %941, ptr noundef %3) #9
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %944, label %953

944:                                              ; preds = %939, %935
  %945 = load i32, ptr %3, align 8
  %946 = and i32 %945, 65535
  %947 = icmp eq i32 %946, 64
  br i1 %947, label %948, label %963, !prof !460

948:                                              ; preds = %944
  %949 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %950 = load ptr, ptr %949, align 8, !tbaa !193
  %951 = tail call i32 @rtx_equal_p(ptr noundef %950, ptr noundef nonnull %2) #9
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %963, label %953

953:                                              ; preds = %948, %939
  %954 = tail call i32 @side_effects_p(ptr noundef nonnull %2) #9
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %963

956:                                              ; preds = %953
  %957 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %958 = load i8, ptr %957, align 1, !tbaa !193
  %959 = and i8 %958, -2
  %960 = icmp eq i8 %959, 2
  br i1 %960, label %961, label %963

961:                                              ; preds = %956
  %962 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  br label %2545

963:                                              ; preds = %956, %953, %948, %944
  %964 = load i32, ptr %3, align 8
  %965 = and i32 %964, 65535
  %966 = icmp eq i32 %965, 30
  br i1 %966, label %967, label %977, !prof !457

967:                                              ; preds = %963
  %968 = load i8, ptr %15, align 1, !tbaa !193
  %969 = icmp ult i8 %968, 9
  br i1 %969, label %970, label %977, !prof !461

970:                                              ; preds = %967
  %971 = tail call i64 @nonzero_bits(ptr noundef nonnull %2, i32 noundef %1) #9
  %972 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %973 = load i64, ptr %972, align 8, !tbaa !193
  %974 = xor i64 %973, -1
  %975 = and i64 %971, %974
  %976 = icmp eq i64 %975, 0
  br i1 %976, label %2545, label %977, !prof !462

977:                                              ; preds = %970, %967, %963
  %978 = load i32, ptr %2, align 8
  %979 = and i32 %978, 65535
  %980 = icmp eq i32 %979, 61
  br i1 %980, label %981, label %1024, !prof !463

981:                                              ; preds = %977
  %982 = load i32, ptr %5, align 8
  %983 = and i32 %982, 65535
  %984 = icmp eq i32 %983, 30
  br i1 %984, label %985, label %1024, !prof !464

985:                                              ; preds = %981
  %986 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %987 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %988 = load ptr, ptr %987, align 8, !tbaa !193
  %989 = load i32, ptr %988, align 8
  %990 = and i32 %989, 65535
  %991 = icmp eq i32 %990, 30
  br i1 %991, label %992, label %1024, !prof !465

992:                                              ; preds = %985
  %993 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %994 = load i64, ptr %993, align 8, !tbaa !263
  %995 = getelementptr inbounds %struct.rtx_def, ptr %988, i64 0, i32 1
  %996 = load i64, ptr %995, align 8, !tbaa !193
  %997 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %998 = load i64, ptr %997, align 8, !tbaa !193
  %999 = and i64 %998, %996
  %1000 = icmp eq i64 %999, %996
  br i1 %1000, label %1001, label %1005, !prof !466

1001:                                             ; preds = %992
  %1002 = load ptr, ptr %986, align 8, !tbaa !193
  %1003 = tail call i32 @side_effects_p(ptr noundef %1002) #9
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %2545, label %1005

1005:                                             ; preds = %1001, %992
  %1006 = or i64 %998, %996
  %1007 = and i64 %1006, %994
  %1008 = icmp eq i64 %1007, %994
  br i1 %1008, label %1009, label %1012, !prof !466

1009:                                             ; preds = %1005
  %1010 = load ptr, ptr %986, align 8, !tbaa !193
  %1011 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1010, ptr noundef nonnull %3) #8
  br label %2545

1012:                                             ; preds = %1005
  %1013 = and i64 %999, %994
  %1014 = icmp eq i64 %1013, 0
  br i1 %1014, label %1015, label %1017, !prof !467

1015:                                             ; preds = %1012
  %1016 = load i32, ptr %2, align 8
  br label %1024

1017:                                             ; preds = %1012
  %1018 = xor i64 %998, -1
  %1019 = and i64 %996, %1018
  %1020 = load ptr, ptr %986, align 8, !tbaa !193
  %1021 = tail call ptr @gen_int_mode(i64 noundef %1019, i32 noundef %1) #9
  %1022 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1020, ptr noundef %1021) #8
  %1023 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1022, ptr noundef nonnull %3) #8
  br label %2545

1024:                                             ; preds = %1015, %985, %981, %977
  %1025 = phi i32 [ %1016, %1015 ], [ %978, %985 ], [ %978, %981 ], [ %978, %977 ]
  %1026 = and i32 %1025, 65535
  %1027 = icmp eq i32 %1026, 61
  br i1 %1027, label %1028, label %1047, !prof !468

1028:                                             ; preds = %1024
  %1029 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1030 = load ptr, ptr %1029, align 8, !tbaa !193
  %1031 = tail call i32 @rtx_equal_p(ptr noundef %1030, ptr noundef nonnull %3) #9
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1038, !prof !469

1033:                                             ; preds = %1028
  %1034 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1035 = load ptr, ptr %1034, align 8, !tbaa !193
  %1036 = tail call i32 @rtx_equal_p(ptr noundef %1035, ptr noundef nonnull %3) #9
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1047, label %1038, !prof !469

1038:                                             ; preds = %1033, %1028
  %1039 = load ptr, ptr %1029, align 8, !tbaa !193
  %1040 = tail call i32 @side_effects_p(ptr noundef %1039) #9
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1047

1042:                                             ; preds = %1038
  %1043 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1044 = load ptr, ptr %1043, align 8, !tbaa !193
  %1045 = tail call i32 @side_effects_p(ptr noundef %1044) #9
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %2545, label %1047

1047:                                             ; preds = %1042, %1038, %1033, %1024
  %1048 = load i32, ptr %3, align 8
  %1049 = trunc i32 %1048 to i16
  switch i16 %1049, label %1050 [
    i16 65, label %1052
    i16 39, label %1052
  ], !prof !470

1050:                                             ; preds = %1047
  %1051 = load i32, ptr %2, align 8
  br label %1052

1052:                                             ; preds = %1047, %1047, %1050
  %1053 = phi i32 [ %1051, %1050 ], [ %1048, %1047 ], [ %1048, %1047 ]
  %1054 = phi ptr [ %3, %1050 ], [ %2, %1047 ], [ %2, %1047 ]
  %1055 = phi ptr [ %2, %1050 ], [ %3, %1047 ], [ %3, %1047 ]
  %1056 = and i32 %1053, 65535
  %1057 = icmp eq i32 %1056, 65
  br i1 %1057, label %1058, label %1094, !prof !471

1058:                                             ; preds = %1052
  %1059 = load i32, ptr %1054, align 8
  %1060 = and i32 %1059, 65535
  %1061 = icmp eq i32 %1060, 68
  br i1 %1061, label %1062, label %1094, !prof !472

1062:                                             ; preds = %1058
  %1063 = getelementptr inbounds %struct.rtx_def, ptr %1055, i64 0, i32 1
  %1064 = load ptr, ptr %1063, align 8, !tbaa !193
  %1065 = getelementptr inbounds %struct.rtx_def, ptr %1054, i64 0, i32 1
  %1066 = load ptr, ptr %1065, align 8, !tbaa !193
  %1067 = tail call i32 @rtx_equal_p(ptr noundef %1064, ptr noundef %1066) #9
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1094, label %1069

1069:                                             ; preds = %1062
  %1070 = getelementptr inbounds %struct.rtx_def, ptr %1055, i64 0, i32 1, i32 0, i32 0, i64 1
  %1071 = load ptr, ptr %1070, align 8, !tbaa !193
  %1072 = load i32, ptr %1071, align 8
  %1073 = and i32 %1072, 65535
  %1074 = icmp eq i32 %1073, 30
  br i1 %1074, label %1075, label %1094

1075:                                             ; preds = %1069
  %1076 = getelementptr inbounds %struct.rtx_def, ptr %1054, i64 0, i32 1, i32 0, i32 0, i64 1
  %1077 = load ptr, ptr %1076, align 8, !tbaa !193
  %1078 = load i32, ptr %1077, align 8
  %1079 = and i32 %1078, 65535
  %1080 = icmp eq i32 %1079, 30
  br i1 %1080, label %1081, label %1094

1081:                                             ; preds = %1075
  %1082 = getelementptr inbounds %struct.rtx_def, ptr %1071, i64 0, i32 1
  %1083 = load i64, ptr %1082, align 8, !tbaa !193
  %1084 = getelementptr inbounds %struct.rtx_def, ptr %1077, i64 0, i32 1
  %1085 = load i64, ptr %1084, align 8, !tbaa !193
  %1086 = add nsw i64 %1085, %1083
  %1087 = load i8, ptr %15, align 1, !tbaa !193
  %1088 = zext i8 %1087 to i64
  %1089 = shl nuw nsw i64 %1088, 3
  %1090 = icmp eq i64 %1086, %1089
  br i1 %1090, label %1091, label %1094

1091:                                             ; preds = %1081
  %1092 = load ptr, ptr %1065, align 8, !tbaa !193
  %1093 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %1, ptr noundef %1092, ptr noundef nonnull %1071) #9
  br label %2545

1094:                                             ; preds = %1081, %1075, %1069, %1062, %1058, %1052
  %1095 = load i32, ptr %1055, align 8
  %1096 = and i32 %1095, 65535
  %1097 = icmp eq i32 %1096, 39
  br i1 %1097, label %1098, label %1169, !prof !473

1098:                                             ; preds = %1094
  %1099 = getelementptr inbounds %struct.rtx_def, ptr %1055, i64 0, i32 1
  %1100 = load ptr, ptr %1099, align 8, !tbaa !193
  %1101 = load i32, ptr %1100, align 8
  %1102 = and i32 %1101, 65535
  %1103 = icmp eq i32 %1102, 65
  br i1 %1103, label %1104, label %1169, !prof !474

1104:                                             ; preds = %1098
  %1105 = load i32, ptr %1054, align 8
  %1106 = and i32 %1105, 65535
  %1107 = icmp eq i32 %1106, 68
  br i1 %1107, label %1108, label %1169

1108:                                             ; preds = %1104
  %1109 = getelementptr inbounds %struct.rtx_def, ptr %1054, i64 0, i32 1
  %1110 = load ptr, ptr %1109, align 8, !tbaa !193
  %1111 = load i32, ptr %1110, align 8
  %1112 = and i32 %1111, 65535
  %1113 = icmp eq i32 %1112, 39
  br i1 %1113, label %1114, label %1169

1114:                                             ; preds = %1108
  %1115 = lshr i32 %1095, 16
  %1116 = and i32 %1115, 255
  %1117 = lshr i32 %1111, 16
  %1118 = and i32 %1117, 255
  %1119 = icmp eq i32 %1116, %1118
  br i1 %1119, label %1120, label %1169

1120:                                             ; preds = %1114
  %1121 = getelementptr inbounds %struct.rtx_def, ptr %1055, i64 0, i32 1, i32 0, i32 0, i64 1
  %1122 = load i32, ptr %1121, align 8, !tbaa !193
  %1123 = getelementptr inbounds %struct.rtx_def, ptr %1110, i64 0, i32 1
  %1124 = getelementptr inbounds %struct.rtx_def, ptr %1110, i64 0, i32 1, i32 0, i32 0, i64 1
  %1125 = load i32, ptr %1124, align 8, !tbaa !193
  %1126 = icmp eq i32 %1122, %1125
  br i1 %1126, label %1127, label %1169

1127:                                             ; preds = %1120
  %1128 = zext nneg i32 %1116 to i64
  %1129 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1128
  %1130 = load i8, ptr %1129, align 1, !tbaa !193
  %1131 = lshr i32 %1101, 16
  %1132 = and i32 %1131, 255
  %1133 = zext nneg i32 %1132 to i64
  %1134 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1133
  %1135 = load i8, ptr %1134, align 1, !tbaa !193
  %1136 = icmp ult i8 %1130, %1135
  br i1 %1136, label %1137, label %1169

1137:                                             ; preds = %1127
  %1138 = getelementptr inbounds %struct.rtx_def, ptr %1100, i64 0, i32 1
  %1139 = load ptr, ptr %1138, align 8, !tbaa !193
  %1140 = load ptr, ptr %1123, align 8, !tbaa !193
  %1141 = tail call i32 @rtx_equal_p(ptr noundef %1139, ptr noundef %1140) #9
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1169, label %1143

1143:                                             ; preds = %1137
  %1144 = load ptr, ptr %1099, align 8, !tbaa !193
  %1145 = getelementptr inbounds %struct.rtx_def, ptr %1144, i64 0, i32 1, i32 0, i32 0, i64 1
  %1146 = load ptr, ptr %1145, align 8, !tbaa !193
  %1147 = load i32, ptr %1146, align 8
  %1148 = and i32 %1147, 65535
  %1149 = icmp eq i32 %1148, 30
  br i1 %1149, label %1150, label %1169

1150:                                             ; preds = %1143
  %1151 = getelementptr inbounds %struct.rtx_def, ptr %1054, i64 0, i32 1, i32 0, i32 0, i64 1
  %1152 = load ptr, ptr %1151, align 8, !tbaa !193
  %1153 = load i32, ptr %1152, align 8
  %1154 = and i32 %1153, 65535
  %1155 = icmp eq i32 %1154, 30
  br i1 %1155, label %1156, label %1169

1156:                                             ; preds = %1150
  %1157 = getelementptr inbounds %struct.rtx_def, ptr %1146, i64 0, i32 1
  %1158 = load i64, ptr %1157, align 8, !tbaa !193
  %1159 = getelementptr inbounds %struct.rtx_def, ptr %1152, i64 0, i32 1
  %1160 = load i64, ptr %1159, align 8, !tbaa !193
  %1161 = add nsw i64 %1160, %1158
  %1162 = load i8, ptr %15, align 1, !tbaa !193
  %1163 = zext i8 %1162 to i64
  %1164 = shl nuw nsw i64 %1163, 3
  %1165 = icmp eq i64 %1161, %1164
  br i1 %1165, label %1166, label %1169

1166:                                             ; preds = %1156
  %1167 = load ptr, ptr %1109, align 8, !tbaa !193
  %1168 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %1, ptr noundef %1167, ptr noundef nonnull %1146) #9
  br label %2545

1169:                                             ; preds = %1156, %1150, %1143, %1137, %1127, %1120, %1114, %1108, %1104, %1098, %1094
  %1170 = load i32, ptr %3, align 8
  %1171 = and i32 %1170, 65535
  %1172 = icmp eq i32 %1171, 30
  br i1 %1172, label %1173, label %1205, !prof !475

1173:                                             ; preds = %1169
  %1174 = load i8, ptr %15, align 1, !tbaa !193
  %1175 = icmp ult i8 %1174, 9
  br i1 %1175, label %1180, label %1176, !prof !476

1176:                                             ; preds = %1173
  %1177 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1178 = load i64, ptr %1177, align 8, !tbaa !193
  %1179 = icmp sgt i64 %1178, 0
  br i1 %1179, label %1180, label %1205

1180:                                             ; preds = %1176, %1173
  %1181 = load i32, ptr %2, align 8
  %1182 = and i32 %1181, 65535
  %1183 = icmp eq i32 %1182, 61
  br i1 %1183, label %1184, label %1205, !prof !477

1184:                                             ; preds = %1180
  %1185 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1186 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1187 = load ptr, ptr %1186, align 8, !tbaa !193
  %1188 = load i32, ptr %1187, align 8
  %1189 = and i32 %1188, 65535
  %1190 = icmp eq i32 %1189, 30
  br i1 %1190, label %1191, label %1205, !prof !478

1191:                                             ; preds = %1184
  %1192 = getelementptr inbounds %struct.rtx_def, ptr %1187, i64 0, i32 1
  %1193 = load i64, ptr %1192, align 8, !tbaa !193
  %1194 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1195 = load i64, ptr %1194, align 8, !tbaa !193
  %1196 = and i64 %1195, %1193
  %1197 = icmp eq i64 %1196, 0
  br i1 %1197, label %1205, label %1198, !prof !478

1198:                                             ; preds = %1191
  %1199 = load ptr, ptr %1185, align 8, !tbaa !193
  %1200 = xor i64 %1195, -1
  %1201 = and i64 %1193, %1200
  %1202 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1201) #9
  %1203 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1199, ptr noundef %1202) #8
  %1204 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1203, ptr noundef nonnull %3) #8
  br label %2545

1205:                                             ; preds = %1191, %1184, %1180, %1176, %1169
  %1206 = load i32, ptr %5, align 8
  %1207 = and i32 %1206, 65535
  %1208 = icmp eq i32 %1207, 30
  br i1 %1208, label %1209, label %1251, !prof !475

1209:                                             ; preds = %1205
  %1210 = load i32, ptr %2, align 8
  %1211 = and i32 %1210, 65535
  %1212 = icmp eq i32 %1211, 67
  br i1 %1212, label %1213, label %1251, !prof !479

1213:                                             ; preds = %1209
  %1214 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1215 = load ptr, ptr %1214, align 8, !tbaa !193
  %1216 = load i32, ptr %1215, align 8
  %1217 = and i32 %1216, 65535
  %1218 = icmp eq i32 %1217, 49
  br i1 %1218, label %1219, label %1251

1219:                                             ; preds = %1213
  %1220 = getelementptr inbounds %struct.rtx_def, ptr %1215, i64 0, i32 1, i32 0, i32 0, i64 1
  %1221 = load ptr, ptr %1220, align 8, !tbaa !193
  %1222 = load i32, ptr %1221, align 8
  %1223 = and i32 %1222, 65535
  %1224 = icmp eq i32 %1223, 30
  br i1 %1224, label %1225, label %1251

1225:                                             ; preds = %1219
  %1226 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1227 = load ptr, ptr %1226, align 8, !tbaa !193
  %1228 = load i32, ptr %1227, align 8
  %1229 = and i32 %1228, 65535
  %1230 = icmp eq i32 %1229, 30
  br i1 %1230, label %1231, label %1251

1231:                                             ; preds = %1225
  %1232 = getelementptr inbounds %struct.rtx_def, ptr %1227, i64 0, i32 1
  %1233 = load i64, ptr %1232, align 8, !tbaa !193
  %1234 = icmp slt i64 %1233, 64
  br i1 %1234, label %1235, label %1251

1235:                                             ; preds = %1231
  %1236 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1237 = load i64, ptr %1236, align 8, !tbaa !193
  %1238 = and i64 %1233, 4294967295
  %1239 = shl i64 %1237, %1238
  %1240 = ashr exact i64 %1239, %1238
  %1241 = icmp eq i64 %1240, %1237
  br i1 %1241, label %1242, label %1251

1242:                                             ; preds = %1235
  %1243 = tail call i64 @nonzero_bits(ptr noundef nonnull %1215, i32 noundef %1) #9
  %1244 = and i64 %1243, %1239
  %1245 = icmp eq i64 %1244, 0
  br i1 %1245, label %1246, label %1251

1246:                                             ; preds = %1242
  %1247 = load ptr, ptr %1214, align 8, !tbaa !193
  %1248 = tail call ptr @plus_constant(ptr noundef %1247, i64 noundef %1239) #9
  %1249 = load ptr, ptr %1226, align 8, !tbaa !193
  %1250 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %1, ptr noundef %1248, ptr noundef %1249) #8
  br label %2545

1251:                                             ; preds = %1235, %1242, %1231, %1225, %1219, %1213, %1209, %1205
  %1252 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 62, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %1253 = icmp eq ptr %1252, null
  br i1 %1253, label %2544, label %2545, !prof !480

1254:                                             ; preds = %6
  %1255 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %1256 = icmp eq ptr %1255, %5
  br i1 %1256, label %2545, label %1257, !prof !197

1257:                                             ; preds = %1254
  %1258 = load i32, ptr %5, align 8
  %1259 = and i32 %1258, 65535
  %1260 = icmp eq i32 %1259, 30
  br i1 %1260, label %1261, label %1270, !prof !196

1261:                                             ; preds = %1257
  %1262 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1263 = load i64, ptr %1262, align 8, !tbaa !193
  %1264 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1265 = load i64, ptr %1264, align 8, !tbaa !263
  %1266 = and i64 %1265, %1263
  %1267 = icmp eq i64 %1266, %1265
  br i1 %1267, label %1268, label %1270, !prof !197

1268:                                             ; preds = %1261
  %1269 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %2, i32 noundef %1) #8
  br label %2545

1270:                                             ; preds = %1261, %1257
  %1271 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef nonnull %5) #9
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1284, label %1273, !prof !196

1273:                                             ; preds = %1270
  %1274 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1276, label %1284

1276:                                             ; preds = %1273
  %1277 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1278 = load i8, ptr %1277, align 1, !tbaa !193
  %1279 = icmp eq i8 %1278, 1
  br i1 %1279, label %1284, label %1280

1280:                                             ; preds = %1276
  %1281 = sext i32 %1 to i64
  %1282 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1281
  %1283 = load ptr, ptr %1282, align 8, !tbaa !243
  br label %2545

1284:                                             ; preds = %1276, %1273, %1270
  %1285 = load i32, ptr %3, align 8
  %1286 = trunc i32 %1285 to i16
  switch i16 %1286, label %1310 [
    i16 30, label %1287
    i16 32, label %1287
  ], !prof !481

1287:                                             ; preds = %1284, %1284
  %1288 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %3) #8, !range !371
  %1289 = icmp eq i8 %1288, 0
  br i1 %1289, label %1292, label %1290, !prof !196

1290:                                             ; preds = %1287
  %1291 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #8
  br label %2545

1292:                                             ; preds = %1287
  switch i16 %1286, label %1310 [
    i16 30, label %1293
    i16 32, label %1293
  ], !prof !481

1293:                                             ; preds = %1292, %1292
  %1294 = load i32, ptr %2, align 8
  %1295 = and i32 %1294, 65535
  %1296 = icmp eq i32 %1295, 49
  br i1 %1296, label %1297, label %1310, !prof !197

1297:                                             ; preds = %1293
  %1298 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1299 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1300 = load ptr, ptr %1299, align 8, !tbaa !193
  %1301 = load i32, ptr %1300, align 8
  %1302 = trunc i32 %1301 to i16
  switch i16 %1302, label %1310 [
    i16 30, label %1303
    i16 32, label %1303
  ]

1303:                                             ; preds = %1297, %1297
  %1304 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %1300) #8, !range !371
  %1305 = icmp eq i8 %1304, 0
  br i1 %1305, label %1310, label %1306

1306:                                             ; preds = %1303
  %1307 = load ptr, ptr %1298, align 8, !tbaa !193
  %1308 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %1300) #8
  %1309 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1307, ptr noundef %1308) #8
  br label %2545

1310:                                             ; preds = %1284, %1297, %1292, %1303, %1293
  %1311 = load i8, ptr %15, align 1, !tbaa !193
  %1312 = icmp ult i8 %1311, 9
  br i1 %1312, label %1313, label %1320, !prof !196

1313:                                             ; preds = %1310
  %1314 = tail call i64 @nonzero_bits(ptr noundef %2, i32 noundef %1) #9
  %1315 = tail call i64 @nonzero_bits(ptr noundef nonnull %3, i32 noundef %1) #9
  %1316 = and i64 %1315, %1314
  %1317 = icmp eq i64 %1316, 0
  br i1 %1317, label %1318, label %1320, !prof !197

1318:                                             ; preds = %1313
  %1319 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #8
  br label %2545

1320:                                             ; preds = %1313, %1310
  %1321 = load i32, ptr %2, align 8
  %1322 = and i32 %1321, 65535
  %1323 = icmp eq i32 %1322, 64
  br i1 %1323, label %1324, label %1327, !prof !197

1324:                                             ; preds = %1320
  %1325 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1326 = load ptr, ptr %1325, align 8, !tbaa !193
  br label %1327

1327:                                             ; preds = %1324, %1320
  %1328 = phi i32 [ 1, %1324 ], [ 0, %1320 ]
  %1329 = phi ptr [ %1326, %1324 ], [ %2, %1320 ]
  %1330 = load i32, ptr %3, align 8
  %1331 = and i32 %1330, 65535
  %1332 = icmp eq i32 %1331, 64
  br i1 %1332, label %1333, label %1337, !prof !197

1333:                                             ; preds = %1327
  %1334 = add nuw nsw i32 %1328, 1
  %1335 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1336 = load ptr, ptr %1335, align 8, !tbaa !193
  br label %1337

1337:                                             ; preds = %1333, %1327
  %1338 = phi i32 [ %1334, %1333 ], [ %1328, %1327 ]
  %1339 = phi ptr [ %1336, %1333 ], [ %3, %1327 ]
  switch i32 %1338, label %1345 [
    i32 2, label %1340
    i32 1, label %1342
  ], !prof !482

1340:                                             ; preds = %1337
  %1341 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1329, ptr noundef %1339) #8
  br label %2545

1342:                                             ; preds = %1337
  %1343 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1329, ptr noundef %1339) #8
  %1344 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1343, i32 noundef %1) #8
  br label %2545

1345:                                             ; preds = %1337
  %1346 = load i32, ptr %1329, align 8
  %1347 = and i32 %1346, 65535
  %1348 = icmp eq i32 %1347, 61
  br i1 %1348, label %1349, label %1362, !prof !483

1349:                                             ; preds = %1345
  %1350 = getelementptr inbounds %struct.rtx_def, ptr %1329, i64 0, i32 1
  %1351 = getelementptr inbounds %struct.rtx_def, ptr %1329, i64 0, i32 1, i32 0, i32 0, i64 1
  %1352 = load ptr, ptr %1351, align 8, !tbaa !193
  %1353 = tail call i32 @rtx_equal_p(ptr noundef %1352, ptr noundef %1339) #9
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1362, label %1355, !prof !484

1355:                                             ; preds = %1349
  %1356 = tail call i32 @side_effects_p(ptr noundef %1339) #9
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1358, label %1362, !prof !485

1358:                                             ; preds = %1355
  %1359 = load ptr, ptr %1350, align 8, !tbaa !193
  %1360 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1359, i32 noundef %1) #8
  %1361 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1360, ptr noundef %1339) #8
  br label %2545

1362:                                             ; preds = %1355, %1349, %1345
  %1363 = load i32, ptr %1329, align 8
  %1364 = and i32 %1363, 65535
  %1365 = icmp eq i32 %1364, 61
  br i1 %1365, label %1366, label %1379, !prof !486

1366:                                             ; preds = %1362
  %1367 = getelementptr inbounds %struct.rtx_def, ptr %1329, i64 0, i32 1
  %1368 = load ptr, ptr %1367, align 8, !tbaa !193
  %1369 = tail call i32 @rtx_equal_p(ptr noundef %1368, ptr noundef %1339) #9
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1379, label %1371

1371:                                             ; preds = %1366
  %1372 = tail call i32 @side_effects_p(ptr noundef %1339) #9
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1374, label %1379

1374:                                             ; preds = %1371
  %1375 = getelementptr inbounds %struct.rtx_def, ptr %1329, i64 0, i32 1, i32 0, i32 0, i64 1
  %1376 = load ptr, ptr %1375, align 8, !tbaa !193
  %1377 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1376, i32 noundef %1) #8
  %1378 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1377, ptr noundef %1339) #8
  br label %2545

1379:                                             ; preds = %1362, %1366, %1371
  %1380 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  %1381 = icmp eq ptr %1380, %5
  br i1 %1381, label %1382, label %1394, !prof !487

1382:                                             ; preds = %1379
  %1383 = load i32, ptr %1329, align 8
  %1384 = and i32 %1383, 65535
  %1385 = zext nneg i32 %1384 to i64
  %1386 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1385
  %1387 = load i32, ptr %1386, align 4, !tbaa !200
  %1388 = icmp ult i32 %1387, 2
  br i1 %1388, label %1389, label %1397, !prof !488

1389:                                             ; preds = %1382
  %1390 = tail call ptr @reversed_comparison(ptr noundef nonnull %1329, i32 noundef %1) #9
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1392, label %2545

1392:                                             ; preds = %1389
  %1393 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  br label %1394

1394:                                             ; preds = %1392, %1379
  %1395 = phi ptr [ %1393, %1392 ], [ %1380, %1379 ]
  %1396 = icmp eq ptr %1395, %5
  br i1 %1396, label %1397, label %1421, !prof !489

1397:                                             ; preds = %1382, %1394
  %1398 = load i32, ptr %1329, align 8
  %1399 = and i32 %1398, 65535
  %1400 = icmp eq i32 %1399, 68
  br i1 %1400, label %1401, label %1421, !prof !488

1401:                                             ; preds = %1397
  %1402 = getelementptr inbounds %struct.rtx_def, ptr %1329, i64 0, i32 1
  %1403 = getelementptr inbounds %struct.rtx_def, ptr %1329, i64 0, i32 1, i32 0, i32 0, i64 1
  %1404 = load ptr, ptr %1403, align 8, !tbaa !193
  %1405 = load i32, ptr %1404, align 8
  %1406 = and i32 %1405, 65535
  %1407 = icmp eq i32 %1406, 30
  br i1 %1407, label %1408, label %1421

1408:                                             ; preds = %1401
  %1409 = getelementptr inbounds %struct.rtx_def, ptr %1404, i64 0, i32 1
  %1410 = load i64, ptr %1409, align 8, !tbaa !193
  %1411 = load i8, ptr %15, align 1, !tbaa !193
  %1412 = zext i8 %1411 to i32
  %1413 = shl nuw nsw i32 %1412, 3
  %1414 = add nsw i32 %1413, -1
  %1415 = sext i32 %1414 to i64
  %1416 = icmp eq i64 %1410, %1415
  br i1 %1416, label %1417, label %1421

1417:                                             ; preds = %1408
  %1418 = load ptr, ptr %1402, align 8, !tbaa !193
  %1419 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %1420 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef %1, ptr noundef %1418, ptr noundef %1419) #9
  br label %2545

1421:                                             ; preds = %1408, %1401, %1397, %1394
  %1422 = load i8, ptr %15, align 1, !tbaa !193
  %1423 = icmp ult i8 %1422, 9
  br i1 %1423, label %1424, label %1447, !prof !490

1424:                                             ; preds = %1421
  %1425 = shl nuw nsw i8 %1422, 3
  %1426 = zext nneg i8 %1425 to i64
  %1427 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1428 = load i64, ptr %1427, align 8, !tbaa !263
  %1429 = and i64 %1428, 1
  %1430 = add nuw nsw i64 %1426, 4294967295
  %1431 = and i64 %1430, 4294967295
  %1432 = shl nuw i64 1, %1431
  %1433 = icmp eq i64 %1429, %1432
  br i1 %1433, label %1434, label %1447, !prof !486

1434:                                             ; preds = %1424
  %1435 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  %1436 = icmp eq ptr %1435, %5
  br i1 %1436, label %1437, label %1447

1437:                                             ; preds = %1434
  %1438 = load i32, ptr %1329, align 8
  %1439 = and i32 %1438, 65535
  %1440 = zext nneg i32 %1439 to i64
  %1441 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1440
  %1442 = load i32, ptr %1441, align 4, !tbaa !200
  %1443 = icmp ult i32 %1442, 2
  br i1 %1443, label %1444, label %1447

1444:                                             ; preds = %1437
  %1445 = tail call ptr @reversed_comparison(ptr noundef nonnull %1329, i32 noundef %1) #9
  %1446 = icmp eq ptr %1445, null
  br i1 %1446, label %1447, label %2545

1447:                                             ; preds = %1444, %1437, %1434, %1424, %1421
  %1448 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 63, i32 noundef %1, ptr noundef nonnull %1329, ptr noundef %1339) #8
  %1449 = icmp eq ptr %1448, null
  br i1 %1449, label %2544, label %2545, !prof !490

1450:                                             ; preds = %6
  %1451 = sext i32 %1 to i64
  %1452 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1451
  %1453 = load ptr, ptr %1452, align 8, !tbaa !243
  %1454 = icmp eq ptr %1453, %5
  br i1 %1454, label %1455, label %1460, !prof !491

1455:                                             ; preds = %1450
  %1456 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %2545, label %1458

1458:                                             ; preds = %1455
  %1459 = load i8, ptr %15, align 1, !tbaa !193
  br label %1460

1460:                                             ; preds = %1458, %1450
  %1461 = phi i8 [ %1459, %1458 ], [ %16, %1450 ]
  %1462 = icmp ult i8 %1461, 9
  br i1 %1462, label %1463, label %1486, !prof !492

1463:                                             ; preds = %1460
  %1464 = tail call i64 @nonzero_bits(ptr noundef %4, i32 noundef %1) #9
  %1465 = load i32, ptr %5, align 8
  %1466 = and i32 %1465, 65535
  %1467 = icmp eq i32 %1466, 30
  br i1 %1467, label %1468, label %1474, !prof !492

1468:                                             ; preds = %1463
  %1469 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1470 = load i64, ptr %1469, align 8, !tbaa !193
  %1471 = xor i64 %1470, -1
  %1472 = and i64 %1464, %1471
  %1473 = icmp eq i64 %1472, 0
  br i1 %1473, label %2545, label %1474

1474:                                             ; preds = %1468, %1463
  %1475 = tail call i64 @nonzero_bits(ptr noundef nonnull %5, i32 noundef %1) #9
  %1476 = and i64 %1475, %1464
  %1477 = icmp eq i64 %1476, 0
  br i1 %1477, label %1478, label %1486, !prof !491

1478:                                             ; preds = %1474
  %1479 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1481, label %1486

1481:                                             ; preds = %1478
  %1482 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1484, label %1486

1484:                                             ; preds = %1481
  %1485 = load ptr, ptr %1452, align 8, !tbaa !243
  br label %2545

1486:                                             ; preds = %1474, %1478, %1481, %1460
  %1487 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1496, label %1489, !prof !492

1489:                                             ; preds = %1486
  %1490 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1492, label %1496

1492:                                             ; preds = %1489
  %1493 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1494 = load i8, ptr %1493, align 1, !tbaa !193
  %1495 = icmp eq i8 %1494, 1
  br i1 %1495, label %1496, label %2545

1496:                                             ; preds = %1492, %1489, %1486
  %1497 = load i32, ptr %2, align 8
  %1498 = and i32 %1497, 65535
  %1499 = icmp eq i32 %1498, 64
  br i1 %1499, label %1500, label %1505, !prof !493

1500:                                             ; preds = %1496
  %1501 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1502 = load ptr, ptr %1501, align 8, !tbaa !193
  %1503 = tail call i32 @rtx_equal_p(ptr noundef %1502, ptr noundef %3) #9
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1505, label %1514, !prof !494

1505:                                             ; preds = %1500, %1496
  %1506 = load i32, ptr %3, align 8
  %1507 = and i32 %1506, 65535
  %1508 = icmp eq i32 %1507, 64
  br i1 %1508, label %1509, label %1523, !prof !491

1509:                                             ; preds = %1505
  %1510 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1511 = load ptr, ptr %1510, align 8, !tbaa !193
  %1512 = tail call i32 @rtx_equal_p(ptr noundef %1511, ptr noundef nonnull %2) #9
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1523, label %1514

1514:                                             ; preds = %1509, %1500
  %1515 = tail call i32 @side_effects_p(ptr noundef nonnull %2) #9
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1517, label %1523

1517:                                             ; preds = %1514
  %1518 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1519 = load i8, ptr %1518, align 1, !tbaa !193
  %1520 = icmp eq i8 %1519, 1
  br i1 %1520, label %1523, label %1521

1521:                                             ; preds = %1517
  %1522 = load ptr, ptr %1452, align 8, !tbaa !243
  br label %2545

1523:                                             ; preds = %1517, %1514, %1509, %1505
  %1524 = load i32, ptr %2, align 8
  %1525 = and i32 %1524, 65534
  %1526 = icmp eq i32 %1525, 98
  br i1 %1526, label %1527, label %1552, !prof !495

1527:                                             ; preds = %1523
  %1528 = load i32, ptr %5, align 8
  %1529 = and i32 %1528, 65535
  %1530 = icmp eq i32 %1529, 30
  br i1 %1530, label %1531, label %1603

1531:                                             ; preds = %1527
  %1532 = load i8, ptr %15, align 1, !tbaa !193
  %1533 = icmp ult i8 %1532, 9
  br i1 %1533, label %1534, label %1603

1534:                                             ; preds = %1531
  %1535 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1536 = load ptr, ptr %1535, align 8, !tbaa !193
  %1537 = load i32, ptr %1536, align 8
  %1538 = lshr i32 %1537, 16
  %1539 = and i32 %1538, 255
  %1540 = zext nneg i32 %1539 to i64
  %1541 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %1540
  %1542 = load i64, ptr %1541, align 8, !tbaa !263
  %1543 = xor i64 %1542, -1
  %1544 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1545 = load i64, ptr %1544, align 8, !tbaa !193
  %1546 = and i64 %1545, %1543
  %1547 = icmp eq i64 %1546, 0
  br i1 %1547, label %1548, label %1603

1548:                                             ; preds = %1534
  %1549 = tail call ptr @gen_int_mode(i64 noundef %1545, i32 noundef %1539) #9
  %1550 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1539, ptr noundef nonnull %1536, ptr noundef %1549) #8
  %1551 = tail call ptr @simplify_gen_unary(i32 noundef 99, i32 noundef %1, ptr noundef %1550, i32 noundef %1539) #8
  br label %2545

1552:                                             ; preds = %1523
  %1553 = trunc i32 %1524 to i16
  switch i16 %1553, label %1603 [
    i16 100, label %1554
    i16 62, label %1569
    i16 63, label %1590
  ], !prof !496

1554:                                             ; preds = %1552
  %1555 = load i32, ptr %5, align 8
  %1556 = and i32 %1555, 65535
  %1557 = icmp eq i32 %1556, 30
  br i1 %1557, label %1558, label %1603

1558:                                             ; preds = %1554
  %1559 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1560 = load ptr, ptr %1559, align 8, !tbaa !193
  %1561 = load i32, ptr %1560, align 8
  %1562 = lshr i32 %1561, 16
  %1563 = and i32 %1562, 255
  %1564 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1565 = load i64, ptr %1564, align 8, !tbaa !193
  %1566 = tail call ptr @gen_int_mode(i64 noundef %1565, i32 noundef %1563) #9
  %1567 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1563, ptr noundef nonnull %1560, ptr noundef %1566) #8
  %1568 = tail call ptr @simplify_gen_unary(i32 noundef 100, i32 noundef %1, ptr noundef %1567, i32 noundef %1563) #8
  br label %2545

1569:                                             ; preds = %1552
  %1570 = load i32, ptr %5, align 8
  %1571 = and i32 %1570, 65535
  %1572 = icmp eq i32 %1571, 30
  br i1 %1572, label %1573, label %1603, !prof !497

1573:                                             ; preds = %1569
  %1574 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1575 = load ptr, ptr %1574, align 8, !tbaa !193
  %1576 = load i32, ptr %1575, align 8
  %1577 = and i32 %1576, 65535
  %1578 = icmp eq i32 %1577, 30
  br i1 %1578, label %1579, label %1603, !prof !498

1579:                                             ; preds = %1573
  %1580 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1581 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1582 = load i64, ptr %1581, align 8, !tbaa !193
  %1583 = getelementptr inbounds %struct.rtx_def, ptr %1575, i64 0, i32 1
  %1584 = load i64, ptr %1583, align 8, !tbaa !193
  %1585 = and i64 %1584, %1582
  %1586 = load ptr, ptr %1580, align 8, !tbaa !193
  %1587 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1586, ptr noundef %3) #8
  %1588 = tail call ptr @gen_int_mode(i64 noundef %1585, i32 noundef %1) #9
  %1589 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1587, ptr noundef %1588) #8
  br label %2545

1590:                                             ; preds = %1552
  %1591 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1592 = load ptr, ptr %1591, align 8, !tbaa !193
  %1593 = tail call i32 @rtx_equal_p(ptr noundef %1592, ptr noundef %3) #9
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1603, label %1595

1595:                                             ; preds = %1590
  %1596 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1598, label %1603

1598:                                             ; preds = %1595
  %1599 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1600 = load ptr, ptr %1599, align 8, !tbaa !193
  %1601 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1600, i32 noundef %1) #8
  %1602 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1601, ptr noundef %3) #8
  br label %2545

1603:                                             ; preds = %1552, %1527, %1531, %1534, %1554, %1569, %1573, %1595, %1590
  %1604 = load i32, ptr %2, align 8
  %1605 = and i32 %1604, 65535
  %1606 = icmp eq i32 %1605, 63
  br i1 %1606, label %1607, label %1620, !prof !499

1607:                                             ; preds = %1603
  %1608 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1609 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1610 = load ptr, ptr %1609, align 8, !tbaa !193
  %1611 = tail call i32 @rtx_equal_p(ptr noundef %1610, ptr noundef %3) #9
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1620, label %1613

1613:                                             ; preds = %1607
  %1614 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1616, label %1620

1616:                                             ; preds = %1613
  %1617 = load ptr, ptr %1608, align 8, !tbaa !193
  %1618 = tail call ptr @simplify_gen_unary(i32 noundef 64, i32 noundef %1, ptr noundef %1617, i32 noundef %1) #8
  %1619 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1618, ptr noundef %3) #8
  br label %2545

1620:                                             ; preds = %1613, %1607, %1603
  %1621 = load i32, ptr %2, align 8
  %1622 = and i32 %1621, 65535
  %1623 = icmp eq i32 %1622, 64
  br i1 %1623, label %1624, label %1643, !prof !500

1624:                                             ; preds = %1620
  %1625 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1626 = load ptr, ptr %1625, align 8, !tbaa !193
  %1627 = load i32, ptr %1626, align 8
  %1628 = and i32 %1627, 65535
  %1629 = icmp eq i32 %1628, 63
  br i1 %1629, label %1630, label %1643, !prof !501

1630:                                             ; preds = %1624
  %1631 = getelementptr inbounds %struct.rtx_def, ptr %1626, i64 0, i32 1
  %1632 = load ptr, ptr %1631, align 8, !tbaa !193
  %1633 = tail call i32 @rtx_equal_p(ptr noundef %1632, ptr noundef %3) #9
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1643, label %1635

1635:                                             ; preds = %1630
  %1636 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1638, label %1643

1638:                                             ; preds = %1635
  %1639 = load ptr, ptr %1625, align 8, !tbaa !193
  %1640 = getelementptr inbounds %struct.rtx_def, ptr %1639, i64 0, i32 1, i32 0, i32 0, i64 1
  %1641 = load ptr, ptr %1640, align 8, !tbaa !193
  %1642 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1641, ptr noundef %3) #8
  br label %2545

1643:                                             ; preds = %1635, %1630, %1624, %1620
  %1644 = load i32, ptr %2, align 8
  %1645 = and i32 %1644, 65535
  %1646 = icmp eq i32 %1645, 64
  br i1 %1646, label %1647, label %1666, !prof !500

1647:                                             ; preds = %1643
  %1648 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1649 = load ptr, ptr %1648, align 8, !tbaa !193
  %1650 = load i32, ptr %1649, align 8
  %1651 = and i32 %1650, 65535
  %1652 = icmp eq i32 %1651, 63
  br i1 %1652, label %1653, label %1666, !prof !501

1653:                                             ; preds = %1647
  %1654 = getelementptr inbounds %struct.rtx_def, ptr %1649, i64 0, i32 1, i32 0, i32 0, i64 1
  %1655 = load ptr, ptr %1654, align 8, !tbaa !193
  %1656 = tail call i32 @rtx_equal_p(ptr noundef %1655, ptr noundef %3) #9
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1666, label %1658

1658:                                             ; preds = %1653
  %1659 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1660 = icmp eq i32 %1659, 0
  br i1 %1660, label %1661, label %1666

1661:                                             ; preds = %1658
  %1662 = load ptr, ptr %1648, align 8, !tbaa !193
  %1663 = getelementptr inbounds %struct.rtx_def, ptr %1662, i64 0, i32 1
  %1664 = load ptr, ptr %1663, align 8, !tbaa !193
  %1665 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1664, ptr noundef %3) #8
  br label %2545

1666:                                             ; preds = %1658, %1653, %1647, %1643
  %1667 = load i32, ptr %2, align 8
  %1668 = and i32 %1667, 65535
  %1669 = icmp eq i32 %1668, 62
  br i1 %1669, label %1670, label %1689, !prof !502

1670:                                             ; preds = %1666
  %1671 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1672 = load ptr, ptr %1671, align 8, !tbaa !193
  %1673 = tail call i32 @rtx_equal_p(ptr noundef %1672, ptr noundef %3) #9
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %1675, label %1680, !prof !503

1675:                                             ; preds = %1670
  %1676 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1677 = load ptr, ptr %1676, align 8, !tbaa !193
  %1678 = tail call i32 @rtx_equal_p(ptr noundef %1677, ptr noundef %3) #9
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1689, label %1680, !prof !503

1680:                                             ; preds = %1675, %1670
  %1681 = load ptr, ptr %1671, align 8, !tbaa !193
  %1682 = tail call i32 @side_effects_p(ptr noundef %1681) #9
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1684, label %1689

1684:                                             ; preds = %1680
  %1685 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1686 = load ptr, ptr %1685, align 8, !tbaa !193
  %1687 = tail call i32 @side_effects_p(ptr noundef %1686) #9
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %2545, label %1689

1689:                                             ; preds = %1684, %1680, %1675, %1666
  %1690 = load i32, ptr %5, align 8
  %1691 = and i32 %1690, 65535
  %1692 = icmp eq i32 %1691, 30
  br i1 %1692, label %1693, label %1769, !prof !504

1693:                                             ; preds = %1689
  %1694 = load i8, ptr %15, align 1, !tbaa !193
  %1695 = icmp ult i8 %1694, 9
  br i1 %1695, label %1696, label %1769, !prof !504

1696:                                             ; preds = %1693
  %1697 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1698 = load i64, ptr %1697, align 8, !tbaa !193
  %1699 = icmp eq i64 %1698, -1
  br i1 %1699, label %1769, label %1700, !prof !499

1700:                                             ; preds = %1696
  %1701 = add nuw nsw i64 %1698, 1
  %1702 = and i64 %1701, %1698
  %1703 = icmp eq i64 %1702, 0
  br i1 %1703, label %1704, label %1769, !prof !505

1704:                                             ; preds = %1700
  %1705 = load i32, ptr %2, align 8
  %1706 = and i32 %1705, 65535
  %1707 = add nsw i32 %1706, -49
  %1708 = icmp ult i32 %1707, 2
  br i1 %1708, label %1709, label %1769, !prof !506

1709:                                             ; preds = %1704
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #10
  %1710 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1711 = load ptr, ptr %1710, align 8, !tbaa !193
  store ptr %1711, ptr %12, align 16, !tbaa !243
  %1712 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1713 = load ptr, ptr %1712, align 8, !tbaa !193
  %1714 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 1
  store ptr %1713, ptr %1714, align 8, !tbaa !243
  %1715 = load i32, ptr %1713, align 8
  %1716 = and i32 %1715, 65535
  %1717 = icmp eq i32 %1716, 30
  br i1 %1717, label %1718, label %1723, !prof !507

1718:                                             ; preds = %1709
  %1719 = getelementptr inbounds %struct.rtx_def, ptr %1713, i64 0, i32 1
  %1720 = load i64, ptr %1719, align 8, !tbaa !193
  %1721 = and i64 %1720, %1698
  %1722 = icmp eq i64 %1721, 0
  br i1 %1722, label %1765, label %1723, !prof !508

1723:                                             ; preds = %1718, %1709
  br label %1724

1724:                                             ; preds = %1723, %1756
  %1725 = phi i1 [ false, %1756 ], [ true, %1723 ]
  %1726 = phi i64 [ 1, %1756 ], [ 0, %1723 ]
  %1727 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 %1726
  %1728 = load ptr, ptr %1727, align 8, !tbaa !243
  %1729 = load i32, ptr %1728, align 8
  %1730 = trunc i32 %1729 to i16
  switch i16 %1730, label %1756 [
    i16 61, label %1731
    i16 62, label %1742
    i16 63, label %1742
  ], !prof !509

1731:                                             ; preds = %1724
  %1732 = getelementptr inbounds %struct.rtx_def, ptr %1728, i64 0, i32 1, i32 0, i32 0, i64 1
  %1733 = load ptr, ptr %1732, align 8, !tbaa !193
  %1734 = load i32, ptr %1733, align 8
  %1735 = and i32 %1734, 65535
  %1736 = icmp eq i32 %1735, 30
  br i1 %1736, label %1737, label %1756

1737:                                             ; preds = %1731
  %1738 = getelementptr inbounds %struct.rtx_def, ptr %1733, i64 0, i32 1
  %1739 = load i64, ptr %1738, align 8, !tbaa !193
  %1740 = and i64 %1739, %1698
  %1741 = icmp eq i64 %1740, %1698
  br i1 %1741, label %1753, label %1756

1742:                                             ; preds = %1724, %1724
  %1743 = getelementptr inbounds %struct.rtx_def, ptr %1728, i64 0, i32 1, i32 0, i32 0, i64 1
  %1744 = load ptr, ptr %1743, align 8, !tbaa !193
  %1745 = load i32, ptr %1744, align 8
  %1746 = and i32 %1745, 65535
  %1747 = icmp eq i32 %1746, 30
  br i1 %1747, label %1748, label %1756

1748:                                             ; preds = %1742
  %1749 = getelementptr inbounds %struct.rtx_def, ptr %1744, i64 0, i32 1
  %1750 = load i64, ptr %1749, align 8, !tbaa !193
  %1751 = and i64 %1750, %1698
  %1752 = icmp eq i64 %1751, 0
  br i1 %1752, label %1753, label %1756

1753:                                             ; preds = %1748, %1737
  %1754 = getelementptr inbounds %struct.rtx_def, ptr %1728, i64 0, i32 1
  %1755 = load ptr, ptr %1754, align 8, !tbaa !193
  store ptr %1755, ptr %1727, align 8, !tbaa !243
  br label %1756

1756:                                             ; preds = %1753, %1737, %1731, %1748, %1742, %1724
  br i1 %1725, label %1724, label %1757, !prof !510, !llvm.loop !511

1757:                                             ; preds = %1756
  %1758 = load ptr, ptr %12, align 16, !tbaa !243
  %1759 = icmp eq ptr %1758, %1711
  %1760 = load ptr, ptr %1714, align 8
  %1761 = icmp eq ptr %1760, %1713
  %1762 = select i1 %1759, i1 %1761, i1 false
  br i1 %1762, label %1768, label %1763, !prof !512

1763:                                             ; preds = %1757
  %1764 = tail call ptr @simplify_gen_binary(i32 noundef %1706, i32 noundef %1, ptr noundef %1758, ptr noundef %1760) #8
  br label %1765

1765:                                             ; preds = %1718, %1763
  %1766 = phi ptr [ %1764, %1763 ], [ %1711, %1718 ]
  %1767 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1766, ptr noundef %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  br label %2545

1768:                                             ; preds = %1757
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  br label %1769

1769:                                             ; preds = %1768, %1704, %1700, %1696, %1693, %1689
  %1770 = load i32, ptr %3, align 8
  %1771 = and i32 %1770, 65535
  %1772 = icmp eq i32 %1771, 62
  br i1 %1772, label %1773, label %1787, !prof !499

1773:                                             ; preds = %1769
  %1774 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1775 = load ptr, ptr %1774, align 8, !tbaa !193
  %1776 = load i32, ptr %1775, align 8
  %1777 = and i32 %1776, 65535
  %1778 = icmp eq i32 %1777, 64
  br i1 %1778, label %1779, label %1787

1779:                                             ; preds = %1773
  %1780 = getelementptr inbounds %struct.rtx_def, ptr %1775, i64 0, i32 1
  %1781 = load ptr, ptr %1780, align 8, !tbaa !193
  %1782 = icmp eq ptr %1781, %2
  br i1 %1782, label %1783, label %1787

1783:                                             ; preds = %1779
  %1784 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %1785 = load ptr, ptr %1784, align 8, !tbaa !193
  %1786 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %1785) #8
  br label %2545

1787:                                             ; preds = %1779, %1773, %1769
  %1788 = load i32, ptr %2, align 8
  %1789 = and i32 %1788, 65535
  %1790 = icmp eq i32 %1789, 62
  br i1 %1790, label %1791, label %1805, !prof !502

1791:                                             ; preds = %1787
  %1792 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1793 = load ptr, ptr %1792, align 8, !tbaa !193
  %1794 = load i32, ptr %1793, align 8
  %1795 = and i32 %1794, 65535
  %1796 = icmp eq i32 %1795, 64
  br i1 %1796, label %1797, label %1805, !prof !513

1797:                                             ; preds = %1791
  %1798 = getelementptr inbounds %struct.rtx_def, ptr %1793, i64 0, i32 1
  %1799 = load ptr, ptr %1798, align 8, !tbaa !193
  %1800 = icmp eq ptr %1799, %3
  br i1 %1800, label %1801, label %1805

1801:                                             ; preds = %1797
  %1802 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1803 = load ptr, ptr %1802, align 8, !tbaa !193
  %1804 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %3, ptr noundef %1803) #8
  br label %2545

1805:                                             ; preds = %1797, %1791, %1787
  %1806 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %1807 = icmp eq ptr %1806, null
  br i1 %1807, label %2544, label %2545, !prof !504

1808:                                             ; preds = %6
  %1809 = sext i32 %1 to i64
  %1810 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1809
  %1811 = load ptr, ptr %1810, align 8, !tbaa !243
  %1812 = icmp eq ptr %1811, %4
  br i1 %1812, label %1813, label %1818

1813:                                             ; preds = %1808
  %1814 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %2545, label %1816

1816:                                             ; preds = %1813
  %1817 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4) #8
  br label %2545

1818:                                             ; preds = %1808
  %1819 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1809
  %1820 = load ptr, ptr %1819, align 8, !tbaa !243
  %1821 = icmp eq ptr %1820, %5
  br i1 %1821, label %1822, label %1825

1822:                                             ; preds = %1818
  %1823 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !373
  %1824 = tail call ptr %1823(i32 noundef %1, ptr noundef %2) #9
  br label %2545

1825:                                             ; preds = %1818
  %1826 = load i32, ptr %5, align 8
  %1827 = and i32 %1826, 65535
  %1828 = icmp eq i32 %1827, 30
  br i1 %1828, label %1829, label %2544

1829:                                             ; preds = %1825
  %1830 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1831 = load i64, ptr %1830, align 8, !tbaa !193
  %1832 = tail call i32 @exact_log2(i64 noundef %1831) #9
  %1833 = icmp sgt i32 %1832, 0
  br i1 %1833, label %1834, label %2544

1834:                                             ; preds = %1829
  %1835 = zext nneg i32 %1832 to i64
  %1836 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1835) #9
  %1837 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %1, ptr noundef %2, ptr noundef %1836) #8
  br label %2545

1838:                                             ; preds = %6
  %1839 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1840 = load i8, ptr %1839, align 1, !tbaa !193
  %1841 = and i8 %1840, -2
  %1842 = icmp eq i8 %1841, 8
  %1843 = sext i32 %1 to i64
  %1844 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1843
  %1845 = load ptr, ptr %1844, align 8, !tbaa !243
  %1846 = icmp eq ptr %1845, %4
  br i1 %1842, label %1847, label %1927

1847:                                             ; preds = %1838
  br i1 %1846, label %1848, label %1869

1848:                                             ; preds = %1847
  %1849 = add i32 %1, -38
  %1850 = zext i32 %1849 to i64
  %1851 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1850
  %1852 = load ptr, ptr %1851, align 8, !tbaa !243
  %1853 = getelementptr inbounds %struct.real_format, ptr %1852, i64 0, i32 11
  %1854 = load i8, ptr %1853, align 2, !tbaa !288
  %1855 = icmp eq i8 %1854, 0
  %1856 = load i32, ptr @flag_finite_math_only, align 4
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1855, i1 true, i1 %1857
  br i1 %1858, label %1859, label %1869

1859:                                             ; preds = %1848
  %1860 = getelementptr inbounds %struct.real_format, ptr %1852, i64 0, i32 14
  %1861 = load i8, ptr %1860, align 1, !tbaa !291
  %1862 = icmp ne i8 %1861, 0
  %1863 = load i32, ptr @flag_signed_zeros, align 4
  %1864 = icmp ne i32 %1863, 0
  %1865 = select i1 %1862, i1 %1864, i1 false
  br i1 %1865, label %1869, label %1866

1866:                                             ; preds = %1859
  %1867 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %2545, label %1869

1869:                                             ; preds = %1859, %1848, %1866, %1847
  %1870 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1843
  %1871 = load ptr, ptr %1870, align 8, !tbaa !243
  %1872 = icmp eq ptr %1871, %5
  br i1 %1872, label %1873, label %1887

1873:                                             ; preds = %1869
  %1874 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !200
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %2545, label %1876

1876:                                             ; preds = %1873
  %1877 = add i32 %1, -38
  %1878 = zext i32 %1877 to i64
  %1879 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1878
  %1880 = load ptr, ptr %1879, align 8, !tbaa !243
  %1881 = getelementptr inbounds %struct.real_format, ptr %1880, i64 0, i32 11
  %1882 = load i8, ptr %1881, align 2, !tbaa !288
  %1883 = icmp eq i8 %1882, 0
  %1884 = load i32, ptr @flag_finite_math_only, align 4
  %1885 = icmp ne i32 %1884, 0
  %1886 = select i1 %1883, i1 true, i1 %1885
  br i1 %1886, label %2545, label %1887

1887:                                             ; preds = %1876, %1869
  %1888 = load i32, ptr %5, align 8
  %1889 = and i32 %1888, 65535
  %1890 = icmp eq i32 %1889, 32
  br i1 %1890, label %1891, label %2544

1891:                                             ; preds = %1887
  %1892 = load ptr, ptr %1844, align 8, !tbaa !243
  %1893 = icmp eq ptr %1892, %5
  br i1 %1893, label %2544, label %1894

1894:                                             ; preds = %1891
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #10
  %1895 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %1895, i64 32, i1 false), !tbaa.struct !350
  %1896 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %13, ptr noundef nonnull @dconstm1) #9
  %1897 = icmp eq i8 %1896, 0
  br i1 %1897, label %1914, label %1898

1898:                                             ; preds = %1894
  %1899 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !200
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1912, label %1901

1901:                                             ; preds = %1898
  %1902 = add i32 %1, -38
  %1903 = zext i32 %1902 to i64
  %1904 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1903
  %1905 = load ptr, ptr %1904, align 8, !tbaa !243
  %1906 = getelementptr inbounds %struct.real_format, ptr %1905, i64 0, i32 11
  %1907 = load i8, ptr %1906, align 2, !tbaa !288
  %1908 = icmp eq i8 %1907, 0
  %1909 = load i32, ptr @flag_finite_math_only, align 4
  %1910 = icmp ne i32 %1909, 0
  %1911 = select i1 %1908, i1 true, i1 %1910
  br i1 %1911, label %1912, label %1914

1912:                                             ; preds = %1901, %1898
  %1913 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %2, i32 noundef %1) #8
  br label %1925

1914:                                             ; preds = %1901, %1894
  %1915 = load i32, ptr @flag_reciprocal_math, align 4, !tbaa !200
  %1916 = icmp eq i32 %1915, 0
  br i1 %1916, label %1924, label %1917

1917:                                             ; preds = %1914
  %1918 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %13, ptr noundef nonnull @dconst0) #9
  %1919 = icmp eq i8 %1918, 0
  br i1 %1919, label %1920, label %1924

1920:                                             ; preds = %1917
  %1921 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %13, i32 noundef 75, ptr noundef nonnull @dconst1, ptr noundef nonnull %13) #9
  %1922 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %13, i32 noundef %1) #9
  %1923 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %2, ptr noundef %1922) #8
  br label %1925

1924:                                             ; preds = %1917, %1914
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #10
  br label %2544

1925:                                             ; preds = %1920, %1912
  %1926 = phi ptr [ %1913, %1912 ], [ %1923, %1920 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #10
  br label %2545

1927:                                             ; preds = %1838
  br i1 %1846, label %1928, label %1933

1928:                                             ; preds = %1927
  %1929 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1930 = icmp eq i32 %1929, 0
  br i1 %1930, label %2545, label %1931

1931:                                             ; preds = %1928
  %1932 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4) #8
  br label %2545

1933:                                             ; preds = %1927
  %1934 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1843
  %1935 = load ptr, ptr %1934, align 8, !tbaa !243
  %1936 = icmp eq ptr %1935, %5
  br i1 %1936, label %1937, label %1940

1937:                                             ; preds = %1933
  %1938 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !373
  %1939 = tail call ptr %1938(i32 noundef %1, ptr noundef %2) #9
  br label %2545

1940:                                             ; preds = %1933
  %1941 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  %1942 = icmp eq ptr %1941, %5
  br i1 %1942, label %1943, label %2544

1943:                                             ; preds = %1940
  %1944 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !373
  %1945 = tail call ptr %1944(i32 noundef %1, ptr noundef %2) #9
  %1946 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %1, ptr noundef %1945, i32 noundef %1) #8
  br label %2545

1947:                                             ; preds = %6
  %1948 = sext i32 %1 to i64
  %1949 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1948
  %1950 = load ptr, ptr %1949, align 8, !tbaa !243
  %1951 = icmp eq ptr %1950, %4
  br i1 %1951, label %1952, label %1957

1952:                                             ; preds = %1947
  %1953 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %2545, label %1955

1955:                                             ; preds = %1952
  %1956 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4) #8
  br label %2545

1957:                                             ; preds = %1947
  %1958 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1948
  %1959 = load ptr, ptr %1958, align 8, !tbaa !243
  %1960 = icmp eq ptr %1959, %5
  br i1 %1960, label %1961, label %1967

1961:                                             ; preds = %1957
  %1962 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %1963 = icmp eq i32 %1962, 0
  %1964 = load ptr, ptr %1949, align 8, !tbaa !243
  br i1 %1963, label %2545, label %1965

1965:                                             ; preds = %1961
  %1966 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %1964) #8
  br label %2545

1967:                                             ; preds = %1957
  %1968 = load i32, ptr %5, align 8
  %1969 = and i32 %1968, 65535
  %1970 = icmp eq i32 %1969, 30
  br i1 %1970, label %1971, label %2544

1971:                                             ; preds = %1967
  %1972 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1973 = load i64, ptr %1972, align 8, !tbaa !193
  %1974 = tail call i32 @exact_log2(i64 noundef %1973) #9
  %1975 = icmp sgt i32 %1974, 0
  br i1 %1975, label %1976, label %2544

1976:                                             ; preds = %1971
  %1977 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1978 = load i64, ptr %1977, align 8, !tbaa !193
  %1979 = add nsw i64 %1978, -1
  %1980 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1979) #9
  %1981 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %1980) #8
  br label %2545

1982:                                             ; preds = %6
  %1983 = sext i32 %1 to i64
  %1984 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1983
  %1985 = load ptr, ptr %1984, align 8, !tbaa !243
  %1986 = icmp eq ptr %1985, %4
  br i1 %1986, label %1987, label %1992

1987:                                             ; preds = %1982
  %1988 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %2545, label %1990

1990:                                             ; preds = %1987
  %1991 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4) #8
  br label %2545

1992:                                             ; preds = %1982
  %1993 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1983
  %1994 = load ptr, ptr %1993, align 8, !tbaa !243
  %1995 = icmp eq ptr %1994, %5
  %1996 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %1997 = icmp eq ptr %1996, %5
  %1998 = select i1 %1995, i1 true, i1 %1997
  br i1 %1998, label %1999, label %2544

1999:                                             ; preds = %1992
  %2000 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2001 = icmp eq i32 %2000, 0
  %2002 = load ptr, ptr %1984, align 8, !tbaa !243
  br i1 %2001, label %2545, label %2003

2003:                                             ; preds = %1999
  %2004 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %2002) #8
  br label %2545

2005:                                             ; preds = %6, %6, %6
  %2006 = sext i32 %1 to i64
  %2007 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2006
  %2008 = load ptr, ptr %2007, align 8, !tbaa !243
  %2009 = icmp eq ptr %2008, %5
  br i1 %2009, label %2545, label %2010, !prof !514

2010:                                             ; preds = %2005
  %2011 = icmp eq ptr %2008, %4
  br i1 %2011, label %2012, label %2015, !prof !514

2012:                                             ; preds = %2010
  %2013 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2545, label %2015

2015:                                             ; preds = %2012, %2010
  %2016 = load i32, ptr %4, align 8
  %2017 = and i32 %2016, 65535
  %2018 = icmp eq i32 %2017, 30
  %2019 = icmp ult i8 %16, 9
  %2020 = select i1 %2018, i1 %2019, i1 false
  br i1 %2020, label %2021, label %2544, !prof !515

2021:                                             ; preds = %2015
  %2022 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2023 = load i64, ptr %2022, align 8, !tbaa !193
  %2024 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %2025 = load i64, ptr %2024, align 8, !tbaa !263
  %2026 = icmp eq i64 %2023, %2025
  br i1 %2026, label %2027, label %2544, !prof !516

2027:                                             ; preds = %2021
  %2028 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2545, label %2544

2030:                                             ; preds = %6, %6, %6
  %2031 = sext i32 %1 to i64
  %2032 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2031
  %2033 = load ptr, ptr %2032, align 8, !tbaa !243
  %2034 = icmp eq ptr %2033, %5
  br i1 %2034, label %2545, label %2035, !prof !517

2035:                                             ; preds = %2030
  %2036 = icmp eq ptr %2033, %4
  br i1 %2036, label %2037, label %2544, !prof !517

2037:                                             ; preds = %2035
  %2038 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2545, label %2544

2040:                                             ; preds = %6
  %2041 = sext i32 %1 to i64
  %2042 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2041
  %2043 = load ptr, ptr %2042, align 8, !tbaa !243
  %2044 = icmp eq ptr %2043, %5
  br i1 %2044, label %2545, label %2045, !prof !518

2045:                                             ; preds = %2040
  %2046 = icmp eq ptr %2043, %4
  br i1 %2046, label %2047, label %2544, !prof !519

2047:                                             ; preds = %2045
  %2048 = tail call i32 @side_effects_p(ptr noundef %3) #9
  %2049 = icmp eq i32 %2048, 0
  br i1 %2049, label %2545, label %2544

2050:                                             ; preds = %6
  %2051 = icmp ult i8 %16, 9
  br i1 %2051, label %2052, label %2066

2052:                                             ; preds = %2050
  %2053 = load i32, ptr %5, align 8
  %2054 = and i32 %2053, 65535
  %2055 = icmp eq i32 %2054, 30
  br i1 %2055, label %2056, label %2066

2056:                                             ; preds = %2052
  %2057 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2058 = load i64, ptr %2057, align 8, !tbaa !193
  %2059 = add nuw nsw i64 %18, 4294967295
  %2060 = and i64 %2059, 4294967295
  %2061 = shl nuw i64 1, %2060
  %2062 = icmp eq i64 %2058, %2061
  br i1 %2062, label %2063, label %2066

2063:                                             ; preds = %2056
  %2064 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2545, label %2066

2066:                                             ; preds = %2063, %2056, %2052, %2050
  %2067 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2072, label %2069

2069:                                             ; preds = %2066
  %2070 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2071 = icmp eq i32 %2070, 0
  br i1 %2071, label %2545, label %2072

2072:                                             ; preds = %2069, %2066
  %2073 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 70, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %2074 = icmp eq ptr %2073, null
  br i1 %2074, label %2544, label %2545

2075:                                             ; preds = %6
  %2076 = icmp ult i8 %16, 9
  br i1 %2076, label %2077, label %2091

2077:                                             ; preds = %2075
  %2078 = load i32, ptr %5, align 8
  %2079 = and i32 %2078, 65535
  %2080 = icmp eq i32 %2079, 30
  br i1 %2080, label %2081, label %2091

2081:                                             ; preds = %2077
  %2082 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2083 = load i64, ptr %2082, align 8, !tbaa !193
  %2084 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %2085 = load i64, ptr %2084, align 8, !tbaa !263
  %2086 = lshr i64 %2085, 1
  %2087 = icmp eq i64 %2083, %2086
  br i1 %2087, label %2088, label %2091

2088:                                             ; preds = %2081
  %2089 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %2545, label %2091

2091:                                             ; preds = %2088, %2081, %2077, %2075
  %2092 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %2093 = icmp eq i32 %2092, 0
  br i1 %2093, label %2097, label %2094

2094:                                             ; preds = %2091
  %2095 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2096 = icmp eq i32 %2095, 0
  br i1 %2096, label %2545, label %2097

2097:                                             ; preds = %2094, %2091
  %2098 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 71, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %2099 = icmp eq ptr %2098, null
  br i1 %2099, label %2544, label %2545

2100:                                             ; preds = %6
  %2101 = sext i32 %1 to i64
  %2102 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2101
  %2103 = load ptr, ptr %2102, align 8, !tbaa !243
  %2104 = icmp eq ptr %2103, %5
  br i1 %2104, label %2105, label %2108

2105:                                             ; preds = %2100
  %2106 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2545, label %2108

2108:                                             ; preds = %2105, %2100
  %2109 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2114, label %2111

2111:                                             ; preds = %2108
  %2112 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2545, label %2114

2114:                                             ; preds = %2111, %2108
  %2115 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 72, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %2116 = icmp eq ptr %2115, null
  br i1 %2116, label %2544, label %2545

2117:                                             ; preds = %6
  %2118 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  %2119 = icmp eq ptr %2118, %5
  br i1 %2119, label %2120, label %2123

2120:                                             ; preds = %2117
  %2121 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2122 = icmp eq i32 %2121, 0
  br i1 %2122, label %2545, label %2123

2123:                                             ; preds = %2120, %2117
  %2124 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #9
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2129, label %2126

2126:                                             ; preds = %2123
  %2127 = tail call i32 @side_effects_p(ptr noundef %2) #9
  %2128 = icmp eq i32 %2127, 0
  br i1 %2128, label %2545, label %2129

2129:                                             ; preds = %2126, %2123
  %2130 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 73, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8
  %2131 = icmp eq ptr %2130, null
  br i1 %2131, label %2544, label %2545

2132:                                             ; preds = %6
  %2133 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %2134 = load i8, ptr %2133, align 1, !tbaa !193
  %2135 = add i8 %2134, -12
  %2136 = icmp ult i8 %2135, 6
  %2137 = load i32, ptr %4, align 8
  %2138 = lshr i32 %2137, 16
  %2139 = and i32 %2138, 255
  %2140 = zext nneg i32 %2139 to i64
  %2141 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2140
  %2142 = load i8, ptr %2141, align 1, !tbaa !193
  %2143 = add i8 %2142, -12
  %2144 = icmp ult i8 %2143, 6
  br i1 %2136, label %2304, label %2145

2145:                                             ; preds = %2132
  br i1 %2144, label %2151, label %2146

2146:                                             ; preds = %2145
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2860, ptr noundef nonnull @.str.1) #9
  %2147 = load i32, ptr %4, align 8
  %2148 = lshr i32 %2147, 16
  %2149 = and i32 %2148, 255
  %2150 = zext nneg i32 %2149 to i64
  br label %2151

2151:                                             ; preds = %2145, %2146
  %2152 = phi i64 [ %2140, %2145 ], [ %2150, %2146 ]
  %2153 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2152
  %2154 = load i8, ptr %2153, align 1, !tbaa !193
  %2155 = zext i8 %2154 to i32
  %2156 = icmp eq i32 %2155, %1
  br i1 %2156, label %2158, label %2157

2157:                                             ; preds = %2151
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2861, ptr noundef nonnull @.str.1) #9
  br label %2158

2158:                                             ; preds = %2151, %2157
  %2159 = load i32, ptr %5, align 8
  %2160 = and i32 %2159, 65535
  %2161 = icmp eq i32 %2160, 15
  br i1 %2161, label %2163, label %2162

2162:                                             ; preds = %2158
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2862, ptr noundef nonnull @.str.1) #9
  br label %2163

2163:                                             ; preds = %2158, %2162
  %2164 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2165 = load ptr, ptr %2164, align 8, !tbaa !193
  %2166 = load i32, ptr %2165, align 8, !tbaa !333
  %2167 = icmp eq i32 %2166, 1
  br i1 %2167, label %2170, label %2168

2168:                                             ; preds = %2163
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2863, ptr noundef nonnull @.str.1) #9
  %2169 = load ptr, ptr %2164, align 8, !tbaa !193
  br label %2170

2170:                                             ; preds = %2163, %2168
  %2171 = phi ptr [ %2165, %2163 ], [ %2169, %2168 ]
  %2172 = getelementptr inbounds %struct.rtvec_def, ptr %2171, i64 0, i32 1
  %2173 = load ptr, ptr %2172, align 8, !tbaa !243
  %2174 = load i32, ptr %2173, align 8
  %2175 = and i32 %2174, 65535
  %2176 = icmp eq i32 %2175, 30
  br i1 %2176, label %2178, label %2177

2177:                                             ; preds = %2170
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2864, ptr noundef nonnull @.str.1) #9
  br label %2178

2178:                                             ; preds = %2170, %2177
  %2179 = load i32, ptr %4, align 8
  %2180 = trunc i32 %2179 to i16
  switch i16 %2180, label %2365 [
    i16 33, label %2181
    i16 124, label %2191
    i16 126, label %2297
  ]

2181:                                             ; preds = %2178
  %2182 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2183 = load ptr, ptr %2182, align 8, !tbaa !193
  %2184 = load ptr, ptr %2164, align 8, !tbaa !193
  %2185 = getelementptr inbounds %struct.rtvec_def, ptr %2184, i64 0, i32 1
  %2186 = load ptr, ptr %2185, align 8, !tbaa !243
  %2187 = getelementptr inbounds %struct.rtx_def, ptr %2186, i64 0, i32 1
  %2188 = load i64, ptr %2187, align 8, !tbaa !193
  %2189 = getelementptr inbounds %struct.rtvec_def, ptr %2183, i64 0, i32 1, i64 %2188
  %2190 = load ptr, ptr %2189, align 8, !tbaa !243
  br label %2545

2191:                                             ; preds = %2178
  %2192 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2193 = load ptr, ptr %2192, align 8, !tbaa !193
  %2194 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %2195 = load ptr, ptr %2194, align 8, !tbaa !193
  %2196 = load i32, ptr %2193, align 8
  %2197 = lshr i32 %2196, 16
  %2198 = and i32 %2197, 255
  %2199 = zext nneg i32 %2198 to i64
  %2200 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2199
  %2201 = load i8, ptr %2200, align 1, !tbaa !193
  %2202 = zext i8 %2201 to i64
  %2203 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2202
  %2204 = load i8, ptr %2203, align 1, !tbaa !193
  %2205 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2199
  %2206 = load i8, ptr %2205, align 1, !tbaa !193
  %2207 = udiv i8 %2206, %2204
  %2208 = zext i8 %2207 to i32
  %2209 = load ptr, ptr %2164, align 8, !tbaa !193
  %2210 = getelementptr inbounds %struct.rtvec_def, ptr %2209, i64 0, i32 1
  %2211 = load ptr, ptr %2210, align 8, !tbaa !243
  %2212 = getelementptr inbounds %struct.rtx_def, ptr %2211, i64 0, i32 1
  %2213 = load i64, ptr %2212, align 8, !tbaa !193
  %2214 = trunc i64 %2213 to i32
  %2215 = load i32, ptr %2195, align 8
  %2216 = and i32 %2215, 65535
  %2217 = icmp eq i32 %2216, 15
  br i1 %2217, label %2219, label %2218

2218:                                             ; preds = %2191
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2891, ptr noundef nonnull @.str.1) #9
  br label %2219

2219:                                             ; preds = %2191, %2218
  %2220 = icmp slt i32 %2214, %2208
  br i1 %2220, label %2222, label %2221

2221:                                             ; preds = %2219
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2892, ptr noundef nonnull @.str.1) #9
  br label %2222

2222:                                             ; preds = %2219, %2221
  %2223 = getelementptr inbounds %struct.rtx_def, ptr %2195, i64 0, i32 1
  %2224 = load ptr, ptr %2223, align 8, !tbaa !193
  %2225 = shl i64 %2213, 32
  %2226 = ashr exact i64 %2225, 32
  %2227 = getelementptr inbounds %struct.rtvec_def, ptr %2224, i64 0, i32 1, i64 %2226
  %2228 = load ptr, ptr %2227, align 8, !tbaa !243
  %2229 = getelementptr inbounds %struct.rtx_def, ptr %2228, i64 0, i32 1
  %2230 = load i64, ptr %2229, align 8, !tbaa !193
  %2231 = trunc i64 %2230 to i32
  %2232 = load i32, ptr %2193, align 8
  %2233 = and i32 %2232, 65535
  %2234 = icmp eq i32 %2233, 125
  br i1 %2234, label %2235, label %2288

2235:                                             ; preds = %2222
  %2236 = getelementptr inbounds %struct.rtx_def, ptr %2193, i64 0, i32 1
  %2237 = load ptr, ptr %2236, align 8, !tbaa !193
  %2238 = getelementptr inbounds %struct.rtx_def, ptr %2193, i64 0, i32 1, i32 0, i32 0, i64 1
  %2239 = load ptr, ptr %2238, align 8, !tbaa !193
  %2240 = load i32, ptr %2237, align 8
  %2241 = lshr i32 %2240, 16
  %2242 = and i32 %2241, 255
  %2243 = load i32, ptr %2239, align 8
  %2244 = lshr i32 %2243, 16
  %2245 = and i32 %2244, 255
  %2246 = zext nneg i32 %2242 to i64
  %2247 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2246
  %2248 = load i8, ptr %2247, align 1, !tbaa !193
  %2249 = add i8 %2248, -12
  %2250 = icmp ult i8 %2249, 6
  br i1 %2250, label %2251, label %2261

2251:                                             ; preds = %2235
  %2252 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2246
  %2253 = load i8, ptr %2252, align 1, !tbaa !193
  %2254 = zext i8 %2253 to i64
  %2255 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2254
  %2256 = load i8, ptr %2255, align 1, !tbaa !193
  %2257 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2246
  %2258 = load i8, ptr %2257, align 1, !tbaa !193
  %2259 = udiv i8 %2258, %2256
  %2260 = zext i8 %2259 to i32
  br label %2261

2261:                                             ; preds = %2235, %2251
  %2262 = phi i32 [ %2260, %2251 ], [ 1, %2235 ]
  %2263 = zext nneg i32 %2245 to i64
  %2264 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2263
  %2265 = load i8, ptr %2264, align 1, !tbaa !193
  %2266 = add i8 %2265, -12
  %2267 = icmp ult i8 %2266, 6
  br i1 %2267, label %2268, label %2278

2268:                                             ; preds = %2261
  %2269 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2263
  %2270 = load i8, ptr %2269, align 1, !tbaa !193
  %2271 = zext i8 %2270 to i64
  %2272 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2271
  %2273 = load i8, ptr %2272, align 1, !tbaa !193
  %2274 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2263
  %2275 = load i8, ptr %2274, align 1, !tbaa !193
  %2276 = udiv i8 %2275, %2273
  %2277 = zext i8 %2276 to i32
  br label %2278

2278:                                             ; preds = %2261, %2268
  %2279 = phi i32 [ %2277, %2268 ], [ 1, %2261 ]
  %2280 = add nuw nsw i32 %2279, %2262
  %2281 = icmp eq i32 %2280, %2208
  br i1 %2281, label %2283, label %2282

2282:                                             ; preds = %2278
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2926, ptr noundef nonnull @.str.1) #9
  br label %2283

2283:                                             ; preds = %2278, %2282
  %2284 = icmp sgt i32 %2279, %2231
  %2285 = select i1 %2284, i32 0, i32 %2262
  %2286 = sub nsw i32 %2231, %2285
  %2287 = select i1 %2284, ptr %2237, ptr %2239
  br label %2288

2288:                                             ; preds = %2222, %2283
  %2289 = phi i32 [ %2286, %2283 ], [ %2231, %2222 ]
  %2290 = phi ptr [ %2287, %2283 ], [ %2193, %2222 ]
  %2291 = tail call ptr @rtvec_alloc(i32 noundef 1) #9
  %2292 = sext i32 %2289 to i64
  %2293 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2292) #9
  %2294 = getelementptr inbounds %struct.rtvec_def, ptr %2291, i64 0, i32 1
  store ptr %2293, ptr %2294, align 8, !tbaa !243
  %2295 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %2291) #9
  %2296 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 124, i32 noundef %1, ptr noundef nonnull %2290, ptr noundef %2295) #9
  br label %2545

2297:                                             ; preds = %2178
  %2298 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2299 = load ptr, ptr %2298, align 8, !tbaa !193
  %2300 = load i32, ptr %2299, align 8
  %2301 = lshr i32 %2300, 16
  %2302 = and i32 %2301, 255
  %2303 = icmp eq i32 %2302, %1
  br i1 %2303, label %2545, label %2365

2304:                                             ; preds = %2132
  br i1 %2144, label %2310, label %2305

2305:                                             ; preds = %2304
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2954, ptr noundef nonnull @.str.1) #9
  %2306 = load i32, ptr %4, align 8
  %2307 = lshr i32 %2306, 16
  %2308 = and i32 %2307, 255
  %2309 = zext nneg i32 %2308 to i64
  br label %2310

2310:                                             ; preds = %2304, %2305
  %2311 = phi i64 [ %2140, %2304 ], [ %2309, %2305 ]
  %2312 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2313 = load i8, ptr %2312, align 1, !tbaa !193
  %2314 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2311
  %2315 = load i8, ptr %2314, align 1, !tbaa !193
  %2316 = icmp eq i8 %2313, %2315
  br i1 %2316, label %2318, label %2317

2317:                                             ; preds = %2310
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2956, ptr noundef nonnull @.str.1) #9
  br label %2318

2318:                                             ; preds = %2310, %2317
  %2319 = load i32, ptr %5, align 8
  %2320 = and i32 %2319, 65535
  %2321 = icmp eq i32 %2320, 15
  br i1 %2321, label %2323, label %2322

2322:                                             ; preds = %2318
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2957, ptr noundef nonnull @.str.1) #9
  br label %2323

2323:                                             ; preds = %2318, %2322
  %2324 = load i32, ptr %4, align 8
  %2325 = and i32 %2324, 65535
  %2326 = icmp eq i32 %2325, 33
  br i1 %2326, label %2327, label %2365

2327:                                             ; preds = %2323
  %2328 = zext i8 %2313 to i64
  %2329 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2328
  %2330 = load i8, ptr %2329, align 1, !tbaa !193
  %2331 = load i8, ptr %15, align 1, !tbaa !193
  %2332 = udiv i8 %2331, %2330
  %2333 = zext i8 %2332 to i32
  %2334 = tail call ptr @rtvec_alloc(i32 noundef %2333) #9
  %2335 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2336 = load ptr, ptr %2335, align 8, !tbaa !193
  %2337 = load i32, ptr %2336, align 8, !tbaa !333
  %2338 = icmp eq i32 %2337, %2333
  br i1 %2338, label %2340, label %2339

2339:                                             ; preds = %2327
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2966, ptr noundef nonnull @.str.1) #9
  br label %2340

2340:                                             ; preds = %2327, %2339
  %2341 = icmp ugt i8 %2330, %2331
  br i1 %2341, label %2363, label %2342

2342:                                             ; preds = %2340
  %2343 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2344 = zext i8 %2332 to i64
  br label %2345

2345:                                             ; preds = %2342, %2354
  %2346 = phi i64 [ 0, %2342 ], [ %2361, %2354 ]
  %2347 = load ptr, ptr %2335, align 8, !tbaa !193
  %2348 = getelementptr inbounds %struct.rtvec_def, ptr %2347, i64 0, i32 1, i64 %2346
  %2349 = load ptr, ptr %2348, align 8, !tbaa !243
  %2350 = load i32, ptr %2349, align 8
  %2351 = and i32 %2350, 65535
  %2352 = icmp eq i32 %2351, 30
  br i1 %2352, label %2354, label %2353

2353:                                             ; preds = %2345
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2971, ptr noundef nonnull @.str.1) #9
  br label %2354

2354:                                             ; preds = %2345, %2353
  %2355 = load ptr, ptr %2343, align 8, !tbaa !193
  %2356 = getelementptr inbounds %struct.rtx_def, ptr %2349, i64 0, i32 1
  %2357 = load i64, ptr %2356, align 8, !tbaa !193
  %2358 = getelementptr inbounds %struct.rtvec_def, ptr %2355, i64 0, i32 1, i64 %2357
  %2359 = load ptr, ptr %2358, align 8, !tbaa !243
  %2360 = getelementptr inbounds %struct.rtvec_def, ptr %2334, i64 0, i32 1, i64 %2346
  store ptr %2359, ptr %2360, align 8, !tbaa !243
  %2361 = add nuw nsw i64 %2346, 1
  %2362 = icmp ult i64 %2361, %2344
  br i1 %2362, label %2345, label %2363, !llvm.loop !520

2363:                                             ; preds = %2354, %2340
  %2364 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %2334) #9
  br label %2545

2365:                                             ; preds = %2178, %2323, %2297
  %2366 = phi i32 [ %2179, %2178 ], [ %2324, %2323 ], [ %2179, %2297 ]
  %2367 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2368 = load ptr, ptr %2367, align 8, !tbaa !193
  %2369 = load i32, ptr %2368, align 8, !tbaa !333
  %2370 = icmp eq i32 %2369, 1
  br i1 %2370, label %2371, label %2423

2371:                                             ; preds = %2365
  %2372 = getelementptr inbounds %struct.rtvec_def, ptr %2368, i64 0, i32 1
  %2373 = load ptr, ptr %2372, align 8, !tbaa !243
  %2374 = load i32, ptr %2373, align 8
  %2375 = and i32 %2374, 65535
  %2376 = icmp eq i32 %2375, 30
  %2377 = and i32 %2366, 65535
  %2378 = icmp eq i32 %2377, 125
  %2379 = and i1 %2376, %2378
  br i1 %2379, label %2380, label %2423

2380:                                             ; preds = %2371
  %2381 = lshr i32 %2366, 16
  %2382 = and i32 %2381, 255
  %2383 = icmp eq i32 %2382, %1
  br i1 %2383, label %2545, label %2384

2384:                                             ; preds = %2380
  %2385 = getelementptr inbounds %struct.rtx_def, ptr %2373, i64 0, i32 1
  %2386 = load i64, ptr %2385, align 8, !tbaa !193
  %2387 = load i8, ptr %15, align 1, !tbaa !193
  %2388 = zext i8 %2387 to i64
  %2389 = mul nsw i64 %2386, %2388
  %2390 = trunc i64 %2389 to i32
  br label %2391

2391:                                             ; preds = %2384, %2410
  %2392 = phi i32 [ %2412, %2410 ], [ %2390, %2384 ]
  %2393 = phi ptr [ %2413, %2410 ], [ %4, %2384 ]
  %2394 = getelementptr inbounds %struct.rtx_def, ptr %2393, i64 0, i32 1
  %2395 = load ptr, ptr %2394, align 8, !tbaa !193
  %2396 = load i32, ptr %2395, align 8
  %2397 = lshr i32 %2396, 16
  %2398 = and i32 %2397, 255
  %2399 = zext nneg i32 %2398 to i64
  %2400 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2399
  %2401 = load i8, ptr %2400, align 1, !tbaa !193
  %2402 = zext i8 %2401 to i64
  %2403 = sext i32 %2392 to i64
  %2404 = icmp slt i64 %2403, %2402
  br i1 %2404, label %2410, label %2405

2405:                                             ; preds = %2391
  %2406 = zext i8 %2401 to i32
  %2407 = sub i32 %2392, %2406
  %2408 = getelementptr inbounds %struct.rtx_def, ptr %2393, i64 0, i32 1, i32 0, i32 0, i64 1
  %2409 = load ptr, ptr %2408, align 8, !tbaa !193
  br label %2410

2410:                                             ; preds = %2391, %2405
  %2411 = phi ptr [ %2409, %2405 ], [ %2395, %2391 ]
  %2412 = phi i32 [ %2407, %2405 ], [ %2392, %2391 ]
  %2413 = tail call ptr @avoid_constant_pool_reference(ptr noundef %2411) #8
  %2414 = load i32, ptr %2413, align 8
  %2415 = lshr i32 %2414, 16
  %2416 = and i32 %2415, 255
  %2417 = icmp ne i32 %2416, %1
  %2418 = and i32 %2414, 65535
  %2419 = icmp eq i32 %2418, 125
  %2420 = and i1 %2419, %2417
  br i1 %2420, label %2391, label %2421, !llvm.loop !521

2421:                                             ; preds = %2410
  %2422 = icmp eq i32 %2416, %1
  br i1 %2422, label %2545, label %2423

2423:                                             ; preds = %2421, %2371, %2365
  br label %2545

2424:                                             ; preds = %6
  %2425 = load i32, ptr %4, align 8
  %2426 = lshr i32 %2425, 16
  %2427 = and i32 %2426, 255
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2429, label %2433

2429:                                             ; preds = %2424
  %2430 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2431 = load i8, ptr %2430, align 1, !tbaa !193
  %2432 = zext i8 %2431 to i32
  br label %2433

2433:                                             ; preds = %2424, %2429
  %2434 = phi i32 [ %2432, %2429 ], [ %2427, %2424 ]
  %2435 = load i32, ptr %5, align 8
  %2436 = lshr i32 %2435, 16
  %2437 = and i32 %2436, 255
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2439, label %2443

2439:                                             ; preds = %2433
  %2440 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2441 = load i8, ptr %2440, align 1, !tbaa !193
  %2442 = zext i8 %2441 to i32
  br label %2443

2443:                                             ; preds = %2433, %2439
  %2444 = phi i32 [ %2442, %2439 ], [ %2437, %2433 ]
  %2445 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %2446 = load i8, ptr %2445, align 1, !tbaa !193
  %2447 = add i8 %2446, -12
  %2448 = icmp ult i8 %2447, 6
  br i1 %2448, label %2451, label %2449

2449:                                             ; preds = %2443
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3016, ptr noundef nonnull @.str.1) #9
  %2450 = load i8, ptr %15, align 1, !tbaa !193
  br label %2451

2451:                                             ; preds = %2443, %2449
  %2452 = phi i8 [ %16, %2443 ], [ %2450, %2449 ]
  %2453 = zext nneg i32 %2434 to i64
  %2454 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2453
  %2455 = load i8, ptr %2454, align 1, !tbaa !193
  %2456 = zext i8 %2455 to i32
  %2457 = zext nneg i32 %2444 to i64
  %2458 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2457
  %2459 = load i8, ptr %2458, align 1, !tbaa !193
  %2460 = zext i8 %2459 to i32
  %2461 = add nuw nsw i32 %2460, %2456
  %2462 = zext i8 %2452 to i32
  %2463 = icmp eq i32 %2461, %2462
  br i1 %2463, label %2465, label %2464

2464:                                             ; preds = %2451
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3018, ptr noundef nonnull @.str.1) #9
  br label %2465

2465:                                             ; preds = %2451, %2464
  %2466 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2453
  %2467 = load i8, ptr %2466, align 1, !tbaa !193
  %2468 = add i8 %2467, -12
  %2469 = icmp ult i8 %2468, 6
  %2470 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2471 = load i8, ptr %2470, align 1, !tbaa !193
  br i1 %2469, label %2472, label %2476

2472:                                             ; preds = %2465
  %2473 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2453
  %2474 = load i8, ptr %2473, align 1, !tbaa !193
  %2475 = icmp eq i8 %2471, %2474
  br i1 %2475, label %2481, label %2479

2476:                                             ; preds = %2465
  %2477 = zext i8 %2471 to i32
  %2478 = icmp eq i32 %2434, %2477
  br i1 %2478, label %2481, label %2479

2479:                                             ; preds = %2476, %2472
  %2480 = phi i32 [ 3022, %2472 ], [ 3024, %2476 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %2480, ptr noundef nonnull @.str.1) #9
  br label %2481

2481:                                             ; preds = %2479, %2476, %2472
  %2482 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2457
  %2483 = load i8, ptr %2482, align 1, !tbaa !193
  %2484 = add i8 %2483, -12
  %2485 = icmp ult i8 %2484, 6
  br i1 %2485, label %2486, label %2490

2486:                                             ; preds = %2481
  %2487 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2457
  %2488 = load i8, ptr %2487, align 1, !tbaa !193
  %2489 = icmp eq i8 %2471, %2488
  br i1 %2489, label %2495, label %2493

2490:                                             ; preds = %2481
  %2491 = zext i8 %2471 to i32
  %2492 = icmp eq i32 %2444, %2491
  br i1 %2492, label %2495, label %2493

2493:                                             ; preds = %2490, %2486
  %2494 = phi i32 [ 3028, %2486 ], [ 3030, %2490 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %2494, ptr noundef nonnull @.str.1) #9
  br label %2495

2495:                                             ; preds = %2493, %2490, %2486
  %2496 = load i32, ptr %4, align 8
  %2497 = trunc i32 %2496 to i16
  switch i16 %2497, label %2545 [
    i16 33, label %2498
    i16 30, label %2498
    i16 32, label %2498
  ]

2498:                                             ; preds = %2495, %2495, %2495
  %2499 = load i32, ptr %5, align 8
  %2500 = trunc i32 %2499 to i16
  switch i16 %2500, label %2545 [
    i16 33, label %2501
    i16 30, label %2501
    i16 32, label %2501
  ]

2501:                                             ; preds = %2498, %2498, %2498
  %2502 = zext i8 %2471 to i64
  %2503 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2502
  %2504 = load i8, ptr %2503, align 1, !tbaa !193
  %2505 = load i8, ptr %15, align 1, !tbaa !193
  %2506 = udiv i8 %2505, %2504
  %2507 = zext i8 %2506 to i32
  %2508 = tail call ptr @rtvec_alloc(i32 noundef %2507) #9
  br i1 %2469, label %2509, label %2513

2509:                                             ; preds = %2501
  %2510 = load i8, ptr %2454, align 1, !tbaa !193
  %2511 = udiv i8 %2510, %2504
  %2512 = zext i8 %2511 to i64
  br label %2513

2513:                                             ; preds = %2501, %2509
  %2514 = phi i64 [ %2512, %2509 ], [ 1, %2501 ]
  %2515 = icmp ugt i8 %2504, %2505
  br i1 %2515, label %2541, label %2516

2516:                                             ; preds = %2513
  %2517 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2518 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2519 = zext i8 %2506 to i64
  br label %2520

2520:                                             ; preds = %2516, %2536
  %2521 = phi i64 [ 0, %2516 ], [ %2539, %2536 ]
  %2522 = icmp ult i64 %2521, %2514
  br i1 %2522, label %2523, label %2527

2523:                                             ; preds = %2520
  br i1 %2469, label %2524, label %2536

2524:                                             ; preds = %2523
  %2525 = load ptr, ptr %2518, align 8, !tbaa !193
  %2526 = getelementptr inbounds %struct.rtvec_def, ptr %2525, i64 0, i32 1, i64 %2521
  br label %2533

2527:                                             ; preds = %2520
  br i1 %2485, label %2528, label %2536

2528:                                             ; preds = %2527
  %2529 = load ptr, ptr %2517, align 8, !tbaa !193
  %2530 = sub nsw i64 %2521, %2514
  %2531 = and i64 %2530, 4294967295
  %2532 = getelementptr inbounds %struct.rtvec_def, ptr %2529, i64 0, i32 1, i64 %2531
  br label %2533

2533:                                             ; preds = %2528, %2524
  %2534 = phi ptr [ %2526, %2524 ], [ %2532, %2528 ]
  %2535 = load ptr, ptr %2534, align 8, !tbaa !243
  br label %2536

2536:                                             ; preds = %2533, %2527, %2523
  %2537 = phi ptr [ %4, %2523 ], [ %5, %2527 ], [ %2535, %2533 ]
  %2538 = getelementptr inbounds %struct.rtvec_def, ptr %2508, i64 0, i32 1, i64 %2521
  store ptr %2537, ptr %2538, align 8, !tbaa !243
  %2539 = add nuw nsw i64 %2521, 1
  %2540 = icmp ult i64 %2539, %2519
  br i1 %2540, label %2520, label %2541, !llvm.loop !522

2541:                                             ; preds = %2536, %2513
  %2542 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %2508) #9
  br label %2545

2543:                                             ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3072, ptr noundef nonnull @.str.1) #9
  br label %2544

2544:                                             ; preds = %265, %248, %268, %1924, %2045, %2047, %286, %293, %297, %301, %305, %312, %1992, %659, %258, %2129, %2114, %2097, %2072, %2035, %2037, %2027, %2021, %2015, %1967, %1971, %1891, %1887, %1940, %1825, %1829, %1805, %1447, %1251, %909, %912, %663, %666, %272, %276, %282, %259, %262, %2543
  br label %2545

2545:                                             ; preds = %1999, %1961, %2380, %1342, %1340, %1001, %1017, %1009, %2541, %2498, %2495, %1925, %1765, %1484, %1468, %1246, %856, %502, %160, %2297, %6, %6, %6, %6, %6, %6, %6, %6, %2129, %2126, %2120, %2114, %2111, %2105, %2097, %2094, %2088, %2072, %2069, %2063, %2047, %2040, %2037, %2030, %2027, %2012, %2005, %1987, %1952, %1928, %1873, %1876, %1866, %1813, %1805, %1684, %1492, %1455, %1447, %1444, %1389, %1254, %1251, %1042, %970, %932, %922, %915, %912, %745, %719, %666, %581, %423, %312, %262, %255, %41, %2421, %2544, %2423, %2363, %2288, %2181, %2003, %1990, %1976, %1965, %1955, %1943, %1937, %1931, %1834, %1822, %1816, %1801, %1783, %1661, %1638, %1616, %1598, %1579, %1558, %1548, %1521, %1417, %1374, %1358, %1318, %1306, %1290, %1280, %1268, %1198, %1166, %1091, %961, %904, %878, %796, %764, %672, %649, %614, %564, %555, %545, %534, %519, %383, %378, %347, %246, %227, %189, %84, %76, %68, %58, %50
  %2546 = phi ptr [ null, %2544 ], [ %2364, %2363 ], [ null, %2423 ], [ %2413, %2421 ], [ %2190, %2181 ], [ %2296, %2288 ], [ %1991, %1990 ], [ %2004, %2003 ], [ %1956, %1955 ], [ %1966, %1965 ], [ %1981, %1976 ], [ %1926, %1925 ], [ %1932, %1931 ], [ %1939, %1937 ], [ %1946, %1943 ], [ %1817, %1816 ], [ %1824, %1822 ], [ %1837, %1834 ], [ %1551, %1548 ], [ %1568, %1558 ], [ %1589, %1579 ], [ %1786, %1783 ], [ %1804, %1801 ], [ %1665, %1661 ], [ %1642, %1638 ], [ %1619, %1616 ], [ %1602, %1598 ], [ %1522, %1521 ], [ %1269, %1268 ], [ %1291, %1290 ], [ %1309, %1306 ], [ %1319, %1318 ], [ %1420, %1417 ], [ %1378, %1374 ], [ %1361, %1358 ], [ %1283, %1280 ], [ %1093, %1091 ], [ %1168, %1166 ], [ %1204, %1198 ], [ %1250, %1246 ], [ %962, %961 ], [ %673, %672 ], [ %766, %764 ], [ %800, %796 ], [ %907, %904 ], [ %881, %878 ], [ %857, %856 ], [ %384, %383 ], [ %522, %519 ], [ %537, %534 ], [ %547, %545 ], [ %560, %555 ], [ %570, %564 ], [ %658, %649 ], [ %620, %614 ], [ %514, %502 ], [ %379, %378 ], [ %350, %347 ], [ %53, %50 ], [ %61, %58 ], [ %71, %68 ], [ %79, %76 ], [ %87, %84 ], [ %192, %189 ], [ %247, %246 ], [ %233, %227 ], [ %172, %160 ], [ %2, %41 ], [ %256, %255 ], [ %263, %262 ], [ %288, %312 ], [ %2, %423 ], [ %582, %581 ], [ %667, %666 ], [ %3, %719 ], [ %2, %745 ], [ %913, %912 ], [ %2, %915 ], [ %3, %922 ], [ %2, %932 ], [ %3, %970 ], [ %3, %1042 ], [ %1252, %1251 ], [ %2, %1254 ], [ %1390, %1389 ], [ %1445, %1444 ], [ %1448, %1447 ], [ %5, %1455 ], [ %2, %1492 ], [ %3, %1684 ], [ %1806, %1805 ], [ %4, %1813 ], [ %2, %1866 ], [ %2, %1876 ], [ %2, %1873 ], [ %4, %1928 ], [ %4, %1952 ], [ %4, %1987 ], [ %2, %2005 ], [ %2, %2012 ], [ %2, %2027 ], [ %2, %2030 ], [ %2, %2037 ], [ %2, %2040 ], [ %2, %2047 ], [ %3, %2063 ], [ %2, %2069 ], [ %2073, %2072 ], [ %3, %2088 ], [ %2, %2094 ], [ %2098, %2097 ], [ %3, %2105 ], [ %2, %2111 ], [ %2115, %2114 ], [ %3, %2120 ], [ %2, %2126 ], [ %2130, %2129 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ %2299, %2297 ], [ %1485, %1484 ], [ %2, %1468 ], [ %1767, %1765 ], [ %2542, %2541 ], [ null, %2498 ], [ null, %2495 ], [ %5, %1001 ], [ %1023, %1017 ], [ %1011, %1009 ], [ %1344, %1342 ], [ %1341, %1340 ], [ %4, %2380 ], [ %1964, %1961 ], [ %2002, %1999 ]
  ret ptr %2546
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
define dso_local ptr @simplify_const_relational_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 !prof !523 {
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
  br i1 %14, label %16, label %25, !prof !524

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
  br i1 %31, label %35, label %32, !prof !525

32:                                               ; preds = %25
  %33 = lshr i32 %26, 16
  %34 = and i32 %33, 255
  br label %49

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  %39 = load ptr, ptr %36, align 8, !tbaa !193
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49, !prof !526

44:                                               ; preds = %35
  %45 = load i32, ptr %38, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %608, label %49

49:                                               ; preds = %32, %44, %35
  %50 = phi i32 [ %34, %32 ], [ 0, %44 ], [ %42, %35 ]
  %51 = phi ptr [ %13, %32 ], [ %38, %44 ], [ %38, %35 ]
  %52 = phi ptr [ %12, %32 ], [ %39, %44 ], [ %39, %35 ]
  %53 = phi i32 [ %11, %32 ], [ %47, %44 ], [ %42, %35 ]
  %54 = zext nneg i32 %50 to i64
  %55 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !193
  %57 = icmp eq i8 %56, 1
  br i1 %57, label %608, label %58, !prof !527

58:                                               ; preds = %49
  %59 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %52, ptr noundef %51) #9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61, !prof !528

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
  %71 = load i8, ptr %70, align 1, !tbaa !193
  switch i8 %71, label %125 [
    i8 2, label %72
    i8 3, label %72
    i8 10, label %72
    i8 12, label %72
    i8 8, label %104
    i8 9, label %104
    i8 11, label %104
    i8 17, label %104
  ], !prof !529

72:                                               ; preds = %63, %63, %63, %63
  %73 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %74 = icmp ne ptr %68, %73
  %75 = and i32 %66, -2
  %76 = icmp eq i32 %75, 80
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %103, !prof !530

78:                                               ; preds = %72
  %79 = load i32, ptr %65, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %86, label %82, !prof !531

82:                                               ; preds = %78
  %83 = load i32, ptr %67, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 30
  br i1 %85, label %86, label %94, !prof !532

86:                                               ; preds = %82, %78
  %87 = load i32, ptr %64, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 37
  br i1 %89, label %103, label %90, !prof !533

90:                                               ; preds = %86
  %91 = load i32, ptr %68, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 30
  br i1 %93, label %103, label %94, !prof !534

94:                                               ; preds = %90, %82
  %95 = tail call ptr @simplify_binary_operation(i32 noundef 50, i32 noundef %53, ptr noundef nonnull %65, ptr noundef %64) #8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97, !prof !440

97:                                               ; preds = %94
  %98 = tail call zeroext i8 @nonzero_address_p(ptr noundef nonnull %95) #9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %103, !prof !535

100:                                              ; preds = %97
  %101 = tail call i32 @signed_condition(i32 noundef %66) #9
  %102 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %9

103:                                              ; preds = %97, %94, %90, %86, %72
  switch i8 %71, label %125 [
    i8 8, label %104
    i8 9, label %104
    i8 11, label %104
  ], !prof !536

104:                                              ; preds = %63, %63, %63, %63, %103, %103, %103
  %105 = and i8 %71, -2
  %106 = icmp eq i8 %105, 8
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %69
  %109 = load i8, ptr %108, align 1, !tbaa !193
  %110 = zext i8 %109 to i32
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i32 [ %53, %104 ], [ %110, %107 ]
  %113 = add i32 %112, -38
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !243
  %117 = getelementptr inbounds %struct.real_format, ptr %116, i64 0, i32 11
  %118 = load i8, ptr %117, align 2, !tbaa !288
  %119 = icmp eq i8 %118, 0
  %120 = load i32, ptr @flag_finite_math_only, align 4
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %119, i1 true, i1 %121
  %123 = icmp eq i32 %66, 91
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %127, label %129, !prof !537

125:                                              ; preds = %63, %103
  %126 = icmp eq i32 %66, 91
  br i1 %126, label %127, label %129, !prof !538

127:                                              ; preds = %111, %125
  %128 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

129:                                              ; preds = %111, %125
  switch i8 %71, label %151 [
    i8 8, label %130
    i8 9, label %130
    i8 11, label %130
    i8 17, label %130
  ], !prof !539

130:                                              ; preds = %129, %129, %129, %129
  %131 = and i8 %71, -2
  %132 = icmp eq i8 %131, 8
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %69
  %135 = load i8, ptr %134, align 1, !tbaa !193
  %136 = zext i8 %135 to i32
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i32 [ %53, %130 ], [ %136, %133 ]
  %139 = add i32 %138, -38
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !243
  %143 = getelementptr inbounds %struct.real_format, ptr %142, i64 0, i32 11
  %144 = load i8, ptr %143, align 2, !tbaa !288
  %145 = icmp eq i8 %144, 0
  %146 = load i32, ptr @flag_finite_math_only, align 4
  %147 = icmp ne i32 %146, 0
  %148 = select i1 %145, i1 true, i1 %147
  %149 = icmp eq i32 %66, 90
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %153, label %155, !prof !537

151:                                              ; preds = %129
  %152 = icmp eq i32 %66, 90
  br i1 %152, label %153, label %155, !prof !538

153:                                              ; preds = %137, %151
  %154 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

155:                                              ; preds = %137, %151
  %156 = load i32, ptr %67, align 8
  %157 = lshr i32 %156, 16
  %158 = and i32 %157, 255
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !193
  switch i8 %161, label %206 [
    i8 8, label %162
    i8 9, label %162
    i8 11, label %162
    i8 17, label %162
  ], !prof !539

162:                                              ; preds = %155, %155, %155, %155
  %163 = and i8 %161, -2
  %164 = icmp eq i8 %163, 8
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %159
  %167 = load i8, ptr %166, align 1, !tbaa !193
  %168 = zext i8 %167 to i32
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i32 [ %158, %162 ], [ %168, %165 ]
  %171 = add nsw i32 %170, -38
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !243
  %175 = getelementptr inbounds %struct.real_format, ptr %174, i64 0, i32 11
  %176 = load i8, ptr %175, align 2, !tbaa !288
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
  %189 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !200
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
  %195 = load i8, ptr %194, align 1, !tbaa !193
  %196 = zext i8 %195 to i32
  br label %197

197:                                              ; preds = %193, %192
  %198 = phi i32 [ %158, %192 ], [ %196, %193 ]
  %199 = add nsw i32 %198, -38
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !243
  %203 = getelementptr inbounds %struct.real_format, ptr %202, i64 0, i32 11
  %204 = load i8, ptr %203, align 2, !tbaa !288
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %191, %155, %197, %188, %169
  %207 = tail call i32 @rtx_equal_p(ptr noundef nonnull %67, ptr noundef %68) #9
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %214, label %209, !prof !540

209:                                              ; preds = %206
  %210 = tail call i32 @side_effects_p(ptr noundef nonnull %67) #9
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = tail call fastcc ptr @comparison_result(i32 noundef %66, i32 noundef 1) #8
  br label %608

214:                                              ; preds = %187, %197, %209, %206
  %215 = load i32, ptr %67, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 32
  br i1 %217, label %218, label %255, !prof !538

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
  %227 = load i8, ptr %226, align 1, !tbaa !193
  %228 = and i8 %227, -2
  %229 = icmp eq i8 %228, 8
  br i1 %229, label %230, label %255

230:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %231 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %231, i64 32, i1 false), !tbaa.struct !350
  %232 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %232, i64 32, i1 false), !tbaa.struct !350
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
  %240 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %253

241:                                              ; preds = %238, %238, %238, %238, %238, %238, %238
  %242 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
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
  br label %608

255:                                              ; preds = %222, %218, %214
  %256 = icmp eq i8 %71, 2
  br i1 %256, label %259, label %257, !prof !540

257:                                              ; preds = %255
  %258 = icmp eq i32 %53, 0
  br i1 %258, label %259, label %342

259:                                              ; preds = %257, %255
  %260 = trunc i32 %215 to i16
  switch i16 %260, label %342 [
    i16 32, label %261
    i16 30, label %261
  ], !prof !541

261:                                              ; preds = %259, %259
  %262 = load i32, ptr %68, align 8
  %263 = and i32 %262, 65535
  %264 = trunc i32 %262 to i16
  switch i16 %264, label %342 [
    i16 32, label %265
    i16 30, label %265
  ], !prof !542

265:                                              ; preds = %261, %261
  %266 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %267 = load i8, ptr %266, align 1, !tbaa !193
  %268 = zext i8 %267 to i32
  %269 = shl nuw nsw i32 %268, 3
  %270 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %271 = load i64, ptr %270, align 8, !tbaa !193
  br i1 %217, label %272, label %275, !prof !329

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %274 = load i64, ptr %273, align 8, !tbaa !193
  br label %277

275:                                              ; preds = %265
  %276 = ashr i64 %271, 63
  br label %277

277:                                              ; preds = %275, %272
  %278 = phi i64 [ %274, %272 ], [ %276, %275 ]
  %279 = icmp eq i32 %263, 32
  %280 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %281 = load i64, ptr %280, align 8, !tbaa !193
  br i1 %279, label %282, label %285, !prof !329

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  %284 = load i64, ptr %283, align 8, !tbaa !193
  br label %287

285:                                              ; preds = %277
  %286 = ashr i64 %281, 63
  br label %287

287:                                              ; preds = %285, %282
  %288 = phi i64 [ %284, %282 ], [ %286, %285 ]
  %289 = add i8 %267, -1
  %290 = icmp ult i8 %289, 7
  br i1 %290, label %291, label %308, !prof !543

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
  %302 = select i1 %301, i64 0, i64 %293, !prof !331
  %303 = or i64 %302, %271
  %304 = and i64 %281, %299
  %305 = icmp eq i64 %304, 0
  %306 = select i1 %305, i64 0, i64 %293, !prof !331
  %307 = or i64 %306, %281
  br label %310

308:                                              ; preds = %287
  %309 = icmp eq i8 %289, 7
  br i1 %309, label %310, label %317, !prof !266

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
  br i1 %326, label %327, label %329, !prof !544

327:                                              ; preds = %317
  %328 = tail call fastcc ptr @comparison_result(i32 noundef %66, i32 noundef 1) #8
  br label %608

329:                                              ; preds = %317
  %330 = icmp slt i64 %320, %321
  %331 = icmp eq i64 %320, %321
  %332 = icmp ult i64 %319, %318
  %333 = select i1 %331, i1 %332, i1 false
  %334 = select i1 %330, i1 true, i1 %333
  %335 = select i1 %334, i32 2, i32 4, !prof !329
  %336 = icmp ult i64 %322, %323
  %337 = select i1 %324, i1 %332, i1 false
  %338 = select i1 %336, i1 true, i1 %337
  %339 = select i1 %338, i32 8, i32 16, !prof !329
  %340 = or disjoint i32 %339, %335
  %341 = tail call fastcc ptr @comparison_result(i32 noundef %66, i32 noundef %340) #8
  br label %608

342:                                              ; preds = %261, %259, %257
  %343 = and i8 %71, -2
  %344 = icmp eq i8 %343, 2
  br i1 %344, label %345, label %458, !prof !545

345:                                              ; preds = %342
  %346 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %347 = load i8, ptr %346, align 1, !tbaa !193
  %348 = icmp ult i8 %347, 9
  br i1 %348, label %349, label %458, !prof !546

349:                                              ; preds = %345
  %350 = load i32, ptr %68, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 30
  br i1 %352, label %353, label %458, !prof !547

353:                                              ; preds = %349
  %354 = tail call i64 @nonzero_bits(ptr noundef nonnull %67, i32 noundef %53) #9
  %355 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %356 = load i64, ptr %355, align 8, !tbaa !193
  %357 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %69
  %358 = load i64, ptr %357, align 8, !tbaa !263
  %359 = lshr i64 %358, 1
  %360 = icmp ugt i64 %354, %359
  br i1 %360, label %361, label %380, !prof !548

361:                                              ; preds = %353
  %362 = add i32 %66, -90
  %363 = icmp ult i32 %362, -4
  %364 = zext i1 %363 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @get_mode_bounds(i32 noundef %53, i32 noundef %364, i32 noundef %53, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %365 = load ptr, ptr %7, align 8, !tbaa !243
  %366 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1
  %367 = load i64, ptr %366, align 8, !tbaa !193
  %368 = load ptr, ptr %8, align 8, !tbaa !243
  %369 = getelementptr inbounds %struct.rtx_def, ptr %368, i64 0, i32 1
  %370 = load i64, ptr %369, align 8, !tbaa !193
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
  switch i32 %66, label %458 [
    i32 86, label %383
    i32 82, label %387
    i32 88, label %395
    i32 84, label %403
    i32 81, label %411
    i32 87, label %417
    i32 83, label %425
    i32 89, label %433
    i32 85, label %441
    i32 80, label %449
  ], !prof !549

383:                                              ; preds = %380
  %384 = icmp ugt i64 %356, %381
  br i1 %384, label %455, label %385

385:                                              ; preds = %383
  %386 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

387:                                              ; preds = %380
  %388 = icmp sgt i64 %356, %381
  br i1 %388, label %391, label %389, !prof !550

389:                                              ; preds = %387
  %390 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

391:                                              ; preds = %387
  %392 = icmp sgt i64 %356, %382
  br i1 %392, label %393, label %458, !prof !551

393:                                              ; preds = %391
  %394 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

395:                                              ; preds = %380
  %396 = icmp ult i64 %356, %382
  br i1 %396, label %399, label %397, !prof !552

397:                                              ; preds = %395
  %398 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

399:                                              ; preds = %395
  %400 = icmp ult i64 %356, %381
  br i1 %400, label %401, label %458, !prof !553

401:                                              ; preds = %399
  %402 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

403:                                              ; preds = %380
  %404 = icmp slt i64 %356, %382
  br i1 %404, label %407, label %405, !prof !554

405:                                              ; preds = %403
  %406 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

407:                                              ; preds = %403
  %408 = icmp slt i64 %356, %381
  br i1 %408, label %409, label %458, !prof !555

409:                                              ; preds = %407
  %410 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

411:                                              ; preds = %380
  %412 = icmp slt i64 %356, %381
  %413 = icmp sgt i64 %356, %382
  %414 = select i1 %412, i1 true, i1 %413
  br i1 %414, label %415, label %458, !prof !556

415:                                              ; preds = %411
  %416 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

417:                                              ; preds = %380
  %418 = icmp ult i64 %356, %382
  br i1 %418, label %421, label %419, !prof !557

419:                                              ; preds = %417
  %420 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

421:                                              ; preds = %417
  %422 = icmp ult i64 %356, %381
  br i1 %422, label %423, label %458, !prof !558

423:                                              ; preds = %421
  %424 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

425:                                              ; preds = %380
  %426 = icmp slt i64 %356, %382
  br i1 %426, label %429, label %427, !prof !559

427:                                              ; preds = %425
  %428 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

429:                                              ; preds = %425
  %430 = icmp slt i64 %356, %381
  br i1 %430, label %431, label %458, !prof !560

431:                                              ; preds = %429
  %432 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

433:                                              ; preds = %380
  %434 = icmp ugt i64 %356, %381
  br i1 %434, label %437, label %435, !prof !561

435:                                              ; preds = %433
  %436 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

437:                                              ; preds = %433
  %438 = icmp ugt i64 %356, %382
  br i1 %438, label %439, label %458, !prof !562

439:                                              ; preds = %437
  %440 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

441:                                              ; preds = %380
  %442 = icmp sgt i64 %356, %381
  br i1 %442, label %445, label %443, !prof !563

443:                                              ; preds = %441
  %444 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

445:                                              ; preds = %441
  %446 = icmp sgt i64 %356, %382
  br i1 %446, label %447, label %458, !prof !564

447:                                              ; preds = %445
  %448 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

449:                                              ; preds = %380
  %450 = icmp slt i64 %356, %381
  %451 = icmp sgt i64 %356, %382
  %452 = select i1 %450, i1 true, i1 %451
  br i1 %452, label %453, label %458, !prof !565

453:                                              ; preds = %449
  %454 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

455:                                              ; preds = %383
  %456 = icmp ugt i64 %356, %382
  %457 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br i1 %456, label %608, label %458

458:                                              ; preds = %391, %399, %407, %421, %429, %437, %445, %380, %411, %449, %342, %455, %349, %345
  %459 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %460 = icmp eq ptr %68, %459
  br i1 %460, label %461, label %504, !prof !566

461:                                              ; preds = %458
  %462 = call zeroext i8 @nonzero_address_p(ptr noundef nonnull %67) #9
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %469, label %464, !prof !567

464:                                              ; preds = %461
  switch i32 %66, label %469 [
    i32 88, label %465
    i32 81, label %465
    i32 87, label %467
    i32 80, label %467
  ]

465:                                              ; preds = %464, %464
  %466 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

467:                                              ; preds = %464, %464
  %468 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

469:                                              ; preds = %464, %461
  %470 = load i32, ptr %65, align 8
  %471 = and i32 %470, 65535
  %472 = icmp eq i32 %471, 62
  br i1 %472, label %473, label %504, !prof !568

473:                                              ; preds = %469
  %474 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %475 = load ptr, ptr %474, align 8, !tbaa !193
  %476 = call ptr @avoid_constant_pool_reference(ptr noundef %475) #8
  %477 = load i32, ptr %476, align 8
  %478 = and i32 %477, 65535
  %479 = icmp eq i32 %478, 30
  br i1 %479, label %480, label %504, !prof !569

480:                                              ; preds = %473
  %481 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %482 = icmp eq ptr %476, %481
  br i1 %482, label %504, label %483

483:                                              ; preds = %480
  %484 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %485 = load i8, ptr %484, align 1, !tbaa !193
  %486 = icmp ult i8 %485, 9
  br i1 %486, label %487, label %497

487:                                              ; preds = %483
  %488 = shl nuw nsw i8 %485, 3
  %489 = zext nneg i8 %488 to i64
  %490 = add nuw nsw i64 %489, 4294967295
  %491 = getelementptr inbounds %struct.rtx_def, ptr %476, i64 0, i32 1
  %492 = load i64, ptr %491, align 8, !tbaa !193
  %493 = and i64 %490, 4294967295
  %494 = shl nuw i64 1, %493
  %495 = and i64 %492, %494
  %496 = icmp ne i64 %495, 0
  br label %497

497:                                              ; preds = %487, %483
  %498 = phi i1 [ false, %483 ], [ %496, %487 ]
  switch i32 %66, label %504 [
    i32 81, label %608
    i32 88, label %608
    i32 80, label %499
    i32 87, label %499
    i32 85, label %501
    i32 84, label %501
    i32 83, label %503
    i32 82, label %503
  ]

499:                                              ; preds = %497, %497
  %500 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

501:                                              ; preds = %497, %497
  %502 = load ptr, ptr @const_true_rtx, align 8
  br i1 %498, label %608, label %504

503:                                              ; preds = %497, %497
  br i1 %498, label %608, label %504

504:                                              ; preds = %497, %473, %480, %501, %469, %503, %458
  %505 = sext i32 %53 to i64
  %506 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %505
  %507 = load ptr, ptr %506, align 8, !tbaa !243
  %508 = icmp eq ptr %68, %507
  br i1 %508, label %509, label %608, !prof !566

509:                                              ; preds = %504
  %510 = load i32, ptr %67, align 8
  %511 = trunc i32 %510 to i16
  switch i16 %511, label %608 [
    i16 111, label %518
    i16 101, label %512
  ], !prof !570

512:                                              ; preds = %509
  %513 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !193
  %515 = load i32, ptr %514, align 8
  %516 = and i32 %515, 65535
  %517 = icmp eq i32 %516, 111
  br i1 %517, label %518, label %608

518:                                              ; preds = %509, %512
  switch i32 %66, label %608 [
    i32 85, label %519
    i32 82, label %564
    i32 93, label %606
  ]

519:                                              ; preds = %518
  %520 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !200
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %541, label %522

522:                                              ; preds = %519
  switch i8 %71, label %552 [
    i8 8, label %523
    i8 9, label %523
    i8 11, label %523
    i8 17, label %523
    i8 2, label %542
    i8 3, label %542
    i8 10, label %542
    i8 12, label %542
  ]

523:                                              ; preds = %522, %522, %522, %522
  %524 = icmp eq i8 %343, 8
  br i1 %524, label %529, label %525

525:                                              ; preds = %523
  %526 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %69
  %527 = load i8, ptr %526, align 1, !tbaa !193
  %528 = zext i8 %527 to i32
  br label %529

529:                                              ; preds = %525, %523
  %530 = phi i32 [ %53, %523 ], [ %528, %525 ]
  %531 = add i32 %530, -38
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %532
  %534 = load ptr, ptr %533, align 8, !tbaa !243
  %535 = getelementptr inbounds %struct.real_format, ptr %534, i64 0, i32 11
  %536 = load i8, ptr %535, align 2, !tbaa !288
  %537 = icmp eq i8 %536, 0
  %538 = load i32, ptr @flag_finite_math_only, align 4
  %539 = icmp ne i32 %538, 0
  %540 = select i1 %537, i1 true, i1 %539
  br i1 %540, label %541, label %608

541:                                              ; preds = %529, %519
  switch i8 %71, label %552 [
    i8 2, label %542
    i8 3, label %542
    i8 10, label %542
    i8 12, label %542
  ]

542:                                              ; preds = %522, %522, %522, %522, %541, %541, %541, %541
  %543 = load i32, ptr @flag_wrapv, align 4, !tbaa !200
  %544 = icmp eq i32 %543, 0
  %545 = load i32, ptr @flag_trapv, align 4
  %546 = icmp eq i32 %545, 0
  %547 = select i1 %544, i1 %546, i1 false
  %548 = load i32, ptr @flag_strict_overflow, align 4
  %549 = icmp ne i32 %548, 0
  %550 = select i1 %547, i1 %549, i1 false
  br i1 %550, label %551, label %608

551:                                              ; preds = %542
  switch i8 %71, label %552 [
    i8 2, label %557
    i8 3, label %557
    i8 10, label %557
  ]

552:                                              ; preds = %522, %541, %551
  %553 = icmp eq i8 %71, 12
  %554 = load i32, ptr @warn_strict_overflow, align 4
  %555 = icmp sgt i32 %554, 1
  %556 = select i1 %553, i1 %555, i1 false
  br i1 %556, label %560, label %562

557:                                              ; preds = %551, %551, %551
  %558 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !200
  %559 = icmp sgt i32 %558, 1
  br i1 %559, label %560, label %562

560:                                              ; preds = %552, %557
  %561 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 187, ptr noundef nonnull @.str.2) #9
  br label %562

562:                                              ; preds = %560, %557, %552
  %563 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %608

564:                                              ; preds = %518
  switch i8 %71, label %594 [
    i8 8, label %565
    i8 9, label %565
    i8 11, label %565
    i8 17, label %565
    i8 2, label %584
    i8 3, label %584
    i8 10, label %584
    i8 12, label %584
  ]

565:                                              ; preds = %564, %564, %564, %564
  %566 = icmp eq i8 %343, 8
  br i1 %566, label %571, label %567

567:                                              ; preds = %565
  %568 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %69
  %569 = load i8, ptr %568, align 1, !tbaa !193
  %570 = zext i8 %569 to i32
  br label %571

571:                                              ; preds = %567, %565
  %572 = phi i32 [ %53, %565 ], [ %570, %567 ]
  %573 = add i32 %572, -38
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %574
  %576 = load ptr, ptr %575, align 8, !tbaa !243
  %577 = getelementptr inbounds %struct.real_format, ptr %576, i64 0, i32 11
  %578 = load i8, ptr %577, align 2, !tbaa !288
  %579 = icmp eq i8 %578, 0
  %580 = load i32, ptr @flag_finite_math_only, align 4
  %581 = icmp ne i32 %580, 0
  %582 = select i1 %579, i1 true, i1 %581
  br i1 %582, label %583, label %608

583:                                              ; preds = %571
  switch i8 %71, label %594 [
    i8 12, label %584
    i8 10, label %584
  ]

584:                                              ; preds = %583, %583, %564, %564, %564, %564
  %585 = load i32, ptr @flag_wrapv, align 4, !tbaa !200
  %586 = icmp eq i32 %585, 0
  %587 = load i32, ptr @flag_trapv, align 4
  %588 = icmp eq i32 %587, 0
  %589 = select i1 %586, i1 %588, i1 false
  %590 = load i32, ptr @flag_strict_overflow, align 4
  %591 = icmp ne i32 %590, 0
  %592 = select i1 %589, i1 %591, i1 false
  br i1 %592, label %593, label %608

593:                                              ; preds = %584
  switch i8 %71, label %594 [
    i8 2, label %599
    i8 3, label %599
    i8 10, label %599
  ]

594:                                              ; preds = %564, %583, %593
  %595 = icmp eq i8 %71, 12
  %596 = load i32, ptr @warn_strict_overflow, align 4
  %597 = icmp sgt i32 %596, 1
  %598 = select i1 %595, i1 %597, i1 false
  br i1 %598, label %602, label %604

599:                                              ; preds = %593, %593, %593
  %600 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !200
  %601 = icmp sgt i32 %600, 1
  br i1 %601, label %602, label %604

602:                                              ; preds = %594, %599
  %603 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 187, ptr noundef nonnull @.str.3) #9
  br label %604

604:                                              ; preds = %602, %599, %594
  %605 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

606:                                              ; preds = %518
  %607 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %608

608:                                              ; preds = %49, %44, %497, %497, %499, %385, %393, %389, %401, %397, %409, %405, %415, %423, %419, %431, %427, %439, %435, %447, %443, %453, %501, %504, %512, %518, %584, %571, %542, %529, %509, %327, %329, %455, %503, %606, %604, %562, %467, %465, %253, %212, %153, %127
  %609 = phi ptr [ %128, %127 ], [ %154, %153 ], [ %254, %253 ], [ %466, %465 ], [ %468, %467 ], [ %607, %606 ], [ %605, %604 ], [ %563, %562 ], [ %481, %503 ], [ %457, %455 ], [ %213, %212 ], [ %328, %327 ], [ %341, %329 ], [ null, %509 ], [ null, %529 ], [ null, %542 ], [ null, %571 ], [ null, %584 ], [ null, %518 ], [ null, %512 ], [ null, %504 ], [ %502, %501 ], [ %386, %385 ], [ %394, %393 ], [ %390, %389 ], [ %402, %401 ], [ %398, %397 ], [ %410, %409 ], [ %406, %405 ], [ %416, %415 ], [ %424, %423 ], [ %420, %419 ], [ %432, %431 ], [ %428, %427 ], [ %440, %439 ], [ %436, %435 ], [ %448, %447 ], [ %444, %443 ], [ %454, %453 ], [ %500, %499 ], [ %481, %497 ], [ %481, %497 ], [ null, %44 ], [ null, %49 ]
  ret ptr %609
}

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_relational_operation_1(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 !prof !571 !PGOFuncName !572 {
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %10, label %37, !prof !573

10:                                               ; preds = %5
  %11 = zext nneg i32 %7 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !200
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %37, !prof !574

15:                                               ; preds = %10
  switch i32 %0, label %37 [
    i32 80, label %16
    i32 81, label %28
  ], !prof !575

16:                                               ; preds = %15
  %17 = lshr i32 %6, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %22, !prof !576

20:                                               ; preds = %16
  %21 = tail call ptr @simplify_rtx(ptr noundef nonnull %3) #8
  br label %250

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !193
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !193
  %27 = tail call ptr @simplify_gen_relational(i32 noundef %7, i32 noundef %1, i32 noundef 0, ptr noundef %24, ptr noundef %26) #8
  br label %250

28:                                               ; preds = %15
  %29 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %3, ptr noundef null) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %81, label %31, !prof !577

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !193
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !193
  %36 = tail call ptr @simplify_gen_relational(i32 noundef %29, i32 noundef %1, i32 noundef 0, ptr noundef %33, ptr noundef %35) #8
  br label %250

37:                                               ; preds = %15, %10, %5
  %38 = icmp eq i32 %0, 89
  switch i32 %0, label %81 [
    i32 89, label %39
    i32 86, label %39
  ]

39:                                               ; preds = %37, %37
  %40 = icmp eq i32 %7, 49
  br i1 %40, label %41, label %62, !prof !578

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !193
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 30
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load ptr, ptr %42, align 8, !tbaa !193
  %50 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %49) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load ptr, ptr %43, align 8, !tbaa !193
  %54 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %53) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52, %48
  %57 = load ptr, ptr %43, align 8, !tbaa !193
  %58 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %2, ptr noundef %57, i32 noundef %2) #8
  %59 = select i1 %38, i32 86, i32 89
  %60 = load ptr, ptr %42, align 8, !tbaa !193
  %61 = tail call ptr @simplify_gen_relational(i32 noundef %59, i32 noundef %1, i32 noundef %2, ptr noundef %60, ptr noundef %58) #8
  br label %250

62:                                               ; preds = %52, %41, %39
  switch i32 %0, label %81 [
    i32 89, label %63
    i32 86, label %63
  ]

63:                                               ; preds = %62, %62
  %64 = load i32, ptr %3, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 49
  br i1 %66, label %67, label %81, !prof !578

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !193
  %71 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %70) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %68, align 8, !tbaa !193
  %75 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %74) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load ptr, ptr %68, align 8, !tbaa !193
  %79 = tail call ptr @copy_rtx(ptr noundef %78) #9
  %80 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %79) #8
  br label %250

81:                                               ; preds = %28, %37, %62, %73, %67, %63
  %82 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %83 = icmp eq ptr %82, %4
  br i1 %83, label %84, label %89, !prof !579

84:                                               ; preds = %81
  switch i32 %0, label %109 [
    i32 87, label %85
    i32 88, label %87
  ], !prof !580

85:                                               ; preds = %84
  %86 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4) #8
  br label %250

87:                                               ; preds = %84
  %88 = tail call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4) #8
  br label %250

89:                                               ; preds = %81
  %90 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !243
  %91 = icmp eq ptr %90, %4
  br i1 %91, label %92, label %101, !prof !581

92:                                               ; preds = %89
  switch i32 %0, label %109 [
    i32 82, label %93
    i32 86, label %95
    i32 85, label %97
    i32 89, label %99
  ], !prof !582

93:                                               ; preds = %92
  %94 = tail call ptr @simplify_gen_relational(i32 noundef 83, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %250

95:                                               ; preds = %92
  %96 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %250

97:                                               ; preds = %92
  %98 = tail call ptr @simplify_gen_relational(i32 noundef 84, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %250

99:                                               ; preds = %92
  %100 = tail call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %250

101:                                              ; preds = %89
  %102 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  %103 = icmp eq ptr %102, %4
  br i1 %103, label %104, label %109, !prof !583

104:                                              ; preds = %101
  switch i32 %0, label %109 [
    i32 84, label %105
    i32 83, label %107
  ], !prof !584

105:                                              ; preds = %104
  %106 = tail call ptr @simplify_gen_relational(i32 noundef 85, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %250

107:                                              ; preds = %104
  %108 = tail call ptr @simplify_gen_relational(i32 noundef 82, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %82) #8
  br label %250

109:                                              ; preds = %104, %84, %92, %101
  %110 = icmp eq i32 %0, 80
  %111 = and i32 %0, -2
  %112 = icmp eq i32 %111, 80
  br i1 %112, label %113, label %150, !prof !585

113:                                              ; preds = %109
  %114 = icmp eq i32 %7, 49
  %115 = add nsw i32 %7, -49
  %116 = icmp ult i32 %115, 2
  br i1 %116, label %117, label %148, !prof !586

117:                                              ; preds = %113
  %118 = load i32, ptr %4, align 8
  %119 = and i32 %118, 65535
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !200
  %123 = icmp eq i32 %122, 9
  br i1 %123, label %124, label %148

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %126 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !193
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !200
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %134, label %148

134:                                              ; preds = %124
  %135 = zext i32 %2 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !193
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
  %144 = load ptr, ptr %125, align 8, !tbaa !193
  %145 = select i1 %114, i32 50, i32 49
  %146 = tail call ptr @simplify_gen_binary(i32 noundef %145, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %127) #8
  %147 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %144, ptr noundef %146) #8
  br label %250

148:                                              ; preds = %138, %113, %124, %117
  %149 = and i1 %110, %83
  br i1 %149, label %152, label %179, !prof !587

150:                                              ; preds = %109
  %151 = and i1 %110, %83
  br i1 %151, label %152, label %230, !prof !587

152:                                              ; preds = %150, %148
  %153 = zext i32 %1 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !193
  %156 = icmp eq i8 %155, 2
  %157 = icmp ne i32 %2, 0
  %158 = and i1 %157, %156
  %159 = icmp ne i32 %1, 13
  %160 = and i1 %159, %158
  %161 = icmp ne i32 %2, 13
  %162 = and i1 %161, %160
  br i1 %162, label %163, label %179, !prof !588

163:                                              ; preds = %152
  %164 = tail call i64 @nonzero_bits(ptr noundef nonnull %3, i32 noundef %2) #9
  %165 = icmp eq i64 %164, 1
  br i1 %165, label %168, label %166, !prof !589

166:                                              ; preds = %163
  %167 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %179

168:                                              ; preds = %163
  %169 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %170 = load i8, ptr %169, align 1, !tbaa !193
  %171 = zext i32 %2 to i64
  %172 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !193
  %174 = icmp ugt i8 %170, %173
  br i1 %174, label %175, label %177, !prof !590

175:                                              ; preds = %168
  %176 = tail call ptr @simplify_gen_unary(i32 noundef 99, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %2) #8
  br label %250

177:                                              ; preds = %168
  %178 = tail call ptr @lowpart_subreg(i32 noundef %1, ptr noundef nonnull %3, i32 noundef %2) #9
  br label %250

179:                                              ; preds = %166, %148, %152
  %180 = phi ptr [ %167, %166 ], [ %82, %148 ], [ %82, %152 ]
  %181 = icmp eq ptr %180, %4
  %182 = icmp eq i32 %7, 63
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %190, !prof !591

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !193
  %187 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !193
  %189 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %186, ptr noundef %188) #8
  br label %250

190:                                              ; preds = %179
  %191 = trunc i32 %6 to i16
  switch i16 %191, label %250 [
    i16 63, label %192
    i16 117, label %232
  ], !prof !592

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !193
  %195 = tail call i32 @rtx_equal_p(ptr noundef %194, ptr noundef %4) #9
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr %193, align 8, !tbaa !193
  %199 = tail call i32 @side_effects_p(ptr noundef %198) #9
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !193
  %204 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %205 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %203, ptr noundef %204) #8
  br label %250

206:                                              ; preds = %192, %197
  %207 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !193
  %209 = tail call i32 @rtx_equal_p(ptr noundef %208, ptr noundef %4) #9
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %206
  %212 = load ptr, ptr %207, align 8, !tbaa !193
  %213 = tail call i32 @side_effects_p(ptr noundef %212) #9
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load ptr, ptr %193, align 8, !tbaa !193
  %217 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  %218 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %216, ptr noundef %217) #8
  br label %250

219:                                              ; preds = %206, %211
  %220 = load i32, ptr %4, align 8
  %221 = trunc i32 %220 to i16
  switch i16 %221, label %250 [
    i16 30, label %222
    i16 32, label %222
  ]

222:                                              ; preds = %219, %219
  %223 = load ptr, ptr %207, align 8, !tbaa !193
  %224 = load i32, ptr %223, align 8
  %225 = trunc i32 %224 to i16
  switch i16 %225, label %250 [
    i16 30, label %226
    i16 32, label %226
  ]

226:                                              ; preds = %222, %222
  %227 = load ptr, ptr %193, align 8, !tbaa !193
  %228 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %2, ptr noundef nonnull %223, ptr noundef nonnull %4) #8
  %229 = tail call ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %227, ptr noundef %228) #8
  br label %250

230:                                              ; preds = %150
  %231 = icmp eq i32 %7, 117
  br i1 %231, label %232, label %250, !prof !593

232:                                              ; preds = %190, %230
  %233 = phi ptr [ %180, %190 ], [ %82, %230 ]
  %234 = icmp eq ptr %233, %4
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  switch i32 %0, label %250 [
    i32 81, label %236
    i32 84, label %236
    i32 88, label %236
    i32 80, label %243
    i32 83, label %243
    i32 87, label %243
  ]

236:                                              ; preds = %235, %235, %235
  %237 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !193
  %239 = load i32, ptr %238, align 8
  %240 = lshr i32 %239, 16
  %241 = and i32 %240, 255
  %242 = tail call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef %1, i32 noundef %241, ptr noundef nonnull %238, ptr noundef %4) #8
  br label %250

243:                                              ; preds = %235, %235, %235
  %244 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !193
  %246 = load i32, ptr %245, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %1, i32 noundef %248, ptr noundef nonnull %245, ptr noundef %4) #8
  br label %250

250:                                              ; preds = %190, %219, %222, %31, %230, %232, %235, %175, %177, %243, %236, %226, %215, %201, %184, %143, %107, %105, %99, %97, %95, %93, %87, %85, %77, %56, %22, %20
  %251 = phi ptr [ %21, %20 ], [ %27, %22 ], [ %61, %56 ], [ %86, %85 ], [ %88, %87 ], [ %147, %143 ], [ %189, %184 ], [ %229, %226 ], [ %249, %243 ], [ %242, %236 ], [ %218, %215 ], [ %205, %201 ], [ %100, %99 ], [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %106, %105 ], [ %108, %107 ], [ %80, %77 ], [ %36, %31 ], [ %176, %175 ], [ %178, %177 ], [ null, %235 ], [ null, %232 ], [ null, %230 ], [ null, %222 ], [ null, %219 ], [ null, %190 ]
  ret ptr %251
}

; Function Attrs: optsize
declare zeroext i8 @nonzero_address_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @signed_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @comparison_result(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !prof !594 !PGOFuncName !595 {
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
  ], !prof !596

3:                                                ; preds = %2, %2
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr @const_true_rtx, align 8
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %8 = select i1 %5, ptr %7, ptr %6, !prof !597
  br label %69

9:                                                ; preds = %2, %2
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %13 = load ptr, ptr @const_true_rtx, align 8
  %14 = select i1 %11, ptr %13, ptr %12, !prof !597
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
  %64 = load ptr, ptr @const_true_rtx, align 8, !tbaa !243
  br label %69

65:                                               ; preds = %2
  %66 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
  br label %69

67:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4236, ptr noundef nonnull @.str.1) #9
  %68 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !243
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
define internal fastcc ptr @simplify_immed_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 !prof !598 !PGOFuncName !599 {
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [16 x i64], align 16
  %9 = alloca %struct.real_value, align 8
  %10 = alloca [16 x i64], align 16
  %11 = alloca %struct.fixed_value, align 8
  store ptr %1, ptr %5, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %12 = zext i32 %0 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !193
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %20, !prof !600

16:                                               ; preds = %4
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %487, label %25

20:                                               ; preds = %4
  %21 = and i8 %14, -2
  %22 = icmp eq i8 %21, 10
  br i1 %22, label %487, label %23, !prof !601

23:                                               ; preds = %20
  %24 = load i32, ptr %1, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ %17, %16 ]
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 33
  br i1 %28, label %29, label %44, !prof !600

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !193
  %32 = load i32, ptr %31, align 8, !tbaa !333
  %33 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1
  %34 = zext i32 %2 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !193
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !193
  %40 = freeze i8 %39
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 3
  %43 = icmp sgt i32 %32, 0
  br i1 %43, label %44, label %280, !prof !266

44:                                               ; preds = %25, %29
  %45 = phi i32 [ %42, %29 ], [ 512, %25 ]
  %46 = phi i32 [ %32, %29 ], [ 1, %25 ]
  %47 = phi ptr [ %33, %29 ], [ %5, %25 ]
  %48 = icmp eq i32 %45, 0
  %49 = zext nneg i32 %46 to i64
  br label %50

50:                                               ; preds = %44, %277
  %51 = phi i64 [ 0, %44 ], [ %278, %277 ]
  %52 = getelementptr inbounds ptr, ptr %47, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !243
  %54 = trunc i64 %51 to i32
  %55 = mul i32 %45, %54
  %56 = lshr exact i32 %55, 3
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %6, i64 %57
  %59 = load i32, ptr %53, align 8
  %60 = trunc i32 %59 to i16
  switch i16 %60, label %276 [
    i16 30, label %61
    i16 32, label %92
    i16 31, label %185
  ], !prof !602

61:                                               ; preds = %50
  br i1 %48, label %69, label %62, !prof !603

62:                                               ; preds = %61
  %63 = call i32 @llvm.umin.i32(i32 %45, i32 64)
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !193
  br label %78

67:                                               ; preds = %78
  %68 = trunc i64 %84 to i32
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi ptr [ %58, %61 ], [ %83, %67 ]
  %71 = phi i32 [ 0, %61 ], [ %68, %67 ]
  %72 = icmp ult i32 %71, %45
  br i1 %72, label %73, label %277, !prof !604

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !193
  %76 = ashr i64 %75, 63
  %77 = trunc i64 %76 to i8
  br label %86

78:                                               ; preds = %62, %78
  %79 = phi i64 [ 0, %62 ], [ %84, %78 ]
  %80 = phi ptr [ %58, %62 ], [ %83, %78 ]
  %81 = ashr i64 %66, %79
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds i8, ptr %80, i64 1
  store i8 %82, ptr %80, align 1, !tbaa !193
  %84 = add nuw nsw i64 %79, 8
  %85 = icmp ult i64 %84, %64
  br i1 %85, label %78, label %67, !prof !605, !llvm.loop !606

86:                                               ; preds = %73, %86
  %87 = phi i32 [ %71, %73 ], [ %90, %86 ]
  %88 = phi ptr [ %70, %73 ], [ %89, %86 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  store i8 %77, ptr %88, align 1, !tbaa !193
  %90 = add nuw nsw i32 %87, 8
  %91 = icmp ult i32 %90, %45
  br i1 %91, label %86, label %277, !prof !607, !llvm.loop !608

92:                                               ; preds = %50
  %93 = and i32 %59, 16711680
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %137

95:                                               ; preds = %92
  %96 = icmp ugt i32 %45, 64
  br i1 %96, label %98, label %97

97:                                               ; preds = %95
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4913, ptr noundef nonnull @.str.1) #9
  br label %98

98:                                               ; preds = %95, %97
  %99 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !193
  br label %108

101:                                              ; preds = %108
  %102 = icmp ugt i32 %45, 64
  br i1 %102, label %103, label %118

103:                                              ; preds = %101
  %104 = call i32 @llvm.umin.i32(i32 %45, i32 128)
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %107 = load i64, ptr %106, align 8, !tbaa !193
  br label %128

108:                                              ; preds = %98, %108
  %109 = phi i64 [ 0, %98 ], [ %114, %108 ]
  %110 = phi ptr [ %58, %98 ], [ %113, %108 ]
  %111 = ashr i64 %100, %109
  %112 = trunc i64 %111 to i8
  %113 = getelementptr inbounds i8, ptr %110, i64 1
  store i8 %112, ptr %110, align 1, !tbaa !193
  %114 = add nuw nsw i64 %109, 8
  %115 = icmp ult i64 %109, 56
  br i1 %115, label %108, label %101, !llvm.loop !609

116:                                              ; preds = %128
  %117 = trunc i64 %135 to i32
  br label %118

118:                                              ; preds = %116, %101
  %119 = phi ptr [ %113, %101 ], [ %134, %116 ]
  %120 = phi i32 [ 64, %101 ], [ %117, %116 ]
  %121 = icmp ult i32 %120, %45
  br i1 %121, label %122, label %277

122:                                              ; preds = %118
  %123 = add nsw i32 %45, -1
  %124 = sub i32 %123, %120
  %125 = lshr i32 %124, 3
  %126 = add nuw nsw i32 %125, 1
  %127 = zext nneg i32 %126 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %119, i8 0, i64 %127, i1 false), !tbaa !193
  br label %277

128:                                              ; preds = %103, %128
  %129 = phi i64 [ 64, %103 ], [ %135, %128 ]
  %130 = phi ptr [ %113, %103 ], [ %134, %128 ]
  %131 = add nsw i64 %129, -64
  %132 = ashr i64 %107, %131
  %133 = trunc i64 %132 to i8
  %134 = getelementptr inbounds i8, ptr %130, i64 1
  store i8 %133, ptr %130, align 1, !tbaa !193
  %135 = add nuw nsw i64 %129, 8
  %136 = icmp ult i64 %135, %105
  br i1 %136, label %128, label %116, !llvm.loop !610

137:                                              ; preds = %92
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #10
  %138 = lshr i32 %59, 16
  %139 = and i32 %138, 255
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !193
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 3
  %145 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %140
  %146 = load i8, ptr %145, align 1, !tbaa !193
  %147 = and i8 %146, -2
  %148 = icmp eq i8 %147, 8
  br i1 %148, label %150, label %149

149:                                              ; preds = %137
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4933, ptr noundef nonnull @.str.1) #9
  br label %150

150:                                              ; preds = %137, %149
  %151 = icmp ugt i32 %144, %45
  br i1 %151, label %152, label %153

152:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4934, ptr noundef nonnull @.str.1) #9
  br label %153

153:                                              ; preds = %152, %150
  %154 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %155 = load i32, ptr %53, align 8
  %156 = lshr i32 %155, 16
  %157 = and i32 %156, 255
  %158 = call i64 @real_to_target(ptr noundef nonnull %8, ptr noundef nonnull %154, i32 noundef %157) #9
  %159 = icmp eq i8 %142, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %170, %153
  %161 = phi ptr [ %58, %153 ], [ %181, %170 ]
  %162 = phi i32 [ 0, %153 ], [ %182, %170 ]
  %163 = icmp ult i32 %162, %45
  br i1 %163, label %164, label %184

164:                                              ; preds = %160
  %165 = add nsw i32 %45, -1
  %166 = sub i32 %165, %162
  %167 = lshr i32 %166, 3
  %168 = add nuw nsw i32 %167, 1
  %169 = zext nneg i32 %168 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %161, i8 0, i64 %169, i1 false), !tbaa !193
  br label %184

170:                                              ; preds = %153, %170
  %171 = phi i32 [ %182, %170 ], [ 0, %153 ]
  %172 = phi ptr [ %181, %170 ], [ %58, %153 ]
  %173 = lshr i32 %171, 5
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds [16 x i64], ptr %8, i64 0, i64 %174
  %176 = load i64, ptr %175, align 8, !tbaa !263
  %177 = and i32 %171, 24
  %178 = zext nneg i32 %177 to i64
  %179 = ashr i64 %176, %178
  %180 = trunc i64 %179 to i8
  %181 = getelementptr inbounds i8, ptr %172, i64 1
  store i8 %180, ptr %172, align 1, !tbaa !193
  %182 = add nuw nsw i32 %171, 8
  %183 = icmp ult i32 %182, %144
  br i1 %183, label %170, label %160, !llvm.loop !611

184:                                              ; preds = %164, %160
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #10
  br label %277

185:                                              ; preds = %50
  %186 = icmp ult i32 %45, 65
  br i1 %186, label %192, label %187

187:                                              ; preds = %185
  %188 = call i32 @llvm.umin.i32(i32 %45, i32 128)
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %191 = load i64, ptr %190, align 8, !tbaa !193
  br label %250

192:                                              ; preds = %185
  br i1 %48, label %277, label %193

193:                                              ; preds = %192
  %194 = zext nneg i32 %45 to i64
  %195 = add nsw i64 %194, -1
  %196 = lshr i64 %195, 3
  %197 = insertelement <16 x i64> poison, i64 %196, i64 0
  %198 = shufflevector <16 x i64> %197, <16 x i64> poison, <16 x i32> zeroinitializer
  %199 = icmp uge <16 x i64> %198, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %200 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %201 = load i64, ptr %200, align 8, !tbaa !193
  %202 = extractelement <16 x i1> %199, i64 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %193
  %204 = trunc i64 %201 to i8
  store i8 %204, ptr %58, align 1, !tbaa !193
  br label %205

205:                                              ; preds = %203, %193
  %206 = extractelement <16 x i1> %199, i64 1
  br i1 %206, label %207, label %211

207:                                              ; preds = %205
  %208 = getelementptr i8, ptr %58, i64 1
  %209 = lshr i64 %201, 8
  %210 = trunc i64 %209 to i8
  store i8 %210, ptr %208, align 1, !tbaa !193
  br label %211

211:                                              ; preds = %207, %205
  %212 = extractelement <16 x i1> %199, i64 2
  br i1 %212, label %213, label %217

213:                                              ; preds = %211
  %214 = getelementptr i8, ptr %58, i64 2
  %215 = lshr i64 %201, 16
  %216 = trunc i64 %215 to i8
  store i8 %216, ptr %214, align 1, !tbaa !193
  br label %217

217:                                              ; preds = %213, %211
  %218 = extractelement <16 x i1> %199, i64 3
  br i1 %218, label %219, label %223

219:                                              ; preds = %217
  %220 = getelementptr i8, ptr %58, i64 3
  %221 = lshr i64 %201, 24
  %222 = trunc i64 %221 to i8
  store i8 %222, ptr %220, align 1, !tbaa !193
  br label %223

223:                                              ; preds = %219, %217
  %224 = extractelement <16 x i1> %199, i64 4
  br i1 %224, label %225, label %229

225:                                              ; preds = %223
  %226 = getelementptr i8, ptr %58, i64 4
  %227 = lshr i64 %201, 32
  %228 = trunc i64 %227 to i8
  store i8 %228, ptr %226, align 1, !tbaa !193
  br label %229

229:                                              ; preds = %225, %223
  %230 = extractelement <16 x i1> %199, i64 5
  br i1 %230, label %231, label %235

231:                                              ; preds = %229
  %232 = getelementptr i8, ptr %58, i64 5
  %233 = lshr i64 %201, 40
  %234 = trunc i64 %233 to i8
  store i8 %234, ptr %232, align 1, !tbaa !193
  br label %235

235:                                              ; preds = %231, %229
  %236 = extractelement <16 x i1> %199, i64 6
  br i1 %236, label %237, label %241

237:                                              ; preds = %235
  %238 = getelementptr i8, ptr %58, i64 6
  %239 = lshr i64 %201, 48
  %240 = trunc i64 %239 to i8
  store i8 %240, ptr %238, align 1, !tbaa !193
  br label %241

241:                                              ; preds = %237, %235
  %242 = extractelement <16 x i1> %199, i64 7
  br i1 %242, label %243, label %277

243:                                              ; preds = %241
  %244 = getelementptr i8, ptr %58, i64 7
  %245 = lshr i64 %201, 56
  %246 = trunc i64 %245 to i8
  store i8 %246, ptr %244, align 1, !tbaa !193
  br label %277

247:                                              ; preds = %250
  %248 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %249 = load i64, ptr %248, align 8, !tbaa !193
  br label %267

250:                                              ; preds = %187, %250
  %251 = phi i64 [ 0, %187 ], [ %256, %250 ]
  %252 = phi ptr [ %58, %187 ], [ %255, %250 ]
  %253 = ashr i64 %191, %251
  %254 = trunc i64 %253 to i8
  %255 = getelementptr inbounds i8, ptr %252, i64 1
  store i8 %254, ptr %252, align 1, !tbaa !193
  %256 = add nuw nsw i64 %251, 8
  %257 = icmp ult i64 %251, 56
  br i1 %257, label %250, label %247, !llvm.loop !612

258:                                              ; preds = %267
  %259 = trunc i64 %274 to i32
  %260 = icmp ugt i32 %45, %259
  br i1 %260, label %261, label %277

261:                                              ; preds = %258
  %262 = add nsw i32 %45, -1
  %263 = sub i32 %262, %259
  %264 = lshr i32 %263, 3
  %265 = add nuw nsw i32 %264, 1
  %266 = zext nneg i32 %265 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %273, i8 0, i64 %266, i1 false), !tbaa !193
  br label %277

267:                                              ; preds = %247, %267
  %268 = phi i64 [ 64, %247 ], [ %274, %267 ]
  %269 = phi ptr [ %255, %247 ], [ %273, %267 ]
  %270 = add nsw i64 %268, -64
  %271 = ashr i64 %249, %270
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds i8, ptr %269, i64 1
  store i8 %272, ptr %269, align 1, !tbaa !193
  %274 = add nuw nsw i64 %268, 8
  %275 = icmp ult i64 %274, %189
  br i1 %275, label %267, label %258, !llvm.loop !613

276:                                              ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4981, ptr noundef nonnull @.str.1) #9
  br label %277

277:                                              ; preds = %86, %241, %243, %261, %122, %258, %192, %118, %69, %184, %276
  %278 = add nuw nsw i64 %51, 1
  %279 = icmp eq i64 %278, %49
  br i1 %279, label %280, label %50, !prof !604, !llvm.loop !614

280:                                              ; preds = %277, %29
  %281 = zext i32 %2 to i64
  %282 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !193
  %284 = zext i8 %283 to i32
  %285 = icmp ugt i32 %284, %3
  br i1 %285, label %287, label %286, !prof !615

286:                                              ; preds = %280
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5001, ptr noundef nonnull @.str.1) #9
  br label %287

287:                                              ; preds = %280, %286
  %288 = add i8 %14, -12
  %289 = icmp ult i8 %288, 6
  br i1 %289, label %290, label %302, !prof !616

290:                                              ; preds = %287
  %291 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %12
  %292 = load i8, ptr %291, align 1, !tbaa !193
  %293 = zext i8 %292 to i32
  %294 = call ptr @rtvec_alloc(i32 noundef %293) #9
  %295 = getelementptr inbounds %struct.rtvec_def, ptr %294, i64 0, i32 1
  %296 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %12
  %297 = load i8, ptr %296, align 1, !tbaa !193
  %298 = zext i8 %297 to i32
  %299 = zext i8 %297 to i64
  %300 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !193
  br label %302

302:                                              ; preds = %287, %290
  %303 = phi i8 [ %14, %287 ], [ %301, %290 ]
  %304 = phi i64 [ %12, %287 ], [ %299, %290 ]
  %305 = phi i32 [ %0, %287 ], [ %298, %290 ]
  %306 = phi ptr [ null, %287 ], [ %294, %290 ]
  %307 = phi ptr [ %7, %287 ], [ %295, %290 ]
  %308 = phi i32 [ 1, %287 ], [ %293, %290 ]
  %309 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %304
  %310 = load i8, ptr %309, align 1, !tbaa !193
  %311 = freeze i8 %310
  %312 = zext i8 %311 to i32
  %313 = shl nuw nsw i32 %312, 3
  %314 = add i32 %312, %3
  %315 = shl i32 %314, 3
  %316 = icmp slt i32 %315, 513
  br i1 %316, label %318, label %317, !prof !615

317:                                              ; preds = %302
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5026, ptr noundef nonnull @.str.1) #9
  br label %318

318:                                              ; preds = %302, %317
  %319 = icmp eq i32 %308, 0
  br i1 %319, label %482, label %320, !prof !603

320:                                              ; preds = %318
  %321 = sext i32 %3 to i64
  %322 = getelementptr inbounds i8, ptr %6, i64 %321
  %323 = icmp eq i8 %311, 0
  %324 = zext nneg i32 %308 to i64
  br label %325

325:                                              ; preds = %320, %479
  %326 = phi i64 [ 0, %320 ], [ %480, %479 ]
  %327 = trunc i64 %326 to i32
  %328 = mul i32 %313, %327
  %329 = lshr exact i32 %328, 3
  %330 = zext nneg i32 %329 to i64
  %331 = getelementptr inbounds i8, ptr %322, i64 %330
  switch i8 %303, label %478 [
    i8 2, label %332
    i8 3, label %332
    i8 8, label %417
    i8 9, label %417
    i8 4, label %437
    i8 5, label %437
    i8 6, label %437
    i8 7, label %437
  ], !prof !617

332:                                              ; preds = %325, %325
  br i1 %323, label %333, label %340, !prof !603

333:                                              ; preds = %340, %345, %352, %359, %366, %373, %380, %387, %332
  %334 = phi ptr [ %331, %332 ], [ %342, %340 ], [ %347, %345 ], [ %354, %352 ], [ %361, %359 ], [ %368, %366 ], [ %375, %373 ], [ %382, %380 ], [ %388, %387 ]
  %335 = phi i32 [ 0, %332 ], [ 8, %340 ], [ 16, %345 ], [ 24, %352 ], [ 32, %359 ], [ 40, %366 ], [ 48, %373 ], [ 56, %380 ], [ 64, %387 ]
  %336 = phi i64 [ 0, %332 ], [ %344, %340 ], [ %351, %345 ], [ %358, %352 ], [ %365, %359 ], [ %372, %366 ], [ %379, %373 ], [ %386, %380 ], [ %392, %387 ]
  %337 = icmp ult i32 %335, %313
  br i1 %337, label %338, label %406, !prof !603

338:                                              ; preds = %333
  %339 = zext nneg i32 %335 to i64
  br label %393

340:                                              ; preds = %332
  %341 = icmp eq i8 %311, 1
  %342 = getelementptr inbounds i8, ptr %331, i64 1
  %343 = load i8, ptr %331, align 1, !tbaa !193
  %344 = zext i8 %343 to i64
  br i1 %341, label %333, label %345, !prof !618, !llvm.loop !619

345:                                              ; preds = %340
  %346 = icmp ugt i8 %311, 2
  %347 = getelementptr inbounds i8, ptr %331, i64 2
  %348 = load i8, ptr %342, align 1, !tbaa !193
  %349 = zext i8 %348 to i64
  %350 = shl nuw nsw i64 %349, 8
  %351 = or disjoint i64 %350, %344
  br i1 %346, label %352, label %333, !prof !620, !llvm.loop !619

352:                                              ; preds = %345
  %353 = icmp eq i8 %311, 3
  %354 = getelementptr inbounds i8, ptr %331, i64 3
  %355 = load i8, ptr %347, align 1, !tbaa !193
  %356 = zext i8 %355 to i64
  %357 = shl nuw nsw i64 %356, 16
  %358 = or disjoint i64 %357, %351
  br i1 %353, label %333, label %359, !prof !618, !llvm.loop !619

359:                                              ; preds = %352
  %360 = icmp ugt i8 %311, 4
  %361 = getelementptr inbounds i8, ptr %331, i64 4
  %362 = load i8, ptr %354, align 1, !tbaa !193
  %363 = zext i8 %362 to i64
  %364 = shl nuw nsw i64 %363, 24
  %365 = or disjoint i64 %364, %358
  br i1 %360, label %366, label %333, !prof !620, !llvm.loop !619

366:                                              ; preds = %359
  %367 = icmp eq i8 %311, 5
  %368 = getelementptr inbounds i8, ptr %331, i64 5
  %369 = load i8, ptr %361, align 1, !tbaa !193
  %370 = zext i8 %369 to i64
  %371 = shl nuw nsw i64 %370, 32
  %372 = or disjoint i64 %371, %365
  br i1 %367, label %333, label %373, !prof !618, !llvm.loop !619

373:                                              ; preds = %366
  %374 = icmp ugt i8 %311, 6
  %375 = getelementptr inbounds i8, ptr %331, i64 6
  %376 = load i8, ptr %368, align 1, !tbaa !193
  %377 = zext i8 %376 to i64
  %378 = shl nuw nsw i64 %377, 40
  %379 = or i64 %378, %372
  br i1 %374, label %380, label %333, !prof !620, !llvm.loop !619

380:                                              ; preds = %373
  %381 = icmp eq i8 %311, 7
  %382 = getelementptr inbounds i8, ptr %331, i64 7
  %383 = load i8, ptr %375, align 1, !tbaa !193
  %384 = zext i8 %383 to i64
  %385 = shl nuw nsw i64 %384, 48
  %386 = or i64 %385, %379
  br i1 %381, label %333, label %387, !prof !618, !llvm.loop !619

387:                                              ; preds = %380
  %388 = getelementptr inbounds i8, ptr %331, i64 8
  %389 = load i8, ptr %382, align 1, !tbaa !193
  %390 = zext i8 %389 to i64
  %391 = shl nuw i64 %390, 56
  %392 = or i64 %391, %386
  br label %333

393:                                              ; preds = %338, %393
  %394 = phi i64 [ %339, %338 ], [ %404, %393 ]
  %395 = phi i64 [ 0, %338 ], [ %403, %393 ]
  %396 = phi ptr [ %334, %338 ], [ %398, %393 ]
  %397 = zext nneg i32 %313 to i64
  %398 = getelementptr inbounds i8, ptr %396, i64 1
  %399 = load i8, ptr %396, align 1, !tbaa !193
  %400 = zext i8 %399 to i64
  %401 = add nsw i64 %394, -64
  %402 = shl i64 %400, %401
  %403 = or i64 %402, %395
  %404 = add nuw nsw i64 %394, 8
  %405 = icmp ult i64 %404, %397
  br i1 %405, label %393, label %406, !prof !621, !llvm.loop !622

406:                                              ; preds = %393, %333
  %407 = phi i64 [ 0, %333 ], [ %403, %393 ]
  %408 = icmp ult i8 %311, 9
  br i1 %408, label %409, label %412, !prof !615

409:                                              ; preds = %406
  %410 = call ptr @gen_int_mode(i64 noundef %336, i32 noundef %305) #9
  %411 = getelementptr inbounds ptr, ptr %307, i64 %326
  store ptr %410, ptr %411, align 8, !tbaa !243
  br label %479

412:                                              ; preds = %406
  %413 = icmp ult i8 %311, 17
  br i1 %413, label %414, label %487

414:                                              ; preds = %412
  %415 = call ptr @immed_double_const(i64 noundef %336, i64 noundef %407, i32 noundef %305) #9
  %416 = getelementptr inbounds ptr, ptr %307, i64 %326
  store ptr %415, ptr %416, align 8, !tbaa !243
  br label %479

417:                                              ; preds = %325, %325
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %10, i8 0, i64 128, i1 false), !tbaa !263
  br i1 %323, label %434, label %418

418:                                              ; preds = %417, %418
  %419 = phi i32 [ %432, %418 ], [ 0, %417 ]
  %420 = phi ptr [ %421, %418 ], [ %331, %417 ]
  %421 = getelementptr inbounds i8, ptr %420, i64 1
  %422 = load i8, ptr %420, align 1, !tbaa !193
  %423 = zext i8 %422 to i32
  %424 = and i32 %419, 24
  %425 = shl nuw i32 %423, %424
  %426 = sext i32 %425 to i64
  %427 = lshr i32 %419, 5
  %428 = zext nneg i32 %427 to i64
  %429 = getelementptr inbounds [16 x i64], ptr %10, i64 0, i64 %428
  %430 = load i64, ptr %429, align 8, !tbaa !263
  %431 = or i64 %430, %426
  store i64 %431, ptr %429, align 8, !tbaa !263
  %432 = add nuw nsw i32 %419, 8
  %433 = icmp ult i32 %432, %313
  br i1 %433, label %418, label %434, !llvm.loop !623

434:                                              ; preds = %418, %417
  call void @real_from_target(ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %305) #9
  %435 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %9, i32 noundef %305) #9
  %436 = getelementptr inbounds ptr, ptr %307, i64 %326
  store ptr %435, ptr %436, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #10
  br label %479

437:                                              ; preds = %325, %325, %325, %325
  %438 = getelementptr inbounds %struct.fixed_value, ptr %11, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i32 %305, ptr %438, align 8, !tbaa !624
  br i1 %323, label %444, label %439

439:                                              ; preds = %437
  %440 = call i32 @llvm.umin.i32(i32 %313, i32 64)
  %441 = zext nneg i32 %440 to i64
  br label %452

442:                                              ; preds = %452
  %443 = trunc i64 %461 to i32
  store i64 %460, ptr %11, align 8, !tbaa !627
  br label %444

444:                                              ; preds = %442, %437
  %445 = phi ptr [ %456, %442 ], [ %331, %437 ]
  %446 = phi i32 [ %443, %442 ], [ 0, %437 ]
  %447 = icmp ult i32 %446, %313
  br i1 %447, label %448, label %475

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.double_int, ptr %11, i64 0, i32 1
  %450 = zext nneg i32 %313 to i64
  %451 = zext nneg i32 %446 to i64
  br label %463

452:                                              ; preds = %439, %452
  %453 = phi i64 [ %461, %452 ], [ 0, %439 ]
  %454 = phi ptr [ %456, %452 ], [ %331, %439 ]
  %455 = phi i64 [ %460, %452 ], [ 0, %439 ]
  %456 = getelementptr inbounds i8, ptr %454, i64 1
  %457 = load i8, ptr %454, align 1, !tbaa !193
  %458 = zext i8 %457 to i64
  %459 = shl i64 %458, %453
  %460 = or i64 %459, %455
  %461 = add nuw nsw i64 %453, 8
  %462 = icmp ult i64 %461, %441
  br i1 %462, label %452, label %442, !llvm.loop !628

463:                                              ; preds = %448, %463
  %464 = phi i64 [ %451, %448 ], [ %473, %463 ]
  %465 = phi ptr [ %445, %448 ], [ %467, %463 ]
  %466 = phi i64 [ 0, %448 ], [ %472, %463 ]
  %467 = getelementptr inbounds i8, ptr %465, i64 1
  %468 = load i8, ptr %465, align 1, !tbaa !193
  %469 = zext i8 %468 to i64
  %470 = add nsw i64 %464, -64
  %471 = shl i64 %469, %470
  %472 = or i64 %471, %466
  store i64 %472, ptr %449, align 8, !tbaa !629
  %473 = add nuw nsw i64 %464, 8
  %474 = icmp ult i64 %473, %450
  br i1 %474, label %463, label %475, !llvm.loop !630

475:                                              ; preds = %463, %444
  %476 = call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %11, i32 noundef %305) #9
  %477 = getelementptr inbounds ptr, ptr %307, i64 %326
  store ptr %476, ptr %477, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  br label %479

478:                                              ; preds = %325
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5121, ptr noundef nonnull @.str.1) #9
  br label %479

479:                                              ; preds = %434, %475, %478, %409, %414
  %480 = add nuw nsw i64 %326, 1
  %481 = icmp eq i64 %480, %324
  br i1 %481, label %482, label %325, !prof !604, !llvm.loop !631

482:                                              ; preds = %479, %318
  br i1 %289, label %483, label %485, !prof !616

483:                                              ; preds = %482
  %484 = call ptr @gen_rtx_CONST_VECTOR(i32 noundef %0, ptr noundef %306) #9
  br label %487

485:                                              ; preds = %482
  %486 = load ptr, ptr %7, align 8, !tbaa !243
  br label %487

487:                                              ; preds = %412, %20, %16, %485, %483
  %488 = phi ptr [ %484, %483 ], [ %486, %485 ], [ %1, %16 ], [ null, %20 ], [ null, %412 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  ret ptr %488
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !632 !PGOFuncName !633 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !193
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
define dso_local ptr @simplify_rtx(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !634 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = lshr i32 %2, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !200
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
  ], !prof !635

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !193
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call ptr @simplify_unary_operation(i32 noundef %3, i32 noundef %5, ptr noundef nonnull %11, i32 noundef %14) #8
  br label %88

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !193
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !193
  %21 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %18, ptr noundef %20) #9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !636

23:                                               ; preds = %16
  %24 = load ptr, ptr %19, align 8, !tbaa !193
  %25 = load ptr, ptr %17, align 8, !tbaa !193
  %26 = tail call ptr @simplify_gen_binary(i32 noundef %3, i32 noundef %5, ptr noundef %24, ptr noundef %25) #8
  br label %88

27:                                               ; preds = %16, %1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !193
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !193
  %32 = tail call ptr @simplify_binary_operation(i32 noundef %3, i32 noundef %5, ptr noundef %29, ptr noundef %31) #8
  br label %88

33:                                               ; preds = %1, %1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !193
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !193
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !193
  %43 = tail call ptr @simplify_ternary_operation(i32 noundef %3, i32 noundef %5, i32 noundef %38, ptr noundef nonnull %35, ptr noundef %40, ptr noundef %42) #8
  br label %88

44:                                               ; preds = %1, %1
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !193
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
  %64 = load ptr, ptr %63, align 8, !tbaa !193
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %69 = load i32, ptr %68, align 8, !tbaa !193
  %70 = tail call ptr @simplify_subreg(i32 noundef %5, ptr noundef nonnull %64, i32 noundef %67, i32 noundef %69) #8
  br label %88

71:                                               ; preds = %1
  %72 = icmp eq i32 %3, 122
  br i1 %72, label %73, label %88

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !193
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 121
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !193
  %82 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !193
  %84 = tail call i32 @rtx_equal_p(ptr noundef %81, ptr noundef %83) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %82, align 8, !tbaa !193
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
define internal fastcc zeroext i8 @plus_minus_operand_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !637 !PGOFuncName !638 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %29 [
    i16 49, label %30
    i16 50, label %30
    i16 35, label %4
  ], !prof !639

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !193
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 49
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !193
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !200
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !193
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !200
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
define internal fastcc ptr @simplify_plus_minus(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !prof !640 !PGOFuncName !641 {
  %5 = alloca [8 x %struct.simplify_plus_minus_op_data], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  store ptr %2, ptr %5, align 16, !tbaa !642
  %6 = getelementptr inbounds %struct.simplify_plus_minus_op_data, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 1
  store ptr %3, ptr %7, align 16, !tbaa !642
  %8 = icmp eq i32 %0, 50
  %9 = zext i1 %8 to i16
  %10 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !645
  br label %11

11:                                               ; preds = %112, %4
  %12 = phi i32 [ 0, %4 ], [ %105, %112 ]
  %13 = phi i32 [ 0, %4 ], [ %106, %112 ]
  %14 = phi i32 [ 2, %4 ], [ %108, %112 ]
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %19, label %16, !prof !646

16:                                               ; preds = %11
  %17 = icmp sgt i32 %13, 1
  %18 = select i1 %17, i32 1, i32 %12, !prof !647
  br label %118

19:                                               ; preds = %11, %104
  %20 = phi i64 [ %109, %104 ], [ 0, %11 ]
  %21 = phi i32 [ %108, %104 ], [ %14, %11 ]
  %22 = phi i32 [ %107, %104 ], [ 0, %11 ]
  %23 = phi i32 [ %106, %104 ], [ %13, %11 ]
  %24 = phi i32 [ %105, %104 ], [ %12, %11 ]
  %25 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %20
  %26 = load ptr, ptr %25, align 16, !tbaa !642
  %27 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %20, i32 1
  %28 = load i16, ptr %27, align 8, !tbaa !645
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
  ], !prof !648

33:                                               ; preds = %19, %19
  %34 = icmp eq i32 %21, 7
  br i1 %34, label %458, label %35, !prof !649

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  %39 = sext i32 %21 to i64
  %40 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %39
  store ptr %38, ptr %40, align 16, !tbaa !642
  %41 = icmp eq i32 %31, 50
  %42 = zext i1 %41 to i16
  %43 = xor i16 %28, %42
  %44 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %39, i32 1
  store i16 %43, ptr %44, align 8, !tbaa !645
  %45 = add nsw i32 %21, 1
  %46 = load ptr, ptr %36, align 8, !tbaa !193
  store ptr %46, ptr %25, align 16, !tbaa !642
  %47 = or i32 %24, %29
  br label %104

48:                                               ; preds = %19
  %49 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !193
  store ptr %50, ptr %25, align 16, !tbaa !642
  %51 = icmp eq i16 %28, 0
  %52 = zext i1 %51 to i16
  store i16 %52, ptr %27, align 8, !tbaa !645
  br label %104

53:                                               ; preds = %19
  %54 = icmp slt i32 %21, 7
  br i1 %54, label %55, label %104

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !193
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 49
  br i1 %60, label %61, label %104

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !193
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !200
  %69 = icmp eq i32 %68, 9
  br i1 %69, label %70, label %104

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !193
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !200
  %78 = icmp eq i32 %77, 9
  br i1 %78, label %79, label %104

79:                                               ; preds = %70
  store ptr %63, ptr %25, align 16, !tbaa !642
  %80 = load ptr, ptr %56, align 8, !tbaa !193
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !193
  %83 = sext i32 %21 to i64
  %84 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %83
  store ptr %82, ptr %84, align 16, !tbaa !642
  %85 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %83, i32 1
  store i16 %28, ptr %85, align 8, !tbaa !645
  %86 = add nsw i32 %21, 1
  br label %104

87:                                               ; preds = %19
  %88 = icmp eq i32 %21, 7
  br i1 %88, label %104, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !243
  %91 = sext i32 %21 to i64
  %92 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %91
  store ptr %90, ptr %92, align 16, !tbaa !642
  %93 = add nsw i32 %21, 1
  %94 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %91, i32 1
  store i16 %28, ptr %94, align 8, !tbaa !645
  %95 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !193
  store ptr %96, ptr %25, align 16, !tbaa !642
  %97 = icmp eq i16 %28, 0
  %98 = zext i1 %97 to i16
  store i16 %98, ptr %27, align 8, !tbaa !645
  br label %104

99:                                               ; preds = %19
  %100 = add nsw i32 %23, 1
  %101 = icmp eq i16 %28, 0
  br i1 %101, label %104, label %102, !prof !650

102:                                              ; preds = %99
  %103 = tail call fastcc ptr @neg_const_int(i32 noundef %1, ptr noundef nonnull %26) #8
  store ptr %103, ptr %25, align 16, !tbaa !642
  store i16 0, ptr %27, align 8, !tbaa !645
  br label %104

104:                                              ; preds = %19, %99, %102, %87, %89, %53, %55, %61, %70, %79, %48, %35
  %105 = phi i32 [ %47, %35 ], [ 1, %48 ], [ %24, %53 ], [ %24, %55 ], [ %24, %61 ], [ %24, %70 ], [ 1, %79 ], [ %24, %87 ], [ 1, %89 ], [ %24, %99 ], [ 1, %102 ], [ %24, %19 ]
  %106 = phi i32 [ %23, %35 ], [ %23, %48 ], [ %23, %53 ], [ %23, %55 ], [ %23, %61 ], [ %23, %70 ], [ %23, %79 ], [ %23, %87 ], [ %23, %89 ], [ %100, %99 ], [ %100, %102 ], [ %23, %19 ]
  %107 = phi i32 [ 1, %35 ], [ 1, %48 ], [ %22, %53 ], [ %22, %55 ], [ %22, %61 ], [ %22, %70 ], [ 1, %79 ], [ %22, %87 ], [ 1, %89 ], [ %22, %99 ], [ 1, %102 ], [ %22, %19 ]
  %108 = phi i32 [ %45, %35 ], [ %21, %48 ], [ %21, %53 ], [ %21, %55 ], [ %21, %61 ], [ %21, %70 ], [ %86, %79 ], [ 7, %87 ], [ %93, %89 ], [ %21, %99 ], [ %21, %102 ], [ %21, %19 ]
  %109 = add nuw nsw i64 %20, 1
  %110 = sext i32 %108 to i64
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %19, label %112, !prof !651, !llvm.loop !652

112:                                              ; preds = %104
  %113 = icmp eq i32 %107, 0
  br i1 %113, label %114, label %11, !prof !653, !llvm.loop !654

114:                                              ; preds = %112
  %115 = icmp sgt i32 %106, 1
  %116 = select i1 %115, i32 1, i32 %105, !prof !647
  %117 = icmp sgt i32 %108, 1
  br i1 %117, label %121, label %118, !prof !437

118:                                              ; preds = %114, %16
  %119 = phi i32 [ %18, %16 ], [ %116, %114 ]
  %120 = phi i32 [ %14, %16 ], [ %108, %114 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3725, ptr noundef nonnull @.str.1) #9
  br label %123

121:                                              ; preds = %114
  %122 = icmp eq i32 %108, 2
  br i1 %122, label %126, label %123, !prof !655

123:                                              ; preds = %118, %121
  %124 = phi i32 [ %116, %121 ], [ %119, %118 ]
  %125 = phi i32 [ %108, %121 ], [ %120, %118 ]
  br label %150

126:                                              ; preds = %121
  %127 = load i16, ptr %6, align 8, !tbaa !645
  %128 = icmp ne i16 %127, 0
  %129 = load i16, ptr %10, align 8
  %130 = icmp ne i16 %129, 0
  %131 = select i1 %128, i1 true, i1 %130
  %132 = select i1 %131, i32 50, i32 49
  %133 = select i1 %128, i1 %130, i1 false
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load ptr, ptr %5, align 16, !tbaa !642
  %136 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %135) #9
  %137 = load ptr, ptr %7, align 16, !tbaa !642
  br label %146

138:                                              ; preds = %126
  %139 = icmp eq i16 %127, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr %7, align 16, !tbaa !642
  %142 = load ptr, ptr %5, align 16, !tbaa !642
  br label %146

143:                                              ; preds = %138
  %144 = load ptr, ptr %5, align 16, !tbaa !642
  %145 = load ptr, ptr %7, align 16, !tbaa !642
  br label %146

146:                                              ; preds = %140, %143, %134
  %147 = phi ptr [ %136, %134 ], [ %141, %140 ], [ %144, %143 ]
  %148 = phi ptr [ %137, %134 ], [ %142, %140 ], [ %145, %143 ]
  %149 = tail call ptr @simplify_const_binary_operation(i32 noundef %132, i32 noundef %1, ptr noundef %147, ptr noundef %148) #8
  br label %458

150:                                              ; preds = %352, %123
  %151 = phi i32 [ %124, %123 ], [ %329, %352 ]
  %152 = phi i32 [ %125, %123 ], [ %353, %352 ]
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %328, !prof !656

154:                                              ; preds = %150
  %155 = add nsw i32 %152, -1
  %156 = zext nneg i32 %155 to i64
  br label %162

157:                                              ; preds = %191
  br i1 %153, label %158, label %328, !prof !437

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
  %168 = load ptr, ptr %167, align 16, !tbaa !642
  %169 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %163
  %170 = load ptr, ptr %169, align 16
  %171 = tail call fastcc zeroext i8 @simplify_plus_minus_op_data_cmp(ptr noundef %168, ptr noundef %170) #8, !range !371
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %191, label %173, !prof !657

173:                                              ; preds = %162
  %174 = getelementptr inbounds i8, ptr %169, i64 8
  %175 = load i64, ptr %174, align 8, !tbaa.struct !658
  br label %176

176:                                              ; preds = %182, %173
  %177 = phi i64 [ %183, %182 ], [ %164, %173 ]
  %178 = add nuw nsw i64 %177, 1
  %179 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %178
  %180 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %179, ptr noundef nonnull align 16 dereferenceable(16) %180, i64 16, i1 false), !tbaa.struct !660
  %181 = icmp eq i64 %177, 0
  br i1 %181, label %188, label %182, !prof !661

182:                                              ; preds = %176
  %183 = add nsw i64 %177, -1
  %184 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %183
  %185 = load ptr, ptr %184, align 16, !tbaa !642
  %186 = tail call fastcc zeroext i8 @simplify_plus_minus_op_data_cmp(ptr noundef %185, ptr noundef %170) #8, !range !371
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %176, !prof !662, !llvm.loop !663

188:                                              ; preds = %176, %182
  %189 = phi ptr [ %5, %176 ], [ %180, %182 ]
  store ptr %170, ptr %189, align 16, !tbaa.struct !660
  %190 = getelementptr inbounds i8, ptr %189, i64 8
  store i64 %175, ptr %190, align 8, !tbaa.struct !658
  br label %191

191:                                              ; preds = %162, %188
  %192 = phi i32 [ 1, %188 ], [ %165, %162 ]
  %193 = add nuw nsw i64 %163, 1
  %194 = add nuw nsw i64 %164, 1
  %195 = icmp eq i64 %194, %156
  br i1 %195, label %157, label %162, !prof !664, !llvm.loop !665

196:                                              ; preds = %321
  %197 = icmp sgt i64 %200, 2
  %198 = add nsw i64 %201, -1
  br i1 %197, label %199, label %328, !prof !666, !llvm.loop !667

199:                                              ; preds = %196, %158
  %200 = phi i64 [ %161, %158 ], [ %204, %196 ]
  %201 = phi i64 [ %160, %158 ], [ %198, %196 ]
  %202 = phi i32 [ 0, %158 ], [ %324, %196 ]
  %203 = phi i32 [ %192, %158 ], [ %323, %196 ]
  %204 = add nsw i64 %200, -1
  %205 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %204
  %206 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %204, i32 1
  %207 = load i16, ptr %206, align 8, !tbaa !645
  br label %208

208:                                              ; preds = %199, %321
  %209 = phi i64 [ %201, %199 ], [ %327, %321 ]
  %210 = phi i16 [ %207, %199 ], [ %322, %321 ]
  %211 = phi i32 [ %202, %199 ], [ %324, %321 ]
  %212 = phi i32 [ %203, %199 ], [ %323, %321 ]
  %213 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %209
  %214 = load ptr, ptr %213, align 16, !tbaa !642
  %215 = load ptr, ptr %205, align 16, !tbaa !642
  %216 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %209, i32 1
  %217 = load i16, ptr %216, align 8, !tbaa !645
  %218 = icmp ne ptr %214, null
  %219 = icmp ne ptr %215, null
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %221, label %321, !prof !668

221:                                              ; preds = %208
  %222 = icmp eq i16 %217, %210
  br i1 %222, label %227, label %223, !prof !669

223:                                              ; preds = %221
  %224 = icmp eq i16 %217, 0
  %225 = select i1 %224, ptr %214, ptr %215
  %226 = select i1 %224, ptr %215, ptr %214
  br label %231

227:                                              ; preds = %221
  %228 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %214, ptr noundef nonnull %215) #9
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %231, label %230, !prof !669

230:                                              ; preds = %227
  br label %231

231:                                              ; preds = %223, %227, %230
  %232 = phi ptr [ %215, %230 ], [ %214, %227 ], [ %225, %223 ]
  %233 = phi ptr [ %214, %230 ], [ %215, %227 ], [ %226, %223 ]
  %234 = phi i32 [ 49, %230 ], [ 49, %227 ], [ 50, %223 ]
  %235 = load i32, ptr %232, align 8
  %236 = and i32 %235, 65535
  %237 = trunc i32 %235 to i16
  switch i16 %237, label %268 [
    i16 35, label %238
    i16 30, label %238
  ], !prof !670

238:                                              ; preds = %231, %231
  %239 = load i32, ptr %233, align 8
  %240 = and i32 %239, 65535
  %241 = trunc i32 %239 to i16
  switch i16 %241, label %268 [
    i16 35, label %242
    i16 30, label %242
  ]

242:                                              ; preds = %238, %238
  %243 = icmp eq i32 %236, 35
  br i1 %243, label %244, label %247

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !193
  br label %247

247:                                              ; preds = %242, %244
  %248 = phi ptr [ %246, %244 ], [ %232, %242 ]
  %249 = icmp eq i32 %240, 35
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !193
  br label %253

253:                                              ; preds = %247, %250
  %254 = phi ptr [ %252, %250 ], [ %233, %247 ]
  %255 = tail call ptr @simplify_binary_operation(i32 noundef %234, i32 noundef %1, ptr noundef %248, ptr noundef %254) #8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %321, label %257

257:                                              ; preds = %253
  %258 = load i32, ptr %255, align 8
  %259 = and i32 %258, 65535
  %260 = zext nneg i32 %259 to i64
  %261 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !200
  %263 = icmp eq i32 %262, 9
  br i1 %263, label %275, label %264

264:                                              ; preds = %257
  %265 = lshr i32 %258, 16
  %266 = and i32 %265, 255
  %267 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %266, ptr noundef nonnull %255) #9
  br label %270

268:                                              ; preds = %238, %231
  %269 = tail call ptr @simplify_binary_operation(i32 noundef %234, i32 noundef %1, ptr noundef nonnull %232, ptr noundef nonnull %233) #8
  br label %270

270:                                              ; preds = %264, %268
  %271 = phi ptr [ %269, %268 ], [ %267, %264 ]
  %272 = icmp eq ptr %271, null
  br i1 %272, label %321, label %273, !prof !671

273:                                              ; preds = %270
  %274 = load i32, ptr %271, align 8
  br label %275

275:                                              ; preds = %273, %257
  %276 = phi i32 [ %274, %273 ], [ %258, %257 ]
  %277 = phi ptr [ %271, %273 ], [ %255, %257 ]
  %278 = and i32 %276, 65535
  %279 = icmp eq i32 %278, 35
  br i1 %279, label %280, label %297

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.rtx_def, ptr %277, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !193
  %283 = load i32, ptr %282, align 8
  %284 = and i32 %283, 65535
  %285 = icmp eq i32 %284, %234
  br i1 %285, label %286, label %294

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.rtx_def, ptr %282, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !193
  %289 = icmp eq ptr %288, %232
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.rtx_def, ptr %282, i64 0, i32 1, i32 0, i32 0, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !193
  %293 = icmp eq ptr %292, %233
  br i1 %293, label %321, label %294

294:                                              ; preds = %290, %286, %280
  %295 = and i16 %210, %217
  %296 = sext i16 %295 to i32
  br label %307

297:                                              ; preds = %275
  %298 = and i16 %210, %217
  %299 = sext i16 %298 to i32
  %300 = icmp eq i32 %278, 51
  br i1 %300, label %301, label %307

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.rtx_def, ptr %277, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !193
  %304 = icmp eq i16 %298, 0
  %305 = zext i1 %304 to i32
  %306 = load i32, ptr %303, align 8
  br label %307

307:                                              ; preds = %294, %301, %297
  %308 = phi i32 [ %306, %301 ], [ %276, %297 ], [ %276, %294 ]
  %309 = phi i32 [ %305, %301 ], [ %299, %297 ], [ %296, %294 ]
  %310 = phi ptr [ %303, %301 ], [ %277, %297 ], [ %277, %294 ]
  %311 = and i32 %308, 65535
  %312 = icmp eq i32 %311, 30
  %313 = icmp ne i32 %309, 0
  %314 = select i1 %312, i1 %313, i1 false
  br i1 %314, label %315, label %317

315:                                              ; preds = %307
  %316 = tail call fastcc ptr @neg_const_int(i32 noundef %1, ptr noundef nonnull %310) #8
  br label %317

317:                                              ; preds = %315, %307
  %318 = phi i32 [ 0, %315 ], [ %309, %307 ]
  %319 = phi ptr [ %316, %315 ], [ %310, %307 ]
  store ptr %319, ptr %205, align 16, !tbaa !642
  %320 = trunc i32 %318 to i16
  store i16 %320, ptr %206, align 8, !tbaa !645
  store ptr null, ptr %213, align 16, !tbaa !642
  br label %321

321:                                              ; preds = %253, %270, %290, %317, %208
  %322 = phi i16 [ %210, %208 ], [ %210, %290 ], [ %320, %317 ], [ %210, %270 ], [ %210, %253 ]
  %323 = phi i32 [ %212, %208 ], [ %212, %290 ], [ 1, %317 ], [ %212, %270 ], [ %212, %253 ]
  %324 = phi i32 [ %211, %208 ], [ %211, %290 ], [ 1, %317 ], [ %211, %270 ], [ %211, %253 ]
  %325 = trunc i64 %209 to i32
  %326 = icmp sgt i32 %325, 0
  %327 = add nsw i64 %209, -1
  br i1 %326, label %208, label %196, !prof !672, !llvm.loop !673

328:                                              ; preds = %196, %150, %157
  %329 = phi i32 [ %192, %157 ], [ %151, %150 ], [ %323, %196 ]
  %330 = phi i32 [ 0, %157 ], [ 0, %150 ], [ %324, %196 ]
  %331 = icmp eq i32 %329, 0
  br i1 %331, label %458, label %332, !prof !431

332:                                              ; preds = %328
  %333 = icmp sgt i32 %152, 0
  br i1 %333, label %334, label %354, !prof !656

334:                                              ; preds = %332
  %335 = zext nneg i32 %152 to i64
  br label %336

336:                                              ; preds = %334, %346
  %337 = phi i64 [ 0, %334 ], [ %348, %346 ]
  %338 = phi i32 [ 0, %334 ], [ %347, %346 ]
  %339 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %337
  %340 = load ptr, ptr %339, align 16, !tbaa !642
  %341 = icmp eq ptr %340, null
  br i1 %341, label %346, label %342, !prof !674

342:                                              ; preds = %336
  %343 = sext i32 %338 to i64
  %344 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %344, ptr noundef nonnull align 16 dereferenceable(16) %339, i64 16, i1 false), !tbaa.struct !660
  %345 = add nsw i32 %338, 1
  br label %346

346:                                              ; preds = %336, %342
  %347 = phi i32 [ %345, %342 ], [ %338, %336 ]
  %348 = add nuw nsw i64 %337, 1
  %349 = icmp eq i64 %348, %335
  br i1 %349, label %350, label %336, !prof !675, !llvm.loop !676

350:                                              ; preds = %346
  %351 = icmp eq i32 %330, 0
  br i1 %351, label %356, label %352, !prof !677

352:                                              ; preds = %350, %354
  %353 = phi i32 [ %347, %350 ], [ 0, %354 ]
  br label %150, !llvm.loop !678

354:                                              ; preds = %332
  %355 = icmp eq i32 %330, 0
  br i1 %355, label %428, label %352, !prof !677

356:                                              ; preds = %350
  %357 = icmp eq i32 %347, 2
  br i1 %357, label %358, label %376, !prof !655

358:                                              ; preds = %356
  %359 = load ptr, ptr %7, align 16, !tbaa !642
  %360 = load i32, ptr %359, align 8
  %361 = and i32 %360, 65535
  %362 = icmp eq i32 %361, 30
  br i1 %362, label %363, label %378

363:                                              ; preds = %358
  %364 = load ptr, ptr %5, align 16, !tbaa !642
  %365 = load i32, ptr %364, align 8
  %366 = and i32 %365, 65535
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %367
  %369 = load i32, ptr %368, align 4, !tbaa !200
  %370 = icmp eq i32 %369, 9
  %371 = load i16, ptr %6, align 8
  %372 = icmp ne i16 %371, 0
  %373 = select i1 %370, i1 %372, i1 false
  br i1 %373, label %374, label %378

374:                                              ; preds = %363
  %375 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %359, ptr noundef nonnull %364) #9
  br label %458

376:                                              ; preds = %356
  %377 = icmp sgt i32 %347, 1
  br i1 %377, label %378, label %411, !prof !437

378:                                              ; preds = %358, %363, %376
  %379 = phi i32 [ 2, %358 ], [ 2, %363 ], [ %347, %376 ]
  %380 = add nsw i32 %379, -1
  %381 = zext nneg i32 %380 to i64
  %382 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %381
  %383 = load ptr, ptr %382, align 16, !tbaa !642
  %384 = load i32, ptr %383, align 8
  %385 = and i32 %384, 65535
  %386 = icmp eq i32 %385, 30
  br i1 %386, label %387, label %412, !prof !647

387:                                              ; preds = %378
  %388 = add nsw i32 %379, -2
  %389 = zext nneg i32 %388 to i64
  %390 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %389
  %391 = load ptr, ptr %390, align 16, !tbaa !642
  %392 = load i32, ptr %391, align 8
  %393 = and i32 %392, 65535
  %394 = zext nneg i32 %393 to i64
  %395 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %394
  %396 = load i32, ptr %395, align 4, !tbaa !200
  %397 = icmp eq i32 %396, 9
  br i1 %397, label %398, label %412, !prof !679

398:                                              ; preds = %387
  %399 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %381, i32 1
  %400 = load i16, ptr %399, align 8, !tbaa !645
  %401 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %389, i32 1
  %402 = load i16, ptr %401, align 8, !tbaa !645
  %403 = icmp eq i16 %400, %402
  br i1 %403, label %406, label %404

404:                                              ; preds = %398
  %405 = tail call fastcc ptr @neg_const_int(i32 noundef %1, ptr noundef nonnull %383) #8
  br label %406

406:                                              ; preds = %404, %398
  %407 = phi ptr [ %405, %404 ], [ %383, %398 ]
  %408 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1
  %409 = load i64, ptr %408, align 8, !tbaa !193
  %410 = tail call ptr @plus_constant(ptr noundef nonnull %391, i64 noundef %409) #9
  store ptr %410, ptr %390, align 16, !tbaa !642
  br label %412

411:                                              ; preds = %376
  switch i32 %347, label %426 [
    i32 1, label %412
    i32 0, label %428
  ], !prof !680

412:                                              ; preds = %411, %378, %387, %406
  %413 = phi i32 [ %347, %411 ], [ %379, %378 ], [ %379, %387 ], [ %380, %406 ]
  br label %414

414:                                              ; preds = %412, %419
  %415 = phi i64 [ 0, %412 ], [ %421, %419 ]
  %416 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %415, i32 1
  %417 = load i16, ptr %416, align 8, !tbaa !645
  %418 = icmp eq i16 %417, 0
  br i1 %418, label %423, label %419, !prof !677

419:                                              ; preds = %414
  %420 = zext nneg i32 %413 to i64
  %421 = add nuw nsw i64 %415, 1
  %422 = icmp eq i64 %421, %420
  br i1 %422, label %428, label %414, !prof !681, !llvm.loop !682

423:                                              ; preds = %414
  %424 = trunc i64 %415 to i32
  %425 = icmp eq i32 %413, %424
  br i1 %425, label %428, label %432, !prof !266

426:                                              ; preds = %411
  %427 = load ptr, ptr %5, align 16, !tbaa !642
  br label %458

428:                                              ; preds = %354, %419, %411, %423
  %429 = phi i32 [ %413, %423 ], [ %347, %411 ], [ %413, %419 ], [ 0, %354 ]
  %430 = load ptr, ptr %5, align 16, !tbaa !642
  %431 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %430) #9
  br label %440

432:                                              ; preds = %423
  %433 = icmp eq i32 %424, 0
  %434 = load ptr, ptr %5, align 16, !tbaa !642
  br i1 %433, label %440, label %435, !prof !683

435:                                              ; preds = %432
  %436 = and i64 %415, 4294967295
  %437 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %437, i64 16, i1 false), !tbaa.struct !660
  store ptr %434, ptr %437, align 16, !tbaa !642
  %438 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %436, i32 1
  store i16 1, ptr %438, align 8, !tbaa !645
  %439 = load ptr, ptr %5, align 16, !tbaa !642
  br label %440

440:                                              ; preds = %432, %435, %428
  %441 = phi i32 [ %413, %432 ], [ %413, %435 ], [ %429, %428 ]
  %442 = phi ptr [ %434, %432 ], [ %439, %435 ], [ %431, %428 ]
  %443 = icmp sgt i32 %441, 1
  br i1 %443, label %444, label %458, !prof !684

444:                                              ; preds = %440
  %445 = zext nneg i32 %441 to i64
  br label %446

446:                                              ; preds = %444, %446
  %447 = phi i64 [ 1, %444 ], [ %456, %446 ]
  %448 = phi ptr [ %442, %444 ], [ %455, %446 ]
  %449 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %447
  %450 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %447, i32 1
  %451 = load i16, ptr %450, align 8, !tbaa !645
  %452 = icmp eq i16 %451, 0
  %453 = select i1 %452, i32 49, i32 50
  %454 = load ptr, ptr %449, align 16, !tbaa !642
  %455 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %453, i32 noundef %1, ptr noundef %448, ptr noundef %454) #9
  %456 = add nuw nsw i64 %447, 1
  %457 = icmp eq i64 %456, %445
  br i1 %457, label %458, label %446, !prof !664, !llvm.loop !685

458:                                              ; preds = %33, %328, %446, %426, %440, %374, %146
  %459 = phi ptr [ %149, %146 ], [ %375, %374 ], [ %442, %440 ], [ %427, %426 ], [ %455, %446 ], [ null, %328 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #10
  ret ptr %459
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_associative_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !prof !686 !PGOFuncName !687 {
  %5 = load i32, ptr %3, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %24, !prof !688

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !193
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
  br i1 %29, label %30, label %54, !prof !688

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !193
  %34 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %33, ptr noundef nonnull %26) #9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %31, align 8, !tbaa !193
  %38 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %37, ptr noundef nonnull %26) #8
  %39 = load ptr, ptr %32, align 8, !tbaa !193
  %40 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %38, ptr noundef %39) #8
  br label %54

41:                                               ; preds = %30
  %42 = load ptr, ptr %32, align 8, !tbaa !193
  %43 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %42, ptr noundef nonnull %26) #8
  %44 = icmp eq ptr %43, null
  %45 = load ptr, ptr %31, align 8, !tbaa !193
  br i1 %44, label %48, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %45, ptr noundef nonnull %43) #8
  br label %54

48:                                               ; preds = %41
  %49 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %45, ptr noundef nonnull %26) #8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %32, align 8, !tbaa !193
  %53 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %49, ptr noundef %52) #8
  br label %54

54:                                               ; preds = %24, %48, %51, %46, %36, %22, %12
  %55 = phi ptr [ %18, %12 ], [ %40, %36 ], [ %47, %46 ], [ %53, %51 ], [ %23, %22 ], [ null, %48 ], [ null, %24 ]
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @neg_const_int(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !689 !PGOFuncName !690 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !193
  %5 = sub nsw i64 0, %4
  %6 = tail call ptr @gen_int_mode(i64 noundef %5, i32 noundef %0) #9
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @simplify_plus_minus_op_data_cmp(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !691 !PGOFuncName !692 {
  %3 = tail call i32 @commutative_operand_precedence(ptr noundef %1) #9
  %4 = tail call i32 @commutative_operand_precedence(ptr noundef %0) #9
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %8, label %6, !prof !693

6:                                                ; preds = %2
  %7 = icmp sgt i32 %3, %4
  br label %20

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %20, !prof !694

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %20, !prof !694

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!191}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!35 = !{ptr @simplify_gen_binary, ptr @simplify_binary_operation, i64 930441}
!36 = !{ptr @simplify_gen_binary, ptr @swap_commutative_operands_p, i64 566132}
!37 = !{ptr @simplify_gen_binary, ptr @gen_rtx_fmt_ee_stat, i64 815367}
!38 = !{ptr @simplify_binary_operation, ptr @fancy_abort, i64 2}
!39 = !{ptr @simplify_binary_operation, ptr @swap_commutative_operands_p, i64 807383}
!40 = !{ptr @simplify_binary_operation, ptr @avoid_constant_pool_reference, i64 4685290}
!41 = !{ptr @simplify_binary_operation, ptr @simplify_const_binary_operation, i64 2342645}
!42 = !{ptr @simplify_binary_operation, ptr @simplify_binary_operation_1, i64 2330313}
!43 = !{ptr @avoid_constant_pool_reference, ptr @avoid_constant_pool_reference, i64 1}
!44 = !{ptr @avoid_constant_pool_reference, ptr @get_pool_constant, i64 1}
!45 = !{ptr @avoid_constant_pool_reference, ptr @get_pool_mode, i64 1}
!46 = !{ptr @avoid_constant_pool_reference, ptr @simplify_subreg, i64 1}
!47 = !{ptr @simplify_subreg, ptr @fancy_abort, i64 7}
!48 = !{ptr @simplify_subreg, ptr @simplify_immed_subreg, i64 284235}
!49 = !{ptr @simplify_subreg, ptr @simplify_subreg, i64 1}
!50 = !{ptr @simplify_subreg, ptr @rhs_regno, i64 243428}
!51 = !{ptr @simplify_subreg, ptr @simplify_subreg_regno, i64 3122}
!52 = !{ptr @simplify_subreg, ptr @gen_rtx_REG_offset, i64 3121}
!53 = !{ptr @simplify_subreg, ptr @subreg_lowpart_offset, i64 3121}
!54 = !{ptr @simplify_subreg, ptr @mode_dependent_address_p, i64 64495}
!55 = !{ptr @simplify_subreg, ptr @have_insn_for, i64 1}
!56 = !{ptr @simplify_subreg, ptr @adjust_address_1, i64 40209}
!57 = !{ptr @simplify_subreg, ptr @subreg_lsb_1, i64 1}
!58 = !{ptr @delegitimize_mem_from_attrs, ptr @get_inner_reference, i64 103223}
!59 = !{ptr @delegitimize_mem_from_attrs, ptr @host_integerp, i64 1}
!60 = !{ptr @simplify_gen_unary, ptr @simplify_unary_operation, i64 12847}
!61 = !{ptr @simplify_gen_unary, ptr @gen_rtx_fmt_e_stat, i64 4053}
!62 = !{ptr @simplify_unary_operation, ptr @avoid_constant_pool_reference, i64 65747}
!63 = !{ptr @simplify_unary_operation, ptr @simplify_const_unary_operation, i64 65747}
!64 = !{ptr @simplify_unary_operation, ptr @simplify_unary_operation_1, i64 56823}
!65 = !{ptr @simplify_gen_ternary, ptr @simplify_ternary_operation, i64 8}
!66 = !{ptr @simplify_gen_ternary, ptr @gen_rtx_fmt_eee_stat, i64 4}
!67 = !{ptr @simplify_ternary_operation, ptr @rtx_equal_p, i64 1794620}
!68 = !{ptr @simplify_ternary_operation, ptr @side_effects_p, i64 1201548}
!69 = !{ptr @simplify_ternary_operation, ptr @reversed_comparison_code, i64 1}
!70 = !{ptr @simplify_ternary_operation, ptr @simplify_gen_relational, i64 1}
!71 = !{ptr @simplify_ternary_operation, ptr @simplify_relational_operation, i64 603643}
!72 = !{ptr @simplify_ternary_operation, ptr @fancy_abort, i64 4}
!73 = !{ptr @simplify_ternary_operation, ptr @avoid_constant_pool_reference, i64 1}
!74 = !{ptr @simplify_gen_relational, ptr @simplify_relational_operation, i64 445651}
!75 = !{ptr @simplify_gen_relational, ptr @gen_rtx_fmt_ee_stat, i64 258613}
!76 = !{ptr @simplify_relational_operation, ptr @simplify_const_relational_operation, i64 2234362}
!77 = !{ptr @simplify_relational_operation, ptr @swap_commutative_operands_p, i64 2234357}
!78 = !{ptr @simplify_relational_operation, ptr @swap_condition, i64 114}
!79 = !{ptr @simplify_relational_operation, ptr @simplify_gen_relational, i64 199926}
!80 = !{ptr @simplify_relational_operation, ptr @avoid_constant_pool_reference, i64 3173178}
!81 = !{ptr @simplify_relational_operation, ptr @simplify_relational_operation_1, i64 1586589}
!82 = !{ptr @simplify_replace_fn_rtx, ptr @rtx_equal_p, i64 9615}
!83 = !{ptr @simplify_replace_fn_rtx, ptr @copy_rtx, i64 1204}
!84 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_replace_fn_rtx, i64 64774}
!85 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_gen_unary, i64 1}
!86 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_gen_binary, i64 1195}
!87 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_gen_relational, i64 10}
!88 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_gen_ternary, i64 10}
!89 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_gen_subreg, i64 5}
!90 = !{ptr @simplify_replace_fn_rtx, ptr @replace_equiv_address_nv, i64 1}
!91 = !{ptr @simplify_replace_fn_rtx, ptr @gen_rtx_fmt_ee_stat, i64 1}
!92 = !{ptr @simplify_replace_fn_rtx, ptr @shallow_copy_rtvec, i64 13079}
!93 = !{ptr @simplify_replace_fn_rtx, ptr @shallow_copy_rtx_stat, i64 5314}
!94 = !{ptr @simplify_gen_subreg, ptr @simplify_subreg, i64 369517}
!95 = !{ptr @simplify_gen_subreg, ptr @validate_subreg, i64 43552}
!96 = !{ptr @simplify_gen_subreg, ptr @gen_rtx_SUBREG, i64 43551}
!97 = !{ptr @simplify_replace_rtx, ptr @simplify_replace_fn_rtx, i64 2400}
!98 = !{ptr @simplify_const_unary_operation, ptr @rtvec_alloc, i64 4}
!99 = !{ptr @simplify_const_unary_operation, ptr @gen_rtx_CONST_VECTOR, i64 3}
!100 = !{ptr @simplify_const_unary_operation, ptr @fancy_abort, i64 2}
!101 = !{ptr @simplify_const_unary_operation, ptr @simplify_unary_operation, i64 24}
!102 = !{ptr @simplify_const_unary_operation, ptr @exact_log2, i64 2}
!103 = !{ptr @simplify_const_unary_operation, ptr @floor_log2, i64 1}
!104 = !{ptr @simplify_const_unary_operation, ptr @gen_int_mode, i64 8912}
!105 = !{ptr @simplify_unary_operation_1, ptr @plus_constant, i64 2}
!106 = !{ptr @simplify_unary_operation_1, ptr @subreg_lowpart_p, i64 1}
!107 = !{ptr @simplify_unary_operation_1, ptr @simplify_gen_unary, i64 6}
!108 = !{ptr @simplify_unary_operation_1, ptr @gen_rtx_fmt_ee_stat, i64 2}
!109 = !{ptr @simplify_unary_operation_1, ptr @simplify_gen_binary, i64 2}
!110 = !{ptr @simplify_unary_operation_1, ptr @simplify_unary_operation, i64 1}
!111 = !{ptr @simplify_const_binary_operation, ptr @rtvec_alloc, i64 2}
!112 = !{ptr @simplify_const_binary_operation, ptr @simplify_binary_operation, i64 8}
!113 = !{ptr @simplify_const_binary_operation, ptr @gen_rtx_CONST_VECTOR, i64 2}
!114 = !{ptr @simplify_const_binary_operation, ptr @gen_int_mode, i64 116273}
!115 = !{ptr @simplify_binary_operation_1, ptr @simplify_gen_binary, i64 380756}
!116 = !{ptr @simplify_binary_operation_1, ptr @simplify_gen_unary, i64 85}
!117 = !{ptr @simplify_binary_operation_1, ptr @plus_constant, i64 5}
!118 = !{ptr @simplify_binary_operation_1, ptr @rtx_equal_p, i64 1439190}
!119 = !{ptr @simplify_binary_operation_1, ptr @gen_rtx_fmt_ee_stat, i64 103}
!120 = !{ptr @simplify_binary_operation_1, ptr @optimize_function_for_speed_p, i64 103}
!121 = !{ptr @simplify_binary_operation_1, ptr @add_double_with_sign, i64 103}
!122 = !{ptr @simplify_binary_operation_1, ptr @immed_double_const, i64 103}
!123 = !{ptr @simplify_binary_operation_1, ptr @rtx_cost, i64 206}
!124 = !{ptr @simplify_binary_operation_1, ptr @mode_signbit_p, i64 198}
!125 = !{ptr @simplify_binary_operation_1, ptr @plus_minus_operand_p, i64 931566}
!126 = !{ptr @simplify_binary_operation_1, ptr @simplify_plus_minus, i64 2922}
!127 = !{ptr @simplify_binary_operation_1, ptr @simplify_associative_operation, i64 206504}
!128 = !{ptr @simplify_binary_operation_1, ptr @side_effects_p, i64 103}
!129 = !{ptr @simplify_binary_operation_1, ptr @simplify_unary_operation, i64 1}
!130 = !{ptr @simplify_binary_operation_1, ptr @neg_const_int, i64 379528}
!131 = !{ptr @simplify_binary_operation_1, ptr @exact_log2, i64 309}
!132 = !{ptr @simplify_binary_operation_1, ptr @gen_rtx_CONST_INT, i64 206}
!133 = !{ptr @simplify_binary_operation_1, ptr @nonzero_bits, i64 522380}
!134 = !{ptr @simplify_binary_operation_1, ptr @gen_int_mode, i64 413}
!135 = !{ptr @simplify_binary_operation_1, ptr @reversed_comparison, i64 1}
!136 = !{ptr @simplify_binary_operation_1, ptr @fancy_abort, i64 7}
!137 = !{ptr @simplify_binary_operation_1, ptr @avoid_constant_pool_reference, i64 2}
!138 = !{ptr @simplify_binary_operation_1, ptr @rtvec_alloc, i64 1}
!139 = !{ptr @simplify_binary_operation_1, ptr @gen_rtx_CONST_VECTOR, i64 1}
!140 = !{ptr @simplify_const_relational_operation, ptr @fancy_abort, i64 1}
!141 = !{ptr @simplify_const_relational_operation, ptr @swap_commutative_operands_p, i64 2533995}
!142 = !{ptr @simplify_const_relational_operation, ptr @swap_condition, i64 132}
!143 = !{ptr @simplify_const_relational_operation, ptr @avoid_constant_pool_reference, i64 5069656}
!144 = !{ptr @simplify_const_relational_operation, ptr @simplify_binary_operation, i64 444010}
!145 = !{ptr @simplify_const_relational_operation, ptr @nonzero_address_p, i64 1635666}
!146 = !{ptr @simplify_const_relational_operation, ptr @signed_condition, i64 444008}
!147 = !{ptr @simplify_const_relational_operation, ptr @rtx_equal_p, i64 2089984}
!148 = !{ptr @simplify_const_relational_operation, ptr @side_effects_p, i64 1}
!149 = !{ptr @simplify_const_relational_operation, ptr @comparison_result, i64 6}
!150 = !{ptr @simplify_const_relational_operation, ptr @nonzero_bits, i64 2089697}
!151 = !{ptr @simplify_const_relational_operation, ptr @get_mode_bounds, i64 1806760}
!152 = !{ptr @simplify_const_relational_operation, ptr @num_sign_bit_copies, i64 903380}
!153 = !{ptr @simplify_relational_operation_1, ptr @simplify_rtx, i64 1}
!154 = !{ptr @simplify_relational_operation_1, ptr @simplify_gen_relational, i64 22497}
!155 = !{ptr @simplify_relational_operation_1, ptr @reversed_comparison_code, i64 8591}
!156 = !{ptr @simplify_relational_operation_1, ptr @rtx_equal_p, i64 3582}
!157 = !{ptr @simplify_relational_operation_1, ptr @simplify_gen_unary, i64 1053}
!158 = !{ptr @simplify_relational_operation_1, ptr @copy_rtx, i64 316}
!159 = !{ptr @simplify_relational_operation_1, ptr @nonzero_bits, i64 32294}
!160 = !{ptr @simplify_relational_operation_1, ptr @lowpart_subreg, i64 273}
!161 = !{ptr @simplify_relational_operation_1, ptr @side_effects_p, i64 1}
!162 = !{ptr @simplify_immed_subreg, ptr @real_to_target, i64 1}
!163 = !{ptr @simplify_immed_subreg, ptr @fancy_abort, i64 4}
!164 = !{ptr @simplify_immed_subreg, ptr @rtvec_alloc, i64 6}
!165 = !{ptr @simplify_immed_subreg, ptr @gen_int_mode, i64 284222}
!166 = !{ptr @simplify_immed_subreg, ptr @immed_double_const, i64 1}
!167 = !{ptr @simplify_immed_subreg, ptr @real_from_target, i64 2}
!168 = !{ptr @simplify_immed_subreg, ptr @const_double_from_real_value, i64 2}
!169 = !{ptr @simplify_immed_subreg, ptr @const_fixed_from_fixed_value, i64 4}
!170 = !{ptr @simplify_immed_subreg, ptr @gen_rtx_CONST_VECTOR, i64 6}
!171 = !{ptr @simplify_rtx, ptr @simplify_unary_operation, i64 1}
!172 = !{ptr @simplify_rtx, ptr @swap_commutative_operands_p, i64 25878}
!173 = !{ptr @simplify_rtx, ptr @simplify_gen_binary, i64 1}
!174 = !{ptr @simplify_rtx, ptr @simplify_binary_operation, i64 25878}
!175 = !{ptr @simplify_rtx, ptr @simplify_ternary_operation, i64 2}
!176 = !{ptr @simplify_rtx, ptr @simplify_relational_operation, i64 2}
!177 = !{ptr @simplify_plus_minus, ptr @neg_const_int, i64 1}
!178 = !{ptr @simplify_plus_minus, ptr @fancy_abort, i64 1}
!179 = !{ptr @simplify_plus_minus, ptr @simplify_const_binary_operation, i64 1}
!180 = !{ptr @simplify_plus_minus, ptr @simplify_plus_minus_op_data_cmp, i64 10431}
!181 = !{ptr @simplify_plus_minus, ptr @swap_commutative_operands_p, i64 12030}
!182 = !{ptr @simplify_plus_minus, ptr @simplify_binary_operation, i64 12030}
!183 = !{ptr @simplify_plus_minus, ptr @plus_constant, i64 1}
!184 = !{ptr @simplify_plus_minus, ptr @gen_rtx_fmt_e_stat, i64 1}
!185 = !{ptr @simplify_plus_minus, ptr @gen_rtx_fmt_ee_stat, i64 6879}
!186 = !{ptr @simplify_associative_operation, ptr @swap_commutative_operands_p, i64 1}
!187 = !{ptr @simplify_associative_operation, ptr @simplify_gen_binary, i64 2}
!188 = !{ptr @neg_const_int, ptr @gen_int_mode, i64 379540}
!189 = !{ptr @simplify_plus_minus_op_data_cmp, ptr @commutative_operand_precedence, i64 22472}
!190 = !{ptr @simplify_plus_minus_op_data_cmp, ptr @rhs_regno, i64 19002}
!191 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!192 = !{!"function_entry_count", i64 198}
!193 = !{!194, !194, i64 0}
!194 = !{!"omnipotent char", !195, i64 0}
!195 = !{!"Simple C/C++ TBAA"}
!196 = !{!"branch_weights", i32 199, i32 1}
!197 = !{!"branch_weights", i32 1, i32 199}
!198 = !{!"function_entry_count", i64 930441}
!199 = !{!"branch_weights", i32 815369, i32 115074}
!200 = !{!201, !201, i64 0}
!201 = !{!"int", !194, i64 0}
!202 = !{!"branch_weights", i32 566134, i32 249236}
!203 = !{!"branch_weights", i32 565647, i32 488}
!204 = !{!"function_entry_count", i64 2342645}
!205 = !{!"branch_weights", i32 -1150752771, i32 2048, i32 2048, i32 1653522432}
!206 = !{!"branch_weights", i32 806375, i32 1010}
!207 = !{!"branch_weights", i32 2330315, i32 12332}
!208 = !{!"function_entry_count", i64 20062240}
!209 = !{!"branch_weights", i32 15633009, i32 4429233, i32 1}
!210 = !{!"branch_weights", i32 1, i32 4429233}
!211 = !{!212, !214, i64 1040}
!212 = !{!"gcc_target", !213, i64 0, !216, i64 368, !217, i64 664, !201, i64 744, !214, i64 752, !214, i64 760, !214, i64 768, !214, i64 776, !214, i64 784, !214, i64 792, !214, i64 800, !214, i64 808, !214, i64 816, !214, i64 824, !214, i64 832, !214, i64 840, !214, i64 848, !214, i64 856, !214, i64 864, !214, i64 872, !214, i64 880, !214, i64 888, !214, i64 896, !214, i64 904, !214, i64 912, !214, i64 920, !214, i64 928, !214, i64 936, !214, i64 944, !214, i64 952, !214, i64 960, !214, i64 968, !214, i64 976, !214, i64 984, !214, i64 992, !214, i64 1000, !214, i64 1008, !214, i64 1016, !214, i64 1024, !214, i64 1032, !214, i64 1040, !214, i64 1048, !214, i64 1056, !218, i64 1064, !218, i64 1072, !214, i64 1080, !214, i64 1088, !214, i64 1096, !214, i64 1104, !214, i64 1112, !214, i64 1120, !214, i64 1128, !214, i64 1136, !214, i64 1144, !214, i64 1152, !214, i64 1160, !214, i64 1168, !219, i64 1176, !214, i64 1232, !214, i64 1240, !214, i64 1248, !214, i64 1256, !214, i64 1264, !214, i64 1272, !214, i64 1280, !214, i64 1288, !214, i64 1296, !214, i64 1304, !214, i64 1312, !214, i64 1320, !214, i64 1328, !214, i64 1336, !214, i64 1344, !214, i64 1352, !214, i64 1360, !214, i64 1368, !214, i64 1376, !214, i64 1384, !214, i64 1392, !214, i64 1400, !214, i64 1408, !214, i64 1416, !214, i64 1424, !214, i64 1432, !214, i64 1440, !214, i64 1448, !214, i64 1456, !218, i64 1464, !220, i64 1472, !214, i64 1664, !214, i64 1672, !214, i64 1680, !214, i64 1688, !214, i64 1696, !214, i64 1704, !214, i64 1712, !214, i64 1720, !214, i64 1728, !214, i64 1736, !214, i64 1744, !214, i64 1752, !214, i64 1760, !214, i64 1768, !214, i64 1776, !221, i64 1784, !222, i64 1792, !223, i64 1896, !224, i64 1968, !214, i64 2016, !194, i64 2024, !194, i64 2025, !194, i64 2026, !194, i64 2027, !194, i64 2028, !194, i64 2029, !194, i64 2030, !194, i64 2031, !194, i64 2032, !194, i64 2033, !194, i64 2034, !194, i64 2035}
!213 = !{!"asm_out", !214, i64 0, !214, i64 8, !214, i64 16, !215, i64 24, !215, i64 56, !214, i64 88, !214, i64 96, !214, i64 104, !214, i64 112, !214, i64 120, !214, i64 128, !214, i64 136, !214, i64 144, !214, i64 152, !214, i64 160, !214, i64 168, !214, i64 176, !214, i64 184, !214, i64 192, !214, i64 200, !214, i64 208, !214, i64 216, !214, i64 224, !214, i64 232, !214, i64 240, !214, i64 248, !214, i64 256, !214, i64 264, !214, i64 272, !214, i64 280, !214, i64 288, !214, i64 296, !214, i64 304, !214, i64 312, !214, i64 320, !214, i64 328, !214, i64 336, !214, i64 344, !214, i64 352, !214, i64 360}
!214 = !{!"any pointer", !194, i64 0}
!215 = !{!"asm_int_op", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24}
!216 = !{!"sched", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !214, i64 32, !214, i64 40, !214, i64 48, !214, i64 56, !214, i64 64, !214, i64 72, !214, i64 80, !214, i64 88, !214, i64 96, !214, i64 104, !214, i64 112, !214, i64 120, !214, i64 128, !214, i64 136, !214, i64 144, !214, i64 152, !214, i64 160, !214, i64 168, !214, i64 176, !214, i64 184, !214, i64 192, !214, i64 200, !214, i64 208, !214, i64 216, !214, i64 224, !214, i64 232, !214, i64 240, !214, i64 248, !214, i64 256, !214, i64 264, !214, i64 272, !214, i64 280, !214, i64 288}
!217 = !{!"vectorize", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !214, i64 32, !214, i64 40, !214, i64 48, !214, i64 56, !214, i64 64, !214, i64 72}
!218 = !{!"long", !194, i64 0}
!219 = !{!"addr_space", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !214, i64 32, !214, i64 40, !214, i64 48}
!220 = !{!"calls", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !214, i64 32, !214, i64 40, !214, i64 48, !214, i64 56, !214, i64 64, !214, i64 72, !214, i64 80, !214, i64 88, !214, i64 96, !214, i64 104, !214, i64 112, !214, i64 120, !214, i64 128, !214, i64 136, !214, i64 144, !214, i64 152, !214, i64 160, !214, i64 168, !214, i64 176, !214, i64 184}
!221 = !{!"c", !214, i64 0}
!222 = !{!"cxx", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !214, i64 32, !214, i64 40, !214, i64 48, !214, i64 56, !214, i64 64, !214, i64 72, !214, i64 80, !214, i64 88, !214, i64 96}
!223 = !{!"emutls", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !214, i64 32, !214, i64 40, !214, i64 48, !214, i64 56, !194, i64 64, !194, i64 65}
!224 = !{!"target_option_hooks", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !214, i64 32, !214, i64 40}
!225 = !{!"branch_weights", i32 61439, i32 4367795}
!226 = !{!"branch_weights", i32 61439, i32 1}
!227 = !{!"branch_weights", i32 507, i32 -2048899025}
!228 = !{!"function_entry_count", i64 633368}
!229 = !{!"branch_weights", i32 1, i32 633369}
!230 = !{!"branch_weights", i32 -1482076604, i32 4441}
!231 = !{!"branch_weights", i32 633369, i32 1}
!232 = !{!"branch_weights", i32 218, i32 633152}
!233 = !{!"branch_weights", i32 218, i32 1}
!234 = !{!"branch_weights", i32 -1826204201, i32 -2083464702, i32 7778, i32 7778, i32 7779, i32 246011895, i32 7780}
!235 = !{!"branch_weights", i32 -436147942, i32 366135}
!236 = !{!"branch_weights", i32 243433, i32 73870}
!237 = !{!"branch_weights", i32 3122, i32 240312}
!238 = !{!"branch_weights", i32 3122, i32 1}
!239 = !{!"branch_weights", i32 64496, i32 249686}
!240 = !{!"branch_weights", i32 64496, i32 1}
!241 = !{!"branch_weights", i32 24286, i32 40211}
!242 = !{!"branch_weights", i32 -1843512529, i32 8947, i32 8947, i32 8947}
!243 = !{!214, !214, i64 0}
!244 = !{!"branch_weights", i32 2096385, i32 -1952770894}
!245 = !{!"branch_weights", i32 489, i32 1}
!246 = !{!"branch_weights", i32 1, i32 244}
!247 = !{!"branch_weights", i32 6, i32 239}
!248 = !{!"branch_weights", i32 1, i32 6}
!249 = !{!"branch_weights", i32 1670, i32 2147481978}
!250 = !{!"branch_weights", i32 244, i32 1}
!251 = !{!"branch_weights", i32 1, i32 273971}
!252 = !{!"branch_weights", i32 1920394, i32 2145563254}
!253 = !{!"function_entry_count", i64 10219170}
!254 = !{!"branch_weights", i32 254377, i32 9964795}
!255 = !{!"branch_weights", i32 1, i32 254377}
!256 = !{!257, !214, i64 0}
!257 = !{!"mem_attrs", !214, i64 0, !214, i64 8, !214, i64 16, !201, i64 24, !201, i64 28, !194, i64 32}
!258 = !{!"branch_weights", i32 85, i32 254119}
!259 = !{!257, !214, i64 8}
!260 = !{!"branch_weights", i32 25, i32 254095}
!261 = !{!"branch_weights", i32 254095, i32 1}
!262 = !{!"branch_weights", i32 903, i32 150067, i32 1, i32 1, i32 103151, i32 1, i32 1, i32 1, i32 1}
!263 = !{!218, !218, i64 0}
!264 = !{!"branch_weights", i32 2741, i32 100411}
!265 = !{!"branch_weights", i32 2741, i32 1}
!266 = !{!"branch_weights", i32 0, i32 -2147483648}
!267 = !{!"branch_weights", i32 2146699859, i32 783789}
!268 = !{!"branch_weights", i32 150067, i32 2741}
!269 = !{!"branch_weights", i32 150067, i32 1}
!270 = !{!"function_entry_count", i64 12847}
!271 = !{!"branch_weights", i32 4054, i32 8795}
!272 = !{!"function_entry_count", i64 65747}
!273 = !{!"branch_weights", i32 56825, i32 8924}
!274 = !{!"function_entry_count", i64 8}
!275 = !{!"branch_weights", i32 5, i32 5}
!276 = !{!"function_entry_count", i64 697467}
!277 = !{!"branch_weights", i32 603657, i32 93812}
!278 = !{!"branch_weights", i32 1, i32 39, i32 88646, i32 608785, i32 1}
!279 = !{!"branch_weights", i32 29938, i32 58747}
!280 = !{!"branch_weights", i32 29938, i32 1}
!281 = !{!"branch_weights", i32 1, i32 29938}
!282 = !{!"branch_weights", i32 5, i32 608781}
!283 = !{!"branch_weights", i32 3, i32 3}
!284 = !{!"branch_weights", i32 608781, i32 1}
!285 = !{!"branch_weights", i32 288893, i32 319889}
!286 = !{!"branch_weights", i32 288893, i32 1}
!287 = !{!"branch_weights", i32 -1958946823, i32 8085, i32 8085, i32 8085, i32 8085}
!288 = !{!289, !194, i64 46}
!289 = !{!"real_format", !214, i64 0, !214, i64 8, !201, i64 16, !201, i64 20, !201, i64 24, !201, i64 28, !201, i64 32, !201, i64 36, !201, i64 40, !194, i64 44, !194, i64 45, !194, i64 46, !194, i64 47, !194, i64 48, !194, i64 49, !194, i64 50, !194, i64 51}
!290 = !{!"branch_weights", i32 -1127455412, i32 10963, i32 10963, i32 10964, i32 10964}
!291 = !{!289, !194, i64 49}
!292 = !{!"branch_weights", i32 304041, i32 304741}
!293 = !{!"branch_weights", i32 304041, i32 1}
!294 = !{!"branch_weights", i32 -779057601, i32 11562, i32 11562, i32 11562, i32 11563}
!295 = !{!"branch_weights", i32 -409003174, i32 12780, i32 12780, i32 12780, i32 12781}
!296 = !{!"branch_weights", i32 608629, i32 153}
!297 = !{!"branch_weights", i32 608629, i32 1}
!298 = !{!"branch_weights", i32 1, i32 608629}
!299 = !{!"branch_weights", i32 4977, i32 603653}
!300 = !{!"branch_weights", i32 4977, i32 1}
!301 = !{!"branch_weights", i32 4, i32 4974}
!302 = !{!"branch_weights", i32 1, i32 4}
!303 = !{!"branch_weights", i32 431205, i32 2147052443}
!304 = !{!"branch_weights", i32 1, i32 603653}
!305 = !{!"branch_weights", i32 603653, i32 1}
!306 = distinct !{!306, !307}
!307 = !{!"llvm.loop.mustprogress"}
!308 = !{!"function_entry_count", i64 445651}
!309 = !{!"branch_weights", i32 258614, i32 187039}
!310 = !{!"function_entry_count", i64 2234362}
!311 = !{!"branch_weights", i32 699604, i32 1534760}
!312 = !{!"branch_weights", i32 174967, i32 2147308681}
!313 = !{!"branch_weights", i32 2234359, i32 5}
!314 = !{!"branch_weights", i32 390625, i32 279936, i32 233280, i32 194400, i32 162000, i32 135000, i32 112500, i32 93750, i32 78125}
!315 = !{!"branch_weights", i32 2234247, i32 113}
!316 = !{!"branch_weights", i32 1, i32 2234247}
!317 = !{!"branch_weights", i32 312271916, i32 -1117308541}
!318 = !{!"branch_weights", i32 447843, i32 1586591}
!319 = !{!"function_entry_count", i64 9616}
!320 = !{!"branch_weights", i32 9617, i32 1}
!321 = !{!"branch_weights", i32 8414, i32 1204}
!322 = !{!"branch_weights", i32 1222, i32 1, i32 2389, i32 5, i32 1, i32 9, i32 9, i32 1, i32 2389, i32 2397}
!323 = !{!"branch_weights", i32 1202, i32 1192}
!324 = !{!"branch_weights", i32 1198, i32 5}
!325 = !{!"branch_weights", i32 1, i32 9}
!326 = !{!"branch_weights", i32 9, i32 1}
!327 = !{!"branch_weights", i32 2389, i32 1}
!328 = !{!"branch_weights", i32 2385, i32 5}
!329 = !{!"branch_weights", i32 1, i32 5}
!330 = !{!"branch_weights", i32 5726449, i32 11970, i32 2393}
!331 = !{!"branch_weights", i32 5, i32 1}
!332 = !{!"branch_weights", i32 8382, i32 10842, i32 8382, i32 8382}
!333 = !{!334, !201, i64 0}
!334 = !{!"rtvec_def", !201, i64 0, !194, i64 8}
!335 = distinct !{!335, !307}
!336 = distinct !{!336, !307}
!337 = !{!"function_entry_count", i64 369517}
!338 = !{!"branch_weights", i32 43555, i32 325964}
!339 = !{!"branch_weights", i32 1897038025, i32 43556, i32 43555}
!340 = !{!"branch_weights", i32 1, i32 43555}
!341 = !{!"function_entry_count", i64 2400}
!342 = !{!"branch_weights", i32 1, i32 65748}
!343 = distinct !{!343, !307, !344, !345}
!344 = !{!"llvm.loop.isvectorized", i32 1}
!345 = !{!"llvm.loop.unroll.runtime.disable"}
!346 = distinct !{!346, !307}
!347 = !{!"branch_weights", i32 199806, i32 -2105464216}
!348 = distinct !{!348, !307}
!349 = !{!"branch_weights", i32 -2133567544, i32 32874, i32 32874}
!350 = !{i64 0, i64 4, !200, i64 0, i64 4, !200, i64 0, i64 4, !200, i64 0, i64 4, !200, i64 0, i64 4, !200, i64 0, i64 4, !200, i64 8, i64 24, !193}
!351 = !{!"branch_weights", i32 347015387, i32 -2084718188}
!352 = !{!"branch_weights", i32 1, i32 2569, i32 3814, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2543, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!353 = distinct !{!353, !307}
!354 = distinct !{!354, !307}
!355 = distinct !{!355, !307}
!356 = !{!"branch_weights", i32 1, i32 2543}
!357 = !{!"branch_weights", i32 2543, i32 1}
!358 = !{!"branch_weights", i32 1, i32 56825}
!359 = !{!"branch_weights", i32 56825, i32 56825, i32 56825}
!360 = distinct !{!360, !307}
!361 = distinct !{!361, !307}
!362 = distinct !{!362, !307}
!363 = distinct !{!363, !307}
!364 = distinct !{!364, !307}
!365 = distinct !{!365, !307, !344, !345}
!366 = !{!"function_entry_count", i64 56824}
!367 = !{!"simplify-rtx.c:simplify_unary_operation_1"}
!368 = !{!"branch_weights", i32 1, i32 655, i32 6149, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 50023}
!369 = !{!"branch_weights", i32 1, i32 655}
!370 = !{!"branch_weights", i32 -1556075598, i32 4194304, i32 4191906, i32 4185516}
!371 = !{i8 0, i8 2}
!372 = !{!"branch_weights", i32 -1551890083, i32 4194304, i32 4191906}
!373 = !{!374, !214, i64 8}
!374 = !{!"rtl_hooks", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !214, i64 32}
!375 = !{!"branch_weights", i32 1311, i32 429025}
!376 = !{!"branch_weights", i32 -1876688205, i32 393599, i32 393535, i32 393511, i32 393447, i32 393424, i32 393386}
!377 = !{!289, !194, i64 45}
!378 = !{!"branch_weights", i32 -1072168895, i32 524288, i32 524265, i32 524244}
!379 = !{!"branch_weights", i32 1, i32 6149}
!380 = !{!"branch_weights", i32 24781, i32 1239669987}
!381 = !{!"function_entry_count", i64 2446605}
!382 = !{!"branch_weights", i32 6625, i32 -1587865203}
!383 = distinct !{!383, !307}
!384 = distinct !{!384, !307}
!385 = distinct !{!385, !307}
!386 = !{!"branch_weights", i32 1755, i32 2147481893}
!387 = distinct !{!387, !307}
!388 = !{!289, !194, i64 47}
!389 = !{!289, !201, i64 24}
!390 = !{!289, !201, i64 20}
!391 = !{!"branch_weights", i32 877, i32 2147482771}
!392 = !{!"branch_weights", i32 194967, i32 2251640}
!393 = !{!"branch_weights", i32 -1295255015, i32 2029506946}
!394 = !{!"branch_weights", i32 116292, i32 1}
!395 = !{!"branch_weights", i32 9462, i32 106831}
!396 = !{!"branch_weights", i32 112094, i32 4199}
!397 = !{!"branch_weights", i32 1, i32 4963, i32 1, i32 529, i32 1, i32 1, i32 1, i32 1, i32 6279, i32 258, i32 39, i32 103885, i32 345, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!398 = !{!"branch_weights", i32 -1579046186, i32 52114}
!399 = !{!"branch_weights", i32 345, i32 103885}
!400 = !{!"branch_weights", i32 20671, i32 2147462977}
!401 = !{!"function_entry_count", i64 2330314}
!402 = !{!"simplify-rtx.c:simplify_binary_operation_1"}
!403 = !{!"branch_weights", i32 1, i32 467327, i32 779768, i32 379577, i32 312, i32 7292, i32 199, i32 320195, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 101765, i32 107232, i32 1, i32 1, i32 166657, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!404 = !{!"branch_weights", i32 -1583754012, i32 5800, i32 5800, i32 5800, i32 5801}
!405 = !{!"branch_weights", i32 1, i32 467327}
!406 = !{!"branch_weights", i32 1, i32 3738616, i32 4, i32 2, i32 1}
!407 = !{!"branch_weights", i32 -466878450, i32 188416, i32 24571, i32 24571, i32 24571}
!408 = !{!"branch_weights", i32 1, i32 23}
!409 = !{!"branch_weights", i32 2147442297, i32 13784, i32 13784, i32 13784}
!410 = !{!"branch_weights", i32 -1253592255, i32 -1253273333, i32 6508, i32 6507, i32 305907}
!411 = !{!"branch_weights", i32 -1253592255, i32 6508, i32 6507, i32 305907}
!412 = !{!"branch_weights", i32 1, i32 47}
!413 = !{!"branch_weights", i32 934655, i32 1}
!414 = !{!"branch_weights", i32 -884911385, i32 7302, i32 540346, i32 1825495}
!415 = !{!"branch_weights", i32 74, i32 1}
!416 = !{!"branch_weights", i32 250, i32 1}
!417 = !{!"branch_weights", i32 62500, i32 501}
!418 = !{!"branch_weights", i32 -882603958, i32 7302, i32 51113, i32 7301}
!419 = !{!"branch_weights", i32 7, i32 1}
!420 = !{!"branch_weights", i32 467226, i32 102}
!421 = !{!"branch_weights", i32 100, i32 3}
!422 = !{!"branch_weights", i32 142923324, i32 -487962016, i32 8453}
!423 = !{!"branch_weights", i32 1, i32 450320}
!424 = !{!"branch_weights", i32 -1586097072, i32 5797, i32 5797, i32 5797, i32 5797}
!425 = !{!"branch_weights", i32 68, i32 467159}
!426 = !{!"branch_weights", i32 1, i32 68}
!427 = !{!"branch_weights", i32 1, i32 467226}
!428 = !{!"branch_weights", i32 629, i32 -1940646263, i32 2519, i32 1259, i32 629, i32 0, i32 0, i32 0, i32 0}
!429 = !{!"branch_weights", i32 464308, i32 2919}
!430 = !{!"branch_weights", i32 464308, i32 1}
!431 = !{!"branch_weights", i32 1, i32 2919}
!432 = !{!"branch_weights", i32 -1653137360, i32 5689, i32 5689, i32 5689}
!433 = !{!"branch_weights", i32 -1101041664, i32 4096, i32 4095}
!434 = !{!"branch_weights", i32 379577, i32 1}
!435 = !{!"branch_weights", i32 -1934979582, i32 6216, i32 6216, i32 6216, i32 6217}
!436 = !{!"branch_weights", i32 1, i32 379577}
!437 = !{!"branch_weights", i32 -2147483648, i32 0}
!438 = !{!"branch_weights", i32 -2043743557, i32 5930, i32 5930, i32 5930}
!439 = !{!"branch_weights", i32 294912, i32 -1185767424, i32 8191}
!440 = !{!"branch_weights", i32 1, i32 379541}
!441 = !{!"branch_weights", i32 1, i32 37}
!442 = !{!"branch_weights", i32 1874161, i32 54872, i32 53428, i32 52022, i32 50653}
!443 = !{!"branch_weights", i32 1, i32 296, i32 4, i32 2, i32 1}
!444 = !{!"branch_weights", i32 37, i32 1}
!445 = !{!"branch_weights", i32 1, i32 312}
!446 = !{!"branch_weights", i32 -1681681525, i32 8456711, i32 8429693, i32 8402761, i32 8375915}
!447 = !{!"branch_weights", i32 -1926003712, i32 7666074, i32 7641582, i32 7617168, i32 7592832}
!448 = !{!"branch_weights", i32 312, i32 1}
!449 = !{!"branch_weights", i32 208, i32 105}
!450 = !{!"branch_weights", i32 208, i32 1}
!451 = !{!"branch_weights", i32 1, i32 105}
!452 = !{!"branch_weights", i32 -772439021, i32 34515557, i32 34189938, i32 33867392, i32 33547888}
!453 = !{!"branch_weights", i32 1148873092, i32 998610556}
!454 = !{!"branch_weights", i32 121550625, i32 1191016, i32 1179780, i32 1168650, i32 1157625}
!455 = !{!"branch_weights", i32 105, i32 1}
!456 = !{!"branch_weights", i32 309, i32 6984}
!457 = !{!"branch_weights", i32 1686, i32 5299}
!458 = !{!"branch_weights", i32 1, i32 1686}
!459 = !{!"branch_weights", i32 6984, i32 1}
!460 = !{!"branch_weights", i32 1, i32 6984}
!461 = !{!"branch_weights", i32 1686, i32 1}
!462 = !{!"branch_weights", i32 401, i32 1286}
!463 = !{!"branch_weights", i32 2029, i32 4556}
!464 = !{!"branch_weights", i32 1017, i32 1013}
!465 = !{!"branch_weights", i32 1017, i32 1}
!466 = !{!"branch_weights", i32 1, i32 1017}
!467 = !{!"branch_weights", i32 763, i32 255}
!468 = !{!"branch_weights", i32 1775, i32 4556}
!469 = !{!"branch_weights", i32 1775, i32 1}
!470 = !{!"branch_weights", i32 30168780, i32 6331, i32 9906450}
!471 = !{!"branch_weights", i32 13, i32 6318}
!472 = !{!"branch_weights", i32 1, i32 13}
!473 = !{!"branch_weights", i32 1565, i32 4766}
!474 = !{!"branch_weights", i32 1, i32 1565}
!475 = !{!"branch_weights", i32 1032, i32 5299}
!476 = !{!"branch_weights", i32 1032, i32 1}
!477 = !{!"branch_weights", i32 763, i32 270}
!478 = !{!"branch_weights", i32 763, i32 1}
!479 = !{!"branch_weights", i32 1, i32 1032}
!480 = !{!"branch_weights", i32 6330, i32 1}
!481 = !{!"branch_weights", i32 1, i32 398, i32 1}
!482 = !{!"branch_weights", i32 39601, i32 200, i32 199}
!483 = !{!"branch_weights", i32 83, i32 117}
!484 = !{!"branch_weights", i32 1, i32 83}
!485 = !{!"branch_weights", i32 83, i32 1}
!486 = !{!"branch_weights", i32 1, i32 117}
!487 = !{!"branch_weights", i32 101, i32 17}
!488 = !{!"branch_weights", i32 1, i32 101}
!489 = !{!"branch_weights", i32 56926001, i32 2090557647}
!490 = !{!"branch_weights", i32 117, i32 1}
!491 = !{!"branch_weights", i32 1, i32 320195}
!492 = !{!"branch_weights", i32 320195, i32 1}
!493 = !{!"branch_weights", i32 665, i32 319531}
!494 = !{!"branch_weights", i32 665, i32 1}
!495 = !{!"branch_weights", i32 20012, i32 -1091066108}
!496 = !{!"branch_weights", i32 -18296164, i32 13414, i32 18269336, i32 13412}
!497 = !{!"branch_weights", i32 1362, i32 1}
!498 = !{!"branch_weights", i32 255, i32 1108}
!499 = !{!"branch_weights", i32 1, i32 319941}
!500 = !{!"branch_weights", i32 665, i32 319277}
!501 = !{!"branch_weights", i32 1, i32 665}
!502 = !{!"branch_weights", i32 1108, i32 318834}
!503 = !{!"branch_weights", i32 1108, i32 1}
!504 = !{!"branch_weights", i32 319941, i32 1}
!505 = !{!"branch_weights", i32 304637, i32 15305}
!506 = !{!"branch_weights", i32 1084873, i32 -1396983683}
!507 = !{!"branch_weights", i32 113, i32 1}
!508 = !{!"branch_weights", i32 1, i32 113}
!509 = !{!"branch_weights", i32 225, i32 1, i32 1, i32 1}
!510 = !{!"branch_weights", i32 112, i32 113}
!511 = distinct !{!511, !307}
!512 = !{!"branch_weights", i32 12769, i32 227}
!513 = !{!"branch_weights", i32 1, i32 1108}
!514 = !{!"branch_weights", i32 1, i32 101765}
!515 = !{!"branch_weights", i32 -88277415, i32 -1901114417}
!516 = !{!"branch_weights", i32 1, i32 64859}
!517 = !{!"branch_weights", i32 1, i32 107232}
!518 = !{!"branch_weights", i32 100467, i32 66191}
!519 = !{!"branch_weights", i32 1, i32 66191}
!520 = distinct !{!520, !307}
!521 = distinct !{!521, !307}
!522 = distinct !{!522, !307}
!523 = !{!"function_entry_count", i64 2613902}
!524 = !{!"branch_weights", i32 1, i32 2613903}
!525 = !{!"branch_weights", i32 312271916, i32 -524484534}
!526 = !{!"branch_weights", i32 1, i32 199927}
!527 = !{!"branch_weights", i32 447843, i32 2166061}
!528 = !{!"branch_weights", i32 2165949, i32 113}
!529 = !{!"branch_weights", i32 134, i32 -1958743339, i32 539, i32 269, i32 134, i32 0, i32 0, i32 0, i32 0}
!530 = !{!"branch_weights", i32 -1974327633, i32 -1908266923}
!531 = !{!"branch_weights", i32 688289, i32 379545}
!532 = !{!"branch_weights", i32 5, i32 379541}
!533 = !{!"branch_weights", i32 1, i32 688293}
!534 = !{!"branch_weights", i32 688293, i32 1}
!535 = !{!"branch_weights", i32 379541, i32 1}
!536 = !{!"branch_weights", i32 -2033070802, i32 1265, i32 1265, i32 1265}
!537 = !{!"branch_weights", i32 1, i32 3573043}
!538 = !{!"branch_weights", i32 1, i32 1786521}
!539 = !{!"branch_weights", i32 -2033070802, i32 1265, i32 1265, i32 1265, i32 1266}
!540 = !{!"branch_weights", i32 1786521, i32 1}
!541 = !{!"branch_weights", i32 -1178121459, i32 1744, i32 8723}
!542 = !{!"branch_weights", i32 5, i32 6, i32 25}
!543 = !{!"branch_weights", i32 25, i32 11}
!544 = !{!"branch_weights", i32 5, i32 31}
!545 = !{!"branch_weights", i32 3573035, i32 1}
!546 = !{!"branch_weights", i32 1786517, i32 1}
!547 = !{!"branch_weights", i32 1786279, i32 239}
!548 = !{!"branch_weights", i32 1544425, i32 241855}
!549 = !{!"branch_weights", i32 1, i32 1, i32 2944, i32 67856, i32 507, i32 979050, i32 3401, i32 4460, i32 787, i32 386, i32 726896}
!550 = !{!"branch_weights", i32 2944, i32 1}
!551 = !{!"branch_weights", i32 1, i32 2944}
!552 = !{!"branch_weights", i32 67856, i32 1}
!553 = !{!"branch_weights", i32 1, i32 67856}
!554 = !{!"branch_weights", i32 507, i32 1}
!555 = !{!"branch_weights", i32 1, i32 507}
!556 = !{!"branch_weights", i32 7648, i32 -550674709}
!557 = !{!"branch_weights", i32 3401, i32 1}
!558 = !{!"branch_weights", i32 1, i32 3401}
!559 = !{!"branch_weights", i32 4460, i32 1}
!560 = !{!"branch_weights", i32 1, i32 4460}
!561 = !{!"branch_weights", i32 787, i32 1}
!562 = !{!"branch_weights", i32 1, i32 787}
!563 = !{!"branch_weights", i32 386, i32 1}
!564 = !{!"branch_weights", i32 1, i32 386}
!565 = !{!"branch_weights", i32 11357, i32 -167015774}
!566 = !{!"branch_weights", i32 1018642, i32 767876}
!567 = !{!"branch_weights", i32 1018642, i32 1}
!568 = !{!"branch_weights", i32 1424, i32 1017219}
!569 = !{!"branch_weights", i32 1, i32 1424}
!570 = !{!"branch_weights", i32 -241719155, i32 3979, i32 3979}
!571 = !{!"function_entry_count", i64 1586590}
!572 = !{!"simplify-rtx.c:simplify_relational_operation_1"}
!573 = !{!"branch_weights", i32 590693, i32 995899}
!574 = !{!"branch_weights", i32 20792, i32 569902}
!575 = !{!"branch_weights", i32 8592, i32 104843193, i32 73822464}
!576 = !{!"branch_weights", i32 1, i32 12201}
!577 = !{!"branch_weights", i32 1, i32 8592}
!578 = !{!"branch_weights", i32 1, i32 515}
!579 = !{!"branch_weights", i32 569902, i32 995899}
!580 = !{!"branch_weights", i32 -1757558784, i32 4452, i32 4452}
!581 = !{!"branch_weights", i32 230217, i32 765683}
!582 = !{!"branch_weights", i32 229703, i32 1, i32 1, i32 1, i32 515}
!583 = !{!"branch_weights", i32 201, i32 765483}
!584 = !{!"branch_weights", i32 40401, i32 202, i32 201}
!585 = !{!"branch_weights", i32 -189888140, i32 175002484}
!586 = !{!"branch_weights", i32 2932, i32 -2093932478}
!587 = !{!"branch_weights", i32 654050440, i32 -1060257846}
!588 = !{!"branch_weights", i32 508233207, i32 -663189023}
!589 = !{!"branch_weights", i32 458, i32 31865}
!590 = !{!"branch_weights", i32 185, i32 274}
!591 = !{!"branch_weights", i32 2221, i32 -961590912}
!592 = !{!"branch_weights", i32 -5604, i32 2860, i32 2743}
!593 = !{!"branch_weights", i32 1372, i32 2147482276}
!594 = !{!"function_entry_count", i64 4}
!595 = !{!"simplify-rtx.c:comparison_result"}
!596 = !{!"branch_weights", i32 1, i32 3, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!597 = !{!"branch_weights", i32 3, i32 1}
!598 = !{!"function_entry_count", i64 284232}
!599 = !{!"simplify-rtx.c:simplify_immed_subreg"}
!600 = !{!"branch_weights", i32 1, i32 284233}
!601 = !{!"branch_weights", i32 15109, i32 2147468539}
!602 = !{!"branch_weights", i32 1, i32 284233, i32 1, i32 1}
!603 = !{!"branch_weights", i32 1, i32 284232}
!604 = !{!"branch_weights", i32 284232, i32 1}
!605 = !{!"branch_weights", i32 1989625, i32 284232}
!606 = distinct !{!606, !307}
!607 = !{!"branch_weights", i32 15632761, i32 284232}
!608 = distinct !{!608, !307}
!609 = distinct !{!609, !307}
!610 = distinct !{!610, !307}
!611 = distinct !{!611, !307}
!612 = distinct !{!612, !307}
!613 = distinct !{!613, !307}
!614 = distinct !{!614, !307}
!615 = !{!"branch_weights", i32 284233, i32 1}
!616 = !{!"branch_weights", i32 73645, i32 -805675195}
!617 = !{!"branch_weights", i32 1, i32 284233, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!618 = !{!"branch_weights", i32 284232, i32 778804}
!619 = distinct !{!619, !307}
!620 = !{!"branch_weights", i32 778804, i32 284232}
!621 = !{!"branch_weights", i32 0, i32 1}
!622 = distinct !{!622, !307}
!623 = distinct !{!623, !307}
!624 = !{!625, !201, i64 16}
!625 = !{!"fixed_value", !626, i64 0, !201, i64 16}
!626 = !{!"", !218, i64 0, !218, i64 8}
!627 = !{!625, !218, i64 0}
!628 = distinct !{!628, !307}
!629 = !{!625, !218, i64 8}
!630 = distinct !{!630, !307}
!631 = distinct !{!631, !307}
!632 = !{!"function_entry_count", i64 265561}
!633 = !{!"simplify-rtx.c:rhs_regno"}
!634 = !{!"function_entry_count", i64 25975}
!635 = !{!"branch_weights", i32 89, i32 1, i32 25888, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!636 = !{!"branch_weights", i32 25888, i32 1}
!637 = !{!"function_entry_count", i64 931604}
!638 = !{!"simplify-rtx.c:plus_minus_operand_p"}
!639 = !{!"branch_weights", i32 -1311177531, i32 9378510, i32 3212, i32 3212}
!640 = !{!"function_entry_count", i64 2918}
!641 = !{!"simplify-rtx.c:simplify_plus_minus"}
!642 = !{!643, !214, i64 0}
!643 = !{!"simplify_plus_minus_op_data", !214, i64 0, !644, i64 8}
!644 = !{!"short", !194, i64 0}
!645 = !{!643, !644, i64 8}
!646 = !{!"branch_weights", i32 6522, i32 1}
!647 = !{!"branch_weights", i32 823, i32 2097}
!648 = !{!"branch_weights", i32 15801, i32 3971, i32 1, i32 1, i32 1, i32 1, i32 2029}
!649 = !{!"branch_weights", i32 1, i32 3971}
!650 = !{!"branch_weights", i32 2029, i32 1}
!651 = !{!"branch_weights", i32 15277, i32 6522}
!652 = distinct !{!652, !307}
!653 = !{!"branch_weights", i32 960655668, i32 1186827980}
!654 = distinct !{!654, !307}
!655 = !{!"branch_weights", i32 735692, i32 2146747956}
!656 = !{!"branch_weights", i32 2918, i32 1}
!657 = !{!"branch_weights", i32 2379, i32 4511}
!658 = !{i64 0, i64 2, !659}
!659 = !{!644, !644, i64 0}
!660 = !{i64 0, i64 8, !243, i64 8, i64 2, !659}
!661 = !{!"branch_weights", i32 2771, i32 4349}
!662 = !{!"branch_weights", i32 4511, i32 2609}
!663 = distinct !{!663, !307}
!664 = !{!"branch_weights", i32 2918, i32 3971}
!665 = distinct !{!665, !307}
!666 = !{!"branch_weights", i32 3971, i32 2918}
!667 = distinct !{!667, !307}
!668 = !{!"branch_weights", i32 144937521, i32 24079}
!669 = !{!"branch_weights", i32 12039, i32 1}
!670 = !{!"branch_weights", i32 144937521, i32 12040, i32 12039}
!671 = !{!"branch_weights", i32 2147379594, i32 104054}
!672 = !{!"branch_weights", i32 5151, i32 6888}
!673 = distinct !{!673, !307}
!674 = !{!"branch_weights", i32 1, i32 9807}
!675 = !{!"branch_weights", i32 2918, i32 6889}
!676 = distinct !{!676, !307}
!677 = !{!"branch_weights", i32 2919, i32 1}
!678 = distinct !{!678, !307}
!679 = !{!"branch_weights", i32 1, i32 823}
!680 = !{!"branch_weights", i32 -2147483648, i32 -2147483648, i32 0}
!681 = !{!"branch_weights", i32 127, i32 373505}
!682 = distinct !{!682, !307}
!683 = !{!"branch_weights", i32 2146748209, i32 735439}
!684 = !{!"branch_weights", i32 2146747957, i32 735691}
!685 = distinct !{!685, !307}
!686 = !{!"function_entry_count", i64 326489}
!687 = !{!"simplify-rtx.c:simplify_associative_operation"}
!688 = !{!"branch_weights", i32 1, i32 326490}
!689 = !{!"function_entry_count", i64 379540}
!690 = !{!"simplify-rtx.c:neg_const_int"}
!691 = !{!"function_entry_count", i64 11236}
!692 = !{!"simplify-rtx.c:simplify_plus_minus_op_data_cmp"}
!693 = !{!"branch_weights", i32 9505, i32 1733}
!694 = !{!"branch_weights", i32 9505, i32 1}
