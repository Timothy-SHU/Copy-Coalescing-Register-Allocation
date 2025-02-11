; ModuleID = 'liblzma/delta/delta_decoder.c'
source_filename = "liblzma/delta/delta_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_delta_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @delta_decode, ptr %4, align 8, !tbaa !5
  %5 = tail call i32 @lzma_delta_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @delta_decode(ptr nocapture noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = load i64, ptr %6, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = load ptr, ptr %0, align 8, !tbaa !14
  %14 = tail call i32 %12(ptr noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #3
  %15 = getelementptr inbounds i8, ptr %5, i64 %10
  %16 = load i64, ptr %6, align 8, !tbaa !11
  %17 = sub i64 %16, %10
  tail call fastcc void @decode_buffer(ptr noundef nonnull %0, ptr noundef %15, i64 noundef %17) #4
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_delta_props_decode(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %3, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = tail call ptr @lzma_alloc(i64 noundef 40, ptr noundef %1) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  store i32 0, ptr %7, align 8, !tbaa !15
  %10 = load i8, ptr %2, align 1, !tbaa !18
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.lzma_options_delta, ptr %7, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !19
  store ptr %7, ptr %0, align 8, !tbaa !20
  br label %14

14:                                               ; preds = %9, %6, %4
  %15 = phi i32 [ 8, %4 ], [ 0, %9 ], [ 5, %6 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @decode_buffer(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %9 = trunc i64 %7 to i8
  %10 = load i8, ptr %8, align 8, !tbaa !22
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %5, %12
  %13 = phi i8 [ %10, %5 ], [ %23, %12 ]
  %14 = phi i64 [ 0, %5 ], [ %26, %12 ]
  %15 = add i8 %13, %9
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !18
  %19 = getelementptr inbounds i8, ptr %1, i64 %14
  %20 = load i8, ptr %19, align 1, !tbaa !18
  %21 = add i8 %20, %18
  store i8 %21, ptr %19, align 1, !tbaa !18
  %22 = load i8, ptr %8, align 8, !tbaa !22
  %23 = add i8 %22, -1
  store i8 %23, ptr %8, align 8, !tbaa !22
  %24 = zext i8 %22 to i64
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %24
  store i8 %21, ptr %25, align 1, !tbaa !18
  %26 = add nuw i64 %14, 1
  %27 = icmp eq i64 %26, %2
  br i1 %27, label %11, label %12, !llvm.loop !23
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 24}
!6 = !{!"lzma_next_coder_s", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!13, !7, i64 24}
!13 = !{!"lzma_coder_s", !6, i64 0, !10, i64 64, !8, i64 72, !8, i64 73}
!14 = !{!13, !7, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !7, i64 24, !7, i64 32}
!17 = !{!"int", !8, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!16, !17, i64 4}
!20 = !{!7, !7, i64 0}
!21 = !{!13, !10, i64 64}
!22 = !{!13, !8, i64 72}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
