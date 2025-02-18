; ModuleID = 'blender/source/blender/modifiers/intern/MOD_meshcache_pc2.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_meshcache_pc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PC2Head = type { [12 x i8], i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Failed to seek frame\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unknown error opening file\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Missing header\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"POINTCACHE2\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Invalid header\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Vertex count mismatch\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Invalid frame total\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_pc2_index(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PC2Head, align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  %9 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 32, i64 noundef 1, ptr noundef %0)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %6
  %12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %7, ptr noundef nonnull dereferenceable(12) @.str.4, i64 12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %68

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %68, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = mul nsw i32 %24, %3
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 12
  %28 = tail call i32 @fseek(ptr noundef %0, i64 noundef %27, i32 noundef 1)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %22
  %31 = fcmp ult float %4, 1.000000e+00
  br i1 %31, label %41, label %32

32:                                               ; preds = %30
  %33 = icmp eq i32 %24, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %38, %34 ], [ %24, %32 ]
  %36 = phi ptr [ %39, %34 ], [ %1, %32 ]
  %37 = tail call i64 @fread(ptr noundef %36, i64 noundef 12, i64 noundef 1, ptr noundef %0)
  %38 = add i32 %35, -1
  %39 = getelementptr inbounds float, ptr %36, i64 3
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %70, label %34, !llvm.loop !41

41:                                               ; preds = %30
  %42 = fsub float 1.000000e+00, %4
  %43 = icmp eq i32 %24, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %46 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi i32 [ %24, %44 ], [ %65, %47 ]
  %49 = phi ptr [ %1, %44 ], [ %66, %47 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %50 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 12, i64 noundef 1, ptr noundef %0)
  %51 = load float, ptr %49, align 4, !tbaa !44
  %52 = load float, ptr %8, align 4, !tbaa !44
  %53 = fmul float %52, %4
  %54 = tail call float @llvm.fmuladd.f32(float %51, float %42, float %53)
  store float %54, ptr %49, align 4, !tbaa !44
  %55 = getelementptr inbounds float, ptr %49, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !44
  %57 = load float, ptr %45, align 4, !tbaa !44
  %58 = fmul float %57, %4
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %42, float %58)
  store float %59, ptr %55, align 4, !tbaa !44
  %60 = getelementptr inbounds float, ptr %49, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !44
  %62 = load float, ptr %46, align 4, !tbaa !44
  %63 = fmul float %62, %4
  %64 = tail call float @llvm.fmuladd.f32(float %61, float %42, float %63)
  store float %64, ptr %60, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  %65 = add i32 %48, -1
  %66 = getelementptr inbounds float, ptr %49, i64 3
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %70, label %47, !llvm.loop !45

68:                                               ; preds = %22, %18, %14, %11, %6
  %69 = phi ptr [ @.str.3, %6 ], [ @.str.5, %11 ], [ @.str.6, %14 ], [ @.str.7, %18 ], [ @.str, %22 ]
  store ptr %69, ptr %5, align 8, !tbaa !46
  br label %70

70:                                               ; preds = %34, %47, %68, %32, %41
  %71 = phi i8 [ 1, %41 ], [ 1, %32 ], [ 0, %68 ], [ 1, %47 ], [ 1, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  ret i8 %71
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
define dso_local noundef zeroext i8 @MOD_meshcache_read_pc2_frame(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #4 {
  %7 = alloca %struct.PC2Head, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  %10 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 32, i64 noundef 1, ptr noundef %0)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %6
  %13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %7, ptr noundef nonnull dereferenceable(12) @.str.4, i64 12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !40
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !40
  call void @MOD_meshcache_calc_range(float noundef %4, i8 noundef zeroext %3, i32 noundef %25, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  %26 = load i32, ptr %8, align 4, !tbaa !48
  %27 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !48
  %29 = icmp eq i32 %26, %28
  %30 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0)
  %31 = icmp eq i32 %30, 0
  br i1 %29, label %32, label %38

32:                                               ; preds = %23
  br i1 %31, label %33, label %37

33:                                               ; preds = %32
  %34 = load i32, ptr %8, align 4, !tbaa !48
  %35 = call zeroext i8 @MOD_meshcache_read_pc2_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %34, float noundef 1.000000e+00, ptr noundef %5), !range !49
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %33, %32
  br label %54

38:                                               ; preds = %23
  br i1 %31, label %39, label %51

39:                                               ; preds = %38
  %40 = load i32, ptr %8, align 4, !tbaa !48
  %41 = call zeroext i8 @MOD_meshcache_read_pc2_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %40, float noundef 1.000000e+00, ptr noundef %5), !range !49
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, ptr %27, align 4, !tbaa !48
  %48 = load float, ptr %9, align 4, !tbaa !44
  %49 = call zeroext i8 @MOD_meshcache_read_pc2_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %47, float noundef %48, ptr noundef %5), !range !49
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %43, %39, %38
  br label %54

52:                                               ; preds = %19, %15, %12, %6
  %53 = phi ptr [ @.str.3, %6 ], [ @.str.5, %12 ], [ @.str.6, %15 ], [ @.str.7, %19 ]
  store ptr %53, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  br label %54

54:                                               ; preds = %52, %46, %33, %51, %37
  %55 = phi i8 [ 0, %37 ], [ 0, %51 ], [ 1, %33 ], [ 1, %46 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  ret i8 %55
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_pc2_times(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %4, float noundef %5, i8 noundef zeroext %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #4 {
  %9 = alloca %struct.PC2Head, align 4
  %10 = alloca %struct.PC2Head, align 4
  %11 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #10
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @strerror(i32 noundef %15) #9
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ @.str.2, %13 ]
  store ptr %20, ptr %7, align 8, !tbaa !46
  br label %98

21:                                               ; preds = %8
  switch i8 %6, label %63 [
    i8 0, label %94
    i8 1, label %22
  ]

22:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #9
  %23 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 32, i64 noundef 1, ptr noundef nonnull %11)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %9, ptr noundef nonnull dereferenceable(12) @.str.4, i64 12)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.PC2Head, ptr %9, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !34
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.PC2Head, ptr %9, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !40
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28, %25, %22
  %37 = phi ptr [ @.str.3, %22 ], [ @.str.5, %25 ], [ @.str.6, %28 ], [ @.str.7, %32 ]
  store ptr %37, ptr %7, align 8, !tbaa !46
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i1 [ false, %32 ], [ true, %36 ]
  br i1 %39, label %58, label %40

40:                                               ; preds = %38
  %41 = fdiv float %4, %5
  %42 = getelementptr inbounds %struct.PC2Head, ptr %9, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !50
  %44 = fsub float %41, %43
  %45 = getelementptr inbounds %struct.PC2Head, ptr %9, i64 0, i32 4
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = fdiv float %44, %46
  %48 = getelementptr inbounds %struct.PC2Head, ptr %9, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !40
  %50 = sitofp i32 %49 to float
  %51 = fcmp ult float %47, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = add nsw i32 %49, -1
  %54 = sitofp i32 %53 to float
  br label %58

55:                                               ; preds = %40
  %56 = fcmp olt float %47, 0.000000e+00
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %52, %55, %57, %38
  %59 = phi float [ undef, %38 ], [ %54, %52 ], [ 0.000000e+00, %57 ], [ %47, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #9
  br i1 %39, label %60, label %62

60:                                               ; preds = %58
  %61 = tail call i32 @fclose(ptr noundef nonnull %11)
  br label %98

62:                                               ; preds = %58
  tail call void @rewind(ptr noundef nonnull %11)
  br label %94

63:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #9
  %64 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 32, i64 noundef 1, ptr noundef nonnull %11)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %10, ptr noundef nonnull dereferenceable(12) @.str.4, i64 12)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.PC2Head, ptr %10, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !34
  %72 = icmp eq i32 %71, %2
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.PC2Head, ptr %10, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !40
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69, %66, %63
  %78 = phi ptr [ @.str.3, %63 ], [ @.str.5, %66 ], [ @.str.6, %69 ], [ @.str.7, %73 ]
  store ptr %78, ptr %7, align 8, !tbaa !46
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i1 [ false, %73 ], [ true, %77 ]
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = tail call i32 @fclose(ptr noundef nonnull %11)
  br label %92

83:                                               ; preds = %79
  %84 = fcmp olt float %4, 0.000000e+00
  %85 = fcmp ogt float %4, 1.000000e+00
  %86 = select i1 %85, float 1.000000e+00, float %4
  %87 = select i1 %84, float 0.000000e+00, float %86
  %88 = getelementptr inbounds %struct.PC2Head, ptr %10, i64 0, i32 5
  %89 = load i32, ptr %88, align 4, !tbaa !40
  %90 = sitofp i32 %89 to float
  %91 = fmul float %87, %90
  tail call void @rewind(ptr noundef nonnull %11)
  br label %92

92:                                               ; preds = %83, %81
  %93 = phi float [ undef, %81 ], [ %91, %83 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  br i1 %80, label %98, label %94

94:                                               ; preds = %21, %92, %62
  %95 = phi float [ %93, %92 ], [ %59, %62 ], [ %4, %21 ]
  %96 = tail call zeroext i8 @MOD_meshcache_read_pc2_frame(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %95, ptr noundef %7), !range !49
  %97 = tail call i32 @fclose(ptr noundef nonnull %11)
  br label %98

98:                                               ; preds = %92, %94, %60, %19
  %99 = phi i8 [ 0, %19 ], [ %96, %94 ], [ 0, %92 ], [ 0, %60 ]
  ret i8 %99
}

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

declare void @MOD_meshcache_calc_range(float noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

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
!34 = !{!35, !38, i64 16}
!35 = !{!"PC2Head", !36, i64 0, !38, i64 12, !38, i64 16, !39, i64 20, !39, i64 24, !38, i64 28}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"int", !36, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!35, !38, i64 28}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!39, !39, i64 0}
!45 = distinct !{!45, !42, !43}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !36, i64 0}
!48 = !{!38, !38, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{!35, !39, i64 20}
!51 = !{!35, !39, i64 24}
