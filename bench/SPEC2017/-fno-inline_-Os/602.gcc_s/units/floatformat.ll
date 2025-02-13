; ModuleID = 'floatformat.c'
source_filename = "floatformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.floatformat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@floatformat_ieee_single_big = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 32, i32 0, i32 1, i32 8, i32 127, i32 255, i32 9, i32 23, i32 1, ptr @.str, ptr @floatformat_always_valid, ptr null }, align 8
@.str = private unnamed_addr constant [28 x i8] c"floatformat_ieee_single_big\00", align 1
@floatformat_ieee_single_little = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 32, i32 0, i32 1, i32 8, i32 127, i32 255, i32 9, i32 23, i32 1, ptr @.str.1, ptr @floatformat_always_valid, ptr null }, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"floatformat_ieee_single_little\00", align 1
@floatformat_ieee_double_big = dso_local constant %struct.floatformat { i32 1, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.2, ptr @floatformat_always_valid, ptr null }, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"floatformat_ieee_double_big\00", align 1
@floatformat_ieee_double_little = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.3, ptr @floatformat_always_valid, ptr null }, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"floatformat_ieee_double_little\00", align 1
@floatformat_ieee_double_littlebyte_bigword = dso_local local_unnamed_addr constant %struct.floatformat { i32 2, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.4, ptr @floatformat_always_valid, ptr null }, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"floatformat_ieee_double_littlebyte_bigword\00", align 1
@floatformat_vax_f = dso_local local_unnamed_addr constant %struct.floatformat { i32 3, i32 32, i32 0, i32 1, i32 8, i32 129, i32 0, i32 9, i32 23, i32 1, ptr @.str.5, ptr @floatformat_always_valid, ptr null }, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"floatformat_vax_f\00", align 1
@floatformat_vax_d = dso_local local_unnamed_addr constant %struct.floatformat { i32 3, i32 64, i32 0, i32 1, i32 8, i32 129, i32 0, i32 9, i32 55, i32 1, ptr @.str.6, ptr @floatformat_always_valid, ptr null }, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"floatformat_vax_d\00", align 1
@floatformat_vax_g = dso_local local_unnamed_addr constant %struct.floatformat { i32 3, i32 64, i32 0, i32 1, i32 11, i32 1025, i32 0, i32 12, i32 52, i32 1, ptr @.str.7, ptr @floatformat_always_valid, ptr null }, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"floatformat_vax_g\00", align 1
@floatformat_i387_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 80, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 64, i32 0, ptr @.str.8, ptr @floatformat_i387_ext_is_valid, ptr null }, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"floatformat_i387_ext\00", align 1
@floatformat_m68881_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 96, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, ptr @.str.9, ptr @floatformat_always_valid, ptr null }, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"floatformat_m68881_ext\00", align 1
@floatformat_i960_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 96, i32 16, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, ptr @.str.10, ptr @floatformat_always_valid, ptr null }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"floatformat_i960_ext\00", align 1
@floatformat_m88110_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 80, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 64, i32 0, ptr @.str.11, ptr @floatformat_always_valid, ptr null }, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"floatformat_m88110_ext\00", align 1
@floatformat_m88110_harris_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 128, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.12, ptr @floatformat_always_valid, ptr null }, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"floatformat_m88110_ext_harris\00", align 1
@floatformat_arm_ext_big = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 96, i32 0, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, ptr @.str.13, ptr @floatformat_always_valid, ptr null }, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"floatformat_arm_ext_big\00", align 1
@floatformat_arm_ext_littlebyte_bigword = dso_local local_unnamed_addr constant %struct.floatformat { i32 2, i32 96, i32 0, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, ptr @.str.14, ptr @floatformat_always_valid, ptr null }, align 8
@.str.14 = private unnamed_addr constant [39 x i8] c"floatformat_arm_ext_littlebyte_bigword\00", align 1
@floatformat_ia64_spill_big = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 128, i32 0, i32 1, i32 17, i32 65535, i32 131071, i32 18, i32 64, i32 0, ptr @.str.15, ptr @floatformat_always_valid, ptr null }, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"floatformat_ia64_spill_big\00", align 1
@floatformat_ia64_spill_little = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 128, i32 0, i32 1, i32 17, i32 65535, i32 131071, i32 18, i32 64, i32 0, ptr @.str.16, ptr @floatformat_always_valid, ptr null }, align 8
@.str.16 = private unnamed_addr constant [30 x i8] c"floatformat_ia64_spill_little\00", align 1
@floatformat_ia64_quad_big = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 128, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 112, i32 1, ptr @.str.17, ptr @floatformat_always_valid, ptr null }, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c"floatformat_ia64_quad_big\00", align 1
@floatformat_ia64_quad_little = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 128, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 112, i32 1, ptr @.str.18, ptr @floatformat_always_valid, ptr null }, align 8
@.str.18 = private unnamed_addr constant [29 x i8] c"floatformat_ia64_quad_little\00", align 1
@floatformat_ibm_long_double = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 128, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.19, ptr @floatformat_ibm_long_double_is_valid, ptr @floatformat_ieee_double_big }, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"floatformat_ibm_long_double\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @floatformat_always_valid(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !prof !35 !PGOFuncName !36 {
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @floatformat_i387_ext_is_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !prof !35 !PGOFuncName !37 {
  %3 = load i32, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11, !range !47
  %11 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %12, i32 noundef 1) #11, !range !47
  %14 = icmp eq i64 %10, 0
  %15 = icmp ne i64 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i64 @get_field(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 !prof !35 !PGOFuncName !49 {
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 1, i32 -1
  %8 = add i32 %4, %3
  %9 = sub i32 %2, %8
  %10 = add i32 %8, -1
  %11 = select i1 %6, i32 %9, i32 %10
  %12 = lshr i32 %11, 3
  %13 = and i32 %9, 7
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 8)
  br label %16

16:                                               ; preds = %16, %5
  %17 = phi i32 [ %13, %5 ], [ 0, %16 ]
  %18 = phi i32 [ %15, %5 ], [ %38, %16 ]
  %19 = phi i32 [ 0, %5 ], [ %36, %16 ]
  %20 = phi i32 [ %12, %5 ], [ %37, %16 ]
  %21 = phi i64 [ 0, %5 ], [ %34, %16 ]
  %22 = phi i32 [ %4, %5 ], [ %35, %16 ]
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %26, %17
  %28 = sub nsw i32 %18, %17
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  %32 = shl i32 %31, %19
  %33 = zext i32 %32 to i64
  %34 = or i64 %21, %33
  %35 = sub i32 %22, %28
  %36 = add i32 %19, %28
  %37 = add i32 %20, %7
  %38 = tail call i32 @llvm.umin.i32(i32 %35, i32 8)
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %40, label %16, !llvm.loop !51

40:                                               ; preds = %16
  ret i64 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @floatformat_ibm_long_double_is_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !35 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11, !range !47
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  %14 = tail call fastcc i64 @get_field(ptr noundef nonnull %13, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11, !range !47
  %15 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !55
  %17 = zext i32 %16 to i64
  %18 = icmp eq i64 %12, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = tail call fastcc i32 @mant_bits_set(ptr noundef nonnull %4, ptr noundef %1) #11, !range !56
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %90

22:                                               ; preds = %2
  %23 = icmp eq i64 %12, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %22
  %25 = icmp eq i64 %14, 0
  br i1 %25, label %26, label %90

26:                                               ; preds = %24
  %27 = tail call fastcc i32 @mant_bits_set(ptr noundef nonnull %4, ptr noundef nonnull %13) #11, !range !56
  %28 = xor i32 %27, 1
  br label %90

29:                                               ; preds = %22
  %30 = add nsw i64 %12, -53
  %31 = icmp slt i64 %14, %30
  br i1 %31, label %90, label %32

32:                                               ; preds = %29
  %33 = icmp sgt i64 %14, %30
  %34 = icmp ne i64 %14, 0
  %35 = and i1 %33, %34
  br i1 %35, label %90, label %36

36:                                               ; preds = %32
  %37 = icmp eq i64 %14, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !57
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %90, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !48
  br label %45

45:                                               ; preds = %42, %54
  %46 = phi i1 [ true, %42 ], [ %57, %54 ]
  %47 = phi i32 [ 0, %42 ], [ %56, %54 ]
  %48 = phi i32 [ -1, %42 ], [ %55, %54 ]
  %49 = add i32 %44, %47
  %50 = tail call fastcc i64 @get_field(ptr noundef nonnull %13, i32 noundef %5, i32 noundef %7, i32 noundef %49, i32 noundef 1) #11, !range !47
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = icmp eq i32 %48, -1
  br i1 %53, label %54, label %61

54:                                               ; preds = %52, %45
  %55 = phi i32 [ %48, %45 ], [ %47, %52 ]
  %56 = add nuw i32 %47, 1
  %57 = icmp ult i32 %56, %40
  %58 = icmp eq i32 %56, %40
  br i1 %58, label %59, label %45, !llvm.loop !58

59:                                               ; preds = %54
  %60 = icmp eq i32 %55, -1
  br i1 %60, label %90, label %61

61:                                               ; preds = %52, %59
  %62 = phi i32 [ %55, %59 ], [ %48, %52 ]
  %63 = phi i1 [ %57, %59 ], [ %46, %52 ]
  %64 = sub nsw i32 0, %62
  %65 = sext i32 %64 to i64
  %66 = icmp sgt i64 %30, %65
  br i1 %66, label %90, label %67

67:                                               ; preds = %61
  %68 = icmp slt i64 %30, %65
  %69 = or i1 %68, %63
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !48
  %73 = add i32 %40, -1
  %74 = add i32 %73, %72
  %75 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %74, i32 noundef 1) #11, !range !47
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  br label %90

78:                                               ; preds = %36
  %79 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 7
  %80 = load i32, ptr %79, align 4, !tbaa !48
  %81 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 8
  %82 = load i32, ptr %81, align 8, !tbaa !57
  %83 = add i32 %80, -1
  %84 = add i32 %83, %82
  %85 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %84, i32 noundef 1) #11, !range !47
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = tail call fastcc i32 @mant_bits_set(ptr noundef nonnull %4, ptr noundef nonnull %13) #11, !range !56
  %89 = xor i32 %88, 1
  br label %90

90:                                               ; preds = %38, %67, %78, %70, %59, %61, %32, %29, %24, %19, %87, %26
  %91 = phi i32 [ %28, %26 ], [ %89, %87 ], [ 1, %19 ], [ 0, %24 ], [ 1, %29 ], [ 0, %32 ], [ %77, %70 ], [ 1, %59 ], [ 1, %61 ], [ 0, %67 ], [ 0, %78 ], [ 1, %38 ]
  ret i32 %91
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @mant_bits_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !35 !PGOFuncName !59 {
  %3 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = load i32, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !44
  br label %12

12:                                               ; preds = %6, %18
  %13 = phi i32 [ %4, %6 ], [ %20, %18 ]
  %14 = phi i32 [ %8, %6 ], [ %19, %18 ]
  %15 = tail call i32 @llvm.smin.i32(i32 %13, i32 32)
  %16 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %14, i32 noundef %15) #11, !range !47
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = add i32 %15, %14
  %20 = sub nsw i32 %13, %15
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %12, label %22, !llvm.loop !60

22:                                               ; preds = %12, %18, %2
  %23 = phi i32 [ 0, %2 ], [ 0, %18 ], [ 1, %12 ]
  ret i32 %23
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @floatformat_to_double(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !prof !35 {
  %4 = load i32, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #11, !range !47
  %12 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !55
  %14 = zext i32 %13 to i64
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = tail call fastcc i32 @mant_bits_set(ptr noundef nonnull %0, ptr noundef %1) #11, !range !56
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, double 0x7FF0000000000000, double 0x7FF8000000000000
  %20 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %4, i32 noundef %6, i32 noundef %21, i32 noundef 1) #11, !range !47
  br label %91

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 4, !tbaa !48
  %28 = icmp eq i64 %11, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !62
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %11, %32
  %34 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !63
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = trunc i64 %33 to i32
  %39 = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %38) #12
  br label %42

40:                                               ; preds = %29
  %41 = add nsw i64 %33, 1
  br label %42

42:                                               ; preds = %23, %37, %40
  %43 = phi i64 [ %33, %37 ], [ %41, %40 ], [ 0, %23 ]
  %44 = phi double [ %39, %37 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %23 ]
  %45 = icmp sgt i32 %25, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 5
  br label %48

48:                                               ; preds = %46, %75
  %49 = phi double [ %44, %46 ], [ %78, %75 ]
  %50 = phi i64 [ %43, %46 ], [ %81, %75 ]
  %51 = phi i32 [ %25, %46 ], [ %82, %75 ]
  %52 = phi i32 [ %27, %46 ], [ %76, %75 ]
  %53 = tail call i32 @llvm.smin.i32(i32 %51, i32 32)
  %54 = load i32, ptr %0, align 8, !tbaa !38
  %55 = load i32, ptr %5, align 4, !tbaa !44
  %56 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %54, i32 noundef %55, i32 noundef %52, i32 noundef %53) #11, !range !47
  %57 = icmp eq i64 %50, 0
  %58 = select i1 %28, i1 %57, i1 false
  %59 = icmp ne i64 %56, 0
  %60 = select i1 %58, i1 %59, i1 false
  %61 = uitofp i64 %56 to double
  br i1 %60, label %62, label %70

62:                                               ; preds = %48
  %63 = load i32, ptr %47, align 4, !tbaa !62
  %64 = load i32, ptr %26, align 4, !tbaa !48
  %65 = add i32 %52, %53
  %66 = add i32 %65, %63
  %67 = sub i32 %64, %66
  %68 = add i32 %67, 1
  %69 = tail call double @ldexp(double noundef %61, i32 noundef %68) #12
  br label %75

70:                                               ; preds = %48
  %71 = trunc i64 %50 to i32
  %72 = sub i32 %71, %53
  %73 = tail call double @ldexp(double noundef %61, i32 noundef %72) #12
  %74 = add i32 %53, %52
  br label %75

75:                                               ; preds = %70, %62
  %76 = phi i32 [ %74, %70 ], [ %65, %62 ]
  %77 = phi double [ %73, %70 ], [ %69, %62 ]
  %78 = fadd double %49, %77
  %79 = zext nneg i32 %53 to i64
  %80 = sub nsw i64 %50, %79
  %81 = select i1 %57, i64 0, i64 %80
  %82 = sub nsw i32 %51, %53
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %48, label %84, !llvm.loop !64

84:                                               ; preds = %75, %42
  %85 = phi double [ %44, %42 ], [ %78, %75 ]
  %86 = load i32, ptr %0, align 8, !tbaa !38
  %87 = load i32, ptr %5, align 4, !tbaa !44
  %88 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !61
  %90 = tail call fastcc i64 @get_field(ptr noundef %1, i32 noundef %86, i32 noundef %87, i32 noundef %89, i32 noundef 1) #11, !range !47
  br label %91

91:                                               ; preds = %84, %16
  %92 = phi i64 [ %90, %84 ], [ %22, %16 ]
  %93 = phi double [ %85, %84 ], [ %19, %16 ]
  %94 = icmp eq i64 %92, 0
  %95 = fneg double %93
  %96 = select i1 %94, double %93, double %95
  store double %96, ptr %2, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @floatformat_from_double(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #4 !prof !35 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = load double, ptr %1, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = lshr i32 %7, 3
  %9 = zext nneg i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %9, i1 false)
  %10 = fcmp olt double %5, 0.000000e+00
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, ptr %0, align 8, !tbaa !38
  %13 = load i32, ptr %6, align 4, !tbaa !44
  %14 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !61
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef 1, i64 noundef 1) #11
  %16 = fneg double %5
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi double [ %16, %11 ], [ %5, %3 ]
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %120, label %20

20:                                               ; preds = %17
  %21 = fcmp uno double %18, 0.000000e+00
  br i1 %21, label %22, label %36

22:                                               ; preds = %20
  %23 = load i32, ptr %0, align 8, !tbaa !38
  %24 = load i32, ptr %6, align 4, !tbaa !44
  %25 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !45
  %27 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !55
  %31 = zext i32 %30 to i64
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %23, i32 noundef %24, i32 noundef %26, i32 noundef %28, i64 noundef %31) #11
  %32 = load i32, ptr %0, align 8, !tbaa !38
  %33 = load i32, ptr %6, align 4, !tbaa !44
  %34 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !48
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %32, i32 noundef %33, i32 noundef %35, i32 noundef 32, i64 noundef 1) #11
  br label %120

36:                                               ; preds = %20
  %37 = fadd double %18, %18
  %38 = fcmp oeq double %37, %18
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, ptr %0, align 8, !tbaa !38
  %41 = load i32, ptr %6, align 4, !tbaa !44
  %42 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !45
  %44 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !55
  %48 = zext i32 %47 to i64
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %40, i32 noundef %41, i32 noundef %43, i32 noundef %45, i64 noundef %48) #11
  br label %120

49:                                               ; preds = %36
  %50 = call double @frexp(double noundef %18, ptr noundef nonnull %4) #12
  %51 = load i32, ptr %4, align 4, !tbaa !67
  %52 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !62
  %54 = add nsw i32 %53, %51
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = add nsw i32 %54, -1
  %58 = load i32, ptr %0, align 8, !tbaa !38
  %59 = load i32, ptr %6, align 4, !tbaa !44
  %60 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !45
  %62 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !46
  %64 = zext nneg i32 %57 to i64
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %58, i32 noundef %59, i32 noundef %61, i32 noundef %63, i64 noundef %64) #11
  br label %76

65:                                               ; preds = %49
  %66 = load i32, ptr %0, align 8, !tbaa !38
  %67 = load i32, ptr %6, align 4, !tbaa !44
  %68 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !45
  %70 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !46
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %66, i32 noundef %67, i32 noundef %69, i32 noundef %71, i64 noundef 0) #11
  %72 = load i32, ptr %52, align 4, !tbaa !62
  %73 = add i32 %51, -1
  %74 = add i32 %73, %72
  %75 = tail call double @ldexp(double noundef %50, i32 noundef %74) #12
  br label %76

76:                                               ; preds = %65, %56
  %77 = phi double [ %50, %56 ], [ %75, %65 ]
  %78 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 8
  %79 = load i32, ptr %78, align 8, !tbaa !57
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %83 = load i32, ptr %82, align 4, !tbaa !48
  %84 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 9
  br label %85

85:                                               ; preds = %81, %112
  %86 = phi i32 [ %79, %81 ], [ %118, %112 ]
  %87 = phi i32 [ %83, %81 ], [ %117, %112 ]
  %88 = phi double [ %77, %81 ], [ %93, %112 ]
  %89 = tail call i32 @llvm.smin.i32(i32 %86, i32 32)
  %90 = fmul double %88, 0x41F0000000000000
  %91 = fptoui double %90 to i64
  %92 = uitofp i64 %91 to double
  %93 = fsub double %90, %92
  %94 = load i32, ptr %78, align 8, !tbaa !57
  %95 = icmp eq i32 %86, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load i32, ptr %84, align 4, !tbaa !63
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, ptr %52, align 4, !tbaa !62
  %101 = add nsw i32 %100, %51
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = and i64 %91, 2147483647
  %105 = add nsw i32 %89, -1
  br label %112

106:                                              ; preds = %99, %96, %85
  %107 = icmp ult i32 %86, 32
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = sub nuw nsw i32 32, %89
  %110 = zext nneg i32 %109 to i64
  %111 = lshr i64 %91, %110
  br label %112

112:                                              ; preds = %106, %108, %103
  %113 = phi i32 [ %105, %103 ], [ %89, %108 ], [ %89, %106 ]
  %114 = phi i64 [ %104, %103 ], [ %111, %108 ], [ %91, %106 ]
  %115 = load i32, ptr %0, align 8, !tbaa !38
  %116 = load i32, ptr %6, align 4, !tbaa !44
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %115, i32 noundef %116, i32 noundef %87, i32 noundef %113, i64 noundef %114) #11
  %117 = add i32 %113, %87
  %118 = sub nsw i32 %86, %113
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %85, label %120, !llvm.loop !68

120:                                              ; preds = %112, %76, %17, %39, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @put_field(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #7 !prof !35 !PGOFuncName !69 {
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 1, i32 -1
  %9 = add i32 %4, %3
  %10 = sub i32 %2, %9
  %11 = add i32 %9, -1
  %12 = select i1 %7, i32 %10, i32 %11
  %13 = lshr i32 %12, 3
  %14 = and i32 %10, 7
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 8)
  br label %17

17:                                               ; preds = %17, %6
  %18 = phi i32 [ %14, %6 ], [ 0, %17 ]
  %19 = phi i32 [ %16, %6 ], [ %44, %17 ]
  %20 = phi i32 [ %13, %6 ], [ %43, %17 ]
  %21 = phi i64 [ %5, %6 ], [ %41, %17 ]
  %22 = phi i32 [ %4, %6 ], [ %42, %17 ]
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = sub nsw i32 %19, %18
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = shl i32 %27, %18
  %29 = load i8, ptr %24, align 1, !tbaa !50
  %30 = zext i8 %29 to i32
  %31 = xor i32 %28, -1
  %32 = and i32 %30, %31
  %33 = zext nneg i32 %32 to i64
  %34 = zext nneg i32 %18 to i64
  %35 = shl i64 %21, %34
  %36 = zext i32 %28 to i64
  %37 = and i64 %35, %36
  %38 = or i64 %37, %33
  %39 = trunc i64 %38 to i8
  store i8 %39, ptr %24, align 1, !tbaa !50
  %40 = zext nneg i32 %25 to i64
  %41 = lshr i64 %21, %40
  %42 = sub i32 %22, %25
  %43 = add i32 %20, %8
  %44 = tail call i32 @llvm.umin.i32(i32 %42, i32 8)
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %46, label %17, !llvm.loop !70

46:                                               ; preds = %17
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @floatformat_is_valid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !35 {
  %3 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #12
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!"floatformat.c:floatformat_always_valid"}
!37 = !{!"floatformat.c:floatformat_i387_ext_is_valid"}
!38 = !{!39, !40, i64 0}
!39 = !{!"floatformat", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !43, i64 40, !43, i64 48, !43, i64 56}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"any pointer", !41, i64 0}
!44 = !{!39, !40, i64 4}
!45 = !{!39, !40, i64 12}
!46 = !{!39, !40, i64 16}
!47 = !{i64 0, i64 4294967296}
!48 = !{!39, !40, i64 28}
!49 = !{!"floatformat.c:get_field"}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"floatformat.c:floatformat_ibm_long_double_is_valid"}
!54 = !{!39, !43, i64 56}
!55 = !{!39, !40, i64 24}
!56 = !{i32 0, i32 2}
!57 = !{!39, !40, i64 32}
!58 = distinct !{!58, !52}
!59 = !{!"floatformat.c:mant_bits_set"}
!60 = distinct !{!60, !52}
!61 = !{!39, !40, i64 8}
!62 = !{!39, !40, i64 20}
!63 = !{!39, !40, i64 36}
!64 = distinct !{!64, !52}
!65 = !{!66, !66, i64 0}
!66 = !{!"double", !41, i64 0}
!67 = !{!40, !40, i64 0}
!68 = distinct !{!68, !52}
!69 = !{!"floatformat.c:put_field"}
!70 = distinct !{!70, !52}
!71 = !{!39, !43, i64 48}
