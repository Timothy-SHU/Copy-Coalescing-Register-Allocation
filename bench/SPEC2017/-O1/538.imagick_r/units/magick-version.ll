; ModuleID = 'magick/version.c'
source_filename = "magick/version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Copyright (C) 1999-2014 ImageMagick Studio LLC\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DPC\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"file:///usr/share/doc/ImageMagick-6/index.html\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"ImageMagick (CPU2017 version)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Q16\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"2014-05-09\00", align 1
@.str.11 = private unnamed_addr constant [143 x i8] c"ImageMagick (CPU2017 version) 6.8.9-1 Q16 generic 2014-05-09 http://www.spec.org/cpu2017 (http://www.imagemagick.org for the original version)\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Copyright: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Features: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Delegates: %s\0A\0A\00", align 1
@CRC32.crc_initial = internal unnamed_addr global i1 false, align 4
@CRC32.crc_xor = internal unnamed_addr global [256 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickCopyright() local_unnamed_addr #0 {
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickDelegates() local_unnamed_addr #0 {
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickFeatures() local_unnamed_addr #0 {
  ret ptr @.str.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagickHomeURL() local_unnamed_addr #1 {
  %1 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %1) #5
  %2 = tail call ptr @AcquireExceptionInfo() #5
  %3 = tail call ptr @GetConfigurePaths(ptr noundef nonnull @.str.3, ptr noundef %2) #5
  %4 = tail call ptr @DestroyExceptionInfo(ptr noundef %2) #5
  %5 = icmp eq ptr %3, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %0
  %7 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %3) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6, %14
  %10 = phi ptr [ %15, %14 ], [ %7, %6 ]
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #5
  %12 = call i32 @IsPathAccessible(ptr noundef nonnull %1) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %3) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !34

17:                                               ; preds = %14, %9, %6, %0
  %18 = phi ptr [ @.str.4, %0 ], [ @.str.4, %6 ], [ @.str.4, %14 ], [ %1, %9 ]
  %19 = call ptr @ConstantString(ptr noundef nonnull %18) #5
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %1) #5
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare ptr @GetConfigurePaths(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #3

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #3

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickPackageName() local_unnamed_addr #0 {
  ret ptr @.str.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @GetMagickQuantumDepth(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i64 16, ptr %0, align 8, !tbaa !37
  br label %4

4:                                                ; preds = %3, %1
  ret ptr @.str.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @GetMagickQuantumRange(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i64 65535, ptr %0, align 8, !tbaa !37
  br label %4

4:                                                ; preds = %3, %1
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GetMagickReleaseDate() local_unnamed_addr #0 {
  ret ptr @.str.10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickSignature(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @AcquireStringInfo(i64 noundef 4096) #5
  %3 = tail call ptr @GetStringInfoDatum(ptr noundef %2) #5
  store i32 16, ptr %3, align 1
  %4 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 0, ptr %4, align 1
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 2, ptr %5, align 1
  %6 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 1, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %3, i64 16
  %8 = tail call ptr @GetStringInfoDatum(ptr noundef %2) #5
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  tail call void @SetStringInfoLength(ptr noundef %2, i64 noundef %11) #5
  %12 = icmp eq ptr %0, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @ConcatenateStringInfo(ptr noundef %2, ptr noundef nonnull %0) #5
  br label %14

14:                                               ; preds = %13, %1
  %15 = tail call ptr @GetStringInfoDatum(ptr noundef %2) #5
  %16 = tail call i64 @GetStringInfoLength(ptr noundef %2) #5
  %17 = load i1, ptr @CRC32.crc_initial, align 4
  br i1 %17, label %36, label %18

18:                                               ; preds = %14, %31
  %19 = phi i64 [ %33, %31 ], [ 0, %14 ]
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %29, %21 ]
  %23 = phi i32 [ %20, %18 ], [ %28, %21 ]
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = lshr i32 %23, 1
  %27 = xor i32 %26, -306674912
  %28 = select i1 %25, i32 %26, i32 %27
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %31, label %21, !llvm.loop !41

31:                                               ; preds = %21
  %32 = getelementptr inbounds [256 x i32], ptr @CRC32.crc_xor, i64 0, i64 %19
  store i32 %28, ptr %32, align 4, !tbaa !42
  %33 = add nuw nsw i64 %19, 1
  %34 = icmp eq i64 %33, 256
  br i1 %34, label %35, label %18, !llvm.loop !44

35:                                               ; preds = %31
  store i1 true, ptr @CRC32.crc_initial, align 4
  br label %36

36:                                               ; preds = %35, %14
  %37 = icmp sgt i64 %16, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %36, %38
  %39 = phi i32 [ %49, %38 ], [ -1, %36 ]
  %40 = phi i64 [ %50, %38 ], [ 0, %36 ]
  %41 = getelementptr inbounds i8, ptr %15, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !45
  %43 = trunc i32 %39 to i8
  %44 = xor i8 %42, %43
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds [256 x i32], ptr @CRC32.crc_xor, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !42
  %48 = lshr i32 %39, 8
  %49 = xor i32 %47, %48
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, %16
  br i1 %51, label %52, label %38, !llvm.loop !46

52:                                               ; preds = %38
  %53 = xor i32 %49, -1
  br label %54

54:                                               ; preds = %52, %36
  %55 = phi i32 [ 0, %36 ], [ %53, %52 ]
  %56 = tail call ptr @DestroyStringInfo(ptr noundef %2) #5
  ret i32 %55
}

declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #3

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ConcatenateStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @GetMagickVersion(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i64 1673, ptr %0, align 8, !tbaa !37
  br label %4

4:                                                ; preds = %3, %1
  ret ptr @.str.11
}

; Function Attrs: nounwind uwtable
define dso_local void @ListMagickVersion(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #5
  %3 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str) #5
  %4 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2) #5
  %5 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1) #5
  ret void
}

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !35, !36}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !39, i64 0}
!44 = distinct !{!44, !35, !36}
!45 = !{!39, !39, i64 0}
!46 = distinct !{!46, !35, !36}
