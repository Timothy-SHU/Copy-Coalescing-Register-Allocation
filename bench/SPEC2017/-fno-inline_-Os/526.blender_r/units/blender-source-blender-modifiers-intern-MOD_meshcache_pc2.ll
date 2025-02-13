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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_pc2_index(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PC2Head, align 4
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  %9 = call fastcc zeroext i8 @meshcache_read_pc2_head(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7, ptr noundef %5) #11, !range !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !35
  %14 = mul nsw i32 %13, %3
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 12
  %17 = tail call i32 @fseek(ptr noundef %0, i64 noundef %16, i32 noundef 1) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store ptr @.str, ptr %5, align 8, !tbaa !41
  br label %56

20:                                               ; preds = %11
  %21 = fcmp ult float %4, 1.000000e+00
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %13, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %28, %24 ], [ %13, %22 ]
  %26 = phi ptr [ %29, %24 ], [ %1, %22 ]
  %27 = tail call i64 @fread(ptr noundef %26, i64 noundef 12, i64 noundef 1, ptr noundef %0) #11
  %28 = add i32 %25, -1
  %29 = getelementptr inbounds float, ptr %26, i64 3
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %56, label %24, !llvm.loop !43

31:                                               ; preds = %20
  %32 = fsub float 1.000000e+00, %4
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %36 = insertelement <2 x float> poison, float %32, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = insertelement <2 x float> poison, float %4, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  br label %40

40:                                               ; preds = %34, %40
  %41 = phi i32 [ %13, %34 ], [ %53, %40 ]
  %42 = phi ptr [ %1, %34 ], [ %54, %40 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %43 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 12, i64 noundef 1, ptr noundef %0) #11
  %44 = load <2 x float>, ptr %42, align 4, !tbaa !45
  %45 = load <2 x float>, ptr %8, align 8, !tbaa !45
  %46 = fmul <2 x float> %45, %39
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %37, <2 x float> %46)
  store <2 x float> %47, ptr %42, align 4, !tbaa !45
  %48 = getelementptr inbounds float, ptr %42, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !45
  %50 = load float, ptr %35, align 8, !tbaa !45
  %51 = fmul float %50, %4
  %52 = tail call float @llvm.fmuladd.f32(float %49, float %32, float %51)
  store float %52, ptr %48, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %53 = add i32 %41, -1
  %54 = getelementptr inbounds float, ptr %42, i64 3
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %40, !llvm.loop !46

56:                                               ; preds = %24, %40, %22, %31, %6, %19
  %57 = phi i8 [ 0, %19 ], [ 0, %6 ], [ 1, %31 ], [ 1, %22 ], [ 1, %40 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  ret i8 %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @meshcache_read_pc2_head(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !47 {
  %5 = tail call i64 @fread(ptr noundef %2, i64 noundef 32, i64 noundef 1, ptr noundef %0) #11
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(12) @.str.4) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.PC2Head, ptr %2, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !35
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PC2Head, ptr %2, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %10, %7, %4
  %19 = phi ptr [ @.str.3, %4 ], [ @.str.5, %7 ], [ @.str.6, %10 ], [ @.str.7, %14 ]
  store ptr %19, ptr %3, align 8, !tbaa !41
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i8 [ 1, %14 ], [ 0, %18 ]
  ret i8 %21
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_pc2_frame(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #4 {
  %7 = alloca [2 x i32], align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %9 = call fastcc zeroext i8 @meshcache_read_pc2_range(ptr noundef %0, i32 noundef %2, float noundef %4, i8 noundef zeroext %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %5) #11, !range !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 4, !tbaa !49
  %13 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = icmp eq i32 %12, %14
  %16 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #11
  %17 = icmp eq i32 %16, 0
  br i1 %15, label %18, label %24

18:                                               ; preds = %11
  br i1 %17, label %19, label %23

19:                                               ; preds = %18
  %20 = load i32, ptr %7, align 4, !tbaa !49
  %21 = call zeroext i8 @MOD_meshcache_read_pc2_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %20, float noundef 1.000000e+00, ptr noundef %5) #11, !range !34
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19, %18
  br label %38

24:                                               ; preds = %11
  br i1 %17, label %25, label %37

25:                                               ; preds = %24
  %26 = load i32, ptr %7, align 4, !tbaa !49
  %27 = call zeroext i8 @MOD_meshcache_read_pc2_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %26, float noundef 1.000000e+00, ptr noundef %5) #11, !range !34
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, ptr %13, align 4, !tbaa !49
  %34 = load float, ptr %8, align 4, !tbaa !45
  %35 = call zeroext i8 @MOD_meshcache_read_pc2_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %33, float noundef %34, ptr noundef %5) #11, !range !34
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %29, %25, %24
  br label %38

38:                                               ; preds = %32, %19, %6, %37, %23
  %39 = phi i8 [ 0, %23 ], [ 0, %37 ], [ 0, %6 ], [ 1, %19 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  ret i8 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @meshcache_read_pc2_range(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #4 !PGOFuncName !50 {
  %8 = alloca %struct.PC2Head, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  %9 = call fastcc zeroext i8 @meshcache_read_pc2_head(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %6) #11, !range !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PC2Head, ptr %8, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !48
  tail call void @MOD_meshcache_calc_range(float noundef %2, i8 noundef zeroext %3, i32 noundef %13, ptr noundef %4, ptr noundef %5) #13
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i8 [ 1, %11 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @MOD_meshcache_read_pc2_times(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %4, float noundef %5, i8 noundef zeroext %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #4 {
  %9 = alloca float, align 4
  %10 = alloca %struct.PC2Head, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %11 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.1) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #14
  %15 = load i32, ptr %14, align 4, !tbaa !49
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @strerror(i32 noundef %15) #13
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ @.str.2, %13 ]
  store ptr %20, ptr %7, align 8, !tbaa !41
  br label %47

21:                                               ; preds = %8
  switch i8 %6, label %29 [
    i8 0, label %43
    i8 1, label %22
  ]

22:                                               ; preds = %21
  %23 = call fastcc zeroext i8 @meshcache_read_pc2_range_from_time(ptr noundef nonnull %11, i32 noundef %2, float noundef %4, float noundef %5, ptr noundef nonnull %9, ptr noundef %7) #11, !range !34
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @fclose(ptr noundef nonnull %11) #11
  br label %47

27:                                               ; preds = %22
  tail call void @rewind(ptr noundef nonnull %11) #11
  %28 = load float, ptr %9, align 4, !tbaa !45
  br label %43

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #10
  %30 = call fastcc zeroext i8 @meshcache_read_pc2_head(ptr noundef nonnull %11, i32 noundef %2, ptr noundef nonnull %10, ptr noundef %7) #11, !range !34
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 @fclose(ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  br label %47

34:                                               ; preds = %29
  %35 = fcmp olt float %4, 0.000000e+00
  %36 = fcmp ogt float %4, 1.000000e+00
  %37 = select i1 %36, float 1.000000e+00, float %4
  %38 = select i1 %35, float 0.000000e+00, float %37
  %39 = getelementptr inbounds %struct.PC2Head, ptr %10, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !48
  %41 = sitofp i32 %40 to float
  %42 = fmul float %38, %41
  tail call void @rewind(ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  br label %43

43:                                               ; preds = %21, %34, %27
  %44 = phi float [ %42, %34 ], [ %28, %27 ], [ %4, %21 ]
  %45 = tail call zeroext i8 @MOD_meshcache_read_pc2_frame(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, float noundef %44, ptr noundef %7) #11, !range !34
  %46 = tail call i32 @fclose(ptr noundef nonnull %11) #11
  br label %47

47:                                               ; preds = %32, %43, %25, %19
  %48 = phi i8 [ 0, %19 ], [ %45, %43 ], [ 0, %25 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  ret i8 %48
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @meshcache_read_pc2_range_from_time(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !PGOFuncName !51 {
  %7 = alloca %struct.PC2Head, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  %8 = call fastcc zeroext i8 @meshcache_read_pc2_head(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, ptr noundef %5) #11, !range !34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = fdiv float %2, %3
  %12 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !52
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 4
  %16 = load float, ptr %15, align 4, !tbaa !53
  %17 = fdiv float %14, %16
  %18 = getelementptr inbounds %struct.PC2Head, ptr %7, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = sitofp i32 %19 to float
  %21 = fcmp ult float %17, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = add nsw i32 %19, -1
  %24 = sitofp i32 %23 to float
  br label %28

25:                                               ; preds = %10
  %26 = fcmp olt float %17, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %25, %27, %22
  %29 = phi float [ %24, %22 ], [ 0.000000e+00, %27 ], [ %17, %25 ]
  store float %29, ptr %4, align 4, !tbaa !45
  br label %30

30:                                               ; preds = %6, %28
  %31 = phi i8 [ 1, %28 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  ret i8 %31
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @MOD_meshcache_calc_range(float noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(none) }

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
!35 = !{!36, !39, i64 16}
!36 = !{!"PC2Head", !37, i64 0, !39, i64 12, !39, i64 16, !40, i64 20, !40, i64 24, !39, i64 28}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !37, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!40, !40, i64 0}
!46 = distinct !{!46, !44}
!47 = !{!"MOD_meshcache_pc2.c:meshcache_read_pc2_head"}
!48 = !{!36, !39, i64 28}
!49 = !{!39, !39, i64 0}
!50 = !{!"MOD_meshcache_pc2.c:meshcache_read_pc2_range"}
!51 = !{!"MOD_meshcache_pc2.c:meshcache_read_pc2_range_from_time"}
!52 = !{!36, !40, i64 20}
!53 = !{!36, !40, i64 24}
