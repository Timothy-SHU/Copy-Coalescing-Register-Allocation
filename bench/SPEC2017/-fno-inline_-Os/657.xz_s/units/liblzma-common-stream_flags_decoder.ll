; ModuleID = 'liblzma/common/stream_flags_decoder.c'
source_filename = "liblzma/common/stream_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = external constant [6 x i8], align 1
@lzma_footer_magic = external constant [2 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_stream_header_decode(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) @lzma_header_magic, i64 6)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 6
  %7 = tail call i32 @lzma_crc32(ptr noundef nonnull %6, i64 noundef 2, i32 noundef 0) #5
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  %9 = tail call fastcc i32 @unaligned_read32le(ptr noundef nonnull %8) #6
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = tail call fastcc zeroext i1 @stream_flags_decode(ptr noundef %0, ptr noundef nonnull %6) #6
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  store i64 -1, ptr %14, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %13, %5, %11, %2
  %16 = phi i32 [ 7, %2 ], [ 0, %13 ], [ 9, %5 ], [ 8, %11 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @unaligned_read32le(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !41 {
  %2 = load i32, ptr %0, align 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @stream_flags_decode(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !42 {
  %3 = load i8, ptr %1, align 1, !tbaa !43
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !43
  %8 = icmp ult i8 %7, 16
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  store i32 0, ptr %0, align 8, !tbaa !44
  %10 = load i8, ptr %6, align 1, !tbaa !43
  %11 = and i8 %10, 15
  %12 = zext nneg i8 %11 to i32
  %13 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %2, %5, %9
  %15 = phi i1 [ false, %9 ], [ true, %5 ], [ true, %2 ]
  ret i1 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_stream_footer_decode(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = getelementptr inbounds i8, ptr %1, i64 10
  %5 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %4, ptr noundef nonnull dereferenceable(2) @lzma_footer_magic, i64 2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %1, i64 4
  %9 = tail call i32 @lzma_crc32(ptr noundef nonnull %8, i64 noundef 6, i32 noundef 0) #5
  %10 = tail call fastcc i32 @unaligned_read32le(ptr noundef %1) #6
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = tail call fastcc zeroext i1 @stream_flags_decode(ptr noundef %0, ptr noundef nonnull %3) #6
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = tail call fastcc i32 @unaligned_read32le(ptr noundef nonnull %8) #6
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %18 = shl nuw nsw i64 %16, 2
  %19 = add nuw nsw i64 %18, 4
  store i64 %19, ptr %17, align 8, !tbaa !35
  br label %20

20:                                               ; preds = %14, %7, %12, %2
  %21 = phi i32 [ 7, %2 ], [ 0, %14 ], [ 9, %7 ], [ 8, %12 ]
  ret i32 %21
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 0}
!4 = !{!"MaxCount", i64 0}
!5 = !{!"MaxInternalCount", i64 0}
!6 = !{!"MaxFunctionCount", i64 0}
!7 = !{!"NumCounts", i64 0}
!8 = !{!"NumFunctions", i64 0}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 0, i32 0}
!14 = !{i32 100000, i64 0, i32 0}
!15 = !{i32 200000, i64 0, i32 0}
!16 = !{i32 300000, i64 0, i32 0}
!17 = !{i32 400000, i64 0, i32 0}
!18 = !{i32 500000, i64 0, i32 0}
!19 = !{i32 600000, i64 0, i32 0}
!20 = !{i32 700000, i64 0, i32 0}
!21 = !{i32 800000, i64 0, i32 0}
!22 = !{i32 900000, i64 0, i32 0}
!23 = !{i32 950000, i64 0, i32 0}
!24 = !{i32 990000, i64 0, i32 0}
!25 = !{i32 999000, i64 0, i32 0}
!26 = !{i32 999900, i64 0, i32 0}
!27 = !{i32 999990, i64 0, i32 0}
!28 = !{i32 999999, i64 0, i32 0}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !40, i64 8}
!36 = !{!"", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !38, i64 36, !38, i64 37, !38, i64 38, !38, i64 39, !38, i64 40, !38, i64 41, !38, i64 42, !38, i64 43, !37, i64 44, !37, i64 48}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"stream_flags_decoder.c:unaligned_read32le"}
!42 = !{!"stream_flags_decoder.c:stream_flags_decode"}
!43 = !{!38, !38, i64 0}
!44 = !{!36, !37, i64 0}
!45 = !{!36, !37, i64 16}
