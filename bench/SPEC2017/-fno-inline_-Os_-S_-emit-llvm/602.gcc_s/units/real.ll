; ModuleID = 'real.c'
source_filename = "real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"real.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@real_digit.num = internal global [10 x %struct.real_value] zeroinitializer, align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"-0.0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%c%cNaN\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"e%+d\00", align 1
@ten_to_ptwo.tens = internal global [26 x %struct.real_value] zeroinitializer, align 16
@ten_to_mptwo.tens = internal global [26 x %struct.real_value] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"p%+d\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"QNaN\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"SNaN\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@_hex_value = external local_unnamed_addr constant [256 x i8], align 16
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.14 = private unnamed_addr constant [3 x i8] c"0.\00", align 1
@dconst_e_ptr.value = internal global %struct.real_value zeroinitializer, align 8
@dconst_third_ptr.value = internal global %struct.real_value zeroinitializer, align 8
@dconst1 = external global %struct.real_value, align 8
@dconst_sqrt2_ptr.value = internal global %struct.real_value zeroinitializer, align 8
@ieee_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_single, ptr @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@mips_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_single, ptr @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8
@motorola_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_single, ptr @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8
@spu_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_single, ptr @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 129, i32 31, i32 31, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 8
@ieee_double_format = dso_local constant %struct.real_format { ptr @encode_ieee_double, ptr @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@mips_double_format = dso_local constant %struct.real_format { ptr @encode_ieee_double, ptr @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8
@motorola_double_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_double, ptr @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8
@ieee_extended_motorola_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_extended_motorola, ptr @decode_ieee_extended_motorola, i32 2, i32 64, i32 64, i32 -16382, i32 16384, i32 95, i32 95, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8
@ieee_extended_intel_96_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_extended_intel_96, ptr @decode_ieee_extended_intel_96, i32 2, i32 64, i32 64, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@ieee_extended_intel_128_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_extended_intel_128, ptr @decode_ieee_extended_intel_128, i32 2, i32 64, i32 64, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@ieee_extended_intel_96_round_53_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_extended_intel_96, ptr @decode_ieee_extended_intel_96, i32 2, i32 53, i32 53, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@ibm_extended_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ibm_extended, ptr @decode_ibm_extended, i32 2, i32 106, i32 53, i32 -968, i32 1024, i32 127, i32 -1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@mips_extended_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ibm_extended, ptr @decode_ibm_extended, i32 2, i32 106, i32 53, i32 -968, i32 1024, i32 127, i32 -1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8
@ieee_quad_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_quad, ptr @decode_ieee_quad, i32 2, i32 113, i32 113, i32 -16381, i32 16384, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@mips_quad_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_quad, ptr @decode_ieee_quad, i32 2, i32 113, i32 113, i32 -16381, i32 16384, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8
@vax_f_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_vax_f, ptr @decode_vax_f, i32 2, i32 24, i32 24, i32 -127, i32 127, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8
@vax_d_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_vax_d, ptr @decode_vax_d, i32 2, i32 56, i32 56, i32 -127, i32 127, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8
@vax_g_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_vax_g, ptr @decode_vax_g, i32 2, i32 53, i32 53, i32 -1023, i32 1023, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8
@decimal_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_decimal_single, ptr @decode_decimal_single, i32 10, i32 7, i32 7, i32 -94, i32 97, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@decimal_double_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_decimal_double, ptr @decode_decimal_double, i32 10, i32 16, i32 16, i32 -382, i32 385, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@decimal_quad_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_decimal_quad, ptr @decode_decimal_quad, i32 10, i32 34, i32 34, i32 -6142, i32 6145, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@ieee_half_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_half, ptr @decode_ieee_half, i32 2, i32 11, i32 11, i32 -13, i32 16, i32 15, i32 15, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@arm_half_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_half, ptr @decode_ieee_half, i32 2, i32 11, i32 11, i32 -13, i32 17, i32 15, i32 15, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 8
@real_internal_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_internal, ptr @decode_internal, i32 2, i32 190, i32 190, i32 -33554431, i32 33554431, i32 -1, i32 -1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0 }, align 8
@real_sqrt.halfthree = internal global %struct.real_value zeroinitializer, align 8
@real_sqrt.init = internal unnamed_addr global i1 false, align 1
@dconsthalf = external global %struct.real_value, align 8
@dconstm1 = external global %struct.real_value, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"0x0.\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"08ce\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"7bde\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @real_arithmetic(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %4
  %15 = tail call zeroext i8 @decimal_real_arithmetic(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) #17
  br label %53

16:                                               ; preds = %10, %8
  switch i32 %1, label %52 [
    i32 63, label %17
    i32 64, label %19
    i32 65, label %21
    i32 75, label %23
    i32 80, label %25
    i32 81, label %35
    i32 79, label %45
    i32 82, label %48
    i32 77, label %51
  ]

17:                                               ; preds = %16
  %18 = tail call fastcc zeroext i8 @do_add(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef 0) #18, !range !6
  br label %53

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @do_add(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef 1) #18, !range !6
  br label %53

21:                                               ; preds = %16
  %22 = tail call fastcc zeroext i8 @do_multiply(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #18
  br label %53

23:                                               ; preds = %16
  %24 = tail call fastcc zeroext i8 @do_divide(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #18, !range !6
  br label %53

25:                                               ; preds = %16
  %26 = load i32, ptr %3, align 8
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !7
  br label %53

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @do_compare(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef -1) #18
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  br label %53

34:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !7
  br label %53

35:                                               ; preds = %16
  %36 = load i32, ptr %3, align 8
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !7
  br label %53

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @do_compare(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1) #18
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !7
  br label %53

44:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  br label %53

45:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  %46 = load i32, ptr %0, align 8
  %47 = xor i32 %46, 8
  store i32 %47, ptr %0, align 8
  br label %53

48:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  %49 = load i32, ptr %0, align 8
  %50 = and i32 %49, -9
  store i32 %50, ptr %0, align 8
  br label %53

51:                                               ; preds = %16
  tail call fastcc void @do_fix_trunc(ptr noundef %0, ptr noundef nonnull %2) #18
  br label %53

52:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1055, ptr noundef nonnull @.str.1) #17
  br label %53

53:                                               ; preds = %45, %48, %51, %52, %33, %34, %29, %43, %44, %39, %23, %21, %19, %17, %14
  %54 = phi i8 [ %15, %14 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ 0, %39 ], [ 0, %44 ], [ 0, %43 ], [ 0, %29 ], [ 0, %34 ], [ 0, %33 ], [ 0, %52 ], [ 0, %51 ], [ 0, %48 ], [ 0, %45 ]
  ret i8 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @decimal_real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @do_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = load i32, ptr %1, align 8
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 1
  %9 = load i32, ptr %2, align 8
  %10 = xor i32 %9, %6
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 1
  %13 = xor i32 %12, %3
  %14 = shl i32 %6, 2
  %15 = and i32 %14, 12
  %16 = and i32 %9, 3
  %17 = or disjoint i32 %15, %16
  switch i32 %17, label %33 [
    i32 0, label %18
    i32 1, label %21
    i32 2, label %21
    i32 3, label %21
    i32 7, label %21
    i32 11, label %21
    i32 15, label %21
    i32 6, label %21
    i32 4, label %28
    i32 8, label %28
    i32 12, label %28
    i32 13, label %28
    i32 14, label %28
    i32 9, label %28
    i32 10, label %29
    i32 5, label %34
  ]

18:                                               ; preds = %4
  %19 = icmp eq i32 %13, 0
  %20 = select i1 %19, i32 %8, i32 0
  tail call fastcc void @get_zero(ptr noundef %0, i32 noundef %20) #18
  br label %103

21:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  %22 = xor i32 %13, %7
  %23 = load i32, ptr %0, align 8
  %24 = shl i32 %22, 3
  %25 = and i32 %24, 8
  %26 = and i32 %23, -9
  %27 = or disjoint i32 %26, %25
  store i32 %27, ptr %0, align 8
  br label %103

28:                                               ; preds = %4, %4, %4, %4, %4, %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  br label %103

29:                                               ; preds = %4
  %30 = icmp eq i32 %13, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call fastcc void @get_canonical_qnan(ptr noundef %0, i32 noundef 0) #18
  br label %103

32:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  br label %103

33:                                               ; preds = %4
  unreachable

34:                                               ; preds = %4
  %35 = ashr i32 %6, 6
  %36 = ashr i32 %9, 6
  %37 = sub nsw i32 %35, %36
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = sub nsw i32 0, %37
  %41 = xor i32 %13, %8
  br label %44

42:                                               ; preds = %34
  %43 = icmp eq i32 %37, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %36, %39 ], [ %35, %42 ]
  %46 = phi i32 [ %41, %39 ], [ %8, %42 ]
  %47 = phi i32 [ %40, %39 ], [ %37, %42 ]
  %48 = phi ptr [ %1, %39 ], [ %2, %42 ]
  %49 = phi ptr [ %2, %39 ], [ %1, %42 ]
  %50 = icmp ugt i32 %47, 191
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %49, i64 32, i1 false), !tbaa.struct !7
  %52 = load i32, ptr %0, align 8
  %53 = shl i32 %46, 3
  %54 = and i32 %53, 8
  %55 = and i32 %52, -9
  %56 = or disjoint i32 %55, %54
  store i32 %56, ptr %0, align 8
  br label %103

57:                                               ; preds = %44
  %58 = call fastcc zeroext i8 @sticky_rshift_significand(ptr noundef nonnull %5, ptr noundef nonnull %48, i32 noundef %47) #18, !range !6
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi i32 [ %45, %57 ], [ %35, %42 ]
  %61 = phi i32 [ %46, %57 ], [ %8, %42 ]
  %62 = phi ptr [ %49, %57 ], [ %1, %42 ]
  %63 = phi ptr [ %5, %57 ], [ %2, %42 ]
  %64 = phi i8 [ %58, %57 ], [ 0, %42 ]
  %65 = icmp eq i32 %13, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = zext nneg i8 %64 to i32
  %68 = call fastcc zeroext i8 @sub_significands(ptr noundef %0, ptr noundef nonnull %62, ptr noundef nonnull %63, i32 noundef %67) #18, !range !6
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = xor i32 %61, 1
  tail call fastcc void @neg_significand(ptr noundef %0, ptr noundef %0) #18
  br label %84

72:                                               ; preds = %59
  %73 = call fastcc zeroext i8 @add_significands(ptr noundef %0, ptr noundef nonnull %62, ptr noundef nonnull %63) #18, !range !6
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = tail call fastcc zeroext i8 @sticky_rshift_significand(ptr noundef %0, ptr noundef %0, i32 noundef 1) #18, !range !6
  %77 = or i8 %76, %64
  %78 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  %79 = load i64, ptr %78, align 8, !tbaa !13
  %80 = or i64 %79, -9223372036854775808
  store i64 %80, ptr %78, align 8, !tbaa !13
  %81 = add nsw i32 %60, 1
  %82 = icmp sgt i32 %60, 33554430
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  tail call fastcc void @get_inf(ptr noundef nonnull %0, i32 noundef %61) #18
  br label %103

84:                                               ; preds = %72, %75, %66, %70
  %85 = phi i32 [ %71, %70 ], [ %61, %66 ], [ %61, %75 ], [ %61, %72 ]
  %86 = phi i32 [ %60, %70 ], [ %60, %66 ], [ %81, %75 ], [ %60, %72 ]
  %87 = phi i8 [ %64, %70 ], [ %64, %66 ], [ %77, %75 ], [ %64, %72 ]
  %88 = shl i32 %85, 3
  %89 = and i32 %88, 8
  %90 = shl nsw i32 %86, 6
  %91 = or disjoint i32 %89, %90
  %92 = or disjoint i32 %91, 1
  store i32 %92, ptr %0, align 8
  tail call fastcc void @normalize(ptr noundef nonnull %0) #18
  %93 = load i32, ptr %0, align 8
  %94 = and i32 %93, 3
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = and i32 %93, -12
  store i32 %97, ptr %0, align 8
  br label %103

98:                                               ; preds = %84
  %99 = zext nneg i8 %87 to i64
  %100 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !13
  %102 = or i64 %101, %99
  store i64 %102, ptr %100, align 8, !tbaa !13
  br label %103

103:                                              ; preds = %96, %98, %31, %32, %83, %51, %28, %21, %18
  %104 = phi i8 [ 1, %51 ], [ 1, %83 ], [ 0, %28 ], [ 0, %21 ], [ 0, %18 ], [ 0, %32 ], [ 0, %31 ], [ %87, %98 ], [ %87, %96 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret i8 %104
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @do_multiply(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #3 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = load i32, ptr %1, align 8
  %7 = load i32, ptr %2, align 8
  %8 = xor i32 %7, %6
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 1
  %11 = shl i32 %6, 2
  %12 = and i32 %11, 12
  %13 = and i32 %7, 3
  %14 = or disjoint i32 %12, %13
  switch i32 %14, label %28 [
    i32 0, label %15
    i32 1, label %15
    i32 4, label %15
    i32 3, label %16
    i32 7, label %16
    i32 11, label %16
    i32 15, label %16
    i32 12, label %21
    i32 13, label %21
    i32 14, label %21
    i32 2, label %26
    i32 8, label %26
    i32 10, label %27
    i32 6, label %27
    i32 9, label %27
    i32 5, label %29
  ]

15:                                               ; preds = %3, %3, %3
  tail call fastcc void @get_zero(ptr noundef %0, i32 noundef %10) #18
  br label %98

16:                                               ; preds = %3, %3, %3, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  %17 = load i32, ptr %0, align 8
  %18 = shl nuw nsw i32 %10, 3
  %19 = and i32 %17, -9
  %20 = or disjoint i32 %19, %18
  store i32 %20, ptr %0, align 8
  br label %98

21:                                               ; preds = %3, %3, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  %22 = load i32, ptr %0, align 8
  %23 = shl nuw nsw i32 %10, 3
  %24 = and i32 %22, -9
  %25 = or disjoint i32 %24, %23
  store i32 %25, ptr %0, align 8
  br label %98

26:                                               ; preds = %3, %3
  tail call fastcc void @get_canonical_qnan(ptr noundef %0, i32 noundef %10) #18
  br label %98

27:                                               ; preds = %3, %3, %3
  tail call fastcc void @get_inf(ptr noundef %0, i32 noundef %10) #18
  br label %98

28:                                               ; preds = %3
  unreachable

29:                                               ; preds = %3
  %30 = icmp eq ptr %0, %1
  %31 = icmp eq ptr %0, %2
  %32 = or i1 %30, %31
  %33 = select i1 %32, ptr %5, ptr %0
  call fastcc void @get_zero(ptr noundef %33, i32 noundef 0) #18
  br label %34

34:                                               ; preds = %29, %87
  %35 = phi i8 [ 0, %29 ], [ %88, %87 ]
  %36 = phi i32 [ 0, %29 ], [ %89, %87 ]
  %37 = lshr i32 %36, 1
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !13
  %41 = and i32 %36, 1
  %42 = icmp eq i32 %41, 0
  %43 = lshr i64 %40, 32
  %44 = and i64 %40, 4294967295
  %45 = select i1 %42, i64 %44, i64 %43
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %87, label %47

47:                                               ; preds = %34
  %48 = shl nuw nsw i32 %36, 5
  %49 = add nsw i32 %48, -160
  br label %50

50:                                               ; preds = %47, %83
  %51 = phi i64 [ 0, %47 ], [ %85, %83 ]
  %52 = phi i8 [ %35, %47 ], [ %84, %83 ]
  %53 = phi i1 [ true, %47 ], [ false, %83 ]
  %54 = phi i32 [ -32, %47 ], [ 0, %83 ]
  %55 = load i32, ptr %1, align 8
  %56 = ashr i32 %55, 6
  %57 = add nsw i32 %49, %56
  %58 = load i32, ptr %2, align 8
  %59 = ashr i32 %58, 6
  %60 = add nsw i32 %54, %59
  %61 = add nsw i32 %57, %60
  %62 = icmp sgt i32 %61, 33554431
  br i1 %62, label %86, label %63

63:                                               ; preds = %50
  %64 = icmp slt i32 %61, -33554431
  br i1 %64, label %83, label %65

65:                                               ; preds = %63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %66 = shl nsw i32 %61, 6
  %67 = or disjoint i32 %66, 1
  store i32 %67, ptr %4, align 8
  br label %68

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %51, %65 ], [ %78, %68 ]
  %70 = lshr i64 %69, 1
  %71 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !13
  %73 = lshr i64 %72, 32
  %74 = and i64 %72, 4294967295
  %75 = select i1 %53, i64 %74, i64 %73
  %76 = mul nuw i64 %75, %45
  %77 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %70
  store i64 %76, ptr %77, align 8, !tbaa !13
  %78 = add nuw nsw i64 %69, 2
  %79 = icmp ult i64 %69, 4
  br i1 %79, label %68, label %80, !llvm.loop !15

80:                                               ; preds = %68
  call fastcc void @normalize(ptr noundef nonnull %4) #18
  %81 = call fastcc zeroext i8 @do_add(ptr noundef %33, ptr noundef %33, ptr noundef nonnull %4, i32 noundef 0) #18, !range !6
  %82 = or i8 %81, %52
  br label %83

83:                                               ; preds = %80, %63
  %84 = phi i8 [ 1, %63 ], [ %82, %80 ]
  %85 = add nuw nsw i64 %51, 1
  br i1 %53, label %50, label %87, !llvm.loop !17

86:                                               ; preds = %50
  tail call fastcc void @get_inf(ptr noundef %0, i32 noundef %10) #18
  br label %98

87:                                               ; preds = %83, %34
  %88 = phi i8 [ %35, %34 ], [ %84, %83 ]
  %89 = add nuw nsw i32 %36, 1
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %91, label %34, !llvm.loop !18

91:                                               ; preds = %87
  %92 = load i32, ptr %33, align 8
  %93 = shl nuw nsw i32 %10, 3
  %94 = and i32 %92, -9
  %95 = or disjoint i32 %94, %93
  store i32 %95, ptr %33, align 8
  %96 = icmp eq ptr %33, %0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !7
  br label %98

98:                                               ; preds = %86, %91, %97, %27, %26, %21, %16, %15
  %99 = phi i8 [ 1, %86 ], [ 0, %27 ], [ 0, %26 ], [ 0, %21 ], [ 0, %16 ], [ 0, %15 ], [ %88, %97 ], [ %88, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret i8 %99
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @do_divide(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #3 {
  %4 = alloca %struct.real_value, align 8
  %5 = load i32, ptr %1, align 8
  %6 = load i32, ptr %2, align 8
  %7 = xor i32 %6, %5
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %10 = shl i32 %5, 2
  %11 = and i32 %10, 12
  %12 = and i32 %6, 3
  %13 = or disjoint i32 %11, %12
  switch i32 %13, label %28 [
    i32 0, label %14
    i32 10, label %14
    i32 1, label %15
    i32 2, label %15
    i32 6, label %15
    i32 4, label %16
    i32 8, label %16
    i32 3, label %17
    i32 7, label %17
    i32 11, label %17
    i32 15, label %17
    i32 12, label %22
    i32 13, label %22
    i32 14, label %22
    i32 9, label %27
    i32 5, label %29
  ]

14:                                               ; preds = %3, %3
  tail call fastcc void @get_canonical_qnan(ptr noundef %0, i32 noundef %9) #18
  br label %63

15:                                               ; preds = %3, %3, %3
  tail call fastcc void @get_zero(ptr noundef %0, i32 noundef %9) #18
  br label %63

16:                                               ; preds = %3, %3
  tail call fastcc void @get_inf(ptr noundef %0, i32 noundef %9) #18
  br label %63

17:                                               ; preds = %3, %3, %3, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  %18 = load i32, ptr %0, align 8
  %19 = shl nuw nsw i32 %9, 3
  %20 = and i32 %18, -9
  %21 = or disjoint i32 %20, %19
  store i32 %21, ptr %0, align 8
  br label %63

22:                                               ; preds = %3, %3, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  %23 = load i32, ptr %0, align 8
  %24 = shl nuw nsw i32 %9, 3
  %25 = and i32 %23, -9
  %26 = or disjoint i32 %25, %24
  store i32 %26, ptr %0, align 8
  br label %63

27:                                               ; preds = %3
  tail call fastcc void @get_inf(ptr noundef %0, i32 noundef %9) #18
  br label %63

28:                                               ; preds = %3
  unreachable

29:                                               ; preds = %3
  %30 = icmp eq ptr %0, %1
  %31 = icmp eq ptr %0, %2
  %32 = or i1 %30, %31
  %33 = select i1 %32, ptr %4, ptr %0
  call fastcc void @get_zero(ptr noundef %33, i32 noundef 0) #18
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, -12
  %36 = shl nuw nsw i32 %9, 3
  %37 = or disjoint i32 %35, %36
  %38 = or disjoint i32 %37, 1
  store i32 %38, ptr %33, align 8
  %39 = load i32, ptr %1, align 8
  %40 = ashr i32 %39, 6
  %41 = load i32, ptr %2, align 8
  %42 = ashr i32 %41, 6
  %43 = sub nsw i32 %40, %42
  %44 = icmp sgt i32 %43, 33554430
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  tail call fastcc void @get_inf(ptr noundef %0, i32 noundef %9) #18
  br label %63

46:                                               ; preds = %29
  %47 = icmp slt i32 %43, -33554432
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  tail call fastcc void @get_zero(ptr noundef %0, i32 noundef %9) #18
  br label %63

49:                                               ; preds = %46
  %50 = shl nsw i32 %43, 6
  %51 = add i32 %50, 64
  %52 = and i32 %38, 61
  %53 = or disjoint i32 %51, %52
  store i32 %53, ptr %33, align 8
  %54 = call fastcc zeroext i8 @div_significands(ptr noundef nonnull %33, ptr noundef nonnull %1, ptr noundef nonnull %2) #18, !range !6
  call fastcc void @normalize(ptr noundef nonnull %33) #18
  %55 = zext nneg i8 %54 to i64
  %56 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1
  %57 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %58 = select i1 %32, ptr %56, ptr %57
  %59 = load i64, ptr %58, align 8, !tbaa !13
  %60 = or i64 %59, %55
  store i64 %60, ptr %58, align 8, !tbaa !13
  %61 = icmp eq ptr %33, %0
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !7
  br label %63

63:                                               ; preds = %49, %62, %48, %45, %27, %22, %17, %16, %15, %14
  %64 = phi i8 [ 1, %45 ], [ 1, %48 ], [ 0, %27 ], [ 0, %22 ], [ 0, %17 ], [ 0, %16 ], [ 0, %15 ], [ 0, %14 ], [ %54, %62 ], [ %54, %49 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret i8 %64
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @do_compare(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = shl i32 %4, 2
  %6 = and i32 %5, 12
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 3
  %9 = or disjoint i32 %6, %8
  switch i32 %9, label %35 [
    i32 0, label %64
    i32 4, label %10
    i32 8, label %15
    i32 9, label %15
    i32 10, label %19
    i32 1, label %25
    i32 2, label %30
    i32 6, label %30
    i32 3, label %34
    i32 7, label %34
    i32 11, label %34
    i32 15, label %34
    i32 12, label %34
    i32 13, label %34
    i32 14, label %34
    i32 5, label %36
  ]

10:                                               ; preds = %3
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @decimal_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #17
  br label %64

15:                                               ; preds = %10, %3, %3
  %16 = and i32 %4, 8
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1, i32 -1
  br label %64

19:                                               ; preds = %3
  %20 = shl i32 %4, 28
  %21 = ashr i32 %20, 31
  %22 = lshr i32 %7, 3
  %23 = and i32 %22, 1
  %24 = add nsw i32 %23, %21
  br label %64

25:                                               ; preds = %3
  %26 = and i32 %7, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @decimal_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #17
  br label %64

30:                                               ; preds = %25, %3, %3
  %31 = and i32 %7, 8
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 -1, i32 1
  br label %64

34:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  br label %64

35:                                               ; preds = %3
  unreachable

36:                                               ; preds = %3
  %37 = lshr i32 %4, 3
  %38 = and i32 %37, 1
  %39 = lshr i32 %7, 3
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = sub nsw i32 %40, %38
  br label %64

44:                                               ; preds = %36
  %45 = or i32 %7, %4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @decimal_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #17
  br label %64

50:                                               ; preds = %44
  %51 = ashr i32 %4, 6
  %52 = ashr i32 %7, 6
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = icmp slt i32 %51, %52
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = tail call fastcc i32 @cmp_significands(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %58

58:                                               ; preds = %54, %50, %56
  %59 = phi i32 [ %57, %56 ], [ 1, %50 ], [ -1, %54 ]
  %60 = and i32 %4, 8
  %61 = icmp eq i32 %60, 0
  %62 = sub nsw i32 0, %59
  %63 = select i1 %61, i32 %59, i32 %62
  br label %64

64:                                               ; preds = %3, %58, %48, %42, %34, %30, %28, %19, %15, %13
  %65 = phi i32 [ %43, %42 ], [ %49, %48 ], [ %63, %58 ], [ %2, %34 ], [ %33, %30 ], [ %29, %28 ], [ %24, %19 ], [ %18, %15 ], [ %14, %13 ], [ %9, %3 ]
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_fix_trunc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = and i32 %3, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @decimal_do_fix_trunc(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %20

10:                                               ; preds = %6
  %11 = ashr i32 %3, 6
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = lshr i32 %3, 3
  %15 = and i32 %14, 1
  tail call fastcc void @get_zero(ptr noundef nonnull %0, i32 noundef %15) #18
  br label %20

16:                                               ; preds = %10
  %17 = icmp ult i32 %11, 192
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = sub nuw nsw i32 192, %11
  tail call fastcc void @clear_significand_below(ptr noundef nonnull %0, i32 noundef %19) #18
  br label %20

20:                                               ; preds = %2, %13, %18, %16, %9
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @get_zero(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %3 = shl i32 %1, 3
  %4 = and i32 %3, 8
  store i32 %4, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @get_canonical_qnan(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %3 = shl i32 %1, 3
  %4 = and i32 %3, 8
  %5 = or disjoint i32 %4, 35
  store i32 %5, ptr %0, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @sticky_rshift_significand(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = icmp ugt i32 %2, 63
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = lshr i32 %2, 6
  %7 = zext nneg i32 %6 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %14, %8 ]
  %10 = phi i64 [ 0, %5 ], [ %13, %8 ]
  %11 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %9
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = or i64 %12, %10
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !llvm.loop !19

16:                                               ; preds = %8
  %17 = and i32 %2, 63
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %29

19:                                               ; preds = %3
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %23, label %29

21:                                               ; preds = %16
  %22 = icmp ult i32 %2, 192
  br i1 %22, label %23, label %65

23:                                               ; preds = %19, %21
  %24 = phi i64 [ %13, %21 ], [ 0, %19 ]
  %25 = phi i32 [ %6, %21 ], [ 0, %19 ]
  %26 = zext nneg i32 %25 to i64
  %27 = xor i32 %25, 3
  %28 = zext nneg i32 %27 to i64
  br label %76

29:                                               ; preds = %19, %16
  %30 = phi i32 [ 0, %19 ], [ %6, %16 ]
  %31 = phi i64 [ 0, %19 ], [ %13, %16 ]
  %32 = phi i32 [ %2, %19 ], [ %17, %16 ]
  %33 = zext nneg i32 %30 to i64
  %34 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !13
  %36 = zext nneg i32 %32 to i64
  %37 = shl nsw i64 -1, %36
  %38 = xor i64 %37, -1
  %39 = and i64 %35, %38
  %40 = sub nuw nsw i32 64, %32
  %41 = zext nneg i32 %40 to i64
  br label %42

42:                                               ; preds = %29, %55
  %43 = phi i64 [ 0, %29 ], [ %61, %55 ]
  %44 = add nuw nsw i64 %43, %33
  %45 = icmp ugt i64 %44, 2
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %44
  %48 = load i64, ptr %47, align 8, !tbaa !13
  %49 = lshr i64 %48, %36
  %50 = icmp eq i64 %44, 2
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = add nuw nsw i64 %44, 1
  %53 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !13
  br label %55

55:                                               ; preds = %42, %46, %51
  %56 = phi i64 [ %49, %51 ], [ %49, %46 ], [ 0, %42 ]
  %57 = phi i64 [ %54, %51 ], [ 0, %46 ], [ 0, %42 ]
  %58 = shl i64 %57, %41
  %59 = or i64 %58, %56
  %60 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %43
  store i64 %59, ptr %60, align 8, !tbaa !13
  %61 = add nuw nsw i64 %43, 1
  %62 = icmp eq i64 %61, 3
  br i1 %62, label %85, label %42, !llvm.loop !20

63:                                               ; preds = %76
  %64 = icmp ult i32 %27, 3
  br i1 %64, label %65, label %87

65:                                               ; preds = %21, %63
  %66 = phi i32 [ %27, %63 ], [ 0, %21 ]
  %67 = phi i64 [ %24, %63 ], [ %13, %21 ]
  %68 = shl nuw nsw i32 %66, 3
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr i8, ptr %0, i64 %69
  %71 = getelementptr i8, ptr %70, i64 8
  %72 = sub nuw nsw i32 2, %66
  %73 = zext nneg i32 %72 to i64
  %74 = shl nuw nsw i64 %73, 3
  %75 = add nuw nsw i64 %74, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, i8 0, i64 %75, i1 false), !tbaa !13
  br label %87

76:                                               ; preds = %23, %76
  %77 = phi i64 [ 0, %23 ], [ %82, %76 ]
  %78 = phi i64 [ %26, %23 ], [ %83, %76 ]
  %79 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !13
  %81 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %77
  store i64 %80, ptr %81, align 8, !tbaa !13
  %82 = add nuw nsw i64 %77, 1
  %83 = add nuw nsw i64 %78, 1
  %84 = icmp eq i64 %82, %28
  br i1 %84, label %63, label %76, !llvm.loop !21

85:                                               ; preds = %55
  %86 = or i64 %39, %31
  br label %87

87:                                               ; preds = %85, %65, %63
  %88 = phi i64 [ %24, %63 ], [ %67, %65 ], [ %86, %85 ]
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i8
  ret i8 %90
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @sub_significands(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #6 {
  br label %5

5:                                                ; preds = %4, %19
  %6 = phi i64 [ 0, %4 ], [ %24, %19 ]
  %7 = phi i32 [ %3, %4 ], [ %22, %19 ]
  %8 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %6
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 %6
  %11 = load i64, ptr %10, align 8, !tbaa !13
  %12 = sub i64 %9, %11
  %13 = icmp eq i32 %7, 0
  %14 = icmp ugt i64 %11, %9
  br i1 %13, label %19, label %15

15:                                               ; preds = %5
  %16 = add i64 %12, -1
  %17 = icmp eq i64 %12, 0
  %18 = or i1 %14, %17
  br label %19

19:                                               ; preds = %5, %15
  %20 = phi i1 [ %18, %15 ], [ %14, %5 ]
  %21 = phi i64 [ %16, %15 ], [ %12, %5 ]
  %22 = zext i1 %20 to i32
  %23 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %6
  store i64 %21, ptr %23, align 8, !tbaa !13
  %24 = add nuw nsw i64 %6, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %5, !llvm.loop !22

26:                                               ; preds = %19
  %27 = zext i1 %20 to i8
  ret i8 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @neg_significand(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %14, %3 ]
  %5 = phi i1 [ true, %2 ], [ %12, %3 ]
  %6 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %4
  %7 = load i64, ptr %6, align 8, !tbaa !13
  %8 = xor i64 %7, -1
  %9 = icmp eq i64 %7, 0
  %10 = sub i64 0, %7
  %11 = select i1 %5, i64 %10, i64 %8
  %12 = select i1 %5, i1 %9, i1 false
  %13 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %4
  store i64 %11, ptr %13, align 8, !tbaa !13
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %3, !llvm.loop !23

16:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @add_significands(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  br label %4

4:                                                ; preds = %3, %18
  %5 = phi i64 [ 0, %3 ], [ %23, %18 ]
  %6 = phi i8 [ 0, %3 ], [ %21, %18 ]
  %7 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %5
  %8 = load i64, ptr %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 %5
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = add i64 %10, %8
  %12 = icmp eq i8 %6, 0
  %13 = icmp ult i64 %11, %8
  br i1 %12, label %18, label %14

14:                                               ; preds = %4
  %15 = add i64 %11, 1
  %16 = icmp eq i64 %15, 0
  %17 = or i1 %13, %16
  br label %18

18:                                               ; preds = %4, %14
  %19 = phi i1 [ %17, %14 ], [ %13, %4 ]
  %20 = phi i64 [ %15, %14 ], [ %11, %4 ]
  %21 = zext i1 %19 to i8
  %22 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %5
  store i64 %20, ptr %22, align 8, !tbaa !13
  %23 = add nuw nsw i64 %5, 1
  %24 = icmp eq i64 %23, 3
  br i1 %24, label %25, label %4, !llvm.loop !24

25:                                               ; preds = %18
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @get_inf(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %3 = shl i32 %1, 3
  %4 = and i32 %3, 8
  %5 = or disjoint i32 %4, 2
  store i32 %5, ptr %0, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @normalize(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %44

5:                                                ; preds = %1, %12
  %6 = phi i32 [ %14, %12 ], [ 2, %1 ]
  %7 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = add nuw nsw i32 %7, 64
  %14 = add nsw i32 %6, -1
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %16, label %5, !llvm.loop !25

16:                                               ; preds = %12
  %17 = and i32 %2, 56
  store i32 %17, ptr %0, align 8
  br label %44

18:                                               ; preds = %5, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %5 ]
  %20 = lshr exact i64 -9223372036854775808, %19
  %21 = and i64 %20, %10
  %22 = icmp eq i64 %21, 0
  %23 = add nuw i64 %19, 1
  br i1 %22, label %18, label %24

24:                                               ; preds = %18
  %25 = trunc i64 %19 to i32
  %26 = add nuw nsw i32 %7, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = ashr i32 %2, 6
  %30 = sub nsw i32 %29, %26
  %31 = icmp sgt i32 %30, 33554431
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = lshr i32 %2, 3
  %34 = and i32 %33, 1
  tail call fastcc void @get_inf(ptr noundef nonnull %0, i32 noundef %34) #18
  br label %44

35:                                               ; preds = %28
  %36 = icmp slt i32 %30, -33554431
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = lshr i32 %2, 3
  %39 = and i32 %38, 1
  tail call fastcc void @get_zero(ptr noundef nonnull %0, i32 noundef %39) #18
  br label %44

40:                                               ; preds = %35
  %41 = shl nsw i32 %30, 6
  %42 = and i32 %2, 59
  %43 = or disjoint i32 %41, %42
  store i32 %43, ptr %0, align 8
  tail call fastcc void @lshift_significand(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %26) #18
  br label %44

44:                                               ; preds = %24, %37, %40, %32, %1, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lshift_significand(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = lshr i32 %2, 6
  %5 = and i32 %2, 63
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = sub nuw nsw i32 64, %5
  %9 = zext nneg i32 %8 to i64
  %10 = zext nneg i32 %5 to i64
  %11 = zext nneg i32 %4 to i64
  br label %39

12:                                               ; preds = %3
  %13 = icmp ult i32 %2, 192
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = xor i32 %4, 3
  %16 = zext nneg i32 %15 to i64
  br label %22

17:                                               ; preds = %22
  %18 = icmp ult i32 %15, 3
  br i1 %18, label %19, label %62

19:                                               ; preds = %12, %17
  %20 = phi i32 [ %15, %17 ], [ 0, %12 ]
  %21 = zext nneg i32 %20 to i64
  br label %33

22:                                               ; preds = %14, %22
  %23 = phi i64 [ 0, %14 ], [ %31, %22 ]
  %24 = sub nuw nsw i64 2, %23
  %25 = trunc i64 %24 to i32
  %26 = sub i32 %25, %4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %24
  store i64 %29, ptr %30, align 8, !tbaa !13
  %31 = add nuw nsw i64 %23, 1
  %32 = icmp eq i64 %31, %16
  br i1 %32, label %17, label %22, !llvm.loop !26

33:                                               ; preds = %19, %33
  %34 = phi i64 [ %21, %19 ], [ %37, %33 ]
  %35 = sub nuw nsw i64 2, %34
  %36 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %35
  store i64 0, ptr %36, align 8, !tbaa !13
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %62, label %33, !llvm.loop !27

39:                                               ; preds = %7, %53
  %40 = phi i64 [ 0, %7 ], [ %60, %53 ]
  %41 = add nuw nsw i64 %40, %11
  %42 = icmp ugt i64 %41, 2
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = sub nuw nsw i64 2, %41
  %45 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !13
  %47 = shl i64 %46, %10
  %48 = icmp eq i64 %41, 2
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = sub nuw nsw i64 1, %41
  %51 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !13
  br label %53

53:                                               ; preds = %39, %43, %49
  %54 = phi i64 [ %47, %49 ], [ %47, %43 ], [ 0, %39 ]
  %55 = phi i64 [ %52, %49 ], [ 0, %43 ], [ 0, %39 ]
  %56 = lshr i64 %55, %9
  %57 = or i64 %56, %54
  %58 = sub nuw nsw i64 2, %40
  %59 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %58
  store i64 %57, ptr %59, align 8, !tbaa !13
  %60 = add nuw nsw i64 %40, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %39, !llvm.loop !28

62:                                               ; preds = %53, %33, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @div_significands(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  %5 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %6 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 2
  br label %11

7:                                                ; preds = %20
  %8 = add nsw i32 %12, -1
  %9 = load i64, ptr %6, align 8, !tbaa !13
  %10 = and i64 %9, -9223372036854775808
  call fastcc void @lshift_significand_1(ptr noundef nonnull %4, ptr noundef nonnull %4) #18
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 191, %3 ], [ %8, %7 ]
  %13 = phi i64 [ 0, %3 ], [ %10, %7 ]
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call fastcc i32 @cmp_significands(ptr noundef nonnull %4, ptr noundef %2) #18
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %11
  %19 = call fastcc zeroext i8 @sub_significands(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %2, i32 noundef 0) #18, !range !6
  tail call fastcc void @set_significand_bit(ptr noundef %0, i32 noundef %12) #18
  br label %20

20:                                               ; preds = %15, %18
  %21 = icmp eq i32 %12, 0
  br i1 %21, label %22, label %7, !llvm.loop !29

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 0
  %24 = load i64, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = or i64 %26, %24
  %28 = load i64, ptr %6, align 8, !tbaa !13
  %29 = or i64 %28, %27
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret i8 %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lshift_significand_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 2, %2 ], [ %7, %3 ]
  %5 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = add nsw i64 %4, -1
  %8 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %9, i64 1)
  %11 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %4
  store i64 %10, ptr %11, align 8, !tbaa !13
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %13, label %3, !llvm.loop !30

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !13
  %16 = shl i64 %15, 1
  %17 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @cmp_significands(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  br label %6

3:                                                ; preds = %6
  %4 = add nsw i32 %8, -1
  %5 = icmp eq i32 %8, 0
  br i1 %5, label %19, label %6, !llvm.loop !31

6:                                                ; preds = %2, %3
  %7 = phi i32 [ undef, %2 ], [ %17, %3 ]
  %8 = phi i32 [ 2, %2 ], [ %4, %3 ]
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %9
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = icmp ugt i64 %11, %13
  %15 = icmp ult i64 %11, %13
  %16 = select i1 %15, i32 -1, i32 %7
  %17 = select i1 %14, i32 1, i32 %16
  %18 = icmp eq i64 %11, %13
  br i1 %18, label %3, label %19

19:                                               ; preds = %3, %6
  %20 = phi i32 [ %17, %6 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_significand_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = and i32 %1, 63
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw i64 1, %4
  %6 = lshr i32 %1, 6
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = or i64 %9, %5
  store i64 %10, ptr %8, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare i32 @decimal_do_compare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @decimal_do_fix_trunc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @clear_significand_below(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = lshr i32 %1, 6
  %4 = icmp ult i32 %1, 64
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i64 8
  %7 = add nsw i32 %3, -1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = add nuw nsw i64 %9, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %10, i1 false), !tbaa !13
  br label %11

11:                                               ; preds = %5, %2
  %12 = and i32 %1, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nsw i64 -1, %13
  %15 = zext nneg i32 %3 to i64
  %16 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = and i64 %17, %14
  store i64 %18, ptr %16, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_arithmetic2(ptr dead_on_unwind noalias writable sret(%struct.real_value) align 8 %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i8 @real_arithmetic(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @real_compare(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  switch i32 %0, label %70 [
    i32 97, label %4
    i32 98, label %8
    i32 99, label %12
    i32 100, label %16
    i32 101, label %20
    i32 102, label %24
    i32 103, label %28
    i32 104, label %37
    i32 105, label %46
    i32 106, label %50
    i32 107, label %54
    i32 108, label %58
    i32 109, label %62
    i32 110, label %66
  ]

4:                                                ; preds = %3
  %5 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 1) #18
  %6 = lshr i32 %5, 31
  %7 = trunc i32 %6 to i8
  br label %71

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 1) #18
  %10 = icmp slt i32 %9, 1
  %11 = zext i1 %10 to i8
  br label %71

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1) #18
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %71

16:                                               ; preds = %3
  %17 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1) #18
  %18 = icmp sgt i32 %17, -1
  %19 = zext i1 %18 to i8
  br label %71

20:                                               ; preds = %3
  %21 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1) #18
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %71

24:                                               ; preds = %3
  %25 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1) #18
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i8
  br label %71

28:                                               ; preds = %3
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %71, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %2, align 8
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 3
  %36 = zext i1 %35 to i8
  br label %71

37:                                               ; preds = %3
  %38 = load i32, ptr %1, align 8
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %71, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %2, align 8
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 3
  %45 = zext i1 %44 to i8
  br label %71

46:                                               ; preds = %3
  %47 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1) #18
  %48 = lshr i32 %47, 31
  %49 = trunc i32 %48 to i8
  br label %71

50:                                               ; preds = %3
  %51 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1) #18
  %52 = icmp slt i32 %51, 1
  %53 = zext i1 %52 to i8
  br label %71

54:                                               ; preds = %3
  %55 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 1) #18
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i8
  br label %71

58:                                               ; preds = %3
  %59 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 1) #18
  %60 = icmp sgt i32 %59, -1
  %61 = zext i1 %60 to i8
  br label %71

62:                                               ; preds = %3
  %63 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 0) #18
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i8
  br label %71

66:                                               ; preds = %3
  %67 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 0) #18
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i8
  br label %71

70:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #17
  br label %71

71:                                               ; preds = %37, %41, %28, %32, %70, %66, %62, %58, %54, %50, %46, %24, %20, %16, %12, %8, %4
  %72 = phi i8 [ 0, %70 ], [ %69, %66 ], [ %65, %62 ], [ %61, %58 ], [ %57, %54 ], [ %53, %50 ], [ %49, %46 ], [ %27, %24 ], [ %23, %20 ], [ %19, %16 ], [ %15, %12 ], [ %11, %8 ], [ %7, %4 ], [ 1, %28 ], [ %36, %32 ], [ 0, %37 ], [ %45, %41 ]
  ret i8 %72
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @real_exponent(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  switch i32 %3, label %7 [
    i32 0, label %8
    i32 2, label %4
    i32 3, label %4
    i32 1, label %5
  ]

4:                                                ; preds = %1, %1
  br label %8

5:                                                ; preds = %1
  %6 = ashr i32 %2, 6
  br label %8

7:                                                ; preds = %1
  unreachable

8:                                                ; preds = %1, %5, %4
  %9 = phi i32 [ %6, %5 ], [ 2147483647, %4 ], [ %3, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @real_ldexp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  %9 = ashr i32 %8, 6
  %10 = add nsw i32 %9, %2
  %11 = icmp sgt i32 %10, 33554431
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = lshr i32 %4, 3
  %14 = and i32 %13, 1
  tail call fastcc void @get_inf(ptr noundef nonnull %0, i32 noundef %14) #18
  br label %24

15:                                               ; preds = %7
  %16 = icmp slt i32 %10, -33554431
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = lshr i32 %4, 3
  %19 = and i32 %18, 1
  tail call fastcc void @get_zero(ptr noundef nonnull %0, i32 noundef %19) #18
  br label %24

20:                                               ; preds = %15
  %21 = shl nsw i32 %10, 6
  %22 = and i32 %4, 61
  %23 = or disjoint i32 %21, %22
  store i32 %23, ptr %0, align 8
  br label %24

24:                                               ; preds = %3, %12, %20, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isinf(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  %4 = icmp eq i32 %3, 2
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isnan(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  %4 = icmp eq i32 %3, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isfinite(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, -4
  %4 = icmp ult i32 %3, -2
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isneg(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isnegzero(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 11
  %4 = icmp eq i32 %3, 8
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local zeroext i8 @real_identical(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 3
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = xor i32 %5, %3
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  switch i32 %4, label %28 [
    i32 0, label %39
    i32 2, label %39
    i32 1, label %13
    i32 3, label %16
  ]

13:                                               ; preds = %12
  %14 = and i32 %9, -60
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %39

16:                                               ; preds = %12
  %17 = and i32 %9, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = or i32 %5, %3
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13, %19
  br label %32

24:                                               ; preds = %19
  %25 = and i32 %9, 32
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i8
  br label %39

28:                                               ; preds = %12
  unreachable

29:                                               ; preds = %32
  %30 = add nuw nsw i64 %33, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %39, label %32, !llvm.loop !32

32:                                               ; preds = %23, %29
  %33 = phi i64 [ %30, %29 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %33
  %37 = load i64, ptr %36, align 8, !tbaa !13
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %29, label %39

39:                                               ; preds = %29, %32, %16, %13, %12, %12, %8, %2, %24
  %40 = phi i8 [ %27, %24 ], [ 0, %2 ], [ 0, %8 ], [ 1, %12 ], [ 1, %12 ], [ 0, %13 ], [ 0, %16 ], [ 1, %29 ], [ 0, %32 ]
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @exact_real_inverse(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  %4 = tail call fastcc ptr @real_digit(i32 noundef 1) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 0
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  %18 = load i64, ptr %17, align 8, !tbaa !13
  %19 = icmp eq i64 %18, -9223372036854775808
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %1) #18, !range !6
  call void @real_convert(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %3) #18
  %22 = load i32, ptr %3, align 8
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 1
  %25 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 0
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %24, i1 %27, i1 false
  %29 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 1
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = select i1 %28, i1 %31, i1 false
  %33 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 2
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, -9223372036854775808
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !7
  br label %38

38:                                               ; preds = %8, %12, %20, %16, %2, %37
  %39 = phi i8 [ 1, %37 ], [ 0, %2 ], [ 0, %16 ], [ 0, %20 ], [ 0, %12 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret i8 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @real_digit(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2302, ptr noundef nonnull @.str.1) #17
  br label %16

4:                                                ; preds = %1
  %5 = icmp ult i32 %0, 10
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2303, ptr noundef nonnull @.str.1) #17
  br label %9

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %7
  %10 = zext nneg i32 %0 to i64
  %11 = getelementptr inbounds [10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 %10
  %12 = load i32, ptr %11, align 16
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @real_from_integer(ptr noundef nonnull %11, i32 noundef 0, i64 noundef %10, i64 noundef 0, i32 noundef 1) #18
  br label %16

16:                                               ; preds = %3, %15, %9, %7
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds [10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 %17
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2741, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %3, %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !35
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  tail call void @decimal_real_convert(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #17
  br label %19

19:                                               ; preds = %18, %14
  tail call fastcc void @round_for_format(ptr noundef %7, ptr noundef nonnull %0) #18
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call fastcc void @normalize(ptr noundef nonnull %0) #18
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_from_integer(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i64 %2, 0
  %7 = or i64 %3, %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @get_zero(ptr noundef %0, i32 noundef 0) #18
  br label %28

10:                                               ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %11 = icmp slt i64 %3, 0
  %12 = icmp eq i32 %4, 0
  %13 = and i1 %11, %12
  %14 = select i1 %13, i32 8201, i32 8193
  store i32 %14, ptr %0, align 8
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  br i1 %6, label %18, label %20

18:                                               ; preds = %17
  %19 = sub nsw i64 0, %3
  br label %23

20:                                               ; preds = %17
  %21 = xor i64 %3, -1
  %22 = sub i64 0, %2
  br label %23

23:                                               ; preds = %18, %20, %10
  %24 = phi i64 [ %19, %18 ], [ %21, %20 ], [ %3, %10 ]
  %25 = phi i64 [ 0, %18 ], [ %22, %20 ], [ %2, %10 ]
  %26 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  store i64 %24, ptr %26, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 1
  store i64 %25, ptr %27, align 8, !tbaa !13
  tail call fastcc void @normalize(ptr noundef nonnull %0) #18
  br label %28

28:                                               ; preds = %23, %9
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !12
  %32 = icmp eq i8 %31, 9
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call fastcc void @decimal_from_integer(ptr noundef %0) #18
  br label %37

34:                                               ; preds = %28
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %0) #18
  br label %37

37:                                               ; preds = %34, %36, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @real_can_shorten_arithmetic(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %5 = add i32 %1, -38
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %12 = add i32 %0, -38
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !35
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %137

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !37
  %24 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !37
  %26 = shl nsw i32 %25, 1
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %137

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !38
  %31 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !38
  %33 = shl nsw i32 %32, 1
  %34 = sub i32 %33, %25
  %35 = add i32 %34, -2
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %137

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !39
  %40 = add i32 %32, -2
  %41 = add i32 %25, %39
  %42 = sub i32 %40, %41
  %43 = icmp slt i32 %30, %42
  br i1 %43, label %44, label %137

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !39
  %47 = shl nsw i32 %39, 1
  %48 = add nsw i32 %47, 2
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %137

50:                                               ; preds = %44
  %51 = add i32 %25, 2
  %52 = sub i32 %51, %32
  %53 = add i32 %52, %39
  %54 = icmp sgt i32 %46, %53
  br i1 %54, label %55, label %137

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 9
  %57 = load i8, ptr %56, align 4, !tbaa !40
  %58 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 9
  %59 = load i8, ptr %58, align 4, !tbaa !40
  %60 = icmp eq i8 %57, %59
  br i1 %60, label %61, label %137

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 10
  %63 = load i8, ptr %62, align 1, !tbaa !41
  %64 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 10
  %65 = load i8, ptr %64, align 1, !tbaa !41
  %66 = icmp eq i8 %63, %65
  br i1 %66, label %67, label %137

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 11
  %69 = load i8, ptr %68, align 2, !tbaa !42
  %70 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 11
  %71 = load i8, ptr %70, align 2, !tbaa !42
  %72 = icmp ult i8 %69, %71
  br i1 %72, label %137, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 12
  %75 = load i8, ptr %74, align 1, !tbaa !43
  %76 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 12
  %77 = load i8, ptr %76, align 1, !tbaa !43
  %78 = icmp ult i8 %75, %77
  br i1 %78, label %137, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.real_format, ptr %15, i64 0, i32 14
  %81 = load i8, ptr %80, align 1, !tbaa !44
  %82 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 14
  %83 = load i8, ptr %82, align 1, !tbaa !44
  %84 = icmp ult i8 %81, %83
  br i1 %84, label %137, label %85

85:                                               ; preds = %79
  %86 = load i8, ptr %4, align 1, !tbaa !12
  switch i8 %86, label %111 [
    i8 8, label %87
    i8 9, label %87
    i8 11, label %87
    i8 17, label %87
  ]

87:                                               ; preds = %85, %85, %85, %85
  %88 = and i8 %86, -2
  %89 = icmp eq i8 %88, 8
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %92 = load i8, ptr %91, align 1, !tbaa !12
  %93 = zext i8 %92 to i64
  %94 = add nuw nsw i64 %93, 4294967258
  %95 = and i64 %94, 4294967295
  %96 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !33
  %98 = zext i8 %92 to i32
  br label %99

99:                                               ; preds = %87, %90
  %100 = phi ptr [ %97, %90 ], [ %8, %87 ]
  %101 = phi i32 [ %98, %90 ], [ %1, %87 ]
  %102 = getelementptr inbounds %struct.real_format, ptr %100, i64 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !45
  %104 = add i32 %101, -38
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !33
  %108 = getelementptr inbounds %struct.real_format, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !37
  %110 = icmp slt i32 %103, %109
  br i1 %110, label %137, label %111

111:                                              ; preds = %85, %99
  switch i8 %11, label %137 [
    i8 8, label %112
    i8 9, label %112
    i8 11, label %112
    i8 17, label %112
  ]

112:                                              ; preds = %111, %111, %111, %111
  %113 = and i8 %11, -2
  %114 = icmp eq i8 %113, 8
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %9
  %117 = load i8, ptr %116, align 1, !tbaa !12
  %118 = zext i8 %117 to i64
  %119 = add nuw nsw i64 %118, 4294967258
  %120 = and i64 %119, 4294967295
  %121 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !33
  %123 = zext i8 %117 to i32
  br label %124

124:                                              ; preds = %112, %115
  %125 = phi ptr [ %122, %115 ], [ %15, %112 ]
  %126 = phi i32 [ %123, %115 ], [ %0, %112 ]
  %127 = getelementptr inbounds %struct.real_format, ptr %125, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !45
  %129 = add i32 %126, -38
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !33
  %133 = getelementptr inbounds %struct.real_format, ptr %132, i64 0, i32 3
  %134 = load i32, ptr %133, align 4, !tbaa !37
  %135 = icmp sge i32 %128, %134
  %136 = zext i1 %135 to i8
  br label %137

137:                                              ; preds = %124, %111, %99, %79, %73, %67, %61, %55, %50, %44, %37, %28, %21, %2
  %138 = phi i8 [ 0, %99 ], [ 0, %79 ], [ 0, %73 ], [ 0, %67 ], [ 0, %61 ], [ 0, %55 ], [ 0, %50 ], [ 0, %44 ], [ 0, %37 ], [ 0, %28 ], [ 0, %21 ], [ 0, %2 ], [ %136, %124 ], [ 1, %111 ]
  ret i8 %138
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @real_to_integer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  switch i32 %3, label %28 [
    i32 0, label %29
    i32 2, label %4
    i32 3, label %4
    i32 1, label %8
  ]

4:                                                ; preds = %16, %1, %1
  %5 = and i32 %2, 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 9223372036854775807, i64 -9223372036854775808
  br label %29

8:                                                ; preds = %1
  %9 = and i32 %2, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @decimal_real_to_integer(ptr noundef nonnull %0) #17
  br label %29

13:                                               ; preds = %8
  %14 = ashr i32 %2, 6
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, 64
  br i1 %17, label %4, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  %20 = load i64, ptr %19, align 8, !tbaa !13
  %21 = sub nuw nsw i32 64, %14
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %20, %22
  %24 = and i32 %2, 8
  %25 = icmp eq i32 %24, 0
  %26 = sub i64 0, %23
  %27 = select i1 %25, i64 %23, i64 %26
  br label %29

28:                                               ; preds = %1
  unreachable

29:                                               ; preds = %1, %13, %18, %11, %4
  %30 = phi i64 [ %12, %11 ], [ %7, %4 ], [ %27, %18 ], [ 0, %13 ], [ 0, %1 ]
  ret i64 %30
}

; Function Attrs: optsize
declare i64 @decimal_real_to_integer(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_to_integer2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 3
  switch i32 %6, label %36 [
    i32 0, label %37
    i32 2, label %7
    i32 3, label %7
    i32 1, label %12
  ]

7:                                                ; preds = %19, %3, %3
  %8 = and i32 %5, 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i64 9223372036854775807, i64 -9223372036854775808
  %11 = sext i1 %9 to i64
  br label %37

12:                                               ; preds = %3
  %13 = and i32 %5, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @decimal_real_to_integer2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #17
  br label %40

16:                                               ; preds = %12
  %17 = ashr i32 %5, 6
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  %20 = icmp ugt i32 %17, 128
  br i1 %20, label %7, label %21

21:                                               ; preds = %19
  %22 = sub nuw nsw i32 128, %17
  call fastcc void @rshift_significand(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef %22) #18
  %23 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 2
  %24 = load i64, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = and i32 %5, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = sub nsw i64 0, %24
  br label %37

33:                                               ; preds = %29
  %34 = sub nsw i64 0, %26
  %35 = xor i64 %24, -1
  br label %37

36:                                               ; preds = %3
  unreachable

37:                                               ; preds = %7, %3, %16, %21, %33, %31
  %38 = phi i64 [ %32, %31 ], [ %35, %33 ], [ %24, %21 ], [ 0, %16 ], [ 0, %3 ], [ %10, %7 ]
  %39 = phi i64 [ 0, %31 ], [ %34, %33 ], [ %26, %21 ], [ 0, %16 ], [ 0, %3 ], [ %11, %7 ]
  store i64 %39, ptr %0, align 8, !tbaa !13
  store i64 %38, ptr %1, align 8, !tbaa !13
  br label %40

40:                                               ; preds = %37, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @decimal_real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @rshift_significand(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = lshr i32 %2, 6
  %5 = and i32 %2, 63
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = sub nuw nsw i32 64, %5
  %9 = zext nneg i32 %8 to i64
  %10 = zext nneg i32 %5 to i64
  %11 = zext nneg i32 %4 to i64
  br label %19

12:                                               ; preds = %3
  %13 = icmp ult i32 %2, 192
  br i1 %13, label %14, label %42

14:                                               ; preds = %12
  %15 = lshr exact i32 %2, 6
  %16 = zext nneg i32 %15 to i64
  %17 = xor i32 %4, 3
  %18 = zext nneg i32 %17 to i64
  br label %52

19:                                               ; preds = %7, %32
  %20 = phi i64 [ 0, %7 ], [ %38, %32 ]
  %21 = add nuw nsw i64 %20, %11
  %22 = icmp ugt i64 %21, 2
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %21
  %25 = load i64, ptr %24, align 8, !tbaa !13
  %26 = lshr i64 %25, %10
  %27 = icmp eq i64 %21, 2
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = add nuw nsw i64 %21, 1
  %30 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !13
  br label %32

32:                                               ; preds = %19, %23, %28
  %33 = phi i64 [ %26, %28 ], [ %26, %23 ], [ 0, %19 ]
  %34 = phi i64 [ %31, %28 ], [ 0, %23 ], [ 0, %19 ]
  %35 = shl i64 %34, %9
  %36 = or i64 %35, %33
  %37 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %20
  store i64 %36, ptr %37, align 8, !tbaa !13
  %38 = add nuw nsw i64 %20, 1
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %61, label %19, !llvm.loop !46

40:                                               ; preds = %52
  %41 = icmp ult i32 %17, 3
  br i1 %41, label %42, label %61

42:                                               ; preds = %12, %40
  %43 = phi i32 [ %17, %40 ], [ 0, %12 ]
  %44 = shl nuw nsw i32 %43, 3
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr i8, ptr %0, i64 %45
  %47 = getelementptr i8, ptr %46, i64 8
  %48 = sub nuw nsw i32 2, %43
  %49 = zext nneg i32 %48 to i64
  %50 = shl nuw nsw i64 %49, 3
  %51 = add nuw nsw i64 %50, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %47, i8 0, i64 %51, i1 false), !tbaa !13
  br label %61

52:                                               ; preds = %14, %52
  %53 = phi i64 [ 0, %14 ], [ %58, %52 ]
  %54 = phi i64 [ %16, %14 ], [ %59, %52 ]
  %55 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !13
  %57 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %53
  store i64 %56, ptr %57, align 8, !tbaa !13
  %58 = add nuw nsw i64 %53, 1
  %59 = add nuw nsw i64 %54, 1
  %60 = icmp eq i64 %58, %18
  br i1 %60, label %40, label %52, !llvm.loop !47

61:                                               ; preds = %32, %42, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_to_decimal_for_mode(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.real_value, align 8
  %8 = alloca %struct.real_value, align 8
  %9 = alloca %struct.real_value, align 8
  %10 = alloca %struct.real_value, align 8
  %11 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #19
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = add i32 %5, -38
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1517, ptr noundef nonnull @.str.1) #17
  br label %20

20:                                               ; preds = %19, %13, %6
  %21 = phi ptr [ %17, %13 ], [ null, %19 ], [ null, %6 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  %22 = load i32, ptr %7, align 8
  %23 = and i32 %22, 3
  switch i32 %23, label %42 [
    i32 0, label %24
    i32 1, label %43
    i32 2, label %29
    i32 3, label %33
  ]

24:                                               ; preds = %20
  %25 = and i32 %22, 8
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.3, ptr @.str.2
  %28 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %27) #18
  br label %304

29:                                               ; preds = %20
  %30 = and i32 %22, 8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.5, ptr @.str.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) %32, i64 5, i1 false) #18
  br label %304

33:                                               ; preds = %20
  %34 = load i32, ptr %1, align 8
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 43, i32 45
  %38 = and i32 %34, 16
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 81, i32 83
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %37, i32 noundef %40) #18
  br label %304

42:                                               ; preds = %20
  unreachable

43:                                               ; preds = %20
  %44 = and i32 %22, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void @decimal_real_to_decimal(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %2, i64 noundef %3, i32 noundef %4) #17
  br label %304

47:                                               ; preds = %43
  %48 = add i64 %3, -58
  %49 = icmp ult i64 %48, -57
  %50 = select i1 %49, i64 57, i64 %3
  %51 = ashr i32 %22, 6
  %52 = sitofp i32 %51 to double
  %53 = fmul double %52, 0x3FD34413509F79FF
  %54 = fptosi double %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47, %56
  %57 = phi i32 [ %59, %56 ], [ %54, %47 ]
  %58 = phi i64 [ %60, %56 ], [ 1, %47 ]
  %59 = sdiv i32 %57, 10
  %60 = add i64 %58, 1
  %61 = add i32 %57, 9
  %62 = icmp ult i32 %61, 19
  br i1 %62, label %63, label %56, !llvm.loop !48

63:                                               ; preds = %56, %47
  %64 = phi i64 [ 1, %47 ], [ %60, %56 ]
  %65 = add i64 %2, -4
  %66 = xor i64 %64, -1
  %67 = add i64 %65, %66
  %68 = icmp ugt i64 %67, %2
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1560, ptr noundef nonnull @.str.1) #17
  br label %70

70:                                               ; preds = %63, %69
  %71 = tail call i64 @llvm.umin.i64(i64 %50, i64 %67)
  %72 = tail call fastcc ptr @real_digit(i32 noundef 1) #18
  %73 = tail call fastcc ptr @ten_to_ptwo(i32 noundef 0) #18
  %74 = and i32 %22, -13
  store i32 %74, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %72, i64 32, i1 false), !tbaa.struct !7
  %75 = call fastcc i32 @do_compare(ptr noundef nonnull %7, ptr noundef nonnull %72, i32 noundef 0) #18
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %130

77:                                               ; preds = %70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !7
  %78 = load i32, ptr %9, align 8
  %79 = and i32 %78, 63
  %80 = or disjoint i32 %79, 12224
  store i32 %80, ptr %9, align 8
  %81 = call i32 @floor_log2(i64 noundef %67) #17
  br label %82

82:                                               ; preds = %92, %77
  %83 = phi i32 [ %81, %77 ], [ %94, %92 ]
  %84 = phi i32 [ 0, %77 ], [ %93, %92 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #19
  %85 = call fastcc ptr @ten_to_ptwo(i32 noundef %83) #18
  %86 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %85) #18, !range !6
  call fastcc void @do_fix_trunc(ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %87 = call fastcc i32 @cmp_significands(ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !7
  %90 = shl nuw i32 1, %83
  %91 = add nsw i32 %84, %90
  br label %92

92:                                               ; preds = %89, %82
  %93 = phi i32 [ %91, %89 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  %94 = add nsw i32 %83, -1
  %95 = icmp sgt i32 %83, 0
  br i1 %95, label %82, label %96, !llvm.loop !49

96:                                               ; preds = %92
  %97 = load i32, ptr %9, align 8
  %98 = and i32 %97, -64
  %99 = load i32, ptr %7, align 8
  %100 = add i32 %99, %98
  %101 = and i32 %100, -64
  %102 = add i32 %101, -12224
  %103 = and i32 %97, 63
  %104 = or disjoint i32 %102, %103
  store i32 %104, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !7
  %105 = load i32, ptr %7, align 8
  %106 = ashr i32 %105, 6
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %96
  %109 = sitofp i32 %106 to double
  %110 = fmul double %109, 0x3FD34413509F79FF
  %111 = fptosi double %110 to i32
  %112 = sext i32 %111 to i64
  %113 = call i32 @floor_log2(i64 noundef %112) #17
  %114 = add nsw i32 %113, 1
  br label %115

115:                                              ; preds = %126, %108
  %116 = phi i32 [ %114, %108 ], [ %128, %126 ]
  %117 = phi i32 [ %93, %108 ], [ %127, %126 ]
  %118 = call fastcc ptr @ten_to_ptwo(i32 noundef %116) #18
  %119 = call fastcc i32 @do_compare(ptr noundef nonnull %9, ptr noundef nonnull %118, i32 noundef 0) #18
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %118) #18, !range !6
  %123 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %118) #18
  %124 = shl nuw i32 1, %116
  %125 = add nsw i32 %117, %124
  br label %126

126:                                              ; preds = %121, %115
  %127 = phi i32 [ %125, %121 ], [ %117, %115 ]
  %128 = add nsw i32 %116, -1
  %129 = icmp sgt i32 %116, 0
  br i1 %129, label %115, label %130, !llvm.loop !50

130:                                              ; preds = %126, %70
  %131 = phi i32 [ 0, %70 ], [ %127, %126 ]
  %132 = icmp slt i32 %75, 0
  br i1 %132, label %133, label %178

133:                                              ; preds = %96, %130
  %134 = phi i32 [ %131, %130 ], [ %93, %96 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !7
  %135 = getelementptr inbounds %struct.real_value, ptr %10, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !13
  %137 = and i64 %136, 7
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %133, %144
  %140 = phi i32 [ %145, %144 ], [ %134, %133 ]
  %141 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %73) #18
  %142 = load i32, ptr %9, align 8
  %143 = icmp sgt i32 %142, 63
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !7
  %145 = add nsw i32 %140, -1
  %146 = load i64, ptr %135, align 8, !tbaa !13
  %147 = and i64 %146, 7
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %139, label %149

149:                                              ; preds = %144, %139, %133
  %150 = phi i32 [ %134, %133 ], [ %140, %139 ], [ %145, %144 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !7
  %151 = load i32, ptr %7, align 8
  %152 = ashr i32 %151, 6
  %153 = sub nsw i32 0, %152
  %154 = sitofp i32 %153 to double
  %155 = fmul double %154, 0x3FD34413509F79FF
  %156 = fptosi double %155 to i32
  %157 = sext i32 %156 to i64
  %158 = call i32 @floor_log2(i64 noundef %157) #17
  %159 = add nsw i32 %158, 1
  br label %160

160:                                              ; preds = %172, %149
  %161 = phi i32 [ %150, %149 ], [ %173, %172 ]
  %162 = phi i32 [ %159, %149 ], [ %174, %172 ]
  %163 = call fastcc ptr @ten_to_ptwo(i32 noundef %162) #18
  %164 = call fastcc ptr @ten_to_mptwo(i32 noundef %162) #18
  %165 = call fastcc i32 @do_compare(ptr noundef nonnull %10, ptr noundef nonnull %164, i32 noundef 0) #18
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %163) #18
  %169 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %163) #18
  %170 = shl nsw i32 -1, %162
  %171 = add i32 %170, %161
  br label %172

172:                                              ; preds = %167, %160
  %173 = phi i32 [ %171, %167 ], [ %161, %160 ]
  %174 = add nsw i32 %162, -1
  %175 = icmp sgt i32 %162, 0
  br i1 %175, label %160, label %176, !llvm.loop !51

176:                                              ; preds = %172
  %177 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %8, ptr noundef nonnull %72, ptr noundef nonnull %8) #18, !range !6
  br label %178

178:                                              ; preds = %176, %130
  %179 = phi i32 [ %173, %176 ], [ %131, %130 ]
  %180 = and i32 %22, 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !12
  br label %184

184:                                              ; preds = %182, %178
  %185 = phi ptr [ %183, %182 ], [ %0, %178 ]
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  %187 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %188 = trunc i64 %187 to i32
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = call fastcc i32 @cmp_significand_0(ptr noundef nonnull %7) #18, !range !52
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %217, label %193

193:                                              ; preds = %190
  %194 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %73) #18
  %195 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %196 = trunc i64 %195 to i32
  %197 = add nsw i32 %179, -1
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %213, label %199

199:                                              ; preds = %193, %184
  %200 = phi i32 [ %196, %193 ], [ %188, %184 ]
  %201 = phi i32 [ %197, %193 ], [ %179, %184 ]
  %202 = icmp eq i32 %200, 10
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  store i8 49, ptr %186, align 1, !tbaa !12
  %204 = add nsw i64 %71, -1
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds i8, ptr %185, i64 2
  store i8 48, ptr %207, align 1, !tbaa !12
  br label %208

208:                                              ; preds = %206, %203
  %209 = phi i64 [ 3, %206 ], [ 2, %203 ]
  %210 = add nsw i32 %201, 1
  br label %222

211:                                              ; preds = %199
  %212 = icmp slt i32 %200, 11
  br i1 %212, label %217, label %213

213:                                              ; preds = %211, %193
  %214 = phi i32 [ 1703, %193 ], [ 1716, %211 ]
  %215 = phi i32 [ 0, %193 ], [ %200, %211 ]
  %216 = phi i32 [ %197, %193 ], [ %201, %211 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %214, ptr noundef nonnull @.str.1) #17
  br label %217

217:                                              ; preds = %213, %190, %211
  %218 = phi i32 [ %200, %211 ], [ 0, %190 ], [ %215, %213 ]
  %219 = phi i32 [ %201, %211 ], [ %179, %190 ], [ %216, %213 ]
  %220 = trunc i32 %218 to i8
  %221 = add i8 %220, 48
  store i8 %221, ptr %186, align 1, !tbaa !12
  br label %222

222:                                              ; preds = %217, %208
  %223 = phi i64 [ %209, %208 ], [ 2, %217 ]
  %224 = phi i32 [ %210, %208 ], [ %219, %217 ]
  %225 = phi i64 [ %204, %208 ], [ %71, %217 ]
  %226 = getelementptr inbounds i8, ptr %185, i64 %223
  %227 = add i64 %225, -1
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %241, label %229

229:                                              ; preds = %222, %229
  %230 = phi i64 [ %239, %229 ], [ %227, %222 ]
  %231 = phi ptr [ %238, %229 ], [ %226, %222 ]
  %232 = phi i64 [ %237, %229 ], [ %223, %222 ]
  %233 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %73) #18
  %234 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %235 = trunc i64 %234 to i8
  %236 = add i8 %235, 48
  %237 = add nuw nsw i64 %232, 1
  store i8 %236, ptr %231, align 1, !tbaa !12
  %238 = getelementptr inbounds i8, ptr %185, i64 %237
  %239 = add i64 %230, -1
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %229, !llvm.loop !53

241:                                              ; preds = %229, %222
  %242 = phi i64 [ %223, %222 ], [ %237, %229 ]
  %243 = phi ptr [ %226, %222 ], [ %238, %229 ]
  %244 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %73) #18
  %245 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %246 = trunc i64 %245 to i32
  %247 = icmp eq ptr %21, null
  br i1 %247, label %256, label %248

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct.real_format, ptr %21, i64 0, i32 9
  %250 = load i8, ptr %249, align 4, !tbaa !40
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = call fastcc i32 @cmp_significand_0(ptr noundef nonnull %7) #18, !range !52
  %254 = add nsw i32 %253, %246
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %268, label %284

256:                                              ; preds = %248, %241
  %257 = icmp eq i32 %246, 5
  br i1 %257, label %258, label %266

258:                                              ; preds = %256
  %259 = call fastcc i32 @cmp_significand_0(ptr noundef nonnull %7) #18, !range !52
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = getelementptr inbounds i8, ptr %243, i64 -1
  %263 = load i8, ptr %262, align 1, !tbaa !12
  %264 = and i8 %263, 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %284, label %268

266:                                              ; preds = %256
  %267 = icmp sgt i32 %246, 5
  br i1 %267, label %268, label %284

268:                                              ; preds = %261, %258, %266, %252
  %269 = icmp ugt ptr %243, %185
  br i1 %269, label %270, label %279

270:                                              ; preds = %268, %275
  %271 = phi ptr [ %272, %275 ], [ %243, %268 ]
  %272 = getelementptr inbounds i8, ptr %271, i64 -1
  %273 = load i8, ptr %272, align 1, !tbaa !12
  %274 = icmp eq i8 %273, 57
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  store i8 48, ptr %272, align 1, !tbaa !12
  %276 = icmp ugt ptr %272, %185
  br i1 %276, label %270, label %279, !llvm.loop !54

277:                                              ; preds = %270
  %278 = add i8 %273, 1
  store i8 %278, ptr %272, align 1, !tbaa !12
  br label %279

279:                                              ; preds = %275, %268, %277
  %280 = phi ptr [ %272, %277 ], [ %243, %268 ], [ %272, %275 ]
  %281 = icmp eq ptr %280, %185
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  store i8 49, ptr %186, align 1, !tbaa !12
  %283 = add nsw i32 %224, 1
  br label %284

284:                                              ; preds = %261, %252, %279, %282, %266
  %285 = phi i32 [ %283, %282 ], [ %224, %279 ], [ %224, %266 ], [ %224, %252 ], [ %224, %261 ]
  %286 = load i8, ptr %186, align 1, !tbaa !12
  store i8 %286, ptr %185, align 1, !tbaa !12
  store i8 46, ptr %186, align 1, !tbaa !12
  %287 = icmp eq i32 %4, 0
  br i1 %287, label %301, label %288

288:                                              ; preds = %284
  %289 = call i64 @llvm.smin.i64(i64 %242, i64 3)
  br label %290

290:                                              ; preds = %288, %293
  %291 = phi i64 [ %294, %293 ], [ %242, %288 ]
  %292 = icmp sgt i64 %291, 3
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = add nsw i64 %291, -1
  %295 = getelementptr inbounds i8, ptr %185, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !12
  %297 = icmp eq i8 %296, 48
  br i1 %297, label %290, label %298, !llvm.loop !55

298:                                              ; preds = %290, %293
  %299 = phi i64 [ %289, %290 ], [ %291, %293 ]
  %300 = getelementptr inbounds i8, ptr %185, i64 %299
  br label %301

301:                                              ; preds = %298, %284
  %302 = phi ptr [ %243, %284 ], [ %300, %298 ]
  %303 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %302, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %285) #18
  br label %304

304:                                              ; preds = %301, %46, %33, %29, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare void @decimal_real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @ten_to_ptwo(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 26
  br i1 %4, label %7, label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 2254, %1 ], [ 2255, %3 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %6, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %5, %3
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [26 x %struct.real_value], ptr @ten_to_ptwo.tens, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = icmp slt i32 %0, 5
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = icmp sgt i32 %0, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %20, %17 ], [ 10, %15 ]
  %19 = phi i32 [ %21, %17 ], [ 0, %15 ]
  %20 = mul nsw i64 %18, %18
  %21 = add nuw nsw i32 %19, 1
  %22 = icmp eq i32 %21, %0
  br i1 %22, label %23, label %17, !llvm.loop !56

23:                                               ; preds = %17, %15
  %24 = phi i64 [ 10, %15 ], [ %20, %17 ]
  tail call void @real_from_integer(ptr noundef nonnull %9, i32 noundef 0, i64 noundef %24, i64 noundef 0, i32 noundef 1) #18
  br label %25

25:                                               ; preds = %23, %7, %27
  %26 = phi ptr [ %9, %27 ], [ %9, %7 ], [ %9, %23 ]
  ret ptr %26

27:                                               ; preds = %13
  %28 = add nsw i32 %0, -1
  %29 = tail call fastcc ptr @ten_to_ptwo(i32 noundef %28) #18
  %30 = tail call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %9, ptr noundef nonnull %29, ptr noundef nonnull %29) #18
  br label %25
}

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @ten_to_mptwo(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 26
  br i1 %4, label %7, label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 2286, %1 ], [ 2287, %3 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %6, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %5, %3
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [26 x %struct.real_value], ptr @ten_to_mptwo.tens, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @real_digit(i32 noundef 1) #18
  %15 = tail call fastcc ptr @ten_to_ptwo(i32 noundef %0) #18
  %16 = tail call fastcc zeroext i8 @do_divide(ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %15) #18, !range !6
  br label %17

17:                                               ; preds = %13, %7
  ret ptr %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i64 @rtd_divmod(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8
  %4 = ashr i32 %3, 6
  %5 = load i32, ptr %1, align 8
  %6 = ashr i32 %5, 6
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  br label %15

10:                                               ; preds = %26
  %11 = add nsw i32 %18, -1
  %12 = load i64, ptr %9, align 8, !tbaa !13
  %13 = and i64 %12, -9223372036854775808
  %14 = shl i64 %27, 1
  tail call fastcc void @lshift_significand_1(ptr noundef nonnull %0, ptr noundef nonnull %0) #18
  br label %15

15:                                               ; preds = %8, %10
  %16 = phi i64 [ %14, %10 ], [ 0, %8 ]
  %17 = phi i64 [ %13, %10 ], [ 0, %8 ]
  %18 = phi i32 [ %11, %10 ], [ %4, %8 ]
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @cmp_significands(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %15
  %24 = tail call fastcc zeroext i8 @sub_significands(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #18, !range !6
  %25 = or disjoint i64 %16, 1
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i64 [ %25, %23 ], [ %16, %20 ]
  %28 = icmp sgt i32 %18, %6
  br i1 %28, label %10, label %29, !llvm.loop !57

29:                                               ; preds = %26
  %30 = and i32 %5, -64
  %31 = load i32, ptr %0, align 8
  %32 = and i32 %31, 63
  %33 = or disjoint i32 %32, %30
  store i32 %33, ptr %0, align 8
  tail call fastcc void @normalize(ptr noundef nonnull %0) #18
  br label %34

34:                                               ; preds = %2, %29
  %35 = phi i64 [ %27, %29 ], [ 0, %2 ]
  ret i64 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @cmp_significand_0(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  br label %5

2:                                                ; preds = %5
  %3 = add nsw i32 %6, -1
  %4 = icmp eq i32 %6, 0
  br i1 %4, label %11, label %5, !llvm.loop !58

5:                                                ; preds = %1, %2
  %6 = phi i32 [ 2, %1 ], [ %3, %2 ]
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %2, label %11

11:                                               ; preds = %2, %5
  %12 = phi i32 [ 1, %5 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_to_decimal(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call void @real_to_decimal_for_mode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_to_hexadecimal(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [16 x i8], align 16
  %7 = load i32, ptr %1, align 8
  %8 = ashr i32 %7, 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %9 = and i32 %7, 3
  switch i32 %9, label %23 [
    i32 0, label %10
    i32 1, label %24
    i32 2, label %11
    i32 3, label %15
  ]

10:                                               ; preds = %5
  br label %24

11:                                               ; preds = %5
  %12 = and i32 %7, 8
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.5, ptr @.str.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) %14, i64 5, i1 false) #18
  br label %96

15:                                               ; preds = %5
  %16 = and i32 %7, 8
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 43, i32 45
  %19 = and i32 %7, 16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 81, i32 83
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %18, i32 noundef %21) #18
  br label %96

23:                                               ; preds = %5
  unreachable

24:                                               ; preds = %5, %10
  %25 = phi i32 [ %8, %5 ], [ 0, %10 ]
  %26 = and i32 %7, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 4271950, ptr %0, align 1
  br label %96

29:                                               ; preds = %24
  %30 = icmp eq i64 %3, 0
  %31 = select i1 %30, i64 48, i64 %3
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %25) #18
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %34 = load i32, ptr %1, align 8
  %35 = lshr i32 %34, 3
  %36 = and i32 %35, 1
  %37 = zext nneg i32 %36 to i64
  %38 = add i64 %2, -5
  %39 = add i64 %33, %37
  %40 = sub i64 %38, %39
  %41 = icmp ugt i64 %40, %2
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1861, ptr noundef nonnull @.str.1) #17
  %43 = load i32, ptr %1, align 8
  br label %44

44:                                               ; preds = %29, %42
  %45 = phi i32 [ %34, %29 ], [ %43, %42 ]
  %46 = tail call i64 @llvm.umin.i64(i64 %31, i64 %40)
  %47 = and i32 %45, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !12
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi ptr [ %50, %49 ], [ %0, %44 ]
  store <4 x i8> <i8 48, i8 120, i8 48, i8 46>, ptr %52, align 1, !tbaa !12
  br label %53

53:                                               ; preds = %51, %77
  %54 = phi i64 [ 2, %51 ], [ %78, %77 ]
  %55 = phi i64 [ %46, %51 ], [ %75, %77 ]
  %56 = phi i64 [ 4, %51 ], [ %74, %77 ]
  %57 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %54
  %58 = trunc i64 %56 to i32
  %59 = add i32 %58, 16
  br label %64

60:                                               ; preds = %64
  %61 = add nsw i64 %65, -4
  %62 = trunc i64 %74 to i32
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %77, label %64, !llvm.loop !59

64:                                               ; preds = %53, %60
  %65 = phi i64 [ 60, %53 ], [ %61, %60 ]
  %66 = phi i64 [ %55, %53 ], [ %75, %60 ]
  %67 = phi i64 [ %56, %53 ], [ %74, %60 ]
  %68 = getelementptr inbounds i8, ptr %52, i64 %67
  %69 = load i64, ptr %57, align 8, !tbaa !13
  %70 = lshr i64 %69, %65
  %71 = and i64 %70, 15
  %72 = getelementptr inbounds [17 x i8], ptr @.str.10, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !12
  %74 = add i64 %67, 1
  store i8 %73, ptr %68, align 1, !tbaa !12
  %75 = add i64 %66, -1
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %80, label %60

77:                                               ; preds = %60
  %78 = add nsw i64 %54, -1
  %79 = icmp eq i64 %54, 0
  br i1 %79, label %80, label %53, !llvm.loop !60

80:                                               ; preds = %77, %64
  %81 = icmp eq i32 %4, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %80
  %83 = tail call i64 @llvm.smin.i64(i64 %74, i64 5)
  br label %84

84:                                               ; preds = %82, %87
  %85 = phi i64 [ %88, %87 ], [ %74, %82 ]
  %86 = icmp sgt i64 %85, 5
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = add nsw i64 %85, -1
  %89 = getelementptr inbounds i8, ptr %52, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !12
  %91 = icmp eq i8 %90, 48
  br i1 %91, label %84, label %92, !llvm.loop !61

92:                                               ; preds = %87, %84, %80
  %93 = phi i64 [ %74, %80 ], [ %85, %87 ], [ %83, %84 ]
  %94 = getelementptr inbounds i8, ptr %52, i64 %93
  %95 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %25) #18
  br label %96

96:                                               ; preds = %92, %28, %15, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @real_from_string(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @get_zero(ptr noundef %0, i32 noundef 0) #18
  %3 = load i8, ptr %1, align 1, !tbaa !12
  switch i8 %3, label %8 [
    i8 45, label %4
    i8 43, label %6
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %1, i64 1
  br label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  br label %8

8:                                                ; preds = %2, %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %1, %2 ]
  %10 = phi i32 [ 1, %4 ], [ 0, %6 ], [ 0, %2 ]
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.11, i64 noundef 4) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call fastcc void @get_canonical_qnan(ptr noundef %0, i32 noundef %10) #18
  br label %337

14:                                               ; preds = %8
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call fastcc void @get_canonical_snan(ptr noundef %0, i32 noundef %10) #18
  br label %337

18:                                               ; preds = %14
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.13, i64 noundef 3) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call fastcc void @get_inf(ptr noundef %0, i32 noundef %10) #18
  br label %337

22:                                               ; preds = %18
  %23 = load i8, ptr %9, align 1, !tbaa !12
  %24 = icmp eq i8 %23, 48
  br i1 %24, label %25, label %190

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %9, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !12
  switch i8 %27, label %190 [
    i8 120, label %28
    i8 88, label %28
  ]

28:                                               ; preds = %25, %25
  %29 = getelementptr inbounds i8, ptr %9, i64 2
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %29, %28 ], [ %34, %30 ]
  %32 = load i8, ptr %31, align 1, !tbaa !12
  %33 = icmp eq i8 %32, 48
  %34 = getelementptr inbounds i8, ptr %31, i64 1
  br i1 %33, label %30, label %35, !llvm.loop !62

35:                                               ; preds = %30
  %36 = zext i8 %32 to i64
  %37 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !12
  %39 = icmp eq i8 %38, 99
  br i1 %39, label %75, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  br label %42

42:                                               ; preds = %40, %64
  %43 = phi i8 [ %38, %40 ], [ %71, %64 ]
  %44 = phi i32 [ 188, %40 ], [ %65, %64 ]
  %45 = phi i32 [ 0, %40 ], [ %66, %64 ]
  %46 = phi ptr [ %31, %40 ], [ %67, %64 ]
  %47 = icmp sgt i32 %44, -1
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = zext i8 %43 to i64
  %50 = and i32 %44, 63
  %51 = zext nneg i32 %50 to i64
  %52 = shl i64 %49, %51
  %53 = lshr i32 %44, 6
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !13
  %57 = or i64 %56, %52
  store i64 %57, ptr %55, align 8, !tbaa !13
  %58 = add nsw i32 %44, -4
  br label %64

59:                                               ; preds = %42
  %60 = icmp eq i8 %43, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = load i64, ptr %41, align 8, !tbaa !13
  %63 = or i64 %62, 1
  store i64 %63, ptr %41, align 8, !tbaa !13
  br label %64

64:                                               ; preds = %59, %61, %48
  %65 = phi i32 [ %58, %48 ], [ %44, %61 ], [ %44, %59 ]
  %66 = add nuw nsw i32 %45, 4
  %67 = getelementptr inbounds i8, ptr %46, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !12
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !12
  %72 = icmp eq i8 %71, 99
  br i1 %72, label %73, label %42

73:                                               ; preds = %64
  %74 = icmp eq i8 %68, 46
  br i1 %74, label %79, label %136

75:                                               ; preds = %35
  %76 = icmp eq i8 %32, 46
  br i1 %76, label %77, label %136

77:                                               ; preds = %75
  %78 = getelementptr inbounds i8, ptr %31, i64 1
  br label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds i8, ptr %46, i64 2
  %81 = icmp eq i32 %65, 188
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i8, ptr %80, align 1, !tbaa !12
  br label %96

84:                                               ; preds = %77, %79
  %85 = phi ptr [ %78, %77 ], [ %80, %79 ]
  %86 = phi i32 [ 0, %77 ], [ %66, %79 ]
  %87 = load i8, ptr %85, align 1, !tbaa !12
  %88 = icmp eq i8 %87, 48
  br i1 %88, label %89, label %96

89:                                               ; preds = %84, %89
  %90 = phi i32 [ %93, %89 ], [ %86, %84 ]
  %91 = phi ptr [ %92, %89 ], [ %85, %84 ]
  %92 = getelementptr inbounds i8, ptr %91, i64 1
  %93 = add nsw i32 %90, -4
  %94 = load i8, ptr %92, align 1, !tbaa !12
  %95 = icmp eq i8 %94, 48
  br i1 %95, label %89, label %96, !llvm.loop !63

96:                                               ; preds = %89, %82, %84
  %97 = phi i32 [ %65, %82 ], [ 188, %84 ], [ 188, %89 ]
  %98 = phi i8 [ %83, %82 ], [ %87, %84 ], [ %94, %89 ]
  %99 = phi ptr [ %80, %82 ], [ %85, %84 ], [ %92, %89 ]
  %100 = phi i32 [ %66, %82 ], [ %86, %84 ], [ %93, %89 ]
  %101 = zext i8 %98 to i64
  %102 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !12
  %104 = icmp eq i8 %103, 99
  br i1 %104, label %136, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  br label %107

107:                                              ; preds = %105, %128
  %108 = phi i8 [ %103, %105 ], [ %134, %128 ]
  %109 = phi i32 [ %97, %105 ], [ %129, %128 ]
  %110 = phi ptr [ %99, %105 ], [ %130, %128 ]
  %111 = icmp sgt i32 %109, -1
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = zext i8 %108 to i64
  %114 = and i32 %109, 63
  %115 = zext nneg i32 %114 to i64
  %116 = shl i64 %113, %115
  %117 = lshr i32 %109, 6
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !13
  %121 = or i64 %120, %116
  store i64 %121, ptr %119, align 8, !tbaa !13
  %122 = add nsw i32 %109, -4
  br label %128

123:                                              ; preds = %107
  %124 = icmp eq i8 %108, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %123
  %126 = load i64, ptr %106, align 8, !tbaa !13
  %127 = or i64 %126, 1
  store i64 %127, ptr %106, align 8, !tbaa !13
  br label %128

128:                                              ; preds = %123, %125, %112
  %129 = phi i32 [ %122, %112 ], [ %109, %125 ], [ %109, %123 ]
  %130 = getelementptr inbounds i8, ptr %110, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !12
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !12
  %135 = icmp eq i8 %134, 99
  br i1 %135, label %136, label %107

136:                                              ; preds = %128, %75, %96, %73
  %137 = phi i8 [ %68, %73 ], [ %98, %96 ], [ %32, %75 ], [ %131, %128 ]
  %138 = phi ptr [ %67, %73 ], [ %99, %96 ], [ %31, %75 ], [ %130, %128 ]
  %139 = phi i32 [ %66, %73 ], [ %100, %96 ], [ 0, %75 ], [ %100, %128 ]
  %140 = tail call fastcc i32 @cmp_significand_0(ptr noundef %0) #18, !range !52
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %334, label %142

142:                                              ; preds = %136
  switch i8 %137, label %183 [
    i8 112, label %143
    i8 80, label %143
  ]

143:                                              ; preds = %142, %142
  %144 = getelementptr inbounds i8, ptr %138, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !12
  %146 = icmp eq i8 %145, 45
  %147 = getelementptr inbounds i8, ptr %138, i64 2
  %148 = icmp eq i8 %145, 43
  %149 = or i1 %146, %148
  %150 = select i1 %149, ptr %147, ptr %144
  %151 = load i8, ptr %150, align 1, !tbaa !12
  %152 = sext i8 %151 to i32
  %153 = and i32 %152, 255
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !64
  %157 = and i16 %156, 4
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %177, label %169

159:                                              ; preds = %169
  %160 = getelementptr inbounds i8, ptr %172, i64 1
  %161 = load i8, ptr %160, align 1, !tbaa !12
  %162 = sext i8 %161 to i32
  %163 = and i32 %162, 255
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !64
  %167 = and i16 %166, 4
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %177, label %169, !llvm.loop !66

169:                                              ; preds = %143, %159
  %170 = phi i32 [ %162, %159 ], [ %152, %143 ]
  %171 = phi i32 [ %175, %159 ], [ 0, %143 ]
  %172 = phi ptr [ %160, %159 ], [ %150, %143 ]
  %173 = mul nsw i32 %171, 10
  %174 = add i32 %173, -48
  %175 = add i32 %174, %170
  %176 = icmp sgt i32 %175, 33554431
  br i1 %176, label %182, label %159

177:                                              ; preds = %159, %143
  %178 = phi i32 [ 0, %143 ], [ %175, %159 ]
  %179 = sub nsw i32 0, %178
  %180 = select i1 %146, i32 %179, i32 %178
  %181 = add nsw i32 %180, %139
  br label %183

182:                                              ; preds = %169
  br i1 %146, label %335, label %336

183:                                              ; preds = %142, %177
  %184 = phi i32 [ %139, %142 ], [ %181, %177 ]
  %185 = load i32, ptr %0, align 8
  %186 = and i32 %185, 60
  %187 = shl i32 %184, 6
  %188 = or disjoint i32 %186, %187
  %189 = or disjoint i32 %188, 1
  store i32 %189, ptr %0, align 8
  tail call fastcc void @normalize(ptr noundef nonnull %0) #18
  br label %329

190:                                              ; preds = %25, %22
  %191 = tail call fastcc ptr @ten_to_ptwo(i32 noundef 0) #18
  br label %192

192:                                              ; preds = %192, %190
  %193 = phi ptr [ %9, %190 ], [ %196, %192 ]
  %194 = load i8, ptr %193, align 1, !tbaa !12
  %195 = icmp eq i8 %194, 48
  %196 = getelementptr inbounds i8, ptr %193, i64 1
  br i1 %195, label %192, label %197, !llvm.loop !67

197:                                              ; preds = %192
  %198 = sext i8 %194 to i32
  %199 = and i32 %198, 255
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %200
  %202 = load i16, ptr %201, align 2, !tbaa !64
  %203 = and i16 %202, 4
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %224, label %205

205:                                              ; preds = %197, %215
  %206 = phi i32 [ %217, %215 ], [ %198, %197 ]
  %207 = phi ptr [ %208, %215 ], [ %193, %197 ]
  %208 = getelementptr inbounds i8, ptr %207, i64 1
  %209 = add nsw i32 %206, -48
  %210 = tail call fastcc zeroext i8 @do_multiply(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %191) #18
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %205
  %213 = tail call fastcc ptr @real_digit(i32 noundef %209) #18
  %214 = tail call fastcc zeroext i8 @do_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %213, i32 noundef 0) #18, !range !6
  br label %215

215:                                              ; preds = %212, %205
  %216 = load i8, ptr %208, align 1, !tbaa !12
  %217 = sext i8 %216 to i32
  %218 = and i32 %217, 255
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !64
  %222 = and i16 %221, 4
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %205, !llvm.loop !68

224:                                              ; preds = %215, %197
  %225 = phi i8 [ %194, %197 ], [ %216, %215 ]
  %226 = phi ptr [ %193, %197 ], [ %208, %215 ]
  %227 = icmp eq i8 %225, 46
  %228 = load i32, ptr %0, align 8
  br i1 %227, label %229, label %277

229:                                              ; preds = %224
  %230 = getelementptr inbounds i8, ptr %226, i64 1
  %231 = and i32 %228, 3
  %232 = icmp eq i32 %231, 0
  %233 = load i8, ptr %230, align 1, !tbaa !12
  %234 = icmp eq i8 %233, 48
  %235 = select i1 %232, i1 %234, i1 false
  br i1 %235, label %236, label %243

236:                                              ; preds = %229, %236
  %237 = phi i32 [ %240, %236 ], [ 0, %229 ]
  %238 = phi ptr [ %239, %236 ], [ %230, %229 ]
  %239 = getelementptr inbounds i8, ptr %238, i64 1
  %240 = add nsw i32 %237, -1
  %241 = load i8, ptr %239, align 1, !tbaa !12
  %242 = icmp eq i8 %241, 48
  br i1 %242, label %236, label %243, !llvm.loop !69

243:                                              ; preds = %236, %229
  %244 = phi i8 [ %233, %229 ], [ %241, %236 ]
  %245 = phi ptr [ %230, %229 ], [ %239, %236 ]
  %246 = phi i32 [ 0, %229 ], [ %240, %236 ]
  %247 = sext i8 %244 to i32
  %248 = and i32 %247, 255
  %249 = zext nneg i32 %248 to i64
  %250 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %249
  %251 = load i16, ptr %250, align 2, !tbaa !64
  %252 = and i16 %251, 4
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %277, label %254

254:                                              ; preds = %243, %265
  %255 = phi i32 [ %268, %265 ], [ %247, %243 ]
  %256 = phi i32 [ %266, %265 ], [ %246, %243 ]
  %257 = phi ptr [ %258, %265 ], [ %245, %243 ]
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  %259 = add nsw i32 %255, -48
  %260 = tail call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %191) #18
  %261 = icmp eq i32 %259, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %254
  %263 = tail call fastcc ptr @real_digit(i32 noundef %259) #18
  %264 = tail call fastcc zeroext i8 @do_add(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %263, i32 noundef 0) #18, !range !6
  br label %265

265:                                              ; preds = %262, %254
  %266 = add nsw i32 %256, -1
  %267 = load i8, ptr %258, align 1, !tbaa !12
  %268 = sext i8 %267 to i32
  %269 = and i32 %268, 255
  %270 = zext nneg i32 %269 to i64
  %271 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !64
  %273 = and i16 %272, 4
  %274 = icmp eq i16 %273, 0
  br i1 %274, label %275, label %254, !llvm.loop !70

275:                                              ; preds = %265
  %276 = load i32, ptr %0, align 8
  br label %277

277:                                              ; preds = %275, %243, %224
  %278 = phi i8 [ %225, %224 ], [ %244, %243 ], [ %267, %275 ]
  %279 = phi i32 [ %228, %224 ], [ %228, %243 ], [ %276, %275 ]
  %280 = phi ptr [ %226, %224 ], [ %245, %243 ], [ %258, %275 ]
  %281 = phi i32 [ 0, %224 ], [ %246, %243 ], [ %266, %275 ]
  %282 = and i32 %279, 3
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %334, label %284

284:                                              ; preds = %277
  switch i8 %278, label %325 [
    i8 101, label %285
    i8 69, label %285
  ]

285:                                              ; preds = %284, %284
  %286 = getelementptr inbounds i8, ptr %280, i64 1
  %287 = load i8, ptr %286, align 1, !tbaa !12
  %288 = icmp eq i8 %287, 45
  %289 = getelementptr inbounds i8, ptr %280, i64 2
  %290 = icmp eq i8 %287, 43
  %291 = or i1 %288, %290
  %292 = select i1 %291, ptr %289, ptr %286
  %293 = load i8, ptr %292, align 1, !tbaa !12
  %294 = sext i8 %293 to i32
  %295 = and i32 %294, 255
  %296 = zext nneg i32 %295 to i64
  %297 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %296
  %298 = load i16, ptr %297, align 2, !tbaa !64
  %299 = and i16 %298, 4
  %300 = icmp eq i16 %299, 0
  br i1 %300, label %319, label %311

301:                                              ; preds = %311
  %302 = getelementptr inbounds i8, ptr %314, i64 1
  %303 = load i8, ptr %302, align 1, !tbaa !12
  %304 = sext i8 %303 to i32
  %305 = and i32 %304, 255
  %306 = zext nneg i32 %305 to i64
  %307 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !64
  %309 = and i16 %308, 4
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %319, label %311, !llvm.loop !71

311:                                              ; preds = %285, %301
  %312 = phi i32 [ %304, %301 ], [ %294, %285 ]
  %313 = phi i32 [ %317, %301 ], [ 0, %285 ]
  %314 = phi ptr [ %302, %301 ], [ %292, %285 ]
  %315 = mul nsw i32 %313, 10
  %316 = add i32 %315, -48
  %317 = add i32 %316, %312
  %318 = icmp sgt i32 %317, 33554431
  br i1 %318, label %324, label %301

319:                                              ; preds = %301, %285
  %320 = phi i32 [ 0, %285 ], [ %317, %301 ]
  %321 = sub nsw i32 0, %320
  %322 = select i1 %288, i32 %321, i32 %320
  %323 = add nsw i32 %322, %281
  br label %325

324:                                              ; preds = %311
  br i1 %288, label %335, label %336

325:                                              ; preds = %319, %284
  %326 = phi i32 [ %281, %284 ], [ %323, %319 ]
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  tail call fastcc void @times_pten(ptr noundef nonnull %0, i32 noundef %326) #18
  br label %329

329:                                              ; preds = %325, %328, %183
  %330 = load i32, ptr %0, align 8
  %331 = shl nuw nsw i32 %10, 3
  %332 = and i32 %330, -9
  %333 = or disjoint i32 %332, %331
  store i32 %333, ptr %0, align 8
  br label %337

334:                                              ; preds = %277, %136
  tail call fastcc void @get_zero(ptr noundef %0, i32 noundef %10) #18
  br label %337

335:                                              ; preds = %324, %182
  tail call fastcc void @get_zero(ptr noundef %0, i32 noundef %10) #18
  br label %337

336:                                              ; preds = %324, %182
  tail call fastcc void @get_inf(ptr noundef %0, i32 noundef %10) #18
  br label %337

337:                                              ; preds = %336, %335, %334, %329, %21, %17, %13
  %338 = phi i32 [ 1, %336 ], [ -1, %335 ], [ 0, %334 ], [ 0, %329 ], [ 0, %21 ], [ 0, %17 ], [ 0, %13 ]
  ret i32 %338
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @get_canonical_snan(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %3 = shl i32 %1, 3
  %4 = and i32 %3, 8
  %5 = or disjoint i32 %4, 51
  store i32 %5, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @times_pten(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = sub nsw i32 0, %1
  %7 = tail call fastcc ptr @real_digit(i32 noundef 1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !7
  br label %10

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %5, %8
  %11 = phi i32 [ %6, %5 ], [ %1, %8 ]
  %12 = phi ptr [ %3, %5 ], [ %0, %8 ]
  br label %13

13:                                               ; preds = %10, %21
  %14 = phi i32 [ %22, %21 ], [ 0, %10 ]
  %15 = phi i32 [ %23, %21 ], [ %11, %10 ]
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = call fastcc ptr @ten_to_ptwo(i32 noundef %14) #18
  %20 = call fastcc zeroext i8 @do_multiply(ptr noundef %12, ptr noundef %12, ptr noundef nonnull %19) #18
  br label %21

21:                                               ; preds = %13, %18
  %22 = add nuw nsw i32 %14, 1
  %23 = lshr i32 %15, 1
  %24 = icmp ult i32 %15, 2
  br i1 %24, label %25, label %13, !llvm.loop !72

25:                                               ; preds = %21
  br i1 %4, label %28, label %26

26:                                               ; preds = %25
  %27 = call fastcc zeroext i8 @do_divide(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %3) #18, !range !6
  br label %28

28:                                               ; preds = %8, %26, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_from_string2(ptr dead_on_unwind noalias writable sret(%struct.real_value) align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @real_from_string(ptr noundef %0, ptr noundef %1) #18
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @real_convert(ptr noundef %0, i32 noundef %2, ptr noundef %0) #18
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_from_string3(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !12
  %7 = icmp eq i8 %6, 9
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @decimal_real_from_string(ptr noundef %0, ptr noundef %1) #17
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @real_from_string(ptr noundef %0, ptr noundef %1) #18
  br label %11

11:                                               ; preds = %9, %8
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @real_convert(ptr noundef %0, i32 noundef %2, ptr noundef %0) #18
  br label %14

14:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: optsize
declare void @decimal_real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decimal_from_integer(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #19
  call fastcc void @decimal_integer_string(ptr noundef nonnull %2, ptr noundef %0) #18
  call void @decimal_real_from_string(ptr noundef %0, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decimal_integer_string(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  %5 = load i32, ptr %3, align 8
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.14, i64 3, i1 false) #18
  br label %48

9:                                                ; preds = %2
  %10 = and i32 %5, -9
  store i32 %10, ptr %3, align 8
  %11 = ashr i32 %5, 6
  %12 = sitofp i32 %11 to double
  %13 = fmul double %12, 0x3FD34413509F79FF
  %14 = fptosi double %13 to i32
  %15 = add nsw i32 %14, 1
  %16 = icmp slt i32 %14, 252
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2214, ptr noundef nonnull @.str.1) #17
  br label %18

18:                                               ; preds = %9, %17
  %19 = tail call fastcc ptr @real_digit(i32 noundef 1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false), !tbaa.struct !7
  call fastcc void @times_pten(ptr noundef nonnull %4, i32 noundef %14) #18
  %20 = and i32 %5, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !12
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %0, %18 ]
  %26 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %27 = trunc i64 %26 to i32
  %28 = icmp ult i32 %27, 10
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2224, ptr noundef nonnull @.str.1) #17
  br label %30

30:                                               ; preds = %24, %29
  %31 = trunc i64 %26 to i8
  %32 = add i8 %31, 48
  store i8 %32, ptr %25, align 1, !tbaa !12
  %33 = getelementptr inbounds i8, ptr %25, i64 1
  %34 = icmp sgt i32 %14, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %42, %35 ], [ %33, %30 ]
  %37 = phi i32 [ %38, %35 ], [ %15, %30 ]
  %38 = add nsw i32 %37, -1
  call fastcc void @times_pten(ptr noundef nonnull %3, i32 noundef 1) #18
  %39 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %40 = trunc i64 %39 to i8
  %41 = add i8 %40, 48
  store i8 %41, ptr %36, align 1, !tbaa !12
  %42 = getelementptr inbounds i8, ptr %36, i64 1
  %43 = icmp ugt i32 %37, 2
  br i1 %43, label %35, label %44, !llvm.loop !73

44:                                               ; preds = %35, %30
  %45 = phi ptr [ %25, %30 ], [ %36, %35 ]
  %46 = phi ptr [ %33, %30 ], [ %42, %35 ]
  %47 = getelementptr inbounds i8, ptr %45, i64 2
  store i8 46, ptr %46, align 1, !tbaa !12
  store i8 0, ptr %47, align 1, !tbaa !12
  br label %48

48:                                               ; preds = %44, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @dconst_e_ptr() local_unnamed_addr #15 {
  %1 = load i32, ptr @dconst_e_ptr.value, align 8
  %2 = and i32 %1, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, ptr @dconst_e_ptr.value, align 8
  store i64 3, ptr getelementptr inbounds (%struct.real_value, ptr @dconst_e_ptr.value, i64 0, i32 1), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.real_value, ptr @dconst_e_ptr.value, i64 0, i32 1, i64 1), i8 0, i64 16, i1 false), !tbaa !13
  br label %5

5:                                                ; preds = %4, %0
  ret ptr @dconst_e_ptr.value
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @dconst_third_ptr() local_unnamed_addr #0 {
  %1 = load i32, ptr @dconst_third_ptr.value, align 8
  %2 = and i32 %1, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = tail call fastcc ptr @real_digit(i32 noundef 3) #18
  %6 = tail call zeroext i8 @real_arithmetic(ptr noundef nonnull @dconst_third_ptr.value, i32 noundef 75, ptr noundef nonnull @dconst1, ptr noundef nonnull %5) #18
  br label %7

7:                                                ; preds = %4, %0
  ret ptr @dconst_third_ptr.value
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @dconst_sqrt2_ptr() local_unnamed_addr #15 {
  %1 = load i32, ptr @dconst_sqrt2_ptr.value, align 8
  %2 = and i32 %1, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, ptr @dconst_sqrt2_ptr.value, align 8
  store i64 3, ptr getelementptr inbounds (%struct.real_value, ptr @dconst_sqrt2_ptr.value, i64 0, i32 1), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.real_value, ptr @dconst_sqrt2_ptr.value, i64 0, i32 1, i64 1), i8 0, i64 16, i1 false), !tbaa !13
  br label %5

5:                                                ; preds = %4, %0
  ret ptr @dconst_sqrt2_ptr.value
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @real_inf(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  tail call fastcc void @get_inf(ptr noundef %0, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @real_nan(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.real_value, align 8
  %6 = add i32 %3, -38
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2467, ptr noundef nonnull @.str.1) #17
  br label %12

12:                                               ; preds = %4, %11
  %13 = load i8, ptr %1, align 1, !tbaa !12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call fastcc void @get_canonical_qnan(ptr noundef %0, i32 noundef 0) #18
  br label %86

18:                                               ; preds = %15
  tail call fastcc void @get_canonical_snan(ptr noundef %0, i32 noundef 0) #18
  br label %86

19:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 3, ptr %0, align 8
  br label %20

20:                                               ; preds = %20, %19
  %21 = phi ptr [ %1, %19 ], [ %28, %20 ]
  %22 = load i8, ptr %21, align 1, !tbaa !12
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !64
  %26 = and i16 %25, 64
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %27, label %29, label %20, !llvm.loop !74

29:                                               ; preds = %20
  switch i8 %22, label %32 [
    i8 45, label %30
    i8 43, label %31
  ]

30:                                               ; preds = %29
  br label %32

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %29, %31, %30
  %33 = phi ptr [ %28, %30 ], [ %28, %31 ], [ %21, %29 ]
  %34 = load i8, ptr %33, align 1, !tbaa !12
  %35 = icmp eq i8 %34, 48
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !12
  switch i8 %38, label %42 [
    i8 120, label %39
    i8 88, label %39
  ]

39:                                               ; preds = %36, %36
  %40 = getelementptr inbounds i8, ptr %33, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !12
  br label %42

42:                                               ; preds = %36, %39, %32
  %43 = phi i8 [ %41, %39 ], [ %34, %32 ], [ %38, %36 ]
  %44 = phi ptr [ %40, %39 ], [ %33, %32 ], [ %37, %36 ]
  %45 = phi i32 [ 16, %39 ], [ 10, %32 ], [ 8, %36 ]
  %46 = zext i8 %43 to i64
  %47 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !12
  %49 = zext i8 %48 to i32
  %50 = icmp ugt i32 %45, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.real_value, ptr %5, i64 0, i32 1
  br label %53

53:                                               ; preds = %51, %61
  %54 = phi i8 [ %48, %51 ], [ %68, %61 ]
  %55 = phi ptr [ %44, %51 ], [ %64, %61 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  switch i32 %45, label %60 [
    i32 8, label %56
    i32 16, label %57
    i32 10, label %58
  ]

56:                                               ; preds = %53
  tail call fastcc void @lshift_significand(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef 3) #18
  br label %61

57:                                               ; preds = %53
  tail call fastcc void @lshift_significand(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef 4) #18
  br label %61

58:                                               ; preds = %53
  call fastcc void @lshift_significand_1(ptr noundef nonnull %5, ptr noundef nonnull %0) #18
  tail call fastcc void @lshift_significand(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef 3) #18
  %59 = call fastcc zeroext i8 @add_significands(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %5) #18, !range !6
  br label %61

60:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2521, ptr noundef nonnull @.str.1) #17
  br label %61

61:                                               ; preds = %60, %58, %57, %56
  call fastcc void @get_zero(ptr noundef nonnull %5, i32 noundef 0) #18
  %62 = zext i8 %54 to i64
  store i64 %62, ptr %52, align 8, !tbaa !13
  %63 = call fastcc zeroext i8 @add_significands(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %5) #18, !range !6
  %64 = getelementptr inbounds i8, ptr %55, i64 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  %65 = load i8, ptr %64, align 1, !tbaa !12
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !12
  %69 = zext i8 %68 to i32
  %70 = icmp ugt i32 %45, %69
  br i1 %70, label %53, label %71, !llvm.loop !75

71:                                               ; preds = %61, %42
  %72 = phi i8 [ %43, %42 ], [ %65, %61 ]
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.real_format, ptr %9, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !45
  %77 = sub nsw i32 192, %76
  tail call fastcc void @lshift_significand(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %77) #18
  %78 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  %79 = load i64, ptr %78, align 8, !tbaa !13
  %80 = and i64 %79, 9223372036854775807
  store i64 %80, ptr %78, align 8, !tbaa !13
  %81 = icmp eq i32 %2, 0
  %82 = load i32, ptr %0, align 8
  %83 = select i1 %81, i32 16, i32 0
  %84 = and i32 %82, -17
  %85 = or disjoint i32 %84, %83
  store i32 %85, ptr %0, align 8
  br label %86

86:                                               ; preds = %18, %17, %74, %71
  %87 = phi i8 [ 0, %71 ], [ 1, %74 ], [ 1, %17 ], [ 1, %18 ]
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_maxval(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2559, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %3, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !35
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @decimal_real_maxval(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #17
  br label %33

15:                                               ; preds = %10
  %16 = shl i32 %1, 3
  %17 = and i32 %16, 8
  %18 = or disjoint i32 %17, 1
  store i32 %18, ptr %0, align 8
  %19 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !39
  %21 = shl i32 %20, 6
  %22 = or disjoint i32 %18, %21
  store i32 %22, ptr %0, align 8
  %23 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !37
  %25 = sub nsw i32 192, %24
  %26 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 -1, i64 24, i1 false)
  tail call fastcc void @clear_significand_below(ptr noundef nonnull %0, i32 noundef %25) #18
  %27 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !45
  %29 = load i32, ptr %23, align 4, !tbaa !37
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = sub i32 191, %28
  tail call fastcc void @clear_significand_bit(ptr noundef nonnull %0, i32 noundef %32) #18
  br label %33

33:                                               ; preds = %15, %31, %14
  ret void
}

; Function Attrs: optsize
declare void @decimal_real_maxval(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @clear_significand_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = and i32 %1, 63
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw i64 1, %4
  %6 = xor i64 %5, -1
  %7 = lshr i32 %1, 6
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = and i64 %10, %6
  store i64 %11, ptr %9, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_2expN(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %4 = icmp sgt i32 %1, 33554430
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 2, ptr %0, align 8
  br label %12

6:                                                ; preds = %3
  %7 = icmp slt i32 %1, -33554432
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = shl nsw i32 %1, 6
  %10 = add i32 %9, 65
  store i32 %10, ptr %0, align 8
  %11 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  store i64 -9223372036854775808, ptr %11, align 8, !tbaa !13
  br label %12

12:                                               ; preds = %8, %6, %5
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !12
  %16 = icmp eq i8 %15, 9
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @decimal_real_convert(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %0) #17
  br label %18

18:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: optsize
declare void @decimal_real_convert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @round_for_format(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @decimal_round_for_format(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %124

12:                                               ; preds = %7
  tail call void @decimal_real_convert(ptr noundef nonnull %1, i32 noundef 39, ptr noundef nonnull %1) #17
  %13 = load i32, ptr %1, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ %4, %2 ]
  %16 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !37
  %18 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !38
  %20 = add nsw i32 %19, -1
  %21 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !39
  %23 = sub nsw i32 192, %17
  %24 = and i32 %15, 3
  switch i32 %24, label %41 [
    i32 0, label %29
    i32 2, label %124
    i32 3, label %40
    i32 1, label %42
  ]

25:                                               ; preds = %53, %51, %119
  %26 = phi i32 [ %15, %53 ], [ %15, %51 ], [ %120, %119 ]
  %27 = lshr i32 %26, 3
  %28 = and i32 %27, 1
  tail call fastcc void @get_zero(ptr noundef nonnull %1, i32 noundef %28) #18
  br label %29

29:                                               ; preds = %14, %25
  %30 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %31 = load i8, ptr %30, align 1, !tbaa !44
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %124

33:                                               ; preds = %29
  %34 = load i32, ptr %1, align 8
  %35 = and i32 %34, -9
  store i32 %35, ptr %1, align 8
  br label %124

36:                                               ; preds = %118, %42
  %37 = phi i32 [ %111, %118 ], [ %15, %42 ]
  %38 = lshr i32 %37, 3
  %39 = and i32 %38, 1
  tail call fastcc void @get_inf(ptr noundef nonnull %1, i32 noundef %39) #18
  br label %124

40:                                               ; preds = %14
  tail call fastcc void @clear_significand_below(ptr noundef nonnull %1, i32 noundef %23) #18
  br label %124

41:                                               ; preds = %14
  unreachable

42:                                               ; preds = %14
  %43 = ashr i32 %15, 6
  %44 = icmp sgt i32 %43, %22
  br i1 %44, label %36, label %45

45:                                               ; preds = %42
  %46 = icmp slt i32 %43, %19
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %49 = load i8, ptr %48, align 8, !tbaa !76
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = icmp slt i32 %43, %20
  br i1 %52, label %25, label %66

53:                                               ; preds = %47
  %54 = sub nsw i32 %20, %43
  %55 = icmp slt i32 %54, %17
  br i1 %55, label %56, label %25

56:                                               ; preds = %53
  %57 = add nsw i32 %54, 1
  %58 = tail call fastcc zeroext i8 @sticky_rshift_significand(ptr noundef nonnull %1, ptr noundef nonnull %1, i32 noundef %57) #18, !range !6
  %59 = zext nneg i8 %58 to i64
  %60 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !13
  %62 = or i64 %61, %59
  store i64 %62, ptr %60, align 8, !tbaa !13
  %63 = load i32, ptr %1, align 8
  %64 = shl i32 %57, 6
  %65 = add i32 %63, %64
  store i32 %65, ptr %1, align 8
  br label %66

66:                                               ; preds = %51, %56, %45
  %67 = phi i32 [ %15, %51 ], [ %65, %56 ], [ %15, %45 ]
  %68 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 9
  %69 = load i8, ptr %68, align 4, !tbaa !40
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %66
  %72 = sub i32 191, %17
  %73 = sdiv i32 %72, 64
  %74 = srem i32 %72, 64
  %75 = icmp sgt i32 %72, 63
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = zext nneg i32 %73 to i64
  br label %78

78:                                               ; preds = %76, %78
  %79 = phi i64 [ 0, %76 ], [ %84, %78 ]
  %80 = phi i64 [ 0, %76 ], [ %83, %78 ]
  %81 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %79
  %82 = load i64, ptr %81, align 8, !tbaa !13
  %83 = or i64 %82, %80
  %84 = add nuw nsw i64 %79, 1
  %85 = icmp eq i64 %84, %77
  br i1 %85, label %86, label %78, !llvm.loop !77

86:                                               ; preds = %78, %71
  %87 = phi i64 [ 0, %71 ], [ %83, %78 ]
  %88 = tail call fastcc zeroext i8 @test_significand_bit(ptr noundef nonnull %1, i32 noundef %72) #18, !range !6
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %119, label %90

90:                                               ; preds = %86
  %91 = tail call fastcc zeroext i8 @test_significand_bit(ptr noundef nonnull %1, i32 noundef %23) #18, !range !6
  %92 = sext i32 %73 to i64
  %93 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !13
  %95 = zext nneg i32 %74 to i64
  %96 = shl nsw i64 -1, %95
  %97 = xor i64 %96, -1
  %98 = and i64 %94, %97
  %99 = or i64 %98, %87
  %100 = icmp eq i64 %99, 0
  %101 = icmp eq i8 %91, 0
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %119, label %103

103:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @get_zero(ptr noundef nonnull %3, i32 noundef 0) #18
  call fastcc void @set_significand_bit(ptr noundef nonnull %3, i32 noundef %23) #18
  %104 = call fastcc zeroext i8 @add_significands(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %3) #18, !range !6
  %105 = icmp eq i8 %104, 0
  %106 = load i32, ptr %1, align 8
  br i1 %105, label %116, label %107

107:                                              ; preds = %103
  %108 = and i32 %106, -64
  %109 = add i32 %108, 64
  %110 = and i32 %106, 63
  %111 = or disjoint i32 %109, %110
  store i32 %111, ptr %1, align 8
  %112 = ashr exact i32 %109, 6
  %113 = icmp sgt i32 %112, %22
  br i1 %113, label %118, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 -9223372036854775808, ptr %115, align 8, !tbaa !13
  br label %116

116:                                              ; preds = %114, %103
  %117 = phi i32 [ %111, %114 ], [ %106, %103 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %119

118:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %36

119:                                              ; preds = %116, %66, %86, %90
  %120 = phi i32 [ %117, %116 ], [ %67, %66 ], [ %67, %86 ], [ %67, %90 ]
  %121 = ashr i32 %120, 6
  %122 = icmp slt i32 %121, %19
  br i1 %122, label %25, label %123

123:                                              ; preds = %119
  tail call fastcc void @clear_significand_below(ptr noundef nonnull %1, i32 noundef %23) #18
  br label %124

124:                                              ; preds = %36, %14, %29, %33, %123, %40, %11
  ret void
}

; Function Attrs: optsize
declare void @decimal_round_for_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @test_significand_bit(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = lshr i32 %1, 6
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = and i32 %1, 63
  %8 = zext nneg i32 %7 to i64
  %9 = lshr i64 %6, %8
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_value_truncate(ptr dead_on_unwind noalias writable sret(%struct.real_value) align 8 %0, i32 noundef %1, ptr noundef byval(%struct.real_value) align 8 %2) local_unnamed_addr #0 {
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @exact_real_truncate(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = add i32 %0, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2775, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %2, %9
  %11 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !38
  %13 = load i32, ptr %1, align 8
  %14 = ashr i32 %13, 6
  %15 = icmp slt i32 %14, %12
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  call void @real_convert(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %1) #18
  %17 = call zeroext i8 @real_identical(ptr noundef nonnull %3, ptr noundef nonnull %1) #18, !range !6
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi i8 [ %17, %16 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @real_to_target_fmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !7
  call fastcc void @round_for_format(ptr noundef %2, ptr noundef nonnull %4) #18
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr %5, ptr %0
  %8 = load ptr, ptr %2, align 8, !tbaa !78
  call void %8(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %4) #17
  %9 = load i64, ptr %7, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret i64 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @real_to_target(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2818, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %3, %9
  %11 = tail call i64 @real_to_target_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %7) #18
  ret i64 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_from_target_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.real_format, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  tail call void %5(ptr noundef %2, ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_from_target(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2842, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %3, %9
  %11 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  tail call void %12(ptr noundef %7, ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @significand_size(i32 noundef %0) local_unnamed_addr #11 {
  %2 = add i32 %0, -38
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.real_format, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = icmp eq i32 %9, 10
  %11 = getelementptr inbounds %struct.real_format, ptr %5, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !37
  br i1 %10, label %13, label %17

13:                                               ; preds = %7
  %14 = sitofp i32 %12 to double
  %15 = fmul double %14, 0x400A934F0A294EAE
  %16 = fptosi double %15 to i32
  br label %17

17:                                               ; preds = %7, %1, %13
  %18 = phi i32 [ %16, %13 ], [ 0, %1 ], [ %12, %7 ]
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @real_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  %4 = lshr i32 %2, 1
  %5 = and i32 %4, 4
  %6 = or disjoint i32 %5, %3
  switch i32 %3, label %19 [
    i32 0, label %32
    i32 2, label %32
    i32 1, label %7
    i32 3, label %13
  ]

7:                                                ; preds = %1
  %8 = ashr i32 %2, 3
  %9 = and i32 %8, -8
  %10 = or disjoint i32 %6, %9
  br label %11

11:                                               ; preds = %13, %7
  %12 = phi i32 [ %10, %7 ], [ %16, %13 ]
  br label %20

13:                                               ; preds = %1
  %14 = shl i32 %2, 27
  %15 = ashr i32 %14, 31
  %16 = xor i32 %6, %15
  %17 = and i32 %2, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %32

19:                                               ; preds = %1
  unreachable

20:                                               ; preds = %11, %20
  %21 = phi i64 [ %30, %20 ], [ 0, %11 ]
  %22 = phi i32 [ %29, %20 ], [ %12, %11 ]
  %23 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %21
  %24 = load i64, ptr %23, align 8, !tbaa !13
  %25 = lshr i64 %24, 32
  %26 = zext i32 %22 to i64
  %27 = xor i64 %25, %26
  %28 = xor i64 %27, %24
  %29 = trunc i64 %28 to i32
  %30 = add nuw nsw i64 %21, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %20, !llvm.loop !80

32:                                               ; preds = %20, %13, %1, %1
  %33 = phi i32 [ %6, %1 ], [ %6, %1 ], [ %16, %13 ], [ %29, %20 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @encode_ieee_single(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = shl i32 %4, 28
  %8 = and i32 %7, -2147483648
  %9 = zext i32 %8 to i64
  %10 = lshr i64 %6, 40
  %11 = and i64 %10, 8388607
  %12 = and i32 %4, 3
  switch i32 %12, label %59 [
    i32 0, label %60
    i32 2, label %13
    i32 3, label %21
    i32 1, label %50
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = or disjoint i64 %9, 2139095040
  br label %60

19:                                               ; preds = %13
  %20 = or disjoint i64 %9, 2147483647
  br label %60

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %23 = load i8, ptr %22, align 2, !tbaa !42
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = and i32 %4, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %30 = load i8, ptr %29, align 1, !tbaa !81
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i64 0, i64 4194303
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %32, %28 ], [ %11, %25 ]
  %35 = lshr i32 %4, 4
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %38 = load i8, ptr %37, align 2, !tbaa !82
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  %41 = and i64 %34, 4194303
  %42 = or i64 %34, 4194304
  %43 = select i1 %40, i64 %41, i64 %42
  %44 = icmp eq i64 %43, 0
  %45 = select i1 %44, i64 2097152, i64 %43
  %46 = or disjoint i64 %45, %9
  %47 = or i64 %46, 2139095040
  br label %60

48:                                               ; preds = %21
  %49 = or disjoint i64 %9, 2147483647
  br label %60

50:                                               ; preds = %3
  %51 = ashr i32 %4, 6
  %52 = add nsw i32 %51, 126
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 23
  %55 = icmp slt i64 %6, 0
  %56 = select i1 %55, i64 %54, i64 0
  %57 = or i64 %56, %9
  %58 = or disjoint i64 %57, %11
  br label %60

59:                                               ; preds = %3
  unreachable

60:                                               ; preds = %33, %48, %17, %19, %50, %3
  %61 = phi i64 [ %58, %50 ], [ %47, %33 ], [ %49, %48 ], [ %18, %17 ], [ %20, %19 ], [ %9, %3 ]
  store i64 %61, ptr %1, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @decode_ieee_single(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i64, ptr %2, align 8, !tbaa !13
  %5 = lshr i64 %4, 31
  %6 = trunc i64 %5 to i32
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %9 = shl i64 %4, 40
  %10 = and i64 %9, 9223370937343148032
  %11 = trunc i32 %8 to i8
  switch i8 %11, label %57 [
    i8 0, label %12
    i8 -1, label %31
  ]

12:                                               ; preds = %3
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %16 = load i8, ptr %15, align 8, !tbaa !76
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = shl i32 %6, 3
  %20 = and i32 %19, 8
  %21 = or disjoint i32 %20, -8063
  store i32 %21, ptr %1, align 8
  %22 = shl nuw i64 %10, 1
  %23 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %22, ptr %23, align 8, !tbaa !13
  tail call fastcc void @normalize(ptr noundef nonnull %1) #18
  br label %67

24:                                               ; preds = %14, %12
  %25 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %26 = load i8, ptr %25, align 1, !tbaa !44
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %24
  %29 = shl i32 %6, 3
  %30 = and i32 %29, 8
  store i32 %30, ptr %1, align 8
  br label %67

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %33 = load i8, ptr %32, align 2, !tbaa !42
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %37 = load i8, ptr %36, align 1, !tbaa !43
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35, %31
  %40 = icmp eq i64 %10, 0
  %41 = shl i32 %6, 3
  %42 = and i32 %41, 8
  br i1 %40, label %55, label %43

43:                                               ; preds = %39
  %44 = or disjoint i32 %42, 3
  store i32 %44, ptr %1, align 8
  %45 = lshr i64 %9, 62
  %46 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %47 = load i8, ptr %46, align 2, !tbaa !82
  %48 = zext i8 %47 to i64
  %49 = xor i64 %45, %48
  %50 = trunc i64 %49 to i32
  %51 = shl nuw nsw i32 %50, 4
  %52 = and i32 %51, 16
  %53 = or disjoint i32 %52, %44
  store i32 %53, ptr %1, align 8
  %54 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %10, ptr %54, align 8, !tbaa !13
  br label %67

55:                                               ; preds = %39
  %56 = or disjoint i32 %42, 2
  store i32 %56, ptr %1, align 8
  br label %67

57:                                               ; preds = %3, %35
  %58 = shl i32 %6, 3
  %59 = and i32 %58, 8
  %60 = shl nuw nsw i32 %8, 6
  %61 = and i32 %60, 16320
  %62 = add nsw i32 %61, -8064
  %63 = or disjoint i32 %59, %62
  %64 = or disjoint i32 %63, 1
  store i32 %64, ptr %1, align 8
  %65 = or i64 %9, -9223372036854775808
  %66 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %65, ptr %66, align 8, !tbaa !13
  br label %67

67:                                               ; preds = %57, %55, %43, %18, %28, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @encode_ieee_double(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %5 = load i64, ptr %4, align 8, !tbaa !13
  %6 = load i32, ptr %2, align 8
  %7 = shl i32 %6, 28
  %8 = and i32 %7, -2147483648
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %5, 11
  %11 = and i64 %10, 4294967295
  %12 = lshr i64 %5, 43
  %13 = and i64 %12, 1048575
  %14 = and i32 %6, 3
  switch i32 %14, label %65 [
    i32 0, label %66
    i32 2, label %15
    i32 3, label %23
    i32 1, label %56
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 1, !tbaa !43
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = or disjoint i64 %9, 2146435072
  br label %66

21:                                               ; preds = %15
  %22 = or disjoint i64 %9, 2147483647
  br label %66

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %25 = load i8, ptr %24, align 2, !tbaa !42
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = and i32 %6, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %32 = load i8, ptr %31, align 1, !tbaa !81
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i64 0, i64 4294967295
  %35 = select i1 %33, i64 0, i64 524287
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i64 [ %11, %27 ], [ %34, %30 ]
  %38 = phi i64 [ %13, %27 ], [ %35, %30 ]
  %39 = lshr i32 %6, 4
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %42 = load i8, ptr %41, align 2, !tbaa !82
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %40, %43
  %45 = and i64 %38, 524287
  %46 = or i64 %38, 524288
  %47 = select i1 %44, i64 %45, i64 %46
  %48 = icmp eq i64 %47, 0
  %49 = icmp eq i64 %37, 0
  %50 = select i1 %48, i1 %49, i1 false
  %51 = select i1 %50, i64 262144, i64 %47
  %52 = or disjoint i64 %51, %9
  %53 = or i64 %52, 2146435072
  br label %66

54:                                               ; preds = %23
  %55 = or disjoint i64 %9, 2147483647
  br label %66

56:                                               ; preds = %3
  %57 = ashr i32 %6, 6
  %58 = add nsw i32 %57, 1022
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 20
  %61 = icmp slt i64 %5, 0
  %62 = select i1 %61, i64 %60, i64 0
  %63 = or i64 %62, %9
  %64 = or disjoint i64 %63, %13
  br label %66

65:                                               ; preds = %3
  unreachable

66:                                               ; preds = %36, %54, %19, %21, %56, %3
  %67 = phi i64 [ %64, %56 ], [ %53, %36 ], [ %55, %54 ], [ %20, %19 ], [ %22, %21 ], [ %9, %3 ]
  %68 = phi i64 [ %11, %56 ], [ %37, %36 ], [ 4294967295, %54 ], [ 0, %19 ], [ 4294967295, %21 ], [ 0, %3 ]
  store i64 %68, ptr %1, align 8, !tbaa !13
  %69 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %67, ptr %69, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @decode_ieee_double(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i64, ptr %2, align 8, !tbaa !13
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = and i64 %4, 4294967295
  %8 = lshr i64 %6, 31
  %9 = trunc i64 %8 to i32
  %10 = trunc i64 %6 to i32
  %11 = lshr i32 %10, 20
  %12 = and i32 %11, 2047
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %13 = shl i64 %6, 11
  %14 = lshr i64 %7, 21
  %15 = and i64 %13, 2147481600
  %16 = or disjoint i64 %15, %14
  %17 = shl nuw nsw i64 %7, 11
  switch i32 %12, label %71 [
    i32 0, label %18
    i32 2047, label %41
  ]

18:                                               ; preds = %3
  %19 = icmp ne i64 %16, 0
  %20 = icmp ne i64 %7, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %24 = load i8, ptr %23, align 8, !tbaa !76
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = shl i32 %9, 3
  %28 = and i32 %27, 8
  %29 = or disjoint i32 %28, -65407
  store i32 %29, ptr %1, align 8
  %30 = shl nuw i64 %16, 33
  %31 = shl nuw nsw i64 %7, 12
  %32 = or i64 %30, %31
  %33 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %32, ptr %33, align 8, !tbaa !13
  tail call fastcc void @normalize(ptr noundef nonnull %1) #18
  br label %82

34:                                               ; preds = %18, %22
  %35 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %36 = load i8, ptr %35, align 1, !tbaa !44
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %82, label %38

38:                                               ; preds = %34
  %39 = shl i32 %9, 3
  %40 = and i32 %39, 8
  store i32 %40, ptr %1, align 8
  br label %82

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %43 = load i8, ptr %42, align 2, !tbaa !42
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %47 = load i8, ptr %46, align 1, !tbaa !43
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %45, %41
  %50 = icmp ne i64 %16, 0
  %51 = icmp ne i64 %7, 0
  %52 = select i1 %50, i1 true, i1 %51
  %53 = shl i32 %9, 3
  %54 = and i32 %53, 8
  br i1 %52, label %55, label %69

55:                                               ; preds = %49
  %56 = or disjoint i32 %54, 3
  store i32 %56, ptr %1, align 8
  %57 = lshr i64 %13, 30
  %58 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %59 = load i8, ptr %58, align 2, !tbaa !82
  %60 = zext i8 %59 to i64
  %61 = xor i64 %57, %60
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 4
  %64 = and i32 %63, 16
  %65 = or disjoint i32 %64, %56
  store i32 %65, ptr %1, align 8
  %66 = shl nuw nsw i64 %16, 32
  %67 = or i64 %66, %17
  %68 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %67, ptr %68, align 8, !tbaa !13
  br label %82

69:                                               ; preds = %49
  %70 = or disjoint i32 %54, 2
  store i32 %70, ptr %1, align 8
  br label %82

71:                                               ; preds = %3, %45
  %72 = shl i32 %9, 3
  %73 = and i32 %72, 8
  %74 = shl nuw nsw i32 %12, 6
  %75 = add nsw i32 %74, -65408
  %76 = or disjoint i32 %73, %75
  %77 = or disjoint i32 %76, 1
  store i32 %77, ptr %1, align 8
  %78 = shl nuw nsw i64 %16, 32
  %79 = or i64 %17, %78
  %80 = or disjoint i64 %79, -9223372036854775808
  %81 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %80, ptr %81, align 8, !tbaa !13
  br label %82

82:                                               ; preds = %71, %69, %55, %26, %38, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @encode_ieee_extended_motorola(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call fastcc void @encode_ieee_extended(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #18
  %5 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 2
  %6 = load i64, ptr %5, align 16, !tbaa !13
  %7 = shl i64 %6, 16
  store i64 %7, ptr %1, align 8, !tbaa !13
  %8 = getelementptr inbounds i64, ptr %1, i64 1
  %9 = load <2 x i64>, ptr %4, align 16, !tbaa !13
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %10, ptr %8, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @decode_ieee_extended_motorola(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = alloca [3 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load <2 x i64>, ptr %5, align 8, !tbaa !13
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %7, ptr %4, align 16, !tbaa !13
  %8 = load i64, ptr %2, align 8, !tbaa !13
  %9 = lshr i64 %8, 16
  %10 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 2
  store i64 %9, ptr %10, align 16, !tbaa !13
  call fastcc void @decode_ieee_extended(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @encode_ieee_extended(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %5 = load i64, ptr %4, align 8, !tbaa !13
  %6 = load i32, ptr %2, align 8
  %7 = shl i32 %6, 12
  %8 = and i32 %7, 32768
  %9 = zext nneg i32 %8 to i64
  %10 = and i32 %6, 3
  switch i32 %10, label %68 [
    i32 0, label %69
    i32 2, label %11
    i32 3, label %18
    i32 1, label %53
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %13 = load i8, ptr %12, align 1, !tbaa !43
  %14 = icmp eq i8 %13, 0
  %15 = or disjoint i64 %9, 32767
  %16 = select i1 %14, i64 4294967295, i64 2147483648
  %17 = select i1 %14, i64 4294967295, i64 0
  br label %69

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %20 = load i8, ptr %19, align 2, !tbaa !42
  %21 = icmp eq i8 %20, 0
  %22 = or disjoint i64 %9, 32767
  br i1 %21, label %69, label %23

23:                                               ; preds = %18
  %24 = and i32 %6, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %28 = load i8, ptr %27, align 1, !tbaa !81
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i64 0, i64 1073741823
  %31 = select i1 %29, i64 0, i64 4294967295
  br label %35

32:                                               ; preds = %23
  %33 = lshr i64 %5, 32
  %34 = and i64 %5, 4294967295
  br label %35

35:                                               ; preds = %26, %32
  %36 = phi i64 [ %33, %32 ], [ %30, %26 ]
  %37 = phi i64 [ %34, %32 ], [ %31, %26 ]
  %38 = lshr i32 %6, 4
  %39 = and i32 %38, 1
  %40 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %41 = load i8, ptr %40, align 2, !tbaa !82
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %39, %42
  %44 = and i64 %36, 3221225471
  %45 = or i64 %36, 1073741824
  %46 = select i1 %43, i64 %44, i64 %45
  %47 = and i64 %46, 2147483647
  %48 = icmp eq i64 %47, 0
  %49 = icmp eq i64 %37, 0
  %50 = select i1 %48, i1 %49, i1 false
  %51 = or i64 %46, 2147483648
  %52 = select i1 %50, i64 2684354560, i64 %51
  br label %69

53:                                               ; preds = %3
  %54 = icmp sgt i64 %5, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  %56 = ashr i32 %6, 6
  %57 = add nsw i32 %56, 16382
  %58 = icmp sgt i32 %56, -16383
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3481, ptr noundef nonnull @.str.1) #17
  %60 = load i64, ptr %4, align 8, !tbaa !13
  br label %61

61:                                               ; preds = %53, %59, %55
  %62 = phi i64 [ %5, %55 ], [ %60, %59 ], [ %5, %53 ]
  %63 = phi i32 [ %57, %55 ], [ %57, %59 ], [ 0, %53 ]
  %64 = sext i32 %63 to i64
  %65 = or i64 %64, %9
  %66 = lshr i64 %62, 32
  %67 = and i64 %62, 4294967295
  br label %69

68:                                               ; preds = %3
  unreachable

69:                                               ; preds = %18, %11, %35, %61, %3
  %70 = phi i64 [ %66, %61 ], [ %52, %35 ], [ 0, %3 ], [ %16, %11 ], [ 4294967295, %18 ]
  %71 = phi i64 [ %67, %61 ], [ %37, %35 ], [ 0, %3 ], [ %17, %11 ], [ 4294967295, %18 ]
  %72 = phi i64 [ %65, %61 ], [ %22, %35 ], [ %9, %3 ], [ %15, %11 ], [ %22, %18 ]
  store i64 %71, ptr %1, align 8, !tbaa !13
  %73 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %70, ptr %73, align 8, !tbaa !13
  %74 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %72, ptr %74, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @decode_ieee_extended(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load i64, ptr %2, align 8, !tbaa !13
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds i64, ptr %2, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !13
  %9 = and i64 %4, 4294967295
  %10 = lshr i64 %8, 15
  %11 = trunc i64 %10 to i32
  %12 = trunc i64 %8 to i32
  %13 = and i32 %12, 32767
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  switch i32 %13, label %72 [
    i32 0, label %14
    i32 32767, label %41
  ]

14:                                               ; preds = %3
  %15 = and i64 %6, 4294967295
  %16 = icmp ne i64 %15, 0
  %17 = icmp ne i64 %9, 0
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %21 = load i8, ptr %20, align 8, !tbaa !76
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = shl i32 %11, 3
  %25 = and i32 %24, 8
  %26 = or disjoint i32 %25, 1
  store i32 %26, ptr %1, align 8
  %27 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !38
  %29 = shl i32 %28, 6
  %30 = or disjoint i32 %26, %29
  store i32 %30, ptr %1, align 8
  %31 = shl i64 %6, 32
  %32 = or disjoint i64 %31, %9
  %33 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %32, ptr %33, align 8, !tbaa !13
  tail call fastcc void @normalize(ptr noundef nonnull %1) #18
  br label %82

34:                                               ; preds = %14, %19
  %35 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %36 = load i8, ptr %35, align 1, !tbaa !44
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %82, label %38

38:                                               ; preds = %34
  %39 = shl i32 %11, 3
  %40 = and i32 %39, 8
  store i32 %40, ptr %1, align 8
  br label %82

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %43 = load i8, ptr %42, align 2, !tbaa !42
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %47 = load i8, ptr %46, align 1, !tbaa !43
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %45, %41
  %50 = and i64 %6, 2147483647
  %51 = icmp ne i64 %50, 0
  %52 = icmp ne i64 %9, 0
  %53 = select i1 %51, i1 true, i1 %52
  %54 = shl i32 %11, 3
  %55 = and i32 %54, 8
  br i1 %53, label %56, label %70

56:                                               ; preds = %49
  %57 = or disjoint i32 %55, 3
  store i32 %57, ptr %1, align 8
  %58 = lshr i64 %6, 30
  %59 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %60 = load i8, ptr %59, align 2, !tbaa !82
  %61 = zext i8 %60 to i64
  %62 = xor i64 %58, %61
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 4
  %65 = and i32 %64, 16
  %66 = or disjoint i32 %65, %57
  store i32 %66, ptr %1, align 8
  %67 = shl nuw nsw i64 %50, 32
  %68 = or disjoint i64 %67, %9
  %69 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %68, ptr %69, align 8, !tbaa !13
  br label %82

70:                                               ; preds = %49
  %71 = or disjoint i32 %55, 2
  store i32 %71, ptr %1, align 8
  br label %82

72:                                               ; preds = %3, %45
  %73 = shl i32 %11, 3
  %74 = and i32 %73, 8
  %75 = shl nuw nsw i32 %13, 6
  %76 = add nsw i32 %75, -1048448
  %77 = or disjoint i32 %74, %76
  %78 = or disjoint i32 %77, 1
  store i32 %78, ptr %1, align 8
  %79 = shl i64 %6, 32
  %80 = or disjoint i64 %79, %9
  %81 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %80, ptr %81, align 8, !tbaa !13
  br label %82

82:                                               ; preds = %72, %70, %56, %23, %38, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @encode_ieee_extended_intel_96(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @encode_ieee_extended(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @decode_ieee_extended_intel_96(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #6 {
  tail call fastcc void @decode_ieee_extended(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @encode_ieee_extended_intel_128(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @encode_ieee_extended_intel_96(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %4 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 0, ptr %4, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @decode_ieee_extended_intel_128(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #6 {
  tail call void @decode_ieee_extended_intel_96(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @encode_ibm_extended(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %8 = load i8, ptr %7, align 2, !tbaa !82
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @mips_double_format, ptr @ieee_double_format
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  %11 = load i32, ptr %5, align 8
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  call fastcc void @normalize(ptr noundef nonnull %5) #18
  br label %15

15:                                               ; preds = %14, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !7
  call fastcc void @round_for_format(ptr noundef nonnull %10, ptr noundef nonnull %4) #18
  call void @encode_ieee_double(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %4) #18
  %16 = load i32, ptr %4, align 8
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 1) #18, !range !6
  call fastcc void @round_for_format(ptr noundef nonnull %10, ptr noundef nonnull %6) #18
  %21 = getelementptr inbounds i64, ptr %1, i64 2
  call void @encode_ieee_double(ptr noundef nonnull %10, ptr noundef nonnull %21, ptr noundef nonnull %6) #18
  br label %24

22:                                               ; preds = %15
  %23 = getelementptr inbounds i64, ptr %1, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %24

24:                                               ; preds = %22, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @decode_ibm_extended(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %7 = load i8, ptr %6, align 2, !tbaa !82
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @mips_double_format, ptr @ieee_double_format
  call void @decode_ieee_double(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef %2) #18
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 3
  switch i32 %11, label %12 [
    i32 0, label %15
    i32 2, label %15
    i32 3, label %15
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds i64, ptr %2, i64 2
  call void @decode_ieee_double(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %13) #18
  %14 = call fastcc zeroext i8 @do_add(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #18, !range !6
  br label %16

15:                                               ; preds = %3, %3, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !7
  br label %16

16:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @encode_ieee_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #6 {
  %4 = alloca %struct.real_value, align 8
  %5 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %7 = load i32, ptr %2, align 8
  %8 = shl i32 %7, 28
  %9 = and i32 %8, -2147483648
  %10 = sext i32 %9 to i64
  call fastcc void @rshift_significand(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef 79) #18
  %11 = and i32 %7, 3
  switch i32 %11, label %86 [
    i32 0, label %87
    i32 2, label %12
    i32 3, label %20
    i32 1, label %68
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = or disjoint i64 %10, 2147418112
  br label %87

18:                                               ; preds = %12
  %19 = or disjoint i64 %10, 2147483647
  br label %87

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %22 = load i8, ptr %21, align 2, !tbaa !42
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %20
  %25 = or disjoint i64 %10, 2147418112
  %26 = and i32 %7, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %30 = load i8, ptr %29, align 1, !tbaa !81
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = or disjoint i64 %10, 2147450879
  br label %45

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !13
  %37 = lshr i64 %36, 32
  %38 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 1
  %39 = load i64, ptr %38, align 8, !tbaa !13
  %40 = lshr i64 %39, 32
  %41 = and i64 %40, 65535
  %42 = or disjoint i64 %41, %25
  %43 = and i64 %36, 4294967295
  %44 = and i64 %39, 4294967295
  br label %45

45:                                               ; preds = %28, %32, %34
  %46 = phi i64 [ 4294967295, %32 ], [ 0, %28 ], [ %44, %34 ]
  %47 = phi i64 [ 4294967295, %32 ], [ 0, %28 ], [ %37, %34 ]
  %48 = phi i64 [ 4294967295, %32 ], [ 0, %28 ], [ %43, %34 ]
  %49 = phi i64 [ %33, %32 ], [ %25, %28 ], [ %42, %34 ]
  %50 = lshr i32 %7, 4
  %51 = and i32 %50, 1
  %52 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %53 = load i8, ptr %52, align 2, !tbaa !82
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %51, %54
  %56 = and i64 %49, -32769
  %57 = select i1 %55, i64 0, i64 32768
  %58 = or disjoint i64 %57, %56
  %59 = and i64 %58, 65535
  %60 = or i64 %46, %59
  %61 = or i64 %60, %47
  %62 = or i64 %61, %48
  %63 = icmp eq i64 %62, 0
  %64 = or i64 %58, 16384
  %65 = select i1 %63, i64 %64, i64 %58
  br label %87

66:                                               ; preds = %20
  %67 = or disjoint i64 %10, 2147483647
  br label %87

68:                                               ; preds = %3
  %69 = ashr i32 %7, 6
  %70 = add nsw i32 %69, 16382
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 16
  %73 = icmp slt i64 %6, 0
  %74 = select i1 %73, i64 %72, i64 0
  %75 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !13
  %77 = lshr i64 %76, 32
  %78 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 1
  %79 = load i64, ptr %78, align 8, !tbaa !13
  %80 = lshr i64 %79, 32
  %81 = and i64 %80, 65535
  %82 = or disjoint i64 %74, %81
  %83 = or i64 %82, %10
  %84 = and i64 %76, 4294967295
  %85 = and i64 %79, 4294967295
  br label %87

86:                                               ; preds = %3
  unreachable

87:                                               ; preds = %45, %66, %16, %18, %68, %3
  %88 = phi i64 [ %85, %68 ], [ 4294967295, %66 ], [ 0, %16 ], [ 4294967295, %18 ], [ 0, %3 ], [ %46, %45 ]
  %89 = phi i64 [ %77, %68 ], [ 4294967295, %66 ], [ 0, %16 ], [ 4294967295, %18 ], [ 0, %3 ], [ %47, %45 ]
  %90 = phi i64 [ %84, %68 ], [ 4294967295, %66 ], [ 0, %16 ], [ 4294967295, %18 ], [ 0, %3 ], [ %48, %45 ]
  %91 = phi i64 [ %83, %68 ], [ %67, %66 ], [ %17, %16 ], [ %19, %18 ], [ %10, %3 ], [ %65, %45 ]
  store i64 %90, ptr %1, align 8, !tbaa !13
  %92 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %89, ptr %92, align 8, !tbaa !13
  %93 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %88, ptr %93, align 8, !tbaa !13
  %94 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 %91, ptr %94, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @decode_ieee_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i64, ptr %2, align 8, !tbaa !13
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds i64, ptr %2, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !13
  %9 = getelementptr inbounds i64, ptr %2, i64 3
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = and i64 %4, 4294967295
  %12 = and i64 %6, 4294967295
  %13 = and i64 %8, 4294967295
  %14 = lshr i64 %10, 31
  %15 = trunc i64 %14 to i32
  %16 = trunc i64 %10 to i32
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 32767
  %19 = and i64 %10, 65535
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  switch i32 %18, label %80 [
    i32 0, label %20
    i32 32767, label %46
  ]

20:                                               ; preds = %3
  %21 = or i64 %12, %11
  %22 = or i64 %21, %13
  %23 = or i64 %22, %19
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %27 = load i8, ptr %26, align 8, !tbaa !76
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = shl i32 %15, 3
  %31 = and i32 %30, 8
  %32 = or disjoint i32 %31, -1043327
  store i32 %32, ptr %1, align 8
  %33 = shl i64 %6, 32
  %34 = or disjoint i64 %33, %11
  %35 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  store i64 %34, ptr %35, align 8, !tbaa !13
  %36 = shl nuw nsw i64 %19, 32
  %37 = or disjoint i64 %36, %13
  %38 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 1
  store i64 %37, ptr %38, align 8, !tbaa !13
  tail call fastcc void @normalize(ptr noundef nonnull %1) #18
  br label %96

39:                                               ; preds = %25, %20
  %40 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %41 = load i8, ptr %40, align 1, !tbaa !44
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %96, label %43

43:                                               ; preds = %39
  %44 = shl i32 %15, 3
  %45 = and i32 %44, 8
  store i32 %45, ptr %1, align 8
  br label %96

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %48 = load i8, ptr %47, align 2, !tbaa !42
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %52 = load i8, ptr %51, align 1, !tbaa !43
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %50, %46
  %55 = or i64 %12, %11
  %56 = or i64 %55, %13
  %57 = or i64 %56, %19
  %58 = icmp eq i64 %57, 0
  %59 = shl i32 %15, 3
  %60 = and i32 %59, 8
  br i1 %58, label %78, label %61

61:                                               ; preds = %54
  %62 = or disjoint i32 %60, 3
  store i32 %62, ptr %1, align 8
  %63 = lshr i64 %10, 15
  %64 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %65 = load i8, ptr %64, align 2, !tbaa !82
  %66 = zext i8 %65 to i64
  %67 = xor i64 %63, %66
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 4
  %70 = and i32 %69, 16
  %71 = or disjoint i32 %70, %62
  store i32 %71, ptr %1, align 8
  %72 = shl i64 %6, 32
  %73 = or disjoint i64 %72, %11
  %74 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  store i64 %73, ptr %74, align 8, !tbaa !13
  %75 = shl nuw nsw i64 %19, 32
  %76 = or disjoint i64 %75, %13
  %77 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 1
  store i64 %76, ptr %77, align 8, !tbaa !13
  tail call fastcc void @lshift_significand(ptr noundef nonnull %1, ptr noundef nonnull %1, i32 noundef 79) #18
  br label %96

78:                                               ; preds = %54
  %79 = or disjoint i32 %60, 2
  store i32 %79, ptr %1, align 8
  br label %96

80:                                               ; preds = %3, %50
  %81 = shl i32 %15, 3
  %82 = and i32 %81, 8
  %83 = shl nuw nsw i32 %18, 6
  %84 = add nsw i32 %83, -1048448
  %85 = or disjoint i32 %82, %84
  %86 = or disjoint i32 %85, 1
  store i32 %86, ptr %1, align 8
  %87 = shl i64 %6, 32
  %88 = or disjoint i64 %87, %11
  %89 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  store i64 %88, ptr %89, align 8, !tbaa !13
  %90 = shl nuw nsw i64 %19, 32
  %91 = or disjoint i64 %90, %13
  %92 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 1
  store i64 %91, ptr %92, align 8, !tbaa !13
  tail call fastcc void @lshift_significand(ptr noundef nonnull %1, ptr noundef nonnull %1, i32 noundef 79) #18
  %93 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  %94 = load i64, ptr %93, align 8, !tbaa !13
  %95 = or i64 %94, -9223372036854775808
  store i64 %95, ptr %93, align 8, !tbaa !13
  br label %96

96:                                               ; preds = %80, %78, %61, %29, %43, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @encode_vax_f(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i32, ptr %2, align 8
  %5 = shl i32 %4, 12
  %6 = and i32 %5, 32768
  %7 = zext nneg i32 %6 to i64
  %8 = and i32 %4, 3
  switch i32 %8, label %25 [
    i32 0, label %26
    i32 2, label %9
    i32 3, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3, %3
  %10 = or disjoint i64 %7, 4294934527
  br label %26

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = ashr i32 %4, 6
  %15 = add nsw i32 %14, 128
  %16 = sext i32 %15 to i64
  %17 = lshr i64 %13, 24
  %18 = and i64 %17, 4294901760
  %19 = shl nsw i64 %16, 7
  %20 = lshr i64 %13, 56
  %21 = and i64 %20, 127
  %22 = or i64 %19, %18
  %23 = or disjoint i64 %22, %21
  %24 = or i64 %23, %7
  br label %26

25:                                               ; preds = %3
  unreachable

26:                                               ; preds = %3, %11, %9
  %27 = phi i64 [ %24, %11 ], [ %10, %9 ], [ 0, %3 ]
  store i64 %27, ptr %1, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @decode_vax_f(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i64, ptr %2, align 8, !tbaa !13
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = lshr i32 %5, 12
  %11 = and i32 %10, 8
  %12 = shl nuw nsw i32 %7, 6
  %13 = add nsw i32 %12, -8192
  %14 = or disjoint i32 %11, %13
  %15 = or disjoint i32 %14, 1
  store i32 %15, ptr %1, align 8
  %16 = shl i64 %4, 16
  %17 = and i64 %16, 8323072
  %18 = lshr i64 %4, 16
  %19 = and i64 %18, 65535
  %20 = or disjoint i64 %17, %19
  %21 = shl nuw nsw i64 %20, 40
  %22 = or disjoint i64 %21, -9223372036854775808
  %23 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %22, ptr %23, align 8, !tbaa !13
  br label %24

24:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @encode_vax_d(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i32, ptr %2, align 8
  %5 = shl i32 %4, 12
  %6 = and i32 %5, 32768
  %7 = zext nneg i32 %6 to i64
  %8 = and i32 %4, 3
  switch i32 %8, label %31 [
    i32 0, label %32
    i32 2, label %9
    i32 3, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3, %3
  %10 = or disjoint i64 %7, 4294934527
  br label %32

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = lshr i64 %13, 8
  %15 = and i64 %14, 4294967295
  %16 = lshr i64 %13, 24
  %17 = and i64 %16, 4294901760
  %18 = lshr i64 %13, 56
  %19 = and i64 %18, 127
  %20 = shl nuw nsw i64 %15, 16
  %21 = lshr i64 %15, 16
  %22 = and i64 %20, 4294901760
  %23 = or disjoint i64 %22, %21
  %24 = shl i32 %4, 1
  %25 = and i32 %24, -128
  %26 = add i32 %25, 16384
  %27 = sext i32 %26 to i64
  %28 = or disjoint i64 %19, %27
  %29 = or i64 %28, %17
  %30 = or i64 %29, %7
  br label %32

31:                                               ; preds = %3
  unreachable

32:                                               ; preds = %3, %11, %9
  %33 = phi i64 [ %23, %11 ], [ 4294967295, %9 ], [ 0, %3 ]
  %34 = phi i64 [ %30, %11 ], [ %10, %9 ], [ 0, %3 ]
  store i64 %34, ptr %1, align 8, !tbaa !13
  %35 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %33, ptr %35, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @decode_vax_d(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i64, ptr %2, align 8, !tbaa !13
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %3
  %12 = lshr i32 %7, 12
  %13 = and i32 %12, 8
  %14 = shl nuw nsw i32 %9, 6
  %15 = add nsw i32 %14, -8192
  %16 = or disjoint i32 %13, %15
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr %1, align 8
  %18 = shl i64 %4, 16
  %19 = and i64 %18, 8323072
  %20 = lshr i64 %4, 16
  %21 = and i64 %20, 65535
  %22 = or disjoint i64 %19, %21
  %23 = shl i64 %6, 16
  %24 = and i64 %23, 4294901760
  %25 = lshr i64 %6, 16
  %26 = and i64 %25, 65535
  %27 = or disjoint i64 %24, %26
  %28 = shl nuw nsw i64 %22, 40
  %29 = shl nuw nsw i64 %27, 8
  %30 = or disjoint i64 %29, %28
  %31 = or disjoint i64 %30, -9223372036854775808
  %32 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %31, ptr %32, align 8, !tbaa !13
  br label %33

33:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @encode_vax_g(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i32, ptr %2, align 8
  %5 = shl i32 %4, 12
  %6 = and i32 %5, 32768
  %7 = zext nneg i32 %6 to i64
  %8 = and i32 %4, 3
  switch i32 %8, label %31 [
    i32 0, label %32
    i32 2, label %9
    i32 3, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3, %3
  %10 = or disjoint i64 %7, 4294934527
  br label %32

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = lshr i64 %13, 11
  %15 = and i64 %14, 4294967295
  %16 = lshr i64 %13, 27
  %17 = and i64 %16, 4294901760
  %18 = lshr i64 %13, 59
  %19 = and i64 %18, 15
  %20 = shl nuw nsw i64 %15, 16
  %21 = lshr i64 %15, 16
  %22 = and i64 %20, 4294901760
  %23 = or disjoint i64 %22, %21
  %24 = ashr i32 %4, 2
  %25 = and i32 %24, -16
  %26 = add nsw i32 %25, 16384
  %27 = sext i32 %26 to i64
  %28 = or disjoint i64 %19, %27
  %29 = or i64 %28, %17
  %30 = or i64 %29, %7
  br label %32

31:                                               ; preds = %3
  unreachable

32:                                               ; preds = %3, %11, %9
  %33 = phi i64 [ %23, %11 ], [ 4294967295, %9 ], [ 0, %3 ]
  %34 = phi i64 [ %30, %11 ], [ %10, %9 ], [ 0, %3 ]
  store i64 %34, ptr %1, align 8, !tbaa !13
  %35 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %33, ptr %35, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @decode_vax_g(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i64, ptr %2, align 8, !tbaa !13
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 2047
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %3
  %12 = lshr i32 %7, 12
  %13 = and i32 %12, 8
  %14 = shl nuw nsw i32 %9, 6
  %15 = add nsw i32 %14, -65536
  %16 = or disjoint i32 %13, %15
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr %1, align 8
  %18 = shl i64 %4, 16
  %19 = and i64 %18, 983040
  %20 = lshr i64 %4, 16
  %21 = and i64 %20, 65535
  %22 = or disjoint i64 %19, %21
  %23 = shl i64 %6, 16
  %24 = and i64 %23, 4294901760
  %25 = lshr i64 %6, 16
  %26 = and i64 %25, 65535
  %27 = or disjoint i64 %24, %26
  %28 = shl nuw nsw i64 %22, 43
  %29 = shl nuw nsw i64 %27, 11
  %30 = or disjoint i64 %29, %28
  %31 = or disjoint i64 %30, -9223372036854775808
  %32 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %31, ptr %32, align 8, !tbaa !13
  br label %33

33:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @encode_decimal_single(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @encode_decimal32(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @decode_decimal_single(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @decode_decimal32(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare void @encode_decimal32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @decode_decimal32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @encode_decimal_double(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @encode_decimal64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @decode_decimal_double(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @decode_decimal64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare void @encode_decimal64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @decode_decimal64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @encode_decimal_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @encode_decimal128(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @decode_decimal_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @decode_decimal128(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare void @encode_decimal128(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @decode_decimal128(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @encode_ieee_half(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = shl i32 %4, 12
  %8 = and i32 %7, 32768
  %9 = zext nneg i32 %8 to i64
  %10 = lshr i64 %6, 53
  %11 = and i64 %10, 1023
  %12 = and i32 %4, 3
  switch i32 %12, label %59 [
    i32 0, label %60
    i32 2, label %13
    i32 3, label %21
    i32 1, label %50
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = or disjoint i64 %9, 31744
  br label %60

19:                                               ; preds = %13
  %20 = or disjoint i64 %9, 32767
  br label %60

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %23 = load i8, ptr %22, align 2, !tbaa !42
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = and i32 %4, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %30 = load i8, ptr %29, align 1, !tbaa !81
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i64 0, i64 511
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %32, %28 ], [ %11, %25 ]
  %35 = lshr i32 %4, 4
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %38 = load i8, ptr %37, align 2, !tbaa !82
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  %41 = and i64 %34, 511
  %42 = or i64 %34, 512
  %43 = select i1 %40, i64 %41, i64 %42
  %44 = icmp eq i64 %43, 0
  %45 = select i1 %44, i64 256, i64 %43
  %46 = or disjoint i64 %45, %9
  %47 = or i64 %46, 31744
  br label %60

48:                                               ; preds = %21
  %49 = or disjoint i64 %9, 1023
  br label %60

50:                                               ; preds = %3
  %51 = ashr i32 %4, 6
  %52 = add nsw i32 %51, 14
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 10
  %55 = icmp slt i64 %6, 0
  %56 = select i1 %55, i64 %54, i64 0
  %57 = or i64 %56, %9
  %58 = or disjoint i64 %57, %11
  br label %60

59:                                               ; preds = %3
  unreachable

60:                                               ; preds = %33, %48, %17, %19, %50, %3
  %61 = phi i64 [ %58, %50 ], [ %47, %33 ], [ %49, %48 ], [ %18, %17 ], [ %20, %19 ], [ %9, %3 ]
  store i64 %61, ptr %1, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @decode_ieee_half(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i64, ptr %2, align 8, !tbaa !13
  %5 = lshr i64 %4, 15
  %6 = trunc i64 %5 to i32
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 10
  %9 = and i32 %8, 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %10 = shl i64 %4, 53
  %11 = and i64 %10, 9214364837600034816
  switch i32 %9, label %57 [
    i32 0, label %12
    i32 31, label %31
  ]

12:                                               ; preds = %3
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %16 = load i8, ptr %15, align 8, !tbaa !76
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = shl i32 %6, 3
  %20 = and i32 %19, 8
  %21 = or disjoint i32 %20, -895
  store i32 %21, ptr %1, align 8
  %22 = shl nuw i64 %11, 1
  %23 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %22, ptr %23, align 8, !tbaa !13
  tail call fastcc void @normalize(ptr noundef nonnull %1) #18
  br label %66

24:                                               ; preds = %14, %12
  %25 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %26 = load i8, ptr %25, align 1, !tbaa !44
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %66, label %28

28:                                               ; preds = %24
  %29 = shl i32 %6, 3
  %30 = and i32 %29, 8
  store i32 %30, ptr %1, align 8
  br label %66

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %33 = load i8, ptr %32, align 2, !tbaa !42
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %37 = load i8, ptr %36, align 1, !tbaa !43
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35, %31
  %40 = icmp eq i64 %11, 0
  %41 = shl i32 %6, 3
  %42 = and i32 %41, 8
  br i1 %40, label %55, label %43

43:                                               ; preds = %39
  %44 = or disjoint i32 %42, 3
  store i32 %44, ptr %1, align 8
  %45 = lshr i64 %10, 62
  %46 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %47 = load i8, ptr %46, align 2, !tbaa !82
  %48 = zext i8 %47 to i64
  %49 = xor i64 %45, %48
  %50 = trunc i64 %49 to i32
  %51 = shl nuw nsw i32 %50, 4
  %52 = and i32 %51, 16
  %53 = or disjoint i32 %52, %44
  store i32 %53, ptr %1, align 8
  %54 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %11, ptr %54, align 8, !tbaa !13
  br label %66

55:                                               ; preds = %39
  %56 = or disjoint i32 %42, 2
  store i32 %56, ptr %1, align 8
  br label %66

57:                                               ; preds = %3, %35
  %58 = shl i32 %6, 3
  %59 = and i32 %58, 8
  %60 = shl nuw nsw i32 %9, 6
  %61 = add nsw i32 %60, -896
  %62 = or disjoint i32 %59, %61
  %63 = or disjoint i32 %62, 1
  store i32 %63, ptr %1, align 8
  %64 = or i64 %10, -9223372036854775808
  %65 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %64, ptr %65, align 8, !tbaa !13
  br label %66

66:                                               ; preds = %57, %55, %43, %18, %28, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @encode_internal(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @decode_internal(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @real_sqrt(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  %7 = tail call zeroext i8 @real_isnegzero(ptr noundef %2) #18, !range !6
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  br label %46

10:                                               ; preds = %3
  %11 = tail call zeroext i8 @real_isneg(ptr noundef %2) #18, !range !6
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call fastcc void @get_canonical_qnan(ptr noundef %0, i32 noundef 0) #18
  br label %46

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @real_isfinite(ptr noundef %2) #18, !range !6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  br label %46

18:                                               ; preds = %14
  %19 = load i1, ptr @real_sqrt.init, align 1
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = tail call fastcc zeroext i8 @do_add(ptr noundef nonnull @real_sqrt.halfthree, ptr noundef nonnull @dconst1, ptr noundef nonnull @dconsthalf, i32 noundef 0) #18, !range !6
  store i1 true, ptr @real_sqrt.init, align 1
  br label %22

22:                                               ; preds = %20, %18
  %23 = tail call i32 @real_exponent(ptr noundef %2) #18, !range !83
  %24 = sdiv i32 %23, -2
  call void @real_ldexp(ptr noundef nonnull %6, ptr noundef nonnull @dconst1, i32 noundef %24) #18
  br label %25

25:                                               ; preds = %22, %36
  %26 = phi i32 [ 0, %22 ], [ %37, %36 ]
  %27 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6) #18
  %28 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %29 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull @dconsthalf) #18
  %30 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %4, ptr noundef nonnull @real_sqrt.halfthree, ptr noundef nonnull %5, i32 noundef 1) #18, !range !6
  %31 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #18
  %32 = icmp ugt i32 %26, 5
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = call zeroext i8 @real_identical(ptr noundef nonnull %6, ptr noundef nonnull %5) #18, !range !6
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !7
  %37 = add nuw nsw i32 %26, 1
  %38 = icmp eq i32 %37, 16
  br i1 %38, label %39, label %25, !llvm.loop !84

39:                                               ; preds = %33, %36
  %40 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6) #18
  %41 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %42 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %6, ptr noundef nonnull @dconst1, ptr noundef nonnull %4, i32 noundef 1) #18, !range !6
  %43 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %44 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %6, ptr noundef nonnull @dconsthalf, ptr noundef nonnull %4) #18
  %45 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18, !range !6
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #18
  br label %46

46:                                               ; preds = %39, %17, %13, %9
  %47 = phi i8 [ 0, %9 ], [ 0, %13 ], [ 1, %39 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @real_powi(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !7
  br label %41

8:                                                ; preds = %4
  %9 = tail call i64 @llvm.abs.i64(i64 %3, i1 true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !7
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i32 [ 0, %8 ], [ %32, %28 ]
  %12 = phi i8 [ 0, %8 ], [ %30, %28 ]
  %13 = phi i8 [ 0, %8 ], [ %29, %28 ]
  %14 = phi i64 [ -9223372036854775808, %8 ], [ %31, %28 ]
  %15 = icmp eq i8 %12, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #18
  %18 = or i8 %17, %13
  %19 = and i64 %14, %9
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %2) #18
  %23 = or i8 %22, %18
  br label %28

24:                                               ; preds = %10
  %25 = and i64 %14, %9
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %24, %16, %21
  %29 = phi i8 [ %23, %21 ], [ %18, %16 ], [ %13, %24 ]
  %30 = phi i8 [ 1, %21 ], [ 1, %16 ], [ %27, %24 ]
  %31 = lshr i64 %14, 1
  %32 = add nuw nsw i32 %11, 1
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %34, label %10, !llvm.loop !85

34:                                               ; preds = %28
  %35 = icmp sgt i64 %3, -1
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %5, ptr noundef nonnull @dconst1, ptr noundef nonnull %5) #18, !range !6
  %38 = or i8 %37, %29
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i8 [ %38, %36 ], [ %29, %34 ]
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #18
  br label %41

41:                                               ; preds = %39, %7
  %42 = phi i8 [ 0, %7 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_trunc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @do_fix_trunc(ptr noundef %0, ptr noundef %2) #18
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %0) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_floor(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call fastcc void @do_fix_trunc(ptr noundef nonnull %4, ptr noundef %2) #18
  %5 = call zeroext i8 @real_identical(ptr noundef nonnull %4, ptr noundef %2) #18, !range !6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @dconstm1, i32 noundef 0) #18, !range !6
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #18
  br label %17

16:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !7
  br label %17

17:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_ceil(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call fastcc void @do_fix_trunc(ptr noundef nonnull %4, ptr noundef %2) #18
  %5 = call zeroext i8 @real_identical(ptr noundef nonnull %4, ptr noundef %2) #18, !range !6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @dconst1, i32 noundef 0) #18, !range !6
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #18
  br label %17

16:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !7
  br label %17

17:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_round(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 8
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 1
  %7 = tail call fastcc zeroext i8 @do_add(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @dconsthalf, i32 noundef %6) #18, !range !6
  tail call fastcc void @do_fix_trunc(ptr noundef %0, ptr noundef %0) #18
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %0) #18
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @real_copysign(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 8
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, -9
  %7 = or disjoint i32 %6, %4
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @real_isinteger(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @real_trunc(ptr noundef nonnull %3, i32 noundef %1, ptr noundef %0) #18
  %4 = call zeroext i8 @real_identical(ptr noundef %0, ptr noundef nonnull %3) #18, !range !6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_max_float(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 1 dereferenceable(5) @.str.15, i64 5, i1 false) #18
  %4 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = getelementptr i8, ptr %1, i64 4
  %7 = icmp sgt i32 %5, 3
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = add nsw i32 %5, -4
  %10 = lshr i32 %9, 2
  %11 = zext nneg i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, i8 102, i64 %12, i1 false), !tbaa !12
  %13 = and i32 %9, -4
  %14 = getelementptr i8, ptr %1, i64 %11
  %15 = getelementptr i8, ptr %14, i64 5
  %16 = add nuw nsw i32 %13, 4
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ 0, %3 ], [ %16, %8 ]
  %19 = phi ptr [ %6, %3 ], [ %15, %8 ]
  %20 = icmp slt i32 %18, %5
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = sub nsw i32 %5, %18
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x i8], ptr @.str.16, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !12
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %25, ptr %19, align 1, !tbaa !12
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi ptr [ %26, %21 ], [ %19, %17 ]
  %29 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !39
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %30) #18
  %32 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !45
  %34 = load i32, ptr %4, align 4, !tbaa !37
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = srem i32 %33, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i8], ptr @.str.18, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !12
  %41 = sdiv i32 %33, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 4
  store i8 %40, ptr %44, align 1, !tbaa !12
  br label %45

45:                                               ; preds = %36, %27
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %47 = icmp ult i64 %46, %2
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5174, ptr noundef nonnull @.str.1) #17
  br label %49

49:                                               ; preds = %45, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i8 0, i8 2}
!7 = !{i64 0, i64 4, !8, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 8, i64 24, !12}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !10, i64 0}
!35 = !{!36, !9, i64 16}
!36 = !{!"real_format", !34, i64 0, !34, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !10, i64 44, !10, i64 45, !10, i64 46, !10, i64 47, !10, i64 48, !10, i64 49, !10, i64 50, !10, i64 51}
!37 = !{!36, !9, i64 20}
!38 = !{!36, !9, i64 28}
!39 = !{!36, !9, i64 32}
!40 = !{!36, !10, i64 44}
!41 = !{!36, !10, i64 45}
!42 = !{!36, !10, i64 46}
!43 = !{!36, !10, i64 47}
!44 = !{!36, !10, i64 49}
!45 = !{!36, !9, i64 24}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = !{i32 0, i32 2}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !10, i64 0}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = !{!36, !10, i64 48}
!77 = distinct !{!77, !16}
!78 = !{!36, !34, i64 0}
!79 = !{!36, !34, i64 8}
!80 = distinct !{!80, !16}
!81 = !{!36, !10, i64 51}
!82 = !{!36, !10, i64 50}
!83 = !{i32 -33554432, i32 -2147483648}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
