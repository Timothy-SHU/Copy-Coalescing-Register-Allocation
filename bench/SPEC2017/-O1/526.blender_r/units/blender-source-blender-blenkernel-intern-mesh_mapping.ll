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

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_uv_vert_map_create(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %29, label %9

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

29:                                               ; preds = %24, %7
  %30 = phi i32 [ 0, %7 ], [ %25, %24 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %182, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %34 = tail call ptr %33(i64 noundef 16, ptr noundef nonnull @.str) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %182, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %38 = zext i32 %4 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.1) #6
  store ptr %40, ptr %34, align 8, !tbaa !46
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %42 = sext i32 %30 to i64
  %43 = shl nsw i64 %42, 4
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.2) #6
  %45 = getelementptr inbounds %struct.UvVertMap, ptr %34, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !48
  %46 = load ptr, ptr %34, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  %48 = icmp eq ptr %44, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %36
  %51 = icmp eq i32 %3, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %50
  %53 = icmp eq i32 %5, 0
  br label %69

54:                                               ; preds = %36
  br i1 %47, label %57, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %56(ptr noundef nonnull %46) #6
  br label %57

57:                                               ; preds = %55, %54
  %58 = load ptr, ptr %45, align 8, !tbaa !48
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %61(ptr noundef nonnull %58) #6
  br label %62

62:                                               ; preds = %60, %57
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %63(ptr noundef nonnull %34) #6
  br label %182

64:                                               ; preds = %103, %50
  %65 = icmp eq i32 %4, 0
  br i1 %65, label %182, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds float, ptr %6, i64 1
  %68 = zext i32 %4 to i64
  br label %108

69:                                               ; preds = %52, %103
  %70 = phi ptr [ %44, %52 ], [ %104, %103 ]
  %71 = phi ptr [ %0, %52 ], [ %106, %103 ]
  %72 = phi i32 [ 0, %52 ], [ %105, %103 ]
  br i1 %53, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.MPoly, ptr %71, i64 0, i32 3
  %75 = load i8, ptr %74, align 2, !tbaa !34
  %76 = and i8 %75, 18
  %77 = icmp eq i8 %76, 2
  br i1 %77, label %78, label %103

78:                                               ; preds = %73, %69
  %79 = getelementptr inbounds %struct.MPoly, ptr %71, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !40
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load i32, ptr %71, align 4, !tbaa !49
  %84 = sext i32 %83 to i64
  %85 = zext nneg i32 %80 to i64
  %86 = getelementptr %struct.MLoop, ptr %1, i64 %84
  br label %87

87:                                               ; preds = %82, %87
  %88 = phi i64 [ 0, %82 ], [ %101, %87 ]
  %89 = phi ptr [ %70, %82 ], [ %100, %87 ]
  %90 = trunc i64 %88 to i8
  %91 = getelementptr inbounds %struct.UvMapVert, ptr %89, i64 0, i32 2
  store i8 %90, ptr %91, align 4, !tbaa !50
  %92 = getelementptr inbounds %struct.UvMapVert, ptr %89, i64 0, i32 1
  store i32 %72, ptr %92, align 8, !tbaa !52
  %93 = getelementptr inbounds %struct.UvMapVert, ptr %89, i64 0, i32 3
  store i8 0, ptr %93, align 1, !tbaa !53
  %94 = load ptr, ptr %34, align 8, !tbaa !46
  %95 = getelementptr %struct.MLoop, ptr %86, i64 %88
  %96 = load i32, ptr %95, align 4, !tbaa !54
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %94, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !44
  store ptr %99, ptr %89, align 8, !tbaa !56
  store ptr %89, ptr %98, align 8, !tbaa !44
  %100 = getelementptr inbounds %struct.UvMapVert, ptr %89, i64 1
  %101 = add nuw nsw i64 %88, 1
  %102 = icmp eq i64 %101, %85
  br i1 %102, label %103, label %87, !llvm.loop !57

103:                                              ; preds = %87, %78, %73
  %104 = phi ptr [ %70, %73 ], [ %70, %78 ], [ %100, %87 ]
  %105 = add nuw i32 %72, 1
  %106 = getelementptr inbounds %struct.MPoly, ptr %71, i64 1
  %107 = icmp eq i32 %105, %3
  br i1 %107, label %64, label %69, !llvm.loop !58

108:                                              ; preds = %66, %178
  %109 = phi i64 [ 0, %66 ], [ %180, %178 ]
  %110 = load ptr, ptr %34, align 8, !tbaa !46
  %111 = getelementptr inbounds ptr, ptr %110, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !44
  %113 = icmp eq ptr %112, null
  br i1 %113, label %178, label %114

114:                                              ; preds = %108, %173
  %115 = phi ptr [ %175, %173 ], [ %112, %108 ]
  %116 = phi ptr [ %174, %173 ], [ null, %108 ]
  %117 = load ptr, ptr %115, align 8, !tbaa !56
  store ptr %116, ptr %115, align 8, !tbaa !56
  %118 = icmp eq ptr %117, null
  br i1 %118, label %173, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.UvMapVert, ptr %115, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !52
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.MPoly, ptr %0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !49
  %125 = getelementptr inbounds %struct.UvMapVert, ptr %115, i64 0, i32 2
  %126 = load i8, ptr %125, align 4, !tbaa !50
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %124, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.MLoopUV, ptr %2, i64 %129
  %131 = load float, ptr %130, align 4, !tbaa !59
  %132 = load float, ptr %6, align 4, !tbaa !59
  %133 = getelementptr inbounds float, ptr %130, i64 1
  br label %134

134:                                              ; preds = %119, %168
  %135 = phi ptr [ null, %119 ], [ %171, %168 ]
  %136 = phi ptr [ %117, %119 ], [ %139, %168 ]
  %137 = phi ptr [ %117, %119 ], [ %170, %168 ]
  %138 = phi ptr [ %115, %119 ], [ %169, %168 ]
  %139 = load ptr, ptr %136, align 8, !tbaa !56
  %140 = getelementptr inbounds %struct.UvMapVert, ptr %136, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !52
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.MPoly, ptr %0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !49
  %145 = getelementptr inbounds %struct.UvMapVert, ptr %136, i64 0, i32 2
  %146 = load i8, ptr %145, align 4, !tbaa !50
  %147 = zext i8 %146 to i32
  %148 = add nsw i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.MLoopUV, ptr %2, i64 %149
  %151 = load float, ptr %150, align 4, !tbaa !59
  %152 = fsub float %131, %151
  %153 = tail call float @llvm.fabs.f32(float %152)
  %154 = fcmp olt float %153, %132
  br i1 %154, label %155, label %168

155:                                              ; preds = %134
  %156 = load float, ptr %133, align 4, !tbaa !59
  %157 = getelementptr inbounds float, ptr %150, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !59
  %159 = fsub float %156, %158
  %160 = tail call float @llvm.fabs.f32(float %159)
  %161 = load float, ptr %67, align 4, !tbaa !59
  %162 = fcmp olt float %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = icmp eq ptr %135, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %163
  store ptr %139, ptr %135, align 8, !tbaa !56
  br label %166

166:                                              ; preds = %163, %165
  %167 = phi ptr [ %137, %165 ], [ %139, %163 ]
  store ptr %138, ptr %136, align 8, !tbaa !56
  br label %168

168:                                              ; preds = %134, %155, %166
  %169 = phi ptr [ %136, %166 ], [ %138, %155 ], [ %138, %134 ]
  %170 = phi ptr [ %167, %166 ], [ %137, %155 ], [ %137, %134 ]
  %171 = phi ptr [ %135, %166 ], [ %136, %155 ], [ %136, %134 ]
  %172 = icmp eq ptr %139, null
  br i1 %172, label %173, label %134, !llvm.loop !61

173:                                              ; preds = %168, %114
  %174 = phi ptr [ %115, %114 ], [ %169, %168 ]
  %175 = phi ptr [ %117, %114 ], [ %170, %168 ]
  %176 = getelementptr inbounds %struct.UvMapVert, ptr %174, i64 0, i32 3
  store i8 1, ptr %176, align 1, !tbaa !53
  %177 = icmp eq ptr %175, null
  br i1 %177, label %178, label %114, !llvm.loop !62

178:                                              ; preds = %173, %108
  %179 = phi ptr [ null, %108 ], [ %174, %173 ]
  store ptr %179, ptr %111, align 8, !tbaa !44
  %180 = add nuw nsw i64 %109, 1
  %181 = icmp eq i64 %180, %68
  br i1 %181, label %182, label %108, !llvm.loop !63

182:                                              ; preds = %178, %64, %32, %29, %62
  %183 = phi ptr [ null, %62 ], [ null, %29 ], [ null, %32 ], [ %34, %64 ], [ %34, %178 ]
  ret ptr %183
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_uv_vert_map_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %7(ptr noundef nonnull %4) #6
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.UvVertMap, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %13(ptr noundef nonnull %10) #6
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %15(ptr noundef nonnull %0) #6
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_mesh_uv_vert_map_get_vert(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_vert_poly_map_create(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %9 = sext i32 %4 to i64
  %10 = shl nsw i64 %9, 4
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.3) #6
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
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
  br label %51

23:                                               ; preds = %17, %44
  %24 = phi i64 [ 0, %17 ], [ %45, %44 ]
  %25 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %24, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !40
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %24
  %30 = load i32, ptr %29, align 4, !tbaa !49
  %31 = sext i32 %30 to i64
  %32 = zext nneg i32 %26 to i64
  %33 = getelementptr %struct.MLoop, ptr %3, i64 %31
  br label %34

34:                                               ; preds = %28, %34
  %35 = phi i64 [ 0, %28 ], [ %42, %34 ]
  %36 = getelementptr %struct.MLoop, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !54
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %38, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !64
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !64
  %42 = add nuw nsw i64 %35, 1
  %43 = icmp eq i64 %42, %32
  br i1 %43, label %44, label %34, !llvm.loop !66

44:                                               ; preds = %34, %23
  %45 = add nuw nsw i64 %24, 1
  %46 = icmp eq i64 %45, %18
  br i1 %46, label %19, label %23, !llvm.loop !67

47:                                               ; preds = %51, %19
  %48 = icmp sgt i32 %5, 0
  br i1 %48, label %49, label %91

49:                                               ; preds = %47
  %50 = zext nneg i32 %5 to i64
  br label %61

51:                                               ; preds = %21, %51
  %52 = phi i64 [ 0, %21 ], [ %59, %51 ]
  %53 = phi ptr [ %15, %21 ], [ %58, %51 ]
  %54 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %52
  store ptr %53, ptr %54, align 8, !tbaa !68
  %55 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %52, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !64
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %53, i64 %57
  store i32 0, ptr %55, align 8, !tbaa !64
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, %22
  br i1 %60, label %47, label %51, !llvm.loop !69

61:                                               ; preds = %49, %88
  %62 = phi i64 [ 0, %49 ], [ %89, %88 ]
  %63 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %62
  %64 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %62, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !40
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = trunc i64 %62 to i32
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i32 [ %85, %69 ], [ 0, %67 ]
  %71 = load i32, ptr %63, align 4, !tbaa !49
  %72 = add nsw i32 %71, %70
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.MLoop, ptr %3, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !54
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !68
  %79 = getelementptr inbounds %struct.MeshElemMap, ptr %11, i64 %76, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !64
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %78, i64 %81
  store i32 %68, ptr %82, align 4, !tbaa !70
  %83 = load i32, ptr %79, align 8, !tbaa !64
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %79, align 8, !tbaa !64
  %85 = add nuw nsw i32 %70, 1
  %86 = load i32, ptr %64, align 4, !tbaa !40
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %69, label %88, !llvm.loop !71

88:                                               ; preds = %69, %61
  %89 = add nuw nsw i64 %62, 1
  %90 = icmp eq i64 %89, %50
  br i1 %90, label %91, label %61, !llvm.loop !72

91:                                               ; preds = %88, %47
  store ptr %11, ptr %0, align 8, !tbaa !44
  store ptr %15, ptr %1, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_vert_edge_map_create(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %7 = sext i32 %3 to i64
  %8 = shl nsw i64 %7, 4
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.5) #6
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
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
  br label %41

21:                                               ; preds = %15, %21
  %22 = phi i64 [ 0, %15 ], [ %35, %21 ]
  %23 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !73
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %25, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !64
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %22, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !75
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %31, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !64
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !64
  %35 = add nuw nsw i64 %22, 1
  %36 = icmp eq i64 %35, %16
  br i1 %36, label %17, label %21, !llvm.loop !76

37:                                               ; preds = %41, %17
  %38 = icmp sgt i32 %4, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %37
  %40 = zext nneg i32 %4 to i64
  br label %51

41:                                               ; preds = %19, %41
  %42 = phi i64 [ 0, %19 ], [ %49, %41 ]
  %43 = phi ptr [ %13, %19 ], [ %48, %41 ]
  %44 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %42
  store ptr %43, ptr %44, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %42, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !64
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %43, i64 %47
  store i32 0, ptr %45, align 8, !tbaa !64
  %49 = add nuw nsw i64 %42, 1
  %50 = icmp eq i64 %49, %20
  br i1 %50, label %37, label %41, !llvm.loop !77

51:                                               ; preds = %39, %51
  %52 = phi i64 [ 0, %39 ], [ %77, %51 ]
  %53 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !73
  %55 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %52, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !75
  %57 = zext i32 %54 to i64
  %58 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !68
  %60 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %57, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !64
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  %64 = trunc i64 %52 to i32
  store i32 %64, ptr %63, align 4, !tbaa !70
  %65 = zext i32 %56 to i64
  %66 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !68
  %68 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %65, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !64
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %67, i64 %70
  %72 = trunc i64 %52 to i32
  store i32 %72, ptr %71, align 4, !tbaa !70
  %73 = load i32, ptr %60, align 8, !tbaa !64
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %60, align 8, !tbaa !64
  %75 = load i32, ptr %68, align 8, !tbaa !64
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %68, align 8, !tbaa !64
  %77 = add nuw nsw i64 %52, 1
  %78 = icmp eq i64 %77, %40
  br i1 %78, label %79, label %51, !llvm.loop !78

79:                                               ; preds = %51, %37
  store ptr %9, ptr %0, align 8, !tbaa !44
  store ptr %13, ptr %1, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_edge_poly_map_create(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %10 = sext i32 %3 to i64
  %11 = shl nsw i64 %10, 4
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.7) #6
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
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
  br label %50

22:                                               ; preds = %8, %44
  %23 = phi i32 [ %46, %44 ], [ 0, %8 ]
  %24 = phi ptr [ %45, %44 ], [ %4, %8 ]
  %25 = getelementptr inbounds %struct.MPoly, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !40
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %24, align 4, !tbaa !49
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MLoop, ptr %6, i64 %30
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i32 [ %35, %32 ], [ %26, %28 ]
  %34 = phi ptr [ %42, %32 ], [ %31, %28 ]
  %35 = add nsw i32 %33, -1
  %36 = getelementptr inbounds %struct.MLoop, ptr %34, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !79
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %38, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !64
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !64
  %42 = getelementptr inbounds %struct.MLoop, ptr %34, i64 1
  %43 = icmp eq i32 %35, 0
  br i1 %43, label %44, label %32, !llvm.loop !80

44:                                               ; preds = %32, %22
  %45 = getelementptr inbounds %struct.MPoly, ptr %24, i64 1
  %46 = add nuw nsw i32 %23, 1
  %47 = icmp eq i32 %46, %5
  br i1 %47, label %18, label %22, !llvm.loop !81

48:                                               ; preds = %50, %18
  %49 = icmp sgt i32 %5, 0
  br i1 %49, label %60, label %90

50:                                               ; preds = %20, %50
  %51 = phi i64 [ 0, %20 ], [ %58, %50 ]
  %52 = phi ptr [ %16, %20 ], [ %57, %50 ]
  %53 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %51
  store ptr %52, ptr %53, align 8, !tbaa !68
  %54 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %51, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !64
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %52, i64 %56
  store i32 0, ptr %54, align 8, !tbaa !64
  %58 = add nuw nsw i64 %51, 1
  %59 = icmp eq i64 %58, %21
  br i1 %59, label %48, label %50, !llvm.loop !82

60:                                               ; preds = %48, %86
  %61 = phi i32 [ %88, %86 ], [ 0, %48 ]
  %62 = phi ptr [ %87, %86 ], [ %4, %48 ]
  %63 = getelementptr inbounds %struct.MPoly, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !40
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %62, align 4, !tbaa !49
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.MLoop, ptr %6, i64 %68
  br label %70

70:                                               ; preds = %66, %70
  %71 = phi i32 [ %73, %70 ], [ %64, %66 ]
  %72 = phi ptr [ %84, %70 ], [ %69, %66 ]
  %73 = add nsw i32 %71, -1
  %74 = getelementptr inbounds %struct.MLoop, ptr %72, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !79
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !68
  %79 = getelementptr inbounds %struct.MeshElemMap, ptr %12, i64 %76, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !64
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 8, !tbaa !64
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, ptr %78, i64 %82
  store i32 %61, ptr %83, align 4, !tbaa !70
  %84 = getelementptr inbounds %struct.MLoop, ptr %72, i64 1
  %85 = icmp eq i32 %73, 0
  br i1 %85, label %86, label %70, !llvm.loop !83

86:                                               ; preds = %70, %60
  %87 = getelementptr inbounds %struct.MPoly, ptr %62, i64 1
  %88 = add nuw nsw i32 %61, 1
  %89 = icmp eq i32 %88, %5
  br i1 %89, label %90, label %60, !llvm.loop !84

90:                                               ; preds = %86, %48
  store ptr %12, ptr %0, align 8, !tbaa !44
  store ptr %16, ptr %1, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_origindex_map_create(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %7 = sext i32 %2 to i64
  %8 = shl nsw i64 %7, 4
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.9) #6
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
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
  br label %38

21:                                               ; preds = %15, %31
  %22 = phi i64 [ 0, %15 ], [ %32, %31 ]
  %23 = getelementptr inbounds i32, ptr %3, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !70
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %27, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !64
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !64
  br label %31

31:                                               ; preds = %21, %26
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, %16
  br i1 %33, label %17, label %21, !llvm.loop !85

34:                                               ; preds = %38, %17
  %35 = icmp sgt i32 %4, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %34
  %37 = zext nneg i32 %4 to i64
  br label %48

38:                                               ; preds = %19, %38
  %39 = phi i64 [ 0, %19 ], [ %46, %38 ]
  %40 = phi ptr [ %13, %19 ], [ %45, %38 ]
  %41 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %39
  store ptr %40, ptr %41, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %39, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !64
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %40, i64 %44
  store i32 0, ptr %42, align 8, !tbaa !64
  %46 = add nuw nsw i64 %39, 1
  %47 = icmp eq i64 %46, %20
  br i1 %47, label %34, label %38, !llvm.loop !86

48:                                               ; preds = %36, %63
  %49 = phi i64 [ 0, %36 ], [ %64, %63 ]
  %50 = getelementptr inbounds i32, ptr %3, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !70
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.MeshElemMap, ptr %9, i64 %54, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !64
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !64
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, ptr %56, i64 %60
  %62 = trunc i64 %49 to i32
  store i32 %62, ptr %61, align 4, !tbaa !70
  br label %63

63:                                               ; preds = %48, %53
  %64 = add nuw nsw i64 %49, 1
  %65 = icmp eq i64 %64, %37
  br i1 %65, label %66, label %48, !llvm.loop !87

66:                                               ; preds = %63, %34
  store ptr %9, ptr %0, align 8, !tbaa !44
  store ptr %13, ptr %1, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_calc_smoothgroups(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %205, label %12

12:                                               ; preds = %8
  call void @BKE_mesh_edge_poly_map_create(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr poison, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %14 = sext i32 %3 to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @__func__.BKE_mesh_calc_smoothgroups) #6
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %18 = tail call ptr %17(i64 noundef %15, ptr noundef nonnull @__func__.BKE_mesh_calc_smoothgroups) #6
  %19 = icmp eq i8 %7, 0
  %20 = load ptr, ptr %9, align 8
  %21 = sext i32 %3 to i64
  br label %22

22:                                               ; preds = %177, %12
  %23 = phi i8 [ 0, %12 ], [ %178, %177 ]
  %24 = phi i32 [ 0, %12 ], [ %179, %177 ]
  %25 = phi i32 [ 0, %12 ], [ %180, %177 ]
  %26 = icmp slt i32 %25, %3
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = sext i32 %25 to i64
  br label %29

29:                                               ; preds = %27, %34
  %30 = phi i64 [ %28, %27 ], [ %35, %34 ]
  %31 = getelementptr inbounds i32, ptr %16, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !70
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = add nsw i64 %30, 1
  %36 = icmp eq i64 %35, %21
  br i1 %36, label %39, label %29, !llvm.loop !88

37:                                               ; preds = %29
  %38 = trunc i64 %30 to i32
  br label %39

39:                                               ; preds = %37, %34, %22
  %40 = phi i32 [ %25, %22 ], [ %38, %37 ], [ %3, %34 ]
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %177, label %42

42:                                               ; preds = %39
  %43 = add nsw i32 %24, 1
  %44 = select i1 %19, i32 %43, i32 3
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds i32, ptr %16, i64 %45
  store i32 %44, ptr %46, align 4, !tbaa !70
  store i32 %40, ptr %18, align 4, !tbaa !70
  br label %52

47:                                               ; preds = %137, %52
  %48 = phi i32 [ %55, %52 ], [ %138, %137 ]
  %49 = phi i32 [ %54, %52 ], [ %139, %137 ]
  %50 = zext i32 %49 to i64
  %51 = icmp eq i64 %56, %50
  br i1 %51, label %142, label %52, !llvm.loop !89

52:                                               ; preds = %42, %47
  %53 = phi i64 [ 0, %42 ], [ %56, %47 ]
  %54 = phi i32 [ 1, %42 ], [ %49, %47 ]
  %55 = phi i32 [ 0, %42 ], [ %48, %47 ]
  %56 = add nuw nsw i64 %53, 1
  %57 = getelementptr inbounds i32, ptr %18, i64 %53
  %58 = load i32, ptr %57, align 4, !tbaa !70
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %59, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !40
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %47, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %59
  %65 = load i32, ptr %64, align 4, !tbaa !49
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %66
  %68 = getelementptr inbounds %struct.MPoly, ptr %2, i64 %59, i32 3
  %69 = load i8, ptr %68, align 2, !tbaa !34
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br label %72

72:                                               ; preds = %63, %137
  %73 = phi i32 [ %61, %63 ], [ %77, %137 ]
  %74 = phi ptr [ %67, %63 ], [ %140, %137 ]
  %75 = phi i32 [ %54, %63 ], [ %139, %137 ]
  %76 = phi i32 [ %55, %63 ], [ %138, %137 ]
  %77 = add nsw i32 %73, -1
  %78 = getelementptr inbounds %struct.MLoop, ptr %74, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !79
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MeshElemMap, ptr %20, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !68
  %83 = getelementptr inbounds %struct.MeshElemMap, ptr %20, i64 %80, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !64
  br i1 %71, label %111, label %85

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.MEdge, ptr %0, i64 %80, i32 4
  %87 = load i16, ptr %86, align 2, !tbaa !90
  %88 = and i16 %87, 512
  %89 = icmp eq i16 %88, 0
  %90 = icmp eq i32 %84, 2
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %111

92:                                               ; preds = %85, %106
  %93 = phi i32 [ %109, %106 ], [ 1, %85 ]
  %94 = phi ptr [ %108, %106 ], [ %82, %85 ]
  %95 = phi i32 [ %107, %106 ], [ %75, %85 ]
  %96 = load i32, ptr %94, align 4, !tbaa !70
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %16, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !70
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  store i32 %44, ptr %98, align 4, !tbaa !70
  %102 = load i32, ptr %94, align 4, !tbaa !70
  %103 = add nsw i32 %95, 1
  %104 = sext i32 %95 to i64
  %105 = getelementptr inbounds i32, ptr %18, i64 %104
  store i32 %102, ptr %105, align 4, !tbaa !70
  br label %106

106:                                              ; preds = %92, %101
  %107 = phi i32 [ %103, %101 ], [ %95, %92 ]
  %108 = getelementptr inbounds i32, ptr %94, i64 1
  %109 = add nsw i32 %93, -1
  %110 = icmp eq i32 %93, 0
  br i1 %110, label %137, label %92, !llvm.loop !91

111:                                              ; preds = %85, %72
  %112 = icmp eq i32 %84, 0
  %113 = select i1 %19, i1 true, i1 %112
  br i1 %113, label %137, label %114

114:                                              ; preds = %111, %133
  %115 = phi i32 [ %118, %133 ], [ %84, %111 ]
  %116 = phi ptr [ %135, %133 ], [ %82, %111 ]
  %117 = phi i32 [ %134, %133 ], [ %76, %111 ]
  %118 = add nsw i32 %115, -1
  %119 = load i32, ptr %116, align 4, !tbaa !70
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %16, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !70
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %114
  %125 = icmp ne i32 %122, %44
  %126 = icmp ne i32 %122, 5
  %127 = and i1 %125, %126
  %128 = and i32 %122, %117
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %127, i1 %129, i1 false
  %131 = select i1 %130, i32 %122, i32 0
  %132 = or i32 %131, %117
  br label %133

133:                                              ; preds = %124, %114
  %134 = phi i32 [ %117, %114 ], [ %132, %124 ]
  %135 = getelementptr inbounds i32, ptr %116, i64 1
  %136 = icmp eq i32 %118, 0
  br i1 %136, label %137, label %114, !llvm.loop !92

137:                                              ; preds = %106, %133, %111
  %138 = phi i32 [ %76, %111 ], [ %134, %133 ], [ %76, %106 ]
  %139 = phi i32 [ %75, %111 ], [ %75, %133 ], [ %107, %106 ]
  %140 = getelementptr inbounds %struct.MLoop, ptr %74, i64 1
  %141 = icmp eq i32 %77, 0
  br i1 %141, label %47, label %72, !llvm.loop !93

142:                                              ; preds = %47
  %143 = select i1 %19, i32 %43, i32 %24
  %144 = add nsw i32 %40, 1
  br i1 %19, label %177, label %145

145:                                              ; preds = %142
  %146 = and i32 %48, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %145, %148
  %149 = phi i32 [ %152, %148 ], [ 0, %145 ]
  %150 = phi i32 [ %151, %148 ], [ 1, %145 ]
  %151 = shl i32 %150, 1
  %152 = add nuw nsw i32 %149, 1
  %153 = and i32 %151, %48
  %154 = icmp ne i32 %153, 0
  %155 = icmp ult i32 %149, 31
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %148, label %157, !llvm.loop !94

157:                                              ; preds = %148, %145
  %158 = phi i32 [ 1, %145 ], [ %151, %148 ]
  %159 = phi i32 [ 0, %145 ], [ %152, %148 ]
  %160 = icmp ugt i32 %159, 31
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %163

163:                                              ; preds = %161, %157
  %164 = phi i32 [ 5, %161 ], [ %158, %157 ]
  %165 = phi i8 [ 1, %161 ], [ %23, %157 ]
  %166 = tail call i32 @llvm.smax.i32(i32 %159, i32 %143)
  %167 = icmp eq i32 %49, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %163, %168
  %169 = phi ptr [ %175, %168 ], [ %18, %163 ]
  %170 = phi i32 [ %171, %168 ], [ %49, %163 ]
  %171 = add nsw i32 %170, -1
  %172 = load i32, ptr %169, align 4, !tbaa !70
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %16, i64 %173
  store i32 %164, ptr %174, align 4, !tbaa !70
  %175 = getelementptr inbounds i32, ptr %169, i64 1
  %176 = icmp eq i32 %171, 0
  br i1 %176, label %177, label %168, !llvm.loop !95

177:                                              ; preds = %168, %163, %142, %39
  %178 = phi i8 [ %23, %39 ], [ %23, %142 ], [ %165, %163 ], [ %165, %168 ]
  %179 = phi i32 [ %24, %39 ], [ %143, %142 ], [ %166, %163 ], [ %166, %168 ]
  %180 = phi i32 [ %25, %39 ], [ %144, %142 ], [ %144, %163 ], [ %144, %168 ]
  br i1 %41, label %181, label %22

181:                                              ; preds = %177
  %182 = icmp ne i8 %7, 0
  %183 = zext i1 %182 to i32
  %184 = add nsw i32 %179, %183
  %185 = icmp eq i8 %178, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %181, %193
  %187 = phi i32 [ %189, %193 ], [ %3, %181 ]
  %188 = phi ptr [ %194, %193 ], [ %16, %181 ]
  %189 = add nsw i32 %187, -1
  %190 = load i32, ptr %188, align 4, !tbaa !70
  %191 = icmp eq i32 %190, 5
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  store i32 0, ptr %188, align 4, !tbaa !70
  br label %193

193:                                              ; preds = %186, %192
  %194 = getelementptr inbounds i32, ptr %188, i64 1
  %195 = icmp eq i32 %189, 0
  br i1 %195, label %196, label %186, !llvm.loop !96

196:                                              ; preds = %193
  %197 = add nsw i32 %184, 1
  br label %198

198:                                              ; preds = %196, %181
  %199 = phi i32 [ %197, %196 ], [ %184, %181 ]
  %200 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %201 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void %200(ptr noundef %201) #6
  %202 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %203 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void %202(ptr noundef %203) #6
  %204 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %204(ptr noundef %18) #6
  br label %205

205:                                              ; preds = %8, %198
  %206 = phi i32 [ %199, %198 ], [ 0, %8 ]
  %207 = phi ptr [ %16, %198 ], [ null, %8 ]
  store i32 %206, ptr %6, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  ret ptr %207
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !37, i64 10}
!35 = !{!"MPoly", !36, i64 0, !36, i64 4, !39, i64 8, !37, i64 10, !37, i64 11}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !36, i64 4}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !37, i64 0}
!46 = !{!47, !45, i64 0}
!47 = !{!"UvVertMap", !45, i64 0, !45, i64 8}
!48 = !{!47, !45, i64 8}
!49 = !{!35, !36, i64 0}
!50 = !{!51, !37, i64 12}
!51 = !{!"UvMapVert", !45, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!52 = !{!51, !36, i64 8}
!53 = !{!51, !37, i64 13}
!54 = !{!55, !36, i64 0}
!55 = !{!"MLoop", !36, i64 0, !36, i64 4}
!56 = !{!51, !45, i64 0}
!57 = distinct !{!57, !42, !43}
!58 = distinct !{!58, !42, !43}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !37, i64 0}
!61 = distinct !{!61, !42, !43}
!62 = distinct !{!62, !42, !43}
!63 = distinct !{!63, !42, !43}
!64 = !{!65, !36, i64 8}
!65 = !{!"MeshElemMap", !45, i64 0, !36, i64 8}
!66 = distinct !{!66, !42, !43}
!67 = distinct !{!67, !42, !43}
!68 = !{!65, !45, i64 0}
!69 = distinct !{!69, !42, !43}
!70 = !{!36, !36, i64 0}
!71 = distinct !{!71, !42, !43}
!72 = distinct !{!72, !42, !43}
!73 = !{!74, !36, i64 0}
!74 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !39, i64 10}
!75 = !{!74, !36, i64 4}
!76 = distinct !{!76, !42, !43}
!77 = distinct !{!77, !42, !43}
!78 = distinct !{!78, !42, !43}
!79 = !{!55, !36, i64 4}
!80 = distinct !{!80, !42, !43}
!81 = distinct !{!81, !42, !43}
!82 = distinct !{!82, !42, !43}
!83 = distinct !{!83, !42, !43}
!84 = distinct !{!84, !42, !43}
!85 = distinct !{!85, !42, !43}
!86 = distinct !{!86, !42, !43}
!87 = distinct !{!87, !42, !43}
!88 = distinct !{!88, !42, !43}
!89 = distinct !{!89, !42, !43}
!90 = !{!74, !39, i64 10}
!91 = distinct !{!91, !42, !43}
!92 = distinct !{!92, !42, !43}
!93 = distinct !{!93, !42, !43}
!94 = distinct !{!94, !42, !43}
!95 = distinct !{!95, !42, !43}
!96 = distinct !{!96, !42, !43}
