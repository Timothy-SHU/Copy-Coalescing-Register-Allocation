; ModuleID = 'blender/source/blender/modifiers/intern/MOD_meshcache_mdd.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_meshcache_mdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MDDHead = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Header seek failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to seek frame\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unknown error opening file\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Missing header\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Vertex count mismatch\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Invalid frame total\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_mdd_index(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.MDDHead, align 4
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %9 = call fastcc zeroext i8 @meshcache_read_mdd_head(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7, ptr noundef %5) #10, !range !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 4, !tbaa !35
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = call i32 @fseek(ptr noundef %0, i64 noundef %14, i32 noundef 1) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.MDDHead, ptr %7, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !40
  %20 = mul nsw i32 %19, %3
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, 12
  %23 = call i32 @fseek(ptr noundef %0, i64 noundef %22, i32 noundef 1) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %17
  %26 = fcmp ult float %4, 1.000000e+00
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %18, align 4, !tbaa !40
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %68, label %30

30:                                               ; preds = %27, %30
  %31 = phi i32 [ %36, %30 ], [ %28, %27 ]
  %32 = phi ptr [ %37, %30 ], [ %1, %27 ]
  %33 = call i64 @fread(ptr noundef %32, i64 noundef 12, i64 noundef 1, ptr noundef %0) #10
  call fastcc void @BLI_endian_switch_float(ptr noundef %32) #10
  %34 = getelementptr inbounds float, ptr %32, i64 1
  call fastcc void @BLI_endian_switch_float(ptr noundef nonnull %34) #10
  %35 = getelementptr inbounds float, ptr %32, i64 2
  call fastcc void @BLI_endian_switch_float(ptr noundef nonnull %35) #10
  %36 = add i32 %31, -1
  %37 = getelementptr inbounds float, ptr %32, i64 3
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %68, label %30, !llvm.loop !41

39:                                               ; preds = %25
  %40 = fsub float 1.000000e+00, %4
  %41 = load i32, ptr %18, align 4, !tbaa !40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds float, ptr %8, i64 1
  %45 = getelementptr inbounds float, ptr %8, i64 2
  %46 = insertelement <2 x float> poison, float %40, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = insertelement <2 x float> poison, float %4, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  br label %50

50:                                               ; preds = %43, %50
  %51 = phi i32 [ %41, %43 ], [ %63, %50 ]
  %52 = phi ptr [ %1, %43 ], [ %64, %50 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %53 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 12, i64 noundef 1, ptr noundef %0) #10
  call fastcc void @BLI_endian_switch_float(ptr noundef nonnull %8) #10
  call fastcc void @BLI_endian_switch_float(ptr noundef nonnull %44) #10
  call fastcc void @BLI_endian_switch_float(ptr noundef nonnull %45) #10
  %54 = load <2 x float>, ptr %52, align 4, !tbaa !43
  %55 = load <2 x float>, ptr %8, align 8, !tbaa !43
  %56 = fmul <2 x float> %55, %49
  %57 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %47, <2 x float> %56)
  store <2 x float> %57, ptr %52, align 4, !tbaa !43
  %58 = getelementptr inbounds float, ptr %52, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !43
  %60 = load float, ptr %45, align 8, !tbaa !43
  %61 = fmul float %60, %4
  %62 = call float @llvm.fmuladd.f32(float %59, float %40, float %61)
  store float %62, ptr %58, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  %63 = add i32 %51, -1
  %64 = getelementptr inbounds float, ptr %52, i64 3
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %68, label %50, !llvm.loop !45

66:                                               ; preds = %17, %11
  %67 = phi ptr [ @.str, %11 ], [ @.str.1, %17 ]
  store ptr %67, ptr %5, align 8, !tbaa !46
  br label %68

68:                                               ; preds = %30, %50, %66, %27, %39, %6
  %69 = phi i8 [ 0, %6 ], [ 1, %39 ], [ 1, %27 ], [ 0, %66 ], [ 1, %50 ], [ 1, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret i8 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @meshcache_read_mdd_head(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !48 {
  %5 = tail call i64 @fread(ptr noundef %2, i64 noundef 8, i64 noundef 1, ptr noundef %0) #10
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  tail call void @BLI_endian_switch_int32_array(ptr noundef %2, i32 noundef 2) #11
  %8 = getelementptr inbounds %struct.MDDHead, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, ptr %2, align 4, !tbaa !35
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %7, %4
  %15 = phi ptr [ @.str.4, %4 ], [ @.str.5, %7 ], [ @.str.6, %11 ]
  store ptr %15, ptr %3, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i8 [ 1, %11 ], [ 0, %14 ]
  ret i8 %17
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_float(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !49 {
  tail call fastcc void @BLI_endian_switch_uint32(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_mdd_frame(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [2 x i32], align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %9 = call fastcc zeroext i8 @meshcache_read_mdd_range(ptr noundef %0, i32 noundef %2, float noundef %4, i8 noundef zeroext %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %5) #10, !range !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 4, !tbaa !50
  %13 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = icmp eq i32 %12, %14
  %16 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #10
  %17 = icmp eq i32 %16, 0
  br i1 %15, label %18, label %24

18:                                               ; preds = %11
  br i1 %17, label %19, label %23

19:                                               ; preds = %18
  %20 = load i32, ptr %7, align 4, !tbaa !50
  %21 = call zeroext i8 @MOD_meshcache_read_mdd_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %20, float noundef 1.000000e+00, ptr noundef %5) #10, !range !34
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19, %18
  br label %38

24:                                               ; preds = %11
  br i1 %17, label %25, label %37

25:                                               ; preds = %24
  %26 = load i32, ptr %7, align 4, !tbaa !50
  %27 = call zeroext i8 @MOD_meshcache_read_mdd_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %26, float noundef 1.000000e+00, ptr noundef %5) #10, !range !34
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, ptr %13, align 4, !tbaa !50
  %34 = load float, ptr %8, align 4, !tbaa !43
  %35 = call zeroext i8 @MOD_meshcache_read_mdd_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %33, float noundef %34, ptr noundef %5) #10, !range !34
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %29, %25, %24
  br label %38

38:                                               ; preds = %32, %19, %6, %37, %23
  %39 = phi i8 [ 0, %23 ], [ 0, %37 ], [ 0, %6 ], [ 1, %19 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret i8 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @meshcache_read_mdd_range(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !51 {
  %8 = alloca %struct.MDDHead, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %9 = call fastcc zeroext i8 @meshcache_read_mdd_head(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %6) #10, !range !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %8, align 4, !tbaa !35
  call void @MOD_meshcache_calc_range(float noundef %2, i8 noundef zeroext %3, i32 noundef %12, ptr noundef %4, ptr noundef %5) #11
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi i8 [ 1, %11 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_mdd_times(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %4, float noundef %5, i8 noundef zeroext %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca float, align 4
  %10 = alloca %struct.MDDHead, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  %11 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.2) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #12
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @strerror(i32 noundef %15) #11
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ @.str.3, %13 ]
  store ptr %20, ptr %7, align 8, !tbaa !46
  br label %46

21:                                               ; preds = %8
  switch i8 %6, label %29 [
    i8 0, label %42
    i8 1, label %22
  ]

22:                                               ; preds = %21
  %23 = call fastcc zeroext i8 @meshcache_read_mdd_range_from_time(ptr noundef nonnull %11, i32 noundef %2, float noundef %4, ptr noundef nonnull %9, ptr noundef %7) #10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @fclose(ptr noundef nonnull %11) #10
  br label %46

27:                                               ; preds = %22
  tail call void @rewind(ptr noundef nonnull %11) #10
  %28 = load float, ptr %9, align 4, !tbaa !43
  br label %42

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %30 = call fastcc zeroext i8 @meshcache_read_mdd_head(ptr noundef nonnull %11, i32 noundef %2, ptr noundef nonnull %10, ptr noundef %7) #10, !range !34
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @fclose(ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %46

34:                                               ; preds = %29
  %35 = fcmp olt float %4, 0.000000e+00
  %36 = fcmp ogt float %4, 1.000000e+00
  %37 = select i1 %36, float 1.000000e+00, float %4
  %38 = select i1 %35, float 0.000000e+00, float %37
  %39 = load i32, ptr %10, align 4, !tbaa !35
  %40 = sitofp i32 %39 to float
  %41 = fmul float %38, %40
  call void @rewind(ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %42

42:                                               ; preds = %21, %34, %27
  %43 = phi float [ %41, %34 ], [ %28, %27 ], [ %4, %21 ]
  %44 = call zeroext i8 @MOD_meshcache_read_mdd_frame(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %43, ptr noundef %7) #10, !range !34
  %45 = call i32 @fclose(ptr noundef nonnull %11) #10
  br label %46

46:                                               ; preds = %32, %42, %25, %19
  %47 = phi i8 [ 0, %19 ], [ %44, %42 ], [ 0, %25 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  ret i8 %47
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @meshcache_read_mdd_range_from_time(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !52 {
  %6 = alloca %struct.MDDHead, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %8 = call fastcc zeroext i8 @meshcache_read_mdd_head(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %4) #10, !range !34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 4, !tbaa !35
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 4, i64 noundef 1, ptr noundef %0) #10
  call fastcc void @BLI_endian_switch_float(ptr noundef nonnull %7) #10
  %15 = load float, ptr %7, align 4, !tbaa !43
  %16 = fcmp ult float %15, %2
  br i1 %16, label %21, label %27

17:                                               ; preds = %21
  %18 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 4, i64 noundef 1, ptr noundef %0) #10
  call fastcc void @BLI_endian_switch_float(ptr noundef nonnull %7) #10
  %19 = load float, ptr %7, align 4, !tbaa !43
  %20 = fcmp ult float %19, %2
  br i1 %20, label %21, label %27, !llvm.loop !53

21:                                               ; preds = %13, %17
  %22 = phi float [ %19, %17 ], [ %15, %13 ]
  %23 = phi i32 [ %24, %17 ], [ 0, %13 ]
  %24 = add nuw nsw i32 %23, 1
  %25 = load i32, ptr %6, align 4, !tbaa !35
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %17, label %27, !llvm.loop !53

27:                                               ; preds = %17, %21, %13
  %28 = phi float [ %15, %13 ], [ %19, %17 ], [ %22, %21 ]
  %29 = phi i32 [ 0, %13 ], [ %24, %21 ], [ %24, %17 ]
  %30 = phi float [ 0x47EFFFFFE0000000, %13 ], [ %22, %21 ], [ %22, %17 ]
  %31 = fcmp oeq float %30, 0x47EFFFFFE0000000
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = fsub float %28, %30
  %34 = fcmp ugt float %33, 0x3F1A36E2E0000000
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = sitofp i32 %29 to float
  br label %43

37:                                               ; preds = %32
  %38 = add nsw i32 %29, -1
  %39 = sitofp i32 %38 to float
  %40 = fsub float %2, %30
  %41 = fdiv float %40, %33
  %42 = fadd float %41, %39
  br label %43

43:                                               ; preds = %10, %35, %37, %27
  %44 = phi float [ 0.000000e+00, %27 ], [ %36, %35 ], [ %42, %37 ], [ 0.000000e+00, %10 ]
  store float %44, ptr %3, align 4, !tbaa !43
  br label %45

45:                                               ; preds = %5, %43
  %46 = phi i8 [ 1, %43 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret i8 %46
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_endian_switch_int32_array(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint32(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !54 {
  %2 = load i32, ptr %0, align 4, !tbaa !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %0, align 4, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @MOD_meshcache_calc_range(float noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{i8 0, i8 2}
!35 = !{!36, !37, i64 0}
!36 = !{!"MDDHead", !37, i64 0, !37, i64 4}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!36, !37, i64 4}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !38, i64 0}
!45 = distinct !{!45, !42}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !38, i64 0}
!48 = !{!"MOD_meshcache_mdd.c:meshcache_read_mdd_head"}
!49 = !{!"MOD_meshcache_mdd.c:BLI_endian_switch_float"}
!50 = !{!37, !37, i64 0}
!51 = !{!"MOD_meshcache_mdd.c:meshcache_read_mdd_range"}
!52 = !{!"MOD_meshcache_mdd.c:meshcache_read_mdd_range_from_time"}
!53 = distinct !{!53, !42}
!54 = !{!"MOD_meshcache_mdd.c:BLI_endian_switch_uint32"}
