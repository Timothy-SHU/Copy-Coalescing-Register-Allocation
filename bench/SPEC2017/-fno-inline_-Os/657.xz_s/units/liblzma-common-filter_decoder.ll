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
define internal noundef ptr @decoder_find(i64 noundef %0) #0 !PGOFuncName !35 {
  br label %2

2:                                                ; preds = %1, %7
  %3 = phi i64 [ 0, %1 ], [ %8, %7 ]
  %4 = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %3
  %5 = load i64, ptr %4, align 16, !tbaa !36
  %6 = icmp eq i64 %5, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %3, 1
  %9 = icmp eq i64 %8, 9
  br i1 %9, label %10, label %2, !llvm.loop !42

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %4, %2 ], [ null, %7 ]
  ret ptr %11
}

; Function Attrs: optsize
declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i64 @lzma_lzma_decoder_memusage(ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_lzma_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: optsize
declare i32 @lzma_lzma2_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i64 @lzma_lzma2_decoder_memusage(ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_lzma2_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: optsize
declare i32 @lzma_simple_x86_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_simple_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: optsize
declare i32 @lzma_simple_powerpc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_simple_ia64_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_simple_arm_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_simple_armthumb_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_simple_sparc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_delta_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i64 @lzma_delta_coder_memusage(ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_delta_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #4
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_decoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call i32 @lzma_raw_decoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #4
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !48
  br label %17

17:                                               ; preds = %12, %2, %13
  %18 = phi i32 [ %3, %2 ], [ %10, %12 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_raw_decoder_memusage(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @decoder_find, ptr noundef %0) #4
  ret i64 %2
}

; Function Attrs: optsize
declare i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_properties_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !50
  %6 = load i64, ptr %0, align 8, !tbaa !52
  %7 = tail call ptr @decoder_find(i64 noundef %6) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.lzma_filter_decoder, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !53
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

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

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
!35 = !{!"filter_decoder.c:decoder_find"}
!36 = !{!37, !38, i64 0}
!37 = !{!"", !38, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !41, i64 56}
!45 = !{!"", !41, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !38, i64 32, !38, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !46, i64 128, !46, i64 132}
!46 = !{!"int", !39, i64 0}
!47 = !{!45, !41, i64 48}
!48 = !{!49, !49, i64 0}
!49 = !{!"_Bool", !39, i64 0}
!50 = !{!51, !41, i64 8}
!51 = !{!"", !38, i64 0, !41, i64 8}
!52 = !{!51, !38, i64 0}
!53 = !{!37, !41, i64 24}
