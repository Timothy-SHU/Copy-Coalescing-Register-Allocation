; ModuleID = 'blender/source/blender/blenlib/intern/lasso.c'
source_filename = "blender/source/blender/blenlib/intern/lasso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rcti = type { i32, i32, i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_lasso_boundbox(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  store i32 %4, ptr %5, align 4, !tbaa !38
  store i32 %4, ptr %0, align 4, !tbaa !40
  %6 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 %7, ptr %8, align 4, !tbaa !41
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  store i32 %7, ptr %9, align 4, !tbaa !42
  %10 = icmp ugt i32 %2, 1
  br i1 %10, label %11, label %45

11:                                               ; preds = %3
  %12 = zext i32 %2 to i64
  br label %13

13:                                               ; preds = %11, %40
  %14 = phi i32 [ %7, %11 ], [ %41, %40 ]
  %15 = phi i32 [ %4, %11 ], [ %29, %40 ]
  %16 = phi i64 [ 1, %11 ], [ %43, %40 ]
  %17 = phi i32 [ %7, %11 ], [ %42, %40 ]
  %18 = phi i32 [ %4, %11 ], [ %30, %40 ]
  %19 = getelementptr inbounds [2 x i32], ptr %1, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = icmp slt i32 %20, %18
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = icmp sgt i32 %20, %15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22, %13
  %25 = phi ptr [ %0, %13 ], [ %5, %22 ]
  %26 = phi i32 [ %15, %13 ], [ %20, %22 ]
  %27 = phi i32 [ %20, %13 ], [ %18, %22 ]
  store i32 %20, ptr %25, align 4, !tbaa !34
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %15, %22 ], [ %26, %24 ]
  %30 = phi i32 [ %18, %22 ], [ %27, %24 ]
  %31 = getelementptr inbounds [2 x i32], ptr %1, i64 %16, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !34
  %33 = icmp slt i32 %32, %17
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = icmp sgt i32 %32, %14
  br i1 %35, label %36, label %40

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %9, %28 ], [ %8, %34 ]
  %38 = phi i32 [ %14, %28 ], [ %32, %34 ]
  %39 = phi i32 [ %32, %28 ], [ %17, %34 ]
  store i32 %32, ptr %37, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i32 [ %14, %34 ], [ %38, %36 ]
  %42 = phi i32 [ %17, %34 ], [ %39, %36 ]
  %43 = add nuw nsw i64 %16, 1
  %44 = icmp eq i64 %43, %12
  br i1 %44, label %45, label %13, !llvm.loop !43

45:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca [2 x i32], align 4
  %7 = icmp eq i32 %2, %4
  %8 = icmp eq i32 %1, 0
  %9 = or i1 %8, %7
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  store i32 %2, ptr %6, align 4, !tbaa !34
  %11 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %3, ptr %11, align 4, !tbaa !34
  %12 = call zeroext i8 @isect_point_poly_v2_int(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %13

13:                                               ; preds = %5, %10
  %14 = phi i8 [ %12, %10 ], [ 0, %5 ]
  ret i8 %14
}

; Function Attrs: optsize
declare zeroext i8 @isect_point_poly_v2_int(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %10 = icmp eq i32 %2, %6
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %4, %6
  %13 = icmp eq i32 %1, 0
  %14 = or i1 %13, %12
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  store i32 %2, ptr %8, align 4, !tbaa !34
  %16 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  store i32 %3, ptr %16, align 4, !tbaa !34
  store i32 %4, ptr %9, align 4, !tbaa !34
  %17 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 1
  store i32 %5, ptr %17, align 4, !tbaa !34
  %18 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %6) #6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %5, i32 noundef %6) #6
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = add i32 %1, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [2 x i32], ptr %0, i64 %25
  %27 = call i32 @isect_line_line_v2_int(ptr noundef %0, ptr noundef %26, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23, %32
  %30 = phi i64 [ %34, %32 ], [ 0, %23 ]
  %31 = icmp eq i64 %30, %25
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds [2 x i32], ptr %0, i64 %30
  %34 = add nuw nsw i64 %30, 1
  %35 = getelementptr inbounds [2 x i32], ptr %0, i64 %34
  %36 = call i32 @isect_line_line_v2_int(ptr noundef %33, ptr noundef nonnull %35, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %29, !llvm.loop !45

38:                                               ; preds = %29, %32, %23, %20, %15, %7, %11
  %39 = phi i8 [ 0, %11 ], [ 0, %7 ], [ 1, %15 ], [ 1, %20 ], [ 1, %23 ], [ 0, %29 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  ret i8 %39
}

; Function Attrs: optsize
declare i32 @isect_line_line_v2_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 4}
!39 = !{!"rcti", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!40 = !{!39, !35, i64 0}
!41 = !{!39, !35, i64 12}
!42 = !{!39, !35, i64 8}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
