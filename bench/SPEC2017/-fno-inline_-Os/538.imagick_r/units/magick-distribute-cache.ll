; ModuleID = 'magick/distribute-cache.c'
source_filename = "magick/distribute-cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._DistributeCacheInfo = type { i32, i64, [4096 x i8], i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"magick/distribute-cache.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"distributed pixel cache\00", align 1
@GetHostname.id = internal unnamed_addr global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"cache:hosts\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define hidden ptr @AcquireDistributeCacheInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(4136) ptr @AcquireMagickMemory(i64 noundef 4136) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #14
  %6 = tail call ptr @__errno_location() #15
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #14
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 321, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #14
  %10 = call ptr @DestroyString(ptr noundef %8) #14
  call void @CatchException(ptr noundef nonnull %2) #14
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 4136) #14
  %14 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %3, i64 0, i32 4
  store i64 2880220587, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %3, i64 0, i32 3
  store i32 0, ptr %15, align 8, !tbaa !41
  %16 = tail call fastcc ptr @GetHostname(ptr noundef nonnull %15, ptr noundef %0) #17
  tail call fastcc void @ConnectPixelCacheServer(ptr noundef %0) #17
  store i32 0, ptr %3, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %3, i64 0, i32 1
  store i64 0, ptr %17, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %3, i64 0, i32 2
  %19 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef %16, i64 noundef 4096) #14
  %20 = tail call ptr @DestroyString(ptr noundef %16) #14
  %21 = load i32, ptr %3, align 8, !tbaa !42
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = tail call ptr @DestroyDistributeCacheInfo(ptr noundef nonnull %3) #17
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi ptr [ %24, %23 ], [ %3, %12 ]
  %27 = tail call i32 @IsEventLogging() #14
  %28 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %26, i64 0, i32 5
  store i32 %27, ptr %28, align 8, !tbaa !44
  ret ptr %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GetHostname(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !45 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = tail call ptr @GetImageRegistry(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef %1) #14
  store ptr %5, ptr %3, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  store i32 6668, ptr %0, align 4, !tbaa !34
  %8 = tail call ptr @AcquireString(ptr noundef nonnull @.str.6) #14
  br label %73

9:                                                ; preds = %2
  %10 = call i32 @SubstituteString(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  %11 = load ptr, ptr %3, align 8, !tbaa !46
  %12 = call ptr @StringToArgv(ptr noundef %11, ptr noundef nonnull %4) #14
  %13 = load ptr, ptr %3, align 8, !tbaa !46
  %14 = call ptr @DestroyString(ptr noundef %13) #14
  store ptr %14, ptr %3, align 8, !tbaa !46
  %15 = icmp eq ptr %12, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  store i32 6668, ptr %0, align 4, !tbaa !34
  %17 = call ptr @AcquireString(ptr noundef nonnull @.str.6) #14
  br label %73

18:                                               ; preds = %9
  %19 = load i64, ptr @GetHostname.id, align 8, !tbaa !48
  %20 = add i64 %19, 1
  store i64 %20, ptr @GetHostname.id, align 8, !tbaa !48
  %21 = load i32, ptr %4, align 4, !tbaa !34
  %22 = add nsw i32 %21, -1
  %23 = sext i32 %22 to i64
  %24 = urem i64 %19, %23
  %25 = getelementptr ptr, ptr %12, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = call ptr @AcquireString(ptr noundef %27) #14
  store ptr %28, ptr %3, align 8, !tbaa !46
  %29 = load i32, ptr %4, align 4, !tbaa !34
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %18, %31
  %32 = phi i64 [ %36, %31 ], [ 0, %18 ]
  %33 = getelementptr inbounds ptr, ptr %12, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = call ptr @DestroyString(ptr noundef %34) #14
  store ptr %35, ptr %33, align 8, !tbaa !46
  %36 = add nuw nsw i64 %32, 1
  %37 = load i32, ptr %4, align 4, !tbaa !34
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %31, label %40, !llvm.loop !49

40:                                               ; preds = %31, %18
  %41 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %12) #14
  %42 = call i32 @SubstituteString(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #14
  %43 = load ptr, ptr %3, align 8, !tbaa !46
  %44 = call ptr @StringToArgv(ptr noundef %43, ptr noundef nonnull %4) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  store i32 6668, ptr %0, align 4, !tbaa !34
  %47 = call ptr @AcquireString(ptr noundef nonnull @.str.6) #14
  br label %73

48:                                               ; preds = %40
  %49 = getelementptr inbounds ptr, ptr %44, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = call ptr @AcquireString(ptr noundef %50) #14
  %52 = getelementptr inbounds ptr, ptr %44, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = call fastcc i64 @StringToLong(ptr noundef nonnull %53) #17
  %57 = trunc i64 %56 to i32
  br label %58

58:                                               ; preds = %48, %55
  %59 = phi i32 [ %57, %55 ], [ 6668, %48 ]
  store i32 %59, ptr %0, align 4, !tbaa !34
  %60 = load i32, ptr %4, align 4, !tbaa !34
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58, %62
  %63 = phi i64 [ %67, %62 ], [ 0, %58 ]
  %64 = getelementptr inbounds ptr, ptr %44, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = call ptr @DestroyString(ptr noundef %65) #14
  store ptr %66, ptr %64, align 8, !tbaa !46
  %67 = add nuw nsw i64 %63, 1
  %68 = load i32, ptr %4, align 4, !tbaa !34
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %62, label %71, !llvm.loop !51

71:                                               ; preds = %62, %58
  %72 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %44) #14
  br label %73

73:                                               ; preds = %71, %46, %16, %7
  %74 = phi ptr [ %8, %7 ], [ %17, %16 ], [ %47, %46 ], [ %51, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConnectPixelCacheServer(ptr noundef %0) unnamed_addr #0 !PGOFuncName !52 {
  %2 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 243, i32 noundef 420, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #14
  ret void
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define hidden ptr @DestroyDistributeCacheInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !42
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @close(i32 noundef %2) #14
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %0, i64 0, i32 4
  store i64 -2880220588, ptr %7, align 8, !tbaa !38
  %8 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #14
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @DistributePixelCacheServer(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #14
  %4 = tail call ptr @__errno_location() #15
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = call ptr @GetExceptionMessage(i32 noundef %5) #14
  %7 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, i32 noundef 420, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %6) #14
  %8 = call ptr @DestroyString(ptr noundef %6) #14
  call void @CatchException(ptr noundef nonnull %3) #14
  %9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef -279) #16
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define hidden i32 @GetDistributeCacheFile(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !42
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define hidden nonnull ptr @GetDistributeCacheHostname(ptr noundef readnone %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define hidden i32 @GetDistributeCachePort(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !41
  ret i32 %3
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define hidden noundef i32 @OpenDistributePixelCache(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  tail call fastcc void @dpc_send() #17
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc void @dpc_send() unnamed_addr #9 !PGOFuncName !53 {
  %1 = tail call ptr @__errno_location() #15
  %2 = load i32, ptr %1, align 4, !tbaa !34
  %3 = icmp eq i32 %2, 4
  br i1 %3, label %4, label %5, !llvm.loop !54

4:                                                ; preds = %0, %4
  br label %4

5:                                                ; preds = %0
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define hidden noundef i64 @ReadDistributePixelCacheIndexes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #9 {
  %5 = icmp slt i64 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call fastcc void @dpc_send() #17
  br label %7

7:                                                ; preds = %4, %6
  ret i64 -1
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define hidden noundef i64 @ReadDistributePixelCachePixels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noalias nocapture noundef readnone %3) local_unnamed_addr #9 {
  %5 = icmp slt i64 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call fastcc void @dpc_send() #17
  br label %7

7:                                                ; preds = %4, %6
  ret i64 -1
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define hidden noundef i32 @RelinquishDistributePixelCache(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  tail call fastcc void @dpc_send() #17
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define hidden noundef i64 @WriteDistributePixelCacheIndexes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #9 {
  %5 = icmp slt i64 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call fastcc void @dpc_send() #17
  br label %7

7:                                                ; preds = %4, %6
  ret i64 -1
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define hidden noundef i64 @WriteDistributePixelCachePixels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noalias nocapture noundef readnone %3) local_unnamed_addr #9 {
  %5 = icmp slt i64 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call fastcc void @dpc_send() #17
  br label %7

7:                                                ; preds = %4, %6
  ret i64 -1
}

; Function Attrs: optsize
declare ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @StringToArgv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #14
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 4120}
!39 = !{!"_DistributeCacheInfo", !35, i64 0, !40, i64 8, !36, i64 16, !35, i64 4112, !40, i64 4120, !35, i64 4128}
!40 = !{!"long", !36, i64 0}
!41 = !{!39, !35, i64 4112}
!42 = !{!39, !35, i64 0}
!43 = !{!39, !40, i64 8}
!44 = !{!39, !35, i64 4128}
!45 = !{!"distribute-cache.c:GetHostname"}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !36, i64 0}
!48 = !{!40, !40, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!"distribute-cache.c:ConnectPixelCacheServer"}
!53 = !{!"distribute-cache.c:dpc_send"}
!54 = distinct !{!54, !50}
!55 = !{!"distribute-cache.c:StringToLong"}
