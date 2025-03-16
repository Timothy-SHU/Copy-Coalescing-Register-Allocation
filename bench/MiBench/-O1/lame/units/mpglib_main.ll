; ModuleID = 'mpglib_main.c'
source_filename = "mpglib_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mpstr = type { ptr, ptr, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }

@mp = dso_local global %struct.mpstr zeroinitializer, align 8
@buf = internal global [16384 x i8] zeroinitializer, align 16
@out = internal global [8192 x i8] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [50 x i8] c"Opps: first frame of mpglib output will be lost \0A\00", align 1
@freqs = external local_unnamed_addr global [9 x i64], align 16
@tabsel_123 = external local_unnamed_addr global [2 x [3 x [16 x i32]]], align 16
@.str.1 = private unnamed_addr constant [66 x i8] c"Opps: mpg123 returned more than one frame!  Cant handle this... \0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Opps: mpg123 returned more than one frame!  shouldn't happen... \0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @is_syncword(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, -1
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp ugt i8 %6, -17
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lame_decode_initfile(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca %struct.VBRTAGDATA, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %8 = tail call i32 @InitMP3(ptr noundef nonnull @mp) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) @buf, i8 0, i64 16384, i1 false)
  br label %9

9:                                                ; preds = %15, %5
  %10 = load i8, ptr @buf, align 16, !tbaa !5
  %11 = icmp ne i8 %10, -1
  %12 = load i8, ptr getelementptr inbounds ([16384 x i8], ptr @buf, i64 0, i64 1), align 1
  %13 = icmp ult i8 %12, -16
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i8, ptr getelementptr inbounds ([16384 x i8], ptr @buf, i64 0, i64 1), align 1, !tbaa !5
  store i8 %16, ptr @buf, align 16, !tbaa !5
  %17 = tail call i64 @fread(ptr noundef nonnull getelementptr inbounds ([16384 x i8], ptr @buf, i64 0, i64 1), i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %61, label %9, !llvm.loop !8

19:                                               ; preds = %9
  %20 = tail call i64 @fread(ptr noundef nonnull getelementptr inbounds ([16384 x i8], ptr @buf, i64 0, i64 2), i64 noundef 1, i64 noundef 46, ptr noundef %0)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %19
  %23 = call i32 @GetVbrTag(ptr noundef nonnull %6, ptr noundef nonnull @buf) #8
  %24 = icmp ne i32 %23, 0
  %25 = getelementptr inbounds %struct.VBRTAGDATA, ptr %6, i64 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = select i1 %24, i32 %26, i32 0
  %28 = sext i32 %27 to i64
  store i32 0, ptr %7, align 4, !tbaa !10
  %29 = trunc i64 %20 to i32
  %30 = add i32 %29, 2
  %31 = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef nonnull @buf, i32 noundef %30, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %7) #8
  %32 = load i32, ptr %7, align 4, !tbaa !10
  %33 = icmp slt i32 %32, 1
  %34 = or i1 %24, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load ptr, ptr @stderr, align 8, !tbaa !12
  %37 = call i64 @fwrite(ptr nonnull @.str, i64 49, i64 1, ptr %36) #9
  br label %38

38:                                               ; preds = %35, %22
  %39 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5), align 4, !tbaa !14
  store i32 %39, ptr %1, align 4, !tbaa !10
  %40 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 9), align 8, !tbaa !18
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [9 x i64], ptr @freqs, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !19
  %44 = trunc i64 %43 to i32
  store i32 %44, ptr %2, align 4, !tbaa !10
  %45 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 3), align 8, !tbaa !20
  %46 = sext i32 %45 to i64
  %47 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 6), align 4, !tbaa !21
  %48 = add nsw i32 %47, -1
  %49 = sext i32 %48 to i64
  %50 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 8), align 4, !tbaa !22
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x [3 x [16 x i32]]], ptr @tabsel_123, i64 0, i64 %46, i64 %49, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !10
  store i32 %53, ptr %3, align 4, !tbaa !10
  %54 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 3), align 8, !tbaa !20
  %55 = icmp ne i32 %27, 0
  %56 = select i1 %24, i1 %55, i1 false
  %57 = icmp eq i32 %54, 0
  %58 = select i1 %57, i64 1152, i64 576
  %59 = mul nsw i64 %58, %28
  %60 = select i1 %56, i64 %59, i64 4294967295
  store i64 %60, ptr %4, align 8, !tbaa !19
  br label %61

61:                                               ; preds = %15, %19, %38
  %62 = phi i32 [ 0, %38 ], [ -1, %19 ], [ -1, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %6) #8
  ret i32 %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @InitMP3(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @GetVbrTag(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @decodeMP3(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lame_decode_init() local_unnamed_addr #1 {
  %1 = tail call i32 @InitMP3(ptr noundef nonnull @mp) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) @buf, i8 0, i64 16384, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_decode_fromfile(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !10
  %5 = tail call i64 @fread(ptr noundef nonnull @buf, i64 noundef 1, i64 noundef 64, ptr noundef %0)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = trunc i64 %5 to i32
  %9 = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef nonnull @buf, i32 noundef %8, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %4) #8
  %10 = icmp eq i32 %9, 1
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %7, %17
  %15 = call i64 @fread(ptr noundef nonnull @buf, i64 noundef 1, i64 noundef 100, ptr noundef %0)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %70, label %17

17:                                               ; preds = %14
  %18 = trunc i64 %15 to i32
  %19 = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef nonnull @buf, i32 noundef %18, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %4) #8
  %20 = icmp eq i32 %19, 1
  %21 = load i32, ptr %4, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %14, label %24, !llvm.loop !23

24:                                               ; preds = %17, %7
  %25 = phi i32 [ %9, %7 ], [ %19, %17 ]
  %26 = phi i32 [ %11, %7 ], [ %21, %17 ]
  %27 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5), align 4, !tbaa !14
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = shl nsw i32 %27, 1
  %31 = sdiv i32 %26, %30
  switch i32 %31, label %32 [
    i32 1152, label %35
    i32 576, label %35
  ]

32:                                               ; preds = %29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !12
  %34 = call i64 @fwrite(ptr nonnull @.str.1, i64 65, i64 1, ptr %33) #9
  call void @exit(i32 noundef -50) #10
  unreachable

35:                                               ; preds = %29, %29
  %36 = icmp sgt i32 %27, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %35
  %38 = icmp sgt i32 %31, 0
  %39 = zext nneg i32 %27 to i64
  %40 = zext nneg i32 %27 to i64
  %41 = zext nneg i32 %27 to i64
  %42 = zext nneg i32 %31 to i64
  br label %43

43:                                               ; preds = %37, %63
  %44 = phi i64 [ 0, %37 ], [ %64, %63 ]
  br i1 %38, label %45, label %63

45:                                               ; preds = %43
  %46 = icmp eq i64 %44, 0
  %47 = getelementptr i16, ptr @out, i64 %44
  br label %48

48:                                               ; preds = %45, %56
  %49 = phi i64 [ 0, %45 ], [ %61, %56 ]
  br i1 %46, label %50, label %53

50:                                               ; preds = %48
  %51 = mul nsw i64 %49, %39
  %52 = getelementptr inbounds i16, ptr @out, i64 %51
  br label %56

53:                                               ; preds = %48
  %54 = mul nsw i64 %49, %40
  %55 = getelementptr i16, ptr %47, i64 %54
  br label %56

56:                                               ; preds = %50, %53
  %57 = phi ptr [ %52, %50 ], [ %55, %53 ]
  %58 = phi ptr [ %1, %50 ], [ %2, %53 ]
  %59 = load i16, ptr %57, align 2, !tbaa !24
  %60 = getelementptr inbounds i16, ptr %58, i64 %49
  store i16 %59, ptr %60, align 2, !tbaa !24
  %61 = add nuw nsw i64 %49, 1
  %62 = icmp eq i64 %61, %42
  br i1 %62, label %63, label %48, !llvm.loop !26

63:                                               ; preds = %56, %43
  %64 = add nuw nsw i64 %44, 1
  %65 = icmp eq i64 %64, %41
  br i1 %65, label %66, label %43, !llvm.loop !27

66:                                               ; preds = %63, %35, %24
  %67 = phi i32 [ 0, %24 ], [ %31, %35 ], [ %31, %63 ]
  %68 = icmp eq i32 %25, -1
  %69 = select i1 %68, i32 -1, i32 %67
  br label %70

70:                                               ; preds = %14, %66, %3
  %71 = phi i32 [ 0, %3 ], [ %69, %66 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %71
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_decode(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef %0, i32 noundef %1, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4, !tbaa !10
  %10 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5), align 4, !tbaa !14
  %11 = shl nsw i32 %10, 1
  %12 = sdiv i32 %9, %11
  %13 = icmp sgt i32 %12, 1152
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = icmp sgt i32 %10, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %14
  %17 = icmp sgt i32 %12, 0
  %18 = zext nneg i32 %10 to i64
  %19 = zext nneg i32 %10 to i64
  %20 = zext nneg i32 %10 to i64
  %21 = zext nneg i32 %12 to i64
  br label %25

22:                                               ; preds = %8
  %23 = load ptr, ptr @stderr, align 8, !tbaa !12
  %24 = call i64 @fwrite(ptr nonnull @.str.2, i64 65, i64 1, ptr %23) #9
  call void @exit(i32 noundef -50) #10
  unreachable

25:                                               ; preds = %16, %45
  %26 = phi i64 [ 0, %16 ], [ %46, %45 ]
  br i1 %17, label %27, label %45

27:                                               ; preds = %25
  %28 = icmp eq i64 %26, 0
  %29 = getelementptr i16, ptr @out, i64 %26
  br label %30

30:                                               ; preds = %27, %38
  %31 = phi i64 [ 0, %27 ], [ %43, %38 ]
  br i1 %28, label %32, label %35

32:                                               ; preds = %30
  %33 = mul nsw i64 %31, %18
  %34 = getelementptr inbounds i16, ptr @out, i64 %33
  br label %38

35:                                               ; preds = %30
  %36 = mul nsw i64 %31, %19
  %37 = getelementptr i16, ptr %29, i64 %36
  br label %38

38:                                               ; preds = %32, %35
  %39 = phi ptr [ %34, %32 ], [ %37, %35 ]
  %40 = phi ptr [ %2, %32 ], [ %3, %35 ]
  %41 = load i16, ptr %39, align 2, !tbaa !24
  %42 = getelementptr inbounds i16, ptr %40, i64 %31
  store i16 %41, ptr %42, align 2, !tbaa !24
  %43 = add nuw nsw i64 %31, 1
  %44 = icmp eq i64 %43, %21
  br i1 %44, label %45, label %30, !llvm.loop !28

45:                                               ; preds = %38, %25
  %46 = add nuw nsw i64 %26, 1
  %47 = icmp eq i64 %46, %20
  br i1 %47, label %48, label %25, !llvm.loop !29

48:                                               ; preds = %45, %14, %4
  %49 = phi i32 [ 0, %4 ], [ %12, %14 ], [ %12, %45 ]
  %50 = icmp eq i32 %6, -1
  %51 = select i1 %50, i32 -1, i32 %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !11, i64 28}
!15 = !{!"mpstr", !13, i64 0, !13, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !16, i64 28, !6, i64 100, !6, i64 4712, !6, i64 23144, !17, i64 23152, !11, i64 23160, !6, i64 23168, !11, i64 31872}
!16 = !{!"frame", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68}
!17 = !{!"long", !6, i64 0}
!18 = !{!15, !11, i64 64}
!19 = !{!17, !17, i64 0}
!20 = !{!15, !11, i64 40}
!21 = !{!15, !11, i64 52}
!22 = !{!15, !11, i64 60}
!23 = distinct !{!23, !9}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !6, i64 0}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
