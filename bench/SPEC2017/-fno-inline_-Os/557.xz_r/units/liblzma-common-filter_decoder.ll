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
define dso_local noundef zeroext i8 @lzma_filter_decoder_is_supported(i64 noundef %0) local_unnamed_addr #0 !prof !39 {
  %2 = tail call ptr @decoder_find(i64 noundef %0) #3
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal noundef ptr @decoder_find(i64 noundef %0) #0 !prof !40 !PGOFuncName !41 {
  br label %2

2:                                                ; preds = %1, %7
  %3 = phi i64 [ 0, %1 ], [ %8, %7 ]
  %4 = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %3
  %5 = load i64, ptr %4, align 16, !tbaa !42
  %6 = icmp eq i64 %5, %0
  br i1 %6, label %10, label %7, !prof !48

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %3, 1
  %9 = icmp eq i64 %8, 9
  br i1 %9, label %10, label %2, !prof !49, !llvm.loop !50

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %4, %2 ], [ null, %7 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !52 {
  %4 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #4
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_decoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !39 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = tail call i32 @lzma_raw_decoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #4
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !57
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
define dso_local i64 @lzma_raw_decoder_memusage(ptr noundef %0) local_unnamed_addr #1 !prof !52 {
  %2 = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @decoder_find, ptr noundef %0) #4
  ret i64 %2
}

; Function Attrs: optsize
declare i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_properties_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 !prof !52 {
  %5 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !59
  %6 = load i64, ptr %0, align 8, !tbaa !61
  %7 = tail call ptr @decoder_find(i64 noundef %6) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !62

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.lzma_filter_decoder, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16, !prof !62

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @lzma_raw_decoder_init, ptr @lzma_raw_coder_init, i64 2}
!36 = !{ptr @lzma_raw_decoder_memusage, ptr @lzma_raw_coder_memusage, i64 2}
!37 = !{ptr @lzma_properties_decode, ptr @decoder_find, i64 2}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!"function_entry_count", i64 6}
!41 = !{!"filter_decoder.c:decoder_find"}
!42 = !{!43, !44, i64 0}
!43 = !{!"", !44, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!44 = !{!"long", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"any pointer", !45, i64 0}
!48 = !{!"branch_weights", i32 7, i32 7}
!49 = !{!"branch_weights", i32 1, i32 12}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"function_entry_count", i64 2}
!53 = !{!54, !47, i64 56}
!54 = !{!"", !47, i64 0, !44, i64 8, !44, i64 16, !47, i64 24, !44, i64 32, !44, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !55, i64 128, !55, i64 132}
!55 = !{!"int", !45, i64 0}
!56 = !{!54, !47, i64 48}
!57 = !{!58, !58, i64 0}
!58 = !{!"_Bool", !45, i64 0}
!59 = !{!60, !47, i64 8}
!60 = !{!"", !44, i64 0, !47, i64 8}
!61 = !{!60, !44, i64 0}
!62 = !{!"branch_weights", i32 1, i32 3}
!63 = !{!43, !47, i64 24}
