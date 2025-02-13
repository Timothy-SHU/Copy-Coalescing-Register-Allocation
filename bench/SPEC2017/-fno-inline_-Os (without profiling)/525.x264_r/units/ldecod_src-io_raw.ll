; ModuleID = 'ldecod_src/io_raw.c'
source_filename = "ldecod_src/io_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [75 x i8] c"read_one_frame: cannot advance file pointer in input file beyond frame %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"read_one_frame: cannot fseek to (Header size) in input file\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divisible by 8\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"read_one_frame: cannot read %d bytes from input file, unexpected EOF!\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ReadFrameConcatenated(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 13, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = shl i32 %14, 1
  %16 = add i32 %15, %12
  %17 = mul i32 %16, %10
  %18 = sext i32 %17 to i64
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 20
  %21 = load i32, ptr %20, align 8, !tbaa !15
  %22 = add nsw i32 %21, %2
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %18, %23
  %25 = add nsw i64 %24, %19
  %26 = tail call i64 @lseek(i32 noundef %8, i64 noundef %25, i32 noundef 0) #7
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32, ptr %20, align 8, !tbaa !15
  %30 = add nsw i32 %29, %2
  %31 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str, i32 noundef %30) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef -1) #7
  br label %32

32:                                               ; preds = %28, %6
  %33 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 18
  %34 = load i32, ptr %33, align 4, !tbaa !17
  %35 = and i32 %34, 7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call fastcc i32 @ReadData(i32 noundef %8, ptr noundef nonnull %4, ptr noundef %5) #8, !range !18
  ret i32 %38

39:                                               ; preds = %32
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable
}

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ReadData(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 19
  %5 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3
  %6 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !14
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 8, !tbaa !14
  %11 = load i32, ptr %4, align 8, !tbaa !13
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  br label %14

14:                                               ; preds = %9, %19
  %15 = phi i32 [ 0, %9 ], [ %21, %19 ]
  %16 = phi ptr [ %2, %9 ], [ %20, %19 ]
  %17 = tail call i64 @read(i32 noundef %0, ptr noundef %16, i64 noundef %13) #7
  %18 = icmp eq i64 %17, %13
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %16, i64 %13
  %21 = add nuw nsw i32 %15, 1
  %22 = load i32, ptr %6, align 4, !tbaa !14
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %14, label %24, !llvm.loop !19

24:                                               ; preds = %19, %3
  %25 = phi ptr [ %2, %3 ], [ %20, %19 ]
  %26 = load i32, ptr %1, align 8, !tbaa !21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %4, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !14
  %32 = mul nsw i32 %31, %29
  %33 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4, i64 1
  %34 = sext i32 %32 to i64
  %35 = load i32, ptr %33, align 4, !tbaa !14
  br label %36

36:                                               ; preds = %28, %51
  %37 = phi i32 [ %35, %28 ], [ %52, %51 ]
  %38 = phi i1 [ true, %28 ], [ false, %51 ]
  %39 = phi ptr [ %25, %28 ], [ %53, %51 ]
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36, %46
  %42 = phi i32 [ %48, %46 ], [ 0, %36 ]
  %43 = phi ptr [ %47, %46 ], [ %39, %36 ]
  %44 = tail call i64 @read(i32 noundef %0, ptr noundef %43, i64 noundef %34) #7
  %45 = icmp eq i64 %44, %34
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %43, i64 %34
  %48 = add nuw nsw i32 %42, 1
  %49 = load i32, ptr %33, align 4, !tbaa !14
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %41, label %51, !llvm.loop !22

51:                                               ; preds = %46, %36
  %52 = phi i32 [ %37, %36 ], [ %49, %46 ]
  %53 = phi ptr [ %39, %36 ], [ %47, %46 ]
  br i1 %38, label %36, label %58, !llvm.loop !23

54:                                               ; preds = %14, %41
  %55 = phi ptr [ %30, %41 ], [ %5, %14 ]
  %56 = load i32, ptr %55, align 4, !tbaa !14
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %56) #8
  br label %58

58:                                               ; preds = %51, %54, %24
  %59 = phi i32 [ 1, %24 ], [ 0, %54 ], [ 1, %51 ]
  ret i32 %59
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ReadFrameSeparate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = add nsw i32 %10, %2
  tail call void @OpenFrameFile(ptr noundef %1, i32 noundef %11) #7
  %12 = sext i32 %3 to i64
  %13 = tail call i64 @lseek(i32 noundef %8, i64 noundef %12, i32 noundef 0) #7
  %14 = icmp eq i64 %13, %12
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #7
  br label %16

16:                                               ; preds = %15, %6
  %17 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = and i32 %18, 7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @ReadData(i32 noundef %8, ptr noundef nonnull %4, ptr noundef %5) #8, !range !18
  %23 = icmp eq i32 %8, -1
  br i1 %23, label %28, label %26

24:                                               ; preds = %16
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

26:                                               ; preds = %21
  %27 = tail call i32 @close(i32 noundef %8) #7
  br label %28

28:                                               ; preds = %26, %21
  ret i32 %22
}

; Function Attrs: optsize
declare void @OpenFrameFile(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 768}
!6 = !{!"video_data_file", !7, i64 0, !7, i64 255, !7, i64 510, !9, i64 768, !9, i64 772, !10, i64 776, !9, i64 912, !9, i64 916, !9, i64 920, !9, i64 924, !9, i64 928, !9, i64 932, !9, i64 936, !9, i64 940, !9, i64 944, !9, i64 948, !9, i64 952, !12, i64 960}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"frame_format", !9, i64 0, !9, i64 4, !11, i64 8, !7, i64 16, !7, i64 28, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !7, i64 72, !9, i64 84, !7, i64 88, !7, i64 100, !7, i64 112, !9, i64 124, !9, i64 128}
!11 = !{!"double", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !9, i64 128}
!14 = !{!9, !9, i64 0}
!15 = !{!16, !9, i64 3992}
!16 = !{!"inp_par", !7, i64 0, !7, i64 255, !7, i64 510, !9, i64 768, !9, i64 772, !9, i64 776, !9, i64 780, !9, i64 784, !9, i64 788, !10, i64 792, !10, i64 928, !9, i64 1064, !9, i64 1068, !6, i64 1072, !6, i64 2040, !6, i64 3008, !9, i64 3976, !9, i64 3980, !9, i64 3984, !9, i64 3988, !9, i64 3992, !9, i64 3996, !9, i64 4000, !9, i64 4004, !9, i64 4008, !9, i64 4012}
!17 = !{!10, !9, i64 124}
!18 = !{i32 0, i32 2}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!10, !9, i64 0}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
