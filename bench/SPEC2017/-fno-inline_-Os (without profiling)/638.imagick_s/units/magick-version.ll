; ModuleID = 'magick/version.c'
source_filename = "magick/version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Copyright (C) 1999-2014 ImageMagick Studio LLC\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DPC OpenMP\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"file:///usr/share/doc/ImageMagick-6/index.html\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"ImageMagick (CPU2017 version)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Q16\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"2014-05-09\00", align 1
@CRC32.crc_initial = internal unnamed_addr global i1 false, align 4
@CRC32.crc_xor = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [143 x i8] c"ImageMagick (CPU2017 version) 6.8.9-1 Q16 generic 2014-05-09 http://www.spec.org/cpu2017 (http://www.imagemagick.org for the original version)\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Copyright: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Features: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Delegates: %s\0A\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickCopyright() local_unnamed_addr #0 {
  ret ptr @.str
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickDelegates() local_unnamed_addr #0 {
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickFeatures() local_unnamed_addr #0 {
  ret ptr @.str.2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagickHomeURL() local_unnamed_addr #1 {
  %1 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %1) #6
  %2 = tail call ptr @AcquireExceptionInfo() #7
  %3 = tail call ptr @GetConfigurePaths(ptr noundef nonnull @.str.3, ptr noundef %2) #7
  %4 = tail call ptr @DestroyExceptionInfo(ptr noundef %2) #7
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = tail call ptr @ConstantString(ptr noundef nonnull @.str.4) #7
  br label %23

8:                                                ; preds = %0
  %9 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %3) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %8, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %8 ]
  %13 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #7
  %14 = call i32 @IsPathAccessible(ptr noundef nonnull %1) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call ptr @ConstantString(ptr noundef nonnull %1) #7
  br label %23

18:                                               ; preds = %11
  %19 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %3) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !6

21:                                               ; preds = %18, %8
  %22 = call ptr @ConstantString(ptr noundef nonnull @.str.4) #7
  br label %23

23:                                               ; preds = %21, %16, %6
  %24 = phi ptr [ %7, %6 ], [ %17, %16 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %1) #6
  ret ptr %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetConfigurePaths(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickPackageName() local_unnamed_addr #0 {
  ret ptr @.str.7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @GetMagickQuantumDepth(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i64 16, ptr %0, align 8, !tbaa !8
  br label %4

4:                                                ; preds = %3, %1
  ret ptr @.str.8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @GetMagickQuantumRange(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i64 65535, ptr %0, align 8, !tbaa !8
  br label %4

4:                                                ; preds = %3, %1
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickReleaseDate() local_unnamed_addr #0 {
  ret ptr @.str.10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickSignature(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @AcquireStringInfo(i64 noundef 4096) #7
  %3 = tail call ptr @GetStringInfoDatum(ptr noundef %2) #7
  store <4 x i32> <i32 16, i32 0, i32 2, i32 1>, ptr %3, align 1
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = tail call ptr @GetStringInfoDatum(ptr noundef %2) #7
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  tail call void @SetStringInfoLength(ptr noundef %2, i64 noundef %8) #7
  %9 = icmp eq ptr %0, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @ConcatenateStringInfo(ptr noundef %2, ptr noundef nonnull %0) #7
  br label %11

11:                                               ; preds = %10, %1
  %12 = tail call ptr @GetStringInfoDatum(ptr noundef %2) #7
  %13 = tail call i64 @GetStringInfoLength(ptr noundef %2) #7
  %14 = tail call fastcc i32 @CRC32(ptr noundef %12, i64 noundef %13) #8
  %15 = tail call ptr @DestroyStringInfo(ptr noundef %2) #7
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConcatenateStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @CRC32(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #5 {
  %3 = load i1, ptr @CRC32.crc_initial, align 4
  br i1 %3, label %22, label %4

4:                                                ; preds = %2, %17
  %5 = phi i64 [ %19, %17 ], [ 0, %2 ]
  %6 = trunc i64 %5 to i32
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %15, %7 ]
  %9 = phi i32 [ %6, %4 ], [ %14, %7 ]
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = lshr i32 %9, 1
  %13 = xor i32 %12, -306674912
  %14 = select i1 %11, i32 %12, i32 %13
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %7, !llvm.loop !12

17:                                               ; preds = %7
  %18 = getelementptr inbounds [256 x i32], ptr @CRC32.crc_xor, i64 0, i64 %5
  store i32 %14, ptr %18, align 4, !tbaa !13
  %19 = add nuw nsw i64 %5, 1
  %20 = icmp eq i64 %19, 256
  br i1 %20, label %21, label %4, !llvm.loop !15

21:                                               ; preds = %17
  store i1 true, ptr @CRC32.crc_initial, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = icmp sgt i64 %1, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %35, %24 ], [ -1, %22 ]
  %26 = phi i64 [ %36, %24 ], [ 0, %22 ]
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !16
  %29 = trunc i32 %25 to i8
  %30 = xor i8 %28, %29
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i32], ptr @CRC32.crc_xor, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %34 = lshr i32 %25, 8
  %35 = xor i32 %33, %34
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, %1
  br i1 %37, label %38, label %24, !llvm.loop !17

38:                                               ; preds = %24
  %39 = xor i32 %35, -1
  br label %40

40:                                               ; preds = %38, %22
  %41 = phi i32 [ 0, %22 ], [ %39, %38 ]
  ret i32 %41
}

; Function Attrs: optsize
declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @GetMagickVersion(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i64 1673, ptr %0, align 8, !tbaa !8
  br label %4

4:                                                ; preds = %3, %1
  ret ptr @.str.11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ListMagickVersion(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @GetMagickVersion(ptr noundef null) #8
  %3 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #7
  %4 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str) #7
  %5 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2) #7
  %6 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1) #7
  ret void
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !7}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !10, i64 0}
!15 = distinct !{!15, !7}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !7}
