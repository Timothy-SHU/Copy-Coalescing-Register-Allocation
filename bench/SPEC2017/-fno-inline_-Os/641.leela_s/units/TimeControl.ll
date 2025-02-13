; ModuleID = 'TimeControl.cpp'
source_filename = "TimeControl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array", %"class.boost::array", %"class.boost::array.0", %"class.boost::array.1" }
%"class.boost::array" = type { [2 x i32] }
%"class.boost::array.0" = type { [2 x i8] }
%"class.boost::array.1" = type { [2 x %class.Time] }
%class.Time = type { i32 }

$_ZN5boost5arrayI4TimeLm2EEC2Ev = comdat any

$_ZN5boost5arrayIiLm2EEixEm = comdat any

$_ZN5boost5arrayIbLm2EEixEm = comdat any

$_ZN5boost5arrayI4TimeLm2EEixEm = comdat any

@.str = private unnamed_addr constant [27 x i8] c"Black time: %02d:%02d:%02d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c", %d stones left\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"White time: %02d:%02d:%02d\00", align 1

@_ZN11TimeControlC1Eiiii = dso_local unnamed_addr alias void (ptr, i32, i32, i32, i32), ptr @_ZN11TimeControlC2Eiiii

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11TimeControlC2Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 !prof !53 {
  store i32 %2, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 1
  store i32 %3, ptr %6, align 4, !tbaa !62
  %7 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 2
  store i32 %4, ptr %7, align 4, !tbaa !63
  %8 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 7
  tail call void @_ZN5boost5arrayI4TimeLm2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %8) #6
  %9 = load i32, ptr %0, align 4, !tbaa !54
  %10 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef 0) #6
  store i32 %9, ptr %11, align 4, !tbaa !64
  %12 = load i32, ptr %0, align 4, !tbaa !54
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef 1) #6
  store i32 %12, ptr %13, align 4, !tbaa !64
  %14 = load i32, ptr %7, align 4, !tbaa !63
  %15 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %16 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %15, i64 noundef 0) #6
  store i32 %14, ptr %16, align 4, !tbaa !64
  %17 = load i32, ptr %7, align 4, !tbaa !63
  %18 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %15, i64 noundef 1) #6
  store i32 %17, ptr %18, align 4, !tbaa !64
  %19 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %20 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %19, i64 noundef 0) #6
  store i8 0, ptr %20, align 1, !tbaa !65
  %21 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %19, i64 noundef 1) #6
  store i8 0, ptr %21, align 1, !tbaa !65
  tail call void @_ZN11TimeControl13set_boardsizeEi(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost5arrayI4TimeLm2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %4) #6
  %5 = add nuw nsw i64 %3, 4
  %6 = icmp eq i64 %5, 8
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !67 {
  %3 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !68 {
  %3 = getelementptr inbounds [2 x i8], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11TimeControl13set_boardsizeEi(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !53 {
  %3 = mul nsw i32 %1, %1
  %4 = lshr i32 %3, 2
  %5 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 4, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11TimeControl5startEi(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !70 {
  %3 = alloca %class.Time, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #6
  %4 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayI4TimeLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %4, i64 noundef %5) #6
  %7 = load i32, ptr %3, align 4, !tbaa !64
  store i32 %7, ptr %6, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayI4TimeLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds [2 x %class.Time], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11TimeControl4stopEi(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !70 {
  %3 = alloca %class.Time, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #6
  %4 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayI4TimeLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %4, i64 noundef %5) #6
  %7 = load i32, ptr %6, align 4, !tbaa.struct !72
  %8 = load i32, ptr %3, align 4, !tbaa.struct !72
  %9 = call noundef i32 @_ZN4Time8timediffES_S_(i32 %7, i32 %8) #6
  %10 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef %5) #6
  %12 = load i32, ptr %11, align 4, !tbaa !64
  %13 = sub nsw i32 %12, %9
  store i32 %13, ptr %11, align 4, !tbaa !64
  %14 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %15 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %14, i64 noundef %5) #6
  %16 = load i8, ptr %15, align 1, !tbaa !65, !range !73, !noundef !74
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18, !prof !75

18:                                               ; preds = %2
  %19 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %19, i64 noundef %5) #6
  %21 = load i32, ptr %20, align 4, !tbaa !64
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !64
  br label %23

23:                                               ; preds = %18, %2
  %24 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %14, i64 noundef %5) #6
  %25 = load i8, ptr %24, align 1, !tbaa !65, !range !73, !noundef !74
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %40, !prof !75

27:                                               ; preds = %23
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef %5) #6
  %29 = load i32, ptr %28, align 4, !tbaa !64
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %40, !prof !76

31:                                               ; preds = %27
  %32 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !62
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef %5) #6
  store i32 %33, ptr %34, align 4, !tbaa !64
  %35 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !63
  %37 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %38 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %37, i64 noundef %5) #6
  store i32 %36, ptr %38, align 4, !tbaa !64
  %39 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %14, i64 noundef %5) #6
  store i8 1, ptr %39, align 1, !tbaa !65
  br label %56

40:                                               ; preds = %27, %23
  %41 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %14, i64 noundef %5) #6
  %42 = load i8, ptr %41, align 1, !tbaa !65, !range !73, !noundef !74
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %56, label %44, !prof !75

44:                                               ; preds = %40
  %45 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %46 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %45, i64 noundef %5) #6
  %47 = load i32, ptr %46, align 4, !tbaa !64
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !62
  %52 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef %5) #6
  store i32 %51, ptr %52, align 4, !tbaa !64
  %53 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !63
  %55 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %45, i64 noundef %5) #6
  store i32 %54, ptr %55, align 4, !tbaa !64
  br label %56

56:                                               ; preds = %40, %44, %49, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN4Time8timediffES_S_(i32, i32) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11TimeControl12time_forfeitEi(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !77 {
  %3 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %4) #6
  %6 = load i8, ptr %5, align 1, !tbaa !65, !range !73, !noundef !74
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %10 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %9, i64 noundef %4) #6
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  br label %14

14:                                               ; preds = %8, %13
  %15 = phi i1 [ false, %13 ], [ true, %8 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11TimeControl13display_timesEv(ptr noundef nonnull align 4 dereferenceable(44) %0) local_unnamed_addr #0 align 2 !prof !70 {
  %2 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %3 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef 0) #6
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = sdiv i32 %4, 100
  %6 = sdiv i32 %4, 360000
  %7 = srem i32 %5, 3600
  %8 = trunc i32 %7 to i16
  %9 = sdiv i16 %8, 60
  %10 = sext i16 %9 to i32
  %11 = srem i16 %8, 60
  %12 = sext i16 %11 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, i32 noundef %6, i32 noundef %10, i32 noundef %12) #6
  %13 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %14 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %13, i64 noundef 0) #6
  %15 = load i8, ptr %14, align 1, !tbaa !65, !range !73, !noundef !74
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17, !prof !75

17:                                               ; preds = %1
  %18 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %18, i64 noundef 0) #6
  %20 = load i32, ptr %19, align 4, !tbaa !64
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1, i32 noundef %20) #6
  br label %21

21:                                               ; preds = %17, %1
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2) #6
  %22 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef 1) #6
  %23 = load i32, ptr %22, align 4, !tbaa !64
  %24 = sdiv i32 %23, 100
  %25 = sdiv i32 %23, 360000
  %26 = srem i32 %24, 3600
  %27 = trunc i32 %26 to i16
  %28 = sdiv i16 %27, 60
  %29 = sext i16 %28 to i32
  %30 = srem i16 %27, 60
  %31 = sext i16 %30 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.3, i32 noundef %25, i32 noundef %29, i32 noundef %31) #6
  %32 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %13, i64 noundef 1) #6
  %33 = load i8, ptr %32, align 1, !tbaa !65, !range !73, !noundef !74
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35, !prof !75

35:                                               ; preds = %21
  %36 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %37 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %36, i64 noundef 1) #6
  %38 = load i32, ptr %37, align 4, !tbaa !64
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1, i32 noundef %38) #6
  br label %39

39:                                               ; preds = %35, %21
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2) #6
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11TimeControl17max_time_for_moveEi(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17, !prof !75

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %8 = sext i32 %1 to i64
  %9 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef %8) #6
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = add nsw i32 %10, -500
  %12 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !69
  %14 = sdiv i32 %11, %13
  %15 = mul nsw i32 %14, 3
  %16 = sdiv i32 %15, 2
  br label %46

17:                                               ; preds = %2
  %18 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !63
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 6
  %23 = sext i32 %1 to i64
  %24 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost5arrayIbLm2EEixEm(ptr noundef nonnull align 1 dereferenceable(2) %22, i64 noundef %23) #6
  %25 = load i8, ptr %24, align 1, !tbaa !65, !range !73, !noundef !74
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %29 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %28, i64 noundef %23) #6
  %30 = load i32, ptr %29, align 4, !tbaa !64
  %31 = add nsw i32 %30, -500
  %32 = load i32, ptr %18, align 4, !tbaa !63
  %33 = sdiv i32 %31, %32
  br label %46

34:                                               ; preds = %21
  %35 = load i32, ptr %3, align 4, !tbaa !62
  %36 = load i32, ptr %18, align 4, !tbaa !63
  %37 = sdiv i32 %35, %36
  %38 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %39 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %38, i64 noundef %23) #6
  %40 = load i32, ptr %39, align 4, !tbaa !64
  %41 = add i32 %37, -500
  %42 = add i32 %41, %40
  %43 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !69
  %45 = sdiv i32 %42, %44
  br label %46

46:                                               ; preds = %17, %34, %27, %6
  %47 = phi i32 [ %16, %6 ], [ %33, %27 ], [ %45, %34 ], [ 267840000, %17 ]
  ret i32 %47
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11TimeControl11adjust_timeEiii(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !77 {
  %5 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %6 = sext i32 %1 to i64
  %7 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %5, i64 noundef %6) #6
  store i32 %2, ptr %7, align 4, !tbaa !64
  %8 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 5
  %9 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %8, i64 noundef %6) #6
  store i32 %3, ptr %9, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11TimeControl12get_maintimeEv(ptr nocapture noundef nonnull readonly align 4 dereferenceable(44) %0) local_unnamed_addr #5 align 2 !prof !77 {
  %2 = load i32, ptr %0, align 4, !tbaa !54
  %3 = sdiv i32 %2, 100
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11TimeControl18get_remaining_timeEi(ptr noundef nonnull align 4 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !77 {
  %3 = getelementptr inbounds %class.TimeControl, ptr %0, i64 0, i32 4
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %3, i64 noundef %4) #6
  %6 = load i32, ptr %5, align 4, !tbaa !64
  ret i32 %6
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!52}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 747867958256}
!4 = !{!"MaxCount", i64 115183010216}
!5 = !{!"MaxInternalCount", i64 7835753190}
!6 = !{!"MaxFunctionCount", i64 115183010216}
!7 = !{!"NumCounts", i64 2640}
!8 = !{!"NumFunctions", i64 1541}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 115183010216, i32 1}
!14 = !{i32 100000, i64 115183010216, i32 1}
!15 = !{i32 200000, i64 99995171483, i32 2}
!16 = !{i32 300000, i64 88073131441, i32 3}
!17 = !{i32 400000, i64 88073131441, i32 3}
!18 = !{i32 500000, i64 32030604394, i32 5}
!19 = !{i32 600000, i64 11128423850, i32 9}
!20 = !{i32 700000, i64 5564211925, i32 21}
!21 = !{i32 800000, i64 3688044421, i32 36}
!22 = !{i32 900000, i64 1979964940, i32 64}
!23 = !{i32 950000, i64 877932300, i32 88}
!24 = !{i32 990000, i64 97283944, i32 151}
!25 = !{i32 999000, i64 10252442, i32 368}
!26 = !{i32 999900, i64 1381009, i32 513}
!27 = !{i32 999990, i64 126015, i32 686}
!28 = !{i32 999999, i64 12002, i32 815}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!36 = !{ptr @_ZN11TimeControlC2Eiiii, ptr @_ZN5boost5arrayI4TimeLm2EEC2Ev, i64 11}
!37 = !{ptr @_ZN11TimeControlC2Eiiii, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 44}
!38 = !{ptr @_ZN11TimeControlC2Eiiii, ptr @_ZN5boost5arrayIbLm2EEixEm, i64 22}
!39 = !{ptr @_ZN11TimeControlC2Eiiii, ptr @_ZN11TimeControl13set_boardsizeEi, i64 11}
!40 = !{ptr @_ZN11TimeControl5startEi, ptr @_ZN4TimeC1Ev, i64 970}
!41 = !{ptr @_ZN11TimeControl5startEi, ptr @_ZN5boost5arrayI4TimeLm2EEixEm, i64 970}
!42 = !{ptr @_ZN11TimeControl4stopEi, ptr @_ZN4TimeC1Ev, i64 970}
!43 = !{ptr @_ZN11TimeControl4stopEi, ptr @_ZN5boost5arrayI4TimeLm2EEixEm, i64 970}
!44 = !{ptr @_ZN11TimeControl4stopEi, ptr @_ZN4Time8timediffES_S_, i64 970}
!45 = !{ptr @_ZN11TimeControl4stopEi, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 1943}
!46 = !{ptr @_ZN11TimeControl4stopEi, ptr @_ZN5boost5arrayIbLm2EEixEm, i64 2910}
!47 = !{ptr @_ZN11TimeControl13display_timesEv, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 1942}
!48 = !{ptr @_ZN11TimeControl13display_timesEv, ptr @_ZN5Utils8myprintfEPKcz, i64 4852}
!49 = !{ptr @_ZN11TimeControl13display_timesEv, ptr @_ZN5boost5arrayIbLm2EEixEm, i64 1940}
!50 = !{ptr @_ZN11TimeControl17max_time_for_moveEi, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 969}
!51 = !{ptr @_ZN11TimeControl17max_time_for_moveEi, ptr @_ZN5boost5arrayIbLm2EEixEm, i64 1}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 11}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTS11TimeControl", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !59, i64 16, !59, i64 24, !60, i64 32, !61, i64 36}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!"_ZTSN5boost5arrayIiLm2EEE", !57, i64 0}
!60 = !{!"_ZTSN5boost5arrayIbLm2EEE", !57, i64 0}
!61 = !{!"_ZTSN5boost5arrayI4TimeLm2EEE", !57, i64 0}
!62 = !{!55, !56, i64 4}
!63 = !{!55, !56, i64 8}
!64 = !{!56, !56, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"bool", !57, i64 0}
!67 = !{!"function_entry_count", i64 3086438695}
!68 = !{!"function_entry_count", i64 4872}
!69 = !{!55, !56, i64 12}
!70 = !{!"function_entry_count", i64 970}
!71 = !{!"function_entry_count", i64 1940}
!72 = !{i64 0, i64 4, !64}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!"branch_weights", i32 971, i32 1}
!76 = !{!"branch_weights", i32 1, i32 971}
!77 = !{!"function_entry_count", i64 0}
