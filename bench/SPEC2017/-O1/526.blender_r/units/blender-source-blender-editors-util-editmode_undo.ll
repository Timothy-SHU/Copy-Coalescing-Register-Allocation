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

; Function Attrs: nounwind uwtable
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
  store ptr %2, ptr %26, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 9
  store ptr %3, ptr %27, align 8, !tbaa !40
  %28 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 10
  store ptr %4, ptr %28, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 11
  store ptr %5, ptr %29, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.UndoElem, ptr %23, i64 0, i32 12
  store ptr %6, ptr %30, align 8, !tbaa !53
  %31 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !39
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %21
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !54
  %35 = sext i16 %34 to i32
  br label %36

36:                                               ; preds = %33, %44
  %37 = phi ptr [ %31, %33 ], [ %46, %44 ]
  %38 = phi i32 [ 0, %33 ], [ %39, %44 ]
  %39 = add nuw nsw i32 %38, 1
  %40 = icmp eq i32 %39, %35
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load ptr, ptr @undobase, align 8, !tbaa !59
  %43 = icmp eq ptr %42, %37
  br i1 %43, label %56, label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.UndoElem, ptr %37, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !39
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %36, !llvm.loop !60

48:                                               ; preds = %41, %48
  %49 = phi ptr [ %54, %48 ], [ %42, %41 ]
  %50 = getelementptr inbounds %struct.UndoElem, ptr %49, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !40
  %52 = getelementptr inbounds %struct.UndoElem, ptr %49, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  tail call void %51(ptr noundef %53) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef %49) #7
  %54 = load ptr, ptr @undobase, align 8, !tbaa !59
  %55 = icmp eq ptr %54, %37
  br i1 %55, label %56, label %48, !llvm.loop !61

56:                                               ; preds = %44, %48, %21, %41
  %57 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !39
  %58 = tail call i64 %57() #7
  %59 = tail call ptr %2(ptr noundef %0) #7
  %60 = load ptr, ptr @curundo, align 8, !tbaa !39
  %61 = getelementptr inbounds %struct.UndoElem, ptr %60, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  %63 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !62
  %65 = tail call ptr %62(ptr noundef %59, ptr noundef %64) #7
  %66 = load ptr, ptr @curundo, align 8, !tbaa !39
  %67 = getelementptr inbounds %struct.UndoElem, ptr %66, i64 0, i32 5
  store ptr %65, ptr %67, align 8, !tbaa !46
  %68 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !39
  %69 = tail call i64 %68() #7
  %70 = sub i64 %69, %58
  %71 = load ptr, ptr @curundo, align 8, !tbaa !39
  %72 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 6
  store i64 %70, ptr %72, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 3
  store ptr %8, ptr %73, align 8, !tbaa !66
  %74 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %74, ptr noundef nonnull align 8 dereferenceable(120) %8, i64 120, i1 false), !tbaa.struct !67
  %75 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %76 = load i16, ptr %75, align 8, !tbaa !71
  %77 = sext i16 %76 to i32
  %78 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 4
  store i32 %77, ptr %78, align 8, !tbaa !72
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 47), align 2, !tbaa !73
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %116, label %81

81:                                               ; preds = %56
  %82 = sext i16 %79 to i64
  %83 = shl nsw i64 %82, 20
  %84 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !34
  br label %85

85:                                               ; preds = %93, %81
  %86 = phi i64 [ 0, %81 ], [ %96, %93 ]
  %87 = phi ptr [ %84, %81 ], [ %91, %93 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %116, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.UndoElem, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !74
  %92 = icmp eq ptr %91, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.UndoElem, ptr %87, i64 0, i32 6
  %95 = load i64, ptr %94, align 8, !tbaa !65
  %96 = add i64 %95, %86
  %97 = icmp ugt i64 %96, %83
  br i1 %97, label %98, label %85, !llvm.loop !75

98:                                               ; preds = %93
  br i1 %92, label %104, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.UndoElem, ptr %91, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !74
  %102 = icmp eq ptr %101, null
  %103 = select i1 %102, ptr %87, ptr %91
  br label %104

104:                                              ; preds = %89, %99, %98
  %105 = phi ptr [ %87, %98 ], [ %103, %99 ], [ %87, %89 ]
  %106 = load ptr, ptr @undobase, align 8, !tbaa !59
  %107 = icmp eq ptr %106, %105
  br i1 %107, label %116, label %108

108:                                              ; preds = %104, %108
  %109 = phi ptr [ %114, %108 ], [ %106, %104 ]
  %110 = getelementptr inbounds %struct.UndoElem, ptr %109, i64 0, i32 9
  %111 = load ptr, ptr %110, align 8, !tbaa !40
  %112 = getelementptr inbounds %struct.UndoElem, ptr %109, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  tail call void %111(ptr noundef %113) #7
  tail call void @BLI_freelinkN(ptr noundef nonnull @undobase, ptr noundef %109) #7
  %114 = load ptr, ptr @undobase, align 8, !tbaa !59
  %115 = icmp eq ptr %114, %105
  br i1 %115, label %116, label %108, !llvm.loop !76

116:                                              ; preds = %85, %108, %104, %56
  ret void
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @undo_editmode_step(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  tail call fastcc void @undo_clean_stack(ptr noundef %0)
  %4 = load ptr, ptr @curundo, align 8, !tbaa !39
  switch i32 %1, label %45 [
    i32 0, label %5
    i32 1, label %17
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = icmp eq ptr %4, null
  br i1 %9, label %68, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  tail call void %14(ptr noundef %16, ptr noundef %8, ptr noundef %12) #7
  br label %68

17:                                               ; preds = %2
  %18 = icmp eq ptr %4, null
  br i1 %18, label %68, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = icmp eq ptr %21, null
  br i1 %22, label %68, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !77
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 7
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr @curundo, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.UndoElem, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  store ptr %33, ptr @curundo, align 8, !tbaa !39
  %34 = getelementptr inbounds %struct.UndoElem, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = tail call ptr %35(ptr noundef %0) #7
  %37 = icmp eq ptr %33, null
  br i1 %37, label %68, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.UndoElem, ptr %33, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !51
  %43 = getelementptr inbounds %struct.UndoElem, ptr %33, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  tail call void %42(ptr noundef %44, ptr noundef %36, ptr noundef %40) #7
  br label %68

45:                                               ; preds = %2
  %46 = icmp eq ptr %4, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %4, align 8, !tbaa !79
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = tail call ptr %52(ptr noundef %0) #7
  %54 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  %56 = getelementptr inbounds %struct.UndoElem, ptr %48, i64 0, i32 10
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct.UndoElem, ptr %48, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  tail call void %57(ptr noundef %59, ptr noundef %53, ptr noundef %55) #7
  %60 = load ptr, ptr @curundo, align 8, !tbaa !39
  %61 = load ptr, ptr %60, align 8, !tbaa !79
  store ptr %61, ptr @curundo, align 8, !tbaa !39
  %62 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !77
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.UndoElem, ptr %61, i64 0, i32 7
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %66)
  br label %68

68:                                               ; preds = %45, %47, %38, %30, %17, %19, %10, %5, %50, %65
  %69 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %70 = load i16, ptr %69, align 8, !tbaa !71
  %71 = icmp eq i16 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call void @EDBM_selectmode_to_scene(ptr noundef %0) #7
  br label %73

73:                                               ; preds = %72, %68
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @undo_clean_stack(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %3 = load ptr, ptr @undobase, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  br label %8

8:                                                ; preds = %5, %43
  %9 = phi ptr [ %3, %5 ], [ %13, %43 ]
  %10 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr %11(ptr noundef %0) #7
  %13 = load ptr, ptr %9, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !72
  %16 = load i16, ptr %6, align 8, !tbaa !71
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 2, i32 4
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %7) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !53
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
  store ptr %2, ptr %33, align 8, !tbaa !66
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

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @EDBM_selectmode_to_scene(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  br i1 %10, label %11, label %3, !llvm.loop !81

11:                                               ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @undobase) #7
  store ptr null, ptr @curundo, align 8, !tbaa !39
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  br i1 %9, label %11, label %3, !llvm.loop !82

11:                                               ; preds = %3
  store ptr %6, ptr @curundo, align 8, !tbaa !39
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  tail call fastcc void @undo_clean_stack(ptr noundef %0)
  %13 = load ptr, ptr @curundo, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = tail call ptr %15(ptr noundef %0) #7
  %17 = icmp eq ptr %13, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  tail call void %22(ptr noundef %24, ptr noundef %16, ptr noundef %20) #7
  br label %25

25:                                               ; preds = %18, %11
  %26 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !71
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @EDBM_selectmode_to_scene(ptr noundef %0) #7
  br label %30

30:                                               ; preds = %25, %29
  tail call void @DAG_id_tag_update(ptr noundef %12, i16 noundef signext 2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @undo_editmode_name(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2, %13
  %6 = phi ptr [ %11, %13 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 7
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7) #8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %11, null
  br i1 %9, label %14, label %13

13:                                               ; preds = %5
  br i1 %12, label %35, label %5, !llvm.loop !83

14:                                               ; preds = %5
  br i1 %12, label %35, label %15

15:                                               ; preds = %14
  store ptr %11, ptr @curundo, align 8, !tbaa !39
  %16 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  tail call fastcc void @undo_clean_stack(ptr noundef %0)
  %17 = load ptr, ptr @curundo, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.UndoElem, ptr %17, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = tail call ptr %19(ptr noundef %0) #7
  %21 = icmp eq ptr %17, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.UndoElem, ptr %17, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct.UndoElem, ptr %17, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  tail call void %26(ptr noundef %28, ptr noundef %20, ptr noundef %24) #7
  br label %29

29:                                               ; preds = %22, %15
  %30 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !71
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @EDBM_selectmode_to_scene(ptr noundef %0) #7
  br label %34

34:                                               ; preds = %29, %33
  tail call void @DAG_id_tag_update(ptr noundef %16, i16 noundef signext 2) #7
  br label %35

35:                                               ; preds = %13, %2, %34, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @undo_editmode_valid(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !39
  br i1 %2, label %15, label %4

4:                                                ; preds = %1
  %5 = icmp ne ptr %3, null
  br i1 %5, label %10, label %18

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %18, !llvm.loop !84

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %8, %6 ], [ %3, %4 ]
  %12 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %6

15:                                               ; preds = %1
  %16 = load ptr, ptr @undobase, align 8, !tbaa !59
  %17 = icmp ne ptr %3, %16
  br label %18

18:                                               ; preds = %10, %6, %4, %15
  %19 = phi i1 [ %17, %15 ], [ %5, %4 ], [ %9, %6 ], [ true, %10 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @undo_editmode_get_name(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  tail call fastcc void @undo_clean_stack(ptr noundef %0)
  %4 = icmp ne ptr %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !70
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
  store i32 1, ptr %2, align 4, !tbaa !70
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.UndoElem, ptr %7, i64 0, i32 7
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi ptr [ %15, %14 ], [ null, %6 ]
  ret ptr %17
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @undo_editmode_get_prev(ptr noundef readnone %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.UndoElem, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !66
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!41, !36, i64 232}
!51 = !{!41, !36, i64 248}
!52 = !{!41, !36, i64 256}
!53 = !{!41, !36, i64 264}
!54 = !{!55, !43, i64 8712}
!55 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !44, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !43, i64 8496, !43, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !35, i64 8536, !35, i64 8552, !35, i64 8568, !35, i64 8584, !35, i64 8600, !35, i64 8616, !35, i64 8632, !37, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !37, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !44, i64 8912, !44, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !56, i64 8956, !56, i64 8960, !44, i64 8964, !43, i64 8968, !43, i64 8970, !56, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !57, i64 8984, !37, i64 9760, !37, i64 9772, !43, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !44, i64 10896, !44, i64 10900, !56, i64 10904, !56, i64 10908, !44, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !58, i64 10928}
!56 = !{!"float", !37, i64 0}
!57 = !{!"ColorBand", !43, i64 0, !43, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!58 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !43, i64 24, !37, i64 26}
!59 = !{!35, !36, i64 0}
!60 = distinct !{!60, !48, !49}
!61 = distinct !{!61, !48, !49}
!62 = !{!63, !36, i64 296}
!63 = !{!"Object", !42, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !64, i64 312, !36, i64 360, !35, i64 368, !35, i64 384, !35, i64 400, !35, i64 416, !44, i64 432, !44, i64 436, !36, i64 440, !36, i64 448, !44, i64 456, !44, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !56, i64 616, !56, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !44, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !56, i64 988, !56, i64 992, !56, i64 996, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !56, i64 1028, !56, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !56, i64 1048, !56, i64 1052, !35, i64 1056, !35, i64 1072, !35, i64 1088, !35, i64 1104, !56, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !44, i64 1144, !44, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !35, i64 1176, !35, i64 1192, !35, i64 1208, !35, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !56, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !45, i64 1304, !45, i64 1312, !44, i64 1320, !44, i64 1324, !35, i64 1328, !35, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !35, i64 1400, !36, i64 1416}
!64 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!65 = !{!41, !45, i64 160}
!66 = !{!41, !36, i64 136}
!67 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39, i64 24, i64 8, !39, i64 32, i64 66, !68, i64 98, i64 2, !69, i64 100, i64 4, !70, i64 104, i64 4, !70, i64 108, i64 4, !70, i64 112, i64 8, !39}
!68 = !{!37, !37, i64 0}
!69 = !{!43, !43, i64 0}
!70 = !{!44, !44, i64 0}
!71 = !{!63, !43, i64 136}
!72 = !{!41, !44, i64 144}
!73 = !{!55, !43, i64 8714}
!74 = !{!41, !36, i64 8}
!75 = distinct !{!75, !48, !49}
!76 = distinct !{!76, !48, !49}
!77 = !{!78, !44, i64 2100}
!78 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !35, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !37, i64 2090, !43, i64 2092, !44, i64 2096, !44, i64 2100, !37, i64 2104, !44, i64 2108, !44, i64 2112, !37, i64 2116}
!79 = !{!41, !36, i64 0}
!80 = distinct !{!80, !48, !49}
!81 = distinct !{!81, !48, !49}
!82 = distinct !{!82, !48, !49}
!83 = distinct !{!83, !48, !49}
!84 = distinct !{!84, !48, !49}
