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
  %9 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !34
  %10 = load ptr, ptr @curundo, align 8, !tbaa !39
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %18, %12 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  tail call void %15(ptr noundef %17) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef %13) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !34
  %19 = load ptr, ptr @curundo, align 8, !tbaa !39
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %12, !llvm.loop !47

21:                                               ; preds = %12, %7
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %23 = tail call ptr %22(i64 noundef 272, ptr noundef nonnull @.str) #7
  store ptr %23, ptr @curundo, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 7
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %1, i64 noundef 64) #7
  tail call void @BLI_addtail(ptr noundef nonnull @undobase, ptr noundef %23) #7
  %26 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 8
  store ptr %2, ptr %26, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 9
  store ptr %3, ptr %27, align 8, !tbaa !40
  %28 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 10
  store ptr %4, ptr %28, align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 11
  store ptr %5, ptr %29, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 12
  store ptr %6, ptr %30, align 8, !tbaa !52
  %31 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !39
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %21
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !53
  %35 = sext i16 %34 to i32
  br label %36

36:                                               ; preds = %33, %44
  %37 = phi ptr [ %31, %33 ], [ %46, %44 ]
  %38 = phi i32 [ 0, %33 ], [ %39, %44 ]
  %39 = add nuw nsw i32 %38, 1
  %40 = icmp eq i32 %39, %35
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load ptr, ptr @undobase, align 8, !tbaa !58
  %43 = icmp eq ptr %42, %37
  br i1 %43, label %56, label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.UndoElem, ptr %37, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !39
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %36, !llvm.loop !59

48:                                               ; preds = %41, %48
  %49 = phi ptr [ %54, %48 ], [ %42, %41 ]
  %50 = getelementptr inbounds %struct.UndoElem, ptr %49, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !40
  %52 = getelementptr inbounds %struct.UndoElem, ptr %49, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  tail call void %51(ptr noundef %53) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef %49) #7
  %54 = load ptr, ptr @undobase, align 8, !tbaa !58
  %55 = icmp eq ptr %54, %37
  br i1 %55, label %56, label %48, !llvm.loop !60

56:                                               ; preds = %44, %48, %21, %41
  %57 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !39
  %58 = tail call i64 %57() #7
  %59 = tail call ptr %2(ptr noundef %0) #7
  %60 = load ptr, ptr @curundo, align 8, !tbaa !39
  %61 = getelementptr inbounds %struct.UndoElem, ptr %60, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !51
  %63 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !61
  %65 = tail call ptr %62(ptr noundef %59, ptr noundef %64) #7
  %66 = load ptr, ptr @curundo, align 8, !tbaa !39
  %67 = getelementptr inbounds %struct.UndoElem, ptr %66, i64 0, i32 5
  store ptr %65, ptr %67, align 8, !tbaa !46
  %68 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !39
  %69 = tail call i64 %68() #7
  %70 = sub i64 %69, %58
  %71 = load ptr, ptr @curundo, align 8, !tbaa !39
  %72 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 6
  store i64 %70, ptr %72, align 8, !tbaa !64
  %73 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 3
  store ptr %8, ptr %73, align 8, !tbaa !65
  %74 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %74, ptr noundef nonnull align 8 dereferenceable(120) %8, i64 120, i1 false), !tbaa.struct !66
  %75 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %76 = load i16, ptr %75, align 8, !tbaa !70
  %77 = sext i16 %76 to i32
  %78 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 4
  store i32 %77, ptr %78, align 8, !tbaa !71
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 47), align 2, !tbaa !72
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %115, label %81

81:                                               ; preds = %56
  %82 = sext i16 %79 to i64
  %83 = shl nsw i64 %82, 20
  %84 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !34
  br label %85

85:                                               ; preds = %93, %81
  %86 = phi i64 [ 0, %81 ], [ %96, %93 ]
  %87 = phi ptr [ %84, %81 ], [ %91, %93 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %115, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.UndoElem, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !73
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.UndoElem, ptr %87, i64 0, i32 6
  %95 = load i64, ptr %94, align 8, !tbaa !64
  %96 = add i64 %95, %86
  %97 = icmp ugt i64 %96, %83
  br i1 %97, label %98, label %85, !llvm.loop !74

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.UndoElem, ptr %91, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !73
  %101 = icmp eq ptr %100, null
  %102 = select i1 %101, ptr %87, ptr %91
  br label %103

103:                                              ; preds = %89, %98
  %104 = phi ptr [ %102, %98 ], [ %87, %89 ]
  %105 = load ptr, ptr @undobase, align 8, !tbaa !58
  %106 = icmp eq ptr %105, %104
  br i1 %106, label %115, label %107

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %113, %107 ], [ %105, %103 ]
  %109 = getelementptr inbounds %struct.UndoElem, ptr %108, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !40
  %111 = getelementptr inbounds %struct.UndoElem, ptr %108, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  tail call void %110(ptr noundef %112) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef %108) #7
  %113 = load ptr, ptr @undobase, align 8, !tbaa !58
  %114 = icmp eq ptr %113, %104
  br i1 %114, label %115, label %107, !llvm.loop !75

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
  %4 = load ptr, ptr @curundo, align 8, !tbaa !39
  switch i32 %1, label %34 [
    i32 0, label %5
    i32 1, label %11
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  tail call fastcc void @undo_restore(ptr noundef %4, ptr noundef %8, ptr noundef %10) #8
  br label %53

11:                                               ; preds = %2
  %12 = icmp eq ptr %4, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !76
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 7
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %22) #8
  %24 = load ptr, ptr @curundo, align 8, !tbaa !39
  %25 = getelementptr inbounds %struct.UndoElem, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi ptr [ %26, %21 ], [ %15, %17 ]
  store ptr %28, ptr @curundo, align 8, !tbaa !39
  %29 = getelementptr inbounds %struct.UndoElem, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = tail call ptr %30(ptr noundef %0) #7
  %32 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  tail call fastcc void @undo_restore(ptr noundef %28, ptr noundef %31, ptr noundef %33) #8
  br label %53

34:                                               ; preds = %2
  %35 = icmp eq ptr %4, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %4, align 8, !tbaa !78
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = tail call ptr %41(ptr noundef %0) #7
  %43 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  tail call fastcc void @undo_restore(ptr noundef nonnull %37, ptr noundef %42, ptr noundef %44) #8
  %45 = load ptr, ptr @curundo, align 8, !tbaa !39
  %46 = load ptr, ptr %45, align 8, !tbaa !78
  store ptr %46, ptr @curundo, align 8, !tbaa !39
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !76
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.UndoElem, ptr %46, i64 0, i32 7
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %51) #8
  br label %53

53:                                               ; preds = %34, %36, %11, %13, %27, %39, %50, %5
  %54 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %55 = load i16, ptr %54, align 8, !tbaa !70
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
define internal fastcc void @undo_clean_stack(ptr noundef %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %3 = load ptr, ptr @undobase, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  br label %8

8:                                                ; preds = %5, %43
  %9 = phi ptr [ %3, %5 ], [ %13, %43 ]
  %10 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call ptr %11(ptr noundef %0) #7
  %13 = load ptr, ptr %9, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !71
  %16 = load i16, ptr %6, align 8, !tbaa !70
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
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = tail call i32 %25(ptr noundef %29, ptr noundef %12) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23, %27
  %33 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 3
  store ptr %2, ptr %33, align 8, !tbaa !65
  br label %43

34:                                               ; preds = %19, %8, %27
  %35 = load ptr, ptr @curundo, align 8, !tbaa !39
  %36 = icmp eq ptr %9, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store ptr null, ptr @curundo, align 8, !tbaa !39
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  tail call void %40(ptr noundef %42) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef nonnull %9) #7
  br label %43

43:                                               ; preds = %38, %32
  %44 = icmp eq ptr %13, null
  br i1 %44, label %45, label %8, !llvm.loop !80

45:                                               ; preds = %43, %1
  %46 = load ptr, ptr @curundo, align 8, !tbaa !39
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !34
  store ptr %49, ptr @curundo, align 8, !tbaa !39
  br label %50

50:                                               ; preds = %48, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_restore(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !81 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.UndoElem, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.UndoElem, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !46
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
  %1 = load ptr, ptr @undobase, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void %6(ptr noundef %8) #7
  %9 = load ptr, ptr %4, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !82

11:                                               ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @undobase) #7
  store ptr null, ptr @curundo, align 8, !tbaa !39
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
  %6 = load ptr, ptr %4, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, %1
  %9 = select i1 %7, i1 true, i1 %8
  %10 = add nuw nsw i32 %5, 1
  br i1 %9, label %11, label %3, !llvm.loop !83

11:                                               ; preds = %3
  store ptr %6, ptr @curundo, align 8, !tbaa !39
  tail call void @undo_editmode_step(ptr noundef %0, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_editmode_name(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %13
  %6 = phi ptr [ %11, %13 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 7
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7) #9
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %11, null
  br i1 %9, label %14, label %13

13:                                               ; preds = %5
  br i1 %12, label %16, label %5, !llvm.loop !84

14:                                               ; preds = %5
  br i1 %12, label %16, label %15

15:                                               ; preds = %14
  store ptr %11, ptr @curundo, align 8, !tbaa !39
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
  %3 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !39
  br i1 %2, label %15, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %3, null
  br i1 %5, label %19, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10, !llvm.loop !85

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %8, %6 ], [ %3, %4 ]
  %12 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %6

15:                                               ; preds = %1
  %16 = load ptr, ptr @undobase, align 8, !tbaa !58
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
  store i32 0, ptr %2, align 4, !tbaa !69
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
  store i32 1, ptr %2, align 4, !tbaa !69
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
  %2 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.UndoElem, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !46
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
!34 = !{!35, !36, i64 8}
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!36, !36, i64 0}
!40 = !{!41, !36, i64 240}
!41 = !{!"UndoElem", !36, i64 0, !36, i64 8, !42, i64 16, !36, i64 136, !44, i64 144, !36, i64 152, !45, i64 160, !37, i64 168, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264}
!42 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !36, i64 112}
!43 = !{!"short", !37, i64 0}
!44 = !{!"int", !37, i64 0}
!45 = !{!"long", !37, i64 0}
!46 = !{!41, !36, i64 152}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!41, !36, i64 232}
!50 = !{!41, !36, i64 248}
!51 = !{!41, !36, i64 256}
!52 = !{!41, !36, i64 264}
!53 = !{!54, !43, i64 8712}
!54 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !44, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !43, i64 8496, !43, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !35, i64 8536, !35, i64 8552, !35, i64 8568, !35, i64 8584, !35, i64 8600, !35, i64 8616, !35, i64 8632, !37, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !37, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !44, i64 8912, !44, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !55, i64 8956, !55, i64 8960, !44, i64 8964, !43, i64 8968, !43, i64 8970, !55, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !56, i64 8984, !37, i64 9760, !37, i64 9772, !43, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !44, i64 10896, !44, i64 10900, !55, i64 10904, !55, i64 10908, !44, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !57, i64 10928}
!55 = !{!"float", !37, i64 0}
!56 = !{!"ColorBand", !43, i64 0, !43, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!57 = !{!"WalkNavigation", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !43, i64 24, !37, i64 26}
!58 = !{!35, !36, i64 0}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = !{!62, !36, i64 296}
!62 = !{!"Object", !42, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !63, i64 312, !36, i64 360, !35, i64 368, !35, i64 384, !35, i64 400, !35, i64 416, !44, i64 432, !44, i64 436, !36, i64 440, !36, i64 448, !44, i64 456, !44, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !44, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !35, i64 1056, !35, i64 1072, !35, i64 1088, !35, i64 1104, !55, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !44, i64 1144, !44, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !35, i64 1176, !35, i64 1192, !35, i64 1208, !35, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !45, i64 1304, !45, i64 1312, !44, i64 1320, !44, i64 1324, !35, i64 1328, !35, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !35, i64 1400, !36, i64 1416}
!63 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!64 = !{!41, !45, i64 160}
!65 = !{!41, !36, i64 136}
!66 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39, i64 24, i64 8, !39, i64 32, i64 66, !67, i64 98, i64 2, !68, i64 100, i64 4, !69, i64 104, i64 4, !69, i64 108, i64 4, !69, i64 112, i64 8, !39}
!67 = !{!37, !37, i64 0}
!68 = !{!43, !43, i64 0}
!69 = !{!44, !44, i64 0}
!70 = !{!62, !43, i64 136}
!71 = !{!41, !44, i64 144}
!72 = !{!54, !43, i64 8714}
!73 = !{!41, !36, i64 8}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !48}
!76 = !{!77, !44, i64 2100}
!77 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !35, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !37, i64 2090, !43, i64 2092, !44, i64 2096, !44, i64 2100, !37, i64 2104, !44, i64 2108, !44, i64 2112, !37, i64 2116}
!78 = !{!41, !36, i64 0}
!79 = !{!"editmode_undo.c:undo_clean_stack"}
!80 = distinct !{!80, !48}
!81 = !{!"editmode_undo.c:undo_restore"}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
