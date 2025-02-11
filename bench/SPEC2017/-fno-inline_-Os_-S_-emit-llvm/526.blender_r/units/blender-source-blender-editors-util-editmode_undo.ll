; ModuleID = 'blender/source/blender/editors/util/editmode_undo.c'
source_filename = "blender/source/blender/editors/util/editmode_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.UndoElem = type { ptr, ptr, %struct.ID, ptr, i32, ptr, i64, [64 x i8], ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@undobase = internal global %struct.ListBase zeroinitializer, align 8
@curundo = internal unnamed_addr global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"undo editmode\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_get_memory_in_use = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"undo %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"redo %s\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %9 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !5
  %10 = load ptr, ptr @curundo, align 8, !tbaa !10
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %18, %12 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  tail call void %15(ptr noundef %17) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef %13) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !5
  %19 = load ptr, ptr @curundo, align 8, !tbaa !10
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %12, !llvm.loop !18

21:                                               ; preds = %12, %7
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !10
  %23 = tail call ptr %22(i64 noundef 272, ptr noundef nonnull @.str) #7
  store ptr %23, ptr @curundo, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 7
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %1, i64 noundef 64) #7
  tail call void @BLI_addtail(ptr noundef nonnull @undobase, ptr noundef %23) #7
  %26 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 8
  store ptr %2, ptr %26, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 9
  store ptr %3, ptr %27, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 10
  store ptr %4, ptr %28, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 11
  store ptr %5, ptr %29, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 12
  store ptr %6, ptr %30, align 8, !tbaa !23
  %31 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %21
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !24
  %35 = sext i16 %34 to i32
  br label %36

36:                                               ; preds = %33, %44
  %37 = phi ptr [ %31, %33 ], [ %46, %44 ]
  %38 = phi i32 [ 0, %33 ], [ %39, %44 ]
  %39 = add nuw nsw i32 %38, 1
  %40 = icmp eq i32 %39, %35
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load ptr, ptr @undobase, align 8, !tbaa !29
  %43 = icmp eq ptr %42, %37
  br i1 %43, label %56, label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.UndoElem, ptr %37, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %36, !llvm.loop !30

48:                                               ; preds = %41, %48
  %49 = phi ptr [ %54, %48 ], [ %42, %41 ]
  %50 = getelementptr inbounds %struct.UndoElem, ptr %49, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = getelementptr inbounds %struct.UndoElem, ptr %49, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !17
  tail call void %51(ptr noundef %53) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef %49) #7
  %54 = load ptr, ptr @undobase, align 8, !tbaa !29
  %55 = icmp eq ptr %54, %37
  br i1 %55, label %56, label %48, !llvm.loop !31

56:                                               ; preds = %44, %48, %21, %41
  %57 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !10
  %58 = tail call i64 %57() #7
  %59 = tail call ptr %2(ptr noundef %0) #7
  %60 = load ptr, ptr @curundo, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.UndoElem, ptr %60, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !32
  %65 = tail call ptr %62(ptr noundef %59, ptr noundef %64) #7
  %66 = load ptr, ptr @curundo, align 8, !tbaa !10
  %67 = getelementptr inbounds %struct.UndoElem, ptr %66, i64 0, i32 5
  store ptr %65, ptr %67, align 8, !tbaa !17
  %68 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !10
  %69 = tail call i64 %68() #7
  %70 = sub i64 %69, %58
  %71 = load ptr, ptr @curundo, align 8, !tbaa !10
  %72 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 6
  store i64 %70, ptr %72, align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 3
  store ptr %8, ptr %73, align 8, !tbaa !36
  %74 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %74, ptr noundef nonnull align 8 dereferenceable(120) %8, i64 120, i1 false), !tbaa.struct !37
  %75 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %76 = load i16, ptr %75, align 8, !tbaa !41
  %77 = sext i16 %76 to i32
  %78 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 4
  store i32 %77, ptr %78, align 8, !tbaa !42
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 47), align 2, !tbaa !43
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %115, label %81

81:                                               ; preds = %56
  %82 = sext i16 %79 to i64
  %83 = shl nsw i64 %82, 20
  %84 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !5
  br label %85

85:                                               ; preds = %93, %81
  %86 = phi i64 [ 0, %81 ], [ %96, %93 ]
  %87 = phi ptr [ %84, %81 ], [ %91, %93 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %115, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.UndoElem, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.UndoElem, ptr %87, i64 0, i32 6
  %95 = load i64, ptr %94, align 8, !tbaa !35
  %96 = add i64 %95, %86
  %97 = icmp ugt i64 %96, %83
  br i1 %97, label %98, label %85, !llvm.loop !45

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.UndoElem, ptr %91, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = icmp eq ptr %100, null
  %102 = select i1 %101, ptr %87, ptr %91
  br label %103

103:                                              ; preds = %89, %98
  %104 = phi ptr [ %102, %98 ], [ %87, %89 ]
  %105 = load ptr, ptr @undobase, align 8, !tbaa !29
  %106 = icmp eq ptr %105, %104
  br i1 %106, label %115, label %107

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %113, %107 ], [ %105, %103 ]
  %109 = getelementptr inbounds %struct.UndoElem, ptr %108, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !11
  %111 = getelementptr inbounds %struct.UndoElem, ptr %108, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !17
  tail call void %110(ptr noundef %112) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef %108) #7
  %113 = load ptr, ptr @undobase, align 8, !tbaa !29
  %114 = icmp eq ptr %113, %104
  br i1 %114, label %115, label %107, !llvm.loop !46

115:                                              ; preds = %85, %107, %103, %56
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_editmode_step(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  tail call fastcc void @undo_clean_stack(ptr noundef %0) #8
  %4 = load ptr, ptr @curundo, align 8, !tbaa !10
  switch i32 %1, label %34 [
    i32 0, label %5
    i32 1, label %11
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  tail call fastcc void @undo_restore(ptr noundef %4, ptr noundef %8, ptr noundef %10) #8
  br label %53

11:                                               ; preds = %2
  %12 = icmp eq ptr %4, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !47
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 7
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %22) #8
  %24 = load ptr, ptr @curundo, align 8, !tbaa !10
  %25 = getelementptr inbounds %struct.UndoElem, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi ptr [ %26, %21 ], [ %15, %17 ]
  store ptr %28, ptr @curundo, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.UndoElem, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !20
  %31 = tail call ptr %30(ptr noundef %0) #7
  %32 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !32
  tail call fastcc void @undo_restore(ptr noundef %28, ptr noundef %31, ptr noundef %33) #8
  br label %53

34:                                               ; preds = %2
  %35 = icmp eq ptr %4, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %4, align 8, !tbaa !49
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !20
  %42 = tail call ptr %41(ptr noundef %0) #7
  %43 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !32
  tail call fastcc void @undo_restore(ptr noundef nonnull %37, ptr noundef %42, ptr noundef %44) #8
  %45 = load ptr, ptr @curundo, align 8, !tbaa !10
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  store ptr %46, ptr @curundo, align 8, !tbaa !10
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !47
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.UndoElem, ptr %46, i64 0, i32 7
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %51) #8
  br label %53

53:                                               ; preds = %34, %36, %11, %13, %27, %39, %50, %5
  %54 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %55 = load i16, ptr %54, align 8, !tbaa !41
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @EDBM_selectmode_to_scene(ptr noundef %0) #7
  br label %58

58:                                               ; preds = %57, %53
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_clean_stack(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %3 = load ptr, ptr @undobase, align 8, !tbaa !29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  br label %8

8:                                                ; preds = %5, %43
  %9 = phi ptr [ %3, %5 ], [ %13, %43 ]
  %10 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = tail call ptr %11(ptr noundef %0) #7
  %13 = load ptr, ptr %9, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = load i16, ptr %6, align 8, !tbaa !41
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 2, i32 4
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %7) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = tail call i32 %25(ptr noundef %29, ptr noundef %12) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23, %27
  %33 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 3
  store ptr %2, ptr %33, align 8, !tbaa !36
  br label %43

34:                                               ; preds = %19, %8, %27
  %35 = load ptr, ptr @curundo, align 8, !tbaa !10
  %36 = icmp eq ptr %9, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store ptr null, ptr @curundo, align 8, !tbaa !10
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !17
  tail call void %40(ptr noundef %42) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef nonnull %9) #7
  br label %43

43:                                               ; preds = %38, %32
  %44 = icmp eq ptr %13, null
  br i1 %44, label %45, label %8, !llvm.loop !50

45:                                               ; preds = %43, %1
  %46 = load ptr, ptr @curundo, align 8, !tbaa !10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !5
  store ptr %49, ptr @curundo, align 8, !tbaa !10
  br label %50

50:                                               ; preds = %48, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_restore(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.UndoElem, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.UndoElem, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  tail call void %7(ptr noundef %9, ptr noundef %1, ptr noundef %2) #7
  br label %10

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @EDBM_selectmode_to_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_editmode_clear() local_unnamed_addr #0 {
  %1 = load ptr, ptr @undobase, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  tail call void %6(ptr noundef %8) #7
  %9 = load ptr, ptr %4, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !51

11:                                               ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @undobase) #7
  store ptr null, ptr @curundo, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_editmode_number(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ @undobase, %2 ], [ %6, %3 ]
  %5 = phi i32 [ 1, %2 ], [ %10, %3 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, %1
  %9 = select i1 %7, i1 true, i1 %8
  %10 = add nuw nsw i32 %5, 1
  br i1 %9, label %11, label %3, !llvm.loop !52

11:                                               ; preds = %3
  store ptr %6, ptr @curundo, align 8, !tbaa !10
  tail call void @undo_editmode_step(ptr noundef %0, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_editmode_name(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %13
  %6 = phi ptr [ %11, %13 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 7
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7) #9
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %9, label %14, label %13

13:                                               ; preds = %5
  br i1 %12, label %16, label %5, !llvm.loop !53

14:                                               ; preds = %5
  br i1 %12, label %16, label %15

15:                                               ; preds = %14
  store ptr %11, ptr @curundo, align 8, !tbaa !10
  tail call void @undo_editmode_step(ptr noundef %0, i32 noundef 0) #8
  br label %16

16:                                               ; preds = %13, %2, %15, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @undo_editmode_valid(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !10
  br i1 %2, label %15, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %3, null
  br i1 %5, label %19, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10, !llvm.loop !54

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %8, %6 ], [ %3, %4 ]
  %12 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %6

15:                                               ; preds = %1
  %16 = load ptr, ptr @undobase, align 8, !tbaa !29
  %17 = icmp ne ptr %3, %16
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %10, %6, %4, %15
  %20 = phi i32 [ %18, %15 ], [ 0, %4 ], [ 1, %10 ], [ 0, %6 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @undo_editmode_get_name(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  tail call fastcc void @undo_clean_stack(ptr noundef %0) #8
  %4 = icmp ne ptr %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %6

6:                                                ; preds = %5, %3
  %7 = tail call ptr @BLI_findlink(ptr noundef nonnull @undobase, i32 noundef %1) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @curundo, align 8
  %11 = icmp eq ptr %7, %10
  %12 = select i1 %4, i1 %11, i1 false
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, ptr %2, align 4, !tbaa !40
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.UndoElem, ptr %7, i64 0, i32 7
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi ptr [ %15, %14 ], [ null, %6 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @undo_editmode_get_prev(ptr noundef readnone %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.UndoElem, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  br label %15

15:                                               ; preds = %1, %4, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %16
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"ListBase", !7, i64 0, !7, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !7, i64 240}
!12 = !{!"UndoElem", !7, i64 0, !7, i64 8, !13, i64 16, !7, i64 136, !15, i64 144, !7, i64 152, !16, i64 160, !8, i64 168, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264}
!13 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !14, i64 98, !15, i64 100, !15, i64 104, !15, i64 108, !7, i64 112}
!14 = !{!"short", !8, i64 0}
!15 = !{!"int", !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!12, !7, i64 152}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!12, !7, i64 232}
!21 = !{!12, !7, i64 248}
!22 = !{!12, !7, i64 256}
!23 = !{!12, !7, i64 264}
!24 = !{!25, !14, i64 8712}
!25 = !{!"UserDef", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !15, i64 8468, !14, i64 8472, !14, i64 8474, !14, i64 8476, !14, i64 8478, !14, i64 8480, !14, i64 8482, !15, i64 8484, !15, i64 8488, !15, i64 8492, !14, i64 8496, !14, i64 8498, !15, i64 8500, !15, i64 8504, !15, i64 8508, !15, i64 8512, !15, i64 8516, !15, i64 8520, !15, i64 8524, !14, i64 8528, !14, i64 8530, !14, i64 8532, !14, i64 8534, !6, i64 8536, !6, i64 8552, !6, i64 8568, !6, i64 8584, !6, i64 8600, !6, i64 8616, !6, i64 8632, !8, i64 8648, !14, i64 8712, !14, i64 8714, !14, i64 8716, !14, i64 8718, !14, i64 8720, !14, i64 8722, !14, i64 8724, !14, i64 8726, !8, i64 8728, !14, i64 8896, !14, i64 8898, !14, i64 8900, !14, i64 8902, !14, i64 8904, !14, i64 8906, !14, i64 8908, !14, i64 8910, !15, i64 8912, !15, i64 8916, !14, i64 8920, !14, i64 8922, !14, i64 8924, !14, i64 8926, !14, i64 8928, !14, i64 8930, !14, i64 8932, !14, i64 8934, !14, i64 8936, !14, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !14, i64 8944, !14, i64 8946, !14, i64 8948, !14, i64 8950, !14, i64 8952, !14, i64 8954, !26, i64 8956, !26, i64 8960, !15, i64 8964, !14, i64 8968, !14, i64 8970, !26, i64 8972, !14, i64 8976, !14, i64 8978, !14, i64 8980, !14, i64 8982, !27, i64 8984, !8, i64 9760, !8, i64 9772, !14, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !15, i64 10896, !15, i64 10900, !26, i64 10904, !26, i64 10908, !15, i64 10912, !14, i64 10916, !14, i64 10918, !14, i64 10920, !14, i64 10922, !14, i64 10924, !14, i64 10926, !28, i64 10928}
!26 = !{!"float", !8, i64 0}
!27 = !{!"ColorBand", !14, i64 0, !14, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!28 = !{!"WalkNavigation", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !14, i64 24, !8, i64 26}
!29 = !{!6, !7, i64 0}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = !{!33, !7, i64 296}
!33 = !{!"Object", !13, i64 0, !7, i64 120, !7, i64 128, !14, i64 136, !14, i64 138, !15, i64 140, !15, i64 144, !15, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !34, i64 312, !7, i64 360, !6, i64 368, !6, i64 384, !6, i64 400, !6, i64 416, !15, i64 432, !15, i64 436, !7, i64 440, !7, i64 448, !15, i64 456, !15, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !26, i64 616, !26, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !15, i64 944, !14, i64 948, !14, i64 950, !14, i64 952, !14, i64 954, !14, i64 956, !14, i64 958, !14, i64 960, !14, i64 962, !14, i64 964, !8, i64 966, !8, i64 967, !15, i64 968, !15, i64 972, !15, i64 976, !15, i64 980, !15, i64 984, !26, i64 988, !26, i64 992, !26, i64 996, !26, i64 1000, !26, i64 1004, !26, i64 1008, !26, i64 1012, !26, i64 1016, !26, i64 1020, !26, i64 1024, !26, i64 1028, !26, i64 1032, !14, i64 1036, !14, i64 1038, !14, i64 1040, !8, i64 1042, !8, i64 1043, !14, i64 1044, !8, i64 1046, !8, i64 1047, !26, i64 1048, !26, i64 1052, !6, i64 1056, !6, i64 1072, !6, i64 1088, !6, i64 1104, !26, i64 1120, !14, i64 1124, !14, i64 1126, !8, i64 1128, !15, i64 1144, !15, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !14, i64 1162, !8, i64 1164, !6, i64 1176, !6, i64 1192, !6, i64 1208, !6, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !14, i64 1266, !26, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !16, i64 1304, !16, i64 1312, !15, i64 1320, !15, i64 1324, !6, i64 1328, !6, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !6, i64 1400, !7, i64 1416}
!34 = !{!"bAnimVizSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !14, i64 16, !14, i64 18, !14, i64 20, !14, i64 22, !14, i64 24, !14, i64 26, !14, i64 28, !14, i64 30, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!35 = !{!12, !16, i64 160}
!36 = !{!12, !7, i64 136}
!37 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 66, !38, i64 98, i64 2, !39, i64 100, i64 4, !40, i64 104, i64 4, !40, i64 108, i64 4, !40, i64 112, i64 8, !10}
!38 = !{!8, !8, i64 0}
!39 = !{!14, !14, i64 0}
!40 = !{!15, !15, i64 0}
!41 = !{!33, !14, i64 136}
!42 = !{!12, !15, i64 144}
!43 = !{!25, !14, i64 8714}
!44 = !{!12, !7, i64 8}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = !{!48, !15, i64 2100}
!48 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !6, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !14, i64 2084, !14, i64 2086, !14, i64 2088, !8, i64 2090, !14, i64 2092, !15, i64 2096, !15, i64 2100, !8, i64 2104, !15, i64 2108, !15, i64 2112, !8, i64 2116}
!49 = !{!12, !7, i64 0}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
