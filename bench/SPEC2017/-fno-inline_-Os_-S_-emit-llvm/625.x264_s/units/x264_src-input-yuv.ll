; ModuleID = 'x264_src/input/yuv.c'
source_filename = "x264_src/input/yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.yuv_hnd_t = type { ptr, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@yuv_input = dso_local local_unnamed_addr constant %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr @x264_picture_alloc, ptr @read_frame, ptr null, ptr @x264_picture_clean, ptr @close_file }, align 8
@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"yuv [error]: rawyuv input requires a resolution.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @open_file(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cli_input_opt_t, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 11
  %12 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 3
  br i1 %10, label %13, label %28

13:                                               ; preds = %7
  %14 = load i8, ptr %0, align 1, !tbaa !12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %13, %24
  %17 = phi i8 [ %26, %24 ], [ %14, %13 ]
  %18 = phi ptr [ %25, %24 ], [ %0, %13 ]
  %19 = add i8 %17, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull %11, ptr noundef nonnull %12) #9
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %30, label %24

24:                                               ; preds = %16, %21
  %25 = getelementptr inbounds i8, ptr %18, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %16, !llvm.loop !13

28:                                               ; preds = %7
  %29 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull %11, ptr noundef nonnull %12) #9
  br label %30

30:                                               ; preds = %21, %24, %13, %28
  %31 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr @stderr, align 8, !tbaa !18
  %40 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 49, i64 1, ptr %39) #10
  br label %56

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.yuv_hnd_t, ptr %5, i64 0, i32 3
  store i32 0, ptr %42, align 8, !tbaa !19
  %43 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 10
  store i32 0, ptr %43, align 4, !tbaa !21
  %44 = getelementptr inbounds %struct.yuv_hnd_t, ptr %5, i64 0, i32 1
  store i32 %32, ptr %44, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.yuv_hnd_t, ptr %5, i64 0, i32 2
  store i32 %36, ptr %45, align 4, !tbaa !23
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.2) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load ptr, ptr @stdin, align 8, !tbaa !18
  br label %52

50:                                               ; preds = %41
  %51 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi ptr [ %49, %48 ], [ %51, %50 ]
  store ptr %53, ptr %5, align 8, !tbaa !24
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store ptr %5, ptr %1, align 8, !tbaa !18
  br label %56

56:                                               ; preds = %52, %4, %55, %38
  %57 = phi i32 [ 0, %55 ], [ -1, %38 ], [ -1, %4 ], [ -1, %52 ]
  ret i32 %57
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = tail call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 2) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !24
  %5 = tail call i64 @ftell(ptr noundef %4) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !24
  %7 = tail call i32 @fseek(ptr noundef %6, i64 noundef 0, i32 noundef 0) #12
  %8 = getelementptr inbounds %struct.yuv_hnd_t, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.yuv_hnd_t, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !23
  %12 = mul i32 %9, 3
  %13 = mul i32 %12, %11
  %14 = sdiv i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %5, %15
  %17 = trunc i64 %16 to i32
  ret i32 %17
}

; Function Attrs: optsize
declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @read_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.yuv_hnd_t, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !24
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.yuv_hnd_t, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.yuv_hnd_t, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !23
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %9, 3
  %17 = mul i64 %16, %12
  %18 = mul i64 %17, %15
  %19 = lshr i64 %18, 1
  %20 = tail call i32 @fseek(ptr noundef %8, i64 noundef %19, i32 noundef 0) #12
  br label %21

21:                                               ; preds = %7, %3
  %22 = tail call fastcc i32 @read_frame_internal(ptr noundef %0, ptr noundef nonnull %1) #12, !range !25
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = add nsw i32 %2, 1
  store i32 %25, ptr %4, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi i32 [ 0, %24 ], [ -1, %21 ]
  ret i32 %27
}

; Function Attrs: optsize
declare void @x264_picture_clean(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @close_file(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @fclose(ptr noundef nonnull %4) #12
  tail call void @free(ptr noundef nonnull %0) #9
  br label %8

8:                                                ; preds = %1, %3, %6
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @read_frame_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.yuv_hnd_t, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.yuv_hnd_t, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !23
  %9 = mul nsw i32 %8, %6
  %10 = sext i32 %9 to i64
  %11 = load ptr, ptr %1, align 8, !tbaa !24
  %12 = tail call i64 @fread(ptr noundef %4, i64 noundef %10, i64 noundef 1, ptr noundef %11) #12
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = load i32, ptr %5, align 8, !tbaa !22
  %18 = load i32, ptr %7, align 4, !tbaa !23
  %19 = mul nsw i32 %18, %17
  %20 = sdiv i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = load ptr, ptr %1, align 8, !tbaa !24
  %23 = tail call i64 @fread(ptr noundef %16, i64 noundef %21, i64 noundef 1, ptr noundef %22) #12
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = load i32, ptr %5, align 8, !tbaa !22
  %29 = load i32, ptr %7, align 4, !tbaa !23
  %30 = mul nsw i32 %29, %28
  %31 = sdiv i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = load ptr, ptr %1, align 8, !tbaa !24
  %34 = tail call i64 @fread(ptr noundef %27, i64 noundef %32, i64 noundef 1, ptr noundef %33) #12
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %25, %14, %2
  %38 = phi i32 [ 1, %14 ], [ 1, %2 ], [ %36, %25 ]
  ret i32 %38
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind optsize allocsize(0) }
attributes #9 = { nounwind optsize }
attributes #10 = { cold }
attributes #11 = { nounwind optsize willreturn memory(read) }
attributes #12 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !11, i64 44}
!16 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!17 = !{!16, !11, i64 12}
!18 = !{!8, !8, i64 0}
!19 = !{!20, !11, i64 16}
!20 = !{!"", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!21 = !{!16, !11, i64 40}
!22 = !{!20, !11, i64 8}
!23 = !{!20, !11, i64 12}
!24 = !{!20, !8, i64 0}
!25 = !{i32 0, i32 2}
