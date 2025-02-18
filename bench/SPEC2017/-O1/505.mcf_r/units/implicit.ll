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

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @refreshArcPointers(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !55 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !56
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %48, label %7, !prof !63

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  br label %9

9:                                                ; preds = %7, %44
  %10 = phi i64 [ 0, %7 ], [ %45, %44 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !68

15:                                               ; preds = %9
  %16 = load i32, ptr %13, align 8, !tbaa !69
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22, !prof !72

18:                                               ; preds = %15
  %19 = zext nneg i32 %16 to i64
  %20 = tail call i64 %1(ptr noundef %0, i64 noundef %19) #15, !prof !73
  %21 = getelementptr inbounds %struct.arc, ptr %2, i64 %20
  store ptr %21, ptr %12, align 8, !tbaa !65
  br label %22

22:                                               ; preds = %18, %15, %9
  %23 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26, !prof !68

26:                                               ; preds = %22
  %27 = load i32, ptr %24, align 8, !tbaa !69
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %33, !prof !75

29:                                               ; preds = %26
  %30 = zext nneg i32 %27 to i64
  %31 = tail call i64 %1(ptr noundef %0, i64 noundef %30) #15, !prof !76
  %32 = getelementptr inbounds %struct.arc, ptr %2, i64 %31
  store ptr %32, ptr %23, align 8, !tbaa !74
  br label %33

33:                                               ; preds = %29, %26, %22
  %34 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !68

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !69
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %44, !prof !75

40:                                               ; preds = %37
  %41 = zext nneg i32 %38 to i64
  %42 = tail call i64 %1(ptr noundef %0, i64 noundef %41) #15, !prof !76
  %43 = getelementptr inbounds %struct.arc, ptr %2, i64 %42
  store ptr %43, ptr %34, align 8, !tbaa !77
  br label %44

44:                                               ; preds = %33, %37, %40
  %45 = add nuw nsw i64 %10, 1
  %46 = load i64, ptr %4, align 8, !tbaa !56
  %47 = icmp slt i64 %10, %46
  br i1 %47, label %9, label %48, !prof !78, !llvm.loop !79

48:                                               ; preds = %44, %3
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @refreshPositions(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 !prof !55 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = tail call i64 @refreshArcPointers(ptr noundef %0, ptr noundef %1, ptr noundef %5)
  %7 = icmp sgt i64 %2, 0
  br i1 %7, label %8, label %23, !prof !83

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  br label %10

10:                                               ; preds = %8, %20
  %11 = phi i64 [ 0, %8 ], [ %21, %20 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.arc, ptr %12, i64 %11
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16, !prof !85

16:                                               ; preds = %10
  %17 = zext nneg i32 %14 to i64
  %18 = tail call i64 %1(ptr noundef %0, i64 noundef %17) #15, !prof !86
  %19 = getelementptr inbounds %struct.arc, ptr %5, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(72) %13, i64 72, i1 false), !tbaa.struct !87
  br label %20

20:                                               ; preds = %10, %16
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, %2
  br i1 %22, label %23, label %10, !prof !92, !llvm.loop !93

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  store ptr %5, ptr %24, align 8, !tbaa !84
  store ptr %25, ptr %4, align 8, !tbaa !82
  %26 = getelementptr inbounds %struct.arc, ptr %5, i64 %2
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %26, ptr %27, align 8, !tbaa !94
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @marc_arcs(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !95 {
  %5 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16
  %6 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16
  %7 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !96
  %9 = icmp slt i64 %8, 15001
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !97
  %12 = select i1 %9, i64 -1000000, i64 -4000000, !prof !98
  %13 = add nsw i64 %11, %12
  store i64 0, ptr %1, align 8, !tbaa !89
  %14 = load i64, ptr %2, align 8, !tbaa !89
  store i64 %14, ptr %1, align 8, !tbaa !89
  %15 = load ptr, ptr %3, align 8, !tbaa !90
  store ptr %15, ptr %5, align 8, !tbaa !90
  store i64 0, ptr %6, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %17 = icmp sgt i64 %14, 0
  %18 = icmp sgt i64 %13, 0
  %19 = select i1 %17, i1 %18, i1 false, !prof !99
  br i1 %19, label %20, label %43, !prof !100

20:                                               ; preds = %4
  %21 = load i64, ptr %16, align 8, !tbaa !101
  %22 = load i64, ptr %6, align 8, !tbaa !89
  %23 = load ptr, ptr %5, align 8, !tbaa !90
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %23, %20 ], [ %36, %24 ]
  %26 = phi i64 [ %22, %20 ], [ %37, %24 ]
  %27 = phi i64 [ %21, %20 ], [ %32, %24 ]
  %28 = phi i64 [ 0, %20 ], [ %35, %24 ]
  %29 = load i64, ptr %2, align 8, !tbaa !89
  %30 = icmp slt i64 %26, %29
  tail call void @llvm.assume(i1 %30)
  %31 = load ptr, ptr %25, align 8, !tbaa !90
  %32 = add nsw i64 %27, 1
  %33 = trunc i64 %27 to i32
  store i32 %33, ptr %31, align 8, !tbaa !69
  %34 = getelementptr inbounds %struct.arc, ptr %31, i64 0, i32 7
  store i64 1, ptr %34, align 8, !tbaa !102
  %35 = add nuw nsw i64 %28, 1
  %36 = getelementptr inbounds ptr, ptr %25, i64 1
  %37 = add nsw i64 %26, 1
  %38 = load i64, ptr %1, align 8, !tbaa !89
  %39 = icmp slt i64 %35, %38
  %40 = icmp slt i64 %35, %13
  %41 = select i1 %39, i1 %40, i1 false, !prof !99
  br i1 %41, label %24, label %42, !prof !103, !llvm.loop !104

42:                                               ; preds = %24
  store i64 %37, ptr %6, align 8, !tbaa !89
  store ptr %36, ptr %5, align 8, !tbaa !90
  br label %43

43:                                               ; preds = %42, %4
  store i64 0, ptr %1, align 8, !tbaa !89
  %44 = load i64, ptr %6, align 8, !tbaa !89
  store i64 %44, ptr %1, align 8, !tbaa !89
  %45 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %45, align 8, !tbaa !105
  %46 = load i64, ptr %1, align 8, !tbaa !89
  %47 = load i64, ptr %16, align 8, !tbaa !101
  %48 = add i64 %46, -1
  %49 = add i64 %48, %47
  %50 = sdiv i64 %49, 4000
  %51 = add nsw i64 %50, 1
  %52 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %51, ptr %52, align 8, !tbaa !106
  %53 = load i64, ptr %1, align 8, !tbaa !89
  %54 = add nsw i64 %53, %47
  %55 = srem i64 %54, 4000
  %56 = icmp eq i64 %55, 0
  %57 = add nsw i64 %50, -3999
  %58 = add nsw i64 %57, %55
  %59 = select i1 %56, i64 %51, i64 %58, !prof !107
  %60 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %59, ptr %60, align 8, !tbaa !108
  %61 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  %62 = icmp slt i64 %59, 0
  br i1 %62, label %63, label %72, !prof !100

63:                                               ; preds = %43
  %64 = load i64, ptr %45, align 8, !tbaa !105
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ %64, %63 ], [ %69, %65 ]
  %67 = phi i64 [ %59, %63 ], [ %68, %65 ]
  %68 = add nsw i64 %67, %51
  %69 = add nsw i64 %66, -1
  %70 = icmp slt i64 %68, 0
  br i1 %70, label %65, label %71, !prof !109, !llvm.loop !110

71:                                               ; preds = %65
  store i64 %68, ptr %61, align 8, !tbaa !108
  store i64 %69, ptr %45, align 8, !tbaa !105
  br label %72

72:                                               ; preds = %71, %43
  tail call void @free(ptr noundef %5) #15
  tail call void @free(ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @arc_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !111 !PGOFuncName !112 {
  %3 = load ptr, ptr %0, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !102
  %6 = load ptr, ptr %1, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.arc, ptr %6, i64 0, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !102
  %9 = icmp sgt i64 %5, %8
  br i1 %9, label %17, label %10, !prof !113

10:                                               ; preds = %2
  %11 = icmp slt i64 %5, %8
  br i1 %11, label %17, label %12, !prof !114

12:                                               ; preds = %10
  %13 = load i32, ptr %3, align 8, !tbaa !69
  %14 = load i32, ptr %6, align 8, !tbaa !69
  %15 = icmp slt i32 %13, %14
  %16 = select i1 %15, i32 -1, i32 1, !prof !115
  br label %17

17:                                               ; preds = %12, %10, %2
  %18 = phi i32 [ 1, %2 ], [ -1, %10 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @resize_prob(ptr noundef %0) local_unnamed_addr #0 !prof !116 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  %3 = load i64, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !118
  %6 = add nsw i64 %5, %3
  store i64 %6, ptr %4, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !97
  %9 = add nsw i64 %8, %3
  store i64 %9, ptr %7, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = mul i64 %6, 72
  %13 = tail call ptr @realloc(ptr noundef %11, i64 noundef %12) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !119

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0)
  %17 = load ptr, ptr @stdout, align 8, !tbaa !90
  %18 = tail call i32 @fflush(ptr noundef %17)
  br label %56

19:                                               ; preds = %1
  %20 = load ptr, ptr %10, align 8, !tbaa !84
  store ptr %13, ptr %10, align 8, !tbaa !84
  %21 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.arc, ptr %13, i64 %22
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %23, ptr %24, align 8, !tbaa !94
  %25 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  %29 = getelementptr inbounds %struct.node, ptr %26, i64 1
  %30 = icmp ult ptr %29, %28
  br i1 %30, label %31, label %50, !prof !83

31:                                               ; preds = %19
  %32 = ptrtoint ptr %20 to i64
  br label %33

33:                                               ; preds = %31, %47
  %34 = phi ptr [ %29, %31 ], [ %48, %47 ]
  %35 = phi ptr [ %26, %31 ], [ %34, %47 ]
  %36 = getelementptr inbounds %struct.node, ptr %35, i64 1, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39, !prof !121

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.node, ptr %35, i64 1, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !122
  %42 = icmp eq ptr %41, %26
  br i1 %42, label %47, label %43, !prof !123

43:                                               ; preds = %39
  %44 = ptrtoint ptr %37 to i64
  %45 = sub i64 %44, %32
  %46 = getelementptr inbounds i8, ptr %13, i64 %45
  store ptr %46, ptr %36, align 8, !tbaa !65
  br label %47

47:                                               ; preds = %33, %39, %43
  %48 = getelementptr inbounds %struct.node, ptr %34, i64 1
  %49 = icmp ult ptr %48, %28
  br i1 %49, label %33, label %50, !prof !124, !llvm.loop !125

50:                                               ; preds = %47, %19
  %51 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %52 = load ptr, ptr %51, align 8, !tbaa !82
  %53 = load i64, ptr %4, align 8, !tbaa !118
  %54 = mul i64 %53, 72
  %55 = tail call ptr @realloc(ptr noundef %52, i64 noundef %54) #17
  store ptr %55, ptr %51, align 8, !tbaa !82
  br label %56

56:                                               ; preds = %50, %15
  %57 = phi i64 [ 0, %50 ], [ -1, %15 ]
  ret i64 %57
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @insert_new_arc(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #8 !prof !126 {
  %9 = getelementptr inbounds %struct.arc, ptr %0, i64 %1
  %10 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !127
  %11 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 8
  store i64 %4, ptr %12, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 1
  store i64 %4, ptr %13, align 8, !tbaa !130
  %14 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 7
  store i64 %5, ptr %14, align 8, !tbaa !102
  %15 = trunc i64 %7 to i32
  store i32 %15, ptr %9, align 8, !tbaa !69
  %16 = icmp eq i64 %1, 0
  br i1 %16, label %46, label %17, !prof !131

17:                                               ; preds = %8
  %18 = add nsw i64 %1, 1
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi i64 [ %44, %27 ], [ %1, %17 ]
  %21 = phi i64 [ %22, %27 ], [ %18, %17 ]
  %22 = sdiv i64 %21, 2
  %23 = getelementptr %struct.arc, ptr %0, i64 %22
  %24 = getelementptr %struct.arc, ptr %23, i64 -1, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !102
  %26 = icmp slt i64 %25, %5
  br i1 %26, label %27, label %46, !prof !132

27:                                               ; preds = %19
  %28 = getelementptr %struct.arc, ptr %23, i64 -1
  %29 = getelementptr %struct.arc, ptr %23, i64 -1, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = getelementptr inbounds %struct.arc, ptr %0, i64 %20
  %32 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 2
  store ptr %30, ptr %32, align 8, !tbaa !127
  %33 = getelementptr %struct.arc, ptr %23, i64 -1, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  %35 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 3
  store ptr %34, ptr %35, align 8, !tbaa !128
  %36 = getelementptr %struct.arc, ptr %23, i64 -1, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !130
  %38 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 1
  store i64 %37, ptr %38, align 8, !tbaa !130
  %39 = load i64, ptr %36, align 8, !tbaa !130
  %40 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 8
  store i64 %39, ptr %40, align 8, !tbaa !129
  %41 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 7
  store i64 %25, ptr %41, align 8, !tbaa !102
  %42 = load i32, ptr %28, align 8, !tbaa !69
  store i32 %42, ptr %31, align 8, !tbaa !69
  store ptr %2, ptr %29, align 8, !tbaa !127
  store ptr %3, ptr %33, align 8, !tbaa !128
  store i64 %4, ptr %36, align 8, !tbaa !130
  %43 = getelementptr %struct.arc, ptr %23, i64 -1, i32 8
  store i64 %4, ptr %43, align 8, !tbaa !129
  store i64 %5, ptr %24, align 8, !tbaa !102
  store i32 %15, ptr %28, align 8, !tbaa !69
  %44 = add nsw i64 %22, -1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %19, !prof !133, !llvm.loop !134

46:                                               ; preds = %19, %27, %8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @replace_weaker_arc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #8 !prof !135 {
  %8 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 8
  store i64 %3, ptr %10, align 8, !tbaa !129
  %11 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 1
  store i64 %3, ptr %11, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 7
  store i64 %4, ptr %12, align 8, !tbaa !102
  %13 = trunc i64 %6 to i32
  store i32 %13, ptr %0, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.arc, ptr %0, i64 1, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.arc, ptr %0, i64 2, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !102
  %18 = icmp sgt i64 %15, %17
  %19 = select i1 %18, i64 2, i64 3, !prof !136
  %20 = getelementptr %struct.arc, ptr %0, i64 -1, i32 7
  %21 = icmp sgt i64 %19, %5
  br i1 %21, label %60, label %22, !prof !137

22:                                               ; preds = %7, %57
  %23 = phi i64 [ %58, %57 ], [ %19, %7 ]
  %24 = phi i64 [ %23, %57 ], [ 1, %7 ]
  %25 = getelementptr %struct.arc, ptr %0, i64 %23
  %26 = getelementptr %struct.arc, ptr %25, i64 -1, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !102
  %28 = icmp sgt i64 %27, %4
  br i1 %28, label %29, label %60, !prof !138

29:                                               ; preds = %22
  %30 = getelementptr %struct.arc, ptr %25, i64 -1
  %31 = getelementptr %struct.arc, ptr %25, i64 -1, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !127
  %33 = getelementptr %struct.arc, ptr %0, i64 %24
  %34 = getelementptr %struct.arc, ptr %33, i64 -1
  %35 = getelementptr %struct.arc, ptr %33, i64 -1, i32 2
  store ptr %32, ptr %35, align 8, !tbaa !127
  %36 = getelementptr %struct.arc, ptr %25, i64 -1, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !128
  %38 = getelementptr %struct.arc, ptr %33, i64 -1, i32 3
  store ptr %37, ptr %38, align 8, !tbaa !128
  %39 = getelementptr %struct.arc, ptr %25, i64 -1, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !130
  %41 = getelementptr %struct.arc, ptr %33, i64 -1, i32 1
  store i64 %40, ptr %41, align 8, !tbaa !130
  %42 = load i64, ptr %39, align 8, !tbaa !130
  %43 = getelementptr %struct.arc, ptr %33, i64 -1, i32 8
  store i64 %42, ptr %43, align 8, !tbaa !129
  %44 = getelementptr %struct.arc, ptr %33, i64 -1, i32 7
  store i64 %27, ptr %44, align 8, !tbaa !102
  %45 = load i32, ptr %30, align 8, !tbaa !69
  store i32 %45, ptr %34, align 8, !tbaa !69
  store ptr %1, ptr %31, align 8, !tbaa !127
  store ptr %2, ptr %36, align 8, !tbaa !128
  store i64 %3, ptr %39, align 8, !tbaa !130
  %46 = getelementptr %struct.arc, ptr %25, i64 -1, i32 8
  store i64 %3, ptr %46, align 8, !tbaa !129
  store i64 %4, ptr %26, align 8, !tbaa !102
  store i32 %13, ptr %30, align 8, !tbaa !69
  %47 = shl nsw i64 %23, 1
  %48 = icmp slt i64 %47, %5
  br i1 %48, label %49, label %57, !prof !139

49:                                               ; preds = %29
  %50 = getelementptr %struct.arc, ptr %20, i64 %47
  %51 = load i64, ptr %50, align 8, !tbaa !102
  %52 = getelementptr inbounds %struct.arc, ptr %0, i64 %47, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !102
  %54 = icmp slt i64 %51, %53
  %55 = zext i1 %54 to i64
  %56 = or disjoint i64 %47, %55
  br label %57

57:                                               ; preds = %49, %29
  %58 = phi i64 [ %47, %29 ], [ %56, %49 ]
  %59 = icmp sgt i64 %58, %5
  br i1 %59, label %60, label %22, !prof !140, !llvm.loop !141

60:                                               ; preds = %22, %57, %7
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculate_max_redcost(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #9 !prof !126 {
  store i64 0, ptr %1, align 8, !tbaa !89
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = load i64, ptr %1, align 8, !tbaa !89
  br label %8

8:                                                ; preds = %6, %18
  %9 = phi i64 [ %7, %6 ], [ %19, %18 ]
  %10 = phi i64 [ 0, %6 ], [ %20, %18 ]
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.arc, ptr %13, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !102
  %16 = icmp sgt i64 %15, %9
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i64 %15, ptr %1, align 8, !tbaa !89
  br label %18

18:                                               ; preds = %8, %17
  %19 = phi i64 [ %9, %8 ], [ %15, %17 ]
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, %3
  br i1 %21, label %22, label %8, !llvm.loop !142

22:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @switch_arcs(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #10 !prof !143 {
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %10, label %62, !prof !144

10:                                               ; preds = %8
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 7
  br label %13

13:                                               ; preds = %10, %56
  %14 = phi i64 [ 0, %10 ], [ %58, %56 ]
  %15 = phi i64 [ %11, %10 ], [ %60, %56 ]
  %16 = phi i64 [ 0, %10 ], [ %57, %56 ]
  %17 = getelementptr inbounds i64, ptr %1, i64 %15
  %18 = load i64, ptr %17, align 8, !tbaa !89
  %19 = tail call i64 @llvm.smin.i64(i64 %18, i64 %6)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %56, !prof !144

21:                                               ; preds = %13
  %22 = getelementptr inbounds ptr, ptr %2, i64 %15
  br label %23

23:                                               ; preds = %21, %52
  %24 = phi i64 [ 0, %21 ], [ %54, %52 ]
  %25 = phi i64 [ %16, %21 ], [ %53, %52 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !90
  %27 = getelementptr inbounds %struct.arc, ptr %26, i64 %24
  %28 = getelementptr inbounds %struct.arc, ptr %26, i64 %24, i32 4
  %29 = load i16, ptr %28, align 8, !tbaa !145
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %52, !prof !146

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.arc, ptr %26, i64 %24, i32 7
  %33 = load i64, ptr %32, align 8
  %34 = load i64, ptr %12, align 8, !tbaa !102
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %42, label %36, !prof !147

36:                                               ; preds = %31
  %37 = icmp eq i64 %33, %34
  br i1 %37, label %38, label %52, !prof !148

38:                                               ; preds = %36
  %39 = load i32, ptr %27, align 8, !tbaa !69
  %40 = load i32, ptr %3, align 8, !tbaa !69
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52, !prof !149

42:                                               ; preds = %38, %31
  %43 = load i32, ptr %27, align 8, !tbaa.struct !87
  %44 = getelementptr inbounds i8, ptr %27, i64 8
  %45 = load i64, ptr %44, align 8, !tbaa.struct !150
  %46 = getelementptr inbounds i8, ptr %27, i64 16
  %47 = load ptr, ptr %46, align 8, !tbaa.struct !151
  %48 = getelementptr inbounds i8, ptr %27, i64 24
  %49 = load ptr, ptr %48, align 8, !tbaa.struct !152
  %50 = add nsw i64 %25, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !87
  %51 = sext i32 %43 to i64
  tail call void @replace_weaker_arc(ptr noundef %3, ptr noundef %47, ptr noundef %49, i64 noundef %45, i64 noundef %33, i64 noundef %5, i64 noundef %51)
  br label %52

52:                                               ; preds = %23, %36, %38, %42
  %53 = phi i64 [ %25, %23 ], [ %50, %42 ], [ %25, %38 ], [ %25, %36 ]
  %54 = add nuw nsw i64 %24, 1
  %55 = icmp eq i64 %54, %19
  br i1 %55, label %56, label %23, !prof !153, !llvm.loop !154

56:                                               ; preds = %52, %13
  %57 = phi i64 [ %16, %13 ], [ %53, %52 ]
  %58 = add nuw nsw i64 %14, 1
  %59 = add nsw i64 %15, 1
  %60 = srem i64 %59, %7
  %61 = icmp eq i64 %58, %7
  br i1 %61, label %62, label %13, !prof !144, !llvm.loop !155

62:                                               ; preds = %56, %8
  %63 = phi i64 [ 0, %8 ], [ %57, %56 ]
  ret i64 %63
}

; Function Attrs: nounwind uwtable
define dso_local i64 @price_out_impl(ptr noundef %0) local_unnamed_addr #0 !prof !95 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 0, ptr %2, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %4 = load i64, ptr %3, align 8, !tbaa !156
  %5 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16
  %6 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16
  %7 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16
  %8 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !96
  %11 = icmp slt i64 %10, 15001
  %12 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  %15 = load i64, ptr %14, align 8, !tbaa !117
  %16 = add nsw i64 %15, %13
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !118
  %19 = icmp sgt i64 %16, %18
  br i1 %11, label %20, label %29, !prof !98

20:                                               ; preds = %1
  br i1 %19, label %21, label %39, !prof !157

21:                                               ; preds = %20
  %22 = mul nsw i64 %10, %10
  %23 = lshr i64 %22, 1
  %24 = add nsw i64 %13, %23
  %25 = icmp sgt i64 %24, %18
  br i1 %25, label %26, label %39, !prof !158

26:                                               ; preds = %21
  %27 = tail call i64 @resize_prob(ptr noundef %0), !range !159
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %38, label %457, !prof !158

29:                                               ; preds = %1
  br i1 %19, label %30, label %39

30:                                               ; preds = %29
  %31 = mul nsw i64 %10, %10
  %32 = lshr i64 %31, 1
  %33 = add nsw i64 %13, %32
  %34 = icmp sgt i64 %33, %18
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = tail call i64 @resize_prob(ptr noundef %0), !range !159
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %457

38:                                               ; preds = %35, %26
  tail call void @refresh_neighbour_lists(ptr noundef %0, ptr noundef nonnull @getOriginalArcPosition) #15
  br label %39

39:                                               ; preds = %38, %29, %30, %20, %21
  %40 = phi i1 [ true, %21 ], [ true, %20 ], [ true, %30 ], [ true, %29 ], [ false, %38 ]
  %41 = load i64, ptr %9, align 8, !tbaa !96
  %42 = icmp slt i64 %41, 15001
  %43 = select i1 %42, i64 1000, i64 2000, !prof !98
  %44 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %45 = load ptr, ptr %44, align 8, !tbaa !82
  %46 = icmp eq ptr %45, null
  br i1 %46, label %457, label %47, !prof !107

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !97
  %50 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !118
  store ptr %45, ptr %8, align 8, !tbaa !90
  store i64 0, ptr %6, align 8, !tbaa !89
  store i64 0, ptr %5, align 8, !tbaa !89
  %52 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %53 = load ptr, ptr %52, align 8, !tbaa !94
  %54 = tail call noalias ptr @calloc(i64 noundef %49, i64 noundef 8) #18
  store ptr %54, ptr %7, align 8, !tbaa !90
  %55 = icmp sgt i64 %49, 0
  br i1 %55, label %56, label %62, !prof !100

56:                                               ; preds = %47, %56
  %57 = phi i64 [ %60, %56 ], [ 0, %47 ]
  %58 = getelementptr inbounds %struct.arc, ptr %53, i64 %57
  %59 = getelementptr inbounds ptr, ptr %54, i64 %57
  store ptr %58, ptr %59, align 8, !tbaa !90
  %60 = add nuw nsw i64 %57, 1
  %61 = icmp eq i64 %60, %49
  br i1 %61, label %62, label %56, !prof !160, !llvm.loop !161

62:                                               ; preds = %56, %47
  %63 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %64 = load ptr, ptr %63, align 8, !tbaa !84
  %65 = icmp sgt i64 %41, 0
  br i1 %65, label %66, label %79, !prof !162

66:                                               ; preds = %62
  %67 = mul i64 %41, 216
  %68 = getelementptr i8, ptr %64, i64 %67
  br label %69

69:                                               ; preds = %66, %75
  %70 = phi i64 [ %76, %75 ], [ 0, %66 ]
  %71 = phi ptr [ %77, %75 ], [ %64, %66 ]
  %72 = getelementptr inbounds %struct.arc, ptr %71, i64 1, i32 4
  %73 = load i16, ptr %72, align 8, !tbaa !145
  %74 = icmp eq i16 %73, -1
  br i1 %74, label %75, label %79, !prof !107

75:                                               ; preds = %69
  %76 = add nuw nsw i64 %70, 1
  %77 = getelementptr inbounds %struct.arc, ptr %71, i64 3
  %78 = icmp eq i64 %76, %41
  br i1 %78, label %79, label %69, !prof !107, !llvm.loop !163

79:                                               ; preds = %69, %75, %62
  %80 = phi ptr [ %64, %62 ], [ %71, %69 ], [ %68, %75 ]
  %81 = phi i64 [ 0, %62 ], [ %70, %69 ], [ %41, %75 ]
  %82 = icmp slt i64 %81, %41
  br i1 %82, label %83, label %319, !prof !100

83:                                               ; preds = %79
  %84 = add i64 %4, -15
  %85 = getelementptr inbounds %struct.arc, ptr %53, i64 0, i32 7
  %86 = getelementptr inbounds %struct.arc, ptr %53, i64 0, i32 2
  %87 = getelementptr inbounds %struct.arc, ptr %53, i64 0, i32 3
  %88 = getelementptr inbounds %struct.arc, ptr %53, i64 0, i32 8
  %89 = getelementptr inbounds %struct.arc, ptr %53, i64 0, i32 1
  %90 = getelementptr inbounds %struct.arc, ptr %53, i64 1, i32 7
  %91 = getelementptr inbounds %struct.arc, ptr %53, i64 2, i32 7
  %92 = getelementptr %struct.arc, ptr %53, i64 -1, i32 7
  br label %93

93:                                               ; preds = %83, %309
  %94 = phi i64 [ %81, %83 ], [ %314, %309 ]
  %95 = phi i64 [ 0, %83 ], [ %313, %309 ]
  %96 = phi i64 [ -1, %83 ], [ %135, %309 ]
  %97 = phi i16 [ 1, %83 ], [ %312, %309 ]
  %98 = phi i16 [ 1, %83 ], [ %311, %309 ]
  %99 = phi ptr [ %80, %83 ], [ %315, %309 ]
  %100 = phi i64 [ 0, %83 ], [ %310, %309 ]
  %101 = phi ptr [ null, %83 ], [ %134, %309 ]
  %102 = phi i64 [ 0, %83 ], [ %123, %309 ]
  %103 = icmp eq i16 %97, 0
  br i1 %103, label %104, label %110, !prof !164

104:                                              ; preds = %93
  %105 = load ptr, ptr %7, align 8, !tbaa !90
  %106 = load ptr, ptr %105, align 8, !tbaa !90
  %107 = getelementptr inbounds %struct.arc, ptr %106, i64 0, i32 7
  %108 = load i64, ptr %107, align 8, !tbaa !102
  %109 = tail call i64 @llvm.smax.i64(i64 %108, i64 0)
  br label %110

110:                                              ; preds = %104, %93
  %111 = phi i64 [ %102, %93 ], [ %109, %104 ]
  %112 = urem i64 %94, %43
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %122, !prof !165

114:                                              ; preds = %110
  %115 = load ptr, ptr %7, align 8, !tbaa !90
  %116 = load ptr, ptr %115, align 8, !tbaa !90
  %117 = getelementptr inbounds %struct.arc, ptr %116, i64 0, i32 7
  %118 = load i64, ptr %117, align 8, !tbaa !102
  %119 = tail call i64 @llvm.smax.i64(i64 %118, i64 0)
  br i1 %103, label %120, label %122, !prof !166

120:                                              ; preds = %114
  store i64 %100, ptr %6, align 8, !tbaa !89
  %121 = tail call i64 @switch_arcs(ptr poison, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef %53, i32 noundef 0, i64 noundef %49, i64 noundef %51, i64 noundef 1)
  store i64 0, ptr %6, align 8, !tbaa !89
  br label %122

122:                                              ; preds = %114, %120, %110
  %123 = phi i64 [ %119, %120 ], [ %119, %114 ], [ %111, %110 ]
  %124 = phi i64 [ 0, %120 ], [ %100, %114 ], [ %100, %110 ]
  %125 = getelementptr inbounds %struct.arc, ptr %99, i64 1, i32 4
  %126 = load i16, ptr %125, align 8, !tbaa !145
  %127 = icmp eq i16 %126, -1
  br i1 %127, label %133, label %128, !prof !167

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.arc, ptr %99, i64 1
  %130 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #18
  %131 = getelementptr inbounds %struct.list_elem, ptr %130, i64 0, i32 1
  store ptr %101, ptr %131, align 8, !tbaa !168
  store ptr %129, ptr %130, align 8, !tbaa !170
  %132 = add nsw i64 %96, 1
  br label %133

133:                                              ; preds = %128, %122
  %134 = phi ptr [ %130, %128 ], [ %101, %122 ]
  %135 = phi i64 [ %132, %128 ], [ %96, %122 ]
  %136 = getelementptr inbounds %struct.arc, ptr %99, i64 0, i32 4
  %137 = load i16, ptr %136, align 8, !tbaa !145
  %138 = icmp eq i16 %137, -1
  br i1 %138, label %139, label %141, !prof !167

139:                                              ; preds = %133
  %140 = add nsw i64 %135, %95
  br label %309

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.arc, ptr %99, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !128
  %144 = getelementptr inbounds %struct.node, ptr %143, i64 0, i32 13
  %145 = load i32, ptr %144, align 4, !tbaa !171
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.arc, ptr %99, i64 0, i32 8
  %148 = load i64, ptr %147, align 8, !tbaa !129
  %149 = sub i64 %84, %148
  %150 = add i64 %149, %146
  %151 = getelementptr inbounds %struct.list_elem, ptr %134, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !168
  %153 = icmp eq ptr %152, null
  br i1 %153, label %309, label %154, !prof !63

154:                                              ; preds = %141, %301
  %155 = phi ptr [ %307, %301 ], [ %152, %141 ]
  %156 = phi i64 [ %306, %301 ], [ %95, %141 ]
  %157 = phi i16 [ %304, %301 ], [ %97, %141 ]
  %158 = phi i16 [ %303, %301 ], [ %98, %141 ]
  %159 = phi i64 [ %302, %301 ], [ %124, %141 ]
  br label %160

160:                                              ; preds = %154, %173
  %161 = phi ptr [ %155, %154 ], [ %176, %173 ]
  %162 = phi i64 [ %156, %154 ], [ %175, %173 ]
  %163 = load ptr, ptr %161, align 8, !tbaa !170
  %164 = getelementptr inbounds %struct.arc, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !127
  %166 = getelementptr inbounds %struct.node, ptr %165, i64 0, i32 13
  %167 = load i32, ptr %166, align 4, !tbaa !171
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.arc, ptr %163, i64 0, i32 8
  %170 = load i64, ptr %169, align 8, !tbaa !129
  %171 = add nsw i64 %170, %168
  %172 = icmp sgt i64 %171, %150
  br i1 %172, label %173, label %178, !prof !172

173:                                              ; preds = %160
  %174 = getelementptr inbounds %struct.list_elem, ptr %161, i64 0, i32 1
  %175 = add nsw i64 %162, 1
  %176 = load ptr, ptr %174, align 8, !tbaa !168
  %177 = icmp eq ptr %176, null
  br i1 %177, label %309, label %160, !prof !173, !llvm.loop !174

178:                                              ; preds = %160
  %179 = load i64, ptr %165, align 8, !tbaa !175
  %180 = load i64, ptr %143, align 8, !tbaa !175
  %181 = sub i64 %180, %179
  %182 = add i64 %181, 30
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %301, !prof !176

184:                                              ; preds = %178
  %185 = load i64, ptr %5, align 8, !tbaa !89
  %186 = icmp slt i64 %185, %49
  br i1 %186, label %187, label %227, !prof !177

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.arc, ptr %53, i64 %185
  %189 = getelementptr inbounds %struct.arc, ptr %53, i64 %185, i32 2
  store ptr %165, ptr %189, align 8, !tbaa !127
  %190 = getelementptr inbounds %struct.arc, ptr %53, i64 %185, i32 3
  store ptr %143, ptr %190, align 8, !tbaa !128
  %191 = getelementptr inbounds %struct.arc, ptr %53, i64 %185, i32 8
  store i64 30, ptr %191, align 8, !tbaa !129
  %192 = getelementptr inbounds %struct.arc, ptr %53, i64 %185, i32 1
  store i64 30, ptr %192, align 8, !tbaa !130
  %193 = getelementptr inbounds %struct.arc, ptr %53, i64 %185, i32 7
  store i64 %182, ptr %193, align 8, !tbaa !102
  %194 = trunc i64 %162 to i32
  store i32 %194, ptr %188, align 8, !tbaa !69
  %195 = icmp eq i64 %185, 0
  br i1 %195, label %225, label %196, !prof !131

196:                                              ; preds = %187
  %197 = add nsw i64 %185, 1
  br label %198

198:                                              ; preds = %206, %196
  %199 = phi i64 [ %223, %206 ], [ %185, %196 ]
  %200 = phi i64 [ %201, %206 ], [ %197, %196 ]
  %201 = sdiv i64 %200, 2
  %202 = getelementptr %struct.arc, ptr %53, i64 %201
  %203 = getelementptr %struct.arc, ptr %202, i64 -1, i32 7
  %204 = load i64, ptr %203, align 8, !tbaa !102
  %205 = icmp slt i64 %204, %182
  br i1 %205, label %206, label %225, !prof !132

206:                                              ; preds = %198
  %207 = getelementptr %struct.arc, ptr %202, i64 -1
  %208 = getelementptr %struct.arc, ptr %202, i64 -1, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !127
  %210 = getelementptr inbounds %struct.arc, ptr %53, i64 %199
  %211 = getelementptr inbounds %struct.arc, ptr %53, i64 %199, i32 2
  store ptr %209, ptr %211, align 8, !tbaa !127
  %212 = getelementptr %struct.arc, ptr %202, i64 -1, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !128
  %214 = getelementptr inbounds %struct.arc, ptr %53, i64 %199, i32 3
  store ptr %213, ptr %214, align 8, !tbaa !128
  %215 = getelementptr %struct.arc, ptr %202, i64 -1, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !130
  %217 = getelementptr inbounds %struct.arc, ptr %53, i64 %199, i32 1
  store i64 %216, ptr %217, align 8, !tbaa !130
  %218 = load i64, ptr %215, align 8, !tbaa !130
  %219 = getelementptr inbounds %struct.arc, ptr %53, i64 %199, i32 8
  store i64 %218, ptr %219, align 8, !tbaa !129
  %220 = getelementptr inbounds %struct.arc, ptr %53, i64 %199, i32 7
  store i64 %204, ptr %220, align 8, !tbaa !102
  %221 = load i32, ptr %207, align 8, !tbaa !69
  store i32 %221, ptr %210, align 8, !tbaa !69
  store ptr %165, ptr %208, align 8, !tbaa !127
  store ptr %143, ptr %212, align 8, !tbaa !128
  store i64 30, ptr %215, align 8, !tbaa !130
  %222 = getelementptr %struct.arc, ptr %202, i64 -1, i32 8
  store i64 30, ptr %222, align 8, !tbaa !129
  store i64 %182, ptr %203, align 8, !tbaa !102
  store i32 %194, ptr %207, align 8, !tbaa !69
  %223 = add nsw i64 %201, -1
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %198, !prof !133, !llvm.loop !134

225:                                              ; preds = %198, %206, %187
  %226 = add nsw i64 %185, 1
  store i64 %226, ptr %5, align 8, !tbaa !89
  br label %294

227:                                              ; preds = %184
  %228 = load i64, ptr %85, align 8, !tbaa !102
  %229 = icmp sgt i64 %228, %182
  br i1 %229, label %230, label %281, !prof !178

230:                                              ; preds = %227
  %231 = icmp eq i16 %158, 0
  %232 = select i1 %231, i16 %157, i16 0, !prof !179
  %233 = load i64, ptr %6, align 8, !tbaa !89
  %234 = getelementptr inbounds %struct.arc, ptr %45, i64 %233
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %234, ptr noundef nonnull align 8 dereferenceable(72) %53, i64 72, i1 false), !tbaa.struct !87
  %235 = add nsw i64 %233, 1
  store i64 %235, ptr %6, align 8, !tbaa !89
  %236 = add nsw i64 %159, 1
  store ptr %165, ptr %86, align 8, !tbaa !127
  store ptr %143, ptr %87, align 8, !tbaa !128
  store i64 30, ptr %88, align 8, !tbaa !129
  store i64 30, ptr %89, align 8, !tbaa !130
  store i64 %182, ptr %85, align 8, !tbaa !102
  %237 = trunc i64 %162 to i32
  store i32 %237, ptr %53, align 8, !tbaa !69
  %238 = load i64, ptr %90, align 8, !tbaa !102
  %239 = load i64, ptr %91, align 8, !tbaa !102
  %240 = icmp sgt i64 %238, %239
  %241 = select i1 %240, i64 2, i64 3, !prof !136
  %242 = icmp sgt i64 %241, %49
  br i1 %242, label %294, label %243, !prof !137

243:                                              ; preds = %230, %278
  %244 = phi i64 [ %279, %278 ], [ %241, %230 ]
  %245 = phi i64 [ %244, %278 ], [ 1, %230 ]
  %246 = getelementptr %struct.arc, ptr %53, i64 %244
  %247 = getelementptr %struct.arc, ptr %246, i64 -1, i32 7
  %248 = load i64, ptr %247, align 8, !tbaa !102
  %249 = icmp sgt i64 %248, %182
  br i1 %249, label %250, label %294, !prof !138

250:                                              ; preds = %243
  %251 = getelementptr %struct.arc, ptr %246, i64 -1
  %252 = getelementptr %struct.arc, ptr %246, i64 -1, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !127
  %254 = getelementptr %struct.arc, ptr %53, i64 %245
  %255 = getelementptr %struct.arc, ptr %254, i64 -1
  %256 = getelementptr %struct.arc, ptr %254, i64 -1, i32 2
  store ptr %253, ptr %256, align 8, !tbaa !127
  %257 = getelementptr %struct.arc, ptr %246, i64 -1, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !128
  %259 = getelementptr %struct.arc, ptr %254, i64 -1, i32 3
  store ptr %258, ptr %259, align 8, !tbaa !128
  %260 = getelementptr %struct.arc, ptr %246, i64 -1, i32 1
  %261 = load i64, ptr %260, align 8, !tbaa !130
  %262 = getelementptr %struct.arc, ptr %254, i64 -1, i32 1
  store i64 %261, ptr %262, align 8, !tbaa !130
  %263 = load i64, ptr %260, align 8, !tbaa !130
  %264 = getelementptr %struct.arc, ptr %254, i64 -1, i32 8
  store i64 %263, ptr %264, align 8, !tbaa !129
  %265 = getelementptr %struct.arc, ptr %254, i64 -1, i32 7
  store i64 %248, ptr %265, align 8, !tbaa !102
  %266 = load i32, ptr %251, align 8, !tbaa !69
  store i32 %266, ptr %255, align 8, !tbaa !69
  store ptr %165, ptr %252, align 8, !tbaa !127
  store ptr %143, ptr %257, align 8, !tbaa !128
  store i64 30, ptr %260, align 8, !tbaa !130
  %267 = getelementptr %struct.arc, ptr %246, i64 -1, i32 8
  store i64 30, ptr %267, align 8, !tbaa !129
  store i64 %182, ptr %247, align 8, !tbaa !102
  store i32 %237, ptr %251, align 8, !tbaa !69
  %268 = shl nsw i64 %244, 1
  %269 = icmp slt i64 %268, %49
  br i1 %269, label %270, label %278, !prof !139

270:                                              ; preds = %250
  %271 = getelementptr %struct.arc, ptr %92, i64 %268
  %272 = load i64, ptr %271, align 8, !tbaa !102
  %273 = getelementptr inbounds %struct.arc, ptr %53, i64 %268, i32 7
  %274 = load i64, ptr %273, align 8, !tbaa !102
  %275 = icmp slt i64 %272, %274
  %276 = zext i1 %275 to i64
  %277 = or disjoint i64 %268, %276
  br label %278

278:                                              ; preds = %270, %250
  %279 = phi i64 [ %268, %250 ], [ %277, %270 ]
  %280 = icmp sgt i64 %279, %49
  br i1 %280, label %294, label %243, !prof !140, !llvm.loop !141

281:                                              ; preds = %227
  %282 = icmp slt i64 %182, %123
  br i1 %282, label %283, label %294, !prof !180

283:                                              ; preds = %281
  %284 = load i64, ptr %6, align 8, !tbaa !89
  %285 = add nsw i64 %284, 1
  store i64 %285, ptr %6, align 8, !tbaa !89
  %286 = getelementptr inbounds %struct.arc, ptr %45, i64 %284
  %287 = getelementptr inbounds %struct.arc, ptr %45, i64 %284, i32 2
  store ptr %165, ptr %287, align 8, !tbaa !127
  %288 = getelementptr inbounds %struct.arc, ptr %45, i64 %284, i32 3
  store ptr %143, ptr %288, align 8, !tbaa !128
  %289 = getelementptr inbounds %struct.arc, ptr %45, i64 %284, i32 8
  store i64 30, ptr %289, align 8, !tbaa !129
  %290 = getelementptr inbounds %struct.arc, ptr %45, i64 %284, i32 1
  store i64 30, ptr %290, align 8, !tbaa !130
  %291 = getelementptr inbounds %struct.arc, ptr %45, i64 %284, i32 7
  store i64 %182, ptr %291, align 8, !tbaa !102
  %292 = trunc i64 %162 to i32
  store i32 %292, ptr %286, align 8, !tbaa !69
  %293 = add nsw i64 %159, 1
  br label %294

294:                                              ; preds = %278, %243, %230, %283, %281, %225
  %295 = phi i64 [ %159, %225 ], [ %293, %283 ], [ %159, %281 ], [ %236, %230 ], [ %236, %243 ], [ %236, %278 ]
  %296 = phi i16 [ %158, %225 ], [ %158, %283 ], [ %158, %281 ], [ 0, %230 ], [ 0, %243 ], [ 0, %278 ]
  %297 = phi i16 [ %157, %225 ], [ %157, %283 ], [ %157, %281 ], [ %232, %230 ], [ %232, %243 ], [ %232, %278 ]
  %298 = load i64, ptr %6, align 8, !tbaa !89
  %299 = icmp eq i64 %298, %51
  br i1 %299, label %300, label %301, !prof !181

300:                                              ; preds = %294
  store i64 0, ptr %6, align 8, !tbaa !89
  br label %301

301:                                              ; preds = %294, %300, %178
  %302 = phi i64 [ %295, %300 ], [ %295, %294 ], [ %159, %178 ]
  %303 = phi i16 [ %296, %300 ], [ %296, %294 ], [ %158, %178 ]
  %304 = phi i16 [ %297, %300 ], [ %297, %294 ], [ %157, %178 ]
  %305 = getelementptr inbounds %struct.list_elem, ptr %161, i64 0, i32 1
  %306 = add nsw i64 %162, 1
  %307 = load ptr, ptr %305, align 8, !tbaa !168
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %154, !prof !182, !llvm.loop !174

309:                                              ; preds = %301, %173, %141, %139
  %310 = phi i64 [ %124, %139 ], [ %124, %141 ], [ %159, %173 ], [ %302, %301 ]
  %311 = phi i16 [ %98, %139 ], [ %98, %141 ], [ %158, %173 ], [ %303, %301 ]
  %312 = phi i16 [ %97, %139 ], [ %97, %141 ], [ %157, %173 ], [ %304, %301 ]
  %313 = phi i64 [ %140, %139 ], [ %95, %141 ], [ %175, %173 ], [ %306, %301 ]
  %314 = add i64 %94, 1
  %315 = getelementptr inbounds %struct.arc, ptr %99, i64 3
  %316 = icmp eq i64 %314, %41
  br i1 %316, label %317, label %93, !prof !183, !llvm.loop !184

317:                                              ; preds = %309
  %318 = icmp eq i16 %312, 0
  br label %319

319:                                              ; preds = %317, %79
  %320 = phi ptr [ null, %79 ], [ %134, %317 ]
  %321 = phi i64 [ 0, %79 ], [ %310, %317 ]
  %322 = phi i1 [ false, %79 ], [ %318, %317 ]
  store i64 %321, ptr %6, align 8, !tbaa !89
  br i1 %322, label %327, label %323, !prof !100

323:                                              ; preds = %327, %319
  %324 = getelementptr inbounds %struct.list_elem, ptr %320, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !168
  %326 = icmp eq ptr %325, null
  br i1 %326, label %336, label %330, !prof !185

327:                                              ; preds = %319, %327
  %328 = tail call i64 @switch_arcs(ptr poison, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef %53, i32 noundef 0, i64 noundef %49, i64 noundef %51, i64 noundef 1)
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %323, label %327, !prof !186, !llvm.loop !187

330:                                              ; preds = %323, %330
  %331 = phi ptr [ %334, %330 ], [ %325, %323 ]
  %332 = phi ptr [ %331, %330 ], [ %320, %323 ]
  tail call void @free(ptr noundef %332) #15
  %333 = getelementptr inbounds %struct.list_elem, ptr %331, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !168
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %330, !prof !188, !llvm.loop !189

336:                                              ; preds = %330, %323
  %337 = phi ptr [ %320, %323 ], [ %331, %330 ]
  tail call void @free(ptr noundef %337) #15
  %338 = load ptr, ptr %7, align 8, !tbaa !90
  %339 = load i64, ptr %5, align 8, !tbaa !89
  tail call void @spec_qsort(ptr noundef %338, i64 noundef %339, i64 noundef 8, ptr noundef nonnull @arc_compare) #15
  call void @marc_arcs(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %7)
  tail call void @free(ptr noundef %338) #15
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %382, label %341, !prof !190

341:                                              ; preds = %336
  %342 = load ptr, ptr %52, align 8, !tbaa !94
  %343 = getelementptr inbounds %struct.arc, ptr %342, i64 %339
  br i1 %40, label %358, label %344, !prof !191

344:                                              ; preds = %341, %355
  %345 = phi ptr [ %356, %355 ], [ %342, %341 ]
  %346 = getelementptr inbounds %struct.arc, ptr %345, i64 0, i32 7
  %347 = load i64, ptr %346, align 8, !tbaa !102
  %348 = icmp eq i64 %347, 1
  br i1 %348, label %349, label %355, !prof !192

349:                                              ; preds = %344
  store i64 0, ptr %346, align 8, !tbaa !102
  %350 = getelementptr inbounds %struct.arc, ptr %345, i64 0, i32 4
  store i16 1, ptr %350, align 8, !tbaa !145
  %351 = load i32, ptr %345, align 8, !tbaa !69
  %352 = sext i32 %351 to i64
  %353 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %352) #15
  %354 = getelementptr inbounds %struct.arc, ptr %45, i64 %353
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %354, ptr noundef nonnull align 8 dereferenceable(72) %345, i64 72, i1 false), !tbaa.struct !87
  br label %355

355:                                              ; preds = %344, %349
  %356 = getelementptr inbounds %struct.arc, ptr %345, i64 1
  %357 = icmp eq ptr %356, %343
  br i1 %357, label %382, label %344, !prof !193, !llvm.loop !194

358:                                              ; preds = %341, %379
  %359 = phi ptr [ %380, %379 ], [ %342, %341 ]
  %360 = getelementptr inbounds %struct.arc, ptr %359, i64 0, i32 7
  %361 = load i64, ptr %360, align 8, !tbaa !102
  %362 = icmp eq i64 %361, 1
  br i1 %362, label %363, label %379, !prof !195

363:                                              ; preds = %358
  store i64 0, ptr %360, align 8, !tbaa !102
  %364 = getelementptr inbounds %struct.arc, ptr %359, i64 0, i32 4
  store i16 1, ptr %364, align 8, !tbaa !145
  %365 = getelementptr inbounds %struct.arc, ptr %359, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !127
  %367 = getelementptr inbounds %struct.node, ptr %366, i64 0, i32 7
  %368 = load ptr, ptr %367, align 8, !tbaa !77
  %369 = getelementptr inbounds %struct.arc, ptr %359, i64 0, i32 5
  store ptr %368, ptr %369, align 8, !tbaa !196
  store ptr %359, ptr %367, align 8, !tbaa !77
  %370 = getelementptr inbounds %struct.arc, ptr %359, i64 0, i32 3
  %371 = load ptr, ptr %370, align 8, !tbaa !128
  %372 = getelementptr inbounds %struct.node, ptr %371, i64 0, i32 8
  %373 = load ptr, ptr %372, align 8, !tbaa !74
  %374 = getelementptr inbounds %struct.arc, ptr %359, i64 0, i32 6
  store ptr %373, ptr %374, align 8, !tbaa !197
  store ptr %359, ptr %372, align 8, !tbaa !74
  %375 = load i32, ptr %359, align 8, !tbaa !69
  %376 = sext i32 %375 to i64
  %377 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %376) #15
  %378 = getelementptr inbounds %struct.arc, ptr %45, i64 %377
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %378, ptr noundef nonnull align 8 dereferenceable(72) %359, i64 72, i1 false), !tbaa.struct !87
  br label %379

379:                                              ; preds = %358, %363
  %380 = getelementptr inbounds %struct.arc, ptr %359, i64 1
  %381 = icmp eq ptr %380, %343
  br i1 %381, label %382, label %358, !prof !198, !llvm.loop !199

382:                                              ; preds = %355, %379, %336
  %383 = load i64, ptr %2, align 8, !tbaa !89
  %384 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %385 = load i64, ptr %384, align 8, !tbaa !200
  %386 = add nsw i64 %385, %383
  store i64 %386, ptr %384, align 8, !tbaa !200
  %387 = load i64, ptr %48, align 8, !tbaa !97
  %388 = sub nsw i64 %387, %383
  store i64 %388, ptr %48, align 8, !tbaa !97
  %389 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %390 = load i64, ptr %389, align 8, !tbaa !101
  %391 = load ptr, ptr %44, align 8, !tbaa !82
  %392 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %393 = load i64, ptr %392, align 8, !tbaa !56
  %394 = icmp slt i64 %393, 0
  br i1 %394, label %397, label %395, !prof !185

395:                                              ; preds = %382
  %396 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  br label %399

397:                                              ; preds = %434, %382
  %398 = icmp sgt i64 %390, 0
  br i1 %398, label %438, label %451, !prof !100

399:                                              ; preds = %395, %434
  %400 = phi i64 [ 0, %395 ], [ %435, %434 ]
  %401 = load ptr, ptr %396, align 8, !tbaa !64
  %402 = getelementptr inbounds %struct.node, ptr %401, i64 %400, i32 6
  %403 = load ptr, ptr %402, align 8, !tbaa !65
  %404 = icmp eq ptr %403, null
  br i1 %404, label %412, label %405, !prof !201

405:                                              ; preds = %399
  %406 = load i32, ptr %403, align 8, !tbaa !69
  %407 = icmp sgt i32 %406, -1
  br i1 %407, label %408, label %412, !prof !202

408:                                              ; preds = %405
  %409 = zext nneg i32 %406 to i64
  %410 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %409) #15
  %411 = getelementptr inbounds %struct.arc, ptr %391, i64 %410
  store ptr %411, ptr %402, align 8, !tbaa !65
  br label %412

412:                                              ; preds = %408, %405, %399
  %413 = getelementptr inbounds %struct.node, ptr %401, i64 %400, i32 8
  %414 = load ptr, ptr %413, align 8, !tbaa !74
  %415 = icmp eq ptr %414, null
  br i1 %415, label %423, label %416, !prof !201

416:                                              ; preds = %412
  %417 = load i32, ptr %414, align 8, !tbaa !69
  %418 = icmp sgt i32 %417, -1
  br i1 %418, label %419, label %423, !prof !203

419:                                              ; preds = %416
  %420 = zext nneg i32 %417 to i64
  %421 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %420) #15
  %422 = getelementptr inbounds %struct.arc, ptr %391, i64 %421
  store ptr %422, ptr %413, align 8, !tbaa !74
  br label %423

423:                                              ; preds = %419, %416, %412
  %424 = getelementptr inbounds %struct.node, ptr %401, i64 %400, i32 7
  %425 = load ptr, ptr %424, align 8, !tbaa !77
  %426 = icmp eq ptr %425, null
  br i1 %426, label %434, label %427, !prof !201

427:                                              ; preds = %423
  %428 = load i32, ptr %425, align 8, !tbaa !69
  %429 = icmp sgt i32 %428, -1
  br i1 %429, label %430, label %434, !prof !203

430:                                              ; preds = %427
  %431 = zext nneg i32 %428 to i64
  %432 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %431) #15
  %433 = getelementptr inbounds %struct.arc, ptr %391, i64 %432
  store ptr %433, ptr %424, align 8, !tbaa !77
  br label %434

434:                                              ; preds = %430, %427, %423
  %435 = add nuw nsw i64 %400, 1
  %436 = load i64, ptr %392, align 8, !tbaa !56
  %437 = icmp slt i64 %400, %436
  br i1 %437, label %399, label %397, !prof !204, !llvm.loop !79

438:                                              ; preds = %397, %448
  %439 = phi i64 [ %449, %448 ], [ 0, %397 ]
  %440 = load ptr, ptr %63, align 8, !tbaa !84
  %441 = getelementptr inbounds %struct.arc, ptr %440, i64 %439
  %442 = load i32, ptr %441, align 8, !tbaa !69
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %448, label %444, !prof !205

444:                                              ; preds = %438
  %445 = zext nneg i32 %442 to i64
  %446 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %445) #15
  %447 = getelementptr inbounds %struct.arc, ptr %391, i64 %446
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %447, ptr noundef nonnull align 8 dereferenceable(72) %441, i64 72, i1 false), !tbaa.struct !87
  br label %448

448:                                              ; preds = %444, %438
  %449 = add nuw nsw i64 %439, 1
  %450 = icmp eq i64 %449, %390
  br i1 %450, label %451, label %438, !prof !206, !llvm.loop !93

451:                                              ; preds = %448, %397
  %452 = load ptr, ptr %63, align 8, !tbaa !84
  store ptr %391, ptr %63, align 8, !tbaa !84
  store ptr %452, ptr %44, align 8, !tbaa !82
  %453 = getelementptr inbounds %struct.arc, ptr %391, i64 %390
  store ptr %453, ptr %52, align 8, !tbaa !94
  %454 = load i64, ptr %389, align 8, !tbaa !101
  %455 = add nsw i64 %454, %383
  store i64 %455, ptr %389, align 8, !tbaa !101
  %456 = getelementptr inbounds %struct.arc, ptr %391, i64 %455
  store ptr %456, ptr %52, align 8, !tbaa !94
  tail call void @free(ptr noundef %5) #15
  tail call void @free(ptr noundef %6) #15
  tail call void @free(ptr noundef %7) #15
  tail call void @free(ptr noundef %8) #15
  br label %457

457:                                              ; preds = %39, %35, %26, %451
  %458 = phi i64 [ %383, %451 ], [ -1, %26 ], [ -1, %35 ], [ -1, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %458
}

declare void @refresh_neighbour_lists(ptr noundef, ptr noundef) local_unnamed_addr #11

declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #11

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

declare i64 @getArcPosition(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i64 @suspend_impl(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !207 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %4, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !101
  %7 = add nsw i64 %6, -1
  %8 = sdiv i64 %7, 4000
  %9 = add nsw i64 %8, 1
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %9, ptr %10, align 8, !tbaa !106
  %11 = srem i64 %6, 4000
  %12 = add nsw i64 %11, -4000
  %13 = add nsw i64 %12, %9
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %13, ptr %14, align 8, !tbaa !108
  %15 = icmp slt i64 %13, 0
  br i1 %15, label %16, label %25, !prof !83

16:                                               ; preds = %3
  %17 = load i64, ptr %4, align 8, !tbaa !105
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ %17, %16 ], [ %22, %18 ]
  %20 = phi i64 [ %13, %16 ], [ %21, %18 ]
  %21 = add nsw i64 %20, %9
  %22 = add nsw i64 %19, -1
  %23 = icmp slt i64 %21, 0
  br i1 %23, label %18, label %24, !prof !208, !llvm.loop !209

24:                                               ; preds = %18
  store i64 %21, ptr %14, align 8, !tbaa !108
  store i64 %22, ptr %4, align 8, !tbaa !105
  br label %25

25:                                               ; preds = %24, %3
  %26 = icmp eq i64 %2, 0
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !200
  br i1 %26, label %29, label %79, !prof !210

29:                                               ; preds = %25
  %30 = sub nsw i64 %6, %28
  %31 = load i64, ptr %5, align 8, !tbaa !101
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %79, !prof !83

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  br label %35

35:                                               ; preds = %33, %73
  %36 = phi i64 [ %30, %33 ], [ %75, %73 ]
  %37 = phi i64 [ %30, %33 ], [ %76, %73 ]
  %38 = phi i64 [ 0, %33 ], [ %74, %73 ]
  %39 = load ptr, ptr %34, align 8, !tbaa !84
  %40 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %37) #15
  %41 = getelementptr inbounds %struct.arc, ptr %39, i64 %40
  %42 = getelementptr inbounds %struct.arc, ptr %39, i64 %40, i32 4
  %43 = load i16, ptr %42, align 8, !tbaa !145
  switch i16 %43, label %65 [
    i16 1, label %44
    i16 0, label %55
  ], !prof !211

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.arc, ptr %39, i64 %40, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !130
  %47 = getelementptr inbounds %struct.arc, ptr %39, i64 %40, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !127
  %49 = load i64, ptr %48, align 8, !tbaa !175
  %50 = sub i64 %46, %49
  %51 = getelementptr inbounds %struct.arc, ptr %39, i64 %40, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !128
  %53 = load i64, ptr %52, align 8, !tbaa !175
  %54 = add nsw i64 %50, %53
  br label %65

55:                                               ; preds = %35
  %56 = getelementptr inbounds %struct.arc, ptr %39, i64 %40, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !127
  %58 = getelementptr inbounds %struct.node, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !65
  %60 = icmp eq ptr %59, %41
  br i1 %60, label %65, label %61, !prof !212

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.arc, ptr %39, i64 %40, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !128
  %64 = getelementptr inbounds %struct.node, ptr %63, i64 0, i32 6
  store ptr %41, ptr %64, align 8, !tbaa !65
  br label %65

65:                                               ; preds = %35, %61, %55, %44
  %66 = phi i64 [ %54, %44 ], [ -2, %55 ], [ -2, %61 ], [ -2, %35 ]
  %67 = icmp sgt i64 %66, %1
  br i1 %67, label %68, label %70, !prof !213

68:                                               ; preds = %65
  %69 = add nsw i64 %38, 1
  store i32 -1, ptr %41, align 8, !tbaa !69
  br label %73

70:                                               ; preds = %65
  %71 = trunc i64 %36 to i32
  store i32 %71, ptr %41, align 8, !tbaa !69
  %72 = add nsw i64 %36, 1
  br label %73

73:                                               ; preds = %68, %70
  %74 = phi i64 [ %69, %68 ], [ %38, %70 ]
  %75 = phi i64 [ %36, %68 ], [ %72, %70 ]
  %76 = add nsw i64 %37, 1
  %77 = load i64, ptr %5, align 8, !tbaa !101
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %35, label %79, !prof !214, !llvm.loop !215

79:                                               ; preds = %73, %25, %29
  %80 = phi i64 [ 0, %29 ], [ %28, %25 ], [ %74, %73 ]
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %183, label %82, !prof !216

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %84 = load i64, ptr %83, align 8, !tbaa !200
  %85 = sub nsw i64 %84, %80
  store i64 %85, ptr %83, align 8, !tbaa !200
  %86 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %87 = load i64, ptr %86, align 8, !tbaa !97
  %88 = add nsw i64 %87, %80
  store i64 %88, ptr %86, align 8, !tbaa !97
  store i64 4000, ptr %4, align 8, !tbaa !105
  %89 = load i64, ptr %5, align 8, !tbaa !101
  %90 = xor i64 %80, -1
  %91 = add i64 %89, %90
  %92 = sdiv i64 %91, 4000
  %93 = add nsw i64 %92, 1
  store i64 %93, ptr %10, align 8, !tbaa !106
  %94 = sub nsw i64 %89, %80
  %95 = srem i64 %94, 4000
  %96 = icmp eq i64 %95, 0
  %97 = add nsw i64 %95, -4000
  %98 = select i1 %96, i64 0, i64 %97, !prof !216
  %99 = add nsw i64 %98, %93
  store i64 %99, ptr %14, align 8, !tbaa !108
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %110, !prof !83

101:                                              ; preds = %82
  %102 = load i64, ptr %4, align 8, !tbaa !105
  br label %103

103:                                              ; preds = %101, %103
  %104 = phi i64 [ %102, %101 ], [ %107, %103 ]
  %105 = phi i64 [ %99, %101 ], [ %106, %103 ]
  %106 = add nsw i64 %105, %93
  %107 = add nsw i64 %104, -1
  %108 = icmp slt i64 %106, 0
  br i1 %108, label %103, label %109, !prof !217, !llvm.loop !218

109:                                              ; preds = %103
  store i64 %106, ptr %14, align 8, !tbaa !108
  store i64 %107, ptr %4, align 8, !tbaa !105
  br label %110

110:                                              ; preds = %109, %82
  %111 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %112 = load ptr, ptr %111, align 8, !tbaa !82
  %113 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %114 = load i64, ptr %113, align 8, !tbaa !56
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %118, label %116, !prof !63

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  br label %122

118:                                              ; preds = %157, %110
  %119 = icmp sgt i64 %89, 0
  br i1 %119, label %120, label %174, !prof !83

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  br label %161

122:                                              ; preds = %116, %157
  %123 = phi i64 [ 0, %116 ], [ %158, %157 ]
  %124 = load ptr, ptr %117, align 8, !tbaa !64
  %125 = getelementptr inbounds %struct.node, ptr %124, i64 %123, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !65
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128, !prof !219

128:                                              ; preds = %122
  %129 = load i32, ptr %126, align 8, !tbaa !69
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %135, !prof !220

131:                                              ; preds = %128
  %132 = zext nneg i32 %129 to i64
  %133 = tail call i64 @getOriginalArcPosition(ptr noundef %0, i64 noundef %132) #15
  %134 = getelementptr inbounds %struct.arc, ptr %112, i64 %133
  store ptr %134, ptr %125, align 8, !tbaa !65
  br label %135

135:                                              ; preds = %131, %128, %122
  %136 = getelementptr inbounds %struct.node, ptr %124, i64 %123, i32 8
  %137 = load ptr, ptr %136, align 8, !tbaa !74
  %138 = icmp eq ptr %137, null
  br i1 %138, label %146, label %139, !prof !219

139:                                              ; preds = %135
  %140 = load i32, ptr %137, align 8, !tbaa !69
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %142, label %146, !prof !221

142:                                              ; preds = %139
  %143 = zext nneg i32 %140 to i64
  %144 = tail call i64 @getOriginalArcPosition(ptr noundef %0, i64 noundef %143) #15
  %145 = getelementptr inbounds %struct.arc, ptr %112, i64 %144
  store ptr %145, ptr %136, align 8, !tbaa !74
  br label %146

146:                                              ; preds = %142, %139, %135
  %147 = getelementptr inbounds %struct.node, ptr %124, i64 %123, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !77
  %149 = icmp eq ptr %148, null
  br i1 %149, label %157, label %150, !prof !219

150:                                              ; preds = %146
  %151 = load i32, ptr %148, align 8, !tbaa !69
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %157, !prof !222

153:                                              ; preds = %150
  %154 = zext nneg i32 %151 to i64
  %155 = tail call i64 @getOriginalArcPosition(ptr noundef %0, i64 noundef %154) #15
  %156 = getelementptr inbounds %struct.arc, ptr %112, i64 %155
  store ptr %156, ptr %147, align 8, !tbaa !77
  br label %157

157:                                              ; preds = %153, %150, %146
  %158 = add nuw nsw i64 %123, 1
  %159 = load i64, ptr %113, align 8, !tbaa !56
  %160 = icmp slt i64 %123, %159
  br i1 %160, label %122, label %118, !prof !78, !llvm.loop !79

161:                                              ; preds = %120, %171
  %162 = phi i64 [ 0, %120 ], [ %172, %171 ]
  %163 = load ptr, ptr %121, align 8, !tbaa !84
  %164 = getelementptr inbounds %struct.arc, ptr %163, i64 %162
  %165 = load i32, ptr %164, align 8, !tbaa !69
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %171, label %167, !prof !223

167:                                              ; preds = %161
  %168 = zext nneg i32 %165 to i64
  %169 = tail call i64 @getOriginalArcPosition(ptr noundef %0, i64 noundef %168) #15
  %170 = getelementptr inbounds %struct.arc, ptr %112, i64 %169
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %170, ptr noundef nonnull align 8 dereferenceable(72) %164, i64 72, i1 false), !tbaa.struct !87
  br label %171

171:                                              ; preds = %167, %161
  %172 = add nuw nsw i64 %162, 1
  %173 = icmp eq i64 %172, %89
  br i1 %173, label %174, label %161, !prof !224, !llvm.loop !93

174:                                              ; preds = %171, %118
  %175 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %176 = load ptr, ptr %175, align 8, !tbaa !84
  store ptr %112, ptr %175, align 8, !tbaa !84
  store ptr %176, ptr %111, align 8, !tbaa !82
  %177 = getelementptr inbounds %struct.arc, ptr %112, i64 %89
  %178 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %177, ptr %178, align 8, !tbaa !94
  %179 = load i64, ptr %5, align 8, !tbaa !101
  %180 = sub nsw i64 %179, %80
  store i64 %180, ptr %5, align 8, !tbaa !101
  %181 = sub i64 0, %80
  %182 = getelementptr inbounds %struct.arc, ptr %177, i64 %181
  store ptr %182, ptr %178, align 8, !tbaa !94
  tail call void @refresh_neighbour_lists(ptr noundef %0, ptr noundef nonnull @getOriginalArcPosition) #15
  br label %183

183:                                              ; preds = %174, %79
  ret i64 %80
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @refreshArcPointers, ptr @getOriginalArcPosition, i64 89995}
!36 = !{ptr @refreshPositions, ptr @refreshArcPointers, i64 1}
!37 = !{ptr @refreshPositions, ptr @getOriginalArcPosition, i64 162202}
!38 = !{ptr @marc_arcs, ptr @malloc, i64 66}
!39 = !{ptr @marc_arcs, ptr @free, i64 66}
!40 = !{ptr @resize_prob, ptr @realloc, i64 4}
!41 = !{ptr @switch_arcs, ptr @replace_weaker_arc, i64 1333}
!42 = !{ptr @price_out_impl, ptr @malloc, i64 132}
!43 = !{ptr @price_out_impl, ptr @resize_prob, i64 2}
!44 = !{ptr @price_out_impl, ptr @refresh_neighbour_lists, i64 2}
!45 = !{ptr @price_out_impl, ptr @calloc, i64 495033}
!46 = !{ptr @price_out_impl, ptr @switch_arcs, i64 288}
!47 = !{ptr @price_out_impl, ptr @free, i64 495167}
!48 = !{ptr @price_out_impl, ptr @spec_qsort, i64 33}
!49 = !{ptr @price_out_impl, ptr @marc_arcs, i64 33}
!50 = !{ptr @price_out_impl, ptr @getArcPosition, i64 99937205}
!51 = !{ptr @suspend_impl, ptr @getArcPosition, i64 91153216}
!52 = !{ptr @suspend_impl, ptr @getOriginalArcPosition, i64 8235106}
!53 = !{ptr @suspend_impl, ptr @refresh_neighbour_lists, i64 32}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 1}
!56 = !{!57, !60, i64 400}
!57 = !{!"network", !58, i64 0, !58, i64 200, !60, i64 400, !60, i64 408, !60, i64 416, !60, i64 424, !60, i64 432, !60, i64 440, !60, i64 448, !60, i64 456, !60, i64 464, !60, i64 472, !60, i64 480, !60, i64 488, !60, i64 496, !60, i64 504, !60, i64 512, !60, i64 520, !60, i64 528, !61, i64 536, !60, i64 544, !62, i64 552, !62, i64 560, !62, i64 568, !62, i64 576, !62, i64 584, !62, i64 592, !62, i64 600, !60, i64 608, !60, i64 616, !60, i64 624, !60, i64 632, !60, i64 640}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!"long", !58, i64 0}
!61 = !{!"double", !58, i64 0}
!62 = !{!"any pointer", !58, i64 0}
!63 = !{!"branch_weights", i32 1, i32 127}
!64 = !{!57, !62, i64 552}
!65 = !{!66, !62, i64 48}
!66 = !{!"node", !60, i64 0, !67, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !60, i64 80, !60, i64 88, !67, i64 96, !67, i64 100}
!67 = !{!"int", !58, i64 0}
!68 = !{!"branch_weights", i32 1, i32 30001}
!69 = !{!70, !67, i64 0}
!70 = !{!"arc", !67, i64 0, !60, i64 8, !62, i64 16, !62, i64 24, !71, i64 32, !62, i64 40, !62, i64 48, !60, i64 56, !60, i64 64}
!71 = !{!"short", !58, i64 0}
!72 = !{!"branch_weights", i32 29993, i32 8}
!73 = !{!"VP", i32 0, i64 29993, i64 -3929449816601845889, i64 29993}
!74 = !{!66, !62, i64 64}
!75 = !{!"branch_weights", i32 30001, i32 0}
!76 = !{!"VP", i32 0, i64 30001, i64 -3929449816601845889, i64 30001}
!77 = !{!66, !62, i64 56}
!78 = !{!"branch_weights", i32 3840129, i32 127}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!57, !62, i64 584}
!83 = !{!"branch_weights", i32 127, i32 1}
!84 = !{!57, !62, i64 568}
!85 = !{!"branch_weights", i32 0, i32 162202}
!86 = !{!"VP", i32 0, i64 162202, i64 -3929449816601845889, i64 162202}
!87 = !{i64 0, i64 4, !88, i64 8, i64 8, !89, i64 16, i64 8, !90, i64 24, i64 8, !90, i64 32, i64 2, !91, i64 40, i64 8, !90, i64 48, i64 8, !90, i64 56, i64 8, !89, i64 64, i64 8, !89}
!88 = !{!67, !67, i64 0}
!89 = !{!60, !60, i64 0}
!90 = !{!62, !62, i64 0}
!91 = !{!71, !71, i64 0}
!92 = !{!"branch_weights", i32 127, i32 20761729}
!93 = distinct !{!93, !80, !81}
!94 = !{!57, !62, i64 576}
!95 = !{!"function_entry_count", i64 33}
!96 = !{!57, !60, i64 408}
!97 = !{!57, !60, i64 448}
!98 = !{!"branch_weights", i32 33, i32 0}
!99 = !{!"branch_weights", i32 90533697, i32 2}
!100 = !{!"branch_weights", i32 131, i32 1}
!101 = !{!57, !60, i64 424}
!102 = !{!70, !60, i64 56}
!103 = !{!"branch_weights", i32 362134533, i32 131}
!104 = distinct !{!104, !80, !81}
!105 = !{!57, !60, i64 640}
!106 = !{!57, !60, i64 624}
!107 = !{!"branch_weights", i32 0, i32 33}
!108 = !{!57, !60, i64 632}
!109 = !{!"branch_weights", i32 237, i32 131}
!110 = distinct !{!110, !80, !81}
!111 = !{!"function_entry_count", i64 2790238363}
!112 = !{!"implicit.c;arc_compare"}
!113 = !{!"branch_weights", i32 280840899, i32 -1785569832}
!114 = !{!"branch_weights", i32 276969161, i32 -2062538993}
!115 = !{!"branch_weights", i32 1080800313, i32 1151627990}
!116 = !{!"function_entry_count", i64 2}
!117 = !{!57, !60, i64 456}
!118 = !{!57, !60, i64 416}
!119 = !{!"branch_weights", i32 0, i32 2}
!120 = !{!57, !62, i64 560}
!121 = !{!"branch_weights", i32 0, i32 60002}
!122 = !{!66, !62, i64 24}
!123 = !{!"branch_weights", i32 16, i32 59986}
!124 = !{!"branch_weights", i32 3840001, i32 127}
!125 = distinct !{!125, !80, !81}
!126 = !{!"function_entry_count", i64 0}
!127 = !{!70, !62, i64 16}
!128 = !{!70, !62, i64 24}
!129 = !{!70, !60, i64 64}
!130 = !{!70, !60, i64 8}
!131 = !{!"branch_weights", i32 1, i32 189}
!132 = !{!"branch_weights", i32 122984280, i32 121138645}
!133 = !{!"branch_weights", i32 189, i32 244122736}
!134 = distinct !{!134, !80, !81}
!135 = !{!"function_entry_count", i64 1243}
!136 = !{!"branch_weights", i32 101533198, i32 91760483}
!137 = !{!"branch_weights", i32 1, i32 99449435}
!138 = !{!"branch_weights", i32 -440564620, i32 93844245}
!139 = !{!"branch_weights", i32 -540014132, i32 99449512}
!140 = !{!"branch_weights", i32 99449435, i32 -446169810}
!141 = distinct !{!141, !80, !81}
!142 = distinct !{!142, !80, !81}
!143 = !{!"function_entry_count", i64 288}
!144 = !{!"branch_weights", i32 287, i32 1}
!145 = !{!70, !71, i64 32}
!146 = !{!"branch_weights", i32 566113282, i32 94918114}
!147 = !{!"branch_weights", i32 0, i32 566113282}
!148 = !{!"branch_weights", i32 41556823, i32 524556459}
!149 = !{!"branch_weights", i32 1332, i32 41555491}
!150 = !{i64 0, i64 8, !89, i64 8, i64 8, !90, i64 16, i64 8, !90, i64 24, i64 2, !91, i64 32, i64 8, !90, i64 40, i64 8, !90, i64 48, i64 8, !89, i64 56, i64 8, !89}
!151 = !{i64 0, i64 8, !90, i64 8, i64 8, !90, i64 16, i64 2, !91, i64 24, i64 8, !90, i64 32, i64 8, !90, i64 40, i64 8, !89, i64 48, i64 8, !89}
!152 = !{i64 0, i64 8, !90, i64 8, i64 2, !91, i64 16, i64 8, !90, i64 24, i64 8, !90, i64 32, i64 8, !89, i64 40, i64 8, !89}
!153 = !{!"branch_weights", i32 287, i32 661031109}
!154 = distinct !{!154, !80, !81}
!155 = distinct !{!155, !80, !81}
!156 = !{!57, !60, i64 528}
!157 = !{!"branch_weights", i32 2, i32 31}
!158 = !{!"branch_weights", i32 2, i32 0}
!159 = !{i64 -1, i64 1}
!160 = !{!"branch_weights", i32 131, i32 517359781}
!161 = distinct !{!161, !80, !81}
!162 = !{!"branch_weights", i32 1, i32 0}
!163 = distinct !{!163, !80, !81}
!164 = !{!"branch_weights", i32 246962, i32 248038}
!165 = !{!"branch_weights", i32 495, i32 494505}
!166 = !{!"branch_weights", i32 231, i32 264}
!167 = !{!"branch_weights", i32 0, i32 495000}
!168 = !{!169, !62, i64 8}
!169 = !{!"list_elem", !62, i64 0, !62, i64 8}
!170 = !{!169, !62, i64 0}
!171 = !{!66, !67, i64 100}
!172 = !{!"branch_weights", i32 402959304, i32 -985674100}
!173 = !{!"branch_weights", i32 494999, i32 -583209795}
!174 = distinct !{!174, !80, !81}
!175 = !{!66, !60, i64 0}
!176 = !{!"branch_weights", i32 768630442, i32 -1754304542}
!177 = !{!"branch_weights", i32 121138835, i32 647491607}
!178 = !{!"branch_weights", i32 193292349, i32 454199258}
!179 = !{!"branch_weights", i32 193292319, i32 30}
!180 = !{!"branch_weights", i32 454199258, i32 0}
!181 = !{!"branch_weights", i32 29, i32 768630413}
!182 = !{!"branch_weights", i32 127, i32 63359745}
!183 = !{!"branch_weights", i32 131, i32 1979869}
!184 = distinct !{!184, !80, !81}
!185 = !{!"branch_weights", i32 1, i32 131}
!186 = !{!"branch_weights", i32 131, i32 97}
!187 = distinct !{!187, !80, !81}
!188 = !{!"branch_weights", i32 131, i32 1979737}
!189 = distinct !{!189, !80, !81}
!190 = !{!"branch_weights", i32 1, i32 32}
!191 = !{!"branch_weights", i32 30, i32 2}
!192 = !{!"branch_weights", i32 3995716, i32 2000000}
!193 = !{!"branch_weights", i32 127, i32 383725697}
!194 = distinct !{!194, !80, !81}
!195 = !{!"branch_weights", i32 86537950, i32 28605169}
!196 = !{!70, !62, i64 40}
!197 = !{!70, !62, i64 48}
!198 = !{!"branch_weights", i32 239, i32 921144713}
!199 = distinct !{!199, !80, !81}
!200 = !{!57, !60, i64 440}
!201 = !{!"branch_weights", i32 33, i32 990033}
!202 = !{!"branch_weights", i32 989792, i32 241}
!203 = !{!"branch_weights", i32 990033, i32 0}
!204 = !{!"branch_weights", i32 3960133, i32 131}
!205 = !{!"branch_weights", i32 0, i32 6012688}
!206 = !{!"branch_weights", i32 131, i32 24050621}
!207 = !{!"function_entry_count", i64 32}
!208 = !{!"branch_weights", i32 209, i32 127}
!209 = distinct !{!209, !80, !81}
!210 = !{!"branch_weights", i32 32, i32 0}
!211 = !{!"branch_weights", i32 0, i32 90508259, i32 660022}
!212 = !{!"branch_weights", i32 355166, i32 304856}
!213 = !{!"branch_weights", i32 90508259, i32 660022}
!214 = !{!"branch_weights", i32 364672997, i32 127}
!215 = distinct !{!215, !80, !81}
!216 = !{!"branch_weights", i32 0, i32 32}
!217 = !{!"branch_weights", i32 5469, i32 127}
!218 = distinct !{!218, !80, !81}
!219 = !{!"branch_weights", i32 32, i32 960032}
!220 = !{!"branch_weights", i32 959799, i32 233}
!221 = !{!"branch_weights", i32 745156, i32 214876}
!222 = !{!"branch_weights", i32 683050, i32 276982}
!223 = !{!"branch_weights", i32 90508259, i32 5850486}
!224 = !{!"branch_weights", i32 127, i32 385434853}
