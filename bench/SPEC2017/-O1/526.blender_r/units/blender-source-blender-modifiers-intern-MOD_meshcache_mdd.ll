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

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_mdd_index(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.MDDHead, align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %9 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 8, i64 noundef 1, ptr noundef %0)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %6
  call void @BLI_endian_switch_int32_array(ptr noundef nonnull %7, i32 noundef 2) #8
  %12 = getelementptr inbounds %struct.MDDHead, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  %16 = load i32, ptr %7, align 4, !tbaa !39
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %86, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4, !tbaa !39
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = call i32 @fseek(ptr noundef %0, i64 noundef %21, i32 noundef 1)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %86

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.MDDHead, ptr %7, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !34
  %27 = mul nsw i32 %26, %3
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 12
  %30 = call i32 @fseek(ptr noundef %0, i64 noundef %29, i32 noundef 1)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %24
  %33 = fcmp ult float %4, 1.000000e+00
  br i1 %33, label %52, label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %25, align 4, !tbaa !34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %88, label %37

37:                                               ; preds = %34, %37
  %38 = phi i32 [ %49, %37 ], [ %35, %34 ]
  %39 = phi ptr [ %50, %37 ], [ %1, %34 ]
  %40 = call i64 @fread(ptr noundef %39, i64 noundef 12, i64 noundef 1, ptr noundef %0)
  %41 = load i32, ptr %39, align 4, !tbaa !40
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  store i32 %42, ptr %39, align 4, !tbaa !40
  %43 = getelementptr inbounds float, ptr %39, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !40
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  store i32 %45, ptr %43, align 4, !tbaa !40
  %46 = getelementptr inbounds float, ptr %39, i64 2
  %47 = load i32, ptr %46, align 4, !tbaa !40
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  store i32 %48, ptr %46, align 4, !tbaa !40
  %49 = add i32 %38, -1
  %50 = getelementptr inbounds float, ptr %39, i64 3
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %88, label %37, !llvm.loop !41

52:                                               ; preds = %32
  %53 = fsub float 1.000000e+00, %4
  %54 = load i32, ptr %25, align 4, !tbaa !34
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %88, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds float, ptr %8, i64 1
  %58 = getelementptr inbounds float, ptr %8, i64 2
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i32 [ %54, %56 ], [ %83, %59 ]
  %61 = phi ptr [ %1, %56 ], [ %84, %59 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %62 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 12, i64 noundef 1, ptr noundef %0)
  %63 = load i32, ptr %8, align 4, !tbaa !40
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  store i32 %64, ptr %8, align 4, !tbaa !40
  %65 = load i32, ptr %57, align 4, !tbaa !40
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  store i32 %66, ptr %57, align 4, !tbaa !40
  %67 = load i32, ptr %58, align 4, !tbaa !40
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  store i32 %68, ptr %58, align 4, !tbaa !40
  %69 = load float, ptr %61, align 4, !tbaa !44
  %70 = load float, ptr %8, align 4, !tbaa !44
  %71 = fmul float %70, %4
  %72 = call float @llvm.fmuladd.f32(float %69, float %53, float %71)
  store float %72, ptr %61, align 4, !tbaa !44
  %73 = getelementptr inbounds float, ptr %61, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !44
  %75 = load float, ptr %57, align 4, !tbaa !44
  %76 = fmul float %75, %4
  %77 = call float @llvm.fmuladd.f32(float %74, float %53, float %76)
  store float %77, ptr %73, align 4, !tbaa !44
  %78 = getelementptr inbounds float, ptr %61, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !44
  %80 = load float, ptr %58, align 4, !tbaa !44
  %81 = fmul float %80, %4
  %82 = call float @llvm.fmuladd.f32(float %79, float %53, float %81)
  store float %82, ptr %78, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  %83 = add i32 %60, -1
  %84 = getelementptr inbounds float, ptr %61, i64 3
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %88, label %59, !llvm.loop !46

86:                                               ; preds = %24, %18, %15, %11, %6
  %87 = phi ptr [ @.str.4, %6 ], [ @.str.5, %11 ], [ @.str.6, %15 ], [ @.str, %18 ], [ @.str.1, %24 ]
  store ptr %87, ptr %5, align 8, !tbaa !47
  br label %88

88:                                               ; preds = %37, %59, %86, %34, %52
  %89 = phi i8 [ 1, %52 ], [ 1, %34 ], [ 0, %86 ], [ 1, %59 ], [ 1, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i8 %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_mdd_frame(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.MDDHead, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %10 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 8, i64 noundef 1, ptr noundef %0)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %6
  call void @BLI_endian_switch_int32_array(ptr noundef nonnull %7, i32 noundef 2) #8
  %13 = getelementptr inbounds %struct.MDDHead, ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !34
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32, ptr %7, align 4, !tbaa !39
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %7, align 4, !tbaa !39
  call void @MOD_meshcache_calc_range(float noundef %4, i8 noundef zeroext %3, i32 noundef %20, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  %21 = load i32, ptr %8, align 4, !tbaa !40
  %22 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = icmp eq i32 %21, %23
  %25 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0)
  %26 = icmp eq i32 %25, 0
  br i1 %24, label %27, label %33

27:                                               ; preds = %19
  br i1 %26, label %28, label %32

28:                                               ; preds = %27
  %29 = load i32, ptr %8, align 4, !tbaa !40
  %30 = call zeroext i8 @MOD_meshcache_read_mdd_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %29, float noundef 1.000000e+00, ptr noundef %5), !range !49
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28, %27
  br label %49

33:                                               ; preds = %19
  br i1 %26, label %34, label %46

34:                                               ; preds = %33
  %35 = load i32, ptr %8, align 4, !tbaa !40
  %36 = call zeroext i8 @MOD_meshcache_read_mdd_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %35, float noundef 1.000000e+00, ptr noundef %5), !range !49
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, ptr %22, align 4, !tbaa !40
  %43 = load float, ptr %9, align 4, !tbaa !44
  %44 = call zeroext i8 @MOD_meshcache_read_mdd_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %42, float noundef %43, ptr noundef %5), !range !49
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %38, %34, %33
  br label %49

47:                                               ; preds = %16, %12, %6
  %48 = phi ptr [ @.str.4, %6 ], [ @.str.5, %12 ], [ @.str.6, %16 ]
  store ptr %48, ptr %5, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %49

49:                                               ; preds = %47, %41, %28, %46, %32
  %50 = phi i8 [ 0, %32 ], [ 0, %46 ], [ 1, %28 ], [ 1, %41 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret i8 %50
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_mdd_times(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %4, float noundef %5, i8 noundef zeroext %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca %struct.MDDHead, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.MDDHead, align 4
  %12 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = tail call ptr @__errno_location() #9
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @strerror(i32 noundef %16) #8
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ @.str.3, %14 ]
  store ptr %21, ptr %7, align 8, !tbaa !47
  br label %109

22:                                               ; preds = %8
  switch i8 %6, label %79 [
    i8 0, label %105
    i8 1, label %23
  ]

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  %24 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %12)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  call void @BLI_endian_switch_int32_array(ptr noundef nonnull %9, i32 noundef 2) #8
  %27 = getelementptr inbounds %struct.MDDHead, ptr %9, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !34
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, ptr %9, align 4, !tbaa !39
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %26, %23
  %34 = phi ptr [ @.str.4, %23 ], [ @.str.5, %26 ], [ @.str.6, %30 ]
  store ptr %34, ptr %7, align 8, !tbaa !47
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i1 [ false, %30 ], [ true, %33 ]
  br i1 %36, label %74, label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %9, align 4, !tbaa !39
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %12)
  %42 = load i32, ptr %10, align 4, !tbaa !40
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  store i32 %43, ptr %10, align 4, !tbaa !40
  %44 = bitcast i32 %43 to float
  %45 = fcmp ult float %44, %4
  br i1 %45, label %52, label %58

46:                                               ; preds = %52
  %47 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %12)
  %48 = load i32, ptr %10, align 4, !tbaa !40
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  store i32 %49, ptr %10, align 4, !tbaa !40
  %50 = bitcast i32 %49 to float
  %51 = fcmp ult float %50, %4
  br i1 %51, label %52, label %58, !llvm.loop !50

52:                                               ; preds = %40, %46
  %53 = phi float [ %50, %46 ], [ %44, %40 ]
  %54 = phi i32 [ %55, %46 ], [ 0, %40 ]
  %55 = add nuw nsw i32 %54, 1
  %56 = load i32, ptr %9, align 4, !tbaa !39
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %46, label %58, !llvm.loop !50

58:                                               ; preds = %46, %52, %40, %37
  %59 = phi i32 [ 0, %37 ], [ 0, %40 ], [ %55, %52 ], [ %55, %46 ]
  %60 = phi float [ 0x47EFFFFFE0000000, %37 ], [ 0x47EFFFFFE0000000, %40 ], [ %53, %52 ], [ %53, %46 ]
  %61 = fcmp oeq float %60, 0x47EFFFFFE0000000
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load float, ptr %10, align 4, !tbaa !44
  %64 = fsub float %63, %60
  %65 = fcmp ugt float %64, 0x3F1A36E2E0000000
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = sitofp i32 %59 to float
  br label %74

68:                                               ; preds = %62
  %69 = add nsw i32 %59, -1
  %70 = sitofp i32 %69 to float
  %71 = fsub float %4, %60
  %72 = fdiv float %71, %64
  %73 = fadd float %72, %70
  br label %74

74:                                               ; preds = %58, %66, %68, %35
  %75 = phi float [ undef, %35 ], [ 0.000000e+00, %58 ], [ %67, %66 ], [ %73, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br i1 %36, label %76, label %78

76:                                               ; preds = %74
  %77 = call i32 @fclose(ptr noundef nonnull %12)
  br label %109

78:                                               ; preds = %74
  call void @rewind(ptr noundef nonnull %12)
  br label %105

79:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  %80 = call i64 @fread(ptr noundef nonnull %11, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %12)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  call void @BLI_endian_switch_int32_array(ptr noundef nonnull %11, i32 noundef 2) #8
  %83 = getelementptr inbounds %struct.MDDHead, ptr %11, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !34
  %85 = icmp eq i32 %84, %2
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, ptr %11, align 4, !tbaa !39
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %86, %82, %79
  %90 = phi ptr [ @.str.4, %79 ], [ @.str.5, %82 ], [ @.str.6, %86 ]
  store ptr %90, ptr %7, align 8, !tbaa !47
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i1 [ false, %86 ], [ true, %89 ]
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = call i32 @fclose(ptr noundef nonnull %12)
  br label %103

95:                                               ; preds = %91
  %96 = fcmp olt float %4, 0.000000e+00
  %97 = fcmp ogt float %4, 1.000000e+00
  %98 = select i1 %97, float 1.000000e+00, float %4
  %99 = select i1 %96, float 0.000000e+00, float %98
  %100 = load i32, ptr %11, align 4, !tbaa !39
  %101 = sitofp i32 %100 to float
  %102 = fmul float %99, %101
  call void @rewind(ptr noundef nonnull %12)
  br label %103

103:                                              ; preds = %95, %93
  %104 = phi float [ undef, %93 ], [ %102, %95 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br i1 %92, label %109, label %105

105:                                              ; preds = %22, %103, %78
  %106 = phi float [ %104, %103 ], [ %75, %78 ], [ %4, %22 ]
  %107 = call zeroext i8 @MOD_meshcache_read_mdd_frame(ptr noundef nonnull %12, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %106, ptr noundef %7), !range !49
  %108 = call i32 @fclose(ptr noundef nonnull %12)
  br label %109

109:                                              ; preds = %103, %105, %76, %20
  %110 = phi i8 [ 0, %20 ], [ %107, %105 ], [ 0, %103 ], [ 0, %76 ]
  ret i8 %110
}

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

declare void @BLI_endian_switch_int32_array(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @MOD_meshcache_calc_range(float noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 4}
!35 = !{!"MDDHead", !36, i64 0, !36, i64 4}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 0}
!40 = !{!36, !36, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !37, i64 0}
!46 = distinct !{!46, !42, !43}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !37, i64 0}
!49 = !{i8 0, i8 2}
!50 = distinct !{!50, !42, !43}
