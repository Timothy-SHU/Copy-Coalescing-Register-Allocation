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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local noundef zeroext i8 @lzma_filter_encoder_is_supported(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @encoder_find(i64 noundef %0) #5
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal noundef ptr @encoder_find(i64 noundef %0) #0 !PGOFuncName !35 {
  br label %2

2:                                                ; preds = %1, %7
  %3 = phi i64 [ 0, %1 ], [ %8, %7 ]
  %4 = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = icmp eq i64 %5, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %3, 1
  %9 = icmp eq i64 %8, 9
  br i1 %9, label %10, label %2, !llvm.loop !43

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %4, %2 ], [ null, %7 ]
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i64 @lzma_lzma_encoder_memusage(ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_lzma_props_encode(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_lzma2_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i64 @lzma_lzma2_encoder_memusage(ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_lzma2_props_encode(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_x86_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_props_size(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_props_encode(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_powerpc_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_ia64_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_arm_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_armthumb_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_simple_sparc_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_delta_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i64 @lzma_delta_coder_memusage(ptr noundef) #2

; Function Attrs: optsize
declare i32 @lzma_delta_props_encode(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_filters_update(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [5 x %struct.lzma_filter], align 16
  %4 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef %1) #5
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %37, label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %17, %12 ], [ 1, %9 ]
  %14 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !51
  %16 = icmp eq i64 %15, -1
  %17 = add i64 %13, 1
  br i1 %16, label %18, label %12, !llvm.loop !53

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %29, %18
  %21 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %3, i64 0, i64 %13
  store i64 -1, ptr %21, align 16, !tbaa !51
  %22 = load ptr, ptr %4, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = load ptr, ptr %22, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = call i32 %24(ptr noundef %25, ptr noundef %27, ptr noundef nonnull %1, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  br label %37

29:                                               ; preds = %18, %29
  %30 = phi i64 [ %35, %29 ], [ 0, %18 ]
  %31 = xor i64 %30, -1
  %32 = add i64 %13, %31
  %33 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %3, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !56
  %35 = add nuw i64 %30, 1
  %36 = icmp eq i64 %35, %13
  br i1 %36, label %20, label %29, !llvm.loop !59

37:                                               ; preds = %9, %2, %20
  %38 = phi i32 [ %28, %20 ], [ 11, %2 ], [ 8, %9 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_raw_encoder_memusage(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %0) #7
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #7
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_encoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = tail call i32 @lzma_raw_coder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #7
  br label %18

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 1
  store i8 1, ptr %16, align 1, !tbaa !60
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %17, align 1, !tbaa !60
  br label %18

18:                                               ; preds = %12, %2, %13
  %19 = phi i32 [ %3, %2 ], [ %10, %12 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_properties_size(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i64, ptr %1, align 8, !tbaa !51
  %4 = tail call ptr @encoder_find(i64 noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = icmp sgt i64 %3, -1
  %8 = select i1 %7, i32 8, i32 11
  br label %20

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.lzma_filter_encoder, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.lzma_filter_encoder, ptr %4, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !62
  store i32 %15, ptr %0, align 4, !tbaa !63
  br label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = tail call i32 %11(ptr noundef %0, ptr noundef %18) #7
  br label %20

20:                                               ; preds = %16, %13, %6
  %21 = phi i32 [ %8, %6 ], [ 0, %13 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_properties_encode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load i64, ptr %0, align 8, !tbaa !51
  %4 = tail call ptr @encoder_find(i64 noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_filter_encoder, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = tail call i32 %8(ptr noundef %12, ptr noundef %1) #7
  br label %14

14:                                               ; preds = %6, %2, %10
  %15 = phi i32 [ %13, %10 ], [ 11, %2 ], [ 0, %6 ]
  ret i32 %15
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }

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
!35 = !{!"filter_encoder.c:encoder_find"}
!36 = !{!37, !38, i64 0}
!37 = !{!"", !38, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !42, i64 40, !41, i64 48}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !41, i64 56}
!46 = !{!"", !41, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !38, i64 32, !38, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !42, i64 128, !42, i64 132}
!47 = !{!48, !41, i64 56}
!48 = !{!"lzma_internal_s", !49, i64 0, !42, i64 64, !38, i64 72, !39, i64 80, !50, i64 84}
!49 = !{!"lzma_next_coder_s", !41, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56}
!50 = !{!"_Bool", !39, i64 0}
!51 = !{!52, !38, i64 0}
!52 = !{!"", !38, i64 0, !41, i64 8}
!53 = distinct !{!53, !44}
!54 = !{!48, !41, i64 0}
!55 = !{!46, !41, i64 48}
!56 = !{i64 0, i64 8, !57, i64 8, i64 8, !58}
!57 = !{!38, !38, i64 0}
!58 = !{!41, !41, i64 0}
!59 = distinct !{!59, !44}
!60 = !{!50, !50, i64 0}
!61 = !{!37, !41, i64 32}
!62 = !{!37, !42, i64 40}
!63 = !{!42, !42, i64 0}
!64 = !{!52, !41, i64 8}
!65 = !{!37, !41, i64 48}
