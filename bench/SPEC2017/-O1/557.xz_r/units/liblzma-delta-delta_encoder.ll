; ModuleID = 'liblzma/delta/delta_encoder.c'
source_filename = "liblzma/delta/delta_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_delta_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @delta_encode, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @delta_encoder_update, ptr %5, align 8, !tbaa !41
  %6 = tail call i32 @lzma_delta_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define internal i32 @delta_encode(ptr nocapture noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !34 {
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load i64, ptr %3, align 8, !tbaa !44
  %15 = sub i64 %4, %14
  %16 = load i64, ptr %6, align 8, !tbaa !44
  %17 = sub i64 %7, %16
  %18 = tail call i64 @llvm.umin.i64(i64 %15, i64 %17)
  %19 = getelementptr inbounds i8, ptr %2, i64 %14
  %20 = getelementptr inbounds i8, ptr %5, i64 %16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %21 = icmp eq i64 %18, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !50, !noalias !51
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %26 = trunc i64 %24 to i8
  %27 = load i8, ptr %25, align 8, !tbaa !52, !noalias !51
  br label %28

28:                                               ; preds = %22, %28
  %29 = phi i8 [ %27, %22 ], [ %37, %28 ]
  %30 = phi i64 [ 0, %22 ], [ %42, %28 ]
  %31 = add i8 %29, %26
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !53, !noalias !51
  %35 = getelementptr inbounds i8, ptr %19, i64 %30
  %36 = load i8, ptr %35, align 1, !tbaa !53, !alias.scope !45, !noalias !48
  %37 = add i8 %29, -1
  %38 = zext i8 %29 to i64
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %38
  store i8 %36, ptr %39, align 1, !tbaa !53, !noalias !51
  %40 = sub i8 %36, %34
  %41 = getelementptr inbounds i8, ptr %20, i64 %30
  store i8 %40, ptr %41, align 1, !tbaa !53, !alias.scope !48, !noalias !45
  %42 = add nuw i64 %30, 1
  %43 = icmp eq i64 %42, %18
  br i1 %43, label %44, label %28, !llvm.loop !54

44:                                               ; preds = %28
  store i8 %37, ptr %25, align 8, !tbaa !52, !noalias !51
  br label %45

45:                                               ; preds = %44, %13
  %46 = add i64 %18, %14
  store i64 %46, ptr %3, align 8, !tbaa !44
  %47 = add i64 %18, %16
  store i64 %47, ptr %6, align 8, !tbaa !44
  %48 = icmp eq i32 %8, 0
  br i1 %48, label %82, label %49

49:                                               ; preds = %45
  %50 = icmp eq i64 %46, %4
  %51 = zext i1 %50 to i32
  br label %82

52:                                               ; preds = %9
  %53 = load i64, ptr %6, align 8, !tbaa !44
  %54 = load ptr, ptr %0, align 8, !tbaa !57
  %55 = tail call i32 %11(ptr noundef %54, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #4
  %56 = getelementptr inbounds i8, ptr %5, i64 %53
  %57 = load i64, ptr %6, align 8, !tbaa !44
  %58 = sub i64 %57, %53
  %59 = icmp eq i64 %57, %53
  br i1 %59, label %82, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !50
  %63 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %64 = trunc i64 %62 to i8
  %65 = load i8, ptr %63, align 8, !tbaa !52
  br label %66

66:                                               ; preds = %60, %66
  %67 = phi i8 [ %65, %60 ], [ %75, %66 ]
  %68 = phi i64 [ 0, %60 ], [ %79, %66 ]
  %69 = add i8 %67, %64
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !53
  %73 = getelementptr inbounds i8, ptr %56, i64 %68
  %74 = load i8, ptr %73, align 1, !tbaa !53
  %75 = add i8 %67, -1
  %76 = zext i8 %67 to i64
  %77 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %76
  store i8 %74, ptr %77, align 1, !tbaa !53
  %78 = sub i8 %74, %72
  store i8 %78, ptr %73, align 1, !tbaa !53
  %79 = add nuw i64 %68, 1
  %80 = icmp eq i64 %79, %58
  br i1 %80, label %81, label %66, !llvm.loop !58

81:                                               ; preds = %66
  store i8 %75, ptr %63, align 8, !tbaa !52
  br label %82

82:                                               ; preds = %52, %81, %45, %49
  %83 = phi i32 [ 0, %45 ], [ %51, %49 ], [ %55, %81 ], [ %55, %52 ]
  ret i32 %83
}

; Function Attrs: cold nounwind uwtable
define internal i32 @delta_encoder_update(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #0 !prof !34 {
  %5 = getelementptr inbounds %struct.lzma_filter, ptr %3, i64 1
  %6 = tail call i32 @lzma_next_filter_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #4
  ret i32 %6
}

declare i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_delta_props_encode(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i64 @lzma_delta_coder_memusage(ptr noundef %0) #4
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_options_delta, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, -1
  store i8 %9, ptr %1, align 1, !tbaa !53
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ 0, %5 ], [ 11, %2 ]
  ret i32 %11
}

declare i64 @lzma_delta_coder_memusage(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!35 = !{!36, !37, i64 24}
!36 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!36, !37, i64 56}
!42 = !{!43, !37, i64 24}
!43 = !{!"lzma_coder_s", !36, i64 0, !40, i64 64, !38, i64 72, !38, i64 73}
!44 = !{!40, !40, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"copy_and_encode: argument 0"}
!47 = distinct !{!47, !"copy_and_encode"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"copy_and_encode: argument 1"}
!50 = !{!43, !40, i64 64}
!51 = !{!46, !49}
!52 = !{!43, !38, i64 72}
!53 = !{!38, !38, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!43, !37, i64 0}
!58 = distinct !{!58, !55, !56}
!59 = !{!60, !61, i64 4}
!60 = !{!"", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !37, i64 24, !37, i64 32}
!61 = !{!"int", !38, i64 0}
