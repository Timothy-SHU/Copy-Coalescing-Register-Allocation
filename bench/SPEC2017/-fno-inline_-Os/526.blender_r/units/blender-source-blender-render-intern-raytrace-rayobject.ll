; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.RayFace = type { [4 x float], [4 x float], [4 x float], [3 x float], i32, ptr, ptr }
%struct.VlakPrimitive = type { ptr, ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RayObjectAPI = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.RayObjectControl = type { ptr, ptr }
%struct.RayObject = type { ptr, %struct.RayObjectControl }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @RE_rayface_from_vlak(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 5
  store ptr %1, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 6
  store ptr %2, ptr %13, align 8, !tbaa !45
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef %0, ptr noundef %4) #9
  %14 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 1
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %14, ptr noundef %6) #9
  %15 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 2
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %15, ptr noundef %8) #9
  br i1 %11, label %18, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 3
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %17, ptr noundef nonnull %10) #9
  br label %18

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 1, %16 ], [ 0, %3 ]
  %20 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = ptrtoint ptr %0 to i64
  %22 = or i64 %21, 1
  %23 = inttoptr i64 %22 to ptr
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull ptr @RE_rayface_from_coords(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6) local_unnamed_addr #1 {
  %8 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 5
  store ptr %1, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 6
  store ptr %2, ptr %9, align 8, !tbaa !45
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef %0, ptr noundef %3) #9
  %10 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 1
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %10, ptr noundef %4) #9
  %11 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 2
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %11, ptr noundef %5) #9
  %12 = icmp eq ptr %6, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 3
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %14, ptr noundef nonnull %6) #9
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi i32 [ 1, %13 ], [ 0, %7 ]
  %17 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = ptrtoint ptr %0 to i64
  %19 = or i64 %18, 1
  %20 = inttoptr i64 %19 to ptr
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @RE_vlakprimitive_from_vlak(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  store ptr %1, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.VlakPrimitive, ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !48
  %5 = ptrtoint ptr %0 to i64
  %6 = or i64 %5, 3
  %7 = inttoptr i64 %6 to ptr
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @RE_rayobject_raycast(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %19, %3 ]
  %5 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = fdiv float 1.000000e+00, %6
  %8 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 %4
  store float %7, ptr %8, align 4, !tbaa !49
  %9 = fcmp olt float %7, 0.000000e+00
  %10 = shl nuw nsw i64 %4, 1
  %11 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %10
  %12 = or disjoint i64 %10, 1
  %13 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %12
  %14 = select i1 %9, i32 3, i32 0
  %15 = trunc i64 %4 to i32
  %16 = add nuw nsw i32 %14, %15
  store i32 %16, ptr %11, align 4, !tbaa !51
  %17 = select i1 %9, i32 0, i32 3
  %18 = add nuw nsw i32 %17, %15
  store i32 %18, ptr %13, align 4, !tbaa !51
  %19 = add nuw nsw i64 %4, 1
  %20 = icmp eq i64 %19, 3
  br i1 %20, label %21, label %3, !llvm.loop !52

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !54
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @RE_rayobject_intersect(ptr noundef nonnull %27, ptr noundef nonnull %1) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %25, %21
  %33 = tail call i32 @RE_rayobject_intersect(ptr noundef %0, ptr noundef nonnull %1) #9
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ 1, %29 ], [ %35, %32 ]
  ret i32 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @RE_rayobject_intersect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [3 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = alloca [3 x float], align 4
  %42 = alloca [3 x float], align 4
  %43 = alloca [3 x float], align 4
  %44 = alloca [3 x float], align 4
  %45 = alloca [3 x float], align 4
  %46 = alloca [3 x float], align 4
  %47 = alloca %struct.RayFace, align 8
  %48 = alloca %struct.RayFace, align 8
  %49 = alloca %struct.RayFace, align 8
  %50 = ptrtoint ptr %0 to i64
  %51 = and i64 %50, 3
  switch i64 %51, label %702 [
    i64 1, label %52
    i64 3, label %362
    i64 2, label %696
  ]

52:                                               ; preds = %2
  %53 = and i64 %50, -4
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = icmp ne ptr %56, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %702, label %66

66:                                               ; preds = %60, %52
  %67 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 10
  %68 = load i32, ptr %67, align 4, !tbaa !60
  switch i32 %68, label %154 [
    i32 1, label %69
    i32 2, label %103
    i32 3, label %141
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !45
  %72 = getelementptr inbounds %struct.VlakRen, ptr %71, i64 0, i32 7
  %73 = load i8, ptr %72, align 1, !tbaa !61
  %74 = icmp sgt i8 %73, -1
  br i1 %74, label %702, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !54
  %78 = icmp eq i32 %77, 1
  %79 = getelementptr inbounds %struct.VlakRen, ptr %71, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  br i1 %78, label %81, label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.Material, ptr %80, i64 0, i32 51
  %83 = load i32, ptr %82, align 4, !tbaa !63
  %84 = lshr i32 %83, 13
  %85 = and i32 %84, 1
  %86 = xor i32 %85, 1
  br label %100

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.Material, ptr %80, i64 0, i32 53
  %89 = load i32, ptr %88, align 4, !tbaa !70
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %702, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 8
  %94 = load i32, ptr %93, align 4, !tbaa !71
  %95 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %58, i64 0, i32 7
  %96 = load i32, ptr %95, align 8, !tbaa !72
  %97 = and i32 %96, %94
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %81, %92
  %101 = phi i32 [ %86, %81 ], [ %99, %92 ]
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %702, label %154

103:                                              ; preds = %66
  %104 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !45
  %106 = getelementptr inbounds %struct.VlakRen, ptr %105, i64 0, i32 7
  %107 = load i8, ptr %106, align 1, !tbaa !61
  %108 = icmp sgt i8 %107, -1
  br i1 %108, label %702, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %111 = load i32, ptr %110, align 8, !tbaa !54
  %112 = icmp eq i32 %111, 1
  %113 = getelementptr inbounds %struct.VlakRen, ptr %105, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !62
  br i1 %112, label %115, label %121

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.Material, ptr %114, i64 0, i32 51
  %117 = load i32, ptr %116, align 4, !tbaa !63
  %118 = lshr i32 %117, 13
  %119 = and i32 %118, 1
  %120 = xor i32 %119, 1
  br label %134

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.Material, ptr %114, i64 0, i32 53
  %123 = load i32, ptr %122, align 4, !tbaa !70
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %702, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 8
  %128 = load i32, ptr %127, align 4, !tbaa !71
  %129 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %58, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !72
  %131 = and i32 %130, %128
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  br label %134

134:                                              ; preds = %115, %126
  %135 = phi i32 [ %120, %115 ], [ %133, %126 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %702, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.Material, ptr %114, i64 0, i32 2
  %139 = load i16, ptr %138, align 8, !tbaa !74
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %154, label %702

141:                                              ; preds = %66
  %142 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %58, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !75
  %144 = getelementptr inbounds %struct.ObjectRen, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !76
  %146 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 11
  %147 = load ptr, ptr %146, align 8, !tbaa !78
  %148 = icmp eq ptr %145, %147
  br i1 %148, label %702, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.Object, ptr %145, i64 0, i32 53
  %151 = load i16, ptr %150, align 4, !tbaa !79
  %152 = and i16 %151, 1
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %702, label %154

154:                                              ; preds = %149, %137, %100, %66
  %155 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %156 = load float, ptr %155, align 8, !tbaa !83
  %157 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #10
  %158 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 4
  %159 = load i32, ptr %158, align 4, !tbaa !84
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %36, ptr noundef nonnull %54) #9
  %160 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 1
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %37, ptr noundef nonnull %160) #9
  %161 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %38, ptr noundef nonnull %161) #9
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %43, ptr noundef nonnull %157) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %40, ptr noundef nonnull %38, ptr noundef nonnull %37) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %41, ptr noundef nonnull %38, ptr noundef nonnull %36) #9
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %41) #9
  %162 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %40, ptr noundef nonnull %42) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %44, ptr noundef nonnull %1, ptr noundef nonnull %38) #9
  %163 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %44, ptr noundef nonnull %42) #9
  %164 = fcmp une float %162, 0.000000e+00
  br i1 %164, label %165, label %186

165:                                              ; preds = %154
  %166 = fdiv float 1.000000e+00, %162
  %167 = fmul float %166, %163
  %168 = fcmp olt float %167, 0xBE80000000000000
  %169 = fcmp ogt float %167, 0xBFEFFFFFC0000000
  %170 = and i1 %168, %169
  br i1 %170, label %171, label %186

171:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %45, ptr noundef nonnull %44, ptr noundef nonnull %40) #9
  %172 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %45, ptr noundef nonnull %43) #9
  %173 = fmul float %166, %172
  %174 = fcmp olt float %173, 0xBE80000000000000
  %175 = fadd float %167, %173
  %176 = fcmp ogt float %175, 0xBFEFFFFFC0000000
  %177 = and i1 %174, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %45, ptr noundef nonnull %41) #9
  %180 = fmul float %166, %179
  %181 = fcmp ogt float %180, 0x3E80000000000000
  %182 = fcmp olt float %180, %156
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  br label %217

185:                                              ; preds = %178, %171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  br label %186

186:                                              ; preds = %185, %165, %154
  %187 = icmp eq i32 %159, 0
  br i1 %187, label %216, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %39, ptr noundef nonnull %189) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %40, ptr noundef nonnull %38, ptr noundef nonnull %39) #9
  %190 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %40, ptr noundef nonnull %42) #9
  %191 = fcmp une float %190, 0.000000e+00
  br i1 %191, label %192, label %216

192:                                              ; preds = %188
  %193 = fdiv float 1.000000e+00, %190
  %194 = fmul float %163, %193
  %195 = fcmp olt float %194, 0xBE80000000000000
  %196 = fcmp ogt float %194, 0xBFEFFFFFC0000000
  %197 = and i1 %195, %196
  br i1 %197, label %198, label %216

198:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %46, ptr noundef nonnull %44, ptr noundef nonnull %40) #9
  %199 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %46, ptr noundef nonnull %43) #9
  %200 = fmul float %193, %199
  %201 = fcmp olt float %200, 0xBE80000000000000
  %202 = fadd float %194, %200
  %203 = fcmp ogt float %202, 0xBFEFFFFFC0000000
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %46, ptr noundef nonnull %41) #9
  %207 = fmul float %193, %206
  %208 = fcmp ogt float %207, 0x3E80000000000000
  %209 = fcmp olt float %207, %156
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %212, label %211

211:                                              ; preds = %205, %198
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  br label %216

212:                                              ; preds = %205
  %213 = fadd float %194, 1.000000e+00
  %214 = fadd float %213, %200
  %215 = fneg float %214
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  br label %217

216:                                              ; preds = %211, %192, %188, %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  br label %702

217:                                              ; preds = %184, %212
  %218 = phi float [ %180, %184 ], [ %207, %212 ]
  %219 = phi float [ %167, %184 ], [ %215, %212 ]
  %220 = phi float [ %173, %184 ], [ %200, %212 ]
  %221 = phi i32 [ 1, %184 ], [ 2, %212 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  %222 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 9
  %223 = load i32, ptr %222, align 8, !tbaa !85
  %224 = and i32 %223, 2
  %225 = icmp eq i32 %224, 0
  %226 = fcmp uge float %218, 0x3FB99999A0000000
  %227 = or i1 %226, %225
  %228 = or i1 %59, %227
  br i1 %228, label %355, label %229

229:                                              ; preds = %217
  %230 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !59
  %232 = getelementptr inbounds %struct.RayFace, ptr %54, i64 0, i32 6
  %233 = load ptr, ptr %232, align 8, !tbaa !45
  %234 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %56, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !75
  br label %236

236:                                              ; preds = %229, %277
  %237 = phi i8 [ 0, %229 ], [ %279, %277 ]
  %238 = phi i32 [ 0, %229 ], [ %280, %277 ]
  %239 = phi ptr [ %231, %229 ], [ %281, %277 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !86
  %241 = icmp eq ptr %240, null
  br i1 %241, label %355, label %242

242:                                              ; preds = %236
  %243 = tail call ptr @RE_vertren_get_origindex(ptr noundef %235, ptr noundef nonnull %240, i32 noundef 0) #9
  %244 = and i8 %237, 1
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %286

246:                                              ; preds = %242
  %247 = icmp eq ptr %243, null
  br label %248

248:                                              ; preds = %246, %269
  %249 = phi i8 [ %237, %246 ], [ %270, %269 ]
  %250 = phi i32 [ 0, %246 ], [ %271, %269 ]
  %251 = phi ptr [ %233, %246 ], [ %272, %269 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !86
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = and i8 %249, 1
  br label %277

256:                                              ; preds = %248
  %257 = load ptr, ptr %239, align 8, !tbaa !86
  %258 = icmp eq ptr %257, %252
  %259 = select i1 %258, i1 true, i1 %247
  %260 = select i1 %258, i8 1, i8 %249
  br i1 %259, label %269, label %261

261:                                              ; preds = %256
  %262 = tail call ptr @RE_vertren_get_origindex(ptr noundef %235, ptr noundef nonnull %252, i32 noundef 0) #9
  %263 = icmp eq ptr %262, null
  br i1 %263, label %269, label %264

264:                                              ; preds = %261
  %265 = load i32, ptr %243, align 4, !tbaa !51
  %266 = load i32, ptr %262, align 4, !tbaa !51
  %267 = icmp eq i32 %265, %266
  %268 = select i1 %267, i8 1, i8 %249
  br label %269

269:                                              ; preds = %256, %264, %261
  %270 = phi i8 [ %249, %261 ], [ %260, %256 ], [ %268, %264 ]
  %271 = add nuw nsw i32 %250, 1
  %272 = getelementptr inbounds ptr, ptr %251, i64 1
  %273 = and i8 %270, 1
  %274 = icmp eq i8 %273, 0
  %275 = icmp ult i32 %250, 3
  %276 = select i1 %274, i1 %275, i1 false
  br i1 %276, label %248, label %277, !llvm.loop !87

277:                                              ; preds = %269, %254
  %278 = phi i8 [ %255, %254 ], [ %273, %269 ]
  %279 = phi i8 [ %249, %254 ], [ %270, %269 ]
  %280 = add nuw nsw i32 %238, 1
  %281 = getelementptr inbounds ptr, ptr %239, i64 1
  %282 = icmp eq i8 %278, 0
  %283 = icmp ult i32 %238, 3
  %284 = select i1 %282, i1 %283, i1 false
  br i1 %284, label %236, label %285, !llvm.loop !88

285:                                              ; preds = %277
  br i1 %282, label %355, label %286

286:                                              ; preds = %242, %285
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %47) #10
  %287 = load ptr, ptr %55, align 8, !tbaa !58
  %288 = load ptr, ptr %230, align 8, !tbaa !59
  %289 = load ptr, ptr %288, align 8, !tbaa !34
  %290 = getelementptr inbounds %struct.VlakRen, ptr %288, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !40
  %292 = getelementptr inbounds %struct.VlakRen, ptr %288, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !41
  %294 = getelementptr inbounds %struct.VlakRen, ptr %288, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !42
  %296 = icmp eq ptr %295, null
  %297 = getelementptr inbounds %struct.RayFace, ptr %47, i64 0, i32 5
  store ptr %287, ptr %297, align 8, !tbaa !43
  %298 = getelementptr inbounds %struct.RayFace, ptr %47, i64 0, i32 6
  store ptr %288, ptr %298, align 8, !tbaa !45
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %47, ptr noundef %289) #9
  %299 = getelementptr inbounds %struct.RayFace, ptr %47, i64 0, i32 1
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %299, ptr noundef %291) #9
  %300 = getelementptr inbounds %struct.RayFace, ptr %47, i64 0, i32 2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %300, ptr noundef %293) #9
  br i1 %296, label %303, label %301

301:                                              ; preds = %286
  %302 = getelementptr inbounds %struct.RayFace, ptr %47, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %302, ptr noundef nonnull %295) #9
  br label %303

303:                                              ; preds = %286, %301
  %304 = phi i32 [ 1, %301 ], [ 0, %286 ]
  %305 = getelementptr inbounds %struct.RayFace, ptr %47, i64 0, i32 4
  store i32 %304, ptr %305, align 4
  %306 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %287, i64 0, i32 19
  %307 = load i32, ptr %306, align 8, !tbaa !89
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %287, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %310, ptr noundef nonnull %47) #9
  call void @mul_m4_v3(ptr noundef nonnull %310, ptr noundef nonnull %299) #9
  call void @mul_m4_v3(ptr noundef nonnull %310, ptr noundef nonnull %300) #9
  %311 = load i32, ptr %305, align 4, !tbaa !84
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.RayFace, ptr %47, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %310, ptr noundef nonnull %314) #9
  %315 = load i32, ptr %305, align 4, !tbaa !84
  br label %316

316:                                              ; preds = %303, %309, %313
  %317 = phi i32 [ %304, %303 ], [ 0, %309 ], [ %315, %313 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %14, ptr noundef nonnull %47) #9
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %15, ptr noundef nonnull %299) #9
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %16, ptr noundef nonnull %300) #9
  call fastcc void @_ZL12negate_v3_v3PfPKf(ptr noundef nonnull %21, ptr noundef nonnull %157) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %15) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %19, ptr noundef nonnull %16, ptr noundef nonnull %14) #9
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %19) #9
  %318 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %18, ptr noundef nonnull %20) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %22, ptr noundef nonnull %1, ptr noundef nonnull %16) #9
  %319 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %22, ptr noundef nonnull %20) #9
  %320 = fcmp une float %318, 0.000000e+00
  br i1 %320, label %321, label %334

321:                                              ; preds = %316
  %322 = fdiv float 1.000000e+00, %318
  %323 = fmul float %322, %319
  %324 = fcmp olt float %323, 0xBE80000000000000
  %325 = fcmp ogt float %323, 0xBFEFFFFFC0000000
  %326 = and i1 %324, %325
  br i1 %326, label %327, label %334

327:                                              ; preds = %321
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %23, ptr noundef nonnull %22, ptr noundef nonnull %18) #9
  %328 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %23, ptr noundef nonnull %21) #9
  %329 = fmul float %322, %328
  %330 = fcmp olt float %329, 0xBE80000000000000
  %331 = fadd float %323, %329
  %332 = fcmp ogt float %331, 0xBFEFFFFFC0000000
  %333 = and i1 %330, %332
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  br i1 %333, label %353, label %334

334:                                              ; preds = %327, %321, %316
  %335 = icmp eq i32 %317, 0
  br i1 %335, label %354, label %336

336:                                              ; preds = %334
  %337 = getelementptr inbounds %struct.RayFace, ptr %47, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %17, ptr noundef nonnull %337) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %17) #9
  %338 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %18, ptr noundef nonnull %20) #9
  %339 = fcmp une float %338, 0.000000e+00
  br i1 %339, label %340, label %354

340:                                              ; preds = %336
  %341 = fdiv float 1.000000e+00, %338
  %342 = fmul float %319, %341
  %343 = fcmp olt float %342, 0xBE80000000000000
  %344 = fcmp ogt float %342, 0xBFEFFFFFC0000000
  %345 = and i1 %343, %344
  br i1 %345, label %346, label %354

346:                                              ; preds = %340
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %24, ptr noundef nonnull %22, ptr noundef nonnull %18) #9
  %347 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %24, ptr noundef nonnull %21) #9
  %348 = fmul float %341, %347
  %349 = fcmp uge float %348, 0xBE80000000000000
  %350 = fadd float %342, %348
  %351 = fcmp ule float %350, 0xBFEFFFFFC0000000
  %352 = or i1 %349, %351
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  br i1 %352, label %354, label %353

353:                                              ; preds = %327, %346
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %47) #10
  br label %355

354:                                              ; preds = %334, %336, %340, %346
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %47) #10
  br label %702

355:                                              ; preds = %236, %217, %353, %285
  %356 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 14
  store i32 %221, ptr %356, align 8, !tbaa !90
  store float %218, ptr %155, align 8, !tbaa !83
  %357 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 12
  store float %220, ptr %357, align 8, !tbaa !91
  %358 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 13
  store float %219, ptr %358, align 4, !tbaa !92
  %359 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15
  %360 = load <2 x ptr>, ptr %57, align 8, !tbaa !86
  store <2 x ptr> %360, ptr %359, align 8, !tbaa !86
  %361 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 17
  store ptr %0, ptr %361, align 8, !tbaa !57
  br label %702

362:                                              ; preds = %2
  %363 = and i64 %50, -4
  %364 = inttoptr i64 %363 to ptr
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %49) #10
  %365 = load ptr, ptr %364, align 8, !tbaa !46
  %366 = getelementptr inbounds %struct.VlakPrimitive, ptr %364, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !48
  %368 = load ptr, ptr %367, align 8, !tbaa !34
  %369 = getelementptr inbounds %struct.VlakRen, ptr %367, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !40
  %371 = getelementptr inbounds %struct.VlakRen, ptr %367, i64 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !41
  %373 = getelementptr inbounds %struct.VlakRen, ptr %367, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !42
  %375 = icmp eq ptr %374, null
  %376 = getelementptr inbounds %struct.RayFace, ptr %49, i64 0, i32 5
  store ptr %365, ptr %376, align 8, !tbaa !43
  %377 = getelementptr inbounds %struct.RayFace, ptr %49, i64 0, i32 6
  store ptr %367, ptr %377, align 8, !tbaa !45
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %49, ptr noundef %368) #9
  %378 = getelementptr inbounds %struct.RayFace, ptr %49, i64 0, i32 1
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %378, ptr noundef %370) #9
  %379 = getelementptr inbounds %struct.RayFace, ptr %49, i64 0, i32 2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %379, ptr noundef %372) #9
  br i1 %375, label %382, label %380

380:                                              ; preds = %362
  %381 = getelementptr inbounds %struct.RayFace, ptr %49, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %381, ptr noundef nonnull %374) #9
  br label %382

382:                                              ; preds = %362, %380
  %383 = phi i32 [ 1, %380 ], [ 0, %362 ]
  %384 = getelementptr inbounds %struct.RayFace, ptr %49, i64 0, i32 4
  store i32 %383, ptr %384, align 4
  %385 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %365, i64 0, i32 19
  %386 = load i32, ptr %385, align 8, !tbaa !89
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %394, label %388

388:                                              ; preds = %382
  %389 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %365, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %389, ptr noundef nonnull %49) #9
  call void @mul_m4_v3(ptr noundef nonnull %389, ptr noundef nonnull %378) #9
  call void @mul_m4_v3(ptr noundef nonnull %389, ptr noundef nonnull %379) #9
  %390 = load i32, ptr %384, align 4, !tbaa !84
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %394, label %392

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.RayFace, ptr %49, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %389, ptr noundef nonnull %393) #9
  br label %394

394:                                              ; preds = %382, %388, %392
  %395 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16
  %396 = load ptr, ptr %395, align 8, !tbaa !58
  %397 = load ptr, ptr %376, align 8, !tbaa !43
  %398 = icmp ne ptr %396, %397
  br i1 %398, label %404, label %399

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !59
  %402 = load ptr, ptr %377, align 8, !tbaa !45
  %403 = icmp eq ptr %401, %402
  br i1 %403, label %694, label %404

404:                                              ; preds = %399, %394
  %405 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 10
  %406 = load i32, ptr %405, align 4, !tbaa !60
  switch i32 %406, label %490 [
    i32 1, label %407
    i32 2, label %440
    i32 3, label %477
  ]

407:                                              ; preds = %404
  %408 = load ptr, ptr %377, align 8, !tbaa !45
  %409 = getelementptr inbounds %struct.VlakRen, ptr %408, i64 0, i32 7
  %410 = load i8, ptr %409, align 1, !tbaa !61
  %411 = icmp sgt i8 %410, -1
  br i1 %411, label %694, label %412

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %414 = load i32, ptr %413, align 8, !tbaa !54
  %415 = icmp eq i32 %414, 1
  %416 = getelementptr inbounds %struct.VlakRen, ptr %408, i64 0, i32 5
  %417 = load ptr, ptr %416, align 8, !tbaa !62
  br i1 %415, label %418, label %424

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.Material, ptr %417, i64 0, i32 51
  %420 = load i32, ptr %419, align 4, !tbaa !63
  %421 = lshr i32 %420, 13
  %422 = and i32 %421, 1
  %423 = xor i32 %422, 1
  br label %437

424:                                              ; preds = %412
  %425 = getelementptr inbounds %struct.Material, ptr %417, i64 0, i32 53
  %426 = load i32, ptr %425, align 4, !tbaa !70
  %427 = and i32 %426, 1
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %694, label %429

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 8
  %431 = load i32, ptr %430, align 4, !tbaa !71
  %432 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %397, i64 0, i32 7
  %433 = load i32, ptr %432, align 8, !tbaa !72
  %434 = and i32 %433, %431
  %435 = icmp ne i32 %434, 0
  %436 = zext i1 %435 to i32
  br label %437

437:                                              ; preds = %418, %429
  %438 = phi i32 [ %423, %418 ], [ %436, %429 ]
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %694, label %490

440:                                              ; preds = %404
  %441 = load ptr, ptr %377, align 8, !tbaa !45
  %442 = getelementptr inbounds %struct.VlakRen, ptr %441, i64 0, i32 7
  %443 = load i8, ptr %442, align 1, !tbaa !61
  %444 = icmp sgt i8 %443, -1
  br i1 %444, label %694, label %445

445:                                              ; preds = %440
  %446 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %447 = load i32, ptr %446, align 8, !tbaa !54
  %448 = icmp eq i32 %447, 1
  %449 = getelementptr inbounds %struct.VlakRen, ptr %441, i64 0, i32 5
  %450 = load ptr, ptr %449, align 8, !tbaa !62
  br i1 %448, label %451, label %457

451:                                              ; preds = %445
  %452 = getelementptr inbounds %struct.Material, ptr %450, i64 0, i32 51
  %453 = load i32, ptr %452, align 4, !tbaa !63
  %454 = lshr i32 %453, 13
  %455 = and i32 %454, 1
  %456 = xor i32 %455, 1
  br label %470

457:                                              ; preds = %445
  %458 = getelementptr inbounds %struct.Material, ptr %450, i64 0, i32 53
  %459 = load i32, ptr %458, align 4, !tbaa !70
  %460 = and i32 %459, 1
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %694, label %462

462:                                              ; preds = %457
  %463 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 8
  %464 = load i32, ptr %463, align 4, !tbaa !71
  %465 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %397, i64 0, i32 7
  %466 = load i32, ptr %465, align 8, !tbaa !72
  %467 = and i32 %466, %464
  %468 = icmp ne i32 %467, 0
  %469 = zext i1 %468 to i32
  br label %470

470:                                              ; preds = %451, %462
  %471 = phi i32 [ %456, %451 ], [ %469, %462 ]
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %694, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds %struct.Material, ptr %450, i64 0, i32 2
  %475 = load i16, ptr %474, align 8, !tbaa !74
  %476 = icmp eq i16 %475, 0
  br i1 %476, label %490, label %694

477:                                              ; preds = %404
  %478 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %397, i64 0, i32 2
  %479 = load ptr, ptr %478, align 8, !tbaa !75
  %480 = getelementptr inbounds %struct.ObjectRen, ptr %479, i64 0, i32 2
  %481 = load ptr, ptr %480, align 8, !tbaa !76
  %482 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 11
  %483 = load ptr, ptr %482, align 8, !tbaa !78
  %484 = icmp eq ptr %481, %483
  br i1 %484, label %694, label %485

485:                                              ; preds = %477
  %486 = getelementptr inbounds %struct.Object, ptr %481, i64 0, i32 53
  %487 = load i16, ptr %486, align 4, !tbaa !79
  %488 = and i16 %487, 1
  %489 = icmp eq i16 %488, 0
  br i1 %489, label %694, label %490

490:                                              ; preds = %485, %473, %437, %404
  %491 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %492 = load float, ptr %491, align 8, !tbaa !83
  %493 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %494 = load i32, ptr %384, align 4, !tbaa !84
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %25, ptr noundef nonnull %49) #9
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %26, ptr noundef nonnull %378) #9
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %27, ptr noundef nonnull %379) #9
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %32, ptr noundef nonnull %493) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %29, ptr noundef nonnull %27, ptr noundef nonnull %26) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %30, ptr noundef nonnull %27, ptr noundef nonnull %25) #9
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %30) #9
  %495 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %29, ptr noundef nonnull %31) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %33, ptr noundef nonnull %1, ptr noundef nonnull %27) #9
  %496 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %33, ptr noundef nonnull %31) #9
  %497 = fcmp une float %495, 0.000000e+00
  br i1 %497, label %498, label %519

498:                                              ; preds = %490
  %499 = fdiv float 1.000000e+00, %495
  %500 = fmul float %499, %496
  %501 = fcmp olt float %500, 0xBE80000000000000
  %502 = fcmp ogt float %500, 0xBFEFFFFFC0000000
  %503 = and i1 %501, %502
  br i1 %503, label %504, label %519

504:                                              ; preds = %498
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %34, ptr noundef nonnull %33, ptr noundef nonnull %29) #9
  %505 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %34, ptr noundef nonnull %32) #9
  %506 = fmul float %499, %505
  %507 = fcmp olt float %506, 0xBE80000000000000
  %508 = fadd float %500, %506
  %509 = fcmp ogt float %508, 0xBFEFFFFFC0000000
  %510 = and i1 %507, %509
  br i1 %510, label %511, label %518

511:                                              ; preds = %504
  %512 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %34, ptr noundef nonnull %30) #9
  %513 = fmul float %499, %512
  %514 = fcmp ogt float %513, 0x3E80000000000000
  %515 = fcmp olt float %513, %492
  %516 = select i1 %514, i1 %515, i1 false
  br i1 %516, label %517, label %518

517:                                              ; preds = %511
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  br label %550

518:                                              ; preds = %511, %504
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  br label %519

519:                                              ; preds = %518, %498, %490
  %520 = icmp eq i32 %494, 0
  br i1 %520, label %549, label %521

521:                                              ; preds = %519
  %522 = getelementptr inbounds %struct.RayFace, ptr %49, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %28, ptr noundef nonnull %522) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %29, ptr noundef nonnull %27, ptr noundef nonnull %28) #9
  %523 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %29, ptr noundef nonnull %31) #9
  %524 = fcmp une float %523, 0.000000e+00
  br i1 %524, label %525, label %549

525:                                              ; preds = %521
  %526 = fdiv float 1.000000e+00, %523
  %527 = fmul float %496, %526
  %528 = fcmp olt float %527, 0xBE80000000000000
  %529 = fcmp ogt float %527, 0xBFEFFFFFC0000000
  %530 = and i1 %528, %529
  br i1 %530, label %531, label %549

531:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %35, ptr noundef nonnull %33, ptr noundef nonnull %29) #9
  %532 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %35, ptr noundef nonnull %32) #9
  %533 = fmul float %526, %532
  %534 = fcmp olt float %533, 0xBE80000000000000
  %535 = fadd float %527, %533
  %536 = fcmp ogt float %535, 0xBFEFFFFFC0000000
  %537 = and i1 %534, %536
  br i1 %537, label %538, label %544

538:                                              ; preds = %531
  %539 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %35, ptr noundef nonnull %30) #9
  %540 = fmul float %526, %539
  %541 = fcmp ogt float %540, 0x3E80000000000000
  %542 = fcmp olt float %540, %492
  %543 = select i1 %541, i1 %542, i1 false
  br i1 %543, label %545, label %544

544:                                              ; preds = %538, %531
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  br label %549

545:                                              ; preds = %538
  %546 = fadd float %527, 1.000000e+00
  %547 = fadd float %546, %533
  %548 = fneg float %547
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  br label %550

549:                                              ; preds = %544, %525, %521, %519
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  br label %694

550:                                              ; preds = %517, %545
  %551 = phi float [ %513, %517 ], [ %540, %545 ]
  %552 = phi float [ %500, %517 ], [ %548, %545 ]
  %553 = phi float [ %506, %517 ], [ %533, %545 ]
  %554 = phi i32 [ 1, %517 ], [ 2, %545 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  %555 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 9
  %556 = load i32, ptr %555, align 8, !tbaa !85
  %557 = and i32 %556, 2
  %558 = icmp eq i32 %557, 0
  %559 = fcmp uge float %551, 0x3FB99999A0000000
  %560 = or i1 %559, %558
  %561 = or i1 %398, %560
  br i1 %561, label %687, label %562

562:                                              ; preds = %550
  %563 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !59
  %565 = load ptr, ptr %377, align 8, !tbaa !45
  %566 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %396, i64 0, i32 2
  %567 = load ptr, ptr %566, align 8, !tbaa !75
  br label %568

568:                                              ; preds = %562, %609
  %569 = phi i8 [ 0, %562 ], [ %611, %609 ]
  %570 = phi i32 [ 0, %562 ], [ %612, %609 ]
  %571 = phi ptr [ %564, %562 ], [ %613, %609 ]
  %572 = load ptr, ptr %571, align 8, !tbaa !86
  %573 = icmp eq ptr %572, null
  br i1 %573, label %687, label %574

574:                                              ; preds = %568
  %575 = call ptr @RE_vertren_get_origindex(ptr noundef %567, ptr noundef nonnull %572, i32 noundef 0) #9
  %576 = and i8 %569, 1
  %577 = icmp eq i8 %576, 0
  br i1 %577, label %578, label %618

578:                                              ; preds = %574
  %579 = icmp eq ptr %575, null
  br label %580

580:                                              ; preds = %578, %601
  %581 = phi i8 [ %569, %578 ], [ %602, %601 ]
  %582 = phi i32 [ 0, %578 ], [ %603, %601 ]
  %583 = phi ptr [ %565, %578 ], [ %604, %601 ]
  %584 = load ptr, ptr %583, align 8, !tbaa !86
  %585 = icmp eq ptr %584, null
  br i1 %585, label %586, label %588

586:                                              ; preds = %580
  %587 = and i8 %581, 1
  br label %609

588:                                              ; preds = %580
  %589 = load ptr, ptr %571, align 8, !tbaa !86
  %590 = icmp eq ptr %589, %584
  %591 = select i1 %590, i1 true, i1 %579
  %592 = select i1 %590, i8 1, i8 %581
  br i1 %591, label %601, label %593

593:                                              ; preds = %588
  %594 = call ptr @RE_vertren_get_origindex(ptr noundef %567, ptr noundef nonnull %584, i32 noundef 0) #9
  %595 = icmp eq ptr %594, null
  br i1 %595, label %601, label %596

596:                                              ; preds = %593
  %597 = load i32, ptr %575, align 4, !tbaa !51
  %598 = load i32, ptr %594, align 4, !tbaa !51
  %599 = icmp eq i32 %597, %598
  %600 = select i1 %599, i8 1, i8 %581
  br label %601

601:                                              ; preds = %588, %596, %593
  %602 = phi i8 [ %581, %593 ], [ %592, %588 ], [ %600, %596 ]
  %603 = add nuw nsw i32 %582, 1
  %604 = getelementptr inbounds ptr, ptr %583, i64 1
  %605 = and i8 %602, 1
  %606 = icmp eq i8 %605, 0
  %607 = icmp ult i32 %582, 3
  %608 = select i1 %606, i1 %607, i1 false
  br i1 %608, label %580, label %609, !llvm.loop !87

609:                                              ; preds = %601, %586
  %610 = phi i8 [ %587, %586 ], [ %605, %601 ]
  %611 = phi i8 [ %581, %586 ], [ %602, %601 ]
  %612 = add nuw nsw i32 %570, 1
  %613 = getelementptr inbounds ptr, ptr %571, i64 1
  %614 = icmp eq i8 %610, 0
  %615 = icmp ult i32 %570, 3
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %568, label %617, !llvm.loop !88

617:                                              ; preds = %609
  br i1 %614, label %687, label %618

618:                                              ; preds = %574, %617
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %48) #10
  %619 = load ptr, ptr %395, align 8, !tbaa !58
  %620 = load ptr, ptr %563, align 8, !tbaa !59
  %621 = load ptr, ptr %620, align 8, !tbaa !34
  %622 = getelementptr inbounds %struct.VlakRen, ptr %620, i64 0, i32 1
  %623 = load ptr, ptr %622, align 8, !tbaa !40
  %624 = getelementptr inbounds %struct.VlakRen, ptr %620, i64 0, i32 2
  %625 = load ptr, ptr %624, align 8, !tbaa !41
  %626 = getelementptr inbounds %struct.VlakRen, ptr %620, i64 0, i32 3
  %627 = load ptr, ptr %626, align 8, !tbaa !42
  %628 = icmp eq ptr %627, null
  %629 = getelementptr inbounds %struct.RayFace, ptr %48, i64 0, i32 5
  store ptr %619, ptr %629, align 8, !tbaa !43
  %630 = getelementptr inbounds %struct.RayFace, ptr %48, i64 0, i32 6
  store ptr %620, ptr %630, align 8, !tbaa !45
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %48, ptr noundef %621) #9
  %631 = getelementptr inbounds %struct.RayFace, ptr %48, i64 0, i32 1
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %631, ptr noundef %623) #9
  %632 = getelementptr inbounds %struct.RayFace, ptr %48, i64 0, i32 2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %632, ptr noundef %625) #9
  br i1 %628, label %635, label %633

633:                                              ; preds = %618
  %634 = getelementptr inbounds %struct.RayFace, ptr %48, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %634, ptr noundef nonnull %627) #9
  br label %635

635:                                              ; preds = %618, %633
  %636 = phi i32 [ 1, %633 ], [ 0, %618 ]
  %637 = getelementptr inbounds %struct.RayFace, ptr %48, i64 0, i32 4
  store i32 %636, ptr %637, align 4
  %638 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %619, i64 0, i32 19
  %639 = load i32, ptr %638, align 8, !tbaa !89
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %648, label %641

641:                                              ; preds = %635
  %642 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %619, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %642, ptr noundef nonnull %48) #9
  call void @mul_m4_v3(ptr noundef nonnull %642, ptr noundef nonnull %631) #9
  call void @mul_m4_v3(ptr noundef nonnull %642, ptr noundef nonnull %632) #9
  %643 = load i32, ptr %637, align 4, !tbaa !84
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %648, label %645

645:                                              ; preds = %641
  %646 = getelementptr inbounds %struct.RayFace, ptr %48, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %642, ptr noundef nonnull %646) #9
  %647 = load i32, ptr %637, align 4, !tbaa !84
  br label %648

648:                                              ; preds = %635, %641, %645
  %649 = phi i32 [ %636, %635 ], [ 0, %641 ], [ %647, %645 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %3, ptr noundef nonnull %48) #9
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %4, ptr noundef nonnull %631) #9
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %5, ptr noundef nonnull %632) #9
  call fastcc void @_ZL12negate_v3_v3PfPKf(ptr noundef nonnull %10, ptr noundef nonnull %493) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %3) #9
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8) #9
  %650 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %7, ptr noundef nonnull %9) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %11, ptr noundef nonnull %1, ptr noundef nonnull %5) #9
  %651 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %11, ptr noundef nonnull %9) #9
  %652 = fcmp une float %650, 0.000000e+00
  br i1 %652, label %653, label %666

653:                                              ; preds = %648
  %654 = fdiv float 1.000000e+00, %650
  %655 = fmul float %654, %651
  %656 = fcmp olt float %655, 0xBE80000000000000
  %657 = fcmp ogt float %655, 0xBFEFFFFFC0000000
  %658 = and i1 %656, %657
  br i1 %658, label %659, label %666

659:                                              ; preds = %653
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %7) #9
  %660 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %12, ptr noundef nonnull %10) #9
  %661 = fmul float %654, %660
  %662 = fcmp olt float %661, 0xBE80000000000000
  %663 = fadd float %655, %661
  %664 = fcmp ogt float %663, 0xBFEFFFFFC0000000
  %665 = and i1 %662, %664
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  br i1 %665, label %685, label %666

666:                                              ; preds = %659, %653, %648
  %667 = icmp eq i32 %649, 0
  br i1 %667, label %686, label %668

668:                                              ; preds = %666
  %669 = getelementptr inbounds %struct.RayFace, ptr %48, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %6, ptr noundef nonnull %669) #9
  call fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %670 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %7, ptr noundef nonnull %9) #9
  %671 = fcmp une float %670, 0.000000e+00
  br i1 %671, label %672, label %686

672:                                              ; preds = %668
  %673 = fdiv float 1.000000e+00, %670
  %674 = fmul float %651, %673
  %675 = fcmp olt float %674, 0xBE80000000000000
  %676 = fcmp ogt float %674, 0xBFEFFFFFC0000000
  %677 = and i1 %675, %676
  br i1 %677, label %678, label %686

678:                                              ; preds = %672
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  call fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %7) #9
  %679 = call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef nonnull %13, ptr noundef nonnull %10) #9
  %680 = fmul float %673, %679
  %681 = fcmp uge float %680, 0xBE80000000000000
  %682 = fadd float %674, %680
  %683 = fcmp ule float %682, 0xBFEFFFFFC0000000
  %684 = or i1 %681, %683
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  br i1 %684, label %686, label %685

685:                                              ; preds = %659, %678
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %48) #10
  br label %687

686:                                              ; preds = %666, %668, %672, %678
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %48) #10
  br label %694

687:                                              ; preds = %568, %550, %685, %617
  %688 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 14
  store i32 %554, ptr %688, align 8, !tbaa !90
  store float %551, ptr %491, align 8, !tbaa !83
  %689 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 12
  store float %553, ptr %689, align 8, !tbaa !91
  %690 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 13
  store float %552, ptr %690, align 4, !tbaa !92
  %691 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15
  %692 = load <2 x ptr>, ptr %376, align 8, !tbaa !86
  store <2 x ptr> %692, ptr %691, align 8, !tbaa !86
  %693 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 17
  store ptr %0, ptr %693, align 8, !tbaa !57
  br label %694

694:                                              ; preds = %477, %457, %440, %424, %407, %686, %549, %399, %437, %470, %473, %485, %687
  %695 = phi i32 [ 1, %687 ], [ 0, %399 ], [ 0, %437 ], [ 0, %470 ], [ 0, %473 ], [ 0, %485 ], [ 0, %686 ], [ 0, %549 ], [ 0, %407 ], [ 0, %424 ], [ 0, %440 ], [ 0, %457 ], [ 0, %477 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %49) #10
  br label %702

696:                                              ; preds = %2
  %697 = and i64 %50, -4
  %698 = inttoptr i64 %697 to ptr
  %699 = load ptr, ptr %698, align 8, !tbaa !93
  %700 = load ptr, ptr %699, align 8, !tbaa !96
  %701 = tail call noundef i32 %700(ptr noundef nonnull %698, ptr noundef %1) #9
  br label %702

702:                                              ; preds = %141, %121, %103, %87, %69, %355, %149, %137, %134, %100, %60, %216, %354, %2, %696, %694
  %703 = phi i32 [ %695, %694 ], [ %701, %696 ], [ 0, %2 ], [ 1, %355 ], [ 0, %60 ], [ 0, %100 ], [ 0, %134 ], [ 0, %137 ], [ 0, %149 ], [ 0, %354 ], [ 0, %216 ], [ 0, %69 ], [ 0, %87 ], [ 0, %103 ], [ 0, %121 ], [ 0, %141 ]
  ret i32 %703
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @RE_rayobject_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, -4
  %5 = inttoptr i64 %4 to ptr
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.RayObjectAPI, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  tail call void %8(ptr noundef nonnull %5, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @RE_rayobject_done(ptr noundef %0) local_unnamed_addr #3 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4
  %4 = inttoptr i64 %3 to ptr
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.RayObjectAPI, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  tail call void %7(ptr noundef nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @RE_rayobject_free(ptr noundef %0) local_unnamed_addr #3 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4
  %4 = inttoptr i64 %3 to ptr
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.RayObjectAPI, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  tail call void %7(ptr noundef nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef float @RE_rayobject_cost(ptr noundef %0) local_unnamed_addr #3 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, 3
  %4 = icmp eq i64 %3, 2
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = and i64 %2, -4
  %7 = inttoptr i64 %6 to ptr
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.RayObjectAPI, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = tail call noundef float %10(ptr noundef nonnull %7) #9
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi float [ %11, %5 ], [ 1.000000e+00, %1 ]
  ret float %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @RE_rayobject_merge_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.RayFace, align 8
  %5 = ptrtoint ptr %0 to i64
  %6 = and i64 %5, 3
  switch i64 %6, label %311 [
    i64 1, label %7
    i64 3, label %148
    i64 2, label %305
  ]

7:                                                ; preds = %3
  %8 = and i64 %5, -4
  %9 = inttoptr i64 %8 to ptr
  %10 = load float, ptr %1, align 4, !tbaa !49
  %11 = load float, ptr %9, align 8, !tbaa !49
  %12 = fcmp ogt float %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store float %11, ptr %1, align 4, !tbaa !49
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store float %18, ptr %15, align 4, !tbaa !49
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  %25 = load float, ptr %24, align 8, !tbaa !49
  %26 = fcmp ogt float %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store float %25, ptr %22, align 4, !tbaa !49
  br label %28

28:                                               ; preds = %27, %21
  %29 = load float, ptr %2, align 4, !tbaa !49
  %30 = load float, ptr %9, align 8, !tbaa !49
  %31 = fcmp olt float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store float %30, ptr %2, align 4, !tbaa !49
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds float, ptr %2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !49
  %36 = load float, ptr %17, align 4, !tbaa !49
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store float %36, ptr %34, align 4, !tbaa !49
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds float, ptr %2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !49
  %42 = load float, ptr %24, align 8, !tbaa !49
  %43 = fcmp olt float %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store float %42, ptr %40, align 4, !tbaa !49
  br label %45

45:                                               ; preds = %44, %39
  %46 = load float, ptr %1, align 4, !tbaa !49
  %47 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 1
  %48 = load float, ptr %47, align 8, !tbaa !49
  %49 = fcmp ogt float %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store float %48, ptr %1, align 4, !tbaa !49
  br label %51

51:                                               ; preds = %50, %45
  %52 = load float, ptr %15, align 4, !tbaa !49
  %53 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 1, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !49
  %55 = fcmp ogt float %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store float %54, ptr %15, align 4, !tbaa !49
  br label %57

57:                                               ; preds = %56, %51
  %58 = load float, ptr %22, align 4, !tbaa !49
  %59 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 1, i64 2
  %60 = load float, ptr %59, align 8, !tbaa !49
  %61 = fcmp ogt float %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store float %60, ptr %22, align 4, !tbaa !49
  br label %63

63:                                               ; preds = %62, %57
  %64 = load float, ptr %2, align 4, !tbaa !49
  %65 = load float, ptr %47, align 8, !tbaa !49
  %66 = fcmp olt float %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store float %65, ptr %2, align 4, !tbaa !49
  br label %68

68:                                               ; preds = %67, %63
  %69 = load float, ptr %34, align 4, !tbaa !49
  %70 = load float, ptr %53, align 4, !tbaa !49
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store float %70, ptr %34, align 4, !tbaa !49
  br label %73

73:                                               ; preds = %72, %68
  %74 = load float, ptr %40, align 4, !tbaa !49
  %75 = load float, ptr %59, align 8, !tbaa !49
  %76 = fcmp olt float %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store float %75, ptr %40, align 4, !tbaa !49
  br label %78

78:                                               ; preds = %77, %73
  %79 = load float, ptr %1, align 4, !tbaa !49
  %80 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 2
  %81 = load float, ptr %80, align 8, !tbaa !49
  %82 = fcmp ogt float %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store float %81, ptr %1, align 4, !tbaa !49
  br label %84

84:                                               ; preds = %83, %78
  %85 = load float, ptr %15, align 4, !tbaa !49
  %86 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 2, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !49
  %88 = fcmp ogt float %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store float %87, ptr %15, align 4, !tbaa !49
  br label %90

90:                                               ; preds = %89, %84
  %91 = load float, ptr %22, align 4, !tbaa !49
  %92 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 2, i64 2
  %93 = load float, ptr %92, align 8, !tbaa !49
  %94 = fcmp ogt float %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store float %93, ptr %22, align 4, !tbaa !49
  br label %96

96:                                               ; preds = %95, %90
  %97 = load float, ptr %2, align 4, !tbaa !49
  %98 = load float, ptr %80, align 8, !tbaa !49
  %99 = fcmp olt float %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store float %98, ptr %2, align 4, !tbaa !49
  br label %101

101:                                              ; preds = %100, %96
  %102 = load float, ptr %34, align 4, !tbaa !49
  %103 = load float, ptr %86, align 4, !tbaa !49
  %104 = fcmp olt float %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store float %103, ptr %34, align 4, !tbaa !49
  br label %106

106:                                              ; preds = %105, %101
  %107 = load float, ptr %40, align 4, !tbaa !49
  %108 = load float, ptr %92, align 8, !tbaa !49
  %109 = fcmp olt float %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store float %108, ptr %40, align 4, !tbaa !49
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 4
  %113 = load i32, ptr %112, align 4, !tbaa !84
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %311, label %115

115:                                              ; preds = %111
  %116 = load float, ptr %1, align 4, !tbaa !49
  %117 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 3
  %118 = load float, ptr %117, align 8, !tbaa !49
  %119 = fcmp ogt float %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store float %118, ptr %1, align 4, !tbaa !49
  br label %121

121:                                              ; preds = %120, %115
  %122 = load float, ptr %15, align 4, !tbaa !49
  %123 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 3, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !49
  %125 = fcmp ogt float %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store float %124, ptr %15, align 4, !tbaa !49
  br label %127

127:                                              ; preds = %126, %121
  %128 = load float, ptr %22, align 4, !tbaa !49
  %129 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 3, i64 2
  %130 = load float, ptr %129, align 8, !tbaa !49
  %131 = fcmp ogt float %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store float %130, ptr %22, align 4, !tbaa !49
  br label %133

133:                                              ; preds = %132, %127
  %134 = load float, ptr %2, align 4, !tbaa !49
  %135 = load float, ptr %117, align 8, !tbaa !49
  %136 = fcmp olt float %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store float %135, ptr %2, align 4, !tbaa !49
  br label %138

138:                                              ; preds = %137, %133
  %139 = load float, ptr %34, align 4, !tbaa !49
  %140 = load float, ptr %123, align 4, !tbaa !49
  %141 = fcmp olt float %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store float %140, ptr %34, align 4, !tbaa !49
  br label %143

143:                                              ; preds = %142, %138
  %144 = load float, ptr %40, align 4, !tbaa !49
  %145 = load float, ptr %129, align 8, !tbaa !49
  %146 = fcmp olt float %144, %145
  br i1 %146, label %147, label %311

147:                                              ; preds = %143
  store float %145, ptr %40, align 4, !tbaa !49
  br label %311

148:                                              ; preds = %3
  %149 = and i64 %5, -4
  %150 = inttoptr i64 %149 to ptr
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #10
  %151 = load ptr, ptr %150, align 8, !tbaa !46
  %152 = getelementptr inbounds %struct.VlakPrimitive, ptr %150, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !48
  %154 = load ptr, ptr %153, align 8, !tbaa !34
  %155 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !40
  %157 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !41
  %159 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !42
  %161 = icmp eq ptr %160, null
  %162 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 5
  store ptr %151, ptr %162, align 8, !tbaa !43
  %163 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 6
  store ptr %153, ptr %163, align 8, !tbaa !45
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %4, ptr noundef %154) #9
  %164 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %164, ptr noundef %156) #9
  %165 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %165, ptr noundef %158) #9
  br i1 %161, label %168, label %166

166:                                              ; preds = %148
  %167 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %167, ptr noundef nonnull %160) #9
  br label %168

168:                                              ; preds = %148, %166
  %169 = phi i32 [ 1, %166 ], [ 0, %148 ]
  %170 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 4
  store i32 %169, ptr %170, align 4
  %171 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %151, i64 0, i32 19
  %172 = load i32, ptr %171, align 8, !tbaa !89
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %151, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %175, ptr noundef nonnull %4) #9
  call void @mul_m4_v3(ptr noundef nonnull %175, ptr noundef nonnull %164) #9
  call void @mul_m4_v3(ptr noundef nonnull %175, ptr noundef nonnull %165) #9
  %176 = load i32, ptr %170, align 4, !tbaa !84
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %175, ptr noundef nonnull %179) #9
  br label %180

180:                                              ; preds = %168, %174, %178
  %181 = load float, ptr %1, align 4, !tbaa !49
  %182 = load float, ptr %4, align 8, !tbaa !49
  %183 = fcmp ogt float %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store float %182, ptr %1, align 4, !tbaa !49
  br label %185

185:                                              ; preds = %184, %180
  %186 = getelementptr inbounds float, ptr %1, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !49
  %188 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !49
  %190 = fcmp ogt float %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  store float %189, ptr %186, align 4, !tbaa !49
  br label %192

192:                                              ; preds = %191, %185
  %193 = getelementptr inbounds float, ptr %1, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !49
  %195 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %196 = load float, ptr %195, align 8, !tbaa !49
  %197 = fcmp ogt float %194, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store float %196, ptr %193, align 4, !tbaa !49
  br label %199

199:                                              ; preds = %198, %192
  %200 = load float, ptr %2, align 4, !tbaa !49
  %201 = fcmp olt float %200, %182
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  store float %182, ptr %2, align 4, !tbaa !49
  br label %203

203:                                              ; preds = %202, %199
  %204 = getelementptr inbounds float, ptr %2, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !49
  %206 = fcmp olt float %205, %189
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  store float %189, ptr %204, align 4, !tbaa !49
  br label %208

208:                                              ; preds = %207, %203
  %209 = getelementptr inbounds float, ptr %2, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !49
  %211 = fcmp olt float %210, %196
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store float %196, ptr %209, align 4, !tbaa !49
  br label %213

213:                                              ; preds = %212, %208
  %214 = load float, ptr %1, align 4, !tbaa !49
  %215 = load float, ptr %164, align 8, !tbaa !49
  %216 = fcmp ogt float %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store float %215, ptr %1, align 4, !tbaa !49
  br label %218

218:                                              ; preds = %217, %213
  %219 = load float, ptr %186, align 4, !tbaa !49
  %220 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !49
  %222 = fcmp ogt float %219, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store float %221, ptr %186, align 4, !tbaa !49
  br label %224

224:                                              ; preds = %223, %218
  %225 = load float, ptr %193, align 4, !tbaa !49
  %226 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1, i64 2
  %227 = load float, ptr %226, align 8, !tbaa !49
  %228 = fcmp ogt float %225, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  store float %227, ptr %193, align 4, !tbaa !49
  br label %230

230:                                              ; preds = %229, %224
  %231 = load float, ptr %2, align 4, !tbaa !49
  %232 = fcmp olt float %231, %215
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  store float %215, ptr %2, align 4, !tbaa !49
  br label %234

234:                                              ; preds = %233, %230
  %235 = load float, ptr %204, align 4, !tbaa !49
  %236 = fcmp olt float %235, %221
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store float %221, ptr %204, align 4, !tbaa !49
  br label %238

238:                                              ; preds = %237, %234
  %239 = load float, ptr %209, align 4, !tbaa !49
  %240 = fcmp olt float %239, %227
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store float %227, ptr %209, align 4, !tbaa !49
  br label %242

242:                                              ; preds = %241, %238
  %243 = load float, ptr %1, align 4, !tbaa !49
  %244 = load float, ptr %165, align 8, !tbaa !49
  %245 = fcmp ogt float %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store float %244, ptr %1, align 4, !tbaa !49
  br label %247

247:                                              ; preds = %246, %242
  %248 = load float, ptr %186, align 4, !tbaa !49
  %249 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !49
  %251 = fcmp ogt float %248, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  store float %250, ptr %186, align 4, !tbaa !49
  br label %253

253:                                              ; preds = %252, %247
  %254 = load float, ptr %193, align 4, !tbaa !49
  %255 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2, i64 2
  %256 = load float, ptr %255, align 8, !tbaa !49
  %257 = fcmp ogt float %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  store float %256, ptr %193, align 4, !tbaa !49
  br label %259

259:                                              ; preds = %258, %253
  %260 = load float, ptr %2, align 4, !tbaa !49
  %261 = fcmp olt float %260, %244
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store float %244, ptr %2, align 4, !tbaa !49
  br label %263

263:                                              ; preds = %262, %259
  %264 = load float, ptr %204, align 4, !tbaa !49
  %265 = fcmp olt float %264, %250
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  store float %250, ptr %204, align 4, !tbaa !49
  br label %267

267:                                              ; preds = %266, %263
  %268 = load float, ptr %209, align 4, !tbaa !49
  %269 = fcmp olt float %268, %256
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  store float %256, ptr %209, align 4, !tbaa !49
  br label %271

271:                                              ; preds = %270, %267
  %272 = load i32, ptr %170, align 4, !tbaa !84
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %304, label %274

274:                                              ; preds = %271
  %275 = load float, ptr %1, align 4, !tbaa !49
  %276 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  %277 = load float, ptr %276, align 8, !tbaa !49
  %278 = fcmp ogt float %275, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  store float %277, ptr %1, align 4, !tbaa !49
  br label %280

280:                                              ; preds = %279, %274
  %281 = load float, ptr %186, align 4, !tbaa !49
  %282 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 1
  %283 = load float, ptr %282, align 4, !tbaa !49
  %284 = fcmp ogt float %281, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  store float %283, ptr %186, align 4, !tbaa !49
  br label %286

286:                                              ; preds = %285, %280
  %287 = load float, ptr %193, align 4, !tbaa !49
  %288 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 2
  %289 = load float, ptr %288, align 8, !tbaa !49
  %290 = fcmp ogt float %287, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  store float %289, ptr %193, align 4, !tbaa !49
  br label %292

292:                                              ; preds = %291, %286
  %293 = load float, ptr %2, align 4, !tbaa !49
  %294 = fcmp olt float %293, %277
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  store float %277, ptr %2, align 4, !tbaa !49
  br label %296

296:                                              ; preds = %295, %292
  %297 = load float, ptr %204, align 4, !tbaa !49
  %298 = fcmp olt float %297, %283
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  store float %283, ptr %204, align 4, !tbaa !49
  br label %300

300:                                              ; preds = %299, %296
  %301 = load float, ptr %209, align 4, !tbaa !49
  %302 = fcmp olt float %301, %289
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  store float %289, ptr %209, align 4, !tbaa !49
  br label %304

304:                                              ; preds = %300, %303, %271
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #10
  br label %311

305:                                              ; preds = %3
  %306 = and i64 %5, -4
  %307 = inttoptr i64 %306 to ptr
  %308 = load ptr, ptr %307, align 8, !tbaa !93
  %309 = getelementptr inbounds %struct.RayObjectAPI, ptr %308, i64 0, i32 4
  %310 = load ptr, ptr %309, align 8, !tbaa !102
  tail call void %310(ptr noundef nonnull %307, ptr noundef %1, ptr noundef %2) #9
  br label %311

311:                                              ; preds = %3, %111, %147, %143, %304, %305
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @RE_rayobject_hint_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = ptrtoint ptr %0 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = and i64 %5, -4
  %10 = inttoptr i64 %9 to ptr
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = getelementptr inbounds %struct.RayObjectAPI, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  tail call void %13(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  br label %14

14:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @RE_rayobjectcontrol_test_break(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.RayObjectControl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !105
  %7 = tail call noundef i32 %3(ptr noundef %6) #9
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @RE_rayobject_set_control(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 3
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = and i64 %4, -4
  %9 = inttoptr i64 %8 to ptr
  %10 = getelementptr inbounds %struct.RayObject, ptr %9, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !106
  %11 = getelementptr inbounds %struct.RayObject, ptr %9, i64 0, i32 1, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !107
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL10copy_v3_v3PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !108 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare ptr @RE_vertren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL11sub_v3_v3v3PfPKfS1_(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !109 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13cross_v3_v3v3PfPKfS1_(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !110 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !49
  %15 = load float, ptr %8, align 4, !tbaa !49
  %16 = load float, ptr %2, align 4, !tbaa !49
  %17 = load float, ptr %1, align 4, !tbaa !49
  %18 = load float, ptr %6, align 4, !tbaa !49
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !49
  %23 = load float, ptr %1, align 4, !tbaa !49
  %24 = load float, ptr %10, align 4, !tbaa !49
  %25 = load float, ptr %4, align 4, !tbaa !49
  %26 = load float, ptr %2, align 4, !tbaa !49
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !111 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL12negate_v3_v3PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !112 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTS7VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !36, i64 8}
!41 = !{!35, !36, i64 16}
!42 = !{!35, !36, i64 24}
!43 = !{!44, !36, i64 64}
!44 = !{!"_ZTS7RayFace", !37, i64 0, !37, i64 16, !37, i64 32, !37, i64 48, !39, i64 60, !36, i64 64, !36, i64 72}
!45 = !{!44, !36, i64 72}
!46 = !{!47, !36, i64 0}
!47 = !{!"_ZTS13VlakPrimitive", !36, i64 0, !36, i64 8}
!48 = !{!47, !36, i64 8}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !37, i64 0}
!51 = !{!39, !39, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!55, !39, i64 88}
!55 = !{!"_ZTS5Isect", !37, i64 0, !37, i64 12, !50, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !50, i64 112, !50, i64 116, !39, i64 120, !56, i64 128, !56, i64 144, !36, i64 160, !36, i64 168}
!56 = !{!"_ZTSN5IsectUt_E", !36, i64 0, !36, i64 8}
!57 = !{!55, !36, i64 160}
!58 = !{!55, !36, i64 144}
!59 = !{!55, !36, i64 152}
!60 = !{!55, !39, i64 100}
!61 = !{!35, !37, i64 57}
!62 = !{!35, !36, i64 48}
!63 = !{!64, !39, i64 396}
!64 = !{!"_ZTS8Material", !65, i64 0, !36, i64 120, !66, i64 128, !66, i64 130, !50, i64 132, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !50, i64 200, !50, i64 204, !50, i64 208, !50, i64 212, !50, i64 216, !50, i64 220, !67, i64 224, !68, i64 312, !50, i64 328, !50, i64 332, !50, i64 336, !50, i64 340, !50, i64 344, !50, i64 348, !50, i64 352, !66, i64 356, !66, i64 358, !66, i64 360, !37, i64 362, !37, i64 363, !50, i64 364, !50, i64 368, !66, i64 372, !66, i64 374, !50, i64 376, !50, i64 380, !50, i64 384, !50, i64 388, !66, i64 392, !66, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !66, i64 412, !66, i64 414, !66, i64 416, !66, i64 418, !50, i64 420, !50, i64 424, !50, i64 428, !50, i64 432, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !50, i64 456, !37, i64 460, !50, i64 524, !50, i64 528, !50, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !66, i64 544, !66, i64 546, !66, i64 548, !37, i64 550, !37, i64 551, !66, i64 552, !66, i64 554, !50, i64 556, !50, i64 560, !37, i64 564, !50, i64 580, !50, i64 584, !66, i64 588, !66, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !66, i64 612, !66, i64 614, !50, i64 616, !50, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !50, i64 800, !50, i64 804, !50, i64 808, !50, i64 812, !50, i64 816, !66, i64 820, !66, i64 822, !37, i64 824, !37, i64 836, !50, i64 848, !50, i64 852, !50, i64 856, !50, i64 860, !50, i64 864, !50, i64 868, !50, i64 872, !66, i64 876, !66, i64 878, !39, i64 880, !66, i64 884, !66, i64 886, !37, i64 888, !66, i64 904, !66, i64 906, !66, i64 908, !66, i64 910, !66, i64 912, !37, i64 914, !36, i64 920, !69, i64 928}
!65 = !{!"_ZTS2ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !66, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!66 = !{!"short", !37, i64 0}
!67 = !{!"_ZTS14VolumeSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !50, i64 52, !50, i64 56, !50, i64 60, !66, i64 64, !66, i64 66, !66, i64 68, !66, i64 70, !50, i64 72, !50, i64 76, !50, i64 80, !50, i64 84}
!68 = !{!"_ZTS12GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!69 = !{!"_ZTS8ListBase", !36, i64 0, !36, i64 8}
!70 = !{!64, !39, i64 404}
!71 = !{!55, !39, i64 92}
!72 = !{!73, !39, i64 48}
!73 = !{!"_ZTS17ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !66, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!74 = !{!64, !66, i64 128}
!75 = !{!73, !36, i64 16}
!76 = !{!77, !36, i64 16}
!77 = !{!"_ZTS9ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!78 = !{!55, !36, i64 104}
!79 = !{!80, !66, i64 948}
!80 = !{!"_ZTS6Object", !65, i64 0, !36, i64 120, !36, i64 128, !66, i64 136, !66, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !81, i64 312, !36, i64 360, !69, i64 368, !69, i64 384, !69, i64 400, !69, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !50, i64 616, !50, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !66, i64 948, !66, i64 950, !66, i64 952, !66, i64 954, !66, i64 956, !66, i64 958, !66, i64 960, !66, i64 962, !66, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !66, i64 1036, !66, i64 1038, !66, i64 1040, !37, i64 1042, !37, i64 1043, !66, i64 1044, !37, i64 1046, !37, i64 1047, !50, i64 1048, !50, i64 1052, !69, i64 1056, !69, i64 1072, !69, i64 1088, !69, i64 1104, !50, i64 1120, !66, i64 1124, !66, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !66, i64 1162, !37, i64 1164, !69, i64 1176, !69, i64 1192, !69, i64 1208, !69, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !66, i64 1266, !50, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !82, i64 1304, !82, i64 1312, !39, i64 1320, !39, i64 1324, !69, i64 1328, !69, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !69, i64 1400, !36, i64 1416}
!81 = !{!"_ZTS16bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !66, i64 16, !66, i64 18, !66, i64 20, !66, i64 22, !66, i64 24, !66, i64 26, !66, i64 28, !66, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!82 = !{!"long", !37, i64 0}
!83 = !{!55, !50, i64 24}
!84 = !{!44, !39, i64 60}
!85 = !{!55, !39, i64 96}
!86 = !{!36, !36, i64 0}
!87 = distinct !{!87, !53}
!88 = distinct !{!88, !53}
!89 = !{!73, !39, i64 280}
!90 = !{!55, !39, i64 120}
!91 = !{!55, !50, i64 112}
!92 = !{!55, !50, i64 116}
!93 = !{!94, !36, i64 0}
!94 = !{!"_ZTS9RayObject", !36, i64 0, !95, i64 8}
!95 = !{!"_ZTS16RayObjectControl", !36, i64 0, !36, i64 8}
!96 = !{!97, !36, i64 0}
!97 = !{!"_ZTS12RayObjectAPI", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!98 = !{!97, !36, i64 8}
!99 = !{!97, !36, i64 16}
!100 = !{!97, !36, i64 24}
!101 = !{!97, !36, i64 40}
!102 = !{!97, !36, i64 32}
!103 = !{!97, !36, i64 48}
!104 = !{!95, !36, i64 8}
!105 = !{!95, !36, i64 0}
!106 = !{!94, !36, i64 8}
!107 = !{!94, !36, i64 16}
!108 = !{!"rayobject.cpp:_ZL10copy_v3_v3PfPKf"}
!109 = !{!"rayobject.cpp:_ZL11sub_v3_v3v3PfPKfS1_"}
!110 = !{!"rayobject.cpp:_ZL13cross_v3_v3v3PfPKfS1_"}
!111 = !{!"rayobject.cpp:_ZL8dot_v3v3PKfS0_"}
!112 = !{!"rayobject.cpp:_ZL12negate_v3_v3PfPKf"}
