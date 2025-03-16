; ModuleID = 'src/tif_strip.c'
source_filename = "src/tif_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [32 x i8] c"%u: Sample out of range, max %u\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFComputeStrip(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = udiv i32 %1, %5
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %8 = load i16, ptr %7, align 2, !tbaa !14
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = zext i16 %2 to i32
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %13 = load i16, ptr %12, align 2, !tbaa !15
  %14 = icmp ugt i16 %13, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = zext i16 %13 to i32
  %17 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef %11, i32 noundef %16) #4
  br label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = mul i32 %20, %11
  %22 = add i32 %21, %6
  br label %23

23:                                               ; preds = %3, %18, %15
  %24 = phi i32 [ 0, %15 ], [ %22, %18 ], [ %6, %3 ]
  ret i32 %24
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFNumberOfStrips(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, -1
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !20
  br i1 %4, label %7, label %10

7:                                                ; preds = %1
  %8 = icmp ne i32 %6, 0
  %9 = zext i1 %8 to i32
  br label %14

10:                                               ; preds = %1
  %11 = add i32 %3, -1
  %12 = add i32 %11, %6
  %13 = udiv i32 %12, %3
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %9, %7 ], [ %13, %10 ]
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %17 = load i16, ptr %16, align 2, !tbaa !14
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %21 = load i16, ptr %20, align 2, !tbaa !15
  %22 = zext i16 %21 to i32
  %23 = mul i32 %15, %22
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ %23, %19 ], [ %15, %14 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFVStripSize(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !20
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ %1, %2 ]
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %10 = load i16, ptr %9, align 2, !tbaa !14
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %51

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %14 = load i16, ptr %13, align 2, !tbaa !21
  %15 = icmp eq i16 %14, 6
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !22
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  %25 = load i16, ptr %24, align 8, !tbaa !24
  %26 = zext i16 %25 to i32
  %27 = add i32 %23, -1
  %28 = add i32 %27, %26
  %29 = freeze i32 %28
  %30 = urem i32 %29, %26
  %31 = sub nuw i32 %29, %30
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %33 = load i16, ptr %32, align 4, !tbaa !25
  %34 = zext i16 %33 to i32
  %35 = mul nsw i32 %31, %34
  %36 = add i32 %35, 7
  %37 = lshr i32 %36, 3
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !24
  %40 = zext i16 %39 to i32
  %41 = mul nuw nsw i32 %40, %26
  %42 = add i32 %8, -1
  %43 = add i32 %42, %40
  %44 = freeze i32 %43
  %45 = urem i32 %44, %40
  %46 = sub nuw i32 %44, %45
  %47 = mul i32 %46, %37
  %48 = udiv i32 %47, %41
  %49 = shl i32 %48, 1
  %50 = add i32 %47, %49
  br label %68

51:                                               ; preds = %16, %12, %7
  %52 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %53 = load i16, ptr %52, align 4, !tbaa !25
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !23
  %57 = mul i32 %56, %54
  br i1 %11, label %58, label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %60 = load i16, ptr %59, align 2, !tbaa !15
  %61 = zext i16 %60 to i32
  %62 = mul nsw i32 %57, %61
  br label %63

63:                                               ; preds = %51, %58
  %64 = phi i32 [ %62, %58 ], [ %57, %51 ]
  %65 = add i32 %64, 7
  %66 = lshr i32 %65, 3
  %67 = mul i32 %66, %8
  br label %68

68:                                               ; preds = %63, %21
  %69 = phi i32 [ %67, %63 ], [ %50, %21 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFScanlineSize(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !25
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = mul i32 %6, %4
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %9 = load i16, ptr %8, align 2, !tbaa !14
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %13 = load i16, ptr %12, align 2, !tbaa !15
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %7, %14
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i32 [ %15, %11 ], [ %7, %1 ]
  %18 = add i32 %17, 7
  %19 = lshr i32 %18, 3
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFStripSize(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !20
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %5)
  %7 = icmp eq i32 %6, -1
  %8 = select i1 %7, i32 %5, i32 %6
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %10 = load i16, ptr %9, align 2, !tbaa !14
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %14 = load i16, ptr %13, align 2, !tbaa !21
  %15 = icmp eq i16 %14, 6
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !22
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  %25 = load i16, ptr %24, align 8, !tbaa !24
  %26 = zext i16 %25 to i32
  %27 = add i32 %23, -1
  %28 = add i32 %27, %26
  %29 = freeze i32 %28
  %30 = urem i32 %29, %26
  %31 = sub nuw i32 %29, %30
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %33 = load i16, ptr %32, align 4, !tbaa !25
  %34 = zext i16 %33 to i32
  %35 = mul nsw i32 %31, %34
  %36 = add i32 %35, 7
  %37 = lshr i32 %36, 3
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !24
  %40 = zext i16 %39 to i32
  %41 = mul nuw nsw i32 %40, %26
  %42 = add i32 %8, -1
  %43 = add i32 %42, %40
  %44 = freeze i32 %43
  %45 = urem i32 %44, %40
  %46 = sub nuw i32 %44, %45
  %47 = mul i32 %46, %37
  %48 = udiv i32 %47, %41
  %49 = shl i32 %48, 1
  %50 = add i32 %47, %49
  br label %68

51:                                               ; preds = %16, %12, %1
  %52 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %53 = load i16, ptr %52, align 4, !tbaa !25
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !23
  %57 = mul i32 %56, %54
  br i1 %11, label %58, label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %60 = load i16, ptr %59, align 2, !tbaa !15
  %61 = zext i16 %60 to i32
  %62 = mul nsw i32 %57, %61
  br label %63

63:                                               ; preds = %58, %51
  %64 = phi i32 [ %62, %58 ], [ %57, %51 ]
  %65 = add i32 %64, 7
  %66 = lshr i32 %65, 3
  %67 = mul i32 %66, %8
  br label %68

68:                                               ; preds = %21, %63
  %69 = phi i32 [ %67, %63 ], [ %50, %21 ]
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFDefaultStripSize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 35
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef %1) #4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @_TIFFDefaultStripSize(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %4, label %27

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !25
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !23
  %10 = mul i32 %9, %7
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %12 = load i16, ptr %11, align 2, !tbaa !14
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %16 = load i16, ptr %15, align 2, !tbaa !15
  %17 = zext i16 %16 to i32
  %18 = mul nsw i32 %10, %17
  br label %19

19:                                               ; preds = %4, %14
  %20 = phi i32 [ %18, %14 ], [ %10, %4 ]
  %21 = add i32 %20, 7
  %22 = lshr i32 %21, 3
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 1)
  %24 = udiv i32 8192, %23
  %25 = icmp ugt i32 %21, 65543
  %26 = select i1 %25, i32 1, i32 %24
  br label %27

27:                                               ; preds = %19, %2
  %28 = phi i32 [ %26, %19 ], [ %1, %2 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFRasterScanlineSize(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !25
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = mul i32 %6, %4
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %9 = load i16, ptr %8, align 2, !tbaa !14
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %13 = load i16, ptr %12, align 2, !tbaa !15
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %7, %14
  %16 = add i32 %15, 7
  %17 = lshr i32 %16, 3
  br label %25

18:                                               ; preds = %1
  %19 = add i32 %7, 7
  %20 = lshr i32 %19, 3
  %21 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %22 = load i16, ptr %21, align 2, !tbaa !15
  %23 = zext i16 %22 to i32
  %24 = mul nsw i32 %20, %23
  br label %25

25:                                               ; preds = %18, %11
  %26 = phi i32 [ %17, %11 ], [ %24, %18 ]
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 68}
!6 = !{!"", !7, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 52, !10, i64 54, !10, i64 56, !10, i64 58, !10, i64 60, !10, i64 62, !10, i64 64, !10, i64 66, !9, i64 68, !10, i64 72, !10, i64 74, !11, i64 80, !11, i64 88, !12, i64 96, !12, i64 100, !10, i64 104, !10, i64 106, !12, i64 108, !12, i64 112, !7, i64 116, !7, i64 120, !7, i64 144, !10, i64 148, !13, i64 152, !11, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !9, i64 240, !9, i64 244, !13, i64 248, !13, i64 256, !10, i64 264, !13, i64 272, !13, i64 280, !7, i64 288, !10, i64 292, !13, i64 296, !13, i64 304, !13, i64 312, !7, i64 320, !10, i64 344, !10, i64 346, !7, i64 348, !9, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !13, i64 384, !9, i64 392, !13, i64 400, !9, i64 408, !13, i64 416, !9, i64 424, !9, i64 428, !13, i64 432, !13, i64 440, !12, i64 448, !13, i64 456, !13, i64 464}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!6, !10, i64 106}
!15 = !{!6, !10, i64 66}
!16 = !{!17, !13, i64 0}
!17 = !{!"tiff", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !6, i64 32, !18, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !9, i64 536, !10, i64 540, !9, i64 544, !9, i64 548, !9, i64 552, !10, i64 556, !9, i64 560, !9, i64 564, !9, i64 568, !9, i64 572, !13, i64 576, !13, i64 584, !13, i64 592, !13, i64 600, !13, i64 608, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !9, i64 712, !9, i64 716, !13, i64 720, !9, i64 728, !13, i64 736, !9, i64 744, !13, i64 752, !9, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !9, i64 848, !13, i64 856, !13, i64 864, !13, i64 872}
!18 = !{!"", !10, i64 0, !10, i64 2, !9, i64 4}
!19 = !{!6, !9, i64 240}
!20 = !{!6, !9, i64 28}
!21 = !{!6, !10, i64 58}
!22 = !{!17, !9, i64 16}
!23 = !{!6, !9, i64 24}
!24 = !{!10, !10, i64 0}
!25 = !{!6, !10, i64 52}
!26 = !{!17, !13, i64 688}
