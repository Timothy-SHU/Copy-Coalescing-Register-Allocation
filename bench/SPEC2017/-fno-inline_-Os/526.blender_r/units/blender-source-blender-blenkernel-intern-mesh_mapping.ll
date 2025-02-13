; ModuleID = 'blender/source/blender/blenkernel/intern/mesh_mapping.c'
source_filename = "blender/source/blender/blenkernel/intern/mesh_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.UvVertMap = type { ptr, ptr }
%struct.MLoop = type { i32, i32 }
%struct.UvMapVert = type { ptr, i32, i8, i8, i8 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MeshElemMap = type { ptr, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"UvVertMap\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"UvMapVert*\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"UvMapVert\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"vert poly map\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"vert poly map mem\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"vert-edge map\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"vert-edge map mem\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"edge-poly map\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"edge-poly map mem\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"poly-tessface map\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"poly-tessface map mem\00", align 1
@__func__.BKE_mesh_calc_smoothgroups = private unnamed_addr constant [27 x i8] c"BKE_mesh_calc_smoothgroups\00", align 1
@str = private unnamed_addr constant [117 x i8] c"Warning, could not find an available id for current smooth group, faces will me marked as out of any smooth group...\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_uv_vert_map_create(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %169, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %5, 0
  br label %11

11:                                               ; preds = %9, %24
  %12 = phi ptr [ %0, %9 ], [ %27, %24 ]
  %13 = phi i32 [ 0, %9 ], [ %26, %24 ]
  %14 = phi i32 [ 0, %9 ], [ %25, %24 ]
  br i1 %10, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.MPoly, ptr %12, i64 0, i32 3
  %17 = load i8, ptr %16, align 2, !tbaa !34
  %18 = and i8 %17, 18
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.MPoly, ptr %12, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !40
  %23 = add nsw i32 %22, %14
  br label %24

24:                                               ; preds = %15, %20
  %25 = phi i32 [ %14, %15 ], [ %23, %20 ]
  %26 = add nuw i32 %13, 1
  %27 = getelementptr inbounds %struct.MPoly, ptr %12, i64 1
  %28 = icmp eq i32 %26, %3
  br i1 %28, label %29, label %11, !llvm.loop !41

29:                                               ; preds = %24
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %169, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %33 = tail call ptr %32(i64 noundef 16, ptr noundef nonnull @.str) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %169, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %37 = zext i32 %4 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = tail call ptr %36(i64 noundef %38, ptr noundef nonnull @.str.1) #6
  store ptr %39, ptr %33, align 8, !tbaa !45
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %41 = sext i32 %25 to i64
  %42 = shl nsw i64 %41, 4
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.2) #6
  %44 = getelementptr inbounds %struct.UvVertMap, ptr %33, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !47
  %45 = load ptr, ptr %33, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  %47 = icmp eq ptr %43, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = icmp eq i32 %5, 0
  br label %56

51:                                               ; preds = %35
  tail call void @BKE_mesh_uv_vert_map_free(ptr noundef nonnull %33) #7
  br label %169

52:                                               ; preds = %90
  %53 = icmp eq i32 %4, 0
  br i1 %53, label %169, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds float, ptr %6, i64 1
  br label %95

56:                                               ; preds = %49, %90
  %57 = phi ptr [ %43, %49 ], [ %91, %90 ]
  %58 = phi ptr [ %0, %49 ], [ %93, %90 ]
  %59 = phi i32 [ 0, %49 ], [ %92, %90 ]
  br i1 %50, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.MPoly, ptr %58, i64 0, i32 3
  %62 = load i8, ptr %61, align 2, !tbaa !34
  %63 = and i8 %62, 18
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %90

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.MPoly, ptr %58, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !40
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i32, ptr %58, align 4, !tbaa !48
  %71 = sext i32 %70 to i64
  %72 = zext nneg i32 %67 to i64
  %73 = getelementptr %struct.MLoop, ptr %1, i64 %71
  br label %74

74:                                               ; preds = %69, %74
  %75 = phi i64 [ 0, %69 ], [ %88, %74 ]
  %76 = phi ptr [ %57, %69 ], [ %87, %74 ]
  %77 = trunc i64 %75 to i8
  %78 = getelementptr inbounds %struct.UvMapVert, ptr %76, i64 0, i32 2
  store i8 %77, ptr %78, align 4, !tbaa !49
  %79 = getelementptr inbounds %struct.UvMapVert, ptr %76, i64 0, i32 1
  store i32 %59, ptr %79, align 8, !tbaa !51
  %80 = getelementptr inbounds %struct.UvMapVert, ptr %76, i64 0, i32 3
  store i8 0, ptr %80, align 1, !tbaa !52
  %81 = load ptr, ptr %33, align 8, !tbaa !45
  %82 = getelementptr %struct.MLoop, ptr %73, i64 %75
  %83 = load i32, ptr %82, align 4, !tbaa !53
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %81, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !43
  store ptr %86, ptr %76, align 8, !tbaa !55
  store ptr %76, ptr %85, align 8, !tbaa !43
  %87 = getelementptr inbounds %struct.UvMapVert, ptr %76, i64 1
  %88 = add nuw nsw i64 %75, 1
  %89 = icmp eq i64 %88, %72
  br i1 %89, label %90, label %74, !llvm.loop !56

90:                                               ; preds = %74, %65, %60
  %91 = phi ptr [ %57, %60 ], [ %57, %65 ], [ %87, %74 ]
  %92 = add nuw i32 %59, 1
  %93 = getelementptr inbounds %struct.MPoly, ptr %58, i64 1
  %94 = icmp eq i32 %92, %3
  br i1 %94, label %52, label %56, !llvm.loop !57

95:                                               ; preds = %54, %165
  %96 = phi i64 [ 0, %54 ], [ %167, %165 ]
  %97 = load ptr, ptr %33, align 8, !tbaa !45
  %98 = getelementptr inbounds ptr, ptr %97, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !43
  %100 = icmp eq ptr %99, null
  br i1 %100, label %165, label %101

101:                                              ; preds = %95, %162
  %102 = phi ptr [ %159, %162 ], [ %99, %95 ]
  %103 = phi ptr [ %158, %162 ], [ null, %95 ]
  %104 = load ptr, ptr %102, align 8, !tbaa !55
  store ptr %103, ptr %102, align 8, !tbaa !55
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.UvMapVert, ptr %102, i64 0, i32 3
  store i8 1, ptr %107, align 1, !tbaa !52
  br label %165

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.UvMapVert, ptr %102, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !51
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.MPoly, ptr %0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !48
  %114 = getelementptr inbounds %struct.UvMapVert, ptr %102, i64 0, i32 2
  %115 = load i8, ptr %114, align 4, !tbaa !49
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.MLoopUV, ptr %2, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !58
  %121 = load float, ptr %6, align 4, !tbaa !58
  %122 = getelementptr inbounds float, ptr %119, i64 1
  br label %123

123:                                              ; preds = %108, %157
  %124 = phi ptr [ null, %108 ], [ %160, %157 ]
  %125 = phi ptr [ %104, %108 ], [ %128, %157 ]
  %126 = phi ptr [ %104, %108 ], [ %159, %157 ]
  %127 = phi ptr [ %102, %108 ], [ %158, %157 ]
  %128 = load ptr, ptr %125, align 8, !tbaa !55
  %129 = getelementptr inbounds %struct.UvMapVert, ptr %125, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !51
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.MPoly, ptr %0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !48
  %134 = getelementptr inbounds %struct.UvMapVert, ptr %125, i64 0, i32 2
  %135 = load i8, ptr %134, align 4, !tbaa !49
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.MLoopUV, ptr %2, i64 %138
  %140 = load float, ptr %139, align 4, !tbaa !58
  %141 = fsub float %120, %140
  %142 = tail call float @llvm.fabs.f32(float %141)
  %143 = fcmp olt float %142, %121
  br i1 %143, label %144, label %157

144:                                              ; preds = %123
  %145 = load float, ptr %122, align 4, !tbaa !58
  %146 = getelementptr inbounds float, ptr %139, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !58
  %148 = fsub float %145, %147
  %149 = tail call float @llvm.fabs.f32(float %148)
  %150 = load float, ptr %55, align 4, !tbaa !58
  %151 = fcmp olt float %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = icmp eq ptr %124, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %152
  store ptr %128, ptr %124, align 8, !tbaa !55
  br label %155

155:                                              ; preds = %152, %154
  %156 = phi ptr [ %126, %154 ], [ %128, %152 ]
  store ptr %127, ptr %125, align 8, !tbaa !55
  br label %157

157:                                              ; preds = %123, %144, %155
  %158 = phi ptr [ %125, %155 ], [ %127, %144 ], [ %127, %123 ]
  %159 = phi ptr [ %156, %155 ], [ %126, %144 ], [ %126, %123 ]
  %160 = phi ptr [ %124, %155 ], [ %125, %144 ], [ %125, %123 ]
  %161 = icmp eq ptr %128, null
  br i1 %161, label %162, label %123, !llvm.loop !60

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.UvMapVert, ptr %158, i64 0, i32 3
  store i8 1, ptr %163, align 1, !tbaa !52
  %164 = icmp eq ptr %159, null
  br i1 %164, label %165, label %101, !llvm.loop !61

165:                                              ; preds = %162, %106, %95
  %166 = phi ptr [ null, %95 ], [ %102, %106 ], [ %158, %162 ]
  store ptr %166, ptr %98, align 8, !tbaa !43
  %167 = add nuw nsw i64 %96, 1
  %168 = icmp eq i64 %167, %37
  br i1 %168, label %169, label %95, !llvm.loop !62

169:                                              ; preds = %165, %7, %52, %31, %29, %51
  %170 = phi ptr [ null, %51 ], [ null, %29 ], [ null, %31 ], [ %33, %52 ], [ null, %7 ], [ %33, %165 ]
  ret ptr %170
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_uv_vert_map_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %7(ptr noundef nonnull %4) #6
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.UvVertMap, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %10) #6
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %15(ptr noundef nonnull %0) #6
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_mesh_uv_vert_map_get_vert(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_vert_poly_map_create(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %9 = sext i32 %4 to i64
  %10 = shl nsw i64 %9, 4
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.3) #6
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %13 = sext i32 %6 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.4) #6
  %16 = icmp sgt i32 %5, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = zext nneg i32 %5 to i64
  br label %23

19:                                               ; preds = %44, %7
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %19
  %22 = zext nneg i32 %4 to i64
  br label %50

23:                                               ; preds = %17, %44
  %24 = phi i64 [ 0, %17 ], [ %45, %44 ]
  %25 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %24, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !40
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %24
  %30 = load i32, ptr %29, align 4, !tbaa !48
  %31 = sext i32 %30 to i64
  %32 = zext nneg i32 %26 to i64
  %33 = getelementptr %struct.MLoop, ptr %3, i64 %31
  br label %34

34:                                               ; preds = %28, %34
  %35 = phi i64 [ 0, %28 ], [ %42, %34 ]
  %36 = getelementptr %struct.MLoop, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %38, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !63
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !63
  %42 = add nuw nsw i64 %35, 1
  %43 = icmp eq i64 %42, %32
  br i1 %43, label %44, label %34, !llvm.loop !65

44:                                               ; preds = %34, %23
  %45 = add nuw nsw i64 %24, 1
  %46 = icmp eq i64 %45, %18
  br i1 %46, label %19, label %23, !llvm.loop !66

47:                                               ; preds = %50, %19
  br i1 %16, label %48, label %90

48:                                               ; preds = %47
  %49 = zext nneg i32 %5 to i64
  br label %60

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi ptr [ %15, %21 ], [ %57, %50 ]
  %53 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %51
  store ptr %52, ptr %53, align 8, !tbaa !67
  %54 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %51, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !63
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %52, i64 %56
  store i32 0, ptr %54, align 8, !tbaa !63
  %58 = add nuw nsw i64 %51, 1
  %59 = icmp eq i64 %58, %22
  br i1 %59, label %47, label %50, !llvm.loop !68

60:                                               ; preds = %48, %87
  %61 = phi i64 [ 0, %48 ], [ %88, %87 ]
  %62 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %61
  %63 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %61, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !40
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = trunc i64 %61 to i32
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i32 [ %84, %68 ], [ 0, %66 ]
  %70 = load i32, ptr %62, align 4, !tbaa !48
  %71 = add nsw i32 %70, %69
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.MLoop, ptr %3, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !53
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !67
  %78 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %75, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !63
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %77, i64 %80
  store i32 %67, ptr %81, align 4, !tbaa !69
  %82 = load i32, ptr %78, align 8, !tbaa !63
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %78, align 8, !tbaa !63
  %84 = add nuw nsw i32 %69, 1
  %85 = load i32, ptr %63, align 4, !tbaa !40
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %68, label %87, !llvm.loop !70

87:                                               ; preds = %68, %60
  %88 = add nuw nsw i64 %61, 1
  %89 = icmp eq i64 %88, %49
  br i1 %89, label %90, label %60, !llvm.loop !71

90:                                               ; preds = %87, %47
  store ptr %11, ptr %0, align 8, !tbaa !43
  store ptr %15, ptr %1, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_vert_edge_map_create(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %7 = sext i32 %3 to i64
  %8 = shl nsw i64 %7, 4
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.5) #6
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %11 = sext i32 %4 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.6) #6
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = zext nneg i32 %4 to i64
  br label %21

17:                                               ; preds = %21, %5
  %18 = icmp sgt i32 %3, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %17
  %20 = zext nneg i32 %3 to i64
  br label %40

21:                                               ; preds = %15, %21
  %22 = phi i64 [ 0, %15 ], [ %35, %21 ]
  %23 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !72
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %25, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !63
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %22, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !74
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %31, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !63
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !63
  %35 = add nuw nsw i64 %22, 1
  %36 = icmp eq i64 %35, %16
  br i1 %36, label %17, label %21, !llvm.loop !75

37:                                               ; preds = %40, %17
  br i1 %14, label %38, label %77

38:                                               ; preds = %37
  %39 = zext nneg i32 %4 to i64
  br label %50

40:                                               ; preds = %19, %40
  %41 = phi i64 [ 0, %19 ], [ %48, %40 ]
  %42 = phi ptr [ %13, %19 ], [ %47, %40 ]
  %43 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %41
  store ptr %42, ptr %43, align 8, !tbaa !67
  %44 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %41, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !63
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %42, i64 %46
  store i32 0, ptr %44, align 8, !tbaa !63
  %48 = add nuw nsw i64 %41, 1
  %49 = icmp eq i64 %48, %20
  br i1 %49, label %37, label %40, !llvm.loop !76

50:                                               ; preds = %38, %50
  %51 = phi i64 [ 0, %38 ], [ %75, %50 ]
  %52 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !72
  %54 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %51, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !74
  %56 = zext i32 %53 to i64
  %57 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %56, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !63
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %58, i64 %61
  %63 = trunc i64 %51 to i32
  store i32 %63, ptr %62, align 4, !tbaa !69
  %64 = zext i32 %55 to i64
  %65 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !67
  %67 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %64, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !63
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %66, i64 %69
  store i32 %63, ptr %70, align 4, !tbaa !69
  %71 = load i32, ptr %59, align 8, !tbaa !63
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %59, align 8, !tbaa !63
  %73 = load i32, ptr %67, align 8, !tbaa !63
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %67, align 8, !tbaa !63
  %75 = add nuw nsw i64 %51, 1
  %76 = icmp eq i64 %75, %39
  br i1 %76, label %77, label %50, !llvm.loop !77

77:                                               ; preds = %50, %37
  store ptr %9, ptr %0, align 8, !tbaa !43
  store ptr %13, ptr %1, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_edge_poly_map_create(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %10 = sext i32 %3 to i64
  %11 = shl nsw i64 %10, 4
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.7) #6
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %14 = sext i32 %7 to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @.str.8) #6
  %17 = icmp sgt i32 %5, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %44, %8
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %18
  %21 = zext nneg i32 %3 to i64
  br label %49

22:                                               ; preds = %8, %44
  %23 = phi i32 [ %46, %44 ], [ 0, %8 ]
  %24 = phi ptr [ %45, %44 ], [ %4, %8 ]
  %25 = getelementptr inbounds %struct.MPoly, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !40
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %24, align 4, !tbaa !48
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MLoop, ptr %6, i64 %30
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i32 [ %35, %32 ], [ %26, %28 ]
  %34 = phi ptr [ %42, %32 ], [ %31, %28 ]
  %35 = add nsw i32 %33, -1
  %36 = getelementptr inbounds %struct.MLoop, ptr %34, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !78
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %38, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !63
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !63
  %42 = getelementptr inbounds %struct.MLoop, ptr %34, i64 1
  %43 = icmp eq i32 %35, 0
  br i1 %43, label %44, label %32, !llvm.loop !79

44:                                               ; preds = %32, %22
  %45 = getelementptr inbounds %struct.MPoly, ptr %24, i64 1
  %46 = add nuw nsw i32 %23, 1
  %47 = icmp eq i32 %46, %5
  br i1 %47, label %18, label %22, !llvm.loop !80

48:                                               ; preds = %49, %18
  br i1 %17, label %59, label %89

49:                                               ; preds = %20, %49
  %50 = phi i64 [ 0, %20 ], [ %57, %49 ]
  %51 = phi ptr [ %16, %20 ], [ %56, %49 ]
  %52 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %50
  store ptr %51, ptr %52, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %50, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !63
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %51, i64 %55
  store i32 0, ptr %53, align 8, !tbaa !63
  %57 = add nuw nsw i64 %50, 1
  %58 = icmp eq i64 %57, %21
  br i1 %58, label %48, label %49, !llvm.loop !81

59:                                               ; preds = %48, %85
  %60 = phi i32 [ %87, %85 ], [ 0, %48 ]
  %61 = phi ptr [ %86, %85 ], [ %4, %48 ]
  %62 = getelementptr inbounds %struct.MPoly, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !40
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %61, align 4, !tbaa !48
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MLoop, ptr %6, i64 %67
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi i32 [ %72, %69 ], [ %63, %65 ]
  %71 = phi ptr [ %83, %69 ], [ %68, %65 ]
  %72 = add nsw i32 %70, -1
  %73 = getelementptr inbounds %struct.MLoop, ptr %71, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !78
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !67
  %78 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %75, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !63
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %78, align 8, !tbaa !63
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, ptr %77, i64 %81
  store i32 %60, ptr %82, align 4, !tbaa !69
  %83 = getelementptr inbounds %struct.MLoop, ptr %71, i64 1
  %84 = icmp eq i32 %72, 0
  br i1 %84, label %85, label %69, !llvm.loop !82

85:                                               ; preds = %69, %59
  %86 = getelementptr inbounds %struct.MPoly, ptr %61, i64 1
  %87 = add nuw nsw i32 %60, 1
  %88 = icmp eq i32 %87, %5
  br i1 %88, label %89, label %59, !llvm.loop !83

89:                                               ; preds = %85, %48
  store ptr %12, ptr %0, align 8, !tbaa !43
  store ptr %16, ptr %1, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_origindex_map_create(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %7 = sext i32 %2 to i64
  %8 = shl nsw i64 %7, 4
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.9) #6
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %11 = sext i32 %4 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.10) #6
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = zext nneg i32 %4 to i64
  br label %21

17:                                               ; preds = %31, %5
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %17
  %20 = zext nneg i32 %2 to i64
  br label %37

21:                                               ; preds = %15, %31
  %22 = phi i64 [ 0, %15 ], [ %32, %31 ]
  %23 = getelementptr inbounds i32, ptr %3, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %27, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !63
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !63
  br label %31

31:                                               ; preds = %21, %26
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, %16
  br i1 %33, label %17, label %21, !llvm.loop !84

34:                                               ; preds = %37, %17
  br i1 %14, label %35, label %65

35:                                               ; preds = %34
  %36 = zext nneg i32 %4 to i64
  br label %47

37:                                               ; preds = %19, %37
  %38 = phi i64 [ 0, %19 ], [ %45, %37 ]
  %39 = phi ptr [ %13, %19 ], [ %44, %37 ]
  %40 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %38
  store ptr %39, ptr %40, align 8, !tbaa !67
  %41 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %38, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !63
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %39, i64 %43
  store i32 0, ptr %41, align 8, !tbaa !63
  %45 = add nuw nsw i64 %38, 1
  %46 = icmp eq i64 %45, %20
  br i1 %46, label %34, label %37, !llvm.loop !85

47:                                               ; preds = %35, %62
  %48 = phi i64 [ 0, %35 ], [ %63, %62 ]
  %49 = getelementptr inbounds i32, ptr %3, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !69
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = sext i32 %50 to i64
  %54 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  %56 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %53, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !63
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !63
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, ptr %55, i64 %59
  %61 = trunc i64 %48 to i32
  store i32 %61, ptr %60, align 4, !tbaa !69
  br label %62

62:                                               ; preds = %47, %52
  %63 = add nuw nsw i64 %48, 1
  %64 = icmp eq i64 %63, %36
  br i1 %64, label %65, label %47, !llvm.loop !86

65:                                               ; preds = %62, %34
  store ptr %9, ptr %0, align 8, !tbaa !43
  store ptr %13, ptr %1, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_calc_smoothgroups(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %201, label %12

12:                                               ; preds = %8
  call void @BKE_mesh_edge_poly_map_create(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr poison, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #7
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %14 = sext i32 %3 to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @__func__.BKE_mesh_calc_smoothgroups) #6
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %18 = tail call ptr %17(i64 noundef %15, ptr noundef nonnull @__func__.BKE_mesh_calc_smoothgroups) #6
  %19 = icmp eq i8 %7, 0
  %20 = load ptr, ptr %9, align 8
  br label %21

21:                                               ; preds = %168, %12
  %22 = phi i8 [ 0, %12 ], [ %165, %168 ]
  %23 = phi i32 [ 0, %12 ], [ %166, %168 ]
  %24 = phi i32 [ 0, %12 ], [ %145, %168 ]
  br label %25

25:                                               ; preds = %21, %144
  %26 = phi i32 [ %45, %144 ], [ %23, %21 ]
  %27 = phi i32 [ %145, %144 ], [ %24, %21 ]
  %28 = icmp slt i32 %27, %3
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = sext i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %36
  %32 = phi i64 [ %30, %29 ], [ %37, %36 ]
  %33 = getelementptr inbounds i32, ptr %16, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = add nsw i64 %32, 1
  %38 = icmp eq i64 %37, %14
  br i1 %38, label %178, label %31, !llvm.loop !87

39:                                               ; preds = %31
  %40 = trunc i64 %32 to i32
  br label %41

41:                                               ; preds = %39, %25
  %42 = phi i32 [ %27, %25 ], [ %40, %39 ]
  %43 = icmp eq i32 %42, %3
  br i1 %43, label %178, label %44

44:                                               ; preds = %41
  %45 = add nsw i32 %26, 1
  %46 = select i1 %19, i32 %45, i32 3
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds i32, ptr %16, i64 %47
  store i32 %46, ptr %48, align 4, !tbaa !69
  store i32 %42, ptr %18, align 4, !tbaa !69
  br label %54

49:                                               ; preds = %139, %54
  %50 = phi i32 [ %57, %54 ], [ %140, %139 ]
  %51 = phi i32 [ %56, %54 ], [ %141, %139 ]
  %52 = zext i32 %51 to i64
  %53 = icmp eq i64 %58, %52
  br i1 %53, label %144, label %54, !llvm.loop !88

54:                                               ; preds = %44, %49
  %55 = phi i64 [ 0, %44 ], [ %58, %49 ]
  %56 = phi i32 [ 1, %44 ], [ %51, %49 ]
  %57 = phi i32 [ 0, %44 ], [ %50, %49 ]
  %58 = add nuw nsw i64 %55, 1
  %59 = getelementptr inbounds i32, ptr %18, i64 %55
  %60 = load i32, ptr %59, align 4, !tbaa !69
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %61, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !40
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %49, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %61
  %67 = load i32, ptr %66, align 4, !tbaa !48
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %68
  %70 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %61, i32 3
  %71 = load i8, ptr %70, align 2, !tbaa !34
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br label %74

74:                                               ; preds = %65, %139
  %75 = phi i32 [ %63, %65 ], [ %79, %139 ]
  %76 = phi ptr [ %69, %65 ], [ %142, %139 ]
  %77 = phi i32 [ %56, %65 ], [ %141, %139 ]
  %78 = phi i32 [ %57, %65 ], [ %140, %139 ]
  %79 = add nsw i32 %75, -1
  %80 = getelementptr inbounds %struct.MLoop, ptr %76, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !78
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.MeshElemMap, ptr %20, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !67
  %85 = getelementptr inbounds %struct.MeshElemMap, ptr %20, i64 %82, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !63
  br i1 %73, label %113, label %87

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.MEdge, ptr %0, i64 %82, i32 4
  %89 = load i16, ptr %88, align 2, !tbaa !89
  %90 = and i16 %89, 512
  %91 = icmp eq i16 %90, 0
  %92 = icmp eq i32 %86, 2
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %113

94:                                               ; preds = %87, %108
  %95 = phi i32 [ %111, %108 ], [ 1, %87 ]
  %96 = phi ptr [ %110, %108 ], [ %84, %87 ]
  %97 = phi i32 [ %109, %108 ], [ %77, %87 ]
  %98 = load i32, ptr %96, align 4, !tbaa !69
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %16, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !69
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  store i32 %46, ptr %100, align 4, !tbaa !69
  %104 = load i32, ptr %96, align 4, !tbaa !69
  %105 = add nsw i32 %97, 1
  %106 = sext i32 %97 to i64
  %107 = getelementptr inbounds i32, ptr %18, i64 %106
  store i32 %104, ptr %107, align 4, !tbaa !69
  br label %108

108:                                              ; preds = %94, %103
  %109 = phi i32 [ %105, %103 ], [ %97, %94 ]
  %110 = getelementptr inbounds i32, ptr %96, i64 1
  %111 = add nsw i32 %95, -1
  %112 = icmp eq i32 %95, 0
  br i1 %112, label %139, label %94, !llvm.loop !90

113:                                              ; preds = %87, %74
  %114 = icmp eq i32 %86, 0
  %115 = select i1 %19, i1 true, i1 %114
  br i1 %115, label %139, label %116

116:                                              ; preds = %113, %135
  %117 = phi i32 [ %120, %135 ], [ %86, %113 ]
  %118 = phi ptr [ %137, %135 ], [ %84, %113 ]
  %119 = phi i32 [ %136, %135 ], [ %78, %113 ]
  %120 = add nsw i32 %117, -1
  %121 = load i32, ptr %118, align 4, !tbaa !69
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %16, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !69
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %116
  %127 = icmp ne i32 %124, %46
  %128 = icmp ne i32 %124, 5
  %129 = and i1 %127, %128
  %130 = and i32 %124, %119
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %129, i1 %131, i1 false
  %133 = select i1 %132, i32 %124, i32 0
  %134 = or i32 %133, %119
  br label %135

135:                                              ; preds = %126, %116
  %136 = phi i32 [ %119, %116 ], [ %134, %126 ]
  %137 = getelementptr inbounds i32, ptr %118, i64 1
  %138 = icmp eq i32 %120, 0
  br i1 %138, label %139, label %116, !llvm.loop !91

139:                                              ; preds = %108, %135, %113
  %140 = phi i32 [ %78, %113 ], [ %136, %135 ], [ %78, %108 ]
  %141 = phi i32 [ %77, %113 ], [ %77, %135 ], [ %109, %108 ]
  %142 = getelementptr inbounds %struct.MLoop, ptr %76, i64 1
  %143 = icmp eq i32 %79, 0
  br i1 %143, label %49, label %74, !llvm.loop !92

144:                                              ; preds = %49
  %145 = add nsw i32 %42, 1
  br i1 %19, label %25, label %146

146:                                              ; preds = %144
  %147 = and i32 %50, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %146, %149
  %150 = phi i32 [ %153, %149 ], [ 0, %146 ]
  %151 = phi i32 [ %152, %149 ], [ 1, %146 ]
  %152 = shl i32 %151, 1
  %153 = add nuw nsw i32 %150, 1
  %154 = and i32 %152, %50
  %155 = icmp ne i32 %154, 0
  %156 = icmp ult i32 %150, 31
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %149, label %158, !llvm.loop !93

158:                                              ; preds = %149
  %159 = icmp ugt i32 %150, 30
  br i1 %159, label %160, label %162

160:                                              ; preds = %158
  %161 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %162

162:                                              ; preds = %146, %160, %158
  %163 = phi i32 [ 32, %160 ], [ %153, %158 ], [ 0, %146 ]
  %164 = phi i32 [ 5, %160 ], [ %152, %158 ], [ 1, %146 ]
  %165 = phi i8 [ 1, %160 ], [ %22, %158 ], [ %22, %146 ]
  %166 = tail call i32 @llvm.smax.i32(i32 %163, i32 %26)
  %167 = icmp eq i32 %51, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %169, %162
  br label %21

169:                                              ; preds = %162, %169
  %170 = phi ptr [ %176, %169 ], [ %18, %162 ]
  %171 = phi i32 [ %172, %169 ], [ %51, %162 ]
  %172 = add nsw i32 %171, -1
  %173 = load i32, ptr %170, align 4, !tbaa !69
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %16, i64 %174
  store i32 %164, ptr %175, align 4, !tbaa !69
  %176 = getelementptr inbounds i32, ptr %170, i64 1
  %177 = icmp eq i32 %172, 0
  br i1 %177, label %168, label %169, !llvm.loop !94

178:                                              ; preds = %41, %36
  %179 = icmp ne i8 %7, 0
  %180 = zext i1 %179 to i32
  %181 = add nsw i32 %26, %180
  %182 = icmp eq i8 %22, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %178, %190
  %184 = phi i32 [ %186, %190 ], [ %3, %178 ]
  %185 = phi ptr [ %191, %190 ], [ %16, %178 ]
  %186 = add nsw i32 %184, -1
  %187 = load i32, ptr %185, align 4, !tbaa !69
  %188 = icmp eq i32 %187, 5
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  store i32 0, ptr %185, align 4, !tbaa !69
  br label %190

190:                                              ; preds = %183, %189
  %191 = getelementptr inbounds i32, ptr %185, i64 1
  %192 = icmp eq i32 %186, 0
  br i1 %192, label %193, label %183, !llvm.loop !95

193:                                              ; preds = %190
  %194 = add nsw i32 %181, 1
  br label %195

195:                                              ; preds = %193, %178
  %196 = phi i32 [ %194, %193 ], [ %181, %178 ]
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %197(ptr noundef %20) #6
  %198 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %199 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void %198(ptr noundef %199) #6
  %200 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %200(ptr noundef %18) #6
  br label %201

201:                                              ; preds = %8, %195
  %202 = phi i32 [ %196, %195 ], [ 0, %8 ]
  %203 = phi ptr [ %16, %195 ], [ null, %8 ]
  store i32 %202, ptr %6, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret ptr %203
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

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
!34 = !{!35, !37, i64 10}
!35 = !{!"MPoly", !36, i64 0, !36, i64 4, !39, i64 8, !37, i64 10, !37, i64 11}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !36, i64 4}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !37, i64 0}
!45 = !{!46, !44, i64 0}
!46 = !{!"UvVertMap", !44, i64 0, !44, i64 8}
!47 = !{!46, !44, i64 8}
!48 = !{!35, !36, i64 0}
!49 = !{!50, !37, i64 12}
!50 = !{!"UvMapVert", !44, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!51 = !{!50, !36, i64 8}
!52 = !{!50, !37, i64 13}
!53 = !{!54, !36, i64 0}
!54 = !{!"MLoop", !36, i64 0, !36, i64 4}
!55 = !{!50, !44, i64 0}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !42}
!58 = !{!59, !59, i64 0}
!59 = !{!"float", !37, i64 0}
!60 = distinct !{!60, !42}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = !{!64, !36, i64 8}
!64 = !{!"MeshElemMap", !44, i64 0, !36, i64 8}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !42}
!67 = !{!64, !44, i64 0}
!68 = distinct !{!68, !42}
!69 = !{!36, !36, i64 0}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, !42}
!72 = !{!73, !36, i64 0}
!73 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !39, i64 10}
!74 = !{!73, !36, i64 4}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
!77 = distinct !{!77, !42}
!78 = !{!54, !36, i64 4}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !42}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !42}
!89 = !{!73, !39, i64 10}
!90 = distinct !{!90, !42}
!91 = distinct !{!91, !42}
!92 = distinct !{!92, !42}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !42}
