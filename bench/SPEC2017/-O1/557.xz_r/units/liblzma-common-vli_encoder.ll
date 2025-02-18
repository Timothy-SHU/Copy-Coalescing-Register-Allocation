; ModuleID = 'liblzma/common/vli_encoder.c'
source_filename = "liblzma/common/vli_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @lzma_vli_encode(i64 noundef %0, ptr noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !34 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #2
  store i64 0, ptr %6, align 8, !tbaa !35
  %7 = icmp eq ptr %1, null
  %8 = load i64, ptr %3, align 8, !tbaa !35
  %9 = icmp ult i64 %8, %4
  %10 = select i1 %7, ptr %6, ptr %1, !prof !39
  %11 = select i1 %7, i32 11, i32 10, !prof !39
  br i1 %9, label %12, label %45, !prof !40

12:                                               ; preds = %5
  %13 = load i64, ptr %10, align 8, !tbaa !35
  %14 = icmp ugt i64 %13, 8
  %15 = icmp slt i64 %0, 0
  %16 = or i1 %15, %14
  br i1 %16, label %45, label %17, !prof !41

17:                                               ; preds = %12
  %18 = mul nuw nsw i64 %13, 7
  %19 = lshr i64 %0, %18
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %19, %17 ], [ %30, %23 ]
  %22 = icmp ugt i64 %21, 127
  br i1 %22, label %23, label %36, !prof !42

23:                                               ; preds = %20
  %24 = load i64, ptr %10, align 8, !tbaa !35
  %25 = add i64 %24, 1
  store i64 %25, ptr %10, align 8, !tbaa !35
  %26 = trunc i64 %21 to i8
  %27 = or i8 %26, -128
  %28 = load i64, ptr %3, align 8, !tbaa !35
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  store i8 %27, ptr %29, align 1, !tbaa !43
  %30 = lshr i64 %21, 7
  %31 = add i64 %28, 1
  store i64 %31, ptr %3, align 8, !tbaa !35
  %32 = icmp eq i64 %31, %4
  br i1 %32, label %33, label %20, !prof !44, !llvm.loop !45

33:                                               ; preds = %23
  %34 = icmp eq ptr %10, %6
  %35 = select i1 %34, i32 11, i32 0
  br label %45

36:                                               ; preds = %20
  %37 = trunc i64 %21 to i8
  %38 = load i64, ptr %3, align 8, !tbaa !35
  %39 = getelementptr inbounds i8, ptr %2, i64 %38
  store i8 %37, ptr %39, align 1, !tbaa !43
  %40 = add i64 %38, 1
  store i64 %40, ptr %3, align 8, !tbaa !35
  %41 = load i64, ptr %10, align 8, !tbaa !35
  %42 = add i64 %41, 1
  store i64 %42, ptr %10, align 8, !tbaa !35
  %43 = icmp ne ptr %10, %6
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %5, %12, %36, %33
  %46 = phi i32 [ %35, %33 ], [ %44, %36 ], [ 11, %12 ], [ %11, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #2
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!34 = !{!"function_entry_count", i64 5}
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"branch_weights", i32 2, i32 3}
!40 = !{!"branch_weights", i32 2, i32 0}
!41 = !{!"branch_weights", i32 0, i32 5}
!42 = !{!"branch_weights", i32 6, i32 5}
!43 = !{!37, !37, i64 0}
!44 = !{!"branch_weights", i32 0, i32 6}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
