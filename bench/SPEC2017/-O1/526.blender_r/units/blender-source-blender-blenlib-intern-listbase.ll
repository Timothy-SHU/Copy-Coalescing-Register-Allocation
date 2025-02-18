; ModuleID = 'blender/source/blender/blenlib/intern/listbase.c'
source_filename = "blender/source/blender/blenlib/intern/listbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.Link = type { ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_genericNodeN = private unnamed_addr constant [17 x i8] c"BLI_genericNodeN\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_movelisttolist(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  store ptr %3, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !39
  br label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  store ptr %3, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  store ptr %17, ptr %13, align 8, !tbaa !39
  br label %18

18:                                               ; preds = %12, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %19

19:                                               ; preds = %2, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_addhead(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %5, ptr %1, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !42
  %7 = icmp eq ptr %5, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !42
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr %1, ptr %11, align 8, !tbaa !39
  br label %15

15:                                               ; preds = %14, %10
  store ptr %1, ptr %0, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %2, %15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_addtail(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !42
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store ptr %1, ptr %6, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %9, %4
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store ptr %1, ptr %0, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %13, %10
  store ptr %1, ptr %5, align 8, !tbaa !39
  br label %15

15:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_remlink(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %7, %4
  %12 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store ptr %5, ptr %13, align 8, !tbaa !40
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr %13, ptr %17, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %25, ptr %0, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %21, %24, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BLI_remlink_safe(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %6, %1
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %4, !llvm.loop !44

10:                                               ; preds = %4, %2
  %11 = phi i1 [ true, %2 ], [ %7, %4 ]
  %12 = or i1 %3, %11
  %13 = xor i1 %11, true
  %14 = zext i1 %13 to i8
  br i1 %12, label %37, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.Link, ptr %16, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !42
  br label %22

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store ptr %16, ptr %24, align 8, !tbaa !40
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store ptr %24, ptr %28, align 8, !tbaa !39
  br label %32

32:                                               ; preds = %31, %27
  %33 = load ptr, ptr %0, align 8, !tbaa !34
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %36, ptr %0, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %10, %35, %32
  %38 = phi i8 [ %14, %10 ], [ 1, %32 ], [ 1, %35 ]
  ret i8 %38
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_findindex(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %11
  %8 = phi ptr [ %13, %11 ], [ %5, %4 ]
  %9 = phi i32 [ %12, %11 ], [ 0, %4 ]
  %10 = icmp eq ptr %8, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %9, 1
  %13 = load ptr, ptr %8, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !44

15:                                               ; preds = %7, %11, %4, %2
  %16 = phi i32 [ -1, %2 ], [ -1, %4 ], [ -1, %11 ], [ %9, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_listbase_swaplinks(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %61

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !40
  %9 = icmp eq ptr %8, %1
  %10 = select i1 %9, ptr %1, ptr %2
  %11 = select i1 %9, ptr %2, ptr %1
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %10, align 8, !tbaa !40
  store ptr %15, ptr %11, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.Link, ptr %10, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !42
  store ptr %10, ptr %16, align 8, !tbaa !42
  br label %25

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.Link, ptr %10, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  store ptr %23, ptr %20, align 8, !tbaa !42
  store ptr %21, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !40
  store ptr %24, ptr %11, align 8, !tbaa !40
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi ptr [ %12, %19 ], [ %11, %14 ]
  store ptr %26, ptr %10, align 8, !tbaa !40
  %27 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store ptr %11, ptr %28, align 8, !tbaa !40
  br label %31

31:                                               ; preds = %30, %25
  %32 = load ptr, ptr %11, align 8, !tbaa !40
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.Link, ptr %32, i64 0, i32 1
  store ptr %11, ptr %35, align 8, !tbaa !42
  br label %36

36:                                               ; preds = %34, %31
  %37 = getelementptr inbounds %struct.Link, ptr %10, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store ptr %10, ptr %38, align 8, !tbaa !40
  br label %41

41:                                               ; preds = %40, %36
  %42 = load ptr, ptr %10, align 8, !tbaa !40
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Link, ptr %42, i64 0, i32 1
  store ptr %10, ptr %45, align 8, !tbaa !42
  br label %46

46:                                               ; preds = %44, %41
  %47 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  %49 = icmp eq ptr %48, %11
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = icmp eq ptr %48, %10
  br i1 %51, label %52, label %54

52:                                               ; preds = %50, %46
  %53 = phi ptr [ %10, %46 ], [ %11, %50 ]
  store ptr %53, ptr %47, align 8, !tbaa !39
  br label %54

54:                                               ; preds = %52, %50
  %55 = load ptr, ptr %0, align 8, !tbaa !34
  %56 = icmp eq ptr %55, %11
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = icmp eq ptr %55, %10
  br i1 %58, label %59, label %61

59:                                               ; preds = %57, %54
  %60 = phi ptr [ %10, %54 ], [ %11, %57 ]
  store ptr %60, ptr %0, align 8, !tbaa !34
  br label %61

61:                                               ; preds = %59, %57, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_pophead(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %7, %4
  %12 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store ptr %5, ptr %13, align 8, !tbaa !40
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr %13, ptr %17, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %16, %20
  %22 = load ptr, ptr %2, align 8, !tbaa !40
  store ptr %22, ptr %0, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %21, %1
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_poptail(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.Link, ptr %6, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !42
  br label %12

12:                                               ; preds = %8, %5
  %13 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store ptr %6, ptr %14, align 8, !tbaa !40
  br label %17

17:                                               ; preds = %12, %16
  store ptr %14, ptr %2, align 8, !tbaa !39
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 8, !tbaa !40
  store ptr %21, ptr %0, align 8, !tbaa !34
  br label %22

22:                                               ; preds = %20, %17, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_freelinkN(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %7, %4
  %12 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store ptr %5, ptr %13, align 8, !tbaa !40
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr %13, ptr %17, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %25, ptr %0, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %21, %24
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %27(ptr noundef nonnull %1) #9
  br label %28

28:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_sortlist(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10

10:                                               ; preds = %7, %65
  %11 = phi ptr [ %12, %65 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %12, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Link, ptr %12, i64 0, i32 1
  store ptr %14, ptr %17, align 8, !tbaa !42
  br label %18

18:                                               ; preds = %16, %10
  %19 = load ptr, ptr %13, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store ptr %12, ptr %19, align 8, !tbaa !40
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr %4, align 8, !tbaa !39
  %24 = icmp eq ptr %23, %11
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store ptr %19, ptr %4, align 8, !tbaa !39
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = icmp eq ptr %27, %11
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load ptr, ptr %11, align 8, !tbaa !40
  store ptr %30, ptr %0, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %26, %29
  %32 = icmp eq ptr %14, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %31
  %34 = tail call i32 %1(ptr noundef nonnull %14, ptr noundef nonnull %11) #9
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %44

36:                                               ; preds = %39
  %37 = tail call i32 %1(ptr noundef nonnull %42, ptr noundef nonnull %11) #9
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %44, !llvm.loop !47

39:                                               ; preds = %33, %36
  %40 = phi ptr [ %42, %36 ], [ %14, %33 ]
  %41 = getelementptr inbounds %struct.Link, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %36, !llvm.loop !47

44:                                               ; preds = %36, %39, %33, %31
  %45 = phi ptr [ %14, %31 ], [ %14, %33 ], [ %42, %39 ], [ %42, %36 ]
  %46 = phi i1 [ %32, %31 ], [ %32, %33 ], [ %43, %39 ], [ %43, %36 ]
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store ptr %11, ptr %0, align 8, !tbaa !34
  br label %63

50:                                               ; preds = %44
  br i1 %46, label %51, label %53

51:                                               ; preds = %50
  store ptr null, ptr %13, align 8, !tbaa !42
  store ptr %47, ptr %11, align 8, !tbaa !40
  %52 = getelementptr inbounds %struct.Link, ptr %47, i64 0, i32 1
  store ptr %11, ptr %52, align 8, !tbaa !42
  br label %63

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 8, !tbaa !39
  %55 = icmp eq ptr %54, %45
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store ptr %11, ptr %4, align 8, !tbaa !39
  br label %57

57:                                               ; preds = %56, %53
  %58 = load ptr, ptr %45, align 8, !tbaa !40
  store ptr %58, ptr %11, align 8, !tbaa !40
  store ptr %45, ptr %13, align 8, !tbaa !42
  store ptr %11, ptr %45, align 8, !tbaa !40
  %59 = load ptr, ptr %11, align 8, !tbaa !40
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Link, ptr %59, i64 0, i32 1
  br label %63

63:                                               ; preds = %61, %51, %49
  %64 = phi ptr [ %4, %49 ], [ %0, %51 ], [ %62, %61 ]
  store ptr %11, ptr %64, align 8, !tbaa !43
  br label %65

65:                                               ; preds = %63, %57
  %66 = icmp eq ptr %12, null
  br i1 %66, label %67, label %10, !llvm.loop !48

67:                                               ; preds = %65, %7, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_insertlinkafter(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store ptr %2, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br label %27

10:                                               ; preds = %5
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  store ptr null, ptr %13, align 8, !tbaa !42
  store ptr %6, ptr %2, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.Link, ptr %6, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !42
  br label %27

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store ptr %2, ptr %16, align 8, !tbaa !39
  br label %20

20:                                               ; preds = %19, %15
  %21 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %21, ptr %2, align 8, !tbaa !40
  %22 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !42
  store ptr %2, ptr %1, align 8, !tbaa !40
  %23 = load ptr, ptr %2, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Link, ptr %23, i64 0, i32 1
  br label %27

27:                                               ; preds = %8, %12, %25
  %28 = phi ptr [ %26, %25 ], [ %0, %12 ], [ %9, %8 ]
  store ptr %2, ptr %28, align 8, !tbaa !43
  br label %29

29:                                               ; preds = %27, %20, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_sortlist_r(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %68, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %68, label %11

11:                                               ; preds = %8, %66
  %12 = phi ptr [ %13, %66 ], [ %9, %8 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.Link, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %13, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Link, ptr %13, i64 0, i32 1
  store ptr %15, ptr %18, align 8, !tbaa !42
  br label %19

19:                                               ; preds = %17, %11
  %20 = load ptr, ptr %14, align 8, !tbaa !42
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store ptr %13, ptr %20, align 8, !tbaa !40
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr %5, align 8, !tbaa !39
  %25 = icmp eq ptr %24, %12
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store ptr %20, ptr %5, align 8, !tbaa !39
  br label %27

27:                                               ; preds = %26, %23
  %28 = load ptr, ptr %0, align 8, !tbaa !34
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr %12, align 8, !tbaa !40
  store ptr %31, ptr %0, align 8, !tbaa !34
  br label %32

32:                                               ; preds = %27, %30
  %33 = icmp eq ptr %15, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = tail call i32 %2(ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %12) #9
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %45

37:                                               ; preds = %40
  %38 = tail call i32 %2(ptr noundef %1, ptr noundef nonnull %43, ptr noundef nonnull %12) #9
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45, !llvm.loop !49

40:                                               ; preds = %34, %37
  %41 = phi ptr [ %43, %37 ], [ %15, %34 ]
  %42 = getelementptr inbounds %struct.Link, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %37, !llvm.loop !49

45:                                               ; preds = %37, %40, %34, %32
  %46 = phi ptr [ %15, %32 ], [ %15, %34 ], [ %43, %40 ], [ %43, %37 ]
  %47 = phi i1 [ %33, %32 ], [ %33, %34 ], [ %44, %40 ], [ %44, %37 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store ptr %12, ptr %0, align 8, !tbaa !34
  br label %64

51:                                               ; preds = %45
  br i1 %47, label %52, label %54

52:                                               ; preds = %51
  store ptr null, ptr %14, align 8, !tbaa !42
  store ptr %48, ptr %12, align 8, !tbaa !40
  %53 = getelementptr inbounds %struct.Link, ptr %48, i64 0, i32 1
  store ptr %12, ptr %53, align 8, !tbaa !42
  br label %64

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8, !tbaa !39
  %56 = icmp eq ptr %55, %46
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store ptr %12, ptr %5, align 8, !tbaa !39
  br label %58

58:                                               ; preds = %57, %54
  %59 = load ptr, ptr %46, align 8, !tbaa !40
  store ptr %59, ptr %12, align 8, !tbaa !40
  store ptr %46, ptr %14, align 8, !tbaa !42
  store ptr %12, ptr %46, align 8, !tbaa !40
  %60 = load ptr, ptr %12, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Link, ptr %60, i64 0, i32 1
  br label %64

64:                                               ; preds = %62, %52, %50
  %65 = phi ptr [ %5, %50 ], [ %0, %52 ], [ %63, %62 ]
  store ptr %12, ptr %65, align 8, !tbaa !43
  br label %66

66:                                               ; preds = %64, %58
  %67 = icmp eq ptr %13, null
  br i1 %67, label %68, label %11, !llvm.loop !50

68:                                               ; preds = %66, %8, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_insertlinkbefore(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store ptr %2, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br label %25

10:                                               ; preds = %5
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !42
  store ptr null, ptr %2, align 8, !tbaa !40
  store ptr %2, ptr %14, align 8, !tbaa !40
  br label %25

16:                                               ; preds = %10
  %17 = icmp eq ptr %6, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store ptr %2, ptr %0, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %18, %16
  store ptr %1, ptr %2, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !42
  store ptr %2, ptr %20, align 8, !tbaa !42
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19, %8, %12
  %26 = phi ptr [ %13, %12 ], [ %9, %8 ], [ %23, %19 ]
  store ptr %2, ptr %26, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %25, %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_freelist(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @free(ptr noundef %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !51

8:                                                ; preds = %4, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BLI_freelistN(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %7(ptr noundef nonnull %5) #9
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !llvm.loop !52

9:                                                ; preds = %4, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_countlist(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  %8 = add nuw nsw i32 %5, 1
  br i1 %7, label %9, label %3, !llvm.loop !53

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %5, %3 ]
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findlink(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %12

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %11, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %7, %4 ], [ %0, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp ne ptr %7, null
  %9 = icmp ne i32 %5, 0
  %10 = select i1 %8, i1 %9, i1 false
  %11 = add nsw i32 %5, -1
  br i1 %10, label %4, label %12, !llvm.loop !54

12:                                               ; preds = %4, %2
  %13 = phi ptr [ null, %2 ], [ %7, %4 ]
  ret ptr %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_rfindlink(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp ne ptr %6, null
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %6, %4 ]
  %12 = phi i32 [ %13, %10 ], [ %1, %4 ]
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp ne ptr %15, null
  %17 = icmp ne i32 %13, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %10, label %19, !llvm.loop !55

19:                                               ; preds = %10, %4, %2
  %20 = phi ptr [ null, %2 ], [ %6, %4 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findstring(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  %8 = load i8, ptr %1, align 1, !tbaa !56
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi ptr [ %4, %6 ], [ %18, %17 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 %7
  %12 = load i8, ptr %11, align 1, !tbaa !56
  %13 = icmp eq i8 %8, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %11) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9, %14
  %18 = load ptr, ptr %10, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !57

20:                                               ; preds = %14, %17, %3
  %21 = phi ptr [ null, %3 ], [ %10, %14 ], [ null, %17 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_rfindstring(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = load i8, ptr %1, align 1, !tbaa !56
  br label %10

10:                                               ; preds = %7, %18
  %11 = phi ptr [ %5, %7 ], [ %20, %18 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 %8
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = icmp eq i8 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10, %15
  %19 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !58

22:                                               ; preds = %15, %18, %3
  %23 = phi ptr [ null, %3 ], [ %11, %15 ], [ null, %18 ]
  ret ptr %23
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findstring_ptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  %8 = load i8, ptr %1, align 1, !tbaa !56
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %4, %6 ], [ %19, %18 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 %7
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = icmp eq i8 %8, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9, %15
  %19 = load ptr, ptr %10, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !59

21:                                               ; preds = %15, %18, %3
  %22 = phi ptr [ null, %3 ], [ %10, %15 ], [ null, %18 ]
  ret ptr %22
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_rfindstring_ptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = load i8, ptr %1, align 1, !tbaa !56
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi ptr [ %5, %7 ], [ %21, %19 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = load i8, ptr %13, align 1, !tbaa !56
  %15 = icmp eq i8 %9, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %10, %16
  %20 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !60

23:                                               ; preds = %16, %19, %3
  %24 = phi ptr [ null, %3 ], [ %11, %16 ], [ null, %19 ]
  ret ptr %24
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findptr(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = sext i32 %2 to i64
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %0, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %7, i64 %4
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %5, !llvm.loop !61

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %7, %9 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_rfindptr(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = sext i32 %2 to i64
  %6 = load ptr, ptr %4, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3, %13
  %9 = phi ptr [ %15, %13 ], [ %6, %3 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 %5
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Link, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !62

17:                                               ; preds = %8, %13, %3
  %18 = phi ptr [ null, %3 ], [ %9, %8 ], [ null, %13 ]
  ret ptr %18
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_findstringindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  %8 = load i8, ptr %1, align 1, !tbaa !56
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %4, %6 ], [ %20, %18 ]
  %11 = phi i32 [ 0, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds i8, ptr %10, i64 %7
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = icmp eq i8 %8, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %9
  %19 = add nuw nsw i32 %11, 1
  %20 = load ptr, ptr %10, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !63

22:                                               ; preds = %15, %18, %3
  %23 = phi i32 [ -1, %3 ], [ %11, %15 ], [ -1, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_duplicatelist(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %3, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %5, label %24, label %6

6:                                                ; preds = %2, %21
  %7 = phi ptr [ %22, %21 ], [ %3, %2 ]
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %9 = tail call ptr %8(ptr noundef nonnull %7) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  store ptr null, ptr %9, align 8, !tbaa !40
  %12 = load ptr, ptr %4, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.Link, ptr %9, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !42
  %14 = icmp eq ptr %12, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store ptr %9, ptr %12, align 8, !tbaa !40
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store ptr %9, ptr %0, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %19, %16
  store ptr %9, ptr %4, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %6, %20
  %22 = load ptr, ptr %7, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !64

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_listbase_reverse(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ null, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  store ptr %5, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.Link, ptr %6, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !42
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %4, !llvm.loop !65

10:                                               ; preds = %4, %1
  %11 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  store ptr %12, ptr %0, align 8, !tbaa !34
  store ptr %2, ptr %11, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_listbase_rotate_first(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !42
  store ptr %5, ptr %4, align 8, !tbaa !40
  store ptr %1, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  store ptr %8, ptr %3, align 8, !tbaa !39
  store ptr null, ptr %7, align 8, !tbaa !42
  store ptr null, ptr %8, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_listbase_rotate_last(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !42
  store ptr %5, ptr %4, align 8, !tbaa !40
  %7 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %7, ptr %0, align 8, !tbaa !34
  store ptr %1, ptr %3, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.Link, ptr %7, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !42
  store ptr null, ptr %1, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_genericNodeN(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %5 = tail call ptr %4(i64 noundef 24, ptr noundef nonnull @__func__.BLI_genericNodeN) #9
  %6 = getelementptr inbounds %struct.LinkData, ptr %5, i64 0, i32 2
  store ptr %0, ptr %6, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!41, !36, i64 0}
!41 = !{!"Link", !36, i64 0, !36, i64 8}
!42 = !{!41, !36, i64 8}
!43 = !{!36, !36, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
!48 = distinct !{!48, !45, !46}
!49 = distinct !{!49, !45, !46}
!50 = distinct !{!50, !45, !46}
!51 = distinct !{!51, !45, !46}
!52 = distinct !{!52, !45, !46}
!53 = distinct !{!53, !45, !46}
!54 = distinct !{!54, !45, !46}
!55 = distinct !{!55, !45, !46}
!56 = !{!37, !37, i64 0}
!57 = distinct !{!57, !45, !46}
!58 = distinct !{!58, !45, !46}
!59 = distinct !{!59, !45, !46}
!60 = distinct !{!60, !45, !46}
!61 = distinct !{!61, !45, !46}
!62 = distinct !{!62, !45, !46}
!63 = distinct !{!63, !45, !46}
!64 = distinct !{!64, !45, !46}
!65 = distinct !{!65, !45, !46}
!66 = !{!67, !36, i64 16}
!67 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
