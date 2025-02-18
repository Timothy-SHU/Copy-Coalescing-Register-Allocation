; ModuleID = 'liblzma/common/vli_decoder.c'
source_filename = "liblzma/common/vli_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_vli_decode(ptr noalias nocapture noundef %0, ptr noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias nocapture noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !34 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  store i64 0, ptr %6, align 8, !tbaa !35
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %11, !prof !39

8:                                                ; preds = %5
  store i64 0, ptr %0, align 8, !tbaa !35
  %9 = load i64, ptr %3, align 8, !tbaa !35
  %10 = icmp ult i64 %9, %4
  br i1 %10, label %25, label %66, !prof !40

11:                                               ; preds = %5
  %12 = load i64, ptr %1, align 8, !tbaa !35
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15, !prof !41

14:                                               ; preds = %11
  store i64 0, ptr %0, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %14, %11
  %16 = icmp ugt i64 %12, 8
  br i1 %16, label %66, label %17, !prof !42

17:                                               ; preds = %15
  %18 = load i64, ptr %0, align 8, !tbaa !35
  %19 = mul nuw nsw i64 %12, 7
  %20 = lshr i64 %18, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %66, !prof !41

22:                                               ; preds = %17
  %23 = load i64, ptr %3, align 8, !tbaa !35
  %24 = icmp ult i64 %23, %4
  br i1 %24, label %25, label %66, !prof !41

25:                                               ; preds = %22, %8
  %26 = phi ptr [ %6, %8 ], [ %1, %22 ]
  %27 = load i64, ptr %3, align 8, !tbaa !35
  %28 = load i64, ptr %26, align 8, !tbaa !35
  %29 = load i64, ptr %0, align 8, !tbaa !35
  %30 = add i64 %27, 1
  %31 = tail call i64 @llvm.umax.i64(i64 %4, i64 %30)
  br label %32

32:                                               ; preds = %60, %25
  %33 = phi i64 [ %29, %25 ], [ %44, %60 ]
  %34 = phi i64 [ %28, %25 ], [ %45, %60 ]
  %35 = phi i64 [ %27, %25 ], [ %39, %60 ]
  %36 = phi i32 [ undef, %25 ], [ %59, %60 ]
  %37 = getelementptr inbounds i8, ptr %2, i64 %35
  %38 = load i8, ptr %37, align 1, !tbaa !43
  %39 = add i64 %35, 1
  %40 = and i8 %38, 127
  %41 = zext nneg i8 %40 to i64
  %42 = mul i64 %34, 7
  %43 = shl i64 %41, %42
  %44 = add i64 %43, %33
  %45 = add i64 %34, 1
  %46 = icmp sgt i8 %38, -1
  br i1 %46, label %47, label %54, !prof !44

47:                                               ; preds = %32
  %48 = icmp ne ptr %26, %6
  %49 = zext i1 %48 to i32
  %50 = icmp eq i8 %38, 0
  %51 = icmp ugt i64 %45, 1
  %52 = select i1 %50, i1 %51, i1 false, !prof !45
  %53 = select i1 %52, i32 9, i32 %49, !prof !45
  br label %57

54:                                               ; preds = %32
  %55 = icmp ne i64 %45, 9
  %56 = select i1 %55, i32 %36, i32 9, !prof !46
  br label %57

57:                                               ; preds = %47, %54
  %58 = phi i1 [ %55, %54 ], [ false, %47 ]
  %59 = phi i32 [ %56, %54 ], [ %53, %47 ]
  br i1 %58, label %60, label %65, !prof !47

60:                                               ; preds = %57
  %61 = icmp ult i64 %39, %4
  br i1 %61, label %32, label %62, !prof !46, !llvm.loop !48

62:                                               ; preds = %60
  store i64 %31, ptr %3, align 8, !tbaa !35
  store i64 %45, ptr %26, align 8, !tbaa !35
  store i64 %44, ptr %0, align 8, !tbaa !35
  %63 = icmp eq ptr %26, %6
  %64 = select i1 %63, i32 9, i32 0
  br label %66

65:                                               ; preds = %57
  store i64 %39, ptr %3, align 8, !tbaa !35
  store i64 %45, ptr %26, align 8, !tbaa !35
  store i64 %44, ptr %0, align 8, !tbaa !35
  br label %66

66:                                               ; preds = %65, %22, %15, %17, %8, %62
  %67 = phi i32 [ %64, %62 ], [ 9, %8 ], [ 11, %17 ], [ 11, %15 ], [ 10, %22 ], [ %59, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  ret i32 %67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!"function_entry_count", i64 10}
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"branch_weights", i32 4, i32 6}
!40 = !{!"branch_weights", i32 4, i32 0}
!41 = !{!"branch_weights", i32 6, i32 0}
!42 = !{!"branch_weights", i32 0, i32 6}
!43 = !{!37, !37, i64 0}
!44 = !{!"branch_weights", i32 10, i32 12}
!45 = !{!"branch_weights", i32 0, i32 10}
!46 = !{!"branch_weights", i32 12, i32 0}
!47 = !{!"branch_weights", i32 12, i32 10}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
