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
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = tail call i32 @alone_encoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #5
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !13
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
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = icmp eq i64 %6, ptrtoint (ptr @alone_encoder_init to i64)
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %9

9:                                                ; preds = %8, %3
  store i64 ptrtoint (ptr @alone_encoder_init to i64), ptr %5, align 8, !tbaa !15
  %10 = load ptr, ptr %0, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = tail call ptr @lzma_alloc(i64 noundef 96, ptr noundef %1) #5
  store ptr %13, ptr %0, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @alone_encode, ptr %16, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @alone_encoder_end, ptr %17, align 8, !tbaa !19
  store ptr null, ptr %13, align 8, !tbaa.struct !20
  %18 = getelementptr inbounds i8, ptr %13, i64 8
  store i64 -1, ptr %18, align 8, !tbaa.struct !23
  %19 = getelementptr inbounds i8, ptr %13, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, i8 0, i64 48, i1 false)
  %20 = load ptr, ptr %0, align 8, !tbaa !17
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi ptr [ %20, %15 ], [ %10, %9 ]
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 1
  store i32 0, ptr %23, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 2
  store i64 0, ptr %24, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 3
  %26 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef %2, ptr noundef nonnull %25) #5
  br i1 %26, label %54, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %2, align 8, !tbaa !27
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
  %45 = load ptr, ptr %0, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %45, i64 0, i32 3, i64 1
  tail call fastcc void @unaligned_write32le(ptr noundef nonnull %46, i32 noundef %44) #6
  %47 = load ptr, ptr %0, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %47, i64 0, i32 3, i64 5
  store i64 -1, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #7
  store i64 0, ptr %4, align 16, !tbaa !29
  %49 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 0, i32 1
  store ptr @lzma_lzma_encoder_init, ptr %49, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 0, i32 2
  store ptr %2, ptr %50, align 16, !tbaa !32
  %51 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %52 = load ptr, ptr %0, align 8, !tbaa !17
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
  %10 = load i64, ptr %6, align 8, !tbaa !22
  %11 = icmp ult i64 %10, %7
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %13, align 8, !tbaa !24
  br label %17

17:                                               ; preds = %12, %23
  %18 = phi i32 [ %16, %12 ], [ 1, %23 ]
  switch i32 %18, label %31 [
    i32 0, label %19
    i32 1, label %26
  ]

19:                                               ; preds = %17
  %20 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 13, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #5
  %21 = load i64, ptr %15, align 8, !tbaa !26
  %22 = icmp ult i64 %21, 13
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  store i32 1, ptr %13, align 8, !tbaa !24
  %24 = load i64, ptr %6, align 8, !tbaa !22
  %25 = icmp ult i64 %24, %7
  br i1 %25, label %17, label %31, !llvm.loop !33

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = load ptr, ptr %0, align 8, !tbaa !36
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
  store i8 %3, ptr %0, align 1, !tbaa !37
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !37
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !37
  %10 = lshr i32 %1, 24
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !37
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 56}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !11, i64 128, !11, i64 132}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!6, !7, i64 48}
!13 = !{!14, !14, i64 0}
!14 = !{!"_Bool", !8, i64 0}
!15 = !{!16, !10, i64 16}
!16 = !{!"lzma_next_coder_s", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!17 = !{!16, !7, i64 0}
!18 = !{!16, !7, i64 24}
!19 = !{!16, !7, i64 32}
!20 = !{i64 0, i64 8, !21, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 8, !21, i64 32, i64 8, !21, i64 40, i64 8, !21, i64 48, i64 8, !21, i64 56, i64 8, !21}
!21 = !{!7, !7, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !21, i64 24, i64 8, !21, i64 32, i64 8, !21, i64 40, i64 8, !21, i64 48, i64 8, !21}
!24 = !{!25, !11, i64 64}
!25 = !{!"lzma_coder_s", !16, i64 0, !11, i64 64, !10, i64 72, !8, i64 80}
!26 = !{!25, !10, i64 72}
!27 = !{!28, !11, i64 0}
!28 = !{!"", !11, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !7, i64 96, !7, i64 104}
!29 = !{!30, !10, i64 0}
!30 = !{!"lzma_filter_info_s", !10, i64 0, !7, i64 8, !7, i64 16}
!31 = !{!30, !7, i64 8}
!32 = !{!30, !7, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!25, !7, i64 24}
!36 = !{!25, !7, i64 0}
!37 = !{!8, !8, i64 0}
