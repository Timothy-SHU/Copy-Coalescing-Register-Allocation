; ModuleID = 'blender/source/blender/blenlib/intern/lasso.c'
source_filename = "blender/source/blender/blenlib/intern/lasso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rcti = type { i32, i32, i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BLI_lasso_boundbox(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
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
  br i1 %10, label %11, label %43

11:                                               ; preds = %3
  %12 = load i32, ptr %0, align 4, !tbaa !40
  %13 = load i32, ptr %9, align 4, !tbaa !42
  %14 = zext i32 %2 to i64
  br label %15

15:                                               ; preds = %11, %39
  %16 = phi i64 [ 1, %11 ], [ %41, %39 ]
  %17 = phi i32 [ %13, %11 ], [ %40, %39 ]
  %18 = phi i32 [ %12, %11 ], [ %29, %39 ]
  %19 = getelementptr inbounds [2 x i32], ptr %1, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = icmp slt i32 %20, %18
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %5, align 4, !tbaa !38
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %15
  %26 = phi ptr [ %0, %15 ], [ %5, %22 ]
  %27 = phi i32 [ %20, %15 ], [ %18, %22 ]
  store i32 %20, ptr %26, align 4, !tbaa !34
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %18, %22 ], [ %27, %25 ]
  %30 = getelementptr inbounds [2 x i32], ptr %1, i64 %16, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = icmp slt i32 %31, %17
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %8, align 4, !tbaa !41
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %28
  %37 = phi ptr [ %9, %28 ], [ %8, %33 ]
  %38 = phi i32 [ %31, %28 ], [ %17, %33 ]
  store i32 %31, ptr %37, align 4, !tbaa !34
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %17, %33 ], [ %38, %36 ]
  %41 = add nuw nsw i64 %16, 1
  %42 = icmp eq i64 %41, %14
  br i1 %42, label %43, label %15, !llvm.loop !43

43:                                               ; preds = %39, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
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
  %12 = call zeroext i8 @isect_point_poly_v2_int(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %13

13:                                               ; preds = %5, %10
  %14 = phi i8 [ %12, %10 ], [ 0, %5 ]
  ret i8 %14
}

declare zeroext i8 @isect_point_poly_v2_int(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  %12 = icmp eq i32 %2, %6
  br i1 %12, label %48, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %4, %6
  %15 = icmp eq i32 %1, 0
  %16 = or i1 %15, %14
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  store i32 %2, ptr %10, align 4, !tbaa !34
  %18 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  store i32 %3, ptr %18, align 4, !tbaa !34
  store i32 %4, ptr %11, align 4, !tbaa !34
  %19 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  store i32 %5, ptr %19, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  store i32 %2, ptr %9, align 4, !tbaa !34
  %20 = getelementptr inbounds i32, ptr %9, i64 1
  store i32 %3, ptr %20, align 4, !tbaa !34
  %21 = call zeroext i8 @isect_point_poly_v2_int(ptr noundef nonnull %9, ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load i32, ptr %11, align 4, !tbaa !34
  %25 = icmp eq i32 %24, %6
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %19, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  store i32 %24, ptr %8, align 4, !tbaa !34
  %28 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !34
  %29 = call zeroext i8 @isect_point_poly_v2_int(ptr noundef nonnull %8, ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %23, %26
  %32 = add i32 %1, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], ptr %0, i64 %33
  %35 = call i32 @isect_line_line_v2_int(ptr noundef %0, ptr noundef %34, ptr noundef nonnull %10, ptr noundef nonnull %11) #4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %31
  %38 = zext i32 %32 to i64
  br label %39

39:                                               ; preds = %37, %42
  %40 = phi i64 [ 0, %37 ], [ %44, %42 ]
  %41 = icmp eq i64 %40, %38
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds [2 x i32], ptr %0, i64 %40
  %44 = add nuw nsw i64 %40, 1
  %45 = getelementptr inbounds [2 x i32], ptr %0, i64 %44
  %46 = call i32 @isect_line_line_v2_int(ptr noundef %43, ptr noundef nonnull %45, ptr noundef nonnull %10, ptr noundef nonnull %11) #4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %39, !llvm.loop !46

48:                                               ; preds = %39, %42, %31, %26, %17, %7, %13
  %49 = phi i8 [ 0, %13 ], [ 0, %7 ], [ 1, %17 ], [ 1, %26 ], [ 1, %31 ], [ 1, %42 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  ret i8 %49
}

declare i32 @isect_line_line_v2_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
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
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !44, !45}
