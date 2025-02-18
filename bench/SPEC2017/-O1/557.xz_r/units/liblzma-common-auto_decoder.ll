; ModuleID = 'liblzma/common/auto_decoder.c'
source_filename = "liblzma/common/auto_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i32, i32 }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_auto_decoder(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = tail call i32 @auto_decoder_init(ptr noundef %8, ptr noundef %10, i64 noundef %1, i32 noundef %2), !range !43
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef %0) #3
  br label %14

14:                                               ; preds = %6, %13
  %15 = phi i32 [ %11, %13 ], [ %4, %6 ]
  br i1 %12, label %16, label %20

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 3
  store i8 1, ptr %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 3, i64 3
  store i8 1, ptr %19, align 1, !tbaa !44
  br label %20

20:                                               ; preds = %3, %14, %16
  %21 = phi i32 [ %4, %3 ], [ %15, %14 ], [ 0, %16 ]
  ret i32 %21
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @auto_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !prof !34 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = icmp eq i64 %6, ptrtoint (ptr @auto_decoder_init to i64)
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #3
  br label %9

9:                                                ; preds = %8, %4
  store i64 ptrtoint (ptr @auto_decoder_init to i64), ptr %5, align 8, !tbaa !46
  %10 = icmp eq i64 %2, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %9
  %12 = icmp ult i32 %3, 16
  br i1 %12, label %13, label %31

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %1) #3
  store ptr %17, ptr %0, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @auto_decode, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @auto_decoder_end, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5
  store ptr @auto_decoder_get_check, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @auto_decoder_memconfig, ptr %23, align 8, !tbaa !52
  store ptr null, ptr %17, align 8, !tbaa.struct !53
  %24 = getelementptr inbounds i8, ptr %17, i64 8
  store i64 -1, ptr %24, align 8, !tbaa.struct !56
  %25 = getelementptr inbounds i8, ptr %17, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %25, i8 0, i64 48, i1 false)
  br label %26

26:                                               ; preds = %19, %13
  %27 = load ptr, ptr %0, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %27, i64 0, i32 1
  store i64 %2, ptr %28, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %27, i64 0, i32 2
  store i32 %3, ptr %29, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %27, i64 0, i32 3
  store i32 0, ptr %30, align 4, !tbaa !60
  br label %31

31:                                               ; preds = %16, %11, %9, %26
  %32 = phi i32 [ 0, %26 ], [ 11, %9 ], [ 8, %11 ], [ 5, %16 ]
  ret i32 %32
}

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal i32 @auto_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !34 {
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !60
  switch i32 %11, label %59 [
    i32 0, label %12
    i32 1, label %37
    i32 2, label %53
  ]

12:                                               ; preds = %9
  %13 = load i64, ptr %3, align 8, !tbaa !55
  %14 = icmp ult i64 %13, %4
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  store i32 1, ptr %10, align 4, !tbaa !60
  %16 = getelementptr inbounds i8, ptr %2, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !61
  %18 = icmp eq i8 %17, -3
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !57
  br i1 %18, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !59
  %24 = tail call i32 @lzma_stream_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %20, i32 noundef %23) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %59

26:                                               ; preds = %15
  %27 = tail call i32 @lzma_alone_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %20, i1 noundef zeroext true) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !59
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = and i32 %31, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %21, %34, %9
  %38 = phi i32 [ undef, %9 ], [ %27, %34 ], [ %24, %21 ]
  %39 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = load ptr, ptr %0, align 8, !tbaa !63
  %42 = tail call i32 %40(ptr noundef %41, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #3
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !59
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 2, ptr %10, align 4, !tbaa !60
  br label %50

50:                                               ; preds = %37, %44, %49
  %51 = phi i1 [ true, %49 ], [ false, %44 ], [ false, %37 ]
  %52 = phi i32 [ %38, %49 ], [ %42, %44 ], [ %42, %37 ]
  br i1 %51, label %53, label %59

53:                                               ; preds = %50, %9
  %54 = load i64, ptr %3, align 8, !tbaa !55
  %55 = icmp ult i64 %54, %4
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = icmp eq i32 %8, 3
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %53, %50, %34, %9, %29, %12, %21, %26, %56
  %60 = phi i32 [ %58, %56 ], [ %24, %21 ], [ %27, %26 ], [ 0, %12 ], [ 2, %29 ], [ 11, %9 ], [ 4, %34 ], [ %52, %50 ], [ 9, %53 ]
  ret i32 %60
}

; Function Attrs: cold nounwind uwtable
define internal void @auto_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #3
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal i32 @auto_decoder_get_check(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !63
  %7 = tail call i32 %3(ptr noundef %6) #3
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: cold nounwind uwtable
define internal i32 @auto_decoder_memconfig(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 !prof !34 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !63
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3
  br label %14

11:                                               ; preds = %4
  store i64 32768, ptr %1, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !57
  store i64 %13, ptr %2, align 8, !tbaa !55
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ 0, %11 ]
  %16 = icmp eq i32 %15, 0
  %17 = icmp ne i64 %3, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i64 %3, ptr %20, align 8, !tbaa !57
  br label %21

21:                                               ; preds = %19, %14
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_alone_decoder_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

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
!43 = !{i32 0, i32 12}
!44 = !{!45, !45, i64 0}
!45 = !{!"_Bool", !38, i64 0}
!46 = !{!47, !40, i64 16}
!47 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!48 = !{!47, !37, i64 0}
!49 = !{!47, !37, i64 24}
!50 = !{!47, !37, i64 32}
!51 = !{!47, !37, i64 40}
!52 = !{!47, !37, i64 48}
!53 = !{i64 0, i64 8, !54, i64 8, i64 8, !55, i64 16, i64 8, !55, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54, i64 48, i64 8, !54, i64 56, i64 8, !54}
!54 = !{!37, !37, i64 0}
!55 = !{!40, !40, i64 0}
!56 = !{i64 0, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54, i64 48, i64 8, !54}
!57 = !{!58, !40, i64 64}
!58 = !{!"lzma_coder_s", !47, i64 0, !40, i64 64, !41, i64 72, !41, i64 76}
!59 = !{!58, !41, i64 72}
!60 = !{!58, !41, i64 76}
!61 = !{!38, !38, i64 0}
!62 = !{!58, !37, i64 24}
!63 = !{!58, !37, i64 0}
!64 = !{!58, !37, i64 40}
!65 = !{!58, !37, i64 48}
