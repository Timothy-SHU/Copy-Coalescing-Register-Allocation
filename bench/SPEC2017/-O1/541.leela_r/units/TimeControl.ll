; ModuleID = 'TimeControl.cpp'
source_filename = "TimeControl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array", %"class.boost::array", %"class.boost::array.0", %"class.boost::array.1" }
%"class.boost::array" = type { [2 x i32] }
%"class.boost::array.0" = type { [2 x i8] }
%"class.boost::array.1" = type { [2 x %class.Time] }
%class.Time = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Black time: %02d:%02d:%02d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c", %d stones left\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"White time: %02d:%02d:%02d\00", align 1

@_ZN11TimeControlC1Eiiii = dso_local unnamed_addr alias void (ptr, i32, i32, i32, i32), ptr @_ZN11TimeControlC2Eiiii

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11TimeControlC2Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 !prof !41 {
  store i32 %2, ptr %0, align 4, !tbaa !42
  %6 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 1
  store i32 %3, ptr %6, align 4, !tbaa !50
  %7 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 2
  store i32 %4, ptr %7, align 4, !tbaa !51
  %8 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 7
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %12, %9 ]
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  tail call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %11)
  %12 = add nuw nsw i64 %10, 4
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %14, label %9, !prof !52

14:                                               ; preds = %9
  %15 = load i32, ptr %0, align 4, !tbaa !42
  %16 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  store i32 %15, ptr %16, align 4, !tbaa !53
  %17 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4, i32 0, i64 1
  store i32 %15, ptr %17, align 4, !tbaa !53
  %18 = load i32, ptr %7, align 4, !tbaa !51
  %19 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !53
  %20 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5, i32 0, i64 1
  store i32 %18, ptr %20, align 4, !tbaa !53
  %21 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  store i8 0, ptr %21, align 4, !tbaa !54
  %22 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6, i32 0, i64 1
  store i8 0, ptr %22, align 1, !tbaa !54
  %23 = mul nsw i32 %1, %1
  %24 = lshr i32 %23, 2
  %25 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 3
  store i32 %24, ptr %25, align 4, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11TimeControl13set_boardsizeEi(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !57 {
  %3 = mul nsw i32 %1, %1
  %4 = lshr i32 %3, 2
  %5 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 4, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11TimeControl5startEi(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !58 {
  %3 = alloca %class.Time, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3)
  %4 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [2 x %class.Time], ptr %4, i64 0, i64 %5
  %7 = load i32, ptr %3, align 4, !tbaa !53
  store i32 %7, ptr %6, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11TimeControl4stopEi(ptr nocapture noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !58 {
  %3 = alloca %class.Time, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3)
  %4 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [2 x %class.Time], ptr %4, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa.struct !59
  %8 = load i32, ptr %3, align 4, !tbaa.struct !59
  %9 = call noundef i32 @_ZN4Time8timediffES_S_(i32 %7, i32 %8)
  %10 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %5
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = sub nsw i32 %12, %9
  store i32 %13, ptr %11, align 4, !tbaa !53
  %14 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds [2 x i8], ptr %14, i64 0, i64 %5
  %16 = load i8, ptr %15, align 1, !tbaa !54, !range !60, !noundef !61
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18, !prof !62

18:                                               ; preds = %2
  %19 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds [2 x i32], ptr %19, i64 0, i64 %5
  %21 = load i32, ptr %20, align 4, !tbaa !53
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !53
  br label %32

23:                                               ; preds = %2
  %24 = icmp slt i32 %13, 1
  br i1 %24, label %25, label %32, !prof !63

25:                                               ; preds = %23
  %26 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !50
  store i32 %27, ptr %11, align 4, !tbaa !53
  %28 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !51
  %30 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %31 = getelementptr inbounds [2 x i32], ptr %30, i64 0, i64 %5
  store i32 %29, ptr %31, align 4, !tbaa !53
  store i8 1, ptr %15, align 1, !tbaa !54
  br label %43

32:                                               ; preds = %18, %23
  br i1 %17, label %43, label %33, !prof !62

33:                                               ; preds = %32
  %34 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %35 = getelementptr inbounds [2 x i32], ptr %34, i64 0, i64 %5
  %36 = load i32, ptr %35, align 4, !tbaa !53
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !50
  store i32 %40, ptr %11, align 4, !tbaa !53
  %41 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !51
  store i32 %42, ptr %35, align 4, !tbaa !53
  br label %43

43:                                               ; preds = %32, %33, %38, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret void
}

declare noundef i32 @_ZN4Time8timediffES_S_(i32, i32) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11TimeControl12time_forfeitEi(ptr nocapture noundef nonnull readonly align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !57 {
  %3 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !54, !range !60, !noundef !61
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  br label %14

14:                                               ; preds = %8, %13
  %15 = phi i1 [ false, %13 ], [ true, %8 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11TimeControl13display_timesEv(ptr nocapture noundef nonnull readonly align 4 dereferenceable(44) %0) local_unnamed_addr #0 align 2 !prof !58 {
  %2 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !53
  %4 = sdiv i32 %3, 100
  %5 = sdiv i32 %3, 360000
  %6 = srem i32 %4, 3600
  %7 = sdiv i32 %6, 60
  %8 = srem i32 %6, 60
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %7, i32 noundef %8)
  %9 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %10 = load i8, ptr %9, align 4, !tbaa !54, !range !60, !noundef !61
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12, !prof !62

12:                                               ; preds = %1
  %13 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !53
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1, i32 noundef %14)
  br label %15

15:                                               ; preds = %12, %1
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2)
  %16 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4, i32 0, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !53
  %18 = sdiv i32 %17, 100
  %19 = sdiv i32 %17, 360000
  %20 = srem i32 %18, 3600
  %21 = sdiv i32 %20, 60
  %22 = srem i32 %20, 60
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.3, i32 noundef %19, i32 noundef %21, i32 noundef %22)
  %23 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6, i32 0, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !54, !range !60, !noundef !61
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26, !prof !62

26:                                               ; preds = %15
  %27 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5, i32 0, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !53
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1, i32 noundef %28)
  br label %29

29:                                               ; preds = %26, %15
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2)
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2)
  ret void
}

declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11TimeControl17max_time_for_moveEi(ptr nocapture noundef nonnull readonly align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !58 {
  %3 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17, !prof !62

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !53
  %11 = add nsw i32 %10, -500
  %12 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !56
  %14 = sdiv i32 %11, %13
  %15 = mul nsw i32 %14, 3
  %16 = sdiv i32 %15, 2
  br label %43

17:                                               ; preds = %2
  %18 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !51
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds [2 x i8], ptr %22, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !54, !range !60, !noundef !61
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %29 = getelementptr inbounds [2 x i32], ptr %28, i64 0, i64 %23
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = add nsw i32 %30, -500
  %32 = sdiv i32 %31, %19
  br label %43

33:                                               ; preds = %21
  %34 = sdiv i32 %4, %19
  %35 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %36 = getelementptr inbounds [2 x i32], ptr %35, i64 0, i64 %23
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = add i32 %34, -500
  %39 = add i32 %38, %37
  %40 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !56
  %42 = sdiv i32 %39, %41
  br label %43

43:                                               ; preds = %17, %33, %27, %6
  %44 = phi i32 [ %16, %6 ], [ %32, %27 ], [ %42, %33 ], [ 267840000, %17 ]
  ret i32 %44
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11TimeControl11adjust_timeEiii(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(44) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !57 {
  %5 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !53
  %8 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %6
  store i32 %3, ptr %9, align 4, !tbaa !53
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11TimeControl12get_maintimeEv(ptr nocapture noundef nonnull readonly align 4 dereferenceable(44) %0) local_unnamed_addr #4 align 2 !prof !57 {
  %2 = load i32, ptr %0, align 4, !tbaa !42
  %3 = sdiv i32 %2, 100
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11TimeControl18get_remaining_timeEi(ptr nocapture noundef nonnull readonly align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !57 {
  %3 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !53
  ret i32 %6
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 256142274181}
!8 = !{!"MaxCount", i64 7844141798}
!9 = !{!"MaxInternalCount", i64 7547852578}
!10 = !{!"MaxFunctionCount", i64 7844141798}
!11 = !{!"NumCounts", i64 2880}
!12 = !{!"NumFunctions", i64 415}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7844141798, i32 1}
!18 = !{i32 100000, i64 6538040572, i32 4}
!19 = !{i32 200000, i64 5601060928, i32 8}
!20 = !{i32 300000, i64 4731748263, i32 13}
!21 = !{i32 400000, i64 3429140892, i32 19}
!22 = !{i32 500000, i64 2689357797, i32 28}
!23 = !{i32 600000, i64 2030175252, i32 39}
!24 = !{i32 700000, i64 1513066108, i32 53}
!25 = !{i32 800000, i64 981329770, i32 73}
!26 = !{i32 900000, i64 723674647, i32 104}
!27 = !{i32 950000, i64 415336410, i32 129}
!28 = !{i32 990000, i64 64860573, i32 187}
!29 = !{i32 999000, i64 6034043, i32 304}
!30 = !{i32 999900, i64 678637, i32 400}
!31 = !{i32 999990, i64 50119, i32 498}
!32 = !{i32 999999, i64 5214, i32 613}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11TimeControlC2Eiiii, ptr @_ZN4TimeC1Ev, i64 22}
!36 = !{ptr @_ZN11TimeControl5startEi, ptr @_ZN4TimeC1Ev, i64 970}
!37 = !{ptr @_ZN11TimeControl4stopEi, ptr @_ZN4TimeC1Ev, i64 970}
!38 = !{ptr @_ZN11TimeControl4stopEi, ptr @_ZN4Time8timediffES_S_, i64 970}
!39 = !{ptr @_ZN11TimeControl13display_timesEv, ptr @_ZN5Utils8myprintfEPKcz, i64 4850}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 11}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTS11TimeControl", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !47, i64 16, !47, i64 24, !48, i64 32, !49, i64 36}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"_ZTSN5boost5arrayIiLm2EEE", !45, i64 0}
!48 = !{!"_ZTSN5boost5arrayIbLm2EEE", !45, i64 0}
!49 = !{!"_ZTSN5boost5arrayI4TimeLm2EEE", !45, i64 0}
!50 = !{!43, !44, i64 4}
!51 = !{!43, !44, i64 8}
!52 = !{!"branch_weights", i32 11, i32 11}
!53 = !{!44, !44, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"bool", !45, i64 0}
!56 = !{!43, !44, i64 12}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!"function_entry_count", i64 970}
!59 = !{i64 0, i64 4, !53}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!"branch_weights", i32 970, i32 0}
!63 = !{!"branch_weights", i32 0, i32 970}
