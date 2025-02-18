; ModuleID = 'liblzma/common/filter_flags_encoder.c'
source_filename = "liblzma/common/filter_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_filter_flags_size(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !41 {
  %3 = load i64, ptr %1, align 8, !tbaa !42
  %4 = icmp ugt i64 %3, 4611686018427387903
  br i1 %4, label %17, label %5, !prof !48

5:                                                ; preds = %2
  %6 = tail call i32 @lzma_properties_size(ptr noundef %0, ptr noundef nonnull %1) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !49

8:                                                ; preds = %5
  %9 = load i64, ptr %1, align 8, !tbaa !42
  %10 = tail call i32 @lzma_vli_size(i64 noundef %9) #3
  %11 = load i32, ptr %0, align 4, !tbaa !50
  %12 = zext i32 %11 to i64
  %13 = tail call i32 @lzma_vli_size(i64 noundef %12) #3
  %14 = add i32 %13, %10
  %15 = load i32, ptr %0, align 4, !tbaa !50
  %16 = add i32 %14, %15
  store i32 %16, ptr %0, align 4, !tbaa !50
  br label %17

17:                                               ; preds = %5, %2, %8
  %18 = phi i32 [ %6, %5 ], [ 0, %8 ], [ 11, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_properties_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_filter_flags_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !41 {
  %5 = alloca i32, align 4
  %6 = load i64, ptr %0, align 8, !tbaa !42
  %7 = icmp ugt i64 %6, 4611686018427387903
  br i1 %7, label %39, label %8, !prof !48

8:                                                ; preds = %4
  %9 = tail call i32 @lzma_vli_encode(i64 noundef %6, ptr noundef null, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39, !prof !49

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  %12 = call i32 @lzma_properties_size(ptr noundef nonnull %5, ptr noundef nonnull %0) #3
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %9, i32 %12, !prof !49
  br i1 %13, label %15, label %37, !prof !49

15:                                               ; preds = %11
  %16 = load i32, ptr %5, align 4, !tbaa !50
  %17 = zext i32 %16 to i64
  %18 = call i32 @lzma_vli_encode(i64 noundef %17, ptr noundef null, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %14, i32 %18, !prof !49
  br i1 %19, label %21, label %37, !prof !49

21:                                               ; preds = %15
  %22 = load i64, ptr %2, align 8, !tbaa !52
  %23 = sub i64 %3, %22
  %24 = load i32, ptr %5, align 4, !tbaa !50
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %37, label %27, !prof !48

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %1, i64 %22
  %29 = call i32 @lzma_properties_encode(ptr noundef nonnull %0, ptr noundef %28) #3
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %20, i32 %29, !prof !49
  br i1 %30, label %32, label %37, !prof !49

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 4, !tbaa !50
  %34 = zext i32 %33 to i64
  %35 = load i64, ptr %2, align 8, !tbaa !52
  %36 = add i64 %35, %34
  store i64 %36, ptr %2, align 8, !tbaa !52
  br label %37

37:                                               ; preds = %21, %27, %15, %11, %32
  %38 = phi i32 [ 0, %32 ], [ %31, %27 ], [ %20, %15 ], [ %14, %11 ], [ 11, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  br label %39

39:                                               ; preds = %8, %4, %37
  %40 = phi i32 [ %9, %8 ], [ %38, %37 ], [ 11, %4 ]
  ret i32 %40
}

declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_properties_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @lzma_filter_flags_size, ptr @lzma_properties_size, i64 1}
!36 = !{ptr @lzma_filter_flags_size, ptr @lzma_vli_size, i64 2}
!37 = !{ptr @lzma_filter_flags_encode, ptr @lzma_vli_encode, i64 2}
!38 = !{ptr @lzma_filter_flags_encode, ptr @lzma_properties_size, i64 1}
!39 = !{ptr @lzma_filter_flags_encode, ptr @lzma_properties_encode, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !44, i64 0}
!43 = !{!"", !44, i64 0, !47, i64 8}
!44 = !{!"long", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"any pointer", !45, i64 0}
!48 = !{!"branch_weights", i32 0, i32 1}
!49 = !{!"branch_weights", i32 1, i32 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !45, i64 0}
!52 = !{!44, !44, i64 0}
