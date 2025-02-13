; ModuleID = 'liblzma/common/stream_flags_encoder.c'
source_filename = "liblzma/common/stream_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = external local_unnamed_addr constant [6 x i8], align 1
@lzma_footer_magic = external local_unnamed_addr constant [2 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_stream_header_encode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @lzma_header_magic, i64 6, i1 false)
  %6 = getelementptr inbounds i8, ptr %1, i64 6
  %7 = tail call fastcc zeroext i1 @stream_flags_encode(ptr noundef nonnull %0, ptr noundef nonnull %6) #6
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @lzma_crc32(ptr noundef nonnull %6, i64 noundef 2, i32 noundef 0) #7
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  tail call fastcc void @unaligned_write32le(ptr noundef nonnull %10, i32 noundef %9) #6
  br label %11

11:                                               ; preds = %5, %2, %8
  %12 = phi i32 [ 0, %8 ], [ 8, %2 ], [ 11, %5 ]
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @stream_flags_encode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !11
  %5 = icmp ugt i32 %4, 15
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !12
  %7 = load i32, ptr %3, align 8, !tbaa !11
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !12
  br label %10

10:                                               ; preds = %2, %6
  ret i1 %5
}

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @unaligned_write32le(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = trunc i32 %1 to i8
  store i8 %3, ptr %0, align 1, !tbaa !12
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !12
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !12
  %10 = lshr i32 %1, 24
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_stream_footer_encode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i1 @is_backward_size_valid(ptr noundef nonnull %0) #6
  br i1 %6, label %7, label %20

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, ptr %1, i64 4
  %9 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = lshr i64 %10, 2
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, -1
  tail call fastcc void @unaligned_write32le(ptr noundef nonnull %8, i32 noundef %13) #6
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  %15 = tail call fastcc zeroext i1 @stream_flags_encode(ptr noundef nonnull %0, ptr noundef nonnull %14) #6
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @lzma_crc32(ptr noundef nonnull %8, i64 noundef 6, i32 noundef 0) #7
  tail call fastcc void @unaligned_write32le(ptr noundef %1, i32 noundef %17) #6
  %18 = getelementptr inbounds i8, ptr %1, i64 10
  %19 = load i16, ptr @lzma_footer_magic, align 1
  store i16 %19, ptr %18, align 1
  br label %20

20:                                               ; preds = %7, %5, %2, %16
  %21 = phi i32 [ 0, %16 ], [ 8, %2 ], [ 11, %5 ], [ 11, %7 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_backward_size_valid(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !13
  %4 = add i64 %3, -4
  %5 = icmp ult i64 %4, 17179869181
  %6 = and i64 %3, 3
  %7 = icmp eq i64 %6, 0
  %8 = and i1 %5, %7
  ret i1 %8
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 36, !8, i64 37, !8, i64 38, !8, i64 39, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !7, i64 44, !7, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 16}
!12 = !{!8, !8, i64 0}
!13 = !{!6, !10, i64 8}
