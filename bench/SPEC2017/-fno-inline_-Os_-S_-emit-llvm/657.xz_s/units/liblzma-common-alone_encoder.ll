; ModuleID = 'liblzma/common/alone_encoder.c'
source_filename = "liblzma/common/alone_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i32, i64, [13 x i8] }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_alone_encoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = tail call i32 @alone_encoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #5
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !14
  br label %17

17:                                               ; preds = %12, %2, %13
  %18 = phi i32 [ %3, %2 ], [ %10, %12 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @alone_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x %struct.lzma_filter_info_s], align 16
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !16
  %7 = icmp eq i64 %6, ptrtoint (ptr @alone_encoder_init to i64)
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %9

9:                                                ; preds = %8, %3
  store i64 ptrtoint (ptr @alone_encoder_init to i64), ptr %5, align 8, !tbaa !16
  %10 = load ptr, ptr %0, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = tail call ptr @lzma_alloc(i64 noundef 96, ptr noundef %1) #5
  store ptr %13, ptr %0, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @alone_encode, ptr %16, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @alone_encoder_end, ptr %17, align 8, !tbaa !20
  store ptr null, ptr %13, align 8, !tbaa.struct !21
  %18 = getelementptr inbounds i8, ptr %13, i64 8
  store i64 -1, ptr %18, align 8, !tbaa.struct !24
  %19 = getelementptr inbounds i8, ptr %13, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, i8 0, i64 48, i1 false)
  %20 = load ptr, ptr %0, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi ptr [ %20, %15 ], [ %10, %9 ]
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 1
  store i32 0, ptr %23, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 2
  store i64 0, ptr %24, align 8, !tbaa !27
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 3
  %26 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef %2, ptr noundef nonnull %25) #5
  br i1 %26, label %54, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %2, align 8, !tbaa !28
  %29 = icmp ult i32 %28, 4096
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = add i32 %28, -1
  %32 = lshr i32 %31, 2
  %33 = or i32 %32, %31
  %34 = lshr i32 %33, 3
  %35 = or i32 %34, %33
  %36 = lshr i32 %35, 4
  %37 = or i32 %36, %35
  %38 = lshr i32 %37, 8
  %39 = or i32 %38, %37
  %40 = lshr i32 %39, 16
  %41 = or i32 %40, %39
  %42 = icmp eq i32 %41, -1
  %43 = add nuw i32 %41, 1
  %44 = select i1 %42, i32 -1, i32 %43
  %45 = load ptr, ptr %0, align 8, !tbaa !18
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %45, i64 0, i32 3, i64 1
  tail call fastcc void @unaligned_write32le(ptr noundef nonnull %46, i32 noundef %44) #6
  %47 = load ptr, ptr %0, align 8, !tbaa !18
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %47, i64 0, i32 3, i64 5
  store i64 -1, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #7
  store i64 0, ptr %4, align 16, !tbaa !30
  %49 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 0, i32 1
  store ptr @lzma_lzma_encoder_init, ptr %49, align 8, !tbaa !32
  %50 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 0, i32 2
  store ptr %2, ptr %50, align 16, !tbaa !33
  %51 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %52 = load ptr, ptr %0, align 8, !tbaa !18
  %53 = call i32 @lzma_next_filter_init(ptr noundef %52, ptr noundef %1, ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #7
  br label %54

54:                                               ; preds = %27, %21, %12, %30
  %55 = phi i32 [ %53, %30 ], [ 5, %12 ], [ 8, %21 ], [ 8, %27 ]
  ret i32 %55
}

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @alone_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = load i64, ptr %6, align 8, !tbaa !23
  %11 = icmp ult i64 %10, %7
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %13, align 8, !tbaa !25
  br label %17

17:                                               ; preds = %12, %23
  %18 = phi i32 [ %16, %12 ], [ 1, %23 ]
  switch i32 %18, label %31 [
    i32 0, label %19
    i32 1, label %26
  ]

19:                                               ; preds = %17
  %20 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 13, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #5
  %21 = load i64, ptr %15, align 8, !tbaa !27
  %22 = icmp ult i64 %21, 13
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  store i32 1, ptr %13, align 8, !tbaa !25
  %24 = load i64, ptr %6, align 8, !tbaa !23
  %25 = icmp ult i64 %24, %7
  br i1 %25, label %17, label %31, !llvm.loop !34

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = load ptr, ptr %0, align 8, !tbaa !37
  %30 = tail call i32 %28(ptr noundef %29, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #5
  br label %31

31:                                               ; preds = %19, %17, %23, %9, %26
  %32 = phi i32 [ %30, %26 ], [ 0, %9 ], [ 0, %19 ], [ 11, %17 ], [ 0, %23 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @alone_encoder_end(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @unaligned_write32le(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = trunc i32 %1 to i8
  store i8 %3, ptr %0, align 1, !tbaa !38
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !38
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !38
  %10 = lshr i32 %1, 24
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 56}
!7 = !{!"", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !12, i64 128, !12, i64 132}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!7, !8, i64 48}
!14 = !{!15, !15, i64 0}
!15 = !{!"_Bool", !9, i64 0}
!16 = !{!17, !11, i64 16}
!17 = !{!"lzma_next_coder_s", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!18 = !{!17, !8, i64 0}
!19 = !{!17, !8, i64 24}
!20 = !{!17, !8, i64 32}
!21 = !{i64 0, i64 8, !22, i64 8, i64 8, !23, i64 16, i64 8, !23, i64 24, i64 8, !22, i64 32, i64 8, !22, i64 40, i64 8, !22, i64 48, i64 8, !22, i64 56, i64 8, !22}
!22 = !{!8, !8, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{i64 0, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 8, !22, i64 24, i64 8, !22, i64 32, i64 8, !22, i64 40, i64 8, !22, i64 48, i64 8, !22}
!25 = !{!26, !12, i64 64}
!26 = !{!"lzma_coder_s", !17, i64 0, !12, i64 64, !11, i64 72, !9, i64 80}
!27 = !{!26, !11, i64 72}
!28 = !{!29, !12, i64 0}
!29 = !{!"", !12, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !8, i64 96, !8, i64 104}
!30 = !{!31, !11, i64 0}
!31 = !{!"lzma_filter_info_s", !11, i64 0, !8, i64 8, !8, i64 16}
!32 = !{!31, !8, i64 8}
!33 = !{!31, !8, i64 16}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!26, !8, i64 24}
!37 = !{!26, !8, i64 0}
!38 = !{!9, !9, i64 0}
