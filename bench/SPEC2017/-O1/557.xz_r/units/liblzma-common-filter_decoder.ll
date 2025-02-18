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

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i8 @lzma_filter_decoder_is_supported(i64 noundef %0) local_unnamed_addr #0 !prof !39 {
  %2 = icmp eq i64 %0, 4611686018427387905
  br i1 %2, label %14, label %3

3:                                                ; preds = %1, %7
  %4 = phi i64 [ %5, %7 ], [ 0, %1 ]
  %5 = add nuw nsw i64 %4, 1
  %6 = icmp eq i64 %5, 9
  br i1 %6, label %11, label %7, !llvm.loop !40

7:                                                ; preds = %3
  %8 = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %5
  %9 = load i64, ptr %8, align 16, !tbaa !43
  %10 = icmp eq i64 %9, %0
  br i1 %10, label %11, label %3, !llvm.loop !40

11:                                               ; preds = %7, %3
  %12 = icmp ult i64 %4, 8
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %11 ]
  ret i8 %15
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define internal ptr @decoder_find(i64 noundef %0) #0 !prof !49 !PGOFuncName !50 {
  br label %2

2:                                                ; preds = %1, %9
  %3 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %4 = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %3
  %5 = load i64, ptr %4, align 16, !tbaa !43
  %6 = icmp eq i64 %5, %0
  br i1 %6, label %7, label %9, !prof !51

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.lzma_filter_decoder, ptr @decoders, i64 %3
  br label %12

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %10, 9
  br i1 %11, label %12, label %2, !prof !52, !llvm.loop !40

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ null, %9 ]
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_raw_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !53 {
  %4 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #3
  ret i32 %4
}

declare i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_raw_decoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !39 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = tail call i32 @lzma_raw_coder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef %0) #3
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ %10, %12 ], [ %3, %5 ]
  br i1 %11, label %15, label %19

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3
  store i8 1, ptr %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3, i64 3
  store i8 1, ptr %18, align 1, !tbaa !58
  br label %19

19:                                               ; preds = %2, %13, %15
  %20 = phi i32 [ %3, %2 ], [ %14, %13 ], [ 0, %15 ]
  ret i32 %20
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_raw_decoder_memusage(ptr noundef %0) local_unnamed_addr #1 !prof !53 {
  %2 = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @decoder_find, ptr noundef %0) #3
  ret i64 %2
}

declare i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_properties_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 !prof !53 {
  %5 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !60
  %6 = load i64, ptr %0, align 8, !tbaa !62
  br label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ 0, %4 ], [ %15, %14 ]
  %9 = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %8
  %10 = load i64, ptr %9, align 16, !tbaa !43
  %11 = icmp eq i64 %10, %6
  br i1 %11, label %12, label %14, !prof !63

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.lzma_filter_decoder, ptr @decoders, i64 %8
  br label %17

14:                                               ; preds = %7
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 9
  br i1 %16, label %17, label %7, !prof !64, !llvm.loop !40

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %13, %12 ], [ null, %14 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20, !prof !65

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.lzma_filter_decoder, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27, !prof !65

24:                                               ; preds = %20
  %25 = icmp eq i64 %3, 0
  %26 = select i1 %25, i32 0, i32 8
  br label %29

27:                                               ; preds = %20
  %28 = tail call i32 %22(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3, !prof !67
  br label %29

29:                                               ; preds = %17, %27, %24
  %30 = phi i32 [ %26, %24 ], [ %28, %27 ], [ 8, %17 ]
  ret i32 %30
}

declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_lzma_decoder_memusage(ptr noundef) #2

declare i32 @lzma_lzma_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_lzma2_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_lzma2_decoder_memusage(ptr noundef) #2

declare i32 @lzma_lzma2_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_simple_x86_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_simple_powerpc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_ia64_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_arm_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_armthumb_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_sparc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_delta_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_delta_coder_memusage(ptr noundef) #2

declare i32 @lzma_delta_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { cold nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @lzma_raw_decoder_init, ptr @lzma_raw_coder_init, i64 2}
!36 = !{ptr @lzma_raw_decoder_memusage, ptr @lzma_raw_coder_memusage, i64 2}
!37 = !{ptr @lzma_properties_decode, ptr @lzma_lzma2_props_decode, i64 2}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !45, i64 0}
!44 = !{!"", !45, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!45 = !{!"long", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!"any pointer", !46, i64 0}
!49 = !{!"function_entry_count", i64 4}
!50 = !{!"liblzma/common/filter_decoder.c;decoder_find"}
!51 = !{!"branch_weights", i32 4, i32 4}
!52 = !{!"branch_weights", i32 0, i32 8}
!53 = !{!"function_entry_count", i64 2}
!54 = !{!55, !48, i64 56}
!55 = !{!"", !48, i64 0, !45, i64 8, !45, i64 16, !48, i64 24, !45, i64 32, !45, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !56, i64 128, !56, i64 132}
!56 = !{!"int", !46, i64 0}
!57 = !{!55, !48, i64 48}
!58 = !{!59, !59, i64 0}
!59 = !{!"_Bool", !46, i64 0}
!60 = !{!61, !48, i64 8}
!61 = !{!"", !45, i64 0, !48, i64 8}
!62 = !{!61, !45, i64 0}
!63 = !{!"branch_weights", i32 2, i32 2}
!64 = !{!"branch_weights", i32 0, i32 4}
!65 = !{!"branch_weights", i32 0, i32 2}
!66 = !{!44, !48, i64 24}
!67 = !{!"VP", i32 0, i64 2, i64 -4658888170178653538, i64 2}
