; ModuleID = 'blender/source/blender/gpu/intern/gpu_buffers.c'
source_filename = "blender/source/blender/gpu/intern/gpu_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GPUBufferTypeSettings = type { ptr, i32, i32 }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.GPUAttrib = type { i32, i32, i32 }
%struct.GPUBufferPool = type { i32, i32, i32, i32, ptr, ptr }
%struct.GPUBuffer = type { i32, ptr, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.GPUDrawObject = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.GPUBufferMaterial = type { i32, i32, i16 }
%struct.GPUVertPointLink = type { i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.GPU_PBVH_Buffers = type { i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CCGKey, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i8, [4 x float] }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.VertexBufferFormat = type { [3 x float], [3 x i16], [2 x i8], [3 x i8] }
%struct.DMFlagMat = type { i16, i8 }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gpu_buffer_pool = internal unnamed_addr global ptr null, align 8
@buffer_mutex = internal global i32 0, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"GPU_drawobject_new.mat_orig_to_new\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"GPUDrawObject\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"GPUDrawObject.materials\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GPUDrawObject.triangle_to_mface\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@gpu_buffer_type_settings = dso_local local_unnamed_addr constant [7 x %struct.GPUBufferTypeSettings] [%struct.GPUBufferTypeSettings { ptr @GPU_buffer_copy_vertex, i32 34962, i32 3 }, %struct.GPUBufferTypeSettings { ptr @GPU_buffer_copy_normal, i32 34962, i32 3 }, %struct.GPUBufferTypeSettings { ptr @GPU_buffer_copy_mcol, i32 34962, i32 3 }, %struct.GPUBufferTypeSettings { ptr @GPU_buffer_copy_uv, i32 34962, i32 2 }, %struct.GPUBufferTypeSettings { ptr @GPU_buffer_copy_uv_texpaint, i32 34962, i32 4 }, %struct.GPUBufferTypeSettings { ptr @GPU_buffer_copy_edge, i32 34963, i32 2 }, %struct.GPUBufferTypeSettings { ptr @GPU_buffer_copy_uvedge, i32 34963, i32 4 }], align 16
@useVBOs = internal unnamed_addr global i32 -1, align 4
@__glewBindBufferARB = external local_unnamed_addr global ptr, align 8
@GLStates = internal unnamed_addr global i32 0, align 4
@__glewClientActiveTexture = external local_unnamed_addr global ptr, align 8
@__glewDisableVertexAttribArrayARB = external local_unnamed_addr global ptr, align 8
@__glewEnableVertexAttribArrayARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttribPointerARB = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@__glewMapBufferARB = external local_unnamed_addr global ptr, align 8
@__glewBufferDataARB = external local_unnamed_addr global ptr, align 8
@__glewUnmapBufferARB = external local_unnamed_addr global ptr, align 8
@__const.GPU_update_mesh_pbvh_buffers.diffuse_color = private unnamed_addr constant [4 x float] [float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000], align 16
@__const.GPU_update_mesh_pbvh_buffers.vi = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2], [3 x i32] [i32 3, i32 0, i32 2]], align 16
@__glewDeleteBuffersARB = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"GPU_Buffers\00", align 1
@__glewGenBuffersARB = external local_unnamed_addr global ptr, align 8
@__GLEW_ARB_vertex_buffer_object = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"GPUBuffer\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"GPUBuffer.pointer\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"GPUBuffer_Pool\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"GPUBufferPool.buffers\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GPUBufferPool.pbvhbuffers\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.gpu_buffer_free_intern = private unnamed_addr constant [23 x i8] c"gpu_buffer_free_intern\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"GPUDrawObject.mat_orig_to_new\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"GPUDrawObject.vert_points\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"texslots\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"GPU_buffer_setup.mat_orig_to_new\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"GPU_buffer_setup.cur_index_per_mat\00", align 1
@attribData = internal unnamed_addr global <{ %struct.GPUAttrib, [31 x %struct.GPUAttrib] }> <{ %struct.GPUAttrib { i32 -1, i32 0, i32 0 }, [31 x %struct.GPUAttrib] zeroinitializer }>, align 16
@gpu_get_grid_buffer.prev_gridsize = internal unnamed_addr global i32 -1, align 4
@gpu_get_grid_buffer.prev_index_type = internal unnamed_addr global i32 0, align 4
@gpu_get_grid_buffer.buffer = internal global i32 0, align 4
@gpu_get_grid_buffer.prev_totquad = internal unnamed_addr global i32 0, align 4
@__const.gpu_draw_buffers_legacy_grids.diffuse_color = private unnamed_addr constant [4 x float] [float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00], align 16
@__func__.gpu_pbvh_buffer_free_intern = private unnamed_addr constant [28 x i8] c"gpu_pbvh_buffer_free_intern\00", align 1
@switch.table.GPU_interleaved_attrib_setup.16 = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 4, i32 4, i32 4], align 4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_global_buffer_pool_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 8, !tbaa !38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.GPUBufferPool, ptr %1, i64 0, i32 4
  br label %8

8:                                                ; preds = %6, %35
  %9 = phi i32 [ %4, %6 ], [ %36, %35 ]
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %35, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %7, align 8, !tbaa !41
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr ptr, ptr %12, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.GPUBuffer, ptr %16, i64 0, i32 2
  tail call void %22(i32 noundef 1, ptr noundef nonnull %23) #7
  br label %28

24:                                               ; preds = %18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.GPUBuffer, ptr %16, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  tail call void %25(ptr noundef %27) #7
  br label %28

28:                                               ; preds = %24, %21
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %29(ptr noundef nonnull %16) #7
  %30 = load i32, ptr %1, align 8, !tbaa !38
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %1, align 8, !tbaa !38
  %32 = load ptr, ptr %7, align 8, !tbaa !41
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr null, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %8, %11, %28
  %36 = load i32, ptr %1, align 8, !tbaa !38
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %8, !llvm.loop !45

38:                                               ; preds = %35, %3
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.GPUBufferPool, ptr %1, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  tail call void %39(ptr noundef %41) #7
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.GPUBufferPool, ptr %1, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  tail call void %42(ptr noundef %44) #7
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %45(ptr noundef nonnull %1) #7
  br label %46

46:                                               ; preds = %0, %38
  store ptr null, ptr @gpu_buffer_pool, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_global_buffer_pool_free_unused() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %0
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  %4 = load i32, ptr %1, align 8, !tbaa !38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.GPUBufferPool, ptr %1, i64 0, i32 4
  br label %8

8:                                                ; preds = %6, %35
  %9 = phi i32 [ %4, %6 ], [ %36, %35 ]
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %35, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %7, align 8, !tbaa !41
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr ptr, ptr %12, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.GPUBuffer, ptr %16, i64 0, i32 2
  tail call void %22(i32 noundef 1, ptr noundef nonnull %23) #7
  br label %28

24:                                               ; preds = %18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.GPUBuffer, ptr %16, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  tail call void %25(ptr noundef %27) #7
  br label %28

28:                                               ; preds = %24, %21
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %29(ptr noundef nonnull %16) #7
  %30 = load i32, ptr %1, align 8, !tbaa !38
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %1, align 8, !tbaa !38
  %32 = load ptr, ptr %7, align 8, !tbaa !41
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr null, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %8, %11, %28
  %36 = load i32, ptr %1, align 8, !tbaa !38
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %8, !llvm.loop !49

38:                                               ; preds = %35, %3
  %39 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.GPUBufferPool, ptr %1, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = getelementptr inbounds %struct.GPUBufferPool, ptr %1, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  tail call void %39(i32 noundef %41, ptr noundef %43) #7
  store i32 0, ptr %40, align 4, !tbaa !50
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %44

44:                                               ; preds = %0, %38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_buffer_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  %4 = tail call fastcc ptr @gpu_buffer_alloc_intern(i32 noundef %0)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gpu_buffer_alloc_intern(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %154, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !51
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, ptr @useVBOs, align 4, !tbaa !42
  br label %13

13:                                               ; preds = %9, %6
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 32, ptr noundef nonnull @.str.7) #7
  %16 = getelementptr inbounds %struct.GPUBufferPool, ptr %15, i64 0, i32 2
  store i32 8, ptr %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.GPUBufferPool, ptr %15, i64 0, i32 3
  store i32 100, ptr %17, align 4, !tbaa !53
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 64, ptr noundef nonnull @.str.8) #7
  %20 = getelementptr inbounds %struct.GPUBufferPool, ptr %15, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !41
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %22 = load i32, ptr %17, align 4, !tbaa !53
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str.9) #7
  %26 = getelementptr inbounds %struct.GPUBufferPool, ptr %15, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !48
  store ptr %15, ptr @gpu_buffer_pool, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %3, %13
  %28 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %29 = load i32, ptr %28, align 8, !tbaa !38
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.GPUBufferPool, ptr %28, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = zext nneg i32 %29 to i64
  br label %35

35:                                               ; preds = %31, %57
  %36 = phi i64 [ 0, %31 ], [ %59, %57 ]
  %37 = phi i32 [ -1, %31 ], [ %58, %57 ]
  %38 = getelementptr inbounds ptr, ptr %33, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = load i32, ptr %39, align 8, !tbaa !54
  %41 = icmp eq i32 %40, %0
  br i1 %41, label %61, label %42

42:                                               ; preds = %35
  %43 = icmp sgt i32 %40, %0
  %44 = sdiv i32 %40, 2
  %45 = icmp slt i32 %44, %0
  %46 = and i1 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = icmp eq i32 %37, -1
  br i1 %48, label %55, label %49

49:                                               ; preds = %47
  %50 = sext i32 %37 to i64
  %51 = getelementptr inbounds ptr, ptr %33, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = load i32, ptr %52, align 8, !tbaa !54
  %54 = icmp sgt i32 %53, %40
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %47
  %56 = trunc i64 %36 to i32
  br label %57

57:                                               ; preds = %49, %55, %42
  %58 = phi i32 [ %56, %55 ], [ %37, %49 ], [ %37, %42 ]
  %59 = add nuw nsw i64 %36, 1
  %60 = icmp eq i64 %59, %34
  br i1 %60, label %63, label %35, !llvm.loop !55

61:                                               ; preds = %35
  %62 = trunc i64 %36 to i32
  br label %63

63:                                               ; preds = %61, %57, %27
  %64 = phi i32 [ -1, %27 ], [ %62, %61 ], [ %58, %57 ]
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %96, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.GPUBufferPool, ptr %28, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !41
  %69 = sext i32 %64 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = icmp sgt i32 %64, -1
  %73 = icmp sgt i32 %29, %64
  %74 = and i1 %72, %73
  br i1 %74, label %75, label %154

75:                                               ; preds = %66
  %76 = add nsw i32 %29, -1
  %77 = icmp slt i32 %64, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = zext i32 %64 to i64
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi i64 [ %79, %78 ], [ %83, %80 ]
  %82 = load ptr, ptr %67, align 8, !tbaa !41
  %83 = add nuw nsw i64 %81, 1
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  %86 = getelementptr inbounds ptr, ptr %82, i64 %81
  store ptr %85, ptr %86, align 8, !tbaa !34
  %87 = trunc i64 %83 to i32
  %88 = icmp sgt i32 %76, %87
  br i1 %88, label %80, label %89, !llvm.loop !56

89:                                               ; preds = %80, %75
  %90 = icmp sgt i32 %29, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = load ptr, ptr %67, align 8, !tbaa !41
  %93 = sext i32 %76 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  store ptr null, ptr %94, align 8, !tbaa !34
  br label %95

95:                                               ; preds = %91, %89
  store i32 %76, ptr %28, align 8, !tbaa !38
  br label %154

96:                                               ; preds = %63
  %97 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %98 = tail call ptr %97(i64 noundef 24, ptr noundef nonnull @.str.5) #7
  store i32 %0, ptr %98, align 8, !tbaa !54
  %99 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  %103 = getelementptr inbounds %struct.GPUBuffer, ptr %98, i64 0, i32 2
  tail call void %102(i32 noundef 1, ptr noundef nonnull %103) #7
  %104 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %105 = load i32, ptr %103, align 8, !tbaa !57
  tail call void %104(i32 noundef 34962, i32 noundef %105) #7
  %106 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %107 = sext i32 %0 to i64
  tail call void %106(i32 noundef 34962, i64 noundef %107, ptr noundef null, i32 noundef 35044) #7
  %108 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %108(i32 noundef 34962, i32 noundef 0) #7
  br label %153

109:                                              ; preds = %96
  %110 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %111 = sext i32 %0 to i64
  %112 = tail call ptr %110(i64 noundef %111, ptr noundef nonnull @.str.6) #7
  %113 = getelementptr inbounds %struct.GPUBuffer, ptr %98, i64 0, i32 1
  store ptr %112, ptr %113, align 8, !tbaa !43
  %114 = icmp eq ptr %112, null
  br i1 %114, label %115, label %153

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.GPUBufferPool, ptr %28, i64 0, i32 4
  %117 = load i32, ptr %28, align 8, !tbaa !38
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %122, label %151

119:                                              ; preds = %147
  %120 = load i32, ptr %28, align 8, !tbaa !38
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %151, !llvm.loop !58

122:                                              ; preds = %115, %119
  %123 = phi i32 [ %120, %119 ], [ %117, %115 ]
  %124 = load ptr, ptr %116, align 8, !tbaa !41
  %125 = zext nneg i32 %123 to i64
  %126 = getelementptr ptr, ptr %124, i64 %125
  %127 = getelementptr ptr, ptr %126, i64 -1
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %147, label %130

130:                                              ; preds = %122
  %131 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %135 = getelementptr inbounds %struct.GPUBuffer, ptr %128, i64 0, i32 2
  tail call void %134(i32 noundef 1, ptr noundef nonnull %135) #7
  br label %140

136:                                              ; preds = %130
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %138 = getelementptr inbounds %struct.GPUBuffer, ptr %128, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !43
  tail call void %137(ptr noundef %139) #7
  br label %140

140:                                              ; preds = %136, %133
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %141(ptr noundef nonnull %128) #7
  %142 = load i32, ptr %28, align 8, !tbaa !38
  %143 = add nsw i32 %142, -1
  store i32 %143, ptr %28, align 8, !tbaa !38
  %144 = load ptr, ptr %116, align 8, !tbaa !41
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds ptr, ptr %144, i64 %145
  store ptr null, ptr %146, align 8, !tbaa !34
  br label %147

147:                                              ; preds = %122, %140
  %148 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %149 = tail call ptr %148(i64 noundef %111, ptr noundef nonnull @.str.6) #7
  store ptr %149, ptr %113, align 8, !tbaa !43
  %150 = icmp eq ptr %149, null
  br i1 %150, label %119, label %153, !llvm.loop !58

151:                                              ; preds = %119, %115
  %152 = phi i1 [ %114, %115 ], [ %150, %119 ]
  br i1 %152, label %154, label %153

153:                                              ; preds = %147, %109, %151, %101
  br label %154

154:                                              ; preds = %95, %66, %151, %1, %153
  %155 = phi ptr [ %98, %153 ], [ null, %1 ], [ null, %151 ], [ %71, %66 ], [ %71, %95 ]
  ret ptr %155
}

declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @GPU_buffer_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %0)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_buffer_free_intern(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @gpu_get_global_buffer_pool()
  %5 = tail call i32 @BLI_thread_is_main() #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 8, !tbaa !38
  %9 = icmp sgt i32 %8, 7
  br i1 %9, label %10, label %26

10:                                               ; preds = %7, %10
  tail call fastcc void @gpu_buffer_pool_delete_last(ptr noundef nonnull %4)
  %11 = load i32, ptr %4, align 8, !tbaa !38
  %12 = icmp sgt i32 %11, 7
  br i1 %12, label %10, label %26, !llvm.loop !59

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !52
  %16 = load i32, ptr %4, align 8, !tbaa !38
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = add nsw i32 %15, 8
  store i32 %19, ptr %14, align 8, !tbaa !52
  %20 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = sext i32 %19 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %20(ptr noundef %22, i64 noundef %24, ptr noundef nonnull @__func__.gpu_buffer_free_intern) #7
  store ptr %25, ptr %21, align 8, !tbaa !41
  br label %26

26:                                               ; preds = %10, %7, %13, %18
  %27 = load i32, ptr %4, align 8, !tbaa !38
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 4
  %31 = zext nneg i32 %27 to i64
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %31, %29 ], [ %38, %32 ]
  %34 = load ptr, ptr %30, align 8, !tbaa !41
  %35 = getelementptr ptr, ptr %34, i64 %33
  %36 = getelementptr ptr, ptr %35, i64 -1
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  store ptr %37, ptr %35, align 8, !tbaa !34
  %38 = add nsw i64 %33, -1
  %39 = icmp sgt i64 %33, 1
  br i1 %39, label %32, label %40, !llvm.loop !60

40:                                               ; preds = %32, %26
  %41 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  store ptr %0, ptr %42, align 8, !tbaa !34
  %43 = add nsw i32 %27, 1
  store i32 %43, ptr %4, align 8, !tbaa !38
  br label %44

44:                                               ; preds = %1, %40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_drawobject_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x i32], align 4
  %3 = alloca [3 x i32], align 4
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = tail call i32 %10(ptr noundef %0) #7
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = sext i32 %5 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str) #7
  %16 = icmp sgt i32 %11, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = zext nneg i32 %11 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %31, %19 ]
  %21 = getelementptr inbounds %struct.MFace, ptr %8, i64 %20, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !67
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 3, i32 6
  %25 = getelementptr inbounds %struct.MFace, ptr %8, i64 %20, i32 4
  %26 = load i16, ptr %25, align 4, !tbaa !70
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds i32, ptr %15, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !42
  %30 = add nsw i32 %29, %24
  store i32 %30, ptr %28, align 4, !tbaa !42
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %19, !llvm.loop !71

33:                                               ; preds = %19, %1
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %35 = tail call ptr %34(i64 noundef 104, ptr noundef nonnull @.str.1) #7
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = tail call i32 %37(ptr noundef %0) #7
  %39 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 13
  store i32 %38, ptr %39, align 4, !tbaa !73
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %41 = load ptr, ptr %40, align 8, !tbaa !75
  %42 = tail call i32 %41(ptr noundef %0) #7
  %43 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 14
  store i32 %42, ptr %43, align 8, !tbaa !76
  %44 = icmp sgt i32 %5, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 10
  %47 = zext nneg i32 %5 to i64
  br label %48

48:                                               ; preds = %45, %56
  %49 = phi i64 [ 0, %45 ], [ %57, %56 ]
  %50 = getelementptr inbounds i32, ptr %15, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !42
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, ptr %46, align 8, !tbaa !77
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %46, align 8, !tbaa !77
  br label %56

56:                                               ; preds = %48, %53
  %57 = add nuw nsw i64 %49, 1
  %58 = icmp eq i64 %57, %47
  br i1 %58, label %59, label %48, !llvm.loop !78

59:                                               ; preds = %56, %33
  %60 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 10
  %62 = load i32, ptr %61, align 8, !tbaa !77
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, 12
  %65 = tail call ptr %60(i64 noundef %64, ptr noundef nonnull @.str.2) #7
  %66 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 9
  store ptr %65, ptr %66, align 8, !tbaa !79
  %67 = icmp sgt i32 %5, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %59
  %69 = zext nneg i32 %5 to i64
  br label %70

70:                                               ; preds = %68, %86
  %71 = phi i64 [ 0, %68 ], [ %89, %86 ]
  %72 = phi i32 [ 0, %68 ], [ %88, %86 ]
  %73 = phi i32 [ 0, %68 ], [ %87, %86 ]
  %74 = getelementptr inbounds i32, ptr %15, i64 %71
  %75 = load i32, ptr %74, align 4, !tbaa !42
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = sext i32 %73 to i64
  %79 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %65, i64 %78
  store i32 %72, ptr %79, align 4, !tbaa !80
  %80 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %65, i64 %78, i32 1
  store i32 0, ptr %80, align 4, !tbaa !82
  %81 = trunc i64 %71 to i16
  %82 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %65, i64 %78, i32 2
  store i16 %81, ptr %82, align 4, !tbaa !83
  %83 = load i32, ptr %74, align 4, !tbaa !42
  %84 = add nsw i32 %83, %72
  %85 = add nsw i32 %73, 1
  br label %86

86:                                               ; preds = %70, %77
  %87 = phi i32 [ %85, %77 ], [ %73, %70 ]
  %88 = phi i32 [ %84, %77 ], [ %72, %70 ]
  %89 = add nuw nsw i64 %71, 1
  %90 = icmp eq i64 %89, %69
  br i1 %90, label %91, label %70, !llvm.loop !84

91:                                               ; preds = %86, %59
  %92 = phi i32 [ 0, %59 ], [ %88, %86 ]
  %93 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 11
  store i32 %92, ptr %93, align 4, !tbaa !85
  %94 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %95 = sdiv i32 %92, 3
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 2
  %98 = tail call ptr %94(i64 noundef %97, ptr noundef nonnull @.str.3) #7
  %99 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 6
  store ptr %98, ptr %99, align 8, !tbaa !86
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %101 = tail call ptr %100(i64 noundef %14, ptr noundef nonnull @.str.10) #7
  %102 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %103 = load i32, ptr %39, align 4, !tbaa !73
  %104 = sext i32 %103 to i64
  %105 = shl nsw i64 %104, 2
  %106 = tail call ptr %102(i64 noundef %105, ptr noundef nonnull @.str.11) #7
  %107 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 7
  store ptr %106, ptr %107, align 8, !tbaa !87
  %108 = load i32, ptr %61, align 8, !tbaa !77
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %91
  %111 = load ptr, ptr %66, align 8, !tbaa !79
  br label %118

112:                                              ; preds = %118, %91
  %113 = load i32, ptr %39, align 4, !tbaa !73
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = zext nneg i32 %113 to i64
  %117 = shl nuw nsw i64 %116, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %106, i8 -1, i64 %117, i1 false), !tbaa !88
  br label %129

118:                                              ; preds = %110, %118
  %119 = phi i64 [ 0, %110 ], [ %125, %118 ]
  %120 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %111, i64 %119, i32 2
  %121 = load i16, ptr %120, align 4, !tbaa !83
  %122 = sext i16 %121 to i64
  %123 = getelementptr inbounds i32, ptr %101, i64 %122
  %124 = trunc i64 %119 to i32
  store i32 %124, ptr %123, align 4, !tbaa !42
  %125 = add nuw nsw i64 %119, 1
  %126 = load i32, ptr %61, align 8, !tbaa !77
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %118, label %112, !llvm.loop !90

129:                                              ; preds = %115, %112
  %130 = icmp sgt i32 %11, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %129
  %132 = load ptr, ptr %66, align 8, !tbaa !79
  %133 = getelementptr inbounds i32, ptr %3, i64 1
  %134 = getelementptr inbounds i32, ptr %3, i64 2
  %135 = load ptr, ptr %99, align 8, !tbaa !86
  %136 = getelementptr inbounds i32, ptr %2, i64 1
  %137 = getelementptr inbounds i32, ptr %2, i64 2
  br label %144

138:                                              ; preds = %211, %129
  %139 = load i32, ptr %39, align 4, !tbaa !73
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %228

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.GPUDrawObject, ptr %35, i64 0, i32 12
  %143 = zext nneg i32 %139 to i64
  br label %215

144:                                              ; preds = %131, %211
  %145 = phi ptr [ %8, %131 ], [ %213, %211 ]
  %146 = phi i32 [ 0, %131 ], [ %212, %211 ]
  %147 = getelementptr inbounds %struct.MFace, ptr %145, i64 0, i32 4
  %148 = load i16, ptr %147, align 4, !tbaa !70
  %149 = sext i16 %148 to i64
  %150 = getelementptr inbounds i32, ptr %101, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !42
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %132, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !80
  %155 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %132, i64 %152, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !82
  %157 = add nsw i32 %156, %154
  %158 = load i32, ptr %145, align 4, !tbaa !91
  %159 = getelementptr inbounds %struct.MFace, ptr %145, i64 0, i32 1
  %160 = load i32, ptr %159, align 4, !tbaa !92
  %161 = getelementptr inbounds %struct.MFace, ptr %145, i64 0, i32 2
  %162 = load i32, ptr %161, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  store i32 %158, ptr %3, align 4, !tbaa !42
  store i32 %160, ptr %133, align 4, !tbaa !42
  store i32 %162, ptr %134, align 4, !tbaa !42
  br label %163

163:                                              ; preds = %144, %174
  %164 = phi i64 [ 0, %144 ], [ %175, %174 ]
  %165 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !42
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.GPUVertPointLink, ptr %106, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !88
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = trunc i64 %164 to i32
  %173 = add i32 %157, %172
  store i32 %173, ptr %168, align 4, !tbaa !88
  br label %174

174:                                              ; preds = %171, %163
  %175 = add nuw nsw i64 %164, 1
  %176 = icmp eq i64 %175, 3
  br i1 %176, label %177, label %163, !llvm.loop !94

177:                                              ; preds = %174
  %178 = sdiv i32 %157, 3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, ptr %135, i64 %179
  store i32 %146, ptr %180, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  %181 = load i32, ptr %155, align 4, !tbaa !82
  %182 = add nsw i32 %181, 3
  store i32 %182, ptr %155, align 4, !tbaa !82
  %183 = getelementptr inbounds %struct.MFace, ptr %145, i64 0, i32 3
  %184 = load i32, ptr %183, align 4, !tbaa !67
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %211, label %186

186:                                              ; preds = %177
  %187 = load i32, ptr %153, align 4, !tbaa !80
  %188 = add nsw i32 %187, %182
  %189 = load i32, ptr %161, align 4, !tbaa !93
  %190 = load i32, ptr %145, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  store i32 %189, ptr %2, align 4, !tbaa !42
  store i32 %184, ptr %136, align 4, !tbaa !42
  store i32 %190, ptr %137, align 4, !tbaa !42
  br label %191

191:                                              ; preds = %186, %202
  %192 = phi i64 [ 0, %186 ], [ %203, %202 ]
  %193 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !42
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.GPUVertPointLink, ptr %106, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !88
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = trunc i64 %192 to i32
  %201 = add i32 %188, %200
  store i32 %201, ptr %196, align 4, !tbaa !88
  br label %202

202:                                              ; preds = %199, %191
  %203 = add nuw nsw i64 %192, 1
  %204 = icmp eq i64 %203, 3
  br i1 %204, label %205, label %191, !llvm.loop !94

205:                                              ; preds = %202
  %206 = sdiv i32 %188, 3
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, ptr %135, i64 %207
  store i32 %146, ptr %208, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  %209 = load i32, ptr %155, align 4, !tbaa !82
  %210 = add nsw i32 %209, 3
  store i32 %210, ptr %155, align 4, !tbaa !82
  br label %211

211:                                              ; preds = %205, %177
  %212 = add nuw nsw i32 %146, 1
  %213 = getelementptr inbounds %struct.MFace, ptr %145, i64 1
  %214 = icmp eq i32 %212, %11
  br i1 %214, label %138, label %144, !llvm.loop !95

215:                                              ; preds = %141, %225
  %216 = phi i64 [ 0, %141 ], [ %226, %225 ]
  %217 = getelementptr inbounds %struct.GPUVertPointLink, ptr %106, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !88
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i32, ptr %93, align 4, !tbaa !85
  %222 = load i32, ptr %142, align 8, !tbaa !96
  %223 = add nsw i32 %222, %221
  store i32 %223, ptr %217, align 4, !tbaa !88
  %224 = add nsw i32 %222, 1
  store i32 %224, ptr %142, align 8, !tbaa !96
  br label %225

225:                                              ; preds = %220, %215
  %226 = add nuw nsw i64 %216, 1
  %227 = icmp eq i64 %226, %143
  br i1 %227, label %228, label %215, !llvm.loop !97

228:                                              ; preds = %225, %138
  %229 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %229(ptr noundef %101) #7
  %230 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %230(ptr noundef %15) #7
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_drawobject_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  tail call void %8(ptr noundef %10) #7
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  tail call void %11(ptr noundef %13) #7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  tail call void %14(ptr noundef %16) #7
  %17 = load ptr, ptr %5, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %17)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %20

20:                                               ; preds = %7, %19
  %21 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %22)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %27)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %32)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %37)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !104
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %42)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %45

45:                                               ; preds = %40, %44
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %46(ptr noundef nonnull %5) #7
  store ptr null, ptr %4, align 8, !tbaa !98
  br label %47

47:                                               ; preds = %1, %3, %45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPU_buffer_copy_vertex(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = tail call ptr %10(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = tail call i32 %13(ptr noundef %0) #7
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %109

16:                                               ; preds = %5, %105
  %17 = phi ptr [ %107, %105 ], [ %11, %5 ]
  %18 = phi i32 [ %106, %105 ], [ 0, %5 ]
  %19 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !70
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds i32, ptr %3, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !42
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %1, i64 %27
  %29 = load i32, ptr %17, align 4, !tbaa !91
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %8, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !106
  store float %32, ptr %28, align 4, !tbaa !106
  %33 = getelementptr inbounds float, ptr %31, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !106
  %35 = getelementptr inbounds float, ptr %28, i64 1
  store float %34, ptr %35, align 4, !tbaa !106
  %36 = getelementptr inbounds float, ptr %31, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !106
  %38 = getelementptr inbounds float, ptr %28, i64 2
  store float %37, ptr %38, align 4, !tbaa !106
  %39 = getelementptr float, ptr %28, i64 3
  %40 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !92
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.MVert, ptr %8, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !106
  store float %44, ptr %39, align 4, !tbaa !106
  %45 = getelementptr inbounds float, ptr %43, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !106
  %47 = getelementptr float, ptr %28, i64 4
  store float %46, ptr %47, align 4, !tbaa !106
  %48 = getelementptr inbounds float, ptr %43, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !106
  %50 = getelementptr float, ptr %28, i64 5
  store float %49, ptr %50, align 4, !tbaa !106
  %51 = getelementptr float, ptr %28, i64 6
  %52 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !93
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.MVert, ptr %8, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !106
  store float %56, ptr %51, align 4, !tbaa !106
  %57 = getelementptr inbounds float, ptr %55, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !106
  %59 = getelementptr float, ptr %28, i64 7
  store float %58, ptr %59, align 4, !tbaa !106
  %60 = getelementptr inbounds float, ptr %55, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !106
  %62 = getelementptr float, ptr %28, i64 8
  store float %61, ptr %62, align 4, !tbaa !106
  %63 = add nsw i32 %26, 9
  store i32 %63, ptr %25, align 4, !tbaa !42
  %64 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !67
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %105, label %67

67:                                               ; preds = %16
  %68 = getelementptr float, ptr %28, i64 9
  %69 = load i32, ptr %52, align 4, !tbaa !93
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.MVert, ptr %8, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !106
  store float %72, ptr %68, align 4, !tbaa !106
  %73 = getelementptr inbounds float, ptr %71, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !106
  %75 = getelementptr float, ptr %28, i64 10
  store float %74, ptr %75, align 4, !tbaa !106
  %76 = getelementptr inbounds float, ptr %71, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !106
  %78 = getelementptr float, ptr %28, i64 11
  store float %77, ptr %78, align 4, !tbaa !106
  %79 = getelementptr float, ptr %28, i64 12
  %80 = zext i32 %65 to i64
  %81 = getelementptr inbounds %struct.MVert, ptr %8, i64 %80
  %82 = load float, ptr %81, align 4, !tbaa !106
  store float %82, ptr %79, align 4, !tbaa !106
  %83 = getelementptr inbounds float, ptr %81, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !106
  %85 = getelementptr float, ptr %28, i64 13
  store float %84, ptr %85, align 4, !tbaa !106
  %86 = getelementptr inbounds float, ptr %81, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !106
  %88 = getelementptr float, ptr %28, i64 14
  store float %87, ptr %88, align 4, !tbaa !106
  %89 = getelementptr float, ptr %28, i64 15
  %90 = load i32, ptr %17, align 4, !tbaa !91
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MVert, ptr %8, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !106
  store float %93, ptr %89, align 4, !tbaa !106
  %94 = getelementptr inbounds float, ptr %92, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !106
  %96 = getelementptr float, ptr %28, i64 16
  store float %95, ptr %96, align 4, !tbaa !106
  %97 = getelementptr inbounds float, ptr %92, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !106
  %99 = getelementptr float, ptr %28, i64 17
  store float %98, ptr %99, align 4, !tbaa !106
  %100 = load i32, ptr %22, align 4, !tbaa !42
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %2, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !42
  %104 = add nsw i32 %103, 9
  store i32 %104, ptr %102, align 4, !tbaa !42
  br label %105

105:                                              ; preds = %16, %67
  %106 = add nuw nsw i32 %18, 1
  %107 = getelementptr inbounds %struct.MFace, ptr %17, i64 1
  %108 = icmp eq i32 %106, %14
  br i1 %108, label %109, label %16, !llvm.loop !107

109:                                              ; preds = %105, %5
  %110 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %111 = load ptr, ptr %110, align 8, !tbaa !98
  %112 = getelementptr inbounds %struct.GPUDrawObject, ptr %111, i64 0, i32 11
  %113 = load i32, ptr %112, align 4, !tbaa !85
  %114 = getelementptr inbounds %struct.GPUDrawObject, ptr %111, i64 0, i32 13
  %115 = load i32, ptr %114, align 4, !tbaa !73
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %109
  %118 = mul nsw i32 %113, 3
  %119 = getelementptr inbounds %struct.GPUDrawObject, ptr %111, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !87
  %121 = zext nneg i32 %115 to i64
  br label %122

122:                                              ; preds = %117, %140
  %123 = phi i64 [ 0, %117 ], [ %142, %140 ]
  %124 = phi i32 [ %118, %117 ], [ %141, %140 ]
  %125 = getelementptr inbounds %struct.GPUVertPointLink, ptr %120, i64 %123
  %126 = load i32, ptr %125, align 4, !tbaa !88
  %127 = icmp slt i32 %126, %113
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = sext i32 %124 to i64
  %130 = getelementptr inbounds float, ptr %1, i64 %129
  %131 = getelementptr inbounds %struct.MVert, ptr %8, i64 %123
  %132 = load float, ptr %131, align 4, !tbaa !106
  store float %132, ptr %130, align 4, !tbaa !106
  %133 = getelementptr inbounds float, ptr %131, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !106
  %135 = getelementptr inbounds float, ptr %130, i64 1
  store float %134, ptr %135, align 4, !tbaa !106
  %136 = getelementptr inbounds float, ptr %131, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !106
  %138 = getelementptr inbounds float, ptr %130, i64 2
  store float %137, ptr %138, align 4, !tbaa !106
  %139 = add nsw i32 %124, 3
  br label %140

140:                                              ; preds = %122, %128
  %141 = phi i32 [ %139, %128 ], [ %124, %122 ]
  %142 = add nuw nsw i64 %123, 1
  %143 = icmp eq i64 %142, %121
  br i1 %143, label %144, label %122, !llvm.loop !108

144:                                              ; preds = %140, %109
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPU_buffer_copy_normal(ptr noundef %0, ptr noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call ptr %8(ptr noundef %0, i32 noundef 8) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !109
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 40) #7
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = tail call ptr %13(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = tail call ptr %16(ptr noundef %0) #7
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = tail call i32 %19(ptr noundef %0) #7
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %296

22:                                               ; preds = %5
  %23 = icmp eq ptr %11, null
  %24 = icmp eq ptr %9, null
  %25 = getelementptr inbounds float, ptr %6, i64 1
  %26 = getelementptr inbounds float, ptr %6, i64 2
  %27 = zext nneg i32 %20 to i64
  br label %28

28:                                               ; preds = %22, %292
  %29 = phi i64 [ 0, %22 ], [ %293, %292 ]
  %30 = phi ptr [ %17, %22 ], [ %294, %292 ]
  %31 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 6
  %32 = load i8, ptr %31, align 1, !tbaa !110
  %33 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !70
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds i32, ptr %3, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !42
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %2, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !42
  %41 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !67
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 9, i32 18
  %45 = add nsw i32 %44, %40
  store i32 %45, ptr %39, align 4, !tbaa !42
  br i1 %23, label %116, label %46

46:                                               ; preds = %28
  %47 = getelementptr inbounds [4 x [3 x i16]], ptr %11, i64 %29
  %48 = sext i32 %40 to i64
  %49 = getelementptr inbounds float, ptr %1, i64 %48
  %50 = load i16, ptr %47, align 2, !tbaa !111
  %51 = sitofp i16 %50 to float
  %52 = fmul float %51, 0x3F00002000000000
  store float %52, ptr %49, align 4, !tbaa !106
  %53 = getelementptr inbounds i16, ptr %47, i64 1
  %54 = load i16, ptr %53, align 2, !tbaa !111
  %55 = sitofp i16 %54 to float
  %56 = fmul float %55, 0x3F00002000000000
  %57 = getelementptr inbounds float, ptr %49, i64 1
  store float %56, ptr %57, align 4, !tbaa !106
  %58 = getelementptr inbounds i16, ptr %47, i64 2
  %59 = load i16, ptr %58, align 2, !tbaa !111
  %60 = sitofp i16 %59 to float
  %61 = fmul float %60, 0x3F00002000000000
  %62 = getelementptr inbounds float, ptr %49, i64 2
  store float %61, ptr %62, align 4, !tbaa !106
  %63 = getelementptr float, ptr %49, i64 3
  %64 = getelementptr inbounds [3 x i16], ptr %47, i64 1
  %65 = load i16, ptr %64, align 2, !tbaa !111
  %66 = sitofp i16 %65 to float
  %67 = fmul float %66, 0x3F00002000000000
  store float %67, ptr %63, align 4, !tbaa !106
  %68 = getelementptr inbounds [3 x i16], ptr %47, i64 1, i64 1
  %69 = load i16, ptr %68, align 2, !tbaa !111
  %70 = sitofp i16 %69 to float
  %71 = fmul float %70, 0x3F00002000000000
  %72 = getelementptr float, ptr %49, i64 4
  store float %71, ptr %72, align 4, !tbaa !106
  %73 = getelementptr inbounds [3 x i16], ptr %47, i64 1, i64 2
  %74 = load i16, ptr %73, align 2, !tbaa !111
  %75 = sitofp i16 %74 to float
  %76 = fmul float %75, 0x3F00002000000000
  %77 = getelementptr float, ptr %49, i64 5
  store float %76, ptr %77, align 4, !tbaa !106
  %78 = getelementptr float, ptr %49, i64 6
  %79 = getelementptr inbounds [3 x i16], ptr %47, i64 2
  %80 = load i16, ptr %79, align 2, !tbaa !111
  %81 = sitofp i16 %80 to float
  %82 = fmul float %81, 0x3F00002000000000
  store float %82, ptr %78, align 4, !tbaa !106
  %83 = getelementptr inbounds [3 x i16], ptr %47, i64 2, i64 1
  %84 = load i16, ptr %83, align 2, !tbaa !111
  %85 = sitofp i16 %84 to float
  %86 = fmul float %85, 0x3F00002000000000
  %87 = getelementptr float, ptr %49, i64 7
  store float %86, ptr %87, align 4, !tbaa !106
  %88 = getelementptr inbounds [3 x i16], ptr %47, i64 2, i64 2
  %89 = load i16, ptr %88, align 2, !tbaa !111
  %90 = sitofp i16 %89 to float
  %91 = fmul float %90, 0x3F00002000000000
  %92 = getelementptr float, ptr %49, i64 8
  store float %91, ptr %92, align 4, !tbaa !106
  %93 = load i32, ptr %41, align 4, !tbaa !67
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %292, label %95

95:                                               ; preds = %46
  %96 = getelementptr float, ptr %49, i64 9
  store float %82, ptr %96, align 4, !tbaa !106
  %97 = getelementptr float, ptr %49, i64 10
  store float %86, ptr %97, align 4, !tbaa !106
  %98 = getelementptr float, ptr %49, i64 11
  store float %91, ptr %98, align 4, !tbaa !106
  %99 = getelementptr float, ptr %49, i64 12
  %100 = getelementptr inbounds [3 x i16], ptr %47, i64 3
  %101 = load i16, ptr %100, align 2, !tbaa !111
  %102 = sitofp i16 %101 to float
  %103 = fmul float %102, 0x3F00002000000000
  store float %103, ptr %99, align 4, !tbaa !106
  %104 = getelementptr inbounds [3 x i16], ptr %47, i64 3, i64 1
  %105 = load i16, ptr %104, align 2, !tbaa !111
  %106 = sitofp i16 %105 to float
  %107 = fmul float %106, 0x3F00002000000000
  %108 = getelementptr float, ptr %49, i64 13
  store float %107, ptr %108, align 4, !tbaa !106
  %109 = getelementptr inbounds [3 x i16], ptr %47, i64 3, i64 2
  %110 = load i16, ptr %109, align 2, !tbaa !111
  %111 = sitofp i16 %110 to float
  %112 = fmul float %111, 0x3F00002000000000
  %113 = getelementptr float, ptr %49, i64 14
  store float %112, ptr %113, align 4, !tbaa !106
  %114 = getelementptr float, ptr %49, i64 15
  store float %52, ptr %114, align 4, !tbaa !106
  %115 = getelementptr float, ptr %49, i64 16
  store float %56, ptr %115, align 4, !tbaa !106
  br label %288

116:                                              ; preds = %28
  %117 = and i8 %32, 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %198, label %119

119:                                              ; preds = %116
  %120 = sext i32 %40 to i64
  %121 = getelementptr inbounds float, ptr %1, i64 %120
  %122 = load i32, ptr %30, align 4, !tbaa !91
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.MVert, ptr %14, i64 %123, i32 1
  %125 = load i16, ptr %124, align 2, !tbaa !111
  %126 = sitofp i16 %125 to float
  %127 = fmul float %126, 0x3F00002000000000
  store float %127, ptr %121, align 4, !tbaa !106
  %128 = getelementptr inbounds i16, ptr %124, i64 1
  %129 = load i16, ptr %128, align 2, !tbaa !111
  %130 = sitofp i16 %129 to float
  %131 = fmul float %130, 0x3F00002000000000
  %132 = getelementptr inbounds float, ptr %121, i64 1
  store float %131, ptr %132, align 4, !tbaa !106
  %133 = getelementptr inbounds i16, ptr %124, i64 2
  %134 = load i16, ptr %133, align 2, !tbaa !111
  %135 = sitofp i16 %134 to float
  %136 = fmul float %135, 0x3F00002000000000
  %137 = getelementptr inbounds float, ptr %121, i64 2
  store float %136, ptr %137, align 4, !tbaa !106
  %138 = getelementptr float, ptr %121, i64 3
  %139 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !92
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.MVert, ptr %14, i64 %141, i32 1
  %143 = load i16, ptr %142, align 2, !tbaa !111
  %144 = sitofp i16 %143 to float
  %145 = fmul float %144, 0x3F00002000000000
  store float %145, ptr %138, align 4, !tbaa !106
  %146 = getelementptr inbounds i16, ptr %142, i64 1
  %147 = load i16, ptr %146, align 2, !tbaa !111
  %148 = sitofp i16 %147 to float
  %149 = fmul float %148, 0x3F00002000000000
  %150 = getelementptr float, ptr %121, i64 4
  store float %149, ptr %150, align 4, !tbaa !106
  %151 = getelementptr inbounds i16, ptr %142, i64 2
  %152 = load i16, ptr %151, align 2, !tbaa !111
  %153 = sitofp i16 %152 to float
  %154 = fmul float %153, 0x3F00002000000000
  %155 = getelementptr float, ptr %121, i64 5
  store float %154, ptr %155, align 4, !tbaa !106
  %156 = getelementptr float, ptr %121, i64 6
  %157 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !93
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.MVert, ptr %14, i64 %159, i32 1
  %161 = load i16, ptr %160, align 2, !tbaa !111
  %162 = sitofp i16 %161 to float
  %163 = fmul float %162, 0x3F00002000000000
  store float %163, ptr %156, align 4, !tbaa !106
  %164 = getelementptr inbounds i16, ptr %160, i64 1
  %165 = load i16, ptr %164, align 2, !tbaa !111
  %166 = sitofp i16 %165 to float
  %167 = fmul float %166, 0x3F00002000000000
  %168 = getelementptr float, ptr %121, i64 7
  store float %167, ptr %168, align 4, !tbaa !106
  %169 = getelementptr inbounds i16, ptr %160, i64 2
  %170 = load i16, ptr %169, align 2, !tbaa !111
  %171 = sitofp i16 %170 to float
  %172 = fmul float %171, 0x3F00002000000000
  %173 = getelementptr float, ptr %121, i64 8
  store float %172, ptr %173, align 4, !tbaa !106
  %174 = load i32, ptr %41, align 4, !tbaa !67
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %292, label %176

176:                                              ; preds = %119
  %177 = getelementptr float, ptr %121, i64 9
  store float %163, ptr %177, align 4, !tbaa !106
  %178 = getelementptr float, ptr %121, i64 10
  store float %167, ptr %178, align 4, !tbaa !106
  %179 = getelementptr float, ptr %121, i64 11
  store float %172, ptr %179, align 4, !tbaa !106
  %180 = getelementptr float, ptr %121, i64 12
  %181 = zext i32 %174 to i64
  %182 = getelementptr inbounds %struct.MVert, ptr %14, i64 %181, i32 1
  %183 = load i16, ptr %182, align 2, !tbaa !111
  %184 = sitofp i16 %183 to float
  %185 = fmul float %184, 0x3F00002000000000
  store float %185, ptr %180, align 4, !tbaa !106
  %186 = getelementptr inbounds i16, ptr %182, i64 1
  %187 = load i16, ptr %186, align 2, !tbaa !111
  %188 = sitofp i16 %187 to float
  %189 = fmul float %188, 0x3F00002000000000
  %190 = getelementptr float, ptr %121, i64 13
  store float %189, ptr %190, align 4, !tbaa !106
  %191 = getelementptr inbounds i16, ptr %182, i64 2
  %192 = load i16, ptr %191, align 2, !tbaa !111
  %193 = sitofp i16 %192 to float
  %194 = fmul float %193, 0x3F00002000000000
  %195 = getelementptr float, ptr %121, i64 14
  store float %194, ptr %195, align 4, !tbaa !106
  %196 = getelementptr float, ptr %121, i64 15
  store float %127, ptr %196, align 4, !tbaa !106
  %197 = getelementptr float, ptr %121, i64 16
  store float %131, ptr %197, align 4, !tbaa !106
  br label %288

198:                                              ; preds = %116
  br i1 %24, label %243, label %199

199:                                              ; preds = %198
  %200 = sext i32 %40 to i64
  %201 = getelementptr inbounds float, ptr %1, i64 %200
  %202 = mul nuw nsw i64 %29, 3
  %203 = getelementptr inbounds float, ptr %9, i64 %202
  %204 = load float, ptr %203, align 4, !tbaa !106
  store float %204, ptr %201, align 4, !tbaa !106
  %205 = getelementptr inbounds float, ptr %203, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !106
  %207 = getelementptr inbounds float, ptr %201, i64 1
  store float %206, ptr %207, align 4, !tbaa !106
  %208 = getelementptr inbounds float, ptr %203, i64 2
  %209 = load float, ptr %208, align 4, !tbaa !106
  %210 = getelementptr inbounds float, ptr %201, i64 2
  store float %209, ptr %210, align 4, !tbaa !106
  %211 = getelementptr float, ptr %201, i64 3
  %212 = load float, ptr %203, align 4, !tbaa !106
  store float %212, ptr %211, align 4, !tbaa !106
  %213 = load float, ptr %205, align 4, !tbaa !106
  %214 = getelementptr float, ptr %201, i64 4
  store float %213, ptr %214, align 4, !tbaa !106
  %215 = load float, ptr %208, align 4, !tbaa !106
  %216 = getelementptr float, ptr %201, i64 5
  store float %215, ptr %216, align 4, !tbaa !106
  %217 = getelementptr float, ptr %201, i64 6
  %218 = load float, ptr %203, align 4, !tbaa !106
  store float %218, ptr %217, align 4, !tbaa !106
  %219 = load float, ptr %205, align 4, !tbaa !106
  %220 = getelementptr float, ptr %201, i64 7
  store float %219, ptr %220, align 4, !tbaa !106
  %221 = load float, ptr %208, align 4, !tbaa !106
  %222 = getelementptr float, ptr %201, i64 8
  store float %221, ptr %222, align 4, !tbaa !106
  %223 = load i32, ptr %41, align 4, !tbaa !67
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %292, label %225

225:                                              ; preds = %199
  %226 = getelementptr float, ptr %201, i64 9
  %227 = load float, ptr %203, align 4, !tbaa !106
  store float %227, ptr %226, align 4, !tbaa !106
  %228 = load float, ptr %205, align 4, !tbaa !106
  %229 = getelementptr float, ptr %201, i64 10
  store float %228, ptr %229, align 4, !tbaa !106
  %230 = load float, ptr %208, align 4, !tbaa !106
  %231 = getelementptr float, ptr %201, i64 11
  store float %230, ptr %231, align 4, !tbaa !106
  %232 = getelementptr float, ptr %201, i64 12
  %233 = load float, ptr %203, align 4, !tbaa !106
  store float %233, ptr %232, align 4, !tbaa !106
  %234 = load float, ptr %205, align 4, !tbaa !106
  %235 = getelementptr float, ptr %201, i64 13
  store float %234, ptr %235, align 4, !tbaa !106
  %236 = load float, ptr %208, align 4, !tbaa !106
  %237 = getelementptr float, ptr %201, i64 14
  store float %236, ptr %237, align 4, !tbaa !106
  %238 = getelementptr float, ptr %201, i64 15
  %239 = load float, ptr %203, align 4, !tbaa !106
  store float %239, ptr %238, align 4, !tbaa !106
  %240 = load float, ptr %205, align 4, !tbaa !106
  %241 = getelementptr float, ptr %201, i64 16
  store float %240, ptr %241, align 4, !tbaa !106
  %242 = load float, ptr %208, align 4, !tbaa !106
  br label %288

243:                                              ; preds = %198
  %244 = load i32, ptr %41, align 4, !tbaa !67
  %245 = icmp eq i32 %244, 0
  %246 = load i32, ptr %30, align 4, !tbaa !91
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.MVert, ptr %14, i64 %247
  %249 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !92
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.MVert, ptr %14, i64 %251
  %253 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !93
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.MVert, ptr %14, i64 %255
  br i1 %245, label %261, label %257

257:                                              ; preds = %243
  %258 = zext i32 %244 to i64
  %259 = getelementptr inbounds %struct.MVert, ptr %14, i64 %258
  %260 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %248, ptr noundef %252, ptr noundef %256, ptr noundef nonnull %259) #7
  br label %263

261:                                              ; preds = %243
  %262 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %248, ptr noundef %252, ptr noundef %256) #7
  br label %263

263:                                              ; preds = %261, %257
  %264 = sext i32 %40 to i64
  %265 = getelementptr inbounds float, ptr %1, i64 %264
  %266 = load float, ptr %6, align 4, !tbaa !106
  store float %266, ptr %265, align 4, !tbaa !106
  %267 = load float, ptr %25, align 4, !tbaa !106
  %268 = getelementptr inbounds float, ptr %265, i64 1
  store float %267, ptr %268, align 4, !tbaa !106
  %269 = load float, ptr %26, align 4, !tbaa !106
  %270 = getelementptr inbounds float, ptr %265, i64 2
  store float %269, ptr %270, align 4, !tbaa !106
  %271 = getelementptr float, ptr %265, i64 3
  store float %266, ptr %271, align 4, !tbaa !106
  %272 = getelementptr float, ptr %265, i64 4
  store float %267, ptr %272, align 4, !tbaa !106
  %273 = getelementptr float, ptr %265, i64 5
  store float %269, ptr %273, align 4, !tbaa !106
  %274 = getelementptr float, ptr %265, i64 6
  store float %266, ptr %274, align 4, !tbaa !106
  %275 = getelementptr float, ptr %265, i64 7
  store float %267, ptr %275, align 4, !tbaa !106
  %276 = getelementptr float, ptr %265, i64 8
  store float %269, ptr %276, align 4, !tbaa !106
  %277 = load i32, ptr %41, align 4, !tbaa !67
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %263
  %280 = getelementptr float, ptr %265, i64 9
  store float %266, ptr %280, align 4, !tbaa !106
  %281 = getelementptr float, ptr %265, i64 10
  store float %267, ptr %281, align 4, !tbaa !106
  %282 = getelementptr float, ptr %265, i64 11
  store float %269, ptr %282, align 4, !tbaa !106
  %283 = getelementptr float, ptr %265, i64 12
  store float %266, ptr %283, align 4, !tbaa !106
  %284 = getelementptr float, ptr %265, i64 13
  store float %267, ptr %284, align 4, !tbaa !106
  %285 = getelementptr float, ptr %265, i64 14
  store float %269, ptr %285, align 4, !tbaa !106
  %286 = getelementptr float, ptr %265, i64 15
  store float %266, ptr %286, align 4, !tbaa !106
  %287 = getelementptr float, ptr %265, i64 16
  store float %267, ptr %287, align 4, !tbaa !106
  br label %288

288:                                              ; preds = %225, %279, %176, %95
  %289 = phi ptr [ %49, %95 ], [ %121, %176 ], [ %265, %279 ], [ %201, %225 ]
  %290 = phi float [ %61, %95 ], [ %136, %176 ], [ %269, %279 ], [ %242, %225 ]
  %291 = getelementptr float, ptr %289, i64 17
  store float %290, ptr %291, align 4, !tbaa !106
  br label %292

292:                                              ; preds = %288, %46, %119, %263, %199
  %293 = add nuw nsw i64 %29, 1
  %294 = getelementptr inbounds %struct.MFace, ptr %30, i64 1
  %295 = icmp eq i64 %293, %27
  br i1 %295, label %296, label %28, !llvm.loop !112

296:                                              ; preds = %292, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPU_buffer_copy_mcol(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = tail call i32 %10(ptr noundef %0) #7
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %107

13:                                               ; preds = %5
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %103
  %16 = phi i64 [ 0, %13 ], [ %104, %103 ]
  %17 = phi ptr [ %8, %13 ], [ %105, %103 ]
  %18 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 4
  %19 = load i16, ptr %18, align 4, !tbaa !70
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !42
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !42
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = shl nsw i64 %16, 4
  %29 = getelementptr inbounds i8, ptr %4, i64 %28
  %30 = getelementptr inbounds i8, ptr %29, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !51
  store i8 %31, ptr %27, align 1, !tbaa !51
  %32 = getelementptr inbounds i8, ptr %29, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !51
  %34 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %33, ptr %34, align 1, !tbaa !51
  %35 = getelementptr inbounds i8, ptr %29, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !51
  %37 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %36, ptr %37, align 1, !tbaa !51
  %38 = getelementptr i8, ptr %27, i64 3
  %39 = or disjoint i64 %28, 4
  %40 = getelementptr inbounds i8, ptr %4, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !51
  store i8 %42, ptr %38, align 1, !tbaa !51
  %43 = getelementptr inbounds i8, ptr %40, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !51
  %45 = getelementptr i8, ptr %27, i64 4
  store i8 %44, ptr %45, align 1, !tbaa !51
  %46 = getelementptr inbounds i8, ptr %40, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !51
  %48 = getelementptr i8, ptr %27, i64 5
  store i8 %47, ptr %48, align 1, !tbaa !51
  %49 = getelementptr i8, ptr %27, i64 6
  %50 = or disjoint i64 %28, 8
  %51 = getelementptr inbounds i8, ptr %4, i64 %50
  %52 = getelementptr inbounds i8, ptr %51, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !51
  store i8 %53, ptr %49, align 1, !tbaa !51
  %54 = getelementptr inbounds i8, ptr %51, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !51
  %56 = getelementptr i8, ptr %27, i64 7
  store i8 %55, ptr %56, align 1, !tbaa !51
  %57 = getelementptr inbounds i8, ptr %51, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !51
  %59 = getelementptr i8, ptr %27, i64 8
  store i8 %58, ptr %59, align 1, !tbaa !51
  %60 = load i16, ptr %18, align 4, !tbaa !70
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds i32, ptr %3, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !42
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %2, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !42
  %67 = add nsw i32 %66, 9
  store i32 %67, ptr %65, align 4, !tbaa !42
  %68 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !67
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %103, label %71

71:                                               ; preds = %15
  %72 = getelementptr i8, ptr %27, i64 9
  %73 = load i8, ptr %52, align 1, !tbaa !51
  store i8 %73, ptr %72, align 1, !tbaa !51
  %74 = load i8, ptr %54, align 1, !tbaa !51
  %75 = getelementptr i8, ptr %27, i64 10
  store i8 %74, ptr %75, align 1, !tbaa !51
  %76 = load i8, ptr %57, align 1, !tbaa !51
  %77 = getelementptr i8, ptr %27, i64 11
  store i8 %76, ptr %77, align 1, !tbaa !51
  %78 = getelementptr i8, ptr %27, i64 12
  %79 = or disjoint i64 %28, 12
  %80 = getelementptr inbounds i8, ptr %4, i64 %79
  %81 = getelementptr inbounds i8, ptr %80, i64 3
  %82 = load i8, ptr %81, align 1, !tbaa !51
  store i8 %82, ptr %78, align 1, !tbaa !51
  %83 = getelementptr inbounds i8, ptr %80, i64 2
  %84 = load i8, ptr %83, align 1, !tbaa !51
  %85 = getelementptr i8, ptr %27, i64 13
  store i8 %84, ptr %85, align 1, !tbaa !51
  %86 = getelementptr inbounds i8, ptr %80, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !51
  %88 = getelementptr i8, ptr %27, i64 14
  store i8 %87, ptr %88, align 1, !tbaa !51
  %89 = getelementptr i8, ptr %27, i64 15
  %90 = load i8, ptr %30, align 1, !tbaa !51
  store i8 %90, ptr %89, align 1, !tbaa !51
  %91 = load i8, ptr %32, align 1, !tbaa !51
  %92 = getelementptr i8, ptr %27, i64 16
  store i8 %91, ptr %92, align 1, !tbaa !51
  %93 = load i8, ptr %35, align 1, !tbaa !51
  %94 = getelementptr i8, ptr %27, i64 17
  store i8 %93, ptr %94, align 1, !tbaa !51
  %95 = load i16, ptr %18, align 4, !tbaa !70
  %96 = sext i16 %95 to i64
  %97 = getelementptr inbounds i32, ptr %3, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !42
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %2, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !42
  %102 = add nsw i32 %101, 9
  store i32 %102, ptr %100, align 4, !tbaa !42
  br label %103

103:                                              ; preds = %71, %15
  %104 = add nuw nsw i64 %16, 1
  %105 = getelementptr inbounds %struct.MFace, ptr %17, i64 1
  %106 = icmp eq i64 %104, %14
  br i1 %106, label %107, label %15, !llvm.loop !113

107:                                              ; preds = %103, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPU_buffer_copy_uv(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 {
  %6 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %76, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = tail call ptr %10(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = tail call i32 %13(ptr noundef %0) #7
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %8
  %17 = zext nneg i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %72
  %19 = phi i64 [ 0, %16 ], [ %73, %72 ]
  %20 = phi ptr [ %11, %16 ], [ %74, %72 ]
  %21 = getelementptr inbounds %struct.MFace, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 4, !tbaa !70
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds i32, ptr %3, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !42
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %2, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !42
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %1, i64 %29
  %31 = getelementptr inbounds %struct.MTFace, ptr %6, i64 %19
  %32 = load float, ptr %31, align 4, !tbaa !106
  store float %32, ptr %30, align 4, !tbaa !106
  %33 = getelementptr inbounds float, ptr %31, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !106
  %35 = getelementptr inbounds float, ptr %30, i64 1
  store float %34, ptr %35, align 4, !tbaa !106
  %36 = getelementptr float, ptr %30, i64 2
  %37 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !106
  store float %38, ptr %36, align 4, !tbaa !106
  %39 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !106
  %41 = getelementptr float, ptr %30, i64 3
  store float %40, ptr %41, align 4, !tbaa !106
  %42 = getelementptr float, ptr %30, i64 4
  %43 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !106
  store float %44, ptr %42, align 4, !tbaa !106
  %45 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !106
  %47 = getelementptr float, ptr %30, i64 5
  store float %46, ptr %47, align 4, !tbaa !106
  %48 = add nsw i32 %28, 6
  store i32 %48, ptr %27, align 4, !tbaa !42
  %49 = getelementptr inbounds %struct.MFace, ptr %20, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !67
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %18
  %53 = getelementptr float, ptr %30, i64 6
  %54 = load float, ptr %43, align 4, !tbaa !106
  store float %54, ptr %53, align 4, !tbaa !106
  %55 = load float, ptr %45, align 4, !tbaa !106
  %56 = getelementptr float, ptr %30, i64 7
  store float %55, ptr %56, align 4, !tbaa !106
  %57 = getelementptr float, ptr %30, i64 8
  %58 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !106
  store float %59, ptr %57, align 4, !tbaa !106
  %60 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 3, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !106
  %62 = getelementptr float, ptr %30, i64 9
  store float %61, ptr %62, align 4, !tbaa !106
  %63 = getelementptr float, ptr %30, i64 10
  %64 = load float, ptr %31, align 4, !tbaa !106
  store float %64, ptr %63, align 4, !tbaa !106
  %65 = load float, ptr %33, align 4, !tbaa !106
  %66 = getelementptr float, ptr %30, i64 11
  store float %65, ptr %66, align 4, !tbaa !106
  %67 = load i32, ptr %24, align 4, !tbaa !42
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %2, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !42
  %71 = add nsw i32 %70, 6
  store i32 %71, ptr %69, align 4, !tbaa !42
  br label %72

72:                                               ; preds = %18, %52
  %73 = add nuw nsw i64 %19, 1
  %74 = getelementptr inbounds %struct.MFace, ptr %20, i64 1
  %75 = icmp eq i64 %73, %17
  br i1 %75, label %76, label %18, !llvm.loop !114

76:                                               ; preds = %72, %8, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPU_buffer_copy_uv_texpaint(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 4, !tbaa !61
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call ptr %9(ptr noundef %0) #7
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %12 = sext i32 %7 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @.str.12) #7
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = zext nneg i32 %7 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %23, %18 ]
  %20 = trunc i64 %19 to i32
  %21 = tail call ptr @DM_paint_uvlayer_active_get(ptr noundef %0, i32 noundef %20) #7
  %22 = getelementptr inbounds ptr, ptr %14, i64 %19
  store ptr %21, ptr %22, align 8, !tbaa !34
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %17
  br i1 %24, label %25, label %18, !llvm.loop !115

25:                                               ; preds = %18, %5
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %27 = tail call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %26, i32 noundef 5) #7
  %28 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %26, i32 noundef 5, i32 noundef %27) #7
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  %31 = tail call i32 %30(ptr noundef %0) #7
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %127

33:                                               ; preds = %25
  %34 = zext nneg i32 %31 to i64
  br label %35

35:                                               ; preds = %33, %123
  %36 = phi i64 [ 0, %33 ], [ %124, %123 ]
  %37 = phi ptr [ %10, %33 ], [ %125, %123 ]
  %38 = getelementptr inbounds %struct.MFace, ptr %37, i64 0, i32 4
  %39 = load i16, ptr %38, align 4, !tbaa !70
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i32, ptr %3, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !42
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %2, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !42
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, ptr %1, i64 %46
  %48 = getelementptr inbounds ptr, ptr %14, i64 %40
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.MTFace, ptr %49, i64 %36
  %51 = load float, ptr %50, align 4, !tbaa !106
  store float %51, ptr %47, align 4, !tbaa !106
  %52 = getelementptr inbounds float, ptr %50, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !106
  %54 = getelementptr inbounds float, ptr %47, i64 1
  store float %53, ptr %54, align 4, !tbaa !106
  %55 = getelementptr float, ptr %47, i64 2
  %56 = getelementptr inbounds %struct.MTFace, ptr %28, i64 %36
  %57 = load float, ptr %56, align 4, !tbaa !106
  store float %57, ptr %55, align 4, !tbaa !106
  %58 = getelementptr inbounds float, ptr %56, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !106
  %60 = getelementptr float, ptr %47, i64 3
  store float %59, ptr %60, align 4, !tbaa !106
  %61 = getelementptr float, ptr %47, i64 4
  %62 = getelementptr inbounds %struct.MTFace, ptr %49, i64 %36, i32 0, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !106
  store float %63, ptr %61, align 4, !tbaa !106
  %64 = getelementptr inbounds float, ptr %62, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !106
  %66 = getelementptr float, ptr %47, i64 5
  store float %65, ptr %66, align 4, !tbaa !106
  %67 = getelementptr float, ptr %47, i64 6
  %68 = getelementptr inbounds [4 x [2 x float]], ptr %56, i64 0, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !106
  store float %69, ptr %67, align 4, !tbaa !106
  %70 = getelementptr inbounds [4 x [2 x float]], ptr %56, i64 0, i64 1, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !106
  %72 = getelementptr float, ptr %47, i64 7
  store float %71, ptr %72, align 4, !tbaa !106
  %73 = getelementptr float, ptr %47, i64 8
  %74 = getelementptr inbounds %struct.MTFace, ptr %49, i64 %36, i32 0, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !106
  store float %75, ptr %73, align 4, !tbaa !106
  %76 = getelementptr inbounds float, ptr %74, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !106
  %78 = getelementptr float, ptr %47, i64 9
  store float %77, ptr %78, align 4, !tbaa !106
  %79 = getelementptr float, ptr %47, i64 10
  %80 = getelementptr inbounds [4 x [2 x float]], ptr %56, i64 0, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !106
  store float %81, ptr %79, align 4, !tbaa !106
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %56, i64 0, i64 2, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !106
  %84 = getelementptr float, ptr %47, i64 11
  store float %83, ptr %84, align 4, !tbaa !106
  %85 = add nsw i32 %45, 12
  store i32 %85, ptr %44, align 4, !tbaa !42
  %86 = getelementptr inbounds %struct.MFace, ptr %37, i64 0, i32 3
  %87 = load i32, ptr %86, align 4, !tbaa !67
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %123, label %89

89:                                               ; preds = %35
  %90 = getelementptr float, ptr %47, i64 12
  %91 = load float, ptr %74, align 4, !tbaa !106
  store float %91, ptr %90, align 4, !tbaa !106
  %92 = load float, ptr %76, align 4, !tbaa !106
  %93 = getelementptr float, ptr %47, i64 13
  store float %92, ptr %93, align 4, !tbaa !106
  %94 = getelementptr float, ptr %47, i64 14
  %95 = load float, ptr %80, align 4, !tbaa !106
  store float %95, ptr %94, align 4, !tbaa !106
  %96 = load float, ptr %82, align 4, !tbaa !106
  %97 = getelementptr float, ptr %47, i64 15
  store float %96, ptr %97, align 4, !tbaa !106
  %98 = getelementptr float, ptr %47, i64 16
  %99 = getelementptr inbounds %struct.MTFace, ptr %49, i64 %36, i32 0, i64 3
  %100 = load float, ptr %99, align 4, !tbaa !106
  store float %100, ptr %98, align 4, !tbaa !106
  %101 = getelementptr inbounds float, ptr %99, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !106
  %103 = getelementptr float, ptr %47, i64 17
  store float %102, ptr %103, align 4, !tbaa !106
  %104 = getelementptr float, ptr %47, i64 18
  %105 = getelementptr inbounds [4 x [2 x float]], ptr %56, i64 0, i64 3
  %106 = load float, ptr %105, align 4, !tbaa !106
  store float %106, ptr %104, align 4, !tbaa !106
  %107 = getelementptr inbounds [4 x [2 x float]], ptr %56, i64 0, i64 3, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !106
  %109 = getelementptr float, ptr %47, i64 19
  store float %108, ptr %109, align 4, !tbaa !106
  %110 = getelementptr float, ptr %47, i64 20
  %111 = load float, ptr %50, align 4, !tbaa !106
  store float %111, ptr %110, align 4, !tbaa !106
  %112 = load float, ptr %52, align 4, !tbaa !106
  %113 = getelementptr float, ptr %47, i64 21
  store float %112, ptr %113, align 4, !tbaa !106
  %114 = getelementptr float, ptr %47, i64 22
  %115 = load float, ptr %56, align 4, !tbaa !106
  store float %115, ptr %114, align 4, !tbaa !106
  %116 = load float, ptr %58, align 4, !tbaa !106
  %117 = getelementptr float, ptr %47, i64 23
  store float %116, ptr %117, align 4, !tbaa !106
  %118 = load i32, ptr %41, align 4, !tbaa !42
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %2, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !42
  %122 = add nsw i32 %121, 12
  store i32 %122, ptr %120, align 4, !tbaa !42
  br label %123

123:                                              ; preds = %89, %35
  %124 = add nuw nsw i64 %36, 1
  %125 = getelementptr inbounds %struct.MFace, ptr %37, i64 1
  %126 = icmp eq i64 %124, %34
  br i1 %126, label %127, label %35, !llvm.loop !116

127:                                              ; preds = %123, %25
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %128(ptr noundef %14) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPU_buffer_copy_edge(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = tail call i32 %10(ptr noundef %0) #7
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.GPUDrawObject, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = zext nneg i32 %11 to i64
  br label %19

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %35, %19 ]
  %21 = phi ptr [ %8, %13 ], [ %36, %19 ]
  %22 = load i32, ptr %21, align 4, !tbaa !118
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.GPUVertPointLink, ptr %17, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !88
  %26 = shl nuw nsw i64 %20, 1
  %27 = getelementptr inbounds i32, ptr %1, i64 %26
  store i32 %25, ptr %27, align 4, !tbaa !42
  %28 = getelementptr inbounds %struct.MEdge, ptr %21, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !120
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.GPUVertPointLink, ptr %17, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !88
  %33 = or disjoint i64 %26, 1
  %34 = getelementptr inbounds i32, ptr %1, i64 %33
  store i32 %32, ptr %34, align 4, !tbaa !42
  %35 = add nuw nsw i64 %20, 1
  %36 = getelementptr inbounds %struct.MEdge, ptr %21, i64 1
  %37 = icmp eq i64 %35, %18
  br i1 %37, label %38, label %19, !llvm.loop !121

38:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPU_buffer_copy_uvedge(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = alloca %struct.MFace, align 4
  %7 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !122
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %73

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %15 = getelementptr inbounds %struct.MFace, ptr %6, i64 0, i32 3
  br label %16

16:                                               ; preds = %13, %61
  %17 = phi i32 [ 0, %13 ], [ %68, %61 ]
  %18 = phi i32 [ 0, %13 ], [ %69, %61 ]
  %19 = phi ptr [ %7, %13 ], [ %70, %61 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #7
  %20 = load ptr, ptr %14, align 8, !tbaa !123
  call void %20(ptr noundef %0, i32 noundef %18, ptr noundef nonnull %6) #7
  %21 = zext nneg i32 %17 to i64
  %22 = getelementptr inbounds float, ptr %1, i64 %21
  %23 = load float, ptr %19, align 4, !tbaa !106
  store float %23, ptr %22, align 4, !tbaa !106
  %24 = getelementptr inbounds float, ptr %19, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !106
  %26 = getelementptr inbounds float, ptr %22, i64 1
  store float %25, ptr %26, align 4, !tbaa !106
  %27 = getelementptr float, ptr %22, i64 2
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !106
  store float %29, ptr %27, align 4, !tbaa !106
  %30 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !106
  %32 = getelementptr float, ptr %22, i64 3
  store float %31, ptr %32, align 4, !tbaa !106
  %33 = getelementptr float, ptr %22, i64 4
  %34 = load float, ptr %28, align 4, !tbaa !106
  store float %34, ptr %33, align 4, !tbaa !106
  %35 = load float, ptr %30, align 4, !tbaa !106
  %36 = getelementptr float, ptr %22, i64 5
  store float %35, ptr %36, align 4, !tbaa !106
  %37 = getelementptr float, ptr %22, i64 6
  %38 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !106
  store float %39, ptr %37, align 4, !tbaa !106
  %40 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 2, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !106
  %42 = getelementptr float, ptr %22, i64 7
  store float %41, ptr %42, align 4, !tbaa !106
  %43 = load i32, ptr %15, align 4, !tbaa !67
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr float, ptr %22, i64 8
  %46 = load float, ptr %38, align 4, !tbaa !106
  store float %46, ptr %45, align 4, !tbaa !106
  %47 = load float, ptr %40, align 4, !tbaa !106
  %48 = getelementptr float, ptr %22, i64 9
  store float %47, ptr %48, align 4, !tbaa !106
  %49 = getelementptr float, ptr %22, i64 10
  br i1 %44, label %61, label %50

50:                                               ; preds = %16
  %51 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 3
  %52 = load float, ptr %51, align 4, !tbaa !106
  store float %52, ptr %49, align 4, !tbaa !106
  %53 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 3, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !106
  %55 = getelementptr float, ptr %22, i64 11
  store float %54, ptr %55, align 4, !tbaa !106
  %56 = getelementptr float, ptr %22, i64 12
  %57 = load float, ptr %51, align 4, !tbaa !106
  store float %57, ptr %56, align 4, !tbaa !106
  %58 = load float, ptr %53, align 4, !tbaa !106
  %59 = getelementptr float, ptr %22, i64 13
  store float %58, ptr %59, align 4, !tbaa !106
  %60 = getelementptr float, ptr %22, i64 14
  br label %61

61:                                               ; preds = %16, %50
  %62 = phi ptr [ %60, %50 ], [ %49, %16 ]
  %63 = phi i64 [ 15, %50 ], [ 11, %16 ]
  %64 = phi i32 [ 16, %50 ], [ 12, %16 ]
  %65 = load float, ptr %19, align 4, !tbaa !106
  store float %65, ptr %62, align 4, !tbaa !106
  %66 = load float, ptr %24, align 4, !tbaa !106
  %67 = getelementptr float, ptr %22, i64 %63
  store float %66, ptr %67, align 4, !tbaa !106
  %68 = add nuw nsw i32 %17, %64
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  %69 = add nuw nsw i32 %18, 1
  %70 = getelementptr inbounds %struct.MTFace, ptr %19, i64 1
  %71 = load i32, ptr %10, align 8, !tbaa !122
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %16, label %73, !llvm.loop !124

73:                                               ; preds = %61, %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_vertex_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32884) #7
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.GPUBuffer, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !57
  tail call void %8(i32 noundef 34962, i32 noundef %13) #7
  br label %20

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct.GPUBuffer, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %14, %7
  %21 = phi ptr [ %19, %14 ], [ null, %7 ]
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %21) #7
  %22 = load i32, ptr @GLStates, align 4, !tbaa !42
  %23 = or i32 %22, 1
  store i32 %23, ptr @GLStates, align 4, !tbaa !42
  br label %24

24:                                               ; preds = %1, %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @GPU_drawobject_new(ptr noundef %0)
  store ptr %7, ptr %3, align 8, !tbaa !98
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !98
  switch i32 %1, label %22 [
    i32 0, label %23
    i32 1, label %10
    i32 2, label %12
    i32 3, label %14
    i32 4, label %16
    i32 5, label %18
    i32 6, label %20
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %9, i64 0, i32 1
  br label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.GPUDrawObject, ptr %9, i64 0, i32 3
  br label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.GPUDrawObject, ptr %9, i64 0, i32 2
  br label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.GPUDrawObject, ptr %9, i64 0, i32 2
  br label %23

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.GPUDrawObject, ptr %9, i64 0, i32 4
  br label %23

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.GPUDrawObject, ptr %9, i64 0, i32 5
  br label %23

22:                                               ; preds = %8
  unreachable

23:                                               ; preds = %8, %10, %12, %14, %16, %18, %20
  %24 = phi ptr [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %263

27:                                               ; preds = %23
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds [7 x %struct.GPUBufferTypeSettings], ptr @gpu_buffer_type_settings, i64 0, i64 %28
  %30 = icmp eq i32 %1, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.GPUDrawObject, ptr %9, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !125
  %34 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %33) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %261, label %42

36:                                               ; preds = %27
  %37 = add i32 %1, -3
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %261, label %42

42:                                               ; preds = %39, %36, %31
  %43 = phi ptr [ %34, %31 ], [ null, %39 ], [ null, %36 ]
  %44 = load ptr, ptr %3, align 8, !tbaa !98
  %45 = getelementptr inbounds [7 x %struct.GPUBufferTypeSettings], ptr @gpu_buffer_type_settings, i64 0, i64 %28, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !126
  switch i32 %1, label %78 [
    i32 0, label %47
    i32 1, label %54
    i32 2, label %58
    i32 3, label %62
    i32 4, label %66
    i32 5, label %70
    i32 6, label %74
  ]

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 11
  %49 = load i32, ptr %48, align 4, !tbaa !85
  %50 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !96
  %52 = add nsw i32 %51, %49
  %53 = mul i32 %52, 12
  br label %79

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 11
  %56 = load i32, ptr %55, align 4, !tbaa !85
  %57 = mul i32 %56, 12
  br label %79

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 11
  %60 = load i32, ptr %59, align 4, !tbaa !85
  %61 = mul i32 %60, 3
  br label %79

62:                                               ; preds = %42
  %63 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 11
  %64 = load i32, ptr %63, align 4, !tbaa !85
  %65 = shl i32 %64, 3
  br label %79

66:                                               ; preds = %42
  %67 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 11
  %68 = load i32, ptr %67, align 4, !tbaa !85
  %69 = shl i32 %68, 4
  br label %79

70:                                               ; preds = %42
  %71 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 14
  %72 = load i32, ptr %71, align 8, !tbaa !76
  %73 = shl i32 %72, 3
  br label %79

74:                                               ; preds = %42
  %75 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 11
  %76 = load i32, ptr %75, align 4, !tbaa !85
  %77 = shl i32 %76, 4
  br label %79

78:                                               ; preds = %42
  unreachable

79:                                               ; preds = %74, %70, %66, %62, %58, %54, %47
  %80 = phi i32 [ %77, %74 ], [ %73, %70 ], [ %69, %66 ], [ %65, %62 ], [ %61, %58 ], [ %57, %54 ], [ %53, %47 ]
  %81 = getelementptr inbounds [7 x %struct.GPUBufferTypeSettings], ptr @gpu_buffer_type_settings, i64 0, i64 %28, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !128
  %83 = load ptr, ptr %29, align 16, !tbaa !129
  %84 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %107

86:                                               ; preds = %79
  %87 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !51
  %91 = icmp ne i8 %90, 0
  %92 = zext i1 %91 to i32
  store i32 %92, ptr @useVBOs, align 4, !tbaa !42
  br label %93

93:                                               ; preds = %89, %86
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %95 = tail call ptr %94(i64 noundef 32, ptr noundef nonnull @.str.7) #7
  %96 = getelementptr inbounds %struct.GPUBufferPool, ptr %95, i64 0, i32 2
  store i32 8, ptr %96, align 8, !tbaa !52
  %97 = getelementptr inbounds %struct.GPUBufferPool, ptr %95, i64 0, i32 3
  store i32 100, ptr %97, align 4, !tbaa !53
  %98 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %99 = tail call ptr %98(i64 noundef 64, ptr noundef nonnull @.str.8) #7
  %100 = getelementptr inbounds %struct.GPUBufferPool, ptr %95, i64 0, i32 4
  store ptr %99, ptr %100, align 8, !tbaa !41
  %101 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %102 = load i32, ptr %97, align 4, !tbaa !53
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 2
  %105 = tail call ptr %101(i64 noundef %104, ptr noundef nonnull @.str.9) #7
  %106 = getelementptr inbounds %struct.GPUBufferPool, ptr %95, i64 0, i32 5
  store ptr %105, ptr %106, align 8, !tbaa !48
  store ptr %95, ptr @gpu_buffer_pool, align 8, !tbaa !34
  br label %107

107:                                              ; preds = %79, %93
  %108 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  %109 = tail call fastcc ptr @gpu_buffer_alloc_intern(i32 noundef %80)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load ptr, ptr %3, align 8, !tbaa !98
  %113 = getelementptr inbounds %struct.GPUDrawObject, ptr %112, i64 0, i32 15
  store i8 1, ptr %113, align 4, !tbaa !130
  br label %114

114:                                              ; preds = %111, %107
  %115 = load ptr, ptr %3, align 8, !tbaa !98
  %116 = getelementptr inbounds %struct.GPUDrawObject, ptr %115, i64 0, i32 15
  %117 = load i8, ptr %116, align 4, !tbaa !130
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %259

119:                                              ; preds = %114
  %120 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  %122 = load i32, ptr %121, align 4, !tbaa !61
  %123 = sext i32 %122 to i64
  %124 = shl nsw i64 %123, 2
  %125 = tail call ptr %120(i64 noundef %124, ptr noundef nonnull @.str.13) #7
  %126 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %127 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 10
  %128 = load i32, ptr %127, align 8, !tbaa !77
  %129 = sext i32 %128 to i64
  %130 = shl nsw i64 %129, 2
  %131 = tail call ptr %126(i64 noundef %130, ptr noundef nonnull @.str.14) #7
  %132 = load i32, ptr %127, align 8, !tbaa !77
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %119
  %135 = getelementptr inbounds %struct.GPUDrawObject, ptr %44, i64 0, i32 9
  %136 = load ptr, ptr %135, align 8, !tbaa !79
  br label %137

137:                                              ; preds = %134, %137
  %138 = phi i64 [ 0, %134 ], [ %148, %137 ]
  %139 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %136, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !80
  %141 = mul nsw i32 %140, %46
  %142 = getelementptr inbounds i32, ptr %131, i64 %138
  store i32 %141, ptr %142, align 4, !tbaa !42
  %143 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %136, i64 %138, i32 2
  %144 = load i16, ptr %143, align 4, !tbaa !83
  %145 = sext i16 %144 to i64
  %146 = getelementptr inbounds i32, ptr %125, i64 %145
  %147 = trunc i64 %138 to i32
  store i32 %147, ptr %146, align 4, !tbaa !42
  %148 = add nuw nsw i64 %138, 1
  %149 = load i32, ptr %127, align 8, !tbaa !77
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %137, label %152, !llvm.loop !131

152:                                              ; preds = %137, %119
  %153 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %247, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.GPUBufferPool, ptr %108, i64 0, i32 4
  %157 = getelementptr inbounds %struct.GPUBufferPool, ptr %108, i64 0, i32 4
  br label %158

158:                                              ; preds = %155, %232
  %159 = phi i8 [ 0, %155 ], [ %234, %232 ]
  %160 = phi ptr [ %109, %155 ], [ %233, %232 ]
  %161 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %162 = getelementptr inbounds %struct.GPUBuffer, ptr %160, i64 0, i32 2
  %163 = load i32, ptr %162, align 8, !tbaa !57
  tail call void %161(i32 noundef %82, i32 noundef %163) #7
  %164 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %165 = load i32, ptr %160, align 8, !tbaa !54
  %166 = sext i32 %165 to i64
  tail call void %164(i32 noundef %82, i64 noundef %166, ptr noundef null, i32 noundef 35044) #7
  %167 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %168 = tail call ptr %167(i32 noundef %82, i32 noundef 35001) #7
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %232

170:                                              ; preds = %158
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %160)
  %171 = load i32, ptr %108, align 8, !tbaa !38
  %172 = icmp slt i32 %171, 1
  br i1 %172, label %197, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %156, align 8, !tbaa !41
  %175 = zext nneg i32 %171 to i64
  %176 = getelementptr ptr, ptr %174, i64 %175
  %177 = getelementptr ptr, ptr %176, i64 -1
  %178 = load ptr, ptr %177, align 8, !tbaa !34
  %179 = icmp eq ptr %178, null
  br i1 %179, label %197, label %180

180:                                              ; preds = %173
  %181 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %185 = getelementptr inbounds %struct.GPUBuffer, ptr %178, i64 0, i32 2
  tail call void %184(i32 noundef 1, ptr noundef nonnull %185) #7
  br label %190

186:                                              ; preds = %180
  %187 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %188 = getelementptr inbounds %struct.GPUBuffer, ptr %178, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !43
  tail call void %187(ptr noundef %189) #7
  br label %190

190:                                              ; preds = %186, %183
  %191 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %191(ptr noundef nonnull %178) #7
  %192 = load i32, ptr %108, align 8, !tbaa !38
  %193 = add nsw i32 %192, -1
  store i32 %193, ptr %108, align 8, !tbaa !38
  %194 = load ptr, ptr %156, align 8, !tbaa !41
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds ptr, ptr %194, i64 %195
  store ptr null, ptr %196, align 8, !tbaa !34
  br label %197

197:                                              ; preds = %170, %173, %190
  %198 = load i32, ptr %108, align 8, !tbaa !38
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %226

200:                                              ; preds = %197
  %201 = load ptr, ptr %157, align 8, !tbaa !41
  %202 = zext nneg i32 %198 to i64
  %203 = getelementptr ptr, ptr %201, i64 %202
  %204 = getelementptr ptr, ptr %203, i64 -1
  %205 = load ptr, ptr %204, align 8, !tbaa !34
  %206 = icmp eq ptr %205, null
  br i1 %206, label %224, label %207

207:                                              ; preds = %200
  %208 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %212 = getelementptr inbounds %struct.GPUBuffer, ptr %205, i64 0, i32 2
  tail call void %211(i32 noundef 1, ptr noundef nonnull %212) #7
  br label %217

213:                                              ; preds = %207
  %214 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %215 = getelementptr inbounds %struct.GPUBuffer, ptr %205, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !43
  tail call void %214(ptr noundef %216) #7
  br label %217

217:                                              ; preds = %213, %210
  %218 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %218(ptr noundef nonnull %205) #7
  %219 = load i32, ptr %108, align 8, !tbaa !38
  %220 = add nsw i32 %219, -1
  store i32 %220, ptr %108, align 8, !tbaa !38
  %221 = load ptr, ptr %157, align 8, !tbaa !41
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds ptr, ptr %221, i64 %222
  store ptr null, ptr %223, align 8, !tbaa !34
  br label %224

224:                                              ; preds = %200, %217
  %225 = tail call fastcc ptr @gpu_buffer_alloc_intern(i32 noundef %80)
  br label %226

226:                                              ; preds = %224, %197
  %227 = phi ptr [ %225, %224 ], [ null, %197 ]
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load ptr, ptr %3, align 8, !tbaa !98
  %231 = getelementptr inbounds %struct.GPUDrawObject, ptr %230, i64 0, i32 15
  store i8 1, ptr %231, align 4, !tbaa !130
  br label %232

232:                                              ; preds = %229, %226, %158
  %233 = phi ptr [ %227, %226 ], [ null, %229 ], [ %160, %158 ]
  %234 = phi i8 [ %159, %226 ], [ 1, %229 ], [ 1, %158 ]
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %158, label %236, !llvm.loop !132

236:                                              ; preds = %232
  %237 = load ptr, ptr %3, align 8, !tbaa !98
  %238 = getelementptr inbounds %struct.GPUDrawObject, ptr %237, i64 0, i32 15
  %239 = load i8, ptr %238, align 4, !tbaa !130
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236, %241
  tail call void %83(ptr noundef %0, ptr noundef %168, ptr noundef %131, ptr noundef %125, ptr noundef %43) #7
  %242 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %243 = tail call zeroext i8 %242(i32 noundef %82) #7
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %241, label %245, !llvm.loop !133

245:                                              ; preds = %241, %236
  %246 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %246(i32 noundef %82, i32 noundef 0) #7
  br label %255

247:                                              ; preds = %152
  %248 = getelementptr inbounds %struct.GPUBuffer, ptr %109, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !43
  %250 = icmp eq ptr %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %247
  tail call void %83(ptr noundef %0, ptr noundef nonnull %249, ptr noundef %131, ptr noundef %125, ptr noundef %43) #7
  br label %255

252:                                              ; preds = %247
  %253 = load ptr, ptr %3, align 8, !tbaa !98
  %254 = getelementptr inbounds %struct.GPUDrawObject, ptr %253, i64 0, i32 15
  store i8 1, ptr %254, align 4, !tbaa !130
  br label %255

255:                                              ; preds = %252, %251, %245
  %256 = phi ptr [ %233, %245 ], [ %109, %251 ], [ %109, %252 ]
  %257 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %257(ptr noundef %131) #7
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %258(ptr noundef %125) #7
  br label %259

259:                                              ; preds = %114, %255
  %260 = phi ptr [ %256, %255 ], [ null, %114 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %261

261:                                              ; preds = %259, %31, %39
  %262 = phi ptr [ null, %31 ], [ null, %39 ], [ %260, %259 ]
  store ptr %262, ptr %24, align 8, !tbaa !34
  br label %263

263:                                              ; preds = %261, %23
  %264 = load ptr, ptr %24, align 8, !tbaa !34
  ret ptr %264
}

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_normal_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 1)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32885) #7
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !57
  tail call void %8(i32 noundef 34962, i32 noundef %14) #7
  br label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.GPUDrawObject, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  br label %22

22:                                               ; preds = %15, %7
  %23 = phi ptr [ %21, %15 ], [ null, %7 ]
  tail call void @glNormalPointer(i32 noundef 5126, i32 noundef 0, ptr noundef %23) #7
  %24 = load i32, ptr @GLStates, align 4, !tbaa !42
  %25 = or i32 %24, 2
  store i32 %25, ptr @GLStates, align 4, !tbaa !42
  br label %26

26:                                               ; preds = %1, %22
  ret void
}

declare void @glNormalPointer(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_uv_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 3)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32888) #7
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !57
  tail call void %8(i32 noundef 34962, i32 noundef %14) #7
  br label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.GPUDrawObject, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  br label %22

22:                                               ; preds = %15, %7
  %23 = phi ptr [ %21, %15 ], [ null, %7 ]
  tail call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %23) #7
  %24 = load i32, ptr @GLStates, align 4, !tbaa !42
  %25 = or i32 %24, 4
  store i32 %25, ptr @GLStates, align 4, !tbaa !42
  br label %26

26:                                               ; preds = %1, %22
  ret void
}

declare void @glTexCoordPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_texpaint_uv_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 4)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32888) #7
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !57
  tail call void %8(i32 noundef 34962, i32 noundef %14) #7
  tail call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 16, ptr noundef null) #7
  %15 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %15(i32 noundef 33986) #7
  tail call void @glEnableClientState(i32 noundef 32888) #7
  br label %30

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.GPUDrawObject, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.GPUBuffer, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  tail call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 16, ptr noundef %22) #7
  %23 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %23(i32 noundef 33986) #7
  tail call void @glEnableClientState(i32 noundef 32888) #7
  %24 = load ptr, ptr %17, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.GPUDrawObject, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.GPUBuffer, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  br label %30

30:                                               ; preds = %16, %7
  %31 = phi ptr [ %29, %16 ], [ inttoptr (i64 8 to ptr), %7 ]
  tail call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 16, ptr noundef nonnull %31) #7
  %32 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %32(i32 noundef 33984) #7
  %33 = load i32, ptr @GLStates, align 4, !tbaa !42
  %34 = or i32 %33, 12
  store i32 %34, ptr @GLStates, align 4, !tbaa !42
  br label %35

35:                                               ; preds = %1, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_color_setup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @GPU_drawobject_new(ptr noundef %0)
  store ptr %7, ptr %3, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !134
  %10 = and i32 %9, -3
  store i32 %10, ptr %8, align 8, !tbaa !134
  br label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !134
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !125
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #7
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %22)
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #7
  br label %25

25:                                               ; preds = %20, %24
  store ptr null, ptr %21, align 8, !tbaa !34
  %26 = load i32, ptr %12, align 8, !tbaa !134
  %27 = and i32 %26, -3
  store i32 %27, ptr %12, align 8, !tbaa !134
  %28 = load ptr, ptr %3, align 8, !tbaa !98
  br label %29

29:                                               ; preds = %6, %25
  %30 = phi ptr [ %28, %25 ], [ %7, %6 ]
  %31 = getelementptr inbounds %struct.GPUDrawObject, ptr %30, i64 0, i32 8
  store i32 %1, ptr %31, align 8, !tbaa !125
  br label %32

32:                                               ; preds = %29, %16
  %33 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 2)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %32
  tail call void @glEnableClientState(i32 noundef 32886) #7
  %36 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %40 = load ptr, ptr %3, align 8, !tbaa !98
  %41 = getelementptr inbounds %struct.GPUDrawObject, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.GPUBuffer, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !57
  tail call void %39(i32 noundef 34962, i32 noundef %44) #7
  br label %51

45:                                               ; preds = %35
  %46 = load ptr, ptr %3, align 8, !tbaa !98
  %47 = getelementptr inbounds %struct.GPUDrawObject, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !102
  %49 = getelementptr inbounds %struct.GPUBuffer, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  br label %51

51:                                               ; preds = %45, %38
  %52 = phi ptr [ %50, %45 ], [ null, %38 ]
  tail call void @glColorPointer(i32 noundef 3, i32 noundef 5121, i32 noundef 0, ptr noundef %52) #7
  %53 = load i32, ptr @GLStates, align 4, !tbaa !42
  %54 = or i32 %53, 16
  store i32 %54, ptr @GLStates, align 4, !tbaa !42
  br label %55

55:                                               ; preds = %32, %51
  ret void
}

declare void @glColorPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_edge_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 5)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %4
  tail call void @glEnableClientState(i32 noundef 32884) #7
  %8 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.GPUBuffer, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !57
  tail call void %11(i32 noundef 34962, i32 noundef %16) #7
  br label %23

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.GPUBuffer, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi ptr [ %22, %17 ], [ null, %10 ]
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %24) #7
  %25 = load i32, ptr @GLStates, align 4, !tbaa !42
  %26 = or i32 %25, 1
  store i32 %26, ptr @GLStates, align 4, !tbaa !42
  %27 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = getelementptr inbounds %struct.GPUDrawObject, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !103
  %35 = getelementptr inbounds %struct.GPUBuffer, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !57
  tail call void %30(i32 noundef 34963, i32 noundef %36) #7
  br label %37

37:                                               ; preds = %29, %23
  %38 = load i32, ptr @GLStates, align 4, !tbaa !42
  %39 = or i32 %38, 32
  store i32 %39, ptr @GLStates, align 4, !tbaa !42
  br label %40

40:                                               ; preds = %4, %1, %37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_uvedge_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 6)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32884) #7
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !57
  tail call void %8(i32 noundef 34962, i32 noundef %14) #7
  br label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.GPUDrawObject, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  br label %22

22:                                               ; preds = %15, %7
  %23 = phi ptr [ %21, %15 ], [ null, %7 ]
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %23) #7
  %24 = load i32, ptr @GLStates, align 4, !tbaa !42
  %25 = or i32 %24, 1
  store i32 %25, ptr @GLStates, align 4, !tbaa !42
  br label %26

26:                                               ; preds = %1, %22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @GPU_attrib_element_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %22
  %7 = phi i64 [ 0, %4 ], [ %24, %22 ]
  %8 = phi i32 [ 0, %4 ], [ %23, %22 ]
  %9 = getelementptr inbounds %struct.GPUAttrib, ptr %0, i64 %7, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !135
  switch i32 %10, label %13 [
    i32 5126, label %14
    i32 5124, label %14
    i32 5125, label %14
    i32 5120, label %11
    i32 5121, label %12
  ]

11:                                               ; preds = %6
  br label %14

12:                                               ; preds = %6
  br label %14

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %6, %6, %6, %11, %12, %13
  %15 = phi i1 [ true, %13 ], [ false, %12 ], [ false, %11 ], [ false, %6 ], [ false, %6 ], [ false, %6 ]
  %16 = phi i32 [ 0, %13 ], [ 1, %12 ], [ 1, %11 ], [ 4, %6 ], [ 4, %6 ], [ 4, %6 ]
  br i1 %15, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.GPUAttrib, ptr %0, i64 %7, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !137
  %20 = mul nsw i32 %19, %16
  %21 = add nsw i32 %20, %8
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i32 [ %21, %17 ], [ %8, %14 ]
  %24 = add nuw nsw i64 %7, 1
  %25 = icmp eq i64 %24, %5
  br i1 %25, label %26, label %6, !llvm.loop !138

26:                                               ; preds = %22, %2
  %27 = phi i32 [ 0, %2 ], [ %23, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_interleaved_attrib_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %3, %9
  %5 = phi i64 [ 0, %3 ], [ %11, %9 ]
  %6 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !139
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @__glewDisableVertexAttribArrayARB, align 8, !tbaa !34
  tail call void %10(i32 noundef %7) #7
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %4, !llvm.loop !140

13:                                               ; preds = %4, %9
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %13
  %16 = zext nneg i32 %2 to i64
  br label %17

17:                                               ; preds = %15, %33
  %18 = phi i64 [ 0, %15 ], [ %35, %33 ]
  %19 = phi i32 [ 0, %15 ], [ %34, %33 ]
  %20 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %18, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !135
  switch i32 %21, label %24 [
    i32 5126, label %25
    i32 5124, label %25
    i32 5125, label %25
    i32 5120, label %22
    i32 5121, label %23
  ]

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %23, %22, %17, %17, %17
  %26 = phi i1 [ true, %24 ], [ false, %23 ], [ false, %22 ], [ false, %17 ], [ false, %17 ], [ false, %17 ]
  %27 = phi i32 [ 0, %24 ], [ 1, %23 ], [ 1, %22 ], [ 4, %17 ], [ 4, %17 ], [ 4, %17 ]
  br i1 %26, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %18, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !137
  %31 = mul nsw i32 %30, %27
  %32 = add nsw i32 %31, %19
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i32 [ %32, %28 ], [ %19, %25 ]
  %35 = add nuw nsw i64 %18, 1
  %36 = icmp eq i64 %35, %16
  br i1 %36, label %37, label %17, !llvm.loop !138

37:                                               ; preds = %33, %13
  %38 = phi i32 [ 0, %13 ], [ %34, %33 ]
  %39 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = icmp sgt i32 %2, 0
  br i1 %42, label %43, label %117

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 1
  %45 = zext nneg i32 %2 to i64
  br label %88

46:                                               ; preds = %37
  %47 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !57
  tail call void %47(i32 noundef 34962, i32 noundef %49) #7
  %50 = icmp sgt i32 %2, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %46
  %52 = zext nneg i32 %2 to i64
  br label %53

53:                                               ; preds = %51, %74
  %54 = phi i64 [ 0, %51 ], [ %83, %74 ]
  %55 = phi i64 [ 0, %51 ], [ %78, %74 ]
  %56 = load ptr, ptr @__glewEnableVertexAttribArrayARB, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %54
  %58 = load i32, ptr %57, align 4, !tbaa !139
  tail call void %56(i32 noundef %58) #7
  %59 = load ptr, ptr @__glewVertexAttribPointerARB, align 8, !tbaa !34
  %60 = load i32, ptr %57, align 4, !tbaa !139
  %61 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %54, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !137
  %63 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %54, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !135
  %65 = inttoptr i64 %55 to ptr
  tail call void %59(i32 noundef %60, i32 noundef %62, i32 noundef %64, i8 noundef zeroext 0, i32 noundef %38, ptr noundef %65) #7
  %66 = load i32, ptr %61, align 4, !tbaa !137
  %67 = load i32, ptr %63, align 4, !tbaa !135
  %68 = add i32 %67, -5120
  %69 = icmp ult i32 %68, 7
  br i1 %69, label %70, label %74

70:                                               ; preds = %53
  %71 = zext nneg i32 %68 to i64
  %72 = getelementptr inbounds [7 x i32], ptr @switch.table.GPU_interleaved_attrib_setup.16, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4
  br label %74

74:                                               ; preds = %53, %70
  %75 = phi i32 [ %73, %70 ], [ 0, %53 ]
  %76 = mul nsw i32 %75, %66
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %55, %77
  %79 = load i32, ptr %57, align 4, !tbaa !139
  %80 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %54
  store i32 %79, ptr %80, align 4, !tbaa !139
  %81 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %54, i32 1
  store i32 %66, ptr %81, align 4, !tbaa !137
  %82 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %54, i32 2
  store i32 %67, ptr %82, align 4, !tbaa !135
  %83 = add nuw nsw i64 %54, 1
  %84 = icmp eq i64 %83, %52
  br i1 %84, label %85, label %53, !llvm.loop !141

85:                                               ; preds = %74, %46
  %86 = sext i32 %2 to i64
  %87 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %86
  store i32 -1, ptr %87, align 4, !tbaa !139
  br label %117

88:                                               ; preds = %43, %110
  %89 = phi i64 [ 0, %43 ], [ %115, %110 ]
  %90 = phi i64 [ 0, %43 ], [ %114, %110 ]
  %91 = load ptr, ptr @__glewEnableVertexAttribArrayARB, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %89
  %93 = load i32, ptr %92, align 4, !tbaa !139
  tail call void %91(i32 noundef %93) #7
  %94 = load ptr, ptr @__glewVertexAttribPointerARB, align 8, !tbaa !34
  %95 = load i32, ptr %92, align 4, !tbaa !139
  %96 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %89, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !137
  %98 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %89, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !135
  %100 = load ptr, ptr %44, align 8, !tbaa !43
  %101 = getelementptr inbounds i8, ptr %100, i64 %90
  tail call void %94(i32 noundef %95, i32 noundef %97, i32 noundef %99, i8 noundef zeroext 0, i32 noundef %38, ptr noundef %101) #7
  %102 = load i32, ptr %96, align 4, !tbaa !137
  %103 = load i32, ptr %98, align 4, !tbaa !135
  %104 = add i32 %103, -5120
  %105 = icmp ult i32 %104, 7
  br i1 %105, label %106, label %110

106:                                              ; preds = %88
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds [7 x i32], ptr @switch.table.GPU_interleaved_attrib_setup.16, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  br label %110

110:                                              ; preds = %88, %106
  %111 = phi i32 [ %109, %106 ], [ 0, %88 ]
  %112 = mul nsw i32 %111, %102
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %90, %113
  %115 = add nuw nsw i64 %89, 1
  %116 = icmp eq i64 %115, %45
  br i1 %116, label %117, label %88, !llvm.loop !142

117:                                              ; preds = %110, %41, %85
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_buffer_unbind() local_unnamed_addr #0 {
  %1 = load i32, ptr @GLStates, align 4, !tbaa !42
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @glDisableClientState(i32 noundef 32884) #7
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, ptr @GLStates, align 4, !tbaa !42
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @glDisableClientState(i32 noundef 32885) #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, ptr @GLStates, align 4, !tbaa !42
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @glDisableClientState(i32 noundef 32888) #7
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, ptr @GLStates, align 4, !tbaa !42
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %20(i32 noundef 33986) #7
  tail call void @glDisableClientState(i32 noundef 32888) #7
  %21 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %21(i32 noundef 33984) #7
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, ptr @GLStates, align 4, !tbaa !42
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @glDisableClientState(i32 noundef 32886) #7
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, ptr @GLStates, align 4, !tbaa !42
  %29 = and i32 %28, 32
  %30 = icmp ne i32 %29, 0
  %31 = load i32, ptr @useVBOs, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %35(i32 noundef 34963, i32 noundef 0) #7
  br label %36

36:                                               ; preds = %34, %27
  store i32 0, ptr @GLStates, align 4, !tbaa !42
  br label %37

37:                                               ; preds = %36, %42
  %38 = phi i64 [ 0, %36 ], [ %44, %42 ]
  %39 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !139
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @__glewDisableVertexAttribArrayARB, align 8, !tbaa !34
  tail call void %43(i32 noundef %40) #7
  %44 = add nuw nsw i64 %38, 1
  %45 = icmp eq i64 %44, 32
  br i1 %45, label %46, label %37, !llvm.loop !143

46:                                               ; preds = %37, %42
  %47 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %50(i32 noundef 34962, i32 noundef 0) #7
  br label %51

51:                                               ; preds = %49, %46
  ret void
}

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_color_switch(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = load i32, ptr @GLStates, align 4, !tbaa !42
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %2, label %11, label %6

6:                                                ; preds = %1
  br i1 %5, label %7, label %8

7:                                                ; preds = %6
  tail call void @glEnableClientState(i32 noundef 32886) #7
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, ptr @GLStates, align 4, !tbaa !42
  %10 = or i32 %9, 16
  br label %16

11:                                               ; preds = %1
  br i1 %5, label %13, label %12

12:                                               ; preds = %11
  tail call void @glDisableClientState(i32 noundef 32886) #7
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32, ptr @GLStates, align 4, !tbaa !42
  %15 = and i32 %14, -17
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ %15, %13 ], [ %10, %8 ]
  store i32 %17, ptr @GLStates, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @GPU_buffer_legacy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !144
  %3 = and i16 %2, 8
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @GPU_drawobject_new(ptr noundef %0)
  store ptr %10, ptr %6, align 8, !tbaa !98
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr %6, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.GPUDrawObject, ptr %12, i64 0, i32 15
  %14 = load i8, ptr %13, align 4, !tbaa !130
  br label %15

15:                                               ; preds = %1, %11
  %16 = phi i8 [ %14, %11 ], [ 1, %1 ]
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_buffer_lock(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !57
  tail call void %7(i32 noundef 34962, i32 noundef %9) #7
  %10 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %11 = tail call ptr %10(i32 noundef 34962, i32 noundef 35001) #7
  br label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  br label %15

15:                                               ; preds = %1, %12, %6
  %16 = phi ptr [ %11, %6 ], [ %14, %12 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_buffer_lock_stream(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !57
  tail call void %7(i32 noundef 34962, i32 noundef %9) #7
  %10 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %11 = load i32, ptr %0, align 8, !tbaa !54
  %12 = sext i32 %11 to i64
  tail call void %10(i32 noundef 34962, i64 noundef %12, ptr noundef null, i32 noundef 35040) #7
  %13 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %14 = tail call ptr %13(i32 noundef 34962, i32 noundef 35001) #7
  br label %18

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  br label %18

18:                                               ; preds = %1, %15, %6
  %19 = phi ptr [ %14, %6 ], [ %17, %15 ], [ null, %1 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_buffer_unlock(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %8 = tail call zeroext i8 %7(i32 noundef 34962) #7
  br label %9

9:                                                ; preds = %6, %4
  %10 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %10(i32 noundef 34962, i32 noundef 0) #7
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_buffer_draw_elements(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = sext i32 %2 to i64
  %9 = shl nsw i64 %8, 2
  %10 = inttoptr i64 %9 to ptr
  br label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi ptr [ %10, %7 ], [ %15, %11 ]
  tail call void @glDrawElements(i32 noundef %1, i32 noundef %3, i32 noundef 5125, ptr noundef %17) #7
  ret void
}

declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_update_mesh_pbvh_buffers(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 7
  store ptr %4, ptr %10, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  store i8 %6, ptr %11, align 8, !tbaa !152
  %12 = tail call zeroext i8 @GPU_material_use_matcaps_get() #7
  %13 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  store i8 %12, ptr %13, align 1, !tbaa !153
  %14 = load i32, ptr %0, align 8, !tbaa !154
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %374, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !155
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !156
  %23 = mul i32 %22, 3
  br label %24

24:                                               ; preds = %16, %20
  %25 = phi i32 [ %23, %20 ], [ %3, %16 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.GPU_update_mesh_pbvh_buffers.diffuse_color, i64 16, i1 false)
  %26 = icmp eq i8 %12, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float 1.000000e+00, ptr %28, align 8, !tbaa !106
  %29 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float 1.000000e+00, ptr %29, align 4, !tbaa !106
  store float 1.000000e+00, ptr %8, align 16, !tbaa !106
  br label %43

30:                                               ; preds = %24
  %31 = icmp eq i8 %6, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !157
  %35 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !158
  %37 = load i32, ptr %36, align 4, !tbaa !42
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MFace, ptr %34, i64 %38, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !70
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %41, 1
  call void @GPU_material_diffuse_get(i32 noundef %42, ptr noundef nonnull %8) #7
  br label %43

43:                                               ; preds = %30, %32, %27
  %44 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21
  %45 = load float, ptr %8, align 16, !tbaa !106
  store float %45, ptr %44, align 4, !tbaa !106
  %46 = getelementptr inbounds float, ptr %8, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !106
  %48 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 1
  store float %47, ptr %48, align 4, !tbaa !106
  %49 = getelementptr inbounds float, ptr %8, i64 2
  %50 = load float, ptr %49, align 8, !tbaa !106
  %51 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 2
  store float %50, ptr %51, align 4, !tbaa !106
  %52 = getelementptr inbounds float, ptr %8, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !106
  %54 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 3
  store float %53, ptr %54, align 4, !tbaa !106
  %55 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %56 = load i32, ptr %0, align 8, !tbaa !154
  call void %55(i32 noundef 34962, i32 noundef %56) #7
  %57 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %58 = sext i32 %25 to i64
  %59 = mul nsw i64 %58, 24
  call void %57(i32 noundef 34962, i64 noundef %59, ptr noundef null, i32 noundef 35044) #7
  %60 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %61 = call ptr %60(i32 noundef 34962, i32 noundef 35001) #7
  %62 = icmp eq ptr %61, null
  br i1 %62, label %370, label %63

63:                                               ; preds = %43
  %64 = load i32, ptr %17, align 4, !tbaa !155
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = icmp sgt i32 %3, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %66
  %69 = zext nneg i32 %3 to i64
  br label %90

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !159
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %367

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %76 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %77 = icmp eq ptr %4, null
  %78 = icmp eq ptr %4, null
  %79 = getelementptr inbounds float, ptr %9, i64 1
  %80 = getelementptr inbounds float, ptr %9, i64 2
  %81 = icmp eq ptr %4, null
  br label %229

82:                                               ; preds = %90, %66
  %83 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !159
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %367

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %88 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %89 = icmp eq ptr %4, null
  br label %108

90:                                               ; preds = %68, %90
  %91 = phi i64 [ 0, %68 ], [ %106, %90 ]
  %92 = getelementptr inbounds i32, ptr %2, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !42
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.MVert, ptr %1, i64 %94
  %96 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %91
  %97 = load float, ptr %95, align 4, !tbaa !106
  store float %97, ptr %96, align 4, !tbaa !106
  %98 = getelementptr inbounds float, ptr %95, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !106
  %100 = getelementptr inbounds float, ptr %96, i64 1
  store float %99, ptr %100, align 4, !tbaa !106
  %101 = getelementptr inbounds float, ptr %95, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !106
  %103 = getelementptr inbounds float, ptr %96, i64 2
  store float %102, ptr %103, align 4, !tbaa !106
  %104 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %91, i32 1
  %105 = getelementptr inbounds %struct.MVert, ptr %1, i64 %94, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %104, ptr noundef nonnull align 4 dereferenceable(6) %105, i64 6, i1 false)
  %106 = add nuw nsw i64 %91, 1
  %107 = icmp eq i64 %106, %69
  br i1 %107, label %82, label %90, !llvm.loop !160

108:                                              ; preds = %86, %224
  %109 = phi i64 [ 0, %86 ], [ %225, %224 ]
  %110 = load ptr, ptr %87, align 8, !tbaa !157
  %111 = load ptr, ptr %88, align 8, !tbaa !158
  %112 = getelementptr inbounds i32, ptr %111, i64 %109
  %113 = load i32, ptr %112, align 4, !tbaa !42
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], ptr %5, i64 %109
  %116 = load i32, ptr %115, align 4, !tbaa !42
  %117 = sext i32 %116 to i64
  br i1 %89, label %139, label %118

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.MFace, ptr %110, i64 %114
  %120 = load i32, ptr %119, align 4, !tbaa !91
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds float, ptr %4, i64 %121
  %123 = load float, ptr %122, align 4, !tbaa !106
  %124 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %117, i32 3
  %125 = fneg float %123
  %126 = call float @llvm.fmuladd.f32(float %125, float 7.500000e-01, float 1.000000e+00)
  %127 = fmul float %126, 2.550000e+02
  %128 = load float, ptr %8, align 16, !tbaa !106
  %129 = fmul float %128, %127
  %130 = fptoui float %129 to i8
  store i8 %130, ptr %124, align 1, !tbaa !51
  %131 = load float, ptr %46, align 4, !tbaa !106
  %132 = fmul float %127, %131
  %133 = fptoui float %132 to i8
  %134 = getelementptr inbounds i8, ptr %124, i64 1
  store i8 %133, ptr %134, align 1, !tbaa !51
  %135 = load float, ptr %49, align 8, !tbaa !106
  %136 = fmul float %127, %135
  %137 = fptoui float %136 to i8
  %138 = getelementptr inbounds i8, ptr %124, i64 2
  store i8 %137, ptr %138, align 1, !tbaa !51
  br label %141

139:                                              ; preds = %108
  %140 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %117, i32 3
  call void @rgb_float_to_uchar(ptr noundef nonnull %140, ptr noundef nonnull %8) #7
  br label %141

141:                                              ; preds = %139, %118
  %142 = getelementptr inbounds [4 x i32], ptr %5, i64 %109, i64 1
  %143 = load i32, ptr %142, align 4, !tbaa !42
  %144 = sext i32 %143 to i64
  br i1 %89, label %166, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.MFace, ptr %110, i64 %114, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !92
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds float, ptr %4, i64 %148
  %150 = load float, ptr %149, align 4, !tbaa !106
  %151 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %144, i32 3
  %152 = fneg float %150
  %153 = call float @llvm.fmuladd.f32(float %152, float 7.500000e-01, float 1.000000e+00)
  %154 = fmul float %153, 2.550000e+02
  %155 = load float, ptr %8, align 16, !tbaa !106
  %156 = fmul float %155, %154
  %157 = fptoui float %156 to i8
  store i8 %157, ptr %151, align 1, !tbaa !51
  %158 = load float, ptr %46, align 4, !tbaa !106
  %159 = fmul float %154, %158
  %160 = fptoui float %159 to i8
  %161 = getelementptr inbounds i8, ptr %151, i64 1
  store i8 %160, ptr %161, align 1, !tbaa !51
  %162 = load float, ptr %49, align 8, !tbaa !106
  %163 = fmul float %154, %162
  %164 = fptoui float %163 to i8
  %165 = getelementptr inbounds i8, ptr %151, i64 2
  store i8 %164, ptr %165, align 1, !tbaa !51
  br label %168

166:                                              ; preds = %141
  %167 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %144, i32 3
  call void @rgb_float_to_uchar(ptr noundef nonnull %167, ptr noundef nonnull %8) #7
  br label %168

168:                                              ; preds = %166, %145
  %169 = getelementptr inbounds [4 x i32], ptr %5, i64 %109, i64 2
  %170 = load i32, ptr %169, align 4, !tbaa !42
  %171 = sext i32 %170 to i64
  br i1 %89, label %193, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.MFace, ptr %110, i64 %114, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !93
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds float, ptr %4, i64 %175
  %177 = load float, ptr %176, align 4, !tbaa !106
  %178 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %171, i32 3
  %179 = fneg float %177
  %180 = call float @llvm.fmuladd.f32(float %179, float 7.500000e-01, float 1.000000e+00)
  %181 = fmul float %180, 2.550000e+02
  %182 = load float, ptr %8, align 16, !tbaa !106
  %183 = fmul float %182, %181
  %184 = fptoui float %183 to i8
  store i8 %184, ptr %178, align 1, !tbaa !51
  %185 = load float, ptr %46, align 4, !tbaa !106
  %186 = fmul float %181, %185
  %187 = fptoui float %186 to i8
  %188 = getelementptr inbounds i8, ptr %178, i64 1
  store i8 %187, ptr %188, align 1, !tbaa !51
  %189 = load float, ptr %49, align 8, !tbaa !106
  %190 = fmul float %181, %189
  %191 = fptoui float %190 to i8
  %192 = getelementptr inbounds i8, ptr %178, i64 2
  store i8 %191, ptr %192, align 1, !tbaa !51
  br label %195

193:                                              ; preds = %168
  %194 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %171, i32 3
  call void @rgb_float_to_uchar(ptr noundef nonnull %194, ptr noundef nonnull %8) #7
  br label %195

195:                                              ; preds = %193, %172
  %196 = getelementptr inbounds %struct.MFace, ptr %110, i64 %114, i32 3
  %197 = load i32, ptr %196, align 4, !tbaa !67
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %224, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds [4 x i32], ptr %5, i64 %109, i64 3
  %201 = load i32, ptr %200, align 4, !tbaa !42
  %202 = sext i32 %201 to i64
  br i1 %89, label %222, label %203

203:                                              ; preds = %199
  %204 = zext i32 %197 to i64
  %205 = getelementptr inbounds float, ptr %4, i64 %204
  %206 = load float, ptr %205, align 4, !tbaa !106
  %207 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %202, i32 3
  %208 = fneg float %206
  %209 = call float @llvm.fmuladd.f32(float %208, float 7.500000e-01, float 1.000000e+00)
  %210 = fmul float %209, 2.550000e+02
  %211 = load float, ptr %8, align 16, !tbaa !106
  %212 = fmul float %211, %210
  %213 = fptoui float %212 to i8
  store i8 %213, ptr %207, align 1, !tbaa !51
  %214 = load float, ptr %46, align 4, !tbaa !106
  %215 = fmul float %210, %214
  %216 = fptoui float %215 to i8
  %217 = getelementptr inbounds i8, ptr %207, i64 1
  store i8 %216, ptr %217, align 1, !tbaa !51
  %218 = load float, ptr %49, align 8, !tbaa !106
  %219 = fmul float %210, %218
  %220 = fptoui float %219 to i8
  %221 = getelementptr inbounds i8, ptr %207, i64 2
  store i8 %220, ptr %221, align 1, !tbaa !51
  br label %224

222:                                              ; preds = %199
  %223 = getelementptr inbounds %struct.VertexBufferFormat, ptr %61, i64 %202, i32 3
  call void @rgb_float_to_uchar(ptr noundef nonnull %223, ptr noundef nonnull %8) #7
  br label %224

224:                                              ; preds = %203, %222, %195
  %225 = add nuw nsw i64 %109, 1
  %226 = load i32, ptr %83, align 8, !tbaa !159
  %227 = sext i32 %226 to i64
  %228 = icmp slt i64 %225, %227
  br i1 %228, label %108, label %367, !llvm.loop !161

229:                                              ; preds = %74, %360
  %230 = phi i64 [ 0, %74 ], [ %363, %360 ]
  %231 = phi ptr [ %61, %74 ], [ %362, %360 ]
  %232 = phi float [ undef, %74 ], [ %361, %360 ]
  %233 = load ptr, ptr %75, align 8, !tbaa !157
  %234 = load ptr, ptr %76, align 8, !tbaa !158
  %235 = getelementptr inbounds i32, ptr %234, i64 %230
  %236 = load i32, ptr %235, align 4, !tbaa !42
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.MFace, ptr %233, i64 %237
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %239 = call zeroext i8 @paint_is_face_hidden(ptr noundef %238, ptr noundef %1) #7
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %360

241:                                              ; preds = %229
  %242 = getelementptr inbounds %struct.MFace, ptr %233, i64 %237, i32 3
  %243 = load i32, ptr %242, align 4, !tbaa !42
  %244 = icmp eq i32 %243, 0
  %245 = load i32, ptr %238, align 4, !tbaa !42
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.MVert, ptr %1, i64 %246
  %248 = getelementptr inbounds i32, ptr %238, i64 1
  %249 = load i32, ptr %248, align 4, !tbaa !42
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.MVert, ptr %1, i64 %250
  %252 = getelementptr inbounds i32, ptr %238, i64 2
  %253 = load i32, ptr %252, align 4, !tbaa !42
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.MVert, ptr %1, i64 %254
  br i1 %244, label %281, label %256

256:                                              ; preds = %241
  %257 = zext i32 %243 to i64
  %258 = getelementptr inbounds %struct.MVert, ptr %1, i64 %257
  %259 = call float @normal_quad_v3(ptr noundef nonnull %9, ptr noundef %247, ptr noundef %251, ptr noundef %255, ptr noundef nonnull %258) #7
  br i1 %77, label %299, label %260

260:                                              ; preds = %256
  %261 = load i32, ptr %238, align 4, !tbaa !42
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds float, ptr %4, i64 %262
  %264 = load float, ptr %263, align 4, !tbaa !106
  %265 = load i32, ptr %248, align 4, !tbaa !42
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds float, ptr %4, i64 %266
  %268 = load float, ptr %267, align 4, !tbaa !106
  %269 = fadd float %264, %268
  %270 = load i32, ptr %252, align 4, !tbaa !42
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds float, ptr %4, i64 %271
  %273 = load float, ptr %272, align 4, !tbaa !106
  %274 = fadd float %269, %273
  %275 = load i32, ptr %242, align 4, !tbaa !42
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds float, ptr %4, i64 %276
  %278 = load float, ptr %277, align 4, !tbaa !106
  %279 = fadd float %274, %278
  %280 = fmul float %279, 2.500000e-01
  br label %299

281:                                              ; preds = %241
  %282 = call float @normal_tri_v3(ptr noundef nonnull %9, ptr noundef %247, ptr noundef %251, ptr noundef %255) #7
  br i1 %78, label %299, label %283

283:                                              ; preds = %281
  %284 = load i32, ptr %238, align 4, !tbaa !42
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds float, ptr %4, i64 %285
  %287 = load float, ptr %286, align 4, !tbaa !106
  %288 = load i32, ptr %248, align 4, !tbaa !42
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds float, ptr %4, i64 %289
  %291 = load float, ptr %290, align 4, !tbaa !106
  %292 = fadd float %287, %291
  %293 = load i32, ptr %252, align 4, !tbaa !42
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds float, ptr %4, i64 %294
  %296 = load float, ptr %295, align 4, !tbaa !106
  %297 = fadd float %292, %296
  %298 = fdiv float %297, 3.000000e+00
  br label %299

299:                                              ; preds = %281, %283, %256, %260
  %300 = phi float [ %280, %260 ], [ %232, %256 ], [ %298, %283 ], [ %232, %281 ]
  %301 = load float, ptr %9, align 4, !tbaa !106
  %302 = fmul float %301, 3.276700e+04
  %303 = fptosi float %302 to i16
  %304 = load float, ptr %79, align 4, !tbaa !106
  %305 = fmul float %304, 3.276700e+04
  %306 = fptosi float %305 to i16
  %307 = load float, ptr %80, align 4, !tbaa !106
  %308 = fmul float %307, 3.276700e+04
  %309 = fptosi float %308 to i16
  %310 = fneg float %300
  %311 = call float @llvm.fmuladd.f32(float %310, float 7.500000e-01, float 1.000000e+00)
  %312 = fmul float %311, 2.550000e+02
  br label %313

313:                                              ; preds = %299, %354
  %314 = phi i64 [ 0, %299 ], [ %355, %354 ]
  %315 = phi ptr [ %231, %299 ], [ %351, %354 ]
  br label %316

316:                                              ; preds = %313, %350
  %317 = phi i64 [ 0, %313 ], [ %352, %350 ]
  %318 = phi ptr [ %315, %313 ], [ %351, %350 ]
  %319 = getelementptr inbounds [2 x [3 x i32]], ptr @__const.GPU_update_mesh_pbvh_buffers.vi, i64 0, i64 %314, i64 %317
  %320 = load i32, ptr %319, align 4, !tbaa !42
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, ptr %238, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !42
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.MVert, ptr %1, i64 %324
  %326 = load float, ptr %325, align 4, !tbaa !106
  store float %326, ptr %318, align 4, !tbaa !106
  %327 = getelementptr inbounds float, ptr %325, i64 1
  %328 = load float, ptr %327, align 4, !tbaa !106
  %329 = getelementptr inbounds float, ptr %318, i64 1
  store float %328, ptr %329, align 4, !tbaa !106
  %330 = getelementptr inbounds float, ptr %325, i64 2
  %331 = load float, ptr %330, align 4, !tbaa !106
  %332 = getelementptr inbounds float, ptr %318, i64 2
  store float %331, ptr %332, align 4, !tbaa !106
  %333 = getelementptr inbounds %struct.VertexBufferFormat, ptr %318, i64 0, i32 1
  store i16 %303, ptr %333, align 4
  %334 = getelementptr inbounds %struct.VertexBufferFormat, ptr %318, i64 0, i32 1, i64 1
  store i16 %306, ptr %334, align 2
  %335 = getelementptr inbounds %struct.VertexBufferFormat, ptr %318, i64 0, i32 1, i64 2
  store i16 %309, ptr %335, align 4
  %336 = getelementptr inbounds %struct.VertexBufferFormat, ptr %318, i64 0, i32 3
  br i1 %81, label %349, label %337

337:                                              ; preds = %316
  %338 = load float, ptr %8, align 16, !tbaa !106
  %339 = fmul float %312, %338
  %340 = fptoui float %339 to i8
  store i8 %340, ptr %336, align 1, !tbaa !51
  %341 = load float, ptr %46, align 4, !tbaa !106
  %342 = fmul float %312, %341
  %343 = fptoui float %342 to i8
  %344 = getelementptr inbounds %struct.VertexBufferFormat, ptr %318, i64 0, i32 3, i64 1
  store i8 %343, ptr %344, align 1, !tbaa !51
  %345 = load float, ptr %49, align 8, !tbaa !106
  %346 = fmul float %312, %345
  %347 = fptoui float %346 to i8
  %348 = getelementptr inbounds %struct.VertexBufferFormat, ptr %318, i64 0, i32 3, i64 2
  store i8 %347, ptr %348, align 1, !tbaa !51
  br label %350

349:                                              ; preds = %316
  call void @rgb_float_to_uchar(ptr noundef nonnull %336, ptr noundef nonnull %8) #7
  br label %350

350:                                              ; preds = %349, %337
  %351 = getelementptr inbounds %struct.VertexBufferFormat, ptr %318, i64 1
  %352 = add nuw nsw i64 %317, 1
  %353 = icmp eq i64 %352, 3
  br i1 %353, label %354, label %316, !llvm.loop !162

354:                                              ; preds = %350
  %355 = add nuw nsw i64 %314, 1
  %356 = load i32, ptr %242, align 4, !tbaa !67
  %357 = icmp ne i32 %356, 0
  %358 = icmp eq i64 %314, 0
  %359 = and i1 %357, %358
  br i1 %359, label %313, label %360, !llvm.loop !163

360:                                              ; preds = %354, %229
  %361 = phi float [ %232, %229 ], [ %300, %354 ]
  %362 = phi ptr [ %231, %229 ], [ %351, %354 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  %363 = add nuw nsw i64 %230, 1
  %364 = load i32, ptr %71, align 8, !tbaa !159
  %365 = sext i32 %364 to i64
  %366 = icmp slt i64 %363, %365
  br i1 %366, label %229, label %367, !llvm.loop !164

367:                                              ; preds = %224, %360, %82, %70
  %368 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %369 = call zeroext i8 %368(i32 noundef 34962) #7
  br label %372

370:                                              ; preds = %43
  %371 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %371(i32 noundef 1, ptr noundef nonnull %0) #7
  store i32 0, ptr %0, align 8, !tbaa !154
  br label %372

372:                                              ; preds = %370, %367
  %373 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  call void %373(i32 noundef 34962, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %374

374:                                              ; preds = %372, %7
  %375 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 4
  store ptr %1, ptr %375, align 8, !tbaa !165
  ret void
}

declare zeroext i8 @GPU_material_use_matcaps_get() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @GPU_material_diffuse_get(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @paint_is_face_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_build_mesh_pbvh_buffers(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x i32], align 4
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 176, ptr noundef nonnull @.str.4) #7
  %9 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 2
  store i32 5123, ptr %9, align 8, !tbaa !166
  %10 = load i32, ptr %3, align 4, !tbaa !42
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.MFace, ptr %1, i64 %11, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !110
  %14 = and i8 %13, 1
  %15 = zext nneg i8 %14 to i32
  %16 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 18
  store i32 %15, ptr %16, align 4, !tbaa !155
  %17 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 19
  store i8 0, ptr %17, align 8, !tbaa !152
  %18 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 20
  store i8 0, ptr %18, align 1, !tbaa !153
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %5
  %21 = zext nneg i32 %4 to i64
  br label %22

22:                                               ; preds = %20, %37
  %23 = phi i64 [ 0, %20 ], [ %39, %37 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %37 ]
  %25 = getelementptr inbounds i32, ptr %3, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !42
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MFace, ptr %1, i64 %27
  %29 = tail call zeroext i8 @paint_is_face_hidden(ptr noundef %28, ptr noundef %2) #7
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.MFace, ptr %1, i64 %27, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !67
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 1, i32 2
  %36 = add nsw i32 %35, %24
  br label %37

37:                                               ; preds = %31, %22
  %38 = phi i32 [ %24, %22 ], [ %36, %31 ]
  %39 = add nuw nsw i64 %23, 1
  %40 = icmp eq i64 %39, %21
  br i1 %40, label %41, label %22, !llvm.loop !167

41:                                               ; preds = %37, %5
  %42 = phi i32 [ 0, %5 ], [ %38, %37 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %133, label %44

44:                                               ; preds = %41
  %45 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !51
  %46 = icmp eq i8 %45, 0
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8
  %48 = and i16 %47, 8
  %49 = icmp ne i16 %48, 0
  %50 = select i1 %46, i1 true, i1 %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load i32, ptr %16, align 4, !tbaa !155
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 1
  tail call void %55(i32 noundef 1, ptr noundef nonnull %56) #7
  br label %57

57:                                               ; preds = %54, %51, %44
  %58 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !168
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %118, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %62(i32 noundef 34963, i32 noundef %59) #7
  %63 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %64 = sext i32 %42 to i64
  %65 = mul nsw i64 %64, 6
  tail call void %63(i32 noundef 34963, i64 noundef %65, ptr noundef null, i32 noundef 35044) #7
  %66 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %67 = tail call ptr %66(i32 noundef 34963, i32 noundef 35001) #7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %114, label %69

69:                                               ; preds = %61
  %70 = icmp sgt i32 %4, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %69
  %72 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  %73 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  %74 = zext nneg i32 %4 to i64
  br label %75

75:                                               ; preds = %71, %107
  %76 = phi i64 [ 0, %71 ], [ %109, %107 ]
  %77 = phi ptr [ %67, %71 ], [ %108, %107 ]
  %78 = getelementptr inbounds i32, ptr %3, i64 %76
  %79 = load i32, ptr %78, align 4, !tbaa !42
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MFace, ptr %1, i64 %80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %82 = tail call zeroext i8 @paint_is_face_hidden(ptr noundef %81, ptr noundef %2) #7
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %75
  store i32 0, ptr %6, align 4, !tbaa !42
  store i32 1, ptr %72, align 4, !tbaa !42
  store i32 2, ptr %73, align 4, !tbaa !42
  %85 = getelementptr inbounds %struct.MFace, ptr %1, i64 %80, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !67
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %84, %103
  %89 = phi ptr [ %77, %84 ], [ %100, %103 ]
  %90 = phi i32 [ 0, %84 ], [ %104, %103 ]
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ 0, %88 ], [ %101, %91 ]
  %93 = phi ptr [ %89, %88 ], [ %100, %91 ]
  %94 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %92
  %95 = load i32, ptr %94, align 4, !tbaa !42
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], ptr %0, i64 %76, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !42
  %99 = trunc i32 %98 to i16
  store i16 %99, ptr %93, align 2, !tbaa !111
  %100 = getelementptr inbounds i16, ptr %93, i64 1
  %101 = add nuw nsw i64 %92, 1
  %102 = icmp eq i64 %101, 3
  br i1 %102, label %103, label %91, !llvm.loop !169

103:                                              ; preds = %91
  store i32 3, ptr %6, align 4, !tbaa !42
  store i32 0, ptr %72, align 4, !tbaa !42
  store i32 2, ptr %73, align 4, !tbaa !42
  %104 = add nuw nsw i32 %90, 1
  %105 = icmp eq i32 %90, 0
  %106 = select i1 %87, i1 %105, i1 false
  br i1 %106, label %88, label %107, !llvm.loop !170

107:                                              ; preds = %103, %75
  %108 = phi ptr [ %77, %75 ], [ %100, %103 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  %109 = add nuw nsw i64 %76, 1
  %110 = icmp eq i64 %109, %74
  br i1 %110, label %111, label %75, !llvm.loop !171

111:                                              ; preds = %107, %69
  %112 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %113 = tail call zeroext i8 %112(i32 noundef 34963) #7
  br label %116

114:                                              ; preds = %61
  %115 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %115(i32 noundef 1, ptr noundef nonnull %58) #7
  store i32 0, ptr %58, align 4, !tbaa !168
  br label %116

116:                                              ; preds = %114, %111
  %117 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %117(i32 noundef 34963, i32 noundef 0) #7
  br label %118

118:                                              ; preds = %116, %57
  %119 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !51
  %120 = icmp eq i8 %119, 0
  %121 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8
  %122 = and i16 %121, 8
  %123 = icmp ne i16 %122, 0
  %124 = select i1 %120, i1 true, i1 %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %118
  %126 = load i32, ptr %58, align 4, !tbaa !168
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, ptr %16, align 4, !tbaa !155
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128, %125
  %132 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  tail call void %132(i32 noundef 1, ptr noundef %8) #7
  br label %133

133:                                              ; preds = %118, %128, %131, %41
  %134 = phi i32 [ 0, %41 ], [ %42, %131 ], [ %42, %128 ], [ %42, %118 ]
  %135 = phi i32 [ 0, %41 ], [ %4, %131 ], [ %4, %128 ], [ %4, %118 ]
  %136 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 16
  store i32 %134, ptr %136, align 4, !tbaa !156
  %137 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 3
  store ptr %1, ptr %137, align 8, !tbaa !157
  %138 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 5
  store ptr %3, ptr %138, align 8, !tbaa !158
  %139 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 6
  store i32 %135, ptr %139, align 8, !tbaa !159
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_update_grid_pbvh_buffers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  store i8 %6, ptr %10, align 8, !tbaa !152
  %11 = tail call zeroext i8 @GPU_material_use_matcaps_get() #7
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  store i8 %11, ptr %12, align 1, !tbaa !153
  %13 = load i32, ptr %0, align 8, !tbaa !154
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %259, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !172
  %18 = mul nsw i32 %17, %4
  %19 = load i32, ptr %3, align 4, !tbaa !42
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.DMFlagMat, ptr %2, i64 %20, i32 1
  %22 = load i8, ptr %21, align 2, !tbaa !173
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.gpu_draw_buffers_legacy_grids.diffuse_color, i64 16, i1 false)
  %26 = icmp eq i8 %11, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float 1.000000e+00, ptr %28, align 8, !tbaa !106
  %29 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float 1.000000e+00, ptr %29, align 4, !tbaa !106
  store float 1.000000e+00, ptr %8, align 16, !tbaa !106
  br label %37

30:                                               ; preds = %15
  %31 = icmp eq i8 %6, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.DMFlagMat, ptr %2, i64 %20
  %34 = load i16, ptr %33, align 2, !tbaa !176
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, 1
  call void @GPU_material_diffuse_get(i32 noundef %36, ptr noundef nonnull %8) #7
  br label %37

37:                                               ; preds = %30, %32, %27
  %38 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21
  %39 = load float, ptr %8, align 16, !tbaa !106
  store float %39, ptr %38, align 4, !tbaa !106
  %40 = getelementptr inbounds float, ptr %8, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !106
  %42 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 1
  store float %41, ptr %42, align 4, !tbaa !106
  %43 = getelementptr inbounds float, ptr %8, i64 2
  %44 = load float, ptr %43, align 8, !tbaa !106
  %45 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 2
  store float %44, ptr %45, align 4, !tbaa !106
  %46 = getelementptr inbounds float, ptr %8, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !106
  %48 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 3
  store float %47, ptr %48, align 4, !tbaa !106
  %49 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %50 = load i32, ptr %0, align 8, !tbaa !154
  call void %49(i32 noundef 34962, i32 noundef %50) #7
  %51 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %52 = sext i32 %18 to i64
  %53 = mul nsw i64 %52, 24
  call void %51(i32 noundef 34962, i64 noundef %53, ptr noundef null, i32 noundef 35044) #7
  %54 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %55 = call ptr %54(i32 noundef 34962, i32 noundef 35001) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %255, label %57

57:                                               ; preds = %37
  %58 = icmp sgt i32 %4, 0
  br i1 %58, label %59, label %252

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 2
  %61 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 1
  %62 = icmp eq i8 %23, 0
  %63 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 5
  %64 = icmp eq i32 %25, 0
  %65 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 6
  %66 = icmp eq i8 %23, 0
  %67 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 1
  %68 = getelementptr inbounds float, ptr %9, i64 1
  %69 = getelementptr inbounds float, ptr %9, i64 2
  %70 = icmp eq i32 %25, 0
  %71 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 6
  %72 = zext nneg i32 %4 to i64
  br label %73

73:                                               ; preds = %59, %246
  %74 = phi i64 [ 0, %59 ], [ %250, %246 ]
  %75 = phi ptr [ %55, %59 ], [ %249, %246 ]
  %76 = getelementptr inbounds i32, ptr %3, i64 %74
  %77 = load i32, ptr %76, align 4, !tbaa !42
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %1, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = load i32, ptr %60, align 4, !tbaa !177
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %153

83:                                               ; preds = %73, %148
  %84 = phi i32 [ %150, %148 ], [ 0, %73 ]
  %85 = phi ptr [ %149, %148 ], [ %75, %73 ]
  %86 = load i32, ptr %60, align 4, !tbaa !177
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %148

88:                                               ; preds = %83, %143
  %89 = phi i32 [ %146, %143 ], [ %86, %83 ]
  %90 = phi i32 [ %145, %143 ], [ 0, %83 ]
  %91 = phi ptr [ %144, %143 ], [ %85, %83 ]
  %92 = mul nsw i32 %89, %84
  %93 = add nsw i32 %92, %90
  %94 = load i32, ptr %61, align 4, !tbaa !178
  %95 = mul nsw i32 %94, %93
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %80, i64 %96
  %98 = load float, ptr %97, align 4, !tbaa !106
  store float %98, ptr %91, align 4, !tbaa !106
  %99 = getelementptr inbounds float, ptr %97, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !106
  %101 = getelementptr inbounds float, ptr %91, i64 1
  store float %100, ptr %101, align 4, !tbaa !106
  %102 = getelementptr inbounds float, ptr %97, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !106
  %104 = getelementptr inbounds float, ptr %91, i64 2
  store float %103, ptr %104, align 4, !tbaa !106
  br i1 %62, label %143, label %105

105:                                              ; preds = %88
  %106 = getelementptr inbounds %struct.VertexBufferFormat, ptr %91, i64 0, i32 1
  %107 = load i32, ptr %63, align 4, !tbaa !179
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %97, i64 %108
  %110 = load float, ptr %109, align 4, !tbaa !106
  %111 = fmul float %110, 3.276700e+04
  %112 = fptosi float %111 to i16
  store i16 %112, ptr %106, align 2, !tbaa !111
  %113 = getelementptr inbounds float, ptr %109, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !106
  %115 = fmul float %114, 3.276700e+04
  %116 = fptosi float %115 to i16
  %117 = getelementptr inbounds %struct.VertexBufferFormat, ptr %91, i64 0, i32 1, i64 1
  store i16 %116, ptr %117, align 2, !tbaa !111
  %118 = getelementptr inbounds float, ptr %109, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !106
  %120 = fmul float %119, 3.276700e+04
  %121 = fptosi float %120 to i16
  %122 = getelementptr inbounds %struct.VertexBufferFormat, ptr %91, i64 0, i32 1, i64 2
  store i16 %121, ptr %122, align 2, !tbaa !111
  br i1 %64, label %143, label %123

123:                                              ; preds = %105
  %124 = load i32, ptr %65, align 4, !tbaa !180
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %97, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !106
  %128 = getelementptr inbounds %struct.VertexBufferFormat, ptr %91, i64 0, i32 3
  %129 = fneg float %127
  %130 = call float @llvm.fmuladd.f32(float %129, float 7.500000e-01, float 1.000000e+00)
  %131 = fmul float %130, 2.550000e+02
  %132 = load float, ptr %8, align 16, !tbaa !106
  %133 = fmul float %132, %131
  %134 = fptoui float %133 to i8
  store i8 %134, ptr %128, align 1, !tbaa !51
  %135 = load float, ptr %40, align 4, !tbaa !106
  %136 = fmul float %131, %135
  %137 = fptoui float %136 to i8
  %138 = getelementptr inbounds %struct.VertexBufferFormat, ptr %91, i64 0, i32 3, i64 1
  store i8 %137, ptr %138, align 1, !tbaa !51
  %139 = load float, ptr %43, align 8, !tbaa !106
  %140 = fmul float %131, %139
  %141 = fptoui float %140 to i8
  %142 = getelementptr inbounds %struct.VertexBufferFormat, ptr %91, i64 0, i32 3, i64 2
  store i8 %141, ptr %142, align 1, !tbaa !51
  br label %143

143:                                              ; preds = %105, %123, %88
  %144 = getelementptr inbounds %struct.VertexBufferFormat, ptr %91, i64 1
  %145 = add nuw nsw i32 %90, 1
  %146 = load i32, ptr %60, align 4, !tbaa !177
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %88, label %148, !llvm.loop !181

148:                                              ; preds = %143, %83
  %149 = phi ptr [ %85, %83 ], [ %144, %143 ]
  %150 = add nuw nsw i32 %84, 1
  %151 = load i32, ptr %60, align 4, !tbaa !177
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %83, label %153, !llvm.loop !182

153:                                              ; preds = %148, %73
  br i1 %66, label %154, label %246

154:                                              ; preds = %153
  %155 = load i32, ptr %60, align 4, !tbaa !177
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %246

157:                                              ; preds = %154, %241
  %158 = phi i32 [ %242, %241 ], [ 0, %154 ]
  %159 = load i32, ptr %60, align 4, !tbaa !177
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %241

161:                                              ; preds = %157
  %162 = add nuw nsw i32 %158, 1
  br label %163

163:                                              ; preds = %161, %236
  %164 = phi i64 [ 0, %161 ], [ %173, %236 ]
  %165 = phi i32 [ %159, %161 ], [ %237, %236 ]
  %166 = mul nsw i32 %165, %162
  %167 = trunc i64 %164 to i32
  %168 = add nsw i32 %166, %167
  %169 = load i32, ptr %67, align 4, !tbaa !178
  %170 = mul nsw i32 %169, %168
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, ptr %80, i64 %171
  %173 = add nuw nsw i64 %164, 1
  %174 = trunc i64 %173 to i32
  %175 = add nsw i32 %166, %174
  %176 = mul nsw i32 %169, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %80, i64 %177
  %179 = mul nsw i32 %165, %158
  %180 = trunc i64 %173 to i32
  %181 = add nsw i32 %179, %180
  %182 = mul nsw i32 %169, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %80, i64 %183
  %185 = trunc i64 %164 to i32
  %186 = add nsw i32 %179, %185
  %187 = mul nsw i32 %169, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %80, i64 %188
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %190 = call float @normal_quad_v3(ptr noundef nonnull %9, ptr noundef %172, ptr noundef %178, ptr noundef %184, ptr noundef %189) #7
  %191 = load i32, ptr %60, align 4, !tbaa !177
  %192 = mul nsw i32 %191, %162
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.VertexBufferFormat, ptr %75, i64 %193
  %195 = getelementptr inbounds %struct.VertexBufferFormat, ptr %194, i64 %164, i32 1
  %196 = load float, ptr %9, align 4, !tbaa !106
  %197 = fmul float %196, 3.276700e+04
  %198 = fptosi float %197 to i16
  store i16 %198, ptr %195, align 2, !tbaa !111
  %199 = load float, ptr %68, align 4, !tbaa !106
  %200 = fmul float %199, 3.276700e+04
  %201 = fptosi float %200 to i16
  %202 = getelementptr inbounds i16, ptr %195, i64 1
  store i16 %201, ptr %202, align 2, !tbaa !111
  %203 = load float, ptr %69, align 4, !tbaa !106
  %204 = fmul float %203, 3.276700e+04
  %205 = fptosi float %204 to i16
  %206 = getelementptr inbounds i16, ptr %195, i64 2
  store i16 %205, ptr %206, align 2, !tbaa !111
  br i1 %70, label %236, label %207

207:                                              ; preds = %163
  %208 = getelementptr inbounds %struct.VertexBufferFormat, ptr %194, i64 %164, i32 3
  %209 = load i32, ptr %71, align 4, !tbaa !180
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %172, i64 %210
  %212 = load float, ptr %211, align 4, !tbaa !106
  %213 = getelementptr inbounds i8, ptr %178, i64 %210
  %214 = load float, ptr %213, align 4, !tbaa !106
  %215 = fadd float %212, %214
  %216 = getelementptr inbounds i8, ptr %184, i64 %210
  %217 = load float, ptr %216, align 4, !tbaa !106
  %218 = fadd float %215, %217
  %219 = getelementptr inbounds i8, ptr %189, i64 %210
  %220 = load float, ptr %219, align 4, !tbaa !106
  %221 = fadd float %218, %220
  %222 = fmul float %221, -2.500000e-01
  %223 = call float @llvm.fmuladd.f32(float %222, float 7.500000e-01, float 1.000000e+00)
  %224 = fmul float %223, 2.550000e+02
  %225 = load float, ptr %8, align 16, !tbaa !106
  %226 = fmul float %225, %224
  %227 = fptoui float %226 to i8
  store i8 %227, ptr %208, align 1, !tbaa !51
  %228 = load float, ptr %40, align 4, !tbaa !106
  %229 = fmul float %228, %224
  %230 = fptoui float %229 to i8
  %231 = getelementptr inbounds i8, ptr %208, i64 1
  store i8 %230, ptr %231, align 1, !tbaa !51
  %232 = load float, ptr %43, align 8, !tbaa !106
  %233 = fmul float %224, %232
  %234 = fptoui float %233 to i8
  %235 = getelementptr inbounds i8, ptr %208, i64 2
  store i8 %234, ptr %235, align 1, !tbaa !51
  br label %236

236:                                              ; preds = %207, %163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  %237 = load i32, ptr %60, align 4, !tbaa !177
  %238 = add nsw i32 %237, -1
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %173, %239
  br i1 %240, label %163, label %241, !llvm.loop !183

241:                                              ; preds = %236, %157
  %242 = add nuw nsw i32 %158, 1
  %243 = load i32, ptr %60, align 4, !tbaa !177
  %244 = add nsw i32 %243, -1
  %245 = icmp slt i32 %242, %244
  br i1 %245, label %157, label %246, !llvm.loop !184

246:                                              ; preds = %241, %154, %153
  %247 = load i32, ptr %16, align 4, !tbaa !172
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.VertexBufferFormat, ptr %75, i64 %248
  %250 = add nuw nsw i64 %74, 1
  %251 = icmp eq i64 %250, %72
  br i1 %251, label %252, label %73, !llvm.loop !185

252:                                              ; preds = %246, %57
  %253 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %254 = call zeroext i8 %253(i32 noundef 34962) #7
  br label %257

255:                                              ; preds = %37
  %256 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %256(i32 noundef 1, ptr noundef nonnull %0) #7
  store i32 0, ptr %0, align 8, !tbaa !154
  br label %257

257:                                              ; preds = %255, %252
  %258 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  call void %258(i32 noundef 34962, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %259

259:                                              ; preds = %257, %7
  %260 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 9
  store ptr %1, ptr %260, align 8, !tbaa !186
  %261 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 12
  store ptr %3, ptr %261, align 8, !tbaa !187
  %262 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  store i32 %4, ptr %262, align 8, !tbaa !188
  %263 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 10
  store ptr %2, ptr %263, align 8, !tbaa !189
  %264 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %264, ptr noundef nonnull align 4 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !190
  %265 = load i32, ptr %3, align 4, !tbaa !42
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.DMFlagMat, ptr %2, i64 %266, i32 1
  %268 = load i8, ptr %267, align 2, !tbaa !173
  %269 = and i8 %268, 1
  %270 = zext nneg i8 %269 to i32
  %271 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  store i32 %270, ptr %271, align 4, !tbaa !155
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_build_grid_pbvh_buffers(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %3, -1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 176, ptr noundef nonnull @.str.4) #7
  %8 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 11
  store ptr %2, ptr %8, align 8, !tbaa !191
  %9 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 13
  store i32 %1, ptr %9, align 8, !tbaa !188
  %10 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 19
  store i8 0, ptr %10, align 8, !tbaa !152
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 20
  store i8 0, ptr %11, align 1, !tbaa !153
  %12 = tail call i32 @BKE_pbvh_count_grid_quads(ptr noundef %2, ptr noundef %0, i32 noundef %1, i32 noundef %3) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %308, label %14

14:                                               ; preds = %4
  %15 = mul nsw i32 %5, %5
  %16 = mul nsw i32 %15, %1
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %137

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 2
  %20 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 17
  %21 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !51
  %22 = icmp eq i8 %21, 0
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8
  %24 = and i16 %23, 8
  %25 = icmp ne i16 %24, 0
  %26 = select i1 %22, i1 true, i1 %25
  %27 = load i32, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !42
  br i1 %26, label %28, label %32

28:                                               ; preds = %18
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %134, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %31(i32 noundef 1, ptr noundef nonnull @gpu_get_grid_buffer.buffer) #7
  br label %134

32:                                               ; preds = %18
  %33 = icmp ne i32 %27, 0
  %34 = load i32, ptr @gpu_get_grid_buffer.prev_gridsize, align 4
  %35 = icmp eq i32 %34, %3
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, ptr @gpu_get_grid_buffer.prev_index_type, align 4, !tbaa !42
  store i32 %38, ptr %19, align 4, !tbaa !42
  %39 = load i32, ptr @gpu_get_grid_buffer.prev_totquad, align 4, !tbaa !42
  store i32 %39, ptr %20, align 4, !tbaa !42
  br label %134

40:                                               ; preds = %32
  %41 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  tail call void %41(i32 noundef 1, ptr noundef nonnull @gpu_get_grid_buffer.buffer) #7
  %42 = load i32, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !42
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %130, label %44

44:                                               ; preds = %40
  store i32 %15, ptr %20, align 4, !tbaa !42
  %45 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %45(i32 noundef 34963, i32 noundef %42) #7
  %46 = mul nsw i32 %3, %3
  %47 = icmp ult i32 %46, 65535
  br i1 %47, label %48, label %89

48:                                               ; preds = %44
  store i32 5123, ptr %19, align 4, !tbaa !42
  %49 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %50 = load i32, ptr %20, align 4, !tbaa !42
  %51 = zext i32 %50 to i64
  %52 = mul nuw nsw i64 %51, 12
  tail call void %49(i32 noundef 34963, i64 noundef %52, ptr noundef null, i32 noundef 35044) #7
  %53 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %54 = tail call ptr %53(i32 noundef 34963, i32 noundef 35001) #7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %87, label %56

56:                                               ; preds = %48
  %57 = icmp sgt i32 %3, 1
  br i1 %57, label %58, label %84

58:                                               ; preds = %56, %81
  %59 = phi i32 [ %82, %81 ], [ 0, %56 ]
  %60 = phi ptr [ %78, %81 ], [ %54, %56 ]
  %61 = mul nsw i32 %59, %3
  %62 = add nuw nsw i32 %59, 1
  %63 = mul nsw i32 %62, %3
  br label %64

64:                                               ; preds = %58, %64
  %65 = phi i32 [ 0, %58 ], [ %79, %64 ]
  %66 = phi ptr [ %60, %58 ], [ %78, %64 ]
  %67 = add nuw nsw i32 %61, %65
  %68 = trunc i32 %67 to i16
  %69 = add i16 %68, 1
  %70 = getelementptr inbounds i16, ptr %66, i64 1
  store i16 %69, ptr %66, align 2, !tbaa !111
  %71 = getelementptr inbounds i16, ptr %66, i64 2
  store i16 %68, ptr %70, align 2, !tbaa !111
  %72 = add nuw nsw i32 %63, %65
  %73 = trunc i32 %72 to i16
  %74 = getelementptr inbounds i16, ptr %66, i64 3
  store i16 %73, ptr %71, align 2, !tbaa !111
  %75 = add i16 %73, 1
  %76 = getelementptr inbounds i16, ptr %66, i64 4
  store i16 %75, ptr %74, align 2, !tbaa !111
  %77 = getelementptr inbounds i16, ptr %66, i64 5
  store i16 %69, ptr %76, align 2, !tbaa !111
  store i16 %73, ptr %77, align 2, !tbaa !111
  %78 = getelementptr inbounds i16, ptr %66, i64 6
  %79 = add nuw nsw i32 %65, 1
  %80 = icmp eq i32 %79, %5
  br i1 %80, label %81, label %64, !llvm.loop !192

81:                                               ; preds = %64
  %82 = add nuw nsw i32 %59, 1
  %83 = icmp eq i32 %82, %5
  br i1 %83, label %84, label %58, !llvm.loop !193

84:                                               ; preds = %81, %56
  %85 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %86 = tail call zeroext i8 %85(i32 noundef 34963) #7
  br label %128

87:                                               ; preds = %48
  %88 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %88(i32 noundef 1, ptr noundef nonnull @gpu_get_grid_buffer.buffer) #7
  store i32 0, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !42
  br label %128

89:                                               ; preds = %44
  store i32 5125, ptr %19, align 4, !tbaa !42
  %90 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %91 = load i32, ptr %20, align 4, !tbaa !42
  %92 = zext i32 %91 to i64
  %93 = mul nuw nsw i64 %92, 24
  tail call void %90(i32 noundef 34963, i64 noundef %93, ptr noundef null, i32 noundef 35044) #7
  %94 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %95 = tail call ptr %94(i32 noundef 34963, i32 noundef 35001) #7
  %96 = icmp eq ptr %95, null
  br i1 %96, label %126, label %97

97:                                               ; preds = %89
  %98 = icmp sgt i32 %3, 1
  br i1 %98, label %99, label %123

99:                                               ; preds = %97, %120
  %100 = phi i32 [ %121, %120 ], [ 0, %97 ]
  %101 = phi ptr [ %117, %120 ], [ %95, %97 ]
  %102 = mul nsw i32 %100, %3
  %103 = add nuw nsw i32 %100, 1
  %104 = mul nsw i32 %103, %3
  br label %105

105:                                              ; preds = %99, %105
  %106 = phi i32 [ 0, %99 ], [ %118, %105 ]
  %107 = phi ptr [ %101, %99 ], [ %117, %105 ]
  %108 = add nuw nsw i32 %102, %106
  %109 = add nuw nsw i32 %108, 1
  %110 = getelementptr inbounds i32, ptr %107, i64 1
  store i32 %109, ptr %107, align 4, !tbaa !42
  %111 = getelementptr inbounds i32, ptr %107, i64 2
  store i32 %108, ptr %110, align 4, !tbaa !42
  %112 = add nuw nsw i32 %104, %106
  %113 = getelementptr inbounds i32, ptr %107, i64 3
  store i32 %112, ptr %111, align 4, !tbaa !42
  %114 = add nuw nsw i32 %112, 1
  %115 = getelementptr inbounds i32, ptr %107, i64 4
  store i32 %114, ptr %113, align 4, !tbaa !42
  %116 = getelementptr inbounds i32, ptr %107, i64 5
  store i32 %109, ptr %115, align 4, !tbaa !42
  store i32 %112, ptr %116, align 4, !tbaa !42
  %117 = getelementptr inbounds i32, ptr %107, i64 6
  %118 = add nuw nsw i32 %106, 1
  %119 = icmp eq i32 %118, %5
  br i1 %119, label %120, label %105, !llvm.loop !194

120:                                              ; preds = %105
  %121 = add nuw nsw i32 %100, 1
  %122 = icmp eq i32 %121, %5
  br i1 %122, label %123, label %99, !llvm.loop !195

123:                                              ; preds = %120, %97
  %124 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %125 = tail call zeroext i8 %124(i32 noundef 34963) #7
  br label %128

126:                                              ; preds = %89
  %127 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %127(i32 noundef 1, ptr noundef nonnull @gpu_get_grid_buffer.buffer) #7
  store i32 0, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !42
  br label %128

128:                                              ; preds = %126, %123, %87, %84
  %129 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %129(i32 noundef 34963, i32 noundef 0) #7
  br label %130

130:                                              ; preds = %128, %40
  store i32 %3, ptr @gpu_get_grid_buffer.prev_gridsize, align 4, !tbaa !42
  %131 = load i32, ptr %19, align 4, !tbaa !42
  store i32 %131, ptr @gpu_get_grid_buffer.prev_index_type, align 4, !tbaa !42
  %132 = load i32, ptr %20, align 4, !tbaa !42
  store i32 %132, ptr @gpu_get_grid_buffer.prev_totquad, align 4, !tbaa !42
  %133 = load i32, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !42
  br label %134

134:                                              ; preds = %28, %30, %37, %130
  %135 = phi i32 [ %27, %37 ], [ %133, %130 ], [ 0, %30 ], [ 0, %28 ]
  %136 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 1
  store i32 %135, ptr %136, align 4, !tbaa !168
  br label %299

137:                                              ; preds = %14
  %138 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !51
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %302, label %140

140:                                              ; preds = %137
  %141 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !144
  %142 = and i16 %141, 8
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %302

144:                                              ; preds = %140
  %145 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  %146 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 1
  tail call void %145(i32 noundef 1, ptr noundef nonnull %146) #7
  %147 = load i32, ptr %146, align 4, !tbaa !168
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %299, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 17
  store i32 %12, ptr %150, align 8, !tbaa !196
  %151 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %151(i32 noundef 34963, i32 noundef %147) #7
  %152 = mul i32 %3, %3
  %153 = mul i32 %152, %1
  %154 = icmp slt i32 %153, 65535
  %155 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 2
  %156 = sext i32 %12 to i64
  br i1 %154, label %157, label %228

157:                                              ; preds = %149
  store i32 5123, ptr %155, align 8, !tbaa !166
  %158 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %159 = mul nsw i64 %156, 12
  tail call void %158(i32 noundef 34963, i64 noundef %159, ptr noundef null, i32 noundef 35044) #7
  %160 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %161 = tail call ptr %160(i32 noundef 34963, i32 noundef 35001) #7
  %162 = icmp eq ptr %161, null
  br i1 %162, label %226, label %163

163:                                              ; preds = %157
  %164 = icmp sgt i32 %1, 0
  br i1 %164, label %165, label %223

165:                                              ; preds = %163
  %166 = icmp eq ptr %2, null
  %167 = icmp sgt i32 %3, 1
  %168 = mul nsw i32 %3, %3
  %169 = zext nneg i32 %1 to i64
  br label %170

170:                                              ; preds = %165, %218
  %171 = phi i64 [ 0, %165 ], [ %221, %218 ]
  %172 = phi i32 [ 0, %165 ], [ %220, %218 ]
  %173 = phi ptr [ %161, %165 ], [ %219, %218 ]
  br i1 %166, label %180, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds i32, ptr %0, i64 %171
  %176 = load i32, ptr %175, align 4, !tbaa !42
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds ptr, ptr %2, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !34
  br label %180

180:                                              ; preds = %174, %170
  %181 = phi ptr [ %179, %174 ], [ null, %170 ]
  br i1 %167, label %182, label %218

182:                                              ; preds = %180
  %183 = icmp eq ptr %181, null
  br label %184

184:                                              ; preds = %182, %215
  %185 = phi i32 [ 0, %182 ], [ %216, %215 ]
  %186 = phi ptr [ %173, %182 ], [ %212, %215 ]
  %187 = mul nsw i32 %185, %3
  %188 = add nuw nsw i32 %187, %172
  %189 = add nuw nsw i32 %185, 1
  %190 = mul nsw i32 %189, %3
  %191 = add nuw nsw i32 %190, %172
  br label %192

192:                                              ; preds = %184, %211
  %193 = phi i32 [ 0, %184 ], [ %213, %211 ]
  %194 = phi ptr [ %186, %184 ], [ %212, %211 ]
  br i1 %183, label %198, label %195

195:                                              ; preds = %192
  %196 = tail call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %181, i32 noundef %3, i32 noundef %193, i32 noundef %185) #7
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %195, %192
  %199 = add nuw nsw i32 %188, %193
  %200 = trunc i32 %199 to i16
  %201 = add i16 %200, 1
  %202 = getelementptr inbounds i16, ptr %194, i64 1
  store i16 %201, ptr %194, align 2, !tbaa !111
  %203 = getelementptr inbounds i16, ptr %194, i64 2
  store i16 %200, ptr %202, align 2, !tbaa !111
  %204 = add nuw nsw i32 %191, %193
  %205 = trunc i32 %204 to i16
  %206 = getelementptr inbounds i16, ptr %194, i64 3
  store i16 %205, ptr %203, align 2, !tbaa !111
  %207 = add i16 %205, 1
  %208 = getelementptr inbounds i16, ptr %194, i64 4
  store i16 %207, ptr %206, align 2, !tbaa !111
  %209 = getelementptr inbounds i16, ptr %194, i64 5
  store i16 %201, ptr %208, align 2, !tbaa !111
  %210 = getelementptr inbounds i16, ptr %194, i64 6
  store i16 %205, ptr %209, align 2, !tbaa !111
  br label %211

211:                                              ; preds = %195, %198
  %212 = phi ptr [ %194, %195 ], [ %210, %198 ]
  %213 = add nuw nsw i32 %193, 1
  %214 = icmp eq i32 %213, %5
  br i1 %214, label %215, label %192, !llvm.loop !197

215:                                              ; preds = %211
  %216 = add nuw nsw i32 %185, 1
  %217 = icmp eq i32 %216, %5
  br i1 %217, label %218, label %184, !llvm.loop !198

218:                                              ; preds = %215, %180
  %219 = phi ptr [ %173, %180 ], [ %212, %215 ]
  %220 = add nuw nsw i32 %172, %168
  %221 = add nuw nsw i64 %171, 1
  %222 = icmp eq i64 %221, %169
  br i1 %222, label %223, label %170, !llvm.loop !199

223:                                              ; preds = %218, %163
  %224 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %225 = tail call zeroext i8 %224(i32 noundef 34963) #7
  br label %297

226:                                              ; preds = %157
  %227 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %227(i32 noundef 1, ptr noundef nonnull %146) #7
  store i32 0, ptr %146, align 4, !tbaa !168
  br label %297

228:                                              ; preds = %149
  store i32 5125, ptr %155, align 8, !tbaa !166
  %229 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %230 = mul nsw i64 %156, 24
  tail call void %229(i32 noundef 34963, i64 noundef %230, ptr noundef null, i32 noundef 35044) #7
  %231 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %232 = tail call ptr %231(i32 noundef 34963, i32 noundef 35001) #7
  %233 = icmp eq ptr %232, null
  br i1 %233, label %295, label %234

234:                                              ; preds = %228
  %235 = icmp sgt i32 %1, 0
  br i1 %235, label %236, label %292

236:                                              ; preds = %234
  %237 = icmp eq ptr %2, null
  %238 = icmp sgt i32 %3, 1
  %239 = mul nsw i32 %3, %3
  %240 = zext nneg i32 %1 to i64
  br label %241

241:                                              ; preds = %236, %287
  %242 = phi i64 [ 0, %236 ], [ %290, %287 ]
  %243 = phi i32 [ 0, %236 ], [ %289, %287 ]
  %244 = phi ptr [ %232, %236 ], [ %288, %287 ]
  br i1 %237, label %251, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds i32, ptr %0, i64 %242
  %247 = load i32, ptr %246, align 4, !tbaa !42
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds ptr, ptr %2, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !34
  br label %251

251:                                              ; preds = %245, %241
  %252 = phi ptr [ %250, %245 ], [ null, %241 ]
  br i1 %238, label %253, label %287

253:                                              ; preds = %251
  %254 = icmp eq ptr %252, null
  br label %255

255:                                              ; preds = %253, %284
  %256 = phi i32 [ 0, %253 ], [ %285, %284 ]
  %257 = phi ptr [ %244, %253 ], [ %281, %284 ]
  %258 = mul nsw i32 %256, %3
  %259 = add nuw nsw i32 %258, %243
  %260 = add nuw nsw i32 %256, 1
  %261 = mul nsw i32 %260, %3
  %262 = add nuw nsw i32 %261, %243
  br label %263

263:                                              ; preds = %255, %280
  %264 = phi i32 [ 0, %255 ], [ %282, %280 ]
  %265 = phi ptr [ %257, %255 ], [ %281, %280 ]
  br i1 %254, label %269, label %266

266:                                              ; preds = %263
  %267 = tail call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %252, i32 noundef %3, i32 noundef %264, i32 noundef %256) #7
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %266, %263
  %270 = add nuw nsw i32 %259, %264
  %271 = add nuw nsw i32 %270, 1
  %272 = getelementptr inbounds i32, ptr %265, i64 1
  store i32 %271, ptr %265, align 4, !tbaa !42
  %273 = getelementptr inbounds i32, ptr %265, i64 2
  store i32 %270, ptr %272, align 4, !tbaa !42
  %274 = add nuw nsw i32 %262, %264
  %275 = getelementptr inbounds i32, ptr %265, i64 3
  store i32 %274, ptr %273, align 4, !tbaa !42
  %276 = add nuw nsw i32 %274, 1
  %277 = getelementptr inbounds i32, ptr %265, i64 4
  store i32 %276, ptr %275, align 4, !tbaa !42
  %278 = getelementptr inbounds i32, ptr %265, i64 5
  store i32 %271, ptr %277, align 4, !tbaa !42
  %279 = getelementptr inbounds i32, ptr %265, i64 6
  store i32 %274, ptr %278, align 4, !tbaa !42
  br label %280

280:                                              ; preds = %266, %269
  %281 = phi ptr [ %265, %266 ], [ %279, %269 ]
  %282 = add nuw nsw i32 %264, 1
  %283 = icmp eq i32 %282, %5
  br i1 %283, label %284, label %263, !llvm.loop !200

284:                                              ; preds = %280
  %285 = add nuw nsw i32 %256, 1
  %286 = icmp eq i32 %285, %5
  br i1 %286, label %287, label %255, !llvm.loop !201

287:                                              ; preds = %284, %251
  %288 = phi ptr [ %244, %251 ], [ %281, %284 ]
  %289 = add nuw nsw i32 %243, %239
  %290 = add nuw nsw i64 %242, 1
  %291 = icmp eq i64 %290, %240
  br i1 %291, label %292, label %241, !llvm.loop !202

292:                                              ; preds = %287, %234
  %293 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %294 = tail call zeroext i8 %293(i32 noundef 34963) #7
  br label %297

295:                                              ; preds = %228
  %296 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %296(i32 noundef 1, ptr noundef nonnull %146) #7
  store i32 0, ptr %146, align 4, !tbaa !168
  br label %297

297:                                              ; preds = %292, %295, %223, %226
  %298 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %298(i32 noundef 34963, i32 noundef 0) #7
  br label %299

299:                                              ; preds = %144, %297, %134
  %300 = phi i32 [ 0, %134 ], [ 1, %297 ], [ 1, %144 ]
  %301 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 14
  store i32 %300, ptr %301, align 4, !tbaa !203
  br label %302

302:                                              ; preds = %299, %137, %140
  %303 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !168
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  tail call void %307(i32 noundef 1, ptr noundef %7) #7
  br label %308

308:                                              ; preds = %302, %306, %4
  ret ptr %7
}

declare i32 @BKE_pbvh_count_grid_quads(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @paint_is_grid_face_hidden(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_update_bmesh_pbvh_buffers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.GSetIterator, align 8
  %8 = alloca %struct.GSetIterator, align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca %struct.GSetIterator, align 8
  %11 = alloca %struct.GSetIterator, align 8
  %12 = alloca %struct.GSetIterator, align 8
  %13 = alloca [3 x ptr], align 16
  %14 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) @__const.gpu_draw_buffers_legacy_grids.diffuse_color, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %16 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %15, i32 noundef 34) #7
  %17 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  store i8 %5, ptr %17, align 8, !tbaa !152
  %18 = tail call zeroext i8 @GPU_material_use_matcaps_get() #7
  %19 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  store i8 %18, ptr %19, align 1, !tbaa !153
  %20 = load i32, ptr %0, align 8, !tbaa !154
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %430, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  %24 = load i32, ptr %23, align 4, !tbaa !155
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !168
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %430, label %30

30:                                               ; preds = %26, %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  call void @BLI_ghashIterator_init(ptr noundef nonnull %8, ptr noundef %2) #7
  %31 = getelementptr inbounds %struct.GHashIterator, ptr %8, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !204
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %30, %34
  %35 = phi ptr [ %45, %34 ], [ %32, %30 ]
  %36 = phi i32 [ %44, %34 ], [ 0, %30 ]
  %37 = getelementptr inbounds %struct._gh_Entry, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !206
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 3
  %40 = load i8, ptr %39, align 1, !tbaa !208
  %41 = and i8 %40, 2
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i32
  %44 = add nuw nsw i32 %36, %43
  call void @BLI_ghashIterator_step(ptr noundef nonnull %8) #7
  %45 = load ptr, ptr %31, align 8, !tbaa !204
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %34, !llvm.loop !210

47:                                               ; preds = %34, %30
  %48 = phi i32 [ 0, %30 ], [ %44, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  %49 = load i32, ptr %23, align 4, !tbaa !155
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %88, label %51

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @BLI_ghashIterator_init(ptr noundef nonnull %7, ptr noundef %3) #7
  %52 = getelementptr inbounds %struct.GHashIterator, ptr %7, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !204
  %54 = icmp eq ptr %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %51, %55
  %56 = phi ptr [ %66, %55 ], [ %53, %51 ]
  %57 = phi i32 [ %65, %55 ], [ 0, %51 ]
  %58 = getelementptr inbounds %struct._gh_Entry, ptr %56, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !206
  %60 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !208
  %62 = and i8 %61, 2
  %63 = icmp eq i8 %62, 0
  %64 = zext i1 %63 to i32
  %65 = add nuw nsw i32 %57, %64
  call void @BLI_ghashIterator_step(ptr noundef nonnull %7) #7
  %66 = load ptr, ptr %52, align 8, !tbaa !204
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %55, !llvm.loop !211

68:                                               ; preds = %55, %51
  %69 = phi i32 [ 0, %51 ], [ %65, %55 ]
  %70 = getelementptr inbounds %struct.GHashIterator, ptr %7, i64 0, i32 1
  call void @BLI_ghashIterator_init(ptr noundef nonnull %7, ptr noundef %4) #7
  %71 = load ptr, ptr %70, align 8, !tbaa !204
  %72 = icmp eq ptr %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %68, %73
  %74 = phi ptr [ %84, %73 ], [ %71, %68 ]
  %75 = phi i32 [ %83, %73 ], [ %69, %68 ]
  %76 = getelementptr inbounds %struct._gh_Entry, ptr %74, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !206
  %78 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !208
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  %82 = zext i1 %81 to i32
  %83 = add nuw nsw i32 %75, %82
  call void @BLI_ghashIterator_step(ptr noundef nonnull %7) #7
  %84 = load ptr, ptr %70, align 8, !tbaa !204
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %73, !llvm.loop !212

86:                                               ; preds = %73, %68
  %87 = phi i32 [ %69, %68 ], [ %83, %73 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  br label %90

88:                                               ; preds = %47
  %89 = mul nsw i32 %48, 3
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = icmp eq i32 %48, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  store i32 0, ptr %94, align 4, !tbaa !156
  br label %430

95:                                               ; preds = %90
  %96 = load i8, ptr %19, align 1, !tbaa !153
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  store float 1.000000e+00, ptr %99, align 8, !tbaa !106
  %100 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  store float 1.000000e+00, ptr %100, align 4, !tbaa !106
  store float 1.000000e+00, ptr %9, align 16, !tbaa !106
  br label %112

101:                                              ; preds = %95
  %102 = icmp eq i8 %5, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #7
  call void @BLI_ghashIterator_init(ptr noundef nonnull %10, ptr noundef %2) #7
  %104 = getelementptr inbounds %struct.GHashIterator, ptr %10, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !204
  %106 = getelementptr inbounds %struct._gh_Entry, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !206
  %108 = getelementptr inbounds %struct.BMFace, ptr %107, i64 0, i32 5
  %109 = load i16, ptr %108, align 8, !tbaa !213
  %110 = sext i16 %109 to i32
  %111 = add nsw i32 %110, 1
  call void @GPU_material_diffuse_get(i32 noundef %111, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #7
  br label %112

112:                                              ; preds = %101, %103, %98
  %113 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21
  %114 = load float, ptr %9, align 16, !tbaa !106
  store float %114, ptr %113, align 4, !tbaa !106
  %115 = getelementptr inbounds float, ptr %9, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !106
  %117 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 1
  store float %116, ptr %117, align 4, !tbaa !106
  %118 = getelementptr inbounds float, ptr %9, i64 2
  %119 = load float, ptr %118, align 8, !tbaa !106
  %120 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 2
  store float %119, ptr %120, align 4, !tbaa !106
  %121 = getelementptr inbounds float, ptr %9, i64 3
  %122 = load float, ptr %121, align 4, !tbaa !106
  %123 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 3
  store float %122, ptr %123, align 4, !tbaa !106
  %124 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %125 = load i32, ptr %0, align 8, !tbaa !154
  call void %124(i32 noundef 34962, i32 noundef %125) #7
  %126 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %127 = sext i32 %91 to i64
  %128 = mul nsw i64 %127, 24
  call void %126(i32 noundef 34962, i64 noundef %128, ptr noundef null, i32 noundef 35044) #7
  %129 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %130 = call ptr %129(i32 noundef 34962, i32 noundef 35001) #7
  %131 = icmp eq ptr %130, null
  br i1 %131, label %372, label %132

132:                                              ; preds = %112
  %133 = load i32, ptr %23, align 4, !tbaa !155
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %272, label %135

135:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #7
  %136 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %137 = load i8, ptr %136, align 4, !tbaa !215
  %138 = or i8 %137, 1
  store i8 %138, ptr %136, align 4, !tbaa !215
  call void @BLI_ghashIterator_init(ptr noundef nonnull %11, ptr noundef %3) #7
  %139 = getelementptr inbounds %struct.GHashIterator, ptr %11, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !204
  %141 = icmp eq ptr %140, null
  br i1 %141, label %203, label %142

142:                                              ; preds = %135
  %143 = sext i32 %16 to i64
  br label %144

144:                                              ; preds = %142, %199
  %145 = phi ptr [ %140, %142 ], [ %201, %199 ]
  %146 = phi i32 [ 0, %142 ], [ %200, %199 ]
  %147 = getelementptr inbounds %struct._gh_Entry, ptr %145, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !206
  %149 = getelementptr inbounds %struct.BMHeader, ptr %148, i64 0, i32 3
  %150 = load i8, ptr %149, align 1, !tbaa !208
  %151 = and i8 %150, 2
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %199

153:                                              ; preds = %144
  %154 = sext i32 %146 to i64
  %155 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %154
  %156 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 2
  %157 = load float, ptr %156, align 4, !tbaa !106
  store float %157, ptr %155, align 4, !tbaa !106
  %158 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 2, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !106
  %160 = getelementptr inbounds float, ptr %155, i64 1
  store float %159, ptr %160, align 4, !tbaa !106
  %161 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 2, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !106
  %163 = getelementptr inbounds float, ptr %155, i64 2
  store float %162, ptr %163, align 4, !tbaa !106
  %164 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %154, i32 1
  %165 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 3
  %166 = load float, ptr %165, align 4, !tbaa !106
  %167 = fmul float %166, 3.276700e+04
  %168 = fptosi float %167 to i16
  store i16 %168, ptr %164, align 2, !tbaa !111
  %169 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 3, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !106
  %171 = fmul float %170, 3.276700e+04
  %172 = fptosi float %171 to i16
  %173 = getelementptr inbounds i16, ptr %164, i64 1
  store i16 %172, ptr %173, align 2, !tbaa !111
  %174 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 3, i64 2
  %175 = load float, ptr %174, align 4, !tbaa !106
  %176 = fmul float %175, 3.276700e+04
  %177 = fptosi float %176 to i16
  %178 = getelementptr inbounds i16, ptr %164, i64 2
  store i16 %177, ptr %178, align 2, !tbaa !111
  %179 = load ptr, ptr %148, align 8, !tbaa !217
  %180 = getelementptr inbounds i8, ptr %179, i64 %143
  %181 = load float, ptr %180, align 4, !tbaa !106
  %182 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %154, i32 3
  %183 = fneg float %181
  %184 = call float @llvm.fmuladd.f32(float %183, float 7.500000e-01, float 1.000000e+00)
  %185 = fmul float %184, 2.550000e+02
  %186 = load float, ptr %9, align 16, !tbaa !106
  %187 = fmul float %186, %185
  %188 = fptoui float %187 to i8
  store i8 %188, ptr %182, align 1, !tbaa !51
  %189 = load float, ptr %115, align 4, !tbaa !106
  %190 = fmul float %185, %189
  %191 = fptoui float %190 to i8
  %192 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 %191, ptr %192, align 1, !tbaa !51
  %193 = load float, ptr %118, align 8, !tbaa !106
  %194 = fmul float %185, %193
  %195 = fptoui float %194 to i8
  %196 = getelementptr inbounds i8, ptr %182, i64 2
  store i8 %195, ptr %196, align 1, !tbaa !51
  %197 = getelementptr inbounds %struct.BMHeader, ptr %148, i64 0, i32 1
  store i32 %146, ptr %197, align 8, !tbaa !219
  %198 = add nsw i32 %146, 1
  br label %199

199:                                              ; preds = %144, %153
  %200 = phi i32 [ %198, %153 ], [ %146, %144 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %11) #7
  %201 = load ptr, ptr %139, align 8, !tbaa !204
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %144, !llvm.loop !220

203:                                              ; preds = %199, %135
  %204 = phi i32 [ 0, %135 ], [ %200, %199 ]
  %205 = getelementptr inbounds %struct.GHashIterator, ptr %11, i64 0, i32 1
  call void @BLI_ghashIterator_init(ptr noundef nonnull %11, ptr noundef %4) #7
  %206 = load ptr, ptr %205, align 8, !tbaa !204
  %207 = icmp eq ptr %206, null
  br i1 %207, label %269, label %208

208:                                              ; preds = %203
  %209 = sext i32 %16 to i64
  br label %210

210:                                              ; preds = %208, %265
  %211 = phi ptr [ %206, %208 ], [ %267, %265 ]
  %212 = phi i32 [ %204, %208 ], [ %266, %265 ]
  %213 = getelementptr inbounds %struct._gh_Entry, ptr %211, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !206
  %215 = getelementptr inbounds %struct.BMHeader, ptr %214, i64 0, i32 3
  %216 = load i8, ptr %215, align 1, !tbaa !208
  %217 = and i8 %216, 2
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %265

219:                                              ; preds = %210
  %220 = sext i32 %212 to i64
  %221 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %220
  %222 = getelementptr inbounds %struct.BMVert, ptr %214, i64 0, i32 2
  %223 = load float, ptr %222, align 4, !tbaa !106
  store float %223, ptr %221, align 4, !tbaa !106
  %224 = getelementptr inbounds %struct.BMVert, ptr %214, i64 0, i32 2, i64 1
  %225 = load float, ptr %224, align 4, !tbaa !106
  %226 = getelementptr inbounds float, ptr %221, i64 1
  store float %225, ptr %226, align 4, !tbaa !106
  %227 = getelementptr inbounds %struct.BMVert, ptr %214, i64 0, i32 2, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !106
  %229 = getelementptr inbounds float, ptr %221, i64 2
  store float %228, ptr %229, align 4, !tbaa !106
  %230 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %220, i32 1
  %231 = getelementptr inbounds %struct.BMVert, ptr %214, i64 0, i32 3
  %232 = load float, ptr %231, align 4, !tbaa !106
  %233 = fmul float %232, 3.276700e+04
  %234 = fptosi float %233 to i16
  store i16 %234, ptr %230, align 2, !tbaa !111
  %235 = getelementptr inbounds %struct.BMVert, ptr %214, i64 0, i32 3, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !106
  %237 = fmul float %236, 3.276700e+04
  %238 = fptosi float %237 to i16
  %239 = getelementptr inbounds i16, ptr %230, i64 1
  store i16 %238, ptr %239, align 2, !tbaa !111
  %240 = getelementptr inbounds %struct.BMVert, ptr %214, i64 0, i32 3, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !106
  %242 = fmul float %241, 3.276700e+04
  %243 = fptosi float %242 to i16
  %244 = getelementptr inbounds i16, ptr %230, i64 2
  store i16 %243, ptr %244, align 2, !tbaa !111
  %245 = load ptr, ptr %214, align 8, !tbaa !217
  %246 = getelementptr inbounds i8, ptr %245, i64 %209
  %247 = load float, ptr %246, align 4, !tbaa !106
  %248 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %220, i32 3
  %249 = fneg float %247
  %250 = call float @llvm.fmuladd.f32(float %249, float 7.500000e-01, float 1.000000e+00)
  %251 = fmul float %250, 2.550000e+02
  %252 = load float, ptr %9, align 16, !tbaa !106
  %253 = fmul float %252, %251
  %254 = fptoui float %253 to i8
  store i8 %254, ptr %248, align 1, !tbaa !51
  %255 = load float, ptr %115, align 4, !tbaa !106
  %256 = fmul float %251, %255
  %257 = fptoui float %256 to i8
  %258 = getelementptr inbounds i8, ptr %248, i64 1
  store i8 %257, ptr %258, align 1, !tbaa !51
  %259 = load float, ptr %118, align 8, !tbaa !106
  %260 = fmul float %251, %259
  %261 = fptoui float %260 to i8
  %262 = getelementptr inbounds i8, ptr %248, i64 2
  store i8 %261, ptr %262, align 1, !tbaa !51
  %263 = getelementptr inbounds %struct.BMHeader, ptr %214, i64 0, i32 1
  store i32 %212, ptr %263, align 8, !tbaa !219
  %264 = add nsw i32 %212, 1
  br label %265

265:                                              ; preds = %210, %219
  %266 = phi i32 [ %264, %219 ], [ %212, %210 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %11) #7
  %267 = load ptr, ptr %205, align 8, !tbaa !204
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %210, !llvm.loop !221

269:                                              ; preds = %265, %203
  %270 = phi i32 [ %204, %203 ], [ %266, %265 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #7
  %271 = icmp slt i32 %270, 65535
  br label %363

272:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #7
  call void @BLI_ghashIterator_init(ptr noundef nonnull %12, ptr noundef %2) #7
  %273 = getelementptr inbounds %struct.GHashIterator, ptr %12, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !204
  %275 = icmp eq ptr %274, null
  br i1 %275, label %361, label %276

276:                                              ; preds = %272
  %277 = sext i32 %16 to i64
  br label %278

278:                                              ; preds = %276, %357
  %279 = phi ptr [ %274, %276 ], [ %359, %357 ]
  %280 = phi i32 [ 0, %276 ], [ %358, %357 ]
  %281 = getelementptr inbounds %struct._gh_Entry, ptr %279, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !206
  %283 = getelementptr inbounds %struct.BMHeader, ptr %282, i64 0, i32 3
  %284 = load i8, ptr %283, align 1, !tbaa !208
  %285 = and i8 %284, 2
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %357

287:                                              ; preds = %278
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #7
  call void @BM_face_as_array_vert_tri(ptr noundef %282, ptr noundef nonnull %13) #7
  br label %295

288:                                              ; preds = %295
  %289 = getelementptr inbounds %struct.BMFace, ptr %282, i64 0, i32 4
  %290 = getelementptr inbounds %struct.BMFace, ptr %282, i64 0, i32 4, i64 1
  %291 = getelementptr inbounds %struct.BMFace, ptr %282, i64 0, i32 4, i64 2
  %292 = fdiv float %303, -3.000000e+00
  %293 = call float @llvm.fmuladd.f32(float %292, float 7.500000e-01, float 1.000000e+00)
  %294 = fmul float %293, 2.550000e+02
  br label %306

295:                                              ; preds = %287, %295
  %296 = phi i64 [ 0, %287 ], [ %304, %295 ]
  %297 = phi float [ 0.000000e+00, %287 ], [ %303, %295 ]
  %298 = getelementptr inbounds [3 x ptr], ptr %13, i64 0, i64 %296
  %299 = load ptr, ptr %298, align 8, !tbaa !34
  %300 = load ptr, ptr %299, align 8, !tbaa !217
  %301 = getelementptr inbounds i8, ptr %300, i64 %277
  %302 = load float, ptr %301, align 4, !tbaa !106
  %303 = fadd float %297, %302
  %304 = add nuw nsw i64 %296, 1
  %305 = icmp eq i64 %304, 3
  br i1 %305, label %288, label %295, !llvm.loop !222

306:                                              ; preds = %288, %352
  %307 = phi i64 [ 0, %288 ], [ %354, %352 ]
  %308 = phi i32 [ %280, %288 ], [ %353, %352 ]
  %309 = getelementptr inbounds [3 x ptr], ptr %13, i64 0, i64 %307
  %310 = load ptr, ptr %309, align 8, !tbaa !34
  %311 = getelementptr inbounds %struct.BMHeader, ptr %310, i64 0, i32 3
  %312 = load i8, ptr %311, align 1, !tbaa !208
  %313 = and i8 %312, 2
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %315, label %352

315:                                              ; preds = %306
  %316 = sext i32 %308 to i64
  %317 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %316
  %318 = getelementptr inbounds %struct.BMVert, ptr %310, i64 0, i32 2
  %319 = load float, ptr %318, align 4, !tbaa !106
  store float %319, ptr %317, align 4, !tbaa !106
  %320 = getelementptr inbounds %struct.BMVert, ptr %310, i64 0, i32 2, i64 1
  %321 = load float, ptr %320, align 4, !tbaa !106
  %322 = getelementptr inbounds float, ptr %317, i64 1
  store float %321, ptr %322, align 4, !tbaa !106
  %323 = getelementptr inbounds %struct.BMVert, ptr %310, i64 0, i32 2, i64 2
  %324 = load float, ptr %323, align 4, !tbaa !106
  %325 = getelementptr inbounds float, ptr %317, i64 2
  store float %324, ptr %325, align 4, !tbaa !106
  %326 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %316, i32 1
  %327 = load float, ptr %289, align 4, !tbaa !106
  %328 = fmul float %327, 3.276700e+04
  %329 = fptosi float %328 to i16
  store i16 %329, ptr %326, align 2, !tbaa !111
  %330 = load float, ptr %290, align 4, !tbaa !106
  %331 = fmul float %330, 3.276700e+04
  %332 = fptosi float %331 to i16
  %333 = getelementptr inbounds i16, ptr %326, i64 1
  store i16 %332, ptr %333, align 2, !tbaa !111
  %334 = load float, ptr %291, align 4, !tbaa !106
  %335 = fmul float %334, 3.276700e+04
  %336 = fptosi float %335 to i16
  %337 = getelementptr inbounds i16, ptr %326, i64 2
  store i16 %336, ptr %337, align 2, !tbaa !111
  %338 = getelementptr inbounds %struct.VertexBufferFormat, ptr %130, i64 %316, i32 3
  %339 = load float, ptr %9, align 16, !tbaa !106
  %340 = fmul float %294, %339
  %341 = fptoui float %340 to i8
  store i8 %341, ptr %338, align 1, !tbaa !51
  %342 = load float, ptr %115, align 4, !tbaa !106
  %343 = fmul float %294, %342
  %344 = fptoui float %343 to i8
  %345 = getelementptr inbounds i8, ptr %338, i64 1
  store i8 %344, ptr %345, align 1, !tbaa !51
  %346 = load float, ptr %118, align 8, !tbaa !106
  %347 = fmul float %294, %346
  %348 = fptoui float %347 to i8
  %349 = getelementptr inbounds i8, ptr %338, i64 2
  store i8 %348, ptr %349, align 1, !tbaa !51
  %350 = getelementptr inbounds %struct.BMHeader, ptr %310, i64 0, i32 1
  store i32 %308, ptr %350, align 8, !tbaa !219
  %351 = add nsw i32 %308, 1
  br label %352

352:                                              ; preds = %306, %315
  %353 = phi i32 [ %351, %315 ], [ %308, %306 ]
  %354 = add nuw nsw i64 %307, 1
  %355 = icmp eq i64 %354, 3
  br i1 %355, label %356, label %306, !llvm.loop !223

356:                                              ; preds = %352
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #7
  br label %357

357:                                              ; preds = %356, %278
  %358 = phi i32 [ %353, %356 ], [ %280, %278 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %12) #7
  %359 = load ptr, ptr %273, align 8, !tbaa !204
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %278, !llvm.loop !224

361:                                              ; preds = %357, %272
  %362 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  store i32 %48, ptr %362, align 4, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #7
  br label %363

363:                                              ; preds = %361, %269
  %364 = phi i1 [ %271, %269 ], [ true, %361 ]
  %365 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %366 = call zeroext i8 %365(i32 noundef 34962) #7
  %367 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %368 = load i8, ptr %367, align 4, !tbaa !215
  %369 = or i8 %368, 1
  store i8 %369, ptr %367, align 4, !tbaa !215
  %370 = load i32, ptr %23, align 4, !tbaa !155
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %430, label %374

372:                                              ; preds = %112
  %373 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %373(i32 noundef 1, ptr noundef nonnull %0) #7
  store i32 0, ptr %0, align 8, !tbaa !154
  br label %430

374:                                              ; preds = %363
  %375 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %376 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 1
  %377 = load i32, ptr %376, align 4, !tbaa !168
  call void %375(i32 noundef 34963, i32 noundef %377) #7
  %378 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %379 = select i1 %364, i64 6, i64 12
  %380 = zext nneg i32 %48 to i64
  %381 = mul nuw nsw i64 %379, %380
  call void %378(i32 noundef 34963, i64 noundef %381, ptr noundef null, i32 noundef 35044) #7
  %382 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %383 = call ptr %382(i32 noundef 34963, i32 noundef 35001) #7
  %384 = icmp eq ptr %383, null
  br i1 %384, label %428, label %385

385:                                              ; preds = %374
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #7
  call void @BLI_ghashIterator_init(ptr noundef nonnull %14, ptr noundef %2) #7
  %386 = getelementptr inbounds %struct.GHashIterator, ptr %14, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !204
  %388 = icmp eq ptr %387, null
  br i1 %388, label %422, label %389

389:                                              ; preds = %385, %418
  %390 = phi ptr [ %420, %418 ], [ %387, %385 ]
  %391 = phi ptr [ %419, %418 ], [ %383, %385 ]
  %392 = getelementptr inbounds %struct._gh_Entry, ptr %390, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !206
  %394 = getelementptr inbounds %struct.BMHeader, ptr %393, i64 0, i32 3
  %395 = load i8, ptr %394, align 1, !tbaa !208
  %396 = and i8 %395, 2
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %398, label %418

398:                                              ; preds = %389
  %399 = getelementptr inbounds %struct.BMFace, ptr %393, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !225
  br label %401

401:                                              ; preds = %413, %398
  %402 = phi ptr [ %400, %398 ], [ %416, %413 ]
  %403 = phi ptr [ %391, %398 ], [ %414, %413 ]
  %404 = getelementptr inbounds %struct.BMLoop, ptr %402, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !226
  %406 = getelementptr inbounds %struct.BMHeader, ptr %405, i64 0, i32 1
  %407 = load i32, ptr %406, align 8, !tbaa !219
  br i1 %364, label %408, label %411

408:                                              ; preds = %401
  %409 = trunc i32 %407 to i16
  store i16 %409, ptr %403, align 2, !tbaa !111
  %410 = getelementptr inbounds i16, ptr %403, i64 1
  br label %413

411:                                              ; preds = %401
  store i32 %407, ptr %403, align 4, !tbaa !42
  %412 = getelementptr inbounds i32, ptr %403, i64 1
  br label %413

413:                                              ; preds = %411, %408
  %414 = phi ptr [ %410, %408 ], [ %412, %411 ]
  %415 = getelementptr inbounds %struct.BMLoop, ptr %402, i64 0, i32 6
  %416 = load ptr, ptr %415, align 8, !tbaa !228
  %417 = icmp eq ptr %416, %400
  br i1 %417, label %418, label %401, !llvm.loop !229

418:                                              ; preds = %413, %389
  %419 = phi ptr [ %391, %389 ], [ %414, %413 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %14) #7
  %420 = load ptr, ptr %386, align 8, !tbaa !204
  %421 = icmp eq ptr %420, null
  br i1 %421, label %422, label %389, !llvm.loop !230

422:                                              ; preds = %418, %385
  %423 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %424 = call zeroext i8 %423(i32 noundef 34963) #7
  %425 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  store i32 %48, ptr %425, align 4, !tbaa !156
  %426 = select i1 %364, i32 5123, i32 5125
  %427 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 2
  store i32 %426, ptr %427, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #7
  br label %430

428:                                              ; preds = %374
  %429 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %429(i32 noundef 1, ptr noundef nonnull %376) #7
  store i32 0, ptr %376, align 4, !tbaa !168
  br label %430

430:                                              ; preds = %363, %428, %422, %6, %26, %372, %93
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  ret void
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_face_as_array_vert_tri(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_build_bmesh_pbvh_buffers(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 176, ptr noundef nonnull @.str.4) #7
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 1
  tail call void %6(i32 noundef 1, ptr noundef nonnull %7) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  tail call void %9(i32 noundef 1, ptr noundef %3) #7
  %10 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 15
  store i32 1, ptr %10, align 8, !tbaa !231
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 18
  store i32 %0, ptr %11, align 4, !tbaa !155
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 19
  store i8 0, ptr %12, align 8, !tbaa !152
  %13 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 20
  store i8 0, ptr %13, align 1, !tbaa !153
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_draw_pbvh_buffers(ptr noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x ptr], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !159
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !157
  %18 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !158
  %20 = load i32, ptr %19, align 4, !tbaa !42
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MFace, ptr %17, i64 %21, i32 4
  %23 = load i16, ptr %22, align 4, !tbaa !70
  %24 = sext i16 %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = tail call i32 %1(i32 noundef %25, ptr noundef null) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %603, label %48

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !188
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !189
  %35 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !187
  %37 = load i32, ptr %36, align 4, !tbaa !42
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.DMFlagMat, ptr %34, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !176
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %41, 1
  %43 = tail call i32 %1(i32 noundef %42, ptr noundef null) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %603, label %48

45:                                               ; preds = %28
  %46 = tail call i32 %1(i32 noundef 1, ptr noundef null) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %603, label %48

48:                                               ; preds = %32, %15, %45, %3
  %49 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  %50 = load i32, ptr %49, align 4, !tbaa !155
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !159
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 7424, i32 7425
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i32 [ 7425, %48 ], [ %56, %52 ]
  tail call void @glShadeModel(i32 noundef %58) #7
  %59 = load i32, ptr %0, align 8, !tbaa !154
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %127, label %61

61:                                               ; preds = %57
  tail call void @glEnableClientState(i32 noundef 32884) #7
  %62 = icmp eq i8 %2, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  tail call void @glEnableClientState(i32 noundef 32885) #7
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #7
  tail call void @glEnable(i32 noundef 2903) #7
  tail call void @glEnableClientState(i32 noundef 32886) #7
  br label %64

64:                                               ; preds = %63, %61
  %65 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %66 = load i32, ptr %0, align 8, !tbaa !154
  tail call void %65(i32 noundef 34962, i32 noundef %66) #7
  %67 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !168
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %71(i32 noundef 34963, i32 noundef %68) #7
  br label %72

72:                                               ; preds = %70, %64
  br i1 %62, label %74, label %73

73:                                               ; preds = %72
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #7
  br label %74

74:                                               ; preds = %73, %72
  %75 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 17
  %76 = load i32, ptr %75, align 8, !tbaa !196
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %105, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 14
  %80 = load i32, ptr %79, align 4, !tbaa !203
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  %84 = load i32, ptr %83, align 8, !tbaa !188
  br label %85

85:                                               ; preds = %78, %82
  %86 = phi i32 [ %84, %82 ], [ 1, %78 ]
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 2
  %90 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 3
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi ptr [ null, %88 ], [ %102, %91 ]
  %93 = phi i32 [ 0, %88 ], [ %103, %91 ]
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 24, ptr noundef %92) #7
  %94 = getelementptr inbounds i8, ptr %92, i64 12
  tail call void @glNormalPointer(i32 noundef 5122, i32 noundef 24, ptr noundef nonnull %94) #7
  %95 = getelementptr inbounds i8, ptr %92, i64 20
  tail call void @glColorPointer(i32 noundef 3, i32 noundef 5121, i32 noundef 24, ptr noundef nonnull %95) #7
  %96 = load i32, ptr %75, align 8, !tbaa !196
  %97 = mul i32 %96, 6
  %98 = load i32, ptr %89, align 8, !tbaa !166
  tail call void @glDrawElements(i32 noundef 4, i32 noundef %97, i32 noundef %98, ptr noundef null) #7
  %99 = load i32, ptr %90, align 4, !tbaa !232
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, 24
  %102 = getelementptr inbounds i8, ptr %92, i64 %101
  %103 = add nuw nsw i32 %93, 1
  %104 = icmp eq i32 %103, %86
  br i1 %104, label %117, label %91, !llvm.loop !233

105:                                              ; preds = %74
  %106 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  %107 = load i32, ptr %106, align 4, !tbaa !156
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = mul i32 %107, 3
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 24, ptr noundef null) #7
  tail call void @glNormalPointer(i32 noundef 5122, i32 noundef 24, ptr noundef nonnull inttoptr (i64 12 to ptr)) #7
  tail call void @glColorPointer(i32 noundef 3, i32 noundef 5121, i32 noundef 24, ptr noundef nonnull inttoptr (i64 20 to ptr)) #7
  %111 = load i32, ptr %67, align 4, !tbaa !168
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !166
  tail call void @glDrawElements(i32 noundef 4, i32 noundef %110, i32 noundef %115, ptr noundef null) #7
  br label %117

116:                                              ; preds = %109
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef 0, i32 noundef %110) #7
  br label %117

117:                                              ; preds = %91, %85, %113, %116, %105
  br i1 %62, label %119, label %118

118:                                              ; preds = %117
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #7
  br label %119

119:                                              ; preds = %118, %117
  %120 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %120(i32 noundef 34962, i32 noundef 0) #7
  %121 = load i32, ptr %67, align 4, !tbaa !168
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %124(i32 noundef 34963, i32 noundef 0) #7
  br label %125

125:                                              ; preds = %123, %119
  tail call void @glDisableClientState(i32 noundef 32884) #7
  br i1 %62, label %126, label %603

126:                                              ; preds = %125
  tail call void @glDisableClientState(i32 noundef 32885) #7
  tail call void @glDisable(i32 noundef 2903) #7
  tail call void @glDisableClientState(i32 noundef 32886) #7
  br label %603

127:                                              ; preds = %57
  %128 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %129 = load i32, ptr %128, align 8, !tbaa !159
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %297, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !165
  %134 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8, !tbaa !149
  %136 = icmp eq ptr %135, null
  %137 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !157
  %139 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !158
  %141 = load i32, ptr %140, align 4, !tbaa !42
  %142 = sext i32 %141 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.gpu_draw_buffers_legacy_grids.diffuse_color, i64 16, i1 false)
  %143 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  %144 = load i8, ptr %143, align 1, !tbaa !153
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %131
  %147 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float 1.000000e+00, ptr %147, align 8, !tbaa !106
  %148 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float 1.000000e+00, ptr %148, align 4, !tbaa !106
  store float 1.000000e+00, ptr %8, align 16, !tbaa !106
  br label %158

149:                                              ; preds = %131
  %150 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  %151 = load i8, ptr %150, align 8, !tbaa !152
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.MFace, ptr %138, i64 %142, i32 4
  %155 = load i16, ptr %154, align 4, !tbaa !70
  %156 = sext i16 %155 to i32
  %157 = add nsw i32 %156, 1
  call void @GPU_material_diffuse_get(i32 noundef %157, ptr noundef nonnull %8) #7
  br label %158

158:                                              ; preds = %153, %149, %146
  br i1 %136, label %160, label %159

159:                                              ; preds = %158
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #7
  call void @glEnable(i32 noundef 2903) #7
  br label %160

160:                                              ; preds = %159, %158
  %161 = load i32, ptr %128, align 8, !tbaa !159
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %294

163:                                              ; preds = %160
  %164 = getelementptr inbounds float, ptr %8, i64 1
  %165 = getelementptr inbounds float, ptr %8, i64 2
  %166 = getelementptr inbounds float, ptr %8, i64 1
  %167 = getelementptr inbounds float, ptr %8, i64 2
  br label %168

168:                                              ; preds = %163, %289
  %169 = phi i64 [ 0, %163 ], [ %290, %289 ]
  %170 = load ptr, ptr %137, align 8, !tbaa !157
  %171 = load ptr, ptr %139, align 8, !tbaa !158
  %172 = getelementptr inbounds i32, ptr %171, i64 %169
  %173 = load i32, ptr %172, align 4, !tbaa !42
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.MFace, ptr %170, i64 %174
  %176 = getelementptr inbounds %struct.MFace, ptr %170, i64 %174, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !67
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 3, i32 4
  %180 = load ptr, ptr %132, align 8, !tbaa !165
  %181 = call zeroext i8 @paint_is_face_hidden(ptr noundef %175, ptr noundef %180) #7
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %289

183:                                              ; preds = %168
  %184 = load i32, ptr %176, align 4, !tbaa !67
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i32 4, i32 7
  call void @glBegin(i32 noundef %186) #7
  %187 = load i32, ptr %49, align 4, !tbaa !155
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %218, label %189

189:                                              ; preds = %183
  %190 = zext nneg i32 %179 to i64
  br label %191

191:                                              ; preds = %189, %208
  %192 = phi i64 [ 0, %189 ], [ %216, %208 ]
  br i1 %136, label %208, label %193

193:                                              ; preds = %191
  %194 = load ptr, ptr %134, align 8, !tbaa !149
  %195 = getelementptr inbounds i32, ptr %175, i64 %192
  %196 = load i32, ptr %195, align 4, !tbaa !42
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds float, ptr %194, i64 %197
  %199 = load float, ptr %198, align 4, !tbaa !106
  %200 = fneg float %199
  %201 = call float @llvm.fmuladd.f32(float %200, float 7.500000e-01, float 1.000000e+00)
  %202 = load float, ptr %8, align 16, !tbaa !106
  %203 = fmul float %202, %201
  %204 = load float, ptr %164, align 4, !tbaa !106
  %205 = fmul float %201, %204
  %206 = load float, ptr %165, align 8, !tbaa !106
  %207 = fmul float %201, %206
  call void @glColor3f(float noundef %203, float noundef %205, float noundef %207) #7
  br label %208

208:                                              ; preds = %193, %191
  %209 = getelementptr inbounds i32, ptr %175, i64 %192
  %210 = load i32, ptr %209, align 4, !tbaa !42
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.MVert, ptr %133, i64 %211, i32 1
  call void @glNormal3sv(ptr noundef nonnull %212) #7
  %213 = load i32, ptr %209, align 4, !tbaa !42
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.MVert, ptr %133, i64 %214
  call void @glVertex3fv(ptr noundef %215) #7
  %216 = add nuw nsw i64 %192, 1
  %217 = icmp eq i64 %216, %190
  br i1 %217, label %288, label %191, !llvm.loop !234

218:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %219 = load i32, ptr %176, align 4, !tbaa !42
  %220 = icmp eq i32 %219, 0
  %221 = load i32, ptr %175, align 4, !tbaa !42
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.MVert, ptr %133, i64 %222
  %224 = getelementptr inbounds i32, ptr %175, i64 1
  %225 = load i32, ptr %224, align 4, !tbaa !42
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.MVert, ptr %133, i64 %226
  %228 = getelementptr inbounds i32, ptr %175, i64 2
  %229 = load i32, ptr %228, align 4, !tbaa !42
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.MVert, ptr %133, i64 %230
  br i1 %220, label %236, label %232

232:                                              ; preds = %218
  %233 = zext i32 %219 to i64
  %234 = getelementptr inbounds %struct.MVert, ptr %133, i64 %233
  %235 = call float @normal_quad_v3(ptr noundef nonnull %9, ptr noundef %223, ptr noundef %227, ptr noundef %231, ptr noundef nonnull %234) #7
  br label %238

236:                                              ; preds = %218
  %237 = call float @normal_tri_v3(ptr noundef nonnull %9, ptr noundef %223, ptr noundef %227, ptr noundef %231) #7
  br label %238

238:                                              ; preds = %236, %232
  call void @glNormal3fv(ptr noundef nonnull %9) #7
  br i1 %136, label %277, label %239

239:                                              ; preds = %238
  %240 = load ptr, ptr %134, align 8, !tbaa !149
  %241 = load i32, ptr %175, align 4, !tbaa !42
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds float, ptr %240, i64 %242
  %244 = load float, ptr %243, align 4, !tbaa !106
  %245 = getelementptr inbounds i32, ptr %175, i64 1
  %246 = load i32, ptr %245, align 4, !tbaa !42
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds float, ptr %240, i64 %247
  %249 = load float, ptr %248, align 4, !tbaa !106
  %250 = fadd float %244, %249
  %251 = getelementptr inbounds i32, ptr %175, i64 2
  %252 = load i32, ptr %251, align 4, !tbaa !42
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds float, ptr %240, i64 %253
  %255 = load float, ptr %254, align 4, !tbaa !106
  %256 = fadd float %250, %255
  %257 = load i32, ptr %176, align 4, !tbaa !42
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %239
  %260 = zext i32 %257 to i64
  %261 = getelementptr inbounds float, ptr %240, i64 %260
  %262 = load float, ptr %261, align 4, !tbaa !106
  %263 = fadd float %256, %262
  %264 = fmul float %263, 2.500000e-01
  br label %267

265:                                              ; preds = %239
  %266 = fdiv float %256, 3.000000e+00
  br label %267

267:                                              ; preds = %265, %259
  %268 = phi float [ %264, %259 ], [ %266, %265 ]
  %269 = fneg float %268
  %270 = call float @llvm.fmuladd.f32(float %269, float 7.500000e-01, float 1.000000e+00)
  %271 = load float, ptr %8, align 16, !tbaa !106
  %272 = fmul float %271, %270
  %273 = load float, ptr %166, align 4, !tbaa !106
  %274 = fmul float %270, %273
  %275 = load float, ptr %167, align 8, !tbaa !106
  %276 = fmul float %270, %275
  call void @glColor3f(float noundef %272, float noundef %274, float noundef %276) #7
  br label %277

277:                                              ; preds = %267, %238
  %278 = zext nneg i32 %179 to i64
  br label %279

279:                                              ; preds = %277, %279
  %280 = phi i64 [ 0, %277 ], [ %285, %279 ]
  %281 = getelementptr inbounds i32, ptr %175, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !42
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.MVert, ptr %133, i64 %283
  call void @glVertex3fv(ptr noundef %284) #7
  %285 = add nuw nsw i64 %280, 1
  %286 = icmp eq i64 %285, %278
  br i1 %286, label %287, label %279, !llvm.loop !235

287:                                              ; preds = %279
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  br label %288

288:                                              ; preds = %208, %287
  call void @glEnd() #7
  br label %289

289:                                              ; preds = %288, %168
  %290 = add nuw nsw i64 %169, 1
  %291 = load i32, ptr %128, align 8, !tbaa !159
  %292 = sext i32 %291 to i64
  %293 = icmp slt i64 %290, %292
  br i1 %293, label %168, label %294, !llvm.loop !236

294:                                              ; preds = %289, %160
  br i1 %136, label %296, label %295

295:                                              ; preds = %294
  call void @glDisable(i32 noundef 2903) #7
  br label %296

296:                                              ; preds = %294, %295
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %603

297:                                              ; preds = %127
  %298 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  %299 = load i32, ptr %298, align 8, !tbaa !188
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %603, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 2
  %303 = load i32, ptr %302, align 8, !tbaa !237
  %304 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 9
  %305 = load i32, ptr %304, align 4, !tbaa !175
  %306 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 10
  %307 = load ptr, ptr %306, align 8, !tbaa !189
  %308 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 12
  %309 = load ptr, ptr %308, align 8, !tbaa !187
  %310 = load i32, ptr %309, align 4, !tbaa !42
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.DMFlagMat, ptr %307, i64 %311
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.gpu_draw_buffers_legacy_grids.diffuse_color, i64 16, i1 false)
  %313 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  %314 = load i8, ptr %313, align 1, !tbaa !153
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %301
  %317 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %317, align 8, !tbaa !106
  %318 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  store float 1.000000e+00, ptr %318, align 4, !tbaa !106
  store float 1.000000e+00, ptr %4, align 16, !tbaa !106
  br label %327

319:                                              ; preds = %301
  %320 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  %321 = load i8, ptr %320, align 8, !tbaa !152
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %319
  %324 = load i16, ptr %312, align 2, !tbaa !176
  %325 = sext i16 %324 to i32
  %326 = add nsw i32 %325, 1
  call void @GPU_material_diffuse_get(i32 noundef %326, ptr noundef nonnull %4) #7
  br label %327

327:                                              ; preds = %323, %319, %316
  %328 = icmp eq i32 %305, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %327
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #7
  call void @glEnable(i32 noundef 2903) #7
  br label %330

330:                                              ; preds = %329, %327
  %331 = load i32, ptr %298, align 8, !tbaa !188
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %600

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 9
  %335 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 11
  %336 = add i32 %303, -1
  %337 = icmp sgt i32 %303, 1
  %338 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 1
  %339 = getelementptr inbounds ptr, ptr %5, i64 1
  %340 = getelementptr inbounds ptr, ptr %5, i64 2
  %341 = getelementptr inbounds ptr, ptr %5, i64 3
  %342 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 6
  %343 = getelementptr inbounds float, ptr %4, i64 1
  %344 = getelementptr inbounds float, ptr %4, i64 2
  %345 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 5
  %346 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 6
  %347 = getelementptr inbounds float, ptr %4, i64 1
  %348 = getelementptr inbounds float, ptr %4, i64 2
  %349 = icmp sgt i32 %303, 1
  %350 = icmp sgt i32 %303, 0
  %351 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 1
  %352 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 6
  %353 = getelementptr inbounds float, ptr %4, i64 1
  %354 = getelementptr inbounds float, ptr %4, i64 2
  %355 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 5
  %356 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 5
  %357 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 5
  %358 = icmp sgt i32 %303, 1
  %359 = icmp sgt i32 %303, 0
  %360 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 1
  %361 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 6
  %362 = getelementptr inbounds float, ptr %4, i64 1
  %363 = getelementptr inbounds float, ptr %4, i64 2
  br label %364

364:                                              ; preds = %333, %595
  %365 = phi i64 [ 0, %333 ], [ %596, %595 ]
  %366 = load ptr, ptr %308, align 8, !tbaa !187
  %367 = getelementptr inbounds i32, ptr %366, i64 %365
  %368 = load i32, ptr %367, align 4, !tbaa !42
  %369 = load ptr, ptr %334, align 8, !tbaa !186
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds ptr, ptr %369, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !34
  %373 = load ptr, ptr %335, align 8, !tbaa !191
  %374 = getelementptr inbounds ptr, ptr %373, i64 %370
  %375 = load ptr, ptr %374, align 8, !tbaa !34
  %376 = icmp eq ptr %375, null
  br i1 %376, label %472, label %377

377:                                              ; preds = %364
  call void @glBegin(i32 noundef 7) #7
  br i1 %337, label %378, label %471

378:                                              ; preds = %377, %468
  %379 = phi i32 [ %469, %468 ], [ 0, %377 ]
  %380 = add nuw nsw i32 %379, 1
  br label %381

381:                                              ; preds = %378, %466
  %382 = phi i32 [ 0, %378 ], [ %383, %466 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  %383 = add nuw nsw i32 %382, 1
  %384 = load i32, ptr %302, align 4, !tbaa !177
  %385 = mul nsw i32 %384, %380
  %386 = add nsw i32 %385, %383
  %387 = load i32, ptr %338, align 4, !tbaa !178
  %388 = mul nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, ptr %372, i64 %389
  store ptr %390, ptr %5, align 16, !tbaa !34
  %391 = mul nsw i32 %384, %379
  %392 = add nsw i32 %391, %383
  %393 = mul nsw i32 %392, %387
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, ptr %372, i64 %394
  store ptr %395, ptr %339, align 8, !tbaa !34
  %396 = add nsw i32 %391, %382
  %397 = mul nsw i32 %396, %387
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %372, i64 %398
  store ptr %399, ptr %340, align 16, !tbaa !34
  %400 = add nsw i32 %385, %382
  %401 = mul nsw i32 %400, %387
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, ptr %372, i64 %402
  store ptr %403, ptr %341, align 8, !tbaa !34
  %404 = call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %375, i32 noundef %303, i32 noundef %382, i32 noundef %379) #7
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %466

406:                                              ; preds = %381
  %407 = load i32, ptr %49, align 4, !tbaa !155
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %434, label %409

409:                                              ; preds = %406, %426
  %410 = phi i64 [ %432, %426 ], [ 0, %406 ]
  br i1 %328, label %426, label %411

411:                                              ; preds = %409
  %412 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %410
  %413 = load ptr, ptr %412, align 8, !tbaa !34
  %414 = load i32, ptr %342, align 4, !tbaa !180
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, ptr %413, i64 %415
  %417 = load float, ptr %416, align 4, !tbaa !106
  %418 = fneg float %417
  %419 = call float @llvm.fmuladd.f32(float %418, float 7.500000e-01, float 1.000000e+00)
  %420 = load float, ptr %4, align 16, !tbaa !106
  %421 = fmul float %420, %419
  %422 = load float, ptr %343, align 4, !tbaa !106
  %423 = fmul float %419, %422
  %424 = load float, ptr %344, align 8, !tbaa !106
  %425 = fmul float %419, %424
  call void @glColor3f(float noundef %421, float noundef %423, float noundef %425) #7
  br label %426

426:                                              ; preds = %411, %409
  %427 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %410
  %428 = load ptr, ptr %427, align 8, !tbaa !34
  %429 = load i32, ptr %345, align 4, !tbaa !179
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, ptr %428, i64 %430
  call void @glNormal3fv(ptr noundef %431) #7
  call void @glVertex3fv(ptr noundef %428) #7
  %432 = add nuw nsw i64 %410, 1
  %433 = icmp eq i64 %432, 4
  br i1 %433, label %466, label %409, !llvm.loop !238

434:                                              ; preds = %406
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %435 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %390, ptr noundef %395, ptr noundef %399, ptr noundef %403) #7
  call void @glNormal3fv(ptr noundef nonnull %6) #7
  br i1 %328, label %458, label %436

436:                                              ; preds = %434
  %437 = load i32, ptr %346, align 4, !tbaa !180
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, ptr %390, i64 %438
  %440 = load float, ptr %439, align 4, !tbaa !106
  %441 = getelementptr inbounds i8, ptr %395, i64 %438
  %442 = load float, ptr %441, align 4, !tbaa !106
  %443 = fadd float %440, %442
  %444 = getelementptr inbounds i8, ptr %399, i64 %438
  %445 = load float, ptr %444, align 4, !tbaa !106
  %446 = fadd float %443, %445
  %447 = getelementptr inbounds i8, ptr %403, i64 %438
  %448 = load float, ptr %447, align 4, !tbaa !106
  %449 = fadd float %446, %448
  %450 = fmul float %449, -2.500000e-01
  %451 = call float @llvm.fmuladd.f32(float %450, float 7.500000e-01, float 1.000000e+00)
  %452 = load float, ptr %4, align 16, !tbaa !106
  %453 = fmul float %452, %451
  %454 = load float, ptr %347, align 4, !tbaa !106
  %455 = fmul float %454, %451
  %456 = load float, ptr %348, align 8, !tbaa !106
  %457 = fmul float %456, %451
  call void @glColor3f(float noundef %453, float noundef %455, float noundef %457) #7
  br label %458

458:                                              ; preds = %436, %434
  br label %459

459:                                              ; preds = %458, %459
  %460 = phi i64 [ %463, %459 ], [ 0, %458 ]
  %461 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %460
  %462 = load ptr, ptr %461, align 8, !tbaa !34
  call void @glVertex3fv(ptr noundef %462) #7
  %463 = add nuw nsw i64 %460, 1
  %464 = icmp eq i64 %463, 4
  br i1 %464, label %465, label %459, !llvm.loop !239

465:                                              ; preds = %459
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  br label %466

466:                                              ; preds = %426, %465, %381
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  %467 = icmp eq i32 %383, %336
  br i1 %467, label %468, label %381, !llvm.loop !240

468:                                              ; preds = %466
  %469 = add nuw nsw i32 %379, 1
  %470 = icmp eq i32 %469, %336
  br i1 %470, label %471, label %378, !llvm.loop !241

471:                                              ; preds = %468, %377
  call void @glEnd() #7
  br label %595

472:                                              ; preds = %364
  %473 = load i32, ptr %49, align 4, !tbaa !155
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %476, label %475

475:                                              ; preds = %472
  br i1 %349, label %477, label %595

476:                                              ; preds = %472
  br i1 %358, label %536, label %595

477:                                              ; preds = %475, %533
  %478 = phi i32 [ %534, %533 ], [ 0, %475 ]
  call void @glBegin(i32 noundef 8) #7
  br i1 %350, label %479, label %533

479:                                              ; preds = %477
  %480 = add nuw nsw i32 %478, 1
  br label %481

481:                                              ; preds = %479, %527
  %482 = phi i32 [ 0, %479 ], [ %531, %527 ]
  %483 = load i32, ptr %302, align 4, !tbaa !177
  %484 = mul nsw i32 %483, %478
  %485 = add nsw i32 %484, %482
  %486 = load i32, ptr %351, align 4, !tbaa !178
  %487 = mul nsw i32 %485, %486
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8, ptr %372, i64 %488
  %490 = mul nsw i32 %483, %480
  %491 = add nsw i32 %490, %482
  %492 = mul nsw i32 %491, %486
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8, ptr %372, i64 %493
  br i1 %328, label %523, label %495

495:                                              ; preds = %481
  %496 = load i32, ptr %352, align 4, !tbaa !180
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i8, ptr %489, i64 %497
  %499 = load float, ptr %498, align 4, !tbaa !106
  %500 = fneg float %499
  %501 = call float @llvm.fmuladd.f32(float %500, float 7.500000e-01, float 1.000000e+00)
  %502 = load float, ptr %4, align 16, !tbaa !106
  %503 = fmul float %502, %501
  %504 = load float, ptr %353, align 4, !tbaa !106
  %505 = fmul float %501, %504
  %506 = load float, ptr %354, align 8, !tbaa !106
  %507 = fmul float %501, %506
  call void @glColor3f(float noundef %503, float noundef %505, float noundef %507) #7
  %508 = load i32, ptr %355, align 4, !tbaa !179
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, ptr %489, i64 %509
  call void @glNormal3fv(ptr noundef %510) #7
  call void @glVertex3fv(ptr noundef %489) #7
  %511 = load i32, ptr %352, align 4, !tbaa !180
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i8, ptr %494, i64 %512
  %514 = load float, ptr %513, align 4, !tbaa !106
  %515 = fneg float %514
  %516 = call float @llvm.fmuladd.f32(float %515, float 7.500000e-01, float 1.000000e+00)
  %517 = load float, ptr %4, align 16, !tbaa !106
  %518 = fmul float %517, %516
  %519 = load float, ptr %353, align 4, !tbaa !106
  %520 = fmul float %516, %519
  %521 = load float, ptr %354, align 8, !tbaa !106
  %522 = fmul float %516, %521
  call void @glColor3f(float noundef %518, float noundef %520, float noundef %522) #7
  br label %527

523:                                              ; preds = %481
  %524 = load i32, ptr %356, align 4, !tbaa !179
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i8, ptr %489, i64 %525
  call void @glNormal3fv(ptr noundef %526) #7
  call void @glVertex3fv(ptr noundef %489) #7
  br label %527

527:                                              ; preds = %523, %495
  %528 = load i32, ptr %357, align 4, !tbaa !179
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8, ptr %494, i64 %529
  call void @glNormal3fv(ptr noundef %530) #7
  call void @glVertex3fv(ptr noundef %494) #7
  %531 = add nuw nsw i32 %482, 1
  %532 = icmp eq i32 %531, %303
  br i1 %532, label %533, label %481, !llvm.loop !242

533:                                              ; preds = %527, %477
  call void @glEnd() #7
  %534 = add nuw nsw i32 %478, 1
  %535 = icmp eq i32 %534, %336
  br i1 %535, label %595, label %477, !llvm.loop !243

536:                                              ; preds = %476, %592
  %537 = phi i32 [ %593, %592 ], [ 0, %476 ]
  call void @glBegin(i32 noundef 8) #7
  br i1 %359, label %538, label %592

538:                                              ; preds = %536
  %539 = add nuw nsw i32 %537, 1
  br label %540

540:                                              ; preds = %538, %589
  %541 = phi i32 [ 0, %538 ], [ %590, %589 ]
  %542 = load i32, ptr %302, align 4, !tbaa !177
  %543 = mul nsw i32 %542, %537
  %544 = add nsw i32 %543, %541
  %545 = load i32, ptr %360, align 4, !tbaa !178
  %546 = mul nsw i32 %544, %545
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i8, ptr %372, i64 %547
  %549 = mul nsw i32 %542, %539
  %550 = add nsw i32 %549, %541
  %551 = mul nsw i32 %550, %545
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, ptr %372, i64 %552
  %554 = icmp eq i32 %541, 0
  br i1 %554, label %589, label %555

555:                                              ; preds = %540
  %556 = add nsw i32 %541, -1
  %557 = add nsw i32 %543, %556
  %558 = mul nsw i32 %557, %545
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, ptr %372, i64 %559
  %561 = add nsw i32 %549, %556
  %562 = mul nsw i32 %561, %545
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, ptr %372, i64 %563
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %565 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %564, ptr noundef %553, ptr noundef %548, ptr noundef %560) #7
  call void @glNormal3fv(ptr noundef nonnull %7) #7
  br i1 %328, label %588, label %566

566:                                              ; preds = %555
  %567 = load i32, ptr %361, align 4, !tbaa !180
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8, ptr %548, i64 %568
  %570 = load float, ptr %569, align 4, !tbaa !106
  %571 = getelementptr inbounds i8, ptr %553, i64 %568
  %572 = load float, ptr %571, align 4, !tbaa !106
  %573 = fadd float %570, %572
  %574 = getelementptr inbounds i8, ptr %560, i64 %568
  %575 = load float, ptr %574, align 4, !tbaa !106
  %576 = fadd float %573, %575
  %577 = getelementptr inbounds i8, ptr %564, i64 %568
  %578 = load float, ptr %577, align 4, !tbaa !106
  %579 = fadd float %576, %578
  %580 = fmul float %579, -2.500000e-01
  %581 = call float @llvm.fmuladd.f32(float %580, float 7.500000e-01, float 1.000000e+00)
  %582 = load float, ptr %4, align 16, !tbaa !106
  %583 = fmul float %582, %581
  %584 = load float, ptr %362, align 4, !tbaa !106
  %585 = fmul float %584, %581
  %586 = load float, ptr %363, align 8, !tbaa !106
  %587 = fmul float %586, %581
  call void @glColor3f(float noundef %583, float noundef %585, float noundef %587) #7
  br label %588

588:                                              ; preds = %566, %555
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  br label %589

589:                                              ; preds = %588, %540
  call void @glVertex3fv(ptr noundef %548) #7
  call void @glVertex3fv(ptr noundef %553) #7
  %590 = add nuw nsw i32 %541, 1
  %591 = icmp eq i32 %590, %303
  br i1 %591, label %592, label %540, !llvm.loop !244

592:                                              ; preds = %589, %536
  call void @glEnd() #7
  %593 = add nuw nsw i32 %537, 1
  %594 = icmp eq i32 %593, %336
  br i1 %594, label %595, label %536, !llvm.loop !245

595:                                              ; preds = %533, %592, %475, %476, %471
  %596 = add nuw nsw i64 %365, 1
  %597 = load i32, ptr %298, align 8, !tbaa !188
  %598 = sext i32 %597 to i64
  %599 = icmp slt i64 %596, %598
  br i1 %599, label %364, label %600, !llvm.loop !246

600:                                              ; preds = %595, %330
  br i1 %328, label %602, label %601

601:                                              ; preds = %600
  call void @glDisable(i32 noundef 2903) #7
  br label %602

602:                                              ; preds = %600, %601
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br label %603

603:                                              ; preds = %32, %15, %296, %602, %297, %125, %126, %45
  ret void
}

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @GPU_pbvh_buffers_diffuse_changed(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %6 = tail call zeroext i8 @GPU_material_use_matcaps_get() #7
  %7 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  %8 = load i8, ptr %7, align 8, !tbaa !152
  %9 = icmp eq i8 %8, %2
  br i1 %9, label %10, label %76

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  %12 = load i8, ptr %11, align 1, !tbaa !153
  %13 = icmp eq i8 %12, %6
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = icmp eq i8 %8, 0
  %16 = icmp ne i8 %6, 0
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %76, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !157
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !158
  %25 = load i32, ptr %24, align 4, !tbaa !42
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MFace, ptr %20, i64 %26, i32 4
  %28 = load i16, ptr %27, align 4, !tbaa !70
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, 1
  call void @GPU_material_diffuse_get(i32 noundef %30, ptr noundef nonnull %4) #7
  br label %58

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 15
  %33 = load i32, ptr %32, align 8, !tbaa !231
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @BLI_gset_size(ptr noundef %1) #7
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @BLI_ghashIterator_init(ptr noundef nonnull %5, ptr noundef %1) #7
  %39 = getelementptr inbounds %struct.GHashIterator, ptr %5, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !204
  %41 = getelementptr inbounds %struct._gh_Entry, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !206
  %43 = getelementptr inbounds %struct.BMFace, ptr %42, i64 0, i32 5
  %44 = load i16, ptr %43, align 8, !tbaa !213
  %45 = sext i16 %44 to i32
  %46 = add nsw i32 %45, 1
  call void @GPU_material_diffuse_get(i32 noundef %46, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  br label %58

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !189
  %50 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !187
  %52 = load i32, ptr %51, align 4, !tbaa !42
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.DMFlagMat, ptr %49, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !176
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, 1
  call void @GPU_material_diffuse_get(i32 noundef %57, ptr noundef nonnull %4) #7
  br label %58

58:                                               ; preds = %38, %47, %22
  %59 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21
  %60 = load float, ptr %4, align 16, !tbaa !106
  %61 = load float, ptr %59, align 4, !tbaa !106
  %62 = fcmp oeq float %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = getelementptr inbounds float, ptr %4, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !106
  %66 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !106
  %68 = fcmp oeq float %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = getelementptr inbounds float, ptr %4, i64 2
  %71 = load float, ptr %70, align 8, !tbaa !106
  %72 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !106
  %74 = fcmp une float %71, %73
  %75 = zext i1 %74 to i8
  br label %76

76:                                               ; preds = %69, %63, %58, %35, %14, %10, %3
  %77 = phi i8 [ 1, %3 ], [ 1, %10 ], [ 0, %14 ], [ 0, %35 ], [ 1, %63 ], [ 1, %58 ], [ %75, %69 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret i8 %77
}

declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_free_pbvh_buffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !154
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @gpu_pbvh_buffer_free_intern(i32 noundef %4)
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  %13 = load i32, ptr %12, align 4, !tbaa !156
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 4, !tbaa !203
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11
  tail call fastcc void @gpu_pbvh_buffer_free_intern(i32 noundef %9)
  br label %20

20:                                               ; preds = %19, %15, %7
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef nonnull %0) #7
  br label %22

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_pbvh_buffer_free_intern(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !42
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %62, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !51
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, ptr @useVBOs, align 4, !tbaa !42
  br label %14

14:                                               ; preds = %10, %7
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 32, ptr noundef nonnull @.str.7) #7
  %17 = getelementptr inbounds %struct.GPUBufferPool, ptr %16, i64 0, i32 2
  store i32 8, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.GPUBufferPool, ptr %16, i64 0, i32 3
  store i32 100, ptr %18, align 4, !tbaa !53
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 64, ptr noundef nonnull @.str.8) #7
  %21 = getelementptr inbounds %struct.GPUBufferPool, ptr %16, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !41
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %23 = load i32, ptr %18, align 4, !tbaa !53
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr %22(i64 noundef %25, ptr noundef nonnull @.str.9) #7
  %27 = getelementptr inbounds %struct.GPUBufferPool, ptr %16, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !48
  store ptr %16, ptr @gpu_buffer_pool, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %4, %14
  %29 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %30 = tail call i32 @BLI_thread_is_main() #7
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.GPUBufferPool, ptr %29, i64 0, i32 1
  br i1 %31, label %41, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %34(i32 noundef 1, ptr noundef nonnull %2) #7
  %35 = load i32, ptr %32, align 4, !tbaa !50
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.GPUBufferPool, ptr %29, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  call void %38(i32 noundef %35, ptr noundef %40) #7
  store i32 0, ptr %32, align 4, !tbaa !50
  br label %62

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.GPUBufferPool, ptr %29, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !53
  %44 = load i32, ptr %32, align 4, !tbaa !50
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = add nsw i32 %43, 100
  store i32 %47, ptr %42, align 4, !tbaa !53
  %48 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.GPUBufferPool, ptr %29, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = sext i32 %47 to i64
  %52 = shl nsw i64 %51, 2
  %53 = tail call ptr %48(ptr noundef %50, i64 noundef %52, ptr noundef nonnull @__func__.gpu_pbvh_buffer_free_intern) #7
  store ptr %53, ptr %49, align 8, !tbaa !48
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, ptr %2, align 4, !tbaa !42
  %56 = getelementptr inbounds %struct.GPUBufferPool, ptr %29, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  %58 = load i32, ptr %32, align 4, !tbaa !50
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %32, align 4, !tbaa !50
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, ptr %57, i64 %60
  store i32 %55, ptr %61, align 4, !tbaa !42
  br label %62

62:                                               ; preds = %33, %37, %1, %54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_draw_pbvh_BB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x [3 x float]]], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #7
  %5 = load float, ptr %0, align 4, !tbaa !106
  store float %5, ptr %4, align 16, !tbaa !106
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !106
  store float %8, ptr %6, align 4, !tbaa !106
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = getelementptr inbounds float, ptr %0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !106
  store float %11, ptr %9, align 8, !tbaa !106
  %12 = getelementptr inbounds [3 x float], ptr %4, i64 1
  %13 = load float, ptr %1, align 4, !tbaa !106
  store float %13, ptr %12, align 4, !tbaa !106
  %14 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 1
  store float %8, ptr %14, align 16, !tbaa !106
  %15 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 2
  store float %11, ptr %15, align 4, !tbaa !106
  %16 = getelementptr inbounds [3 x float], ptr %4, i64 2
  store float %13, ptr %16, align 8, !tbaa !106
  %17 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 1
  store float %8, ptr %17, align 4, !tbaa !106
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 2
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !106
  store float %20, ptr %18, align 16, !tbaa !106
  %21 = getelementptr inbounds [3 x float], ptr %4, i64 3
  store float %5, ptr %21, align 4, !tbaa !106
  %22 = getelementptr inbounds [3 x float], ptr %4, i64 3, i64 1
  store float %8, ptr %22, align 8, !tbaa !106
  %23 = getelementptr inbounds [3 x float], ptr %4, i64 3, i64 2
  store float %20, ptr %23, align 4, !tbaa !106
  %24 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1
  store float %5, ptr %24, align 16, !tbaa !106
  %25 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 0, i64 1
  store float %8, ptr %25, align 4, !tbaa !106
  %26 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 0, i64 2
  store float %11, ptr %26, align 8, !tbaa !106
  %27 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 1
  store float %5, ptr %27, align 4, !tbaa !106
  %28 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 1, i64 1
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !106
  store float %30, ptr %28, align 16, !tbaa !106
  %31 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 1, i64 2
  store float %11, ptr %31, align 4, !tbaa !106
  %32 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 2
  store float %5, ptr %32, align 8, !tbaa !106
  %33 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 2, i64 1
  store float %30, ptr %33, align 4, !tbaa !106
  %34 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 2, i64 2
  store float %20, ptr %34, align 16, !tbaa !106
  %35 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 3
  store float %5, ptr %35, align 4, !tbaa !106
  %36 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 3, i64 1
  store float %8, ptr %36, align 8, !tbaa !106
  %37 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 3, i64 2
  store float %20, ptr %37, align 4, !tbaa !106
  %38 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2
  store float %13, ptr %38, align 16, !tbaa !106
  %39 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 0, i64 1
  store float %30, ptr %39, align 4, !tbaa !106
  %40 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 0, i64 2
  store float %11, ptr %40, align 8, !tbaa !106
  %41 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 1
  store float %13, ptr %41, align 4, !tbaa !106
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 1, i64 1
  store float %8, ptr %42, align 16, !tbaa !106
  %43 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 1, i64 2
  store float %11, ptr %43, align 4, !tbaa !106
  %44 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 2
  store float %13, ptr %44, align 8, !tbaa !106
  %45 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 2, i64 1
  store float %8, ptr %45, align 4, !tbaa !106
  %46 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 2, i64 2
  store float %20, ptr %46, align 16, !tbaa !106
  %47 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 3
  store float %13, ptr %47, align 4, !tbaa !106
  %48 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 3, i64 1
  store float %30, ptr %48, align 8, !tbaa !106
  %49 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 3, i64 2
  store float %20, ptr %49, align 4, !tbaa !106
  %50 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3
  store float %13, ptr %50, align 16, !tbaa !106
  %51 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 0, i64 1
  store float %30, ptr %51, align 4, !tbaa !106
  %52 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 0, i64 2
  store float %11, ptr %52, align 8, !tbaa !106
  %53 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 1
  store float %5, ptr %53, align 4, !tbaa !106
  %54 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 1, i64 1
  store float %30, ptr %54, align 16, !tbaa !106
  %55 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 1, i64 2
  store float %11, ptr %55, align 4, !tbaa !106
  %56 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 2
  store float %5, ptr %56, align 8, !tbaa !106
  %57 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 2, i64 1
  store float %30, ptr %57, align 4, !tbaa !106
  %58 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 2, i64 2
  store float %20, ptr %58, align 16, !tbaa !106
  %59 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 3
  store float %13, ptr %59, align 4, !tbaa !106
  %60 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 3, i64 1
  store float %30, ptr %60, align 8, !tbaa !106
  %61 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 3, i64 2
  store float %20, ptr %61, align 4, !tbaa !106
  %62 = icmp eq i8 %2, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %3
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #7
  br label %65

64:                                               ; preds = %3
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #7
  br label %65

65:                                               ; preds = %64, %63
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %4) #7
  call void @glDrawArrays(i32 noundef 7, i32 noundef 0, i32 noundef 16) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #7
  ret void
}

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_init_draw_pbvh_BB() local_unnamed_addr #0 {
  tail call void @glPushAttrib(i32 noundef 8192) #7
  tail call void @glDisable(i32 noundef 2884) #7
  tail call void @glEnableClientState(i32 noundef 32884) #7
  tail call void @glDisableClientState(i32 noundef 32886) #7
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #7
  tail call void @glDisable(i32 noundef 2896) #7
  tail call void @glDisable(i32 noundef 2903) #7
  tail call void @glEnable(i32 noundef 3042) #7
  %1 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %1(i32 noundef 34962, i32 noundef 0) #7
  ret void
}

declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_end_draw_pbvh_BB() local_unnamed_addr #0 {
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #7
  tail call void @glPopAttrib() #7
  ret void
}

declare void @glPopAttrib() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_buffer_pool_delete_last(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !38
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.GPUBufferPool, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = zext nneg i32 %2 to i64
  %8 = getelementptr ptr, ptr %6, i64 %7
  %9 = getelementptr ptr, ptr %8, i64 -1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.GPUBuffer, ptr %10, i64 0, i32 2
  tail call void %16(i32 noundef 1, ptr noundef nonnull %17) #7
  br label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  tail call void %19(ptr noundef %21) #7
  br label %22

22:                                               ; preds = %18, %15
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %10) #7
  %24 = load i32, ptr %0, align 8, !tbaa !38
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %0, align 8, !tbaa !38
  %26 = load ptr, ptr %5, align 8, !tbaa !41
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  store ptr null, ptr %28, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %4, %1, %22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gpu_get_global_buffer_pool() unnamed_addr #0 {
  %1 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = load i32, ptr @useVBOs, align 4, !tbaa !42
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !51
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr @useVBOs, align 4, !tbaa !42
  br label %10

10:                                               ; preds = %3, %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @.str.7) #7
  %13 = getelementptr inbounds %struct.GPUBufferPool, ptr %12, i64 0, i32 2
  store i32 8, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.GPUBufferPool, ptr %12, i64 0, i32 3
  store i32 100, ptr %14, align 4, !tbaa !53
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 64, ptr noundef nonnull @.str.8) #7
  %17 = getelementptr inbounds %struct.GPUBufferPool, ptr %12, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !41
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %19 = load i32, ptr %14, align 4, !tbaa !53
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.9) #7
  %23 = getelementptr inbounds %struct.GPUBufferPool, ptr %12, i64 0, i32 5
  store ptr %22, ptr %23, align 8, !tbaa !48
  store ptr %12, ptr @gpu_buffer_pool, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %10, %0
  %25 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  ret ptr %25
}

declare i32 @BLI_thread_is_main() local_unnamed_addr #2

declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_paint_uvlayer_active_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glNormal3sv(ptr noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"GPUBufferPool", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !35, i64 16, !35, i64 24}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 16}
!42 = !{!40, !40, i64 0}
!43 = !{!44, !35, i64 8}
!44 = !{!"GPUBuffer", !40, i64 0, !35, i64 8, !40, i64 16}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!39, !35, i64 24}
!49 = distinct !{!49, !46, !47}
!50 = !{!39, !40, i64 4}
!51 = !{!36, !36, i64 0}
!52 = !{!39, !40, i64 8}
!53 = !{!39, !40, i64 12}
!54 = !{!44, !40, i64 0}
!55 = distinct !{!55, !46, !47}
!56 = distinct !{!56, !46, !47}
!57 = !{!44, !40, i64 16}
!58 = distinct !{!58, !46, !47}
!59 = distinct !{!59, !46, !47}
!60 = distinct !{!60, !46, !47}
!61 = !{!62, !40, i64 1060}
!62 = !{!"DerivedMesh", !63, i64 0, !63, i64 200, !63, i64 400, !63, i64 600, !63, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !35, i64 1032, !35, i64 1040, !40, i64 1048, !64, i64 1052, !40, i64 1056, !40, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!63 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!64 = !{!"float", !36, i64 0}
!65 = !{!62, !35, i64 1184}
!66 = !{!62, !35, i64 1120}
!67 = !{!68, !40, i64 12}
!68 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !69, i64 16, !36, i64 18, !36, i64 19}
!69 = !{!"short", !36, i64 0}
!70 = !{!68, !69, i64 16}
!71 = distinct !{!71, !46, !47}
!72 = !{!62, !35, i64 1104}
!73 = !{!74, !40, i64 92}
!74 = !{!"GPUDrawObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !40, i64 64, !35, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !36, i64 100}
!75 = !{!62, !35, i64 1112}
!76 = !{!74, !40, i64 96}
!77 = !{!74, !40, i64 80}
!78 = distinct !{!78, !46, !47}
!79 = !{!74, !35, i64 72}
!80 = !{!81, !40, i64 0}
!81 = !{!"GPUBufferMaterial", !40, i64 0, !40, i64 4, !69, i64 8}
!82 = !{!81, !40, i64 4}
!83 = !{!81, !69, i64 8}
!84 = distinct !{!84, !46, !47}
!85 = !{!74, !40, i64 84}
!86 = !{!74, !35, i64 48}
!87 = !{!74, !35, i64 56}
!88 = !{!89, !40, i64 0}
!89 = !{!"GPUVertPointLink", !40, i64 0}
!90 = distinct !{!90, !46, !47}
!91 = !{!68, !40, i64 0}
!92 = !{!68, !40, i64 4}
!93 = !{!68, !40, i64 8}
!94 = distinct !{!94, !46, !47}
!95 = distinct !{!95, !46, !47}
!96 = !{!74, !40, i64 88}
!97 = distinct !{!97, !46, !47}
!98 = !{!62, !35, i64 1040}
!99 = !{!74, !35, i64 0}
!100 = !{!74, !35, i64 8}
!101 = !{!74, !35, i64 16}
!102 = !{!74, !35, i64 24}
!103 = !{!74, !35, i64 32}
!104 = !{!74, !35, i64 40}
!105 = !{!62, !35, i64 1168}
!106 = !{!64, !64, i64 0}
!107 = distinct !{!107, !46, !47}
!108 = distinct !{!108, !46, !47}
!109 = !{!62, !35, i64 1336}
!110 = !{!68, !36, i64 19}
!111 = !{!69, !69, i64 0}
!112 = distinct !{!112, !46, !47}
!113 = distinct !{!113, !46, !47}
!114 = distinct !{!114, !46, !47}
!115 = distinct !{!115, !46, !47}
!116 = distinct !{!116, !46, !47}
!117 = !{!62, !35, i64 1176}
!118 = !{!119, !40, i64 0}
!119 = !{!"MEdge", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 9, !69, i64 10}
!120 = !{!119, !40, i64 4}
!121 = distinct !{!121, !46, !47}
!122 = !{!62, !40, i64 1008}
!123 = !{!62, !35, i64 1160}
!124 = distinct !{!124, !46, !47}
!125 = !{!74, !40, i64 64}
!126 = !{!127, !40, i64 12}
!127 = !{!"", !35, i64 0, !40, i64 8, !40, i64 12}
!128 = !{!127, !40, i64 8}
!129 = !{!127, !35, i64 0}
!130 = !{!74, !36, i64 100}
!131 = distinct !{!131, !46, !47}
!132 = distinct !{!132, !46, !47}
!133 = distinct !{!133, !46, !47}
!134 = !{!62, !40, i64 1056}
!135 = !{!136, !40, i64 8}
!136 = !{!"GPUAttrib", !40, i64 0, !40, i64 4, !40, i64 8}
!137 = !{!136, !40, i64 4}
!138 = distinct !{!138, !46, !47}
!139 = !{!136, !40, i64 0}
!140 = distinct !{!140, !46, !47}
!141 = distinct !{!141, !46, !47}
!142 = distinct !{!142, !46, !47}
!143 = distinct !{!143, !46, !47}
!144 = !{!145, !69, i64 8480}
!145 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !69, i64 8472, !69, i64 8474, !69, i64 8476, !69, i64 8478, !69, i64 8480, !69, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !69, i64 8496, !69, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !69, i64 8528, !69, i64 8530, !69, i64 8532, !69, i64 8534, !146, i64 8536, !146, i64 8552, !146, i64 8568, !146, i64 8584, !146, i64 8600, !146, i64 8616, !146, i64 8632, !36, i64 8648, !69, i64 8712, !69, i64 8714, !69, i64 8716, !69, i64 8718, !69, i64 8720, !69, i64 8722, !69, i64 8724, !69, i64 8726, !36, i64 8728, !69, i64 8896, !69, i64 8898, !69, i64 8900, !69, i64 8902, !69, i64 8904, !69, i64 8906, !69, i64 8908, !69, i64 8910, !40, i64 8912, !40, i64 8916, !69, i64 8920, !69, i64 8922, !69, i64 8924, !69, i64 8926, !69, i64 8928, !69, i64 8930, !69, i64 8932, !69, i64 8934, !69, i64 8936, !69, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !69, i64 8944, !69, i64 8946, !69, i64 8948, !69, i64 8950, !69, i64 8952, !69, i64 8954, !64, i64 8956, !64, i64 8960, !40, i64 8964, !69, i64 8968, !69, i64 8970, !64, i64 8972, !69, i64 8976, !69, i64 8978, !69, i64 8980, !69, i64 8982, !147, i64 8984, !36, i64 9760, !36, i64 9772, !69, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !64, i64 10904, !64, i64 10908, !40, i64 10912, !69, i64 10916, !69, i64 10918, !69, i64 10920, !69, i64 10922, !69, i64 10924, !69, i64 10926, !148, i64 10928}
!146 = !{!"ListBase", !35, i64 0, !35, i64 8}
!147 = !{!"ColorBand", !69, i64 0, !69, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!148 = !{!"WalkNavigation", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !69, i64 24, !36, i64 26}
!149 = !{!150, !35, i64 48}
!150 = !{!"GPU_PBVH_Buffers", !40, i64 0, !40, i64 4, !40, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !35, i64 48, !151, i64 56, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !36, i64 153, !36, i64 156}
!151 = !{!"CCGKey", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!152 = !{!150, !36, i64 152}
!153 = !{!150, !36, i64 153}
!154 = !{!150, !40, i64 0}
!155 = !{!150, !40, i64 148}
!156 = !{!150, !40, i64 140}
!157 = !{!150, !35, i64 16}
!158 = !{!150, !35, i64 32}
!159 = !{!150, !40, i64 40}
!160 = distinct !{!160, !46, !47}
!161 = distinct !{!161, !46, !47}
!162 = distinct !{!162, !46, !47}
!163 = distinct !{!163, !46, !47}
!164 = distinct !{!164, !46, !47}
!165 = !{!150, !35, i64 24}
!166 = !{!150, !40, i64 8}
!167 = distinct !{!167, !46, !47}
!168 = !{!150, !40, i64 4}
!169 = distinct !{!169, !46, !47}
!170 = distinct !{!170, !46, !47}
!171 = distinct !{!171, !46, !47}
!172 = !{!151, !40, i64 12}
!173 = !{!174, !36, i64 2}
!174 = !{!"DMFlagMat", !69, i64 0, !36, i64 2}
!175 = !{!151, !40, i64 36}
!176 = !{!174, !69, i64 0}
!177 = !{!151, !40, i64 8}
!178 = !{!151, !40, i64 4}
!179 = !{!151, !40, i64 20}
!180 = !{!151, !40, i64 24}
!181 = distinct !{!181, !46, !47}
!182 = distinct !{!182, !46, !47}
!183 = distinct !{!183, !46, !47}
!184 = distinct !{!184, !46, !47}
!185 = distinct !{!185, !46, !47}
!186 = !{!150, !35, i64 96}
!187 = !{!150, !35, i64 120}
!188 = !{!150, !40, i64 128}
!189 = !{!150, !35, i64 104}
!190 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 4, !42, i64 12, i64 4, !42, i64 16, i64 4, !42, i64 20, i64 4, !42, i64 24, i64 4, !42, i64 28, i64 4, !42, i64 32, i64 4, !42, i64 36, i64 4, !42}
!191 = !{!150, !35, i64 112}
!192 = distinct !{!192, !46, !47}
!193 = distinct !{!193, !46, !47}
!194 = distinct !{!194, !46, !47}
!195 = distinct !{!195, !46, !47}
!196 = !{!150, !40, i64 144}
!197 = distinct !{!197, !46, !47}
!198 = distinct !{!198, !46, !47}
!199 = distinct !{!199, !46, !47}
!200 = distinct !{!200, !46, !47}
!201 = distinct !{!201, !46, !47}
!202 = distinct !{!202, !46, !47}
!203 = !{!150, !40, i64 132}
!204 = !{!205, !35, i64 8}
!205 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !40, i64 16}
!206 = !{!207, !35, i64 8}
!207 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!208 = !{!209, !36, i64 13}
!209 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!210 = distinct !{!210, !46, !47}
!211 = distinct !{!211, !46, !47}
!212 = distinct !{!212, !46, !47}
!213 = !{!214, !69, i64 48}
!214 = !{!"BMFace", !209, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !69, i64 48}
!215 = !{!216, !36, i64 28}
!216 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !63, i64 144, !63, i64 344, !63, i64 544, !63, i64 744, !69, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !146, i64 960, !35, i64 976, !146, i64 984, !35, i64 1000}
!217 = !{!218, !35, i64 0}
!218 = !{!"BMVert", !209, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!219 = !{!209, !40, i64 8}
!220 = distinct !{!220, !46, !47}
!221 = distinct !{!221, !46, !47}
!222 = distinct !{!222, !46, !47}
!223 = distinct !{!223, !46, !47}
!224 = distinct !{!224, !46, !47}
!225 = !{!214, !35, i64 24}
!226 = !{!227, !35, i64 16}
!227 = !{!"BMLoop", !209, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!228 = !{!227, !35, i64 56}
!229 = distinct !{!229, !46, !47}
!230 = distinct !{!230, !46, !47}
!231 = !{!150, !40, i64 136}
!232 = !{!150, !40, i64 68}
!233 = distinct !{!233, !46, !47}
!234 = distinct !{!234, !46, !47}
!235 = distinct !{!235, !46, !47}
!236 = distinct !{!236, !46, !47}
!237 = !{!150, !40, i64 64}
!238 = distinct !{!238, !46, !47}
!239 = distinct !{!239, !46, !47}
!240 = distinct !{!240, !46, !47}
!241 = distinct !{!241, !46, !47}
!242 = distinct !{!242, !46, !47}
!243 = distinct !{!243, !46, !47}
!244 = distinct !{!244, !46, !47}
!245 = distinct !{!245, !46, !47}
!246 = distinct !{!246, !46, !47}
