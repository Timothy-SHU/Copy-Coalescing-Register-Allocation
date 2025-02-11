; ModuleID = 'implicit.c'
source_filename = "implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.list_elem = type { ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @refreshArcPointers(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !5
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  br label %9

9:                                                ; preds = %7, %44
  %10 = phi i64 [ 0, %7 ], [ %45, %44 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %13, align 8, !tbaa !16
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = zext nneg i32 %16 to i64
  %20 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %19) #16
  %21 = getelementptr inbounds %struct.arc, ptr %2, i64 %20
  store ptr %21, ptr %12, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %18, %15, %9
  %23 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %24, align 8, !tbaa !16
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = zext nneg i32 %27 to i64
  %31 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %30) #16
  %32 = getelementptr inbounds %struct.arc, ptr %2, i64 %31
  store ptr %32, ptr %23, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %29, %26, %22
  %34 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !16
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = zext nneg i32 %38 to i64
  %42 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %41) #16
  %43 = getelementptr inbounds %struct.arc, ptr %2, i64 %42
  store ptr %43, ptr %34, align 8, !tbaa !20
  br label %44

44:                                               ; preds = %33, %37, %40
  %45 = add nuw nsw i64 %10, 1
  %46 = load i64, ptr %4, align 8, !tbaa !5
  %47 = icmp slt i64 %10, %46
  br i1 %47, label %9, label %48, !llvm.loop !21

48:                                               ; preds = %44, %3
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @refreshPositions(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call i64 @refreshArcPointers(ptr noundef %0, ptr noundef %1, ptr noundef %5) #17
  %7 = icmp sgt i64 %2, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  br label %10

10:                                               ; preds = %8, %20
  %11 = phi i64 [ 0, %8 ], [ %21, %20 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.arc, ptr %12, i64 %11
  %14 = load i32, ptr %13, align 8, !tbaa !16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = zext nneg i32 %14 to i64
  %18 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %17) #16
  %19 = getelementptr inbounds %struct.arc, ptr %5, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(72) %13, i64 72, i1 false), !tbaa.struct !25
  br label %20

20:                                               ; preds = %10, %16
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, %2
  br i1 %22, label %23, label %10, !llvm.loop !30

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  store ptr %5, ptr %24, align 8, !tbaa !24
  store ptr %25, ptr %4, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.arc, ptr %5, i64 %2
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %26, ptr %27, align 8, !tbaa !31
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @marc_arcs(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !32
  %7 = icmp slt i64 %6, 15001
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !33
  %10 = select i1 %7, i64 -1000000, i64 -4000000
  %11 = add nsw i64 %9, %10
  store i64 0, ptr %1, align 8, !tbaa !27
  %12 = load i64, ptr %2, align 8, !tbaa !27
  store i64 %12, ptr %1, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %14 = icmp sgt i64 %12, 0
  %15 = icmp sgt i64 %11, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load ptr, ptr %3, align 8, !tbaa !28
  %19 = load i64, ptr %13, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %18, %17 ], [ %32, %20 ]
  %22 = phi i64 [ 0, %17 ], [ %33, %20 ]
  %23 = phi i64 [ %19, %17 ], [ %28, %20 ]
  %24 = phi i64 [ 0, %17 ], [ %31, %20 ]
  %25 = load i64, ptr %2, align 8, !tbaa !27
  %26 = icmp slt i64 %22, %25
  tail call void @llvm.assume(i1 %26)
  %27 = load ptr, ptr %21, align 8, !tbaa !28
  %28 = add nsw i64 %23, 1
  %29 = trunc i64 %23 to i32
  store i32 %29, ptr %27, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.arc, ptr %27, i64 0, i32 7
  store i64 1, ptr %30, align 8, !tbaa !35
  %31 = add nuw nsw i64 %24, 1
  %32 = getelementptr inbounds ptr, ptr %21, i64 1
  %33 = add nuw nsw i64 %22, 1
  %34 = load i64, ptr %1, align 8, !tbaa !27
  %35 = icmp slt i64 %31, %34
  %36 = icmp slt i64 %31, %11
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %20, label %38, !llvm.loop !36

38:                                               ; preds = %20, %4
  %39 = phi i64 [ 0, %4 ], [ %33, %20 ]
  store i64 %39, ptr %1, align 8, !tbaa !27
  %40 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %40, align 8, !tbaa !37
  %41 = load i64, ptr %1, align 8, !tbaa !27
  %42 = load i64, ptr %13, align 8, !tbaa !34
  %43 = add i64 %41, -1
  %44 = add i64 %43, %42
  %45 = sdiv i64 %44, 4000
  %46 = add nsw i64 %45, 1
  %47 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %46, ptr %47, align 8, !tbaa !38
  %48 = load i64, ptr %1, align 8, !tbaa !27
  %49 = add nsw i64 %48, %42
  %50 = srem i64 %49, 4000
  %51 = icmp eq i64 %50, 0
  %52 = add nsw i64 %45, -3999
  %53 = add nsw i64 %52, %50
  %54 = select i1 %51, i64 %46, i64 %53
  %55 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %54, ptr %55, align 8
  %56 = icmp slt i64 %54, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %38, %57
  %58 = phi i64 [ %61, %57 ], [ 4000, %38 ]
  %59 = phi i64 [ %60, %57 ], [ %54, %38 ]
  %60 = add nsw i64 %59, %46
  %61 = add nsw i64 %58, -1
  %62 = icmp slt i64 %60, 0
  br i1 %62, label %57, label %63, !llvm.loop !39

63:                                               ; preds = %57
  store i64 %60, ptr %55, align 8, !tbaa !40
  store i64 %61, ptr %40, align 8, !tbaa !37
  br label %64

64:                                               ; preds = %63, %38
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @arc_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !35
  %6 = load ptr, ptr %1, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.arc, ptr %6, i64 0, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !35
  %9 = icmp sgt i64 %5, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = icmp slt i64 %5, %8
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %3, align 8, !tbaa !16
  %14 = load i32, ptr %6, align 8, !tbaa !16
  %15 = icmp slt i32 %13, %14
  %16 = select i1 %15, i32 -1, i32 1
  br label %17

17:                                               ; preds = %12, %10, %2
  %18 = phi i32 [ 1, %2 ], [ -1, %10 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @resize_prob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  %3 = load i64, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !42
  %6 = add nsw i64 %5, %3
  store i64 %6, ptr %4, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !33
  %9 = add nsw i64 %8, %3
  store i64 %9, ptr %7, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = mul i64 %6, 72
  %13 = tail call ptr @realloc(ptr noundef %11, i64 noundef %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %0) #17
  %17 = load ptr, ptr @stdout, align 8, !tbaa !28
  %18 = tail call i32 @fflush(ptr noundef %17) #17
  br label %56

19:                                               ; preds = %1
  %20 = load ptr, ptr %10, align 8, !tbaa !24
  store ptr %13, ptr %10, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.arc, ptr %13, i64 %22
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %23, ptr %24, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.node, ptr %26, i64 1
  %30 = icmp ult ptr %29, %28
  br i1 %30, label %31, label %50

31:                                               ; preds = %19
  %32 = ptrtoint ptr %20 to i64
  br label %33

33:                                               ; preds = %31, %47
  %34 = phi ptr [ %29, %31 ], [ %48, %47 ]
  %35 = phi ptr [ %26, %31 ], [ %34, %47 ]
  %36 = getelementptr inbounds %struct.node, ptr %35, i64 1, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.node, ptr %35, i64 1, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = icmp eq ptr %41, %26
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = ptrtoint ptr %37 to i64
  %45 = sub i64 %44, %32
  %46 = getelementptr inbounds i8, ptr %13, i64 %45
  store ptr %46, ptr %36, align 8, !tbaa !13
  br label %47

47:                                               ; preds = %33, %39, %43
  %48 = getelementptr inbounds %struct.node, ptr %34, i64 1
  %49 = icmp ult ptr %48, %28
  br i1 %49, label %33, label %50, !llvm.loop !45

50:                                               ; preds = %47, %19
  %51 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %52 = load ptr, ptr %51, align 8, !tbaa !23
  %53 = load i64, ptr %4, align 8, !tbaa !42
  %54 = mul i64 %53, 72
  %55 = tail call ptr @realloc(ptr noundef %52, i64 noundef %54) #18
  store ptr %55, ptr %51, align 8, !tbaa !23
  br label %56

56:                                               ; preds = %50, %15
  %57 = phi i64 [ 0, %50 ], [ -1, %15 ]
  ret i64 %57
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @insert_new_arc(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 %6, i64 noundef %7) local_unnamed_addr #9 {
  %9 = getelementptr inbounds %struct.arc, ptr %0, i64 %1
  %10 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 8
  store i64 %4, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 1
  store i64 %4, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 7
  store i64 %5, ptr %14, align 8, !tbaa !35
  %15 = trunc i64 %7 to i32
  store i32 %15, ptr %9, align 8, !tbaa !16
  %16 = icmp eq i64 %1, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %8
  %18 = add nsw i64 %1, 1
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi i64 [ %41, %27 ], [ %1, %17 ]
  %21 = phi i64 [ %22, %27 ], [ %18, %17 ]
  %22 = sdiv i64 %21, 2
  %23 = getelementptr %struct.arc, ptr %0, i64 %22
  %24 = getelementptr %struct.arc, ptr %23, i64 -1, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !35
  %26 = icmp slt i64 %25, %5
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = getelementptr %struct.arc, ptr %23, i64 -1
  %29 = getelementptr %struct.arc, ptr %23, i64 -1, i32 2
  %30 = getelementptr inbounds %struct.arc, ptr %0, i64 %20
  %31 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 2
  %32 = getelementptr %struct.arc, ptr %23, i64 -1, i32 3
  %33 = load <2 x ptr>, ptr %29, align 8, !tbaa !28
  store <2 x ptr> %33, ptr %31, align 8, !tbaa !28
  %34 = getelementptr %struct.arc, ptr %23, i64 -1, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 1
  store i64 %35, ptr %36, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 8
  store i64 %35, ptr %37, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 7
  store i64 %25, ptr %38, align 8, !tbaa !35
  %39 = load i32, ptr %28, align 8, !tbaa !16
  store i32 %39, ptr %30, align 8, !tbaa !16
  store ptr %2, ptr %29, align 8, !tbaa !46
  store ptr %3, ptr %32, align 8, !tbaa !47
  store i64 %4, ptr %34, align 8, !tbaa !49
  %40 = getelementptr %struct.arc, ptr %23, i64 -1, i32 8
  store i64 %4, ptr %40, align 8, !tbaa !48
  store i64 %5, ptr %24, align 8, !tbaa !35
  store i32 %15, ptr %28, align 8, !tbaa !16
  %41 = add nsw i64 %22, -1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %19, !llvm.loop !50

43:                                               ; preds = %19, %27, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @replace_weaker_arc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #9 {
  %8 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 8
  store i64 %3, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 1
  store i64 %3, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 7
  store i64 %4, ptr %12, align 8, !tbaa !35
  %13 = trunc i64 %6 to i32
  store i32 %13, ptr %0, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.arc, ptr %0, i64 1, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.arc, ptr %0, i64 2, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !35
  %18 = icmp sgt i64 %15, %17
  %19 = select i1 %18, i64 2, i64 3
  %20 = getelementptr %struct.arc, ptr %0, i64 -1, i32 7
  %21 = icmp sgt i64 %19, %5
  br i1 %21, label %57, label %22

22:                                               ; preds = %7, %54
  %23 = phi i64 [ %55, %54 ], [ %19, %7 ]
  %24 = phi i64 [ %23, %54 ], [ 1, %7 ]
  %25 = getelementptr %struct.arc, ptr %0, i64 %23
  %26 = getelementptr %struct.arc, ptr %25, i64 -1, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !35
  %28 = icmp sgt i64 %27, %4
  br i1 %28, label %29, label %57

29:                                               ; preds = %22
  %30 = getelementptr %struct.arc, ptr %25, i64 -1
  %31 = getelementptr %struct.arc, ptr %25, i64 -1, i32 2
  %32 = getelementptr %struct.arc, ptr %0, i64 %24
  %33 = getelementptr %struct.arc, ptr %32, i64 -1
  %34 = getelementptr %struct.arc, ptr %32, i64 -1, i32 2
  %35 = getelementptr %struct.arc, ptr %25, i64 -1, i32 3
  %36 = load <2 x ptr>, ptr %31, align 8, !tbaa !28
  store <2 x ptr> %36, ptr %34, align 8, !tbaa !28
  %37 = getelementptr %struct.arc, ptr %25, i64 -1, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !49
  %39 = getelementptr %struct.arc, ptr %32, i64 -1, i32 1
  store i64 %38, ptr %39, align 8, !tbaa !49
  %40 = getelementptr %struct.arc, ptr %32, i64 -1, i32 8
  store i64 %38, ptr %40, align 8, !tbaa !48
  %41 = getelementptr %struct.arc, ptr %32, i64 -1, i32 7
  store i64 %27, ptr %41, align 8, !tbaa !35
  %42 = load i32, ptr %30, align 8, !tbaa !16
  store i32 %42, ptr %33, align 8, !tbaa !16
  store ptr %1, ptr %31, align 8, !tbaa !46
  store ptr %2, ptr %35, align 8, !tbaa !47
  store i64 %3, ptr %37, align 8, !tbaa !49
  %43 = getelementptr %struct.arc, ptr %25, i64 -1, i32 8
  store i64 %3, ptr %43, align 8, !tbaa !48
  store i64 %4, ptr %26, align 8, !tbaa !35
  store i32 %13, ptr %30, align 8, !tbaa !16
  %44 = shl nsw i64 %23, 1
  %45 = icmp slt i64 %44, %5
  br i1 %45, label %46, label %54

46:                                               ; preds = %29
  %47 = getelementptr %struct.arc, ptr %20, i64 %44
  %48 = load i64, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.arc, ptr %0, i64 %44, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !35
  %51 = icmp slt i64 %48, %50
  %52 = zext i1 %51 to i64
  %53 = or disjoint i64 %44, %52
  br label %54

54:                                               ; preds = %46, %29
  %55 = phi i64 [ %44, %29 ], [ %53, %46 ]
  %56 = icmp sgt i64 %55, %5
  br i1 %56, label %57, label %22, !llvm.loop !51

57:                                               ; preds = %22, %54, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculate_max_redcost(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #10 {
  store i64 0, ptr %1, align 8, !tbaa !27
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4, %16
  %7 = phi i64 [ %17, %16 ], [ 0, %4 ]
  %8 = phi i64 [ %18, %16 ], [ 0, %4 ]
  %9 = getelementptr inbounds ptr, ptr %2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.arc, ptr %11, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !35
  %14 = icmp sgt i64 %13, %7
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  store i64 %13, ptr %1, align 8, !tbaa !27
  br label %16

16:                                               ; preds = %6, %15
  %17 = phi i64 [ %7, %6 ], [ %13, %15 ]
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, %3
  br i1 %19, label %20, label %6, !llvm.loop !52

20:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @switch_arcs(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #11 {
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %8
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 7
  br label %13

13:                                               ; preds = %10, %58
  %14 = phi i64 [ 0, %10 ], [ %60, %58 ]
  %15 = phi i64 [ %11, %10 ], [ %62, %58 ]
  %16 = phi i64 [ 0, %10 ], [ %59, %58 ]
  %17 = getelementptr inbounds i64, ptr %1, i64 %15
  %18 = load i64, ptr %17, align 8, !tbaa !27
  %19 = tail call i64 @llvm.smin.i64(i64 %18, i64 %6)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %13
  %22 = getelementptr inbounds ptr, ptr %2, i64 %15
  br label %23

23:                                               ; preds = %21, %54
  %24 = phi i64 [ 0, %21 ], [ %56, %54 ]
  %25 = phi i64 [ %16, %21 ], [ %55, %54 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !28
  %27 = getelementptr inbounds %struct.arc, ptr %26, i64 %24
  %28 = getelementptr inbounds %struct.arc, ptr %26, i64 %24, i32 4
  %29 = load i16, ptr %28, align 8, !tbaa !53
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.arc, ptr %26, i64 %24, i32 7
  %33 = load i64, ptr %32, align 8
  %34 = load i64, ptr %12, align 8, !tbaa !35
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, ptr %27, align 8, !tbaa.struct !25
  br label %44

38:                                               ; preds = %31
  %39 = icmp eq i64 %33, %34
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = load i32, ptr %27, align 8
  %42 = load i32, ptr %3, align 8, !tbaa !16
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36, %40
  %45 = phi i32 [ %37, %36 ], [ %41, %40 ]
  %46 = getelementptr inbounds i8, ptr %27, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa.struct !54
  %48 = getelementptr inbounds i8, ptr %27, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa.struct !55
  %50 = getelementptr inbounds i8, ptr %27, i64 24
  %51 = load ptr, ptr %50, align 8, !tbaa.struct !56
  %52 = add nsw i64 %25, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !25
  %53 = sext i32 %45 to i64
  tail call void @replace_weaker_arc(ptr noundef nonnull %3, ptr noundef %49, ptr noundef %51, i64 noundef %47, i64 noundef %33, i64 noundef %5, i64 noundef %53) #17
  br label %54

54:                                               ; preds = %23, %38, %40, %44
  %55 = phi i64 [ %25, %23 ], [ %52, %44 ], [ %25, %40 ], [ %25, %38 ]
  %56 = add nuw nsw i64 %24, 1
  %57 = icmp eq i64 %56, %19
  br i1 %57, label %58, label %23, !llvm.loop !57

58:                                               ; preds = %54, %13
  %59 = phi i64 [ %16, %13 ], [ %55, %54 ]
  %60 = add nuw nsw i64 %14, 1
  %61 = add nsw i64 %15, 1
  %62 = srem i64 %61, %7
  %63 = icmp eq i64 %60, %7
  br i1 %63, label %64, label %13, !llvm.loop !58

64:                                               ; preds = %58, %8
  %65 = phi i64 [ 0, %8 ], [ %59, %58 ]
  ret i64 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @price_out_impl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 0, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %5 = load i64, ptr %4, align 8, !tbaa !59
  %6 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  %7 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  %8 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  %9 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !32
  %12 = icmp slt i64 %11, 15001
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %14 = load i64, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  %16 = load i64, ptr %15, align 8, !tbaa !41
  %17 = add nsw i64 %16, %14
  %18 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !42
  %20 = icmp sgt i64 %17, %19
  br i1 %12, label %21, label %30

21:                                               ; preds = %1
  br i1 %20, label %22, label %40

22:                                               ; preds = %21
  %23 = mul nsw i64 %11, %11
  %24 = lshr i64 %23, 1
  %25 = add nsw i64 %14, %24
  %26 = icmp sgt i64 %25, %19
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = tail call i64 @resize_prob(ptr noundef nonnull %0) #17, !range !60
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %324

30:                                               ; preds = %1
  br i1 %20, label %31, label %40

31:                                               ; preds = %30
  %32 = mul nsw i64 %11, %11
  %33 = lshr i64 %32, 1
  %34 = add nsw i64 %14, %33
  %35 = icmp sgt i64 %34, %19
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = tail call i64 @resize_prob(ptr noundef nonnull %0) #17, !range !60
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %324

39:                                               ; preds = %36, %27
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %0, ptr noundef nonnull @getOriginalArcPosition) #16
  br label %40

40:                                               ; preds = %39, %30, %31, %21, %22
  %41 = phi i1 [ true, %22 ], [ true, %21 ], [ true, %31 ], [ true, %30 ], [ false, %39 ]
  %42 = load i64, ptr %10, align 8, !tbaa !32
  %43 = icmp slt i64 %42, 15001
  %44 = select i1 %43, i64 1000, i64 2000
  %45 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %46 = load ptr, ptr %45, align 8, !tbaa !23
  %47 = icmp eq ptr %46, null
  br i1 %47, label %324, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %50 = load i64, ptr %49, align 8, !tbaa !33
  %51 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !42
  store i64 0, ptr %3, align 8, !tbaa !27
  store ptr %46, ptr %9, align 8, !tbaa !28
  store i64 0, ptr %7, align 8, !tbaa !27
  store i64 0, ptr %6, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = tail call noalias ptr @calloc(i64 noundef %50, i64 noundef 8) #21
  store ptr %55, ptr %8, align 8, !tbaa !28
  %56 = icmp sgt i64 %50, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %48
  %58 = add nuw i64 %50, 1
  %59 = and i64 %58, -2
  %60 = add nsw i64 %50, -1
  %61 = insertelement <2 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <2 x i64> %61, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %63

63:                                               ; preds = %77, %57
  %64 = phi i64 [ 0, %57 ], [ %78, %77 ]
  %65 = phi <2 x i64> [ <i64 0, i64 1>, %57 ], [ %79, %77 ]
  %66 = icmp ule <2 x i64> %65, %62
  %67 = extractelement <2 x i1> %66, i64 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds ptr, ptr %55, i64 %64
  %70 = getelementptr inbounds %struct.arc, ptr %54, i64 %64
  store ptr %70, ptr %69, align 8, !tbaa !28
  br label %71

71:                                               ; preds = %68, %63
  %72 = extractelement <2 x i1> %66, i64 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = or disjoint i64 %64, 1
  %75 = getelementptr inbounds ptr, ptr %55, i64 %74
  %76 = getelementptr inbounds %struct.arc, ptr %54, i64 %74
  store ptr %76, ptr %75, align 8, !tbaa !28
  br label %77

77:                                               ; preds = %73, %71
  %78 = add i64 %64, 2
  %79 = add <2 x i64> %65, <i64 2, i64 2>
  %80 = icmp eq i64 %78, %59
  br i1 %80, label %81, label %63, !llvm.loop !61

81:                                               ; preds = %77, %48
  %82 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %83 = load ptr, ptr %82, align 8, !tbaa !24
  %84 = icmp sgt i64 %42, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %81, %91
  %86 = phi i64 [ %92, %91 ], [ 0, %81 ]
  %87 = phi ptr [ %93, %91 ], [ %83, %81 ]
  %88 = getelementptr inbounds %struct.arc, ptr %87, i64 1, i32 4
  %89 = load i16, ptr %88, align 8, !tbaa !53
  %90 = icmp eq i16 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = add nuw nsw i64 %86, 1
  %93 = getelementptr inbounds %struct.arc, ptr %87, i64 3
  %94 = icmp eq i64 %92, %42
  br i1 %94, label %247, label %85, !llvm.loop !64

95:                                               ; preds = %85, %81
  %96 = phi ptr [ %83, %81 ], [ %87, %85 ]
  %97 = phi i64 [ 0, %81 ], [ %86, %85 ]
  %98 = icmp slt i64 %97, %42
  br i1 %98, label %99, label %247

99:                                               ; preds = %95
  %100 = add i64 %5, -15
  %101 = getelementptr inbounds %struct.arc, ptr %54, i64 0, i32 7
  br label %102

102:                                              ; preds = %99, %236
  %103 = phi i64 [ 0, %99 ], [ %237, %236 ]
  %104 = phi i64 [ 0, %99 ], [ %238, %236 ]
  %105 = phi i64 [ 0, %99 ], [ %239, %236 ]
  %106 = phi i64 [ %97, %99 ], [ %244, %236 ]
  %107 = phi i64 [ 0, %99 ], [ %243, %236 ]
  %108 = phi i64 [ -1, %99 ], [ %138, %236 ]
  %109 = phi i16 [ 1, %99 ], [ %242, %236 ]
  %110 = phi i16 [ 1, %99 ], [ %241, %236 ]
  %111 = phi ptr [ %96, %99 ], [ %245, %236 ]
  %112 = phi i64 [ 0, %99 ], [ %240, %236 ]
  %113 = phi ptr [ null, %99 ], [ %137, %236 ]
  %114 = icmp eq i16 %109, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  call void @calculate_max_redcost(ptr poison, ptr noundef nonnull %3, ptr noundef nonnull %8, i64 noundef 1) #17
  %116 = urem i64 %106, %44
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %122, label %124

118:                                              ; preds = %102
  %119 = urem i64 %106, %44
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  call void @calculate_max_redcost(ptr poison, ptr noundef nonnull %3, ptr noundef nonnull %8, i64 noundef 1) #17
  br label %124

122:                                              ; preds = %115
  call void @calculate_max_redcost(ptr poison, ptr noundef nonnull %3, ptr noundef nonnull %8, i64 noundef 1) #17
  store i64 %112, ptr %7, align 8, !tbaa !27
  %123 = tail call i64 @switch_arcs(ptr poison, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %54, i32 noundef 0, i64 noundef %50, i64 noundef %52, i64 noundef 1) #17
  store i64 0, ptr %7, align 8, !tbaa !27
  br label %124

124:                                              ; preds = %121, %118, %122, %115
  %125 = phi i64 [ 0, %122 ], [ %103, %115 ], [ %103, %118 ], [ %103, %121 ]
  %126 = phi i64 [ 0, %122 ], [ %104, %115 ], [ %104, %118 ], [ %104, %121 ]
  %127 = phi i64 [ 0, %122 ], [ %112, %115 ], [ %112, %118 ], [ %112, %121 ]
  %128 = getelementptr inbounds %struct.arc, ptr %111, i64 1, i32 4
  %129 = load i16, ptr %128, align 8, !tbaa !53
  %130 = icmp eq i16 %129, -1
  br i1 %130, label %136, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.arc, ptr %111, i64 1
  %133 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #21
  %134 = getelementptr inbounds %struct.list_elem, ptr %133, i64 0, i32 1
  store ptr %113, ptr %134, align 8, !tbaa !65
  store ptr %132, ptr %133, align 8, !tbaa !67
  %135 = add nsw i64 %108, 1
  br label %136

136:                                              ; preds = %131, %124
  %137 = phi ptr [ %133, %131 ], [ %113, %124 ]
  %138 = phi i64 [ %135, %131 ], [ %108, %124 ]
  %139 = getelementptr inbounds %struct.arc, ptr %111, i64 0, i32 4
  %140 = load i16, ptr %139, align 8, !tbaa !53
  %141 = icmp eq i16 %140, -1
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = add nsw i64 %138, %107
  br label %236

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.arc, ptr %111, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !47
  %147 = getelementptr inbounds %struct.node, ptr %146, i64 0, i32 13
  %148 = load i32, ptr %147, align 4, !tbaa !68
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.arc, ptr %111, i64 0, i32 8
  %151 = load i64, ptr %150, align 8, !tbaa !48
  %152 = sub i64 %100, %151
  %153 = add i64 %152, %149
  %154 = getelementptr inbounds %struct.list_elem, ptr %137, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !65
  %156 = icmp eq ptr %155, null
  br i1 %156, label %236, label %157

157:                                              ; preds = %144
  %158 = load i64, ptr %3, align 8
  br label %159

159:                                              ; preds = %157, %225
  %160 = phi i64 [ %125, %157 ], [ %226, %225 ]
  %161 = phi i64 [ %126, %157 ], [ %227, %225 ]
  %162 = phi i64 [ %105, %157 ], [ %228, %225 ]
  %163 = phi ptr [ %155, %157 ], [ %234, %225 ]
  %164 = phi i64 [ %107, %157 ], [ %233, %225 ]
  %165 = phi i16 [ %109, %157 ], [ %231, %225 ]
  %166 = phi i16 [ %110, %157 ], [ %230, %225 ]
  %167 = phi i64 [ %127, %157 ], [ %229, %225 ]
  br label %168

168:                                              ; preds = %159, %181
  %169 = phi ptr [ %163, %159 ], [ %184, %181 ]
  %170 = phi i64 [ %164, %159 ], [ %183, %181 ]
  %171 = load ptr, ptr %169, align 8, !tbaa !67
  %172 = getelementptr inbounds %struct.arc, ptr %171, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  %174 = getelementptr inbounds %struct.node, ptr %173, i64 0, i32 13
  %175 = load i32, ptr %174, align 4, !tbaa !68
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.arc, ptr %171, i64 0, i32 8
  %178 = load i64, ptr %177, align 8, !tbaa !48
  %179 = add nsw i64 %178, %176
  %180 = icmp sgt i64 %179, %153
  br i1 %180, label %181, label %186

181:                                              ; preds = %168
  %182 = getelementptr inbounds %struct.list_elem, ptr %169, i64 0, i32 1
  %183 = add nsw i64 %170, 1
  %184 = load ptr, ptr %182, align 8, !tbaa !65
  %185 = icmp eq ptr %184, null
  br i1 %185, label %236, label %168, !llvm.loop !69

186:                                              ; preds = %168
  %187 = load i64, ptr %173, align 8, !tbaa !70
  %188 = load i64, ptr %146, align 8, !tbaa !70
  %189 = sub i64 %188, %187
  %190 = add i64 %189, 30
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %225

192:                                              ; preds = %186
  %193 = icmp slt i64 %162, %50
  br i1 %193, label %194, label %196

194:                                              ; preds = %192
  tail call void @insert_new_arc(ptr noundef %54, i64 noundef %162, ptr noundef nonnull %173, ptr noundef nonnull %146, i64 noundef 30, i64 noundef %190, i64 poison, i64 noundef %170) #17
  %195 = add nsw i64 %162, 1
  store i64 %195, ptr %6, align 8, !tbaa !27
  br label %217

196:                                              ; preds = %192
  %197 = load i64, ptr %101, align 8, !tbaa !35
  %198 = icmp sgt i64 %197, %190
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = icmp eq i16 %166, 0
  %201 = select i1 %200, i16 %165, i16 0
  %202 = getelementptr inbounds %struct.arc, ptr %46, i64 %161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %202, ptr noundef nonnull align 8 dereferenceable(72) %54, i64 72, i1 false), !tbaa.struct !25
  %203 = add nsw i64 %161, 1
  store i64 %203, ptr %7, align 8, !tbaa !27
  %204 = add nsw i64 %167, 1
  tail call void @replace_weaker_arc(ptr noundef nonnull %54, ptr noundef nonnull %173, ptr noundef nonnull %146, i64 noundef 30, i64 noundef %190, i64 noundef %50, i64 noundef %170) #17
  br label %217

205:                                              ; preds = %196
  %206 = icmp slt i64 %190, %158
  br i1 %206, label %207, label %217

207:                                              ; preds = %205
  %208 = add nsw i64 %161, 1
  store i64 %208, ptr %7, align 8, !tbaa !27
  %209 = getelementptr inbounds %struct.arc, ptr %46, i64 %161
  %210 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 2
  store ptr %173, ptr %210, align 8, !tbaa !46
  %211 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 3
  store ptr %146, ptr %211, align 8, !tbaa !47
  %212 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 8
  store i64 30, ptr %212, align 8, !tbaa !48
  %213 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 1
  store i64 30, ptr %213, align 8, !tbaa !49
  %214 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 7
  store i64 %190, ptr %214, align 8, !tbaa !35
  %215 = trunc i64 %170 to i32
  store i32 %215, ptr %209, align 8, !tbaa !16
  %216 = add nsw i64 %167, 1
  br label %217

217:                                              ; preds = %199, %207, %205, %194
  %218 = phi i64 [ %160, %194 ], [ %203, %199 ], [ %208, %207 ], [ %160, %205 ]
  %219 = phi i64 [ %195, %194 ], [ %162, %199 ], [ %162, %207 ], [ %162, %205 ]
  %220 = phi i64 [ %167, %194 ], [ %204, %199 ], [ %216, %207 ], [ %167, %205 ]
  %221 = phi i16 [ %166, %194 ], [ 0, %199 ], [ %166, %207 ], [ %166, %205 ]
  %222 = phi i16 [ %165, %194 ], [ %201, %199 ], [ %165, %207 ], [ %165, %205 ]
  %223 = icmp eq i64 %218, %52
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  store i64 0, ptr %7, align 8, !tbaa !27
  br label %225

225:                                              ; preds = %217, %224, %186
  %226 = phi i64 [ 0, %224 ], [ %218, %217 ], [ %160, %186 ]
  %227 = phi i64 [ 0, %224 ], [ %218, %217 ], [ %161, %186 ]
  %228 = phi i64 [ %219, %224 ], [ %219, %217 ], [ %162, %186 ]
  %229 = phi i64 [ %220, %224 ], [ %220, %217 ], [ %167, %186 ]
  %230 = phi i16 [ %221, %224 ], [ %221, %217 ], [ %166, %186 ]
  %231 = phi i16 [ %222, %224 ], [ %222, %217 ], [ %165, %186 ]
  %232 = getelementptr inbounds %struct.list_elem, ptr %169, i64 0, i32 1
  %233 = add nsw i64 %170, 1
  %234 = load ptr, ptr %232, align 8, !tbaa !65
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %159, !llvm.loop !69

236:                                              ; preds = %225, %181, %144, %142
  %237 = phi i64 [ %125, %142 ], [ %125, %144 ], [ %160, %181 ], [ %226, %225 ]
  %238 = phi i64 [ %126, %142 ], [ %126, %144 ], [ %161, %181 ], [ %227, %225 ]
  %239 = phi i64 [ %105, %142 ], [ %105, %144 ], [ %162, %181 ], [ %228, %225 ]
  %240 = phi i64 [ %127, %142 ], [ %127, %144 ], [ %167, %181 ], [ %229, %225 ]
  %241 = phi i16 [ %110, %142 ], [ %110, %144 ], [ %166, %181 ], [ %230, %225 ]
  %242 = phi i16 [ %109, %142 ], [ %109, %144 ], [ %165, %181 ], [ %231, %225 ]
  %243 = phi i64 [ %143, %142 ], [ %107, %144 ], [ %183, %181 ], [ %233, %225 ]
  %244 = add i64 %106, 1
  %245 = getelementptr inbounds %struct.arc, ptr %111, i64 3
  %246 = icmp eq i64 %244, %42
  br i1 %246, label %248, label %102, !llvm.loop !71

247:                                              ; preds = %91, %95
  store i64 0, ptr %7, align 8, !tbaa !27
  br label %250

248:                                              ; preds = %236
  %249 = icmp eq i16 %242, 0
  store i64 %240, ptr %7, align 8, !tbaa !27
  br i1 %249, label %255, label %250

250:                                              ; preds = %255, %247, %248
  %251 = phi ptr [ null, %247 ], [ %137, %248 ], [ %137, %255 ]
  %252 = getelementptr inbounds %struct.list_elem, ptr %251, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !65
  %254 = icmp eq ptr %253, null
  br i1 %254, label %264, label %258

255:                                              ; preds = %248, %255
  %256 = tail call i64 @switch_arcs(ptr poison, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %54, i32 noundef 0, i64 noundef %50, i64 noundef %52, i64 noundef 1) #17
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %250, label %255

258:                                              ; preds = %250, %258
  %259 = phi ptr [ %262, %258 ], [ %253, %250 ]
  %260 = phi ptr [ %259, %258 ], [ %251, %250 ]
  tail call void @free(ptr noundef nonnull %260) #16
  %261 = getelementptr inbounds %struct.list_elem, ptr %259, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !65
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %258, !llvm.loop !72

264:                                              ; preds = %258, %250
  %265 = phi ptr [ %251, %250 ], [ %259, %258 ]
  tail call void @free(ptr noundef nonnull %265) #16
  %266 = load ptr, ptr %8, align 8, !tbaa !28
  %267 = load i64, ptr %6, align 8, !tbaa !27
  tail call void @spec_qsort(ptr noundef %266, i64 noundef %267, i64 noundef 8, ptr noundef nonnull @arc_compare) #16
  call void @marc_arcs(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  tail call void @free(ptr noundef %266) #16
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %310, label %269

269:                                              ; preds = %264
  %270 = load ptr, ptr %53, align 8, !tbaa !31
  %271 = getelementptr inbounds %struct.arc, ptr %270, i64 %267
  br i1 %41, label %286, label %272

272:                                              ; preds = %269, %283
  %273 = phi ptr [ %284, %283 ], [ %270, %269 ]
  %274 = getelementptr inbounds %struct.arc, ptr %273, i64 0, i32 7
  %275 = load i64, ptr %274, align 8, !tbaa !35
  %276 = icmp eq i64 %275, 1
  br i1 %276, label %277, label %283

277:                                              ; preds = %272
  store i64 0, ptr %274, align 8, !tbaa !35
  %278 = getelementptr inbounds %struct.arc, ptr %273, i64 0, i32 4
  store i16 1, ptr %278, align 8, !tbaa !53
  %279 = load i32, ptr %273, align 8, !tbaa !16
  %280 = sext i32 %279 to i64
  %281 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %280) #16
  %282 = getelementptr inbounds %struct.arc, ptr %46, i64 %281
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %282, ptr noundef nonnull align 8 dereferenceable(72) %273, i64 72, i1 false), !tbaa.struct !25
  br label %283

283:                                              ; preds = %272, %277
  %284 = getelementptr inbounds %struct.arc, ptr %273, i64 1
  %285 = icmp eq ptr %284, %271
  br i1 %285, label %310, label %272, !llvm.loop !73

286:                                              ; preds = %269, %307
  %287 = phi ptr [ %308, %307 ], [ %270, %269 ]
  %288 = getelementptr inbounds %struct.arc, ptr %287, i64 0, i32 7
  %289 = load i64, ptr %288, align 8, !tbaa !35
  %290 = icmp eq i64 %289, 1
  br i1 %290, label %291, label %307

291:                                              ; preds = %286
  store i64 0, ptr %288, align 8, !tbaa !35
  %292 = getelementptr inbounds %struct.arc, ptr %287, i64 0, i32 4
  store i16 1, ptr %292, align 8, !tbaa !53
  %293 = getelementptr inbounds %struct.arc, ptr %287, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !46
  %295 = getelementptr inbounds %struct.node, ptr %294, i64 0, i32 7
  %296 = load ptr, ptr %295, align 8, !tbaa !20
  %297 = getelementptr inbounds %struct.arc, ptr %287, i64 0, i32 5
  store ptr %296, ptr %297, align 8, !tbaa !74
  store ptr %287, ptr %295, align 8, !tbaa !20
  %298 = getelementptr inbounds %struct.arc, ptr %287, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !47
  %300 = getelementptr inbounds %struct.node, ptr %299, i64 0, i32 8
  %301 = load ptr, ptr %300, align 8, !tbaa !19
  %302 = getelementptr inbounds %struct.arc, ptr %287, i64 0, i32 6
  store ptr %301, ptr %302, align 8, !tbaa !75
  store ptr %287, ptr %300, align 8, !tbaa !19
  %303 = load i32, ptr %287, align 8, !tbaa !16
  %304 = sext i32 %303 to i64
  %305 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %304) #16
  %306 = getelementptr inbounds %struct.arc, ptr %46, i64 %305
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %306, ptr noundef nonnull align 8 dereferenceable(72) %287, i64 72, i1 false), !tbaa.struct !25
  br label %307

307:                                              ; preds = %286, %291
  %308 = getelementptr inbounds %struct.arc, ptr %287, i64 1
  %309 = icmp eq ptr %308, %271
  br i1 %309, label %310, label %286, !llvm.loop !76

310:                                              ; preds = %283, %307, %264
  %311 = load i64, ptr %2, align 8, !tbaa !27
  %312 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %313 = load i64, ptr %312, align 8, !tbaa !77
  %314 = add nsw i64 %313, %311
  store i64 %314, ptr %312, align 8, !tbaa !77
  %315 = load i64, ptr %49, align 8, !tbaa !33
  %316 = sub nsw i64 %315, %311
  store i64 %316, ptr %49, align 8, !tbaa !33
  %317 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %318 = load i64, ptr %317, align 8, !tbaa !34
  %319 = tail call i64 @refreshPositions(ptr noundef %0, ptr noundef nonnull @getArcPosition, i64 noundef %318) #17
  %320 = load i64, ptr %317, align 8, !tbaa !34
  %321 = add nsw i64 %320, %311
  store i64 %321, ptr %317, align 8, !tbaa !34
  %322 = load ptr, ptr %82, align 8, !tbaa !24
  %323 = getelementptr inbounds %struct.arc, ptr %322, i64 %321
  store ptr %323, ptr %53, align 8, !tbaa !31
  tail call void @free(ptr noundef %6) #16
  tail call void @free(ptr noundef %7) #16
  tail call void @free(ptr noundef %8) #16
  tail call void @free(ptr noundef %9) #16
  br label %324

324:                                              ; preds = %40, %36, %27, %310
  %325 = phi i64 [ %311, %310 ], [ -1, %27 ], [ -1, %36 ], [ -1, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %325
}

; Function Attrs: optsize
declare void @refresh_neighbour_lists(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @getArcPosition(ptr noundef, i64 noundef) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @suspend_impl(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !34
  %7 = add nsw i64 %6, -1
  %8 = sdiv i64 %7, 4000
  %9 = add nsw i64 %8, 1
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %9, ptr %10, align 8, !tbaa !38
  %11 = srem i64 %6, 4000
  %12 = add nsw i64 %11, -4000
  %13 = add nsw i64 %12, %9
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %13, ptr %14, align 8, !tbaa !40
  %15 = icmp slt i64 %13, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3, %16
  %17 = phi i64 [ %20, %16 ], [ 4000, %3 ]
  %18 = phi i64 [ %19, %16 ], [ %13, %3 ]
  %19 = add nsw i64 %18, %9
  %20 = add nsw i64 %17, -1
  %21 = icmp slt i64 %19, 0
  br i1 %21, label %16, label %22, !llvm.loop !78

22:                                               ; preds = %16
  store i64 %19, ptr %14, align 8, !tbaa !40
  store i64 %20, ptr %4, align 8, !tbaa !37
  br label %23

23:                                               ; preds = %22, %3
  %24 = icmp eq i64 %2, 0
  %25 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !77
  br i1 %24, label %27, label %75

27:                                               ; preds = %23
  %28 = icmp sgt i64 %26, 0
  br i1 %28, label %29, label %112

29:                                               ; preds = %27
  %30 = sub nsw i64 %6, %26
  %31 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  br label %32

32:                                               ; preds = %29, %62
  %33 = phi i64 [ %30, %29 ], [ %71, %62 ]
  %34 = phi i64 [ %30, %29 ], [ %72, %62 ]
  %35 = phi i64 [ 0, %29 ], [ %68, %62 ]
  %36 = load ptr, ptr %31, align 8, !tbaa !24
  %37 = tail call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %34) #16
  %38 = getelementptr inbounds %struct.arc, ptr %36, i64 %37
  %39 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 4
  %40 = load i16, ptr %39, align 8, !tbaa !53
  switch i16 %40, label %62 [
    i16 1, label %41
    i16 0, label %52
  ]

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !49
  %44 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = load i64, ptr %45, align 8, !tbaa !70
  %47 = sub i64 %43, %46
  %48 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = load i64, ptr %49, align 8, !tbaa !70
  %51 = add nsw i64 %47, %50
  br label %62

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.node, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !13
  %57 = icmp eq ptr %56, %38
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 6
  store ptr %38, ptr %61, align 8, !tbaa !13
  br label %62

62:                                               ; preds = %32, %58, %52, %41
  %63 = phi i64 [ %51, %41 ], [ -2, %52 ], [ -2, %58 ], [ -2, %32 ]
  %64 = icmp sgt i64 %63, %1
  %65 = trunc i64 %33 to i32
  %66 = select i1 %64, i32 -1, i32 %65
  %67 = zext i1 %64 to i64
  %68 = add nuw nsw i64 %35, %67
  %69 = xor i1 %64, true
  %70 = zext i1 %69 to i64
  %71 = add nsw i64 %33, %70
  store i32 %66, ptr %38, align 8
  %72 = add nsw i64 %34, 1
  %73 = load i64, ptr %5, align 8, !tbaa !34
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %32, label %75, !llvm.loop !79

75:                                               ; preds = %62, %23
  %76 = phi i64 [ %6, %23 ], [ %73, %62 ]
  %77 = phi i64 [ %26, %23 ], [ %68, %62 ]
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %81 = load i64, ptr %80, align 8, !tbaa !77
  %82 = sub nsw i64 %81, %77
  store i64 %82, ptr %80, align 8, !tbaa !77
  %83 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %84 = load i64, ptr %83, align 8, !tbaa !33
  %85 = add nsw i64 %84, %77
  store i64 %85, ptr %83, align 8, !tbaa !33
  store i64 4000, ptr %4, align 8, !tbaa !37
  %86 = xor i64 %77, -1
  %87 = add i64 %76, %86
  %88 = sdiv i64 %87, 4000
  %89 = add nsw i64 %88, 1
  store i64 %89, ptr %10, align 8, !tbaa !38
  %90 = sub nsw i64 %76, %77
  %91 = srem i64 %90, 4000
  %92 = icmp eq i64 %91, 0
  %93 = add nsw i64 %91, -4000
  %94 = select i1 %92, i64 0, i64 %93
  %95 = add nsw i64 %94, %89
  store i64 %95, ptr %14, align 8, !tbaa !40
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %79, %97
  %98 = phi i64 [ %101, %97 ], [ 4000, %79 ]
  %99 = phi i64 [ %100, %97 ], [ %95, %79 ]
  %100 = add nsw i64 %99, %89
  %101 = add nsw i64 %98, -1
  %102 = icmp slt i64 %100, 0
  br i1 %102, label %97, label %103, !llvm.loop !80

103:                                              ; preds = %97
  store i64 %100, ptr %14, align 8, !tbaa !40
  store i64 %101, ptr %4, align 8, !tbaa !37
  br label %104

104:                                              ; preds = %103, %79
  %105 = tail call i64 @refreshPositions(ptr noundef nonnull %0, ptr noundef nonnull @getOriginalArcPosition, i64 noundef %76) #17
  %106 = load i64, ptr %5, align 8, !tbaa !34
  %107 = sub nsw i64 %106, %77
  store i64 %107, ptr %5, align 8, !tbaa !34
  %108 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %109 = load ptr, ptr %108, align 8, !tbaa !31
  %110 = sub i64 0, %77
  %111 = getelementptr inbounds %struct.arc, ptr %109, i64 %110
  store ptr %111, ptr %108, align 8, !tbaa !31
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %0, ptr noundef nonnull @getOriginalArcPosition) #16
  br label %112

112:                                              ; preds = %27, %104, %75
  %113 = phi i64 [ %77, %104 ], [ 0, %75 ], [ 0, %27 ]
  ret i64 %113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize allocsize(1) }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 400}
!6 = !{!"network", !7, i64 0, !7, i64 200, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !10, i64 536, !9, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !11, i64 552}
!13 = !{!14, !11, i64 48}
!14 = !{!"node", !9, i64 0, !15, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !15, i64 96, !15, i64 100}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !15, i64 0}
!17 = !{!"arc", !15, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !18, i64 32, !11, i64 40, !11, i64 48, !9, i64 56, !9, i64 64}
!18 = !{!"short", !7, i64 0}
!19 = !{!14, !11, i64 64}
!20 = !{!14, !11, i64 56}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!6, !11, i64 584}
!24 = !{!6, !11, i64 568}
!25 = !{i64 0, i64 4, !26, i64 8, i64 8, !27, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 2, !29, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !27, i64 64, i64 8, !27}
!26 = !{!15, !15, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!11, !11, i64 0}
!29 = !{!18, !18, i64 0}
!30 = distinct !{!30, !22}
!31 = !{!6, !11, i64 576}
!32 = !{!6, !9, i64 408}
!33 = !{!6, !9, i64 448}
!34 = !{!6, !9, i64 424}
!35 = !{!17, !9, i64 56}
!36 = distinct !{!36, !22}
!37 = !{!6, !9, i64 640}
!38 = !{!6, !9, i64 624}
!39 = distinct !{!39, !22}
!40 = !{!6, !9, i64 632}
!41 = !{!6, !9, i64 456}
!42 = !{!6, !9, i64 416}
!43 = !{!6, !11, i64 560}
!44 = !{!14, !11, i64 24}
!45 = distinct !{!45, !22}
!46 = !{!17, !11, i64 16}
!47 = !{!17, !11, i64 24}
!48 = !{!17, !9, i64 64}
!49 = !{!17, !9, i64 8}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = !{!17, !18, i64 32}
!54 = !{i64 0, i64 8, !27, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 2, !29, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !27, i64 56, i64 8, !27}
!55 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 2, !29, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !27, i64 48, i64 8, !27}
!56 = !{i64 0, i64 8, !28, i64 8, i64 2, !29, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !27, i64 40, i64 8, !27}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = !{!6, !9, i64 528}
!60 = !{i64 -1, i64 1}
!61 = distinct !{!61, !22, !62, !63}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = distinct !{!64, !22}
!65 = !{!66, !11, i64 8}
!66 = !{!"list_elem", !11, i64 0, !11, i64 8}
!67 = !{!66, !11, i64 0}
!68 = !{!14, !15, i64 100}
!69 = distinct !{!69, !22}
!70 = !{!14, !9, i64 0}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = !{!17, !11, i64 40}
!75 = !{!17, !11, i64 48}
!76 = distinct !{!76, !22}
!77 = !{!6, !9, i64 440}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
