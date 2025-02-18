; ModuleID = 'liblzma/common/filter_encoder.c'
source_filename = "liblzma/common/filter_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_filter_encoder = type { i64, ptr, ptr, ptr, ptr, i32, ptr }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

@encoders = internal constant [9 x %struct.lzma_filter_encoder] [%struct.lzma_filter_encoder { i64 4611686018427387905, ptr @lzma_lzma_encoder_init, ptr @lzma_lzma_encoder_memusage, ptr null, ptr null, i32 5, ptr @lzma_lzma_props_encode }, %struct.lzma_filter_encoder { i64 33, ptr @lzma_lzma2_encoder_init, ptr @lzma_lzma2_encoder_memusage, ptr null, ptr null, i32 1, ptr @lzma_lzma2_props_encode }, %struct.lzma_filter_encoder { i64 4, ptr @lzma_simple_x86_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 5, ptr @lzma_simple_powerpc_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 6, ptr @lzma_simple_ia64_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 7, ptr @lzma_simple_arm_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 8, ptr @lzma_simple_armthumb_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 9, ptr @lzma_simple_sparc_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 3, ptr @lzma_delta_encoder_init, ptr @lzma_delta_coder_memusage, ptr null, ptr null, i32 1, ptr @lzma_delta_props_encode }], align 16

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i8 @lzma_filter_encoder_is_supported(i64 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = icmp eq i64 %0, 4611686018427387905
  br i1 %2, label %14, label %3

3:                                                ; preds = %1, %7
  %4 = phi i64 [ %5, %7 ], [ 0, %1 ]
  %5 = add nuw nsw i64 %4, 1
  %6 = icmp eq i64 %5, 9
  br i1 %6, label %11, label %7, !llvm.loop !39

7:                                                ; preds = %3
  %8 = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %5
  %9 = load i64, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i64 %9, %0
  br i1 %10, label %11, label %3, !llvm.loop !39

11:                                               ; preds = %7, %3
  %12 = icmp ult i64 %4, 8
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %11 ]
  ret i8 %15
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define internal ptr @encoder_find(i64 noundef %0) #0 !prof !49 !PGOFuncName !50 {
  br label %2

2:                                                ; preds = %1, %9
  %3 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %4 = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !42
  %6 = icmp eq i64 %5, %0
  br i1 %6, label %7, label %9, !prof !51

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %3
  br label %12

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %10, 9
  br i1 %11, label %12, label %2, !prof !52, !llvm.loop !39

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ null, %9 ]
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_filters_update(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 !prof !38 {
  %3 = alloca [5 x %struct.lzma_filter], align 16
  %4 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %1) #5
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %37, label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %17, %12 ], [ 1, %9 ]
  %14 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !59
  %16 = icmp eq i64 %15, -1
  %17 = add i64 %13, 1
  br i1 %16, label %18, label %12, !llvm.loop !61

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #5
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %29, %18
  %21 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %3, i64 0, i64 %13
  store i64 -1, ptr %21, align 16, !tbaa !59
  %22 = load ptr, ptr %4, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = load ptr, ptr %22, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = call i32 %24(ptr noundef %25, ptr noundef %27, ptr noundef %1, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #5
  br label %37

29:                                               ; preds = %18, %29
  %30 = phi i64 [ %35, %29 ], [ 0, %18 ]
  %31 = xor i64 %30, -1
  %32 = add i64 %13, %31
  %33 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %3, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !64
  %35 = add nuw i64 %30, 1
  %36 = icmp eq i64 %35, %13
  br i1 %36, label %20, label %29, !llvm.loop !67

37:                                               ; preds = %9, %2, %20
  %38 = phi i32 [ %28, %20 ], [ 11, %2 ], [ 8, %9 ]
  ret i32 %38
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_raw_encoder_memusage(ptr noundef %0) local_unnamed_addr #1 !prof !38 {
  %2 = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %0) #5
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_raw_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !49 {
  %4 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #5
  ret i32 %4
}

declare i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_raw_encoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !38 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = tail call i32 @lzma_raw_coder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef %0) #5
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ %10, %12 ], [ %3, %5 ]
  br i1 %11, label %15, label %20

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3
  store i8 1, ptr %17, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3, i64 1
  store i8 1, ptr %18, align 1, !tbaa !68
  %19 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3, i64 3
  store i8 1, ptr %19, align 1, !tbaa !68
  br label %20

20:                                               ; preds = %2, %13, %15
  %21 = phi i32 [ %3, %2 ], [ %14, %13 ], [ 0, %15 ]
  ret i32 %21
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #4

declare void @lzma_end(ptr noundef) local_unnamed_addr #4

declare i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_properties_size(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !69 {
  %3 = load i64, ptr %1, align 8, !tbaa !59
  br label %4

4:                                                ; preds = %2, %11
  %5 = phi i64 [ 0, %2 ], [ %12, %11 ]
  %6 = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !42
  %8 = icmp eq i64 %7, %3
  br i1 %8, label %9, label %11, !prof !70

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %5
  br label %14

11:                                               ; preds = %4
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 9
  br i1 %13, label %14, label %4, !prof !71, !llvm.loop !39

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %10, %9 ], [ null, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !52

17:                                               ; preds = %14
  %18 = icmp sgt i64 %3, -1
  %19 = select i1 %18, i32 8, i32 11
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.lzma_filter_encoder, ptr %15, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27, !prof !73

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.lzma_filter_encoder, ptr %15, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !74
  store i32 %26, ptr %0, align 4, !tbaa !75
  br label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = tail call i32 %22(ptr noundef %0, ptr noundef %29) #5
  br label %31

31:                                               ; preds = %27, %24, %17
  %32 = phi i32 [ %19, %17 ], [ 0, %24 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_properties_encode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 !prof !49 {
  %3 = load i64, ptr %0, align 8, !tbaa !59
  br label %4

4:                                                ; preds = %2, %11
  %5 = phi i64 [ 0, %2 ], [ %12, %11 ]
  %6 = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !42
  %8 = icmp eq i64 %7, %3
  br i1 %8, label %9, label %11, !prof !51

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %5
  br label %14

11:                                               ; preds = %4
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 9
  br i1 %13, label %14, label %4, !prof !52, !llvm.loop !39

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %10, %9 ], [ null, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !77

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.lzma_filter_encoder, ptr %15, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !77

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = tail call i32 %19(ptr noundef %23, ptr noundef %1) #5, !prof !79
  br label %25

25:                                               ; preds = %17, %14, %21
  %26 = phi i32 [ %24, %21 ], [ 11, %14 ], [ 0, %17 ]
  ret i32 %26
}

declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i64 @lzma_lzma_encoder_memusage(ptr noundef) #4

declare i32 @lzma_lzma_props_encode(ptr noundef, ptr noundef) #4

declare i32 @lzma_lzma2_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i64 @lzma_lzma2_encoder_memusage(ptr noundef) #4

declare i32 @lzma_lzma2_props_encode(ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_x86_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_props_size(ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_props_encode(ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_powerpc_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_ia64_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_arm_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_armthumb_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_sparc_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_delta_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i64 @lzma_delta_coder_memusage(ptr noundef) #4

declare i32 @lzma_delta_props_encode(ptr noundef, ptr noundef) #4

attributes #0 = { cold nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @lzma_raw_encoder_init, ptr @lzma_raw_coder_init, i64 1}
!36 = !{ptr @lzma_properties_encode, ptr @lzma_lzma2_props_encode, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !44, i64 0}
!43 = !{!"", !44, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !48, i64 40, !47, i64 48}
!44 = !{!"long", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"any pointer", !45, i64 0}
!48 = !{!"int", !45, i64 0}
!49 = !{!"function_entry_count", i64 1}
!50 = !{!"liblzma/common/filter_encoder.c;encoder_find"}
!51 = !{!"branch_weights", i32 1, i32 1}
!52 = !{!"branch_weights", i32 0, i32 2}
!53 = !{!54, !47, i64 56}
!54 = !{!"", !47, i64 0, !44, i64 8, !44, i64 16, !47, i64 24, !44, i64 32, !44, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !48, i64 128, !48, i64 132}
!55 = !{!56, !47, i64 56}
!56 = !{!"lzma_internal_s", !57, i64 0, !48, i64 64, !44, i64 72, !45, i64 80, !58, i64 84}
!57 = !{!"lzma_next_coder_s", !47, i64 0, !44, i64 8, !44, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56}
!58 = !{!"_Bool", !45, i64 0}
!59 = !{!60, !44, i64 0}
!60 = !{!"", !44, i64 0, !47, i64 8}
!61 = distinct !{!61, !40, !41}
!62 = !{!56, !47, i64 0}
!63 = !{!54, !47, i64 48}
!64 = !{i64 0, i64 8, !65, i64 8, i64 8, !66}
!65 = !{!44, !44, i64 0}
!66 = !{!47, !47, i64 0}
!67 = distinct !{!67, !40, !41}
!68 = !{!58, !58, i64 0}
!69 = !{!"function_entry_count", i64 2}
!70 = !{!"branch_weights", i32 2, i32 2}
!71 = !{!"branch_weights", i32 0, i32 4}
!72 = !{!43, !47, i64 32}
!73 = !{!"branch_weights", i32 2, i32 0}
!74 = !{!43, !48, i64 40}
!75 = !{!48, !48, i64 0}
!76 = !{!60, !47, i64 8}
!77 = !{!"branch_weights", i32 0, i32 1}
!78 = !{!43, !47, i64 48}
!79 = !{!"VP", i32 0, i64 1, i64 5553893094817375723, i64 1}
