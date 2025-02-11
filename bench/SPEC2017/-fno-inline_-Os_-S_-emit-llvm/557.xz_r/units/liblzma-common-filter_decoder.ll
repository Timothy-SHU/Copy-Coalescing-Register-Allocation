; ModuleID = 'liblzma/common/filter_decoder.c'
source_filename = "liblzma/common/filter_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_filter_decoder = type { i64, ptr, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

@decoders = internal constant [9 x %struct.lzma_filter_decoder] [%struct.lzma_filter_decoder { i64 4611686018427387905, ptr @lzma_lzma_decoder_init, ptr @lzma_lzma_decoder_memusage, ptr @lzma_lzma_props_decode }, %struct.lzma_filter_decoder { i64 33, ptr @lzma_lzma2_decoder_init, ptr @lzma_lzma2_decoder_memusage, ptr @lzma_lzma2_props_decode }, %struct.lzma_filter_decoder { i64 4, ptr @lzma_simple_x86_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 5, ptr @lzma_simple_powerpc_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 6, ptr @lzma_simple_ia64_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 7, ptr @lzma_simple_arm_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 8, ptr @lzma_simple_armthumb_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 9, ptr @lzma_simple_sparc_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 3, ptr @lzma_delta_decoder_init, ptr @lzma_delta_coder_memusage, ptr @lzma_delta_props_decode }], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local noundef zeroext i8 @lzma_filter_decoder_is_supported(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @decoder_find(i64 noundef %0) #3
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal noundef ptr @decoder_find(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %1, %7
  %3 = phi i64 [ 0, %1 ], [ %8, %7 ]
  %4 = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %3
  %5 = load i64, ptr %4, align 16, !tbaa !5
  %6 = icmp eq i64 %5, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %3, 1
  %9 = icmp eq i64 %8, 9
  br i1 %9, label %10, label %2, !llvm.loop !11

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %4, %2 ], [ null, %7 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #4
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_decoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = tail call i32 @lzma_raw_decoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #4
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !17
  br label %17

17:                                               ; preds = %12, %2, %13
  %18 = phi i32 [ %3, %2 ], [ %10, %12 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_raw_decoder_memusage(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @decoder_find, ptr noundef %0) #4
  ret i64 %2
}

; Function Attrs: optsize
declare i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_properties_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !19
  %6 = load i64, ptr %0, align 8, !tbaa !21
  %7 = tail call ptr @decoder_find(i64 noundef %6) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.lzma_filter_decoder, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = icmp eq i64 %3, 0
  %15 = select i1 %14, i32 0, i32 8
  br label %18

16:                                               ; preds = %9
  %17 = tail call i32 %11(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i64 noundef %3) #4
  br label %18

18:                                               ; preds = %4, %16, %13
  %19 = phi i32 [ %15, %13 ], [ %17, %16 ], [ 8, %4 ]
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i64 @lzma_lzma_decoder_memusage(ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_lzma_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: optsize
declare i32 @lzma_lzma2_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i64 @lzma_lzma2_decoder_memusage(ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_lzma2_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_x86_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_powerpc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_ia64_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_arm_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_armthumb_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_sparc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_delta_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i64 @lzma_delta_coder_memusage(ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_delta_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !10, i64 56}
!14 = !{!"", !10, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !15, i64 128, !15, i64 132}
!15 = !{!"int", !8, i64 0}
!16 = !{!14, !10, i64 48}
!17 = !{!18, !18, i64 0}
!18 = !{!"_Bool", !8, i64 0}
!19 = !{!20, !10, i64 8}
!20 = !{!"", !7, i64 0, !10, i64 8}
!21 = !{!20, !7, i64 0}
!22 = !{!6, !10, i64 24}
