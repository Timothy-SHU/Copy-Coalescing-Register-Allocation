; ModuleID = 'liblzma/common/alone_encoder.c'
source_filename = "liblzma/common/alone_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i32, i64, [13 x i8] }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_alone_encoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = tail call i32 @alone_encoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef %0) #4
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ %10, %12 ], [ %3, %5 ]
  br i1 %11, label %15, label %19

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3
  store i8 1, ptr %17, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3, i64 3
  store i8 1, ptr %18, align 1, !tbaa !43
  br label %19

19:                                               ; preds = %2, %13, %15
  %20 = phi i32 [ %3, %2 ], [ %14, %13 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define internal i32 @alone_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !34 {
  %4 = alloca [2 x %struct.lzma_filter_info_s], align 16
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i64 %6, ptrtoint (ptr @alone_encoder_init to i64)
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #4
  br label %9

9:                                                ; preds = %8, %3
  store i64 ptrtoint (ptr @alone_encoder_init to i64), ptr %5, align 8, !tbaa !45
  %10 = load ptr, ptr %0, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call ptr @lzma_alloc(i64 noundef 96, ptr noundef %1) #4
  store ptr %13, ptr %0, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %63, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @alone_encode, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @alone_encoder_end, ptr %17, align 8, !tbaa !49
  store ptr null, ptr %13, align 8, !tbaa.struct !50
  %18 = getelementptr inbounds i8, ptr %13, i64 8
  store i64 -1, ptr %18, align 8, !tbaa.struct !53
  %19 = getelementptr inbounds i8, ptr %13, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, i8 0, i64 48, i1 false)
  br label %20

20:                                               ; preds = %15, %9
  %21 = load ptr, ptr %0, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %21, i64 0, i32 1
  store i32 0, ptr %22, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %21, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %21, i64 0, i32 3
  %25 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef %2, ptr noundef nonnull %24) #4
  br i1 %25, label %63, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 8, !tbaa !57
  %28 = icmp ult i32 %27, 4096
  br i1 %28, label %63, label %29

29:                                               ; preds = %26
  %30 = add i32 %27, -1
  %31 = lshr i32 %30, 2
  %32 = or i32 %31, %30
  %33 = lshr i32 %32, 3
  %34 = or i32 %33, %32
  %35 = lshr i32 %34, 4
  %36 = or i32 %35, %34
  %37 = lshr i32 %36, 8
  %38 = or i32 %37, %36
  %39 = lshr i32 %38, 16
  %40 = or i32 %39, %38
  %41 = icmp eq i32 %40, -1
  %42 = add nuw i32 %40, 1
  %43 = select i1 %41, i32 -1, i32 %42
  %44 = load ptr, ptr %0, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %44, i64 0, i32 3, i64 1
  %46 = trunc i32 %43 to i8
  store i8 %46, ptr %45, align 1, !tbaa !59
  %47 = lshr i32 %43, 8
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %44, i64 0, i32 3, i64 2
  store i8 %48, ptr %49, align 1, !tbaa !59
  %50 = lshr i32 %43, 16
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.lzma_coder_s, ptr %44, i64 0, i32 3, i64 3
  store i8 %51, ptr %52, align 1, !tbaa !59
  %53 = lshr i32 %43, 24
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %44, i64 0, i32 3, i64 4
  store i8 %54, ptr %55, align 1, !tbaa !59
  %56 = load ptr, ptr %0, align 8, !tbaa !47
  %57 = getelementptr inbounds %struct.lzma_coder_s, ptr %56, i64 0, i32 3, i64 5
  store i64 -1, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #4
  store i64 0, ptr %4, align 16, !tbaa !60
  %58 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 0, i32 1
  store ptr @lzma_lzma_encoder_init, ptr %58, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 0, i32 2
  store ptr %2, ptr %59, align 16, !tbaa !63
  %60 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  %61 = load ptr, ptr %0, align 8, !tbaa !47
  %62 = call i32 @lzma_next_filter_init(ptr noundef %61, ptr noundef %1, ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #4
  br label %63

63:                                               ; preds = %26, %20, %12, %29
  %64 = phi i32 [ %62, %29 ], [ 5, %12 ], [ 8, %20 ], [ 8, %26 ]
  ret i32 %64
}

declare void @lzma_end(ptr noundef) local_unnamed_addr #2

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal i32 @alone_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !34 {
  %10 = load i64, ptr %6, align 8, !tbaa !52
  %11 = icmp ult i64 %10, %7
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  br label %16

16:                                               ; preds = %12, %22
  %17 = load i32, ptr %13, align 8, !tbaa !54
  switch i32 %17, label %30 [
    i32 0, label %18
    i32 1, label %25
  ]

18:                                               ; preds = %16
  %19 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 13, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #4
  %20 = load i64, ptr %15, align 8, !tbaa !56
  %21 = icmp ult i64 %20, 13
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  store i32 1, ptr %13, align 8, !tbaa !54
  %23 = load i64, ptr %6, align 8, !tbaa !52
  %24 = icmp ult i64 %23, %7
  br i1 %24, label %16, label %30, !llvm.loop !64

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = load ptr, ptr %0, align 8, !tbaa !68
  %29 = tail call i32 %27(ptr noundef %28, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #4
  br label %30

30:                                               ; preds = %18, %16, %22, %9, %25
  %31 = phi i32 [ %29, %25 ], [ 0, %9 ], [ 0, %22 ], [ 11, %16 ], [ 0, %18 ]
  ret i32 %31
}

; Function Attrs: cold nounwind uwtable
define internal void @alone_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #4
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 56}
!36 = !{!"", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !40, i64 32, !40, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !41, i64 128, !41, i64 132}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!36, !37, i64 48}
!43 = !{!44, !44, i64 0}
!44 = !{!"_Bool", !38, i64 0}
!45 = !{!46, !40, i64 16}
!46 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!47 = !{!46, !37, i64 0}
!48 = !{!46, !37, i64 24}
!49 = !{!46, !37, i64 32}
!50 = !{i64 0, i64 8, !51, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 8, !51, i64 32, i64 8, !51, i64 40, i64 8, !51, i64 48, i64 8, !51, i64 56, i64 8, !51}
!51 = !{!37, !37, i64 0}
!52 = !{!40, !40, i64 0}
!53 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !51, i64 24, i64 8, !51, i64 32, i64 8, !51, i64 40, i64 8, !51, i64 48, i64 8, !51}
!54 = !{!55, !41, i64 64}
!55 = !{!"lzma_coder_s", !46, i64 0, !41, i64 64, !40, i64 72, !38, i64 80}
!56 = !{!55, !40, i64 72}
!57 = !{!58, !41, i64 0}
!58 = !{!"", !41, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !37, i64 96, !37, i64 104}
!59 = !{!38, !38, i64 0}
!60 = !{!61, !40, i64 0}
!61 = !{!"lzma_filter_info_s", !40, i64 0, !37, i64 8, !37, i64 16}
!62 = !{!61, !37, i64 8}
!63 = !{!61, !37, i64 16}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!55, !37, i64 24}
!68 = !{!55, !37, i64 0}
