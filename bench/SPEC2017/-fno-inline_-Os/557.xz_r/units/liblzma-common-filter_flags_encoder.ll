; ModuleID = 'liblzma/common/filter_flags_encoder.c'
source_filename = "liblzma/common/filter_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_filter_flags_size(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load i64, ptr %1, align 8, !tbaa !39
  %4 = icmp ugt i64 %3, 4611686018427387903
  br i1 %4, label %17, label %5, !prof !45

5:                                                ; preds = %2
  %6 = tail call i32 @lzma_properties_size(ptr noundef %0, ptr noundef nonnull %1) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i64, ptr %1, align 8, !tbaa !39
  %10 = tail call i32 @lzma_vli_size(i64 noundef %9) #3
  %11 = load i32, ptr %0, align 4, !tbaa !46
  %12 = zext i32 %11 to i64
  %13 = tail call i32 @lzma_vli_size(i64 noundef %12) #3
  %14 = add i32 %13, %10
  %15 = load i32, ptr %0, align 4, !tbaa !46
  %16 = add i32 %14, %15
  store i32 %16, ptr %0, align 4, !tbaa !46
  br label %17

17:                                               ; preds = %5, %2, %8
  %18 = phi i32 [ %6, %5 ], [ 0, %8 ], [ 11, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_properties_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_filter_flags_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !38 {
  %5 = alloca i32, align 4
  %6 = load i64, ptr %0, align 8, !tbaa !39
  %7 = icmp ugt i64 %6, 4611686018427387903
  br i1 %7, label %36, label %8, !prof !45

8:                                                ; preds = %4
  %9 = tail call i32 @lzma_vli_encode(i64 noundef %6, ptr noundef null, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  %12 = call i32 @lzma_properties_size(ptr noundef nonnull %5, ptr noundef nonnull %0) #3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i32, ptr %5, align 4, !tbaa !46
  %16 = zext i32 %15 to i64
  %17 = call i32 @lzma_vli_encode(i64 noundef %16, ptr noundef null, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i64, ptr %2, align 8, !tbaa !48
  %21 = sub i64 %3, %20
  %22 = load i32, ptr %5, align 4, !tbaa !46
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %34, label %25, !prof !45

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %1, i64 %20
  %27 = call i32 @lzma_properties_encode(ptr noundef nonnull %0, ptr noundef %26) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4, !tbaa !46
  %31 = zext i32 %30 to i64
  %32 = load i64, ptr %2, align 8, !tbaa !48
  %33 = add i64 %32, %31
  store i64 %33, ptr %2, align 8, !tbaa !48
  br label %34

34:                                               ; preds = %19, %25, %14, %11, %29
  %35 = phi i32 [ 0, %29 ], [ %27, %25 ], [ %17, %14 ], [ %12, %11 ], [ 11, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  br label %36

36:                                               ; preds = %8, %4, %34
  %37 = phi i32 [ %9, %8 ], [ %35, %34 ], [ 11, %4 ]
  ret i32 %37
}

; Function Attrs: optsize
declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_properties_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @lzma_filter_flags_size, ptr @lzma_properties_size, i64 1}
!36 = !{ptr @lzma_filter_flags_encode, ptr @lzma_vli_encode, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !41, i64 0}
!40 = !{!"", !41, i64 0, !44, i64 8}
!41 = !{!"long", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!"branch_weights", i32 1, i32 2}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !42, i64 0}
!48 = !{!41, !41, i64 0}
