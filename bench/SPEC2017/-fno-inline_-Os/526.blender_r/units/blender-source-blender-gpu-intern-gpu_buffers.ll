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
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }

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
@switch.table.GPU_typesize = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 4, i32 4, i32 4], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_global_buffer_pool_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  tail call fastcc void @gpu_buffer_pool_free(ptr noundef %1) #16
  store ptr null, ptr @gpu_buffer_pool, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_buffer_pool_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !38 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3, %6
  tail call fastcc void @gpu_buffer_pool_delete_last(ptr noundef nonnull %0) #16
  %7 = load i32, ptr %0, align 8, !tbaa !39
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %6, !llvm.loop !42

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.GPUBufferPool, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void %10(ptr noundef %12) #17
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.GPUBufferPool, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void %13(ptr noundef %15) #17
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %0) #17
  br label %17

17:                                               ; preds = %1, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_global_buffer_pool_free_unused() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  tail call fastcc void @gpu_buffer_pool_free_unused(ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_buffer_pool_free_unused(ptr noundef %0) unnamed_addr #0 !PGOFuncName !46 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #17
  %4 = load i32, ptr %0, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3, %6
  tail call fastcc void @gpu_buffer_pool_delete_last(ptr noundef nonnull %0) #16
  %7 = load i32, ptr %0, align 8, !tbaa !39
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %6, !llvm.loop !47

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.GPUBufferPool, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds %struct.GPUBufferPool, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  tail call void %10(i32 noundef %12, ptr noundef %14) #17
  store i32 0, ptr %11, align 4, !tbaa !48
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #17
  br label %15

15:                                               ; preds = %1, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_buffer_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #17
  %4 = tail call fastcc ptr @gpu_buffer_alloc_intern(i32 noundef %0) #16
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_buffer_alloc_intern(i32 noundef %0) unnamed_addr #0 !PGOFuncName !49 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %76, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @gpu_get_global_buffer_pool() #16
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %33
  %12 = phi i64 [ 0, %7 ], [ %35, %33 ]
  %13 = phi i32 [ -1, %7 ], [ %34, %33 ]
  %14 = getelementptr inbounds ptr, ptr %9, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load i32, ptr %15, align 8, !tbaa !50
  %17 = icmp eq i32 %16, %0
  br i1 %17, label %42, label %18

18:                                               ; preds = %11
  %19 = icmp sgt i32 %16, %0
  %20 = sdiv i32 %16, 2
  %21 = icmp slt i32 %20, %0
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = icmp eq i32 %13, -1
  br i1 %24, label %31, label %25

25:                                               ; preds = %23
  %26 = sext i32 %13 to i64
  %27 = getelementptr inbounds ptr, ptr %9, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = load i32, ptr %28, align 8, !tbaa !50
  %30 = icmp sgt i32 %29, %16
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %23
  %32 = trunc i64 %12 to i32
  br label %33

33:                                               ; preds = %25, %31, %18
  %34 = phi i32 [ %32, %31 ], [ %13, %25 ], [ %13, %18 ]
  %35 = add nuw nsw i64 %12, 1
  %36 = icmp eq i64 %35, %10
  br i1 %36, label %37, label %11, !llvm.loop !52

37:                                               ; preds = %33
  %38 = icmp eq i32 %34, -1
  br i1 %38, label %50, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  br label %44

42:                                               ; preds = %11
  %43 = trunc i64 %12 to i32
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi ptr [ %41, %39 ], [ %9, %42 ]
  %46 = phi i32 [ %34, %39 ], [ %43, %42 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  tail call fastcc void @gpu_buffer_pool_remove_index(ptr noundef nonnull %4, i32 noundef %46) #16
  br label %76

50:                                               ; preds = %3, %37
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = tail call ptr %51(i64 noundef 24, ptr noundef nonnull @.str.5) #17
  store i32 %0, ptr %52, align 8, !tbaa !50
  %53 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.GPUBuffer, ptr %52, i64 0, i32 2
  tail call void %56(i32 noundef 1, ptr noundef nonnull %57) #17
  %58 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %59 = load i32, ptr %57, align 8, !tbaa !54
  tail call void %58(i32 noundef 34962, i32 noundef %59) #17
  %60 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %61 = sext i32 %0 to i64
  tail call void %60(i32 noundef 34962, i64 noundef %61, ptr noundef null, i32 noundef 35044) #17
  %62 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %62(i32 noundef 34962, i32 noundef 0) #17
  br label %76

63:                                               ; preds = %50
  %64 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %65 = sext i32 %0 to i64
  %66 = tail call ptr %64(i64 noundef %65, ptr noundef nonnull @.str.6) #17
  %67 = getelementptr inbounds %struct.GPUBuffer, ptr %52, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !55
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %63, %72
  %70 = load i32, ptr %4, align 8, !tbaa !39
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  tail call fastcc void @gpu_buffer_pool_delete_last(ptr noundef nonnull %4) #16
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %74 = tail call ptr %73(i64 noundef %65, ptr noundef nonnull @.str.6) #17
  store ptr %74, ptr %67, align 8, !tbaa !55
  %75 = icmp eq ptr %74, null
  br i1 %75, label %69, label %76, !llvm.loop !56

76:                                               ; preds = %72, %69, %63, %55, %1, %44
  %77 = phi ptr [ %49, %44 ], [ null, %1 ], [ %52, %55 ], [ %52, %63 ], [ %52, %72 ], [ null, %69 ]
  ret ptr %77
}

; Function Attrs: optsize
declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_buffer_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #17
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %0) #16
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #17
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_buffer_free_intern(ptr noundef %0) unnamed_addr #0 !PGOFuncName !57 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @gpu_get_global_buffer_pool() #16
  %5 = tail call i32 @BLI_thread_is_main() #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 8, !tbaa !39
  %9 = icmp sgt i32 %8, 7
  br i1 %9, label %10, label %27

10:                                               ; preds = %7, %10
  tail call fastcc void @gpu_buffer_pool_delete_last(ptr noundef nonnull %4) #16
  %11 = load i32, ptr %4, align 8, !tbaa !39
  %12 = icmp sgt i32 %11, 7
  br i1 %12, label %10, label %27, !llvm.loop !58

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = load i32, ptr %4, align 8, !tbaa !39
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = add nsw i32 %15, 8
  store i32 %19, ptr %14, align 8, !tbaa !59
  %20 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = sext i32 %19 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %20(ptr noundef %22, i64 noundef %24, ptr noundef nonnull @__func__.gpu_buffer_free_intern) #17
  store ptr %25, ptr %21, align 8, !tbaa !44
  %26 = load i32, ptr %4, align 8, !tbaa !39
  br label %27

27:                                               ; preds = %10, %7, %13, %18
  %28 = phi i32 [ %8, %7 ], [ %16, %13 ], [ %26, %18 ], [ %11, %10 ]
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 4
  %32 = zext nneg i32 %28 to i64
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %32, %30 ], [ %39, %33 ]
  %35 = load ptr, ptr %31, align 8, !tbaa !44
  %36 = getelementptr ptr, ptr %35, i64 %34
  %37 = getelementptr ptr, ptr %36, i64 -1
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  store ptr %38, ptr %36, align 8, !tbaa !34
  %39 = add nsw i64 %34, -1
  %40 = icmp ugt i64 %34, 1
  br i1 %40, label %33, label %41, !llvm.loop !60

41:                                               ; preds = %33, %27
  %42 = getelementptr inbounds %struct.GPUBufferPool, ptr %4, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  store ptr %0, ptr %43, align 8, !tbaa !34
  %44 = add nsw i32 %28, 1
  store i32 %44, ptr %4, align 8, !tbaa !39
  br label %45

45:                                               ; preds = %1, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_drawobject_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  %3 = load i32, ptr %2, align 4, !tbaa !61
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = tail call ptr %5(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call i32 %8(ptr noundef %0) #17
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = sext i32 %3 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str) #17
  %14 = icmp sgt i32 %9, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = zext nneg i32 %9 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %29, %17 ]
  %19 = getelementptr inbounds %struct.MFace, ptr %6, i64 %18, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !67
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 3, i32 6
  %23 = getelementptr inbounds %struct.MFace, ptr %6, i64 %18, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !70
  %25 = sext i16 %24 to i64
  %26 = getelementptr inbounds i32, ptr %13, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !53
  %28 = add nsw i32 %27, %22
  store i32 %28, ptr %26, align 4, !tbaa !53
  %29 = add nuw nsw i64 %18, 1
  %30 = icmp eq i64 %29, %16
  br i1 %30, label %31, label %17, !llvm.loop !71

31:                                               ; preds = %17, %1
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = tail call ptr %32(i64 noundef 104, ptr noundef nonnull @.str.1) #17
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = tail call i32 %35(ptr noundef %0) #17
  %37 = getelementptr inbounds %struct.GPUDrawObject, ptr %33, i64 0, i32 13
  store i32 %36, ptr %37, align 4, !tbaa !73
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !75
  %40 = tail call i32 %39(ptr noundef %0) #17
  %41 = getelementptr inbounds %struct.GPUDrawObject, ptr %33, i64 0, i32 14
  store i32 %40, ptr %41, align 8, !tbaa !76
  %42 = icmp sgt i32 %3, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.GPUDrawObject, ptr %33, i64 0, i32 10
  %45 = zext nneg i32 %3 to i64
  br label %46

46:                                               ; preds = %43, %54
  %47 = phi i64 [ 0, %43 ], [ %55, %54 ]
  %48 = getelementptr inbounds i32, ptr %13, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, ptr %44, align 8, !tbaa !77
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %44, align 8, !tbaa !77
  br label %54

54:                                               ; preds = %46, %51
  %55 = add nuw nsw i64 %47, 1
  %56 = icmp eq i64 %55, %45
  br i1 %56, label %57, label %46, !llvm.loop !78

57:                                               ; preds = %54, %31
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.GPUDrawObject, ptr %33, i64 0, i32 10
  %60 = load i32, ptr %59, align 8, !tbaa !77
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, 12
  %63 = tail call ptr %58(i64 noundef %62, ptr noundef nonnull @.str.2) #17
  %64 = getelementptr inbounds %struct.GPUDrawObject, ptr %33, i64 0, i32 9
  store ptr %63, ptr %64, align 8, !tbaa !79
  br i1 %42, label %65, label %88

65:                                               ; preds = %57
  %66 = zext nneg i32 %3 to i64
  br label %67

67:                                               ; preds = %65, %83
  %68 = phi i64 [ 0, %65 ], [ %86, %83 ]
  %69 = phi i32 [ 0, %65 ], [ %85, %83 ]
  %70 = phi i32 [ 0, %65 ], [ %84, %83 ]
  %71 = getelementptr inbounds i32, ptr %13, i64 %68
  %72 = load i32, ptr %71, align 4, !tbaa !53
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = sext i32 %70 to i64
  %76 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %63, i64 %75
  store i32 %69, ptr %76, align 4, !tbaa !80
  %77 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %63, i64 %75, i32 1
  store i32 0, ptr %77, align 4, !tbaa !82
  %78 = trunc i64 %68 to i16
  %79 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %63, i64 %75, i32 2
  store i16 %78, ptr %79, align 4, !tbaa !83
  %80 = load i32, ptr %71, align 4, !tbaa !53
  %81 = add nsw i32 %80, %69
  %82 = add nsw i32 %70, 1
  br label %83

83:                                               ; preds = %67, %74
  %84 = phi i32 [ %82, %74 ], [ %70, %67 ]
  %85 = phi i32 [ %81, %74 ], [ %69, %67 ]
  %86 = add nuw nsw i64 %68, 1
  %87 = icmp eq i64 %86, %66
  br i1 %87, label %88, label %67, !llvm.loop !84

88:                                               ; preds = %83, %57
  %89 = phi i32 [ 0, %57 ], [ %85, %83 ]
  %90 = getelementptr inbounds %struct.GPUDrawObject, ptr %33, i64 0, i32 11
  store i32 %89, ptr %90, align 4, !tbaa !85
  %91 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %92 = sdiv i32 %89, 3
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 2
  %95 = tail call ptr %91(i64 noundef %94, ptr noundef nonnull @.str.3) #17
  %96 = getelementptr inbounds %struct.GPUDrawObject, ptr %33, i64 0, i32 6
  store ptr %95, ptr %96, align 8, !tbaa !86
  tail call fastcc void @gpu_drawobject_init_vert_points(ptr noundef %33, ptr noundef %6, i32 noundef %9, i32 noundef %3) #16
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %97(ptr noundef %13) #17
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_drawobject_init_vert_points(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !87 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = sext i32 %3 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.10) #17
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !73
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str.11) #17
  %15 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 7
  store ptr %14, ptr %15, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !77
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !79
  br label %28

22:                                               ; preds = %28, %4
  %23 = load i32, ptr %10, align 4, !tbaa !73
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = zext nneg i32 %23 to i64
  %27 = shl nuw nsw i64 %26, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %14, i8 -1, i64 %27, i1 false), !tbaa !89
  br label %39

28:                                               ; preds = %19, %28
  %29 = phi i64 [ 0, %19 ], [ %35, %28 ]
  %30 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %21, i64 %29, i32 2
  %31 = load i16, ptr %30, align 4, !tbaa !83
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds i32, ptr %8, i64 %32
  %34 = trunc i64 %29 to i32
  store i32 %34, ptr %33, align 4, !tbaa !53
  %35 = add nuw nsw i64 %29, 1
  %36 = load i32, ptr %16, align 8, !tbaa !77
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %28, label %22, !llvm.loop !91

39:                                               ; preds = %25, %22
  %40 = icmp sgt i32 %2, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 9
  br label %53

43:                                               ; preds = %85
  %44 = load i32, ptr %10, align 4, !tbaa !73
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ %23, %39 ]
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %45
  %49 = load ptr, ptr %15, align 8, !tbaa !88
  %50 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 12
  %52 = zext nneg i32 %46 to i64
  br label %89

53:                                               ; preds = %41, %85
  %54 = phi ptr [ %1, %41 ], [ %87, %85 ]
  %55 = phi i32 [ 0, %41 ], [ %86, %85 ]
  %56 = load ptr, ptr %42, align 8, !tbaa !79
  %57 = getelementptr inbounds %struct.MFace, ptr %54, i64 0, i32 4
  %58 = load i16, ptr %57, align 4, !tbaa !70
  %59 = sext i16 %58 to i64
  %60 = getelementptr inbounds i32, ptr %8, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %56, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !80
  %65 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %56, i64 %62, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !82
  %67 = add nsw i32 %66, %64
  %68 = load i32, ptr %54, align 4, !tbaa !92
  %69 = getelementptr inbounds %struct.MFace, ptr %54, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !93
  %71 = getelementptr inbounds %struct.MFace, ptr %54, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !94
  tail call fastcc void @gpu_drawobject_add_triangle(ptr noundef nonnull %0, i32 noundef %67, i32 noundef %55, i32 noundef %68, i32 noundef %70, i32 noundef %72) #16
  %73 = load i32, ptr %65, align 4, !tbaa !82
  %74 = add nsw i32 %73, 3
  store i32 %74, ptr %65, align 4, !tbaa !82
  %75 = getelementptr inbounds %struct.MFace, ptr %54, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !67
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %53
  %79 = load i32, ptr %63, align 4, !tbaa !80
  %80 = add nsw i32 %79, %74
  %81 = load i32, ptr %71, align 4, !tbaa !94
  %82 = load i32, ptr %54, align 4, !tbaa !92
  tail call fastcc void @gpu_drawobject_add_triangle(ptr noundef nonnull %0, i32 noundef %80, i32 noundef %55, i32 noundef %81, i32 noundef %76, i32 noundef %82) #16
  %83 = load i32, ptr %65, align 4, !tbaa !82
  %84 = add nsw i32 %83, 3
  store i32 %84, ptr %65, align 4, !tbaa !82
  br label %85

85:                                               ; preds = %53, %78
  %86 = add nuw nsw i32 %55, 1
  %87 = getelementptr inbounds %struct.MFace, ptr %54, i64 1
  %88 = icmp eq i32 %86, %2
  br i1 %88, label %43, label %53, !llvm.loop !95

89:                                               ; preds = %48, %99
  %90 = phi i64 [ 0, %48 ], [ %100, %99 ]
  %91 = getelementptr inbounds %struct.GPUVertPointLink, ptr %49, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !89
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, ptr %50, align 4, !tbaa !85
  %96 = load i32, ptr %51, align 8, !tbaa !96
  %97 = add nsw i32 %96, %95
  store i32 %97, ptr %91, align 4, !tbaa !89
  %98 = add nsw i32 %96, 1
  store i32 %98, ptr %51, align 8, !tbaa !96
  br label %99

99:                                               ; preds = %89, %94
  %100 = add nuw nsw i64 %90, 1
  %101 = icmp eq i64 %100, %52
  br i1 %101, label %102, label %89, !llvm.loop !97

102:                                              ; preds = %99, %45
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %103(ptr noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_drawobject_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  tail call void %8(ptr noundef %10) #17
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  tail call void %11(ptr noundef %13) #17
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  tail call void %14(ptr noundef %16) #17
  %17 = load ptr, ptr %5, align 8, !tbaa !99
  tail call void @GPU_buffer_free(ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  tail call void @GPU_buffer_free(ptr noundef %19) #16
  %20 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  tail call void @GPU_buffer_free(ptr noundef %21) #16
  %22 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  tail call void @GPU_buffer_free(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  tail call void @GPU_buffer_free(ptr noundef %25) #16
  %26 = getelementptr inbounds %struct.GPUDrawObject, ptr %5, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !104
  tail call void @GPU_buffer_free(ptr noundef %27) #16
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %5) #17
  store ptr null, ptr %4, align 8, !tbaa !98
  br label %29

29:                                               ; preds = %1, %3, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GPU_buffer_copy_vertex(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 !PGOFuncName !105 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call ptr %7(ptr noundef %0) #17
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = tail call ptr %10(ptr noundef %0) #17
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = tail call i32 %13(ptr noundef %0) #17
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %5, %74
  %17 = phi ptr [ %76, %74 ], [ %11, %5 ]
  %18 = phi i32 [ %75, %74 ], [ 0, %5 ]
  %19 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !70
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds i32, ptr %3, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !53
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %1, i64 %27
  %29 = load i32, ptr %17, align 4, !tbaa !92
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %8, i64 %30
  tail call fastcc void @copy_v3_v3(ptr noundef %28, ptr noundef %31) #16
  %32 = getelementptr float, ptr %28, i64 3
  %33 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !93
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MVert, ptr %8, i64 %35
  tail call fastcc void @copy_v3_v3(ptr noundef %32, ptr noundef %36) #16
  %37 = getelementptr float, ptr %28, i64 6
  %38 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !94
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.MVert, ptr %8, i64 %40
  tail call fastcc void @copy_v3_v3(ptr noundef %37, ptr noundef %41) #16
  %42 = load i16, ptr %19, align 4, !tbaa !70
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds i32, ptr %3, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !53
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %2, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !53
  %49 = add nsw i32 %48, 9
  store i32 %49, ptr %47, align 4, !tbaa !53
  %50 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !67
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %16
  %54 = getelementptr float, ptr %28, i64 9
  %55 = load i32, ptr %38, align 4, !tbaa !94
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.MVert, ptr %8, i64 %56
  tail call fastcc void @copy_v3_v3(ptr noundef %54, ptr noundef %57) #16
  %58 = getelementptr float, ptr %28, i64 12
  %59 = load i32, ptr %50, align 4, !tbaa !67
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MVert, ptr %8, i64 %60
  tail call fastcc void @copy_v3_v3(ptr noundef %58, ptr noundef %61) #16
  %62 = getelementptr float, ptr %28, i64 15
  %63 = load i32, ptr %17, align 4, !tbaa !92
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.MVert, ptr %8, i64 %64
  tail call fastcc void @copy_v3_v3(ptr noundef %62, ptr noundef %65) #16
  %66 = load i16, ptr %19, align 4, !tbaa !70
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds i32, ptr %3, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !53
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %2, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !53
  %73 = add nsw i32 %72, 9
  store i32 %73, ptr %71, align 4, !tbaa !53
  br label %74

74:                                               ; preds = %16, %53
  %75 = add nuw nsw i32 %18, 1
  %76 = getelementptr inbounds %struct.MFace, ptr %17, i64 1
  %77 = icmp eq i32 %75, %14
  br i1 %77, label %78, label %16, !llvm.loop !107

78:                                               ; preds = %74, %5
  %79 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %80 = load ptr, ptr %79, align 8, !tbaa !98
  %81 = getelementptr inbounds %struct.GPUDrawObject, ptr %80, i64 0, i32 13
  %82 = load i32, ptr %81, align 4, !tbaa !73
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.GPUDrawObject, ptr %80, i64 0, i32 11
  %86 = load i32, ptr %85, align 4, !tbaa !85
  %87 = mul nsw i32 %86, 3
  br label %88

88:                                               ; preds = %84, %105
  %89 = phi ptr [ %80, %84 ], [ %106, %105 ]
  %90 = phi i64 [ 0, %84 ], [ %108, %105 ]
  %91 = phi i32 [ %87, %84 ], [ %107, %105 ]
  %92 = getelementptr inbounds %struct.GPUDrawObject, ptr %89, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !88
  %94 = getelementptr inbounds %struct.GPUVertPointLink, ptr %93, i64 %90
  %95 = load i32, ptr %94, align 4, !tbaa !89
  %96 = getelementptr inbounds %struct.GPUDrawObject, ptr %89, i64 0, i32 11
  %97 = load i32, ptr %96, align 4, !tbaa !85
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %88
  %100 = sext i32 %91 to i64
  %101 = getelementptr inbounds float, ptr %1, i64 %100
  %102 = getelementptr inbounds %struct.MVert, ptr %8, i64 %90
  tail call fastcc void @copy_v3_v3(ptr noundef %101, ptr noundef %102) #16
  %103 = add nsw i32 %91, 3
  %104 = load ptr, ptr %79, align 8, !tbaa !98
  br label %105

105:                                              ; preds = %88, %99
  %106 = phi ptr [ %104, %99 ], [ %89, %88 ]
  %107 = phi i32 [ %103, %99 ], [ %91, %88 ]
  %108 = add nuw nsw i64 %90, 1
  %109 = getelementptr inbounds %struct.GPUDrawObject, ptr %106, i64 0, i32 13
  %110 = load i32, ptr %109, align 4, !tbaa !73
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %88, label %113, !llvm.loop !108

113:                                              ; preds = %105, %78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GPU_buffer_copy_normal(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 !PGOFuncName !109 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call ptr %8(ptr noundef %0, i32 noundef 8) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !110
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 40) #17
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = tail call ptr %13(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = tail call ptr %16(ptr noundef %0) #17
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = tail call i32 %19(ptr noundef %0) #17
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %142

22:                                               ; preds = %5
  %23 = icmp eq ptr %11, null
  %24 = icmp eq ptr %9, null
  %25 = zext nneg i32 %20 to i64
  br label %26

26:                                               ; preds = %22, %138
  %27 = phi i64 [ 0, %22 ], [ %139, %138 ]
  %28 = phi ptr [ %17, %22 ], [ %140, %138 ]
  %29 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !111
  %31 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 4
  %32 = load i16, ptr %31, align 4, !tbaa !70
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds i32, ptr %3, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !53
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %2, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !67
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 9, i32 18
  %43 = add nsw i32 %42, %38
  store i32 %43, ptr %37, align 4, !tbaa !53
  br i1 %23, label %59, label %44

44:                                               ; preds = %26
  %45 = getelementptr inbounds [4 x [3 x i16]], ptr %11, i64 %27
  %46 = sext i32 %38 to i64
  %47 = getelementptr inbounds float, ptr %1, i64 %46
  call fastcc void @normal_short_to_float_v3(ptr noundef %47, ptr noundef nonnull %45) #16
  %48 = getelementptr float, ptr %47, i64 3
  %49 = getelementptr inbounds [3 x i16], ptr %45, i64 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %48, ptr noundef nonnull %49) #16
  %50 = getelementptr float, ptr %47, i64 6
  %51 = getelementptr inbounds [3 x i16], ptr %45, i64 2
  call fastcc void @normal_short_to_float_v3(ptr noundef %50, ptr noundef nonnull %51) #16
  %52 = load i32, ptr %39, align 4, !tbaa !67
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %138, label %54

54:                                               ; preds = %44
  %55 = getelementptr float, ptr %47, i64 9
  call fastcc void @normal_short_to_float_v3(ptr noundef %55, ptr noundef nonnull %51) #16
  %56 = getelementptr float, ptr %47, i64 12
  %57 = getelementptr inbounds [3 x i16], ptr %45, i64 3
  call fastcc void @normal_short_to_float_v3(ptr noundef %56, ptr noundef nonnull %57) #16
  %58 = getelementptr float, ptr %47, i64 15
  call fastcc void @normal_short_to_float_v3(ptr noundef %58, ptr noundef nonnull %45) #16
  br label %138

59:                                               ; preds = %26
  %60 = and i8 %30, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %59
  %63 = sext i32 %38 to i64
  %64 = getelementptr inbounds float, ptr %1, i64 %63
  %65 = load i32, ptr %28, align 4, !tbaa !92
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MVert, ptr %14, i64 %66, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %64, ptr noundef nonnull %67) #16
  %68 = getelementptr float, ptr %64, i64 3
  %69 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !93
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.MVert, ptr %14, i64 %71, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %68, ptr noundef nonnull %72) #16
  %73 = getelementptr float, ptr %64, i64 6
  %74 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !94
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.MVert, ptr %14, i64 %76, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %73, ptr noundef nonnull %77) #16
  %78 = load i32, ptr %39, align 4, !tbaa !67
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %138, label %80

80:                                               ; preds = %62
  %81 = getelementptr float, ptr %64, i64 9
  %82 = load i32, ptr %74, align 4, !tbaa !94
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.MVert, ptr %14, i64 %83, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %81, ptr noundef nonnull %84) #16
  %85 = getelementptr float, ptr %64, i64 12
  %86 = load i32, ptr %39, align 4, !tbaa !67
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %14, i64 %87, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %85, ptr noundef nonnull %88) #16
  %89 = getelementptr float, ptr %64, i64 15
  %90 = load i32, ptr %28, align 4, !tbaa !92
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MVert, ptr %14, i64 %91, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %89, ptr noundef nonnull %92) #16
  br label %138

93:                                               ; preds = %59
  br i1 %24, label %107, label %94

94:                                               ; preds = %93
  %95 = sext i32 %38 to i64
  %96 = getelementptr inbounds float, ptr %1, i64 %95
  %97 = mul nuw nsw i64 %27, 3
  %98 = getelementptr inbounds float, ptr %9, i64 %97
  call fastcc void @copy_v3_v3(ptr noundef %96, ptr noundef nonnull %98) #16
  %99 = getelementptr float, ptr %96, i64 3
  call fastcc void @copy_v3_v3(ptr noundef %99, ptr noundef nonnull %98) #16
  %100 = getelementptr float, ptr %96, i64 6
  call fastcc void @copy_v3_v3(ptr noundef %100, ptr noundef nonnull %98) #16
  %101 = load i32, ptr %39, align 4, !tbaa !67
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %138, label %103

103:                                              ; preds = %94
  %104 = getelementptr float, ptr %96, i64 9
  call fastcc void @copy_v3_v3(ptr noundef %104, ptr noundef nonnull %98) #16
  %105 = getelementptr float, ptr %96, i64 12
  call fastcc void @copy_v3_v3(ptr noundef %105, ptr noundef nonnull %98) #16
  %106 = getelementptr float, ptr %96, i64 15
  call fastcc void @copy_v3_v3(ptr noundef %106, ptr noundef nonnull %98) #16
  br label %138

107:                                              ; preds = %93
  %108 = load i32, ptr %39, align 4, !tbaa !67
  %109 = icmp eq i32 %108, 0
  %110 = load i32, ptr %28, align 4, !tbaa !92
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.MVert, ptr %14, i64 %111
  %113 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !93
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.MVert, ptr %14, i64 %115
  %117 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !94
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.MVert, ptr %14, i64 %119
  br i1 %109, label %125, label %121

121:                                              ; preds = %107
  %122 = zext i32 %108 to i64
  %123 = getelementptr inbounds %struct.MVert, ptr %14, i64 %122
  %124 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %112, ptr noundef %116, ptr noundef %120, ptr noundef nonnull %123) #17
  br label %127

125:                                              ; preds = %107
  %126 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %112, ptr noundef %116, ptr noundef %120) #17
  br label %127

127:                                              ; preds = %125, %121
  %128 = sext i32 %38 to i64
  %129 = getelementptr inbounds float, ptr %1, i64 %128
  call fastcc void @copy_v3_v3(ptr noundef %129, ptr noundef nonnull %6) #16
  %130 = getelementptr float, ptr %129, i64 3
  call fastcc void @copy_v3_v3(ptr noundef %130, ptr noundef nonnull %6) #16
  %131 = getelementptr float, ptr %129, i64 6
  call fastcc void @copy_v3_v3(ptr noundef %131, ptr noundef nonnull %6) #16
  %132 = load i32, ptr %39, align 4, !tbaa !67
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %127
  %135 = getelementptr float, ptr %129, i64 9
  call fastcc void @copy_v3_v3(ptr noundef %135, ptr noundef nonnull %6) #16
  %136 = getelementptr float, ptr %129, i64 12
  call fastcc void @copy_v3_v3(ptr noundef %136, ptr noundef nonnull %6) #16
  %137 = getelementptr float, ptr %129, i64 15
  call fastcc void @copy_v3_v3(ptr noundef %137, ptr noundef nonnull %6) #16
  br label %138

138:                                              ; preds = %44, %54, %80, %62, %127, %134, %94, %103
  %139 = add nuw nsw i64 %27, 1
  %140 = getelementptr inbounds %struct.MFace, ptr %28, i64 1
  %141 = icmp eq i64 %139, %25
  br i1 %141, label %142, label %26, !llvm.loop !112

142:                                              ; preds = %138, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GPU_buffer_copy_mcol(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 !PGOFuncName !113 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call ptr %7(ptr noundef %0) #17
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = tail call i32 %10(ptr noundef %0) #17
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %5
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %61
  %16 = phi i64 [ 0, %13 ], [ %62, %61 ]
  %17 = phi ptr [ %8, %13 ], [ %63, %61 ]
  %18 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 4
  %19 = load i16, ptr %18, align 4, !tbaa !70
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !53
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = shl nsw i64 %16, 4
  %29 = getelementptr inbounds i8, ptr %4, i64 %28
  tail call fastcc void @copy_mcol_uc3(ptr noundef %27, ptr noundef %29) #16
  %30 = getelementptr i8, ptr %27, i64 3
  %31 = or disjoint i64 %28, 4
  %32 = getelementptr inbounds i8, ptr %4, i64 %31
  tail call fastcc void @copy_mcol_uc3(ptr noundef %30, ptr noundef nonnull %32) #16
  %33 = getelementptr i8, ptr %27, i64 6
  %34 = or disjoint i64 %28, 8
  %35 = getelementptr inbounds i8, ptr %4, i64 %34
  tail call fastcc void @copy_mcol_uc3(ptr noundef %33, ptr noundef nonnull %35) #16
  %36 = load i16, ptr %18, align 4, !tbaa !70
  %37 = sext i16 %36 to i64
  %38 = getelementptr inbounds i32, ptr %3, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !53
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %2, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = add nsw i32 %42, 9
  store i32 %43, ptr %41, align 4, !tbaa !53
  %44 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !67
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %15
  %48 = getelementptr i8, ptr %27, i64 9
  tail call fastcc void @copy_mcol_uc3(ptr noundef %48, ptr noundef nonnull %35) #16
  %49 = getelementptr i8, ptr %27, i64 12
  %50 = or disjoint i64 %28, 12
  %51 = getelementptr inbounds i8, ptr %4, i64 %50
  tail call fastcc void @copy_mcol_uc3(ptr noundef %49, ptr noundef nonnull %51) #16
  %52 = getelementptr i8, ptr %27, i64 15
  tail call fastcc void @copy_mcol_uc3(ptr noundef %52, ptr noundef %29) #16
  %53 = load i16, ptr %18, align 4, !tbaa !70
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds i32, ptr %3, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !53
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %2, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !53
  %60 = add nsw i32 %59, 9
  store i32 %60, ptr %58, align 4, !tbaa !53
  br label %61

61:                                               ; preds = %47, %15
  %62 = add nuw nsw i64 %16, 1
  %63 = getelementptr inbounds %struct.MFace, ptr %17, i64 1
  %64 = icmp eq i64 %62, %14
  br i1 %64, label %65, label %15, !llvm.loop !114

65:                                               ; preds = %61, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GPU_buffer_copy_uv(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 !PGOFuncName !115 {
  %6 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = tail call ptr %10(ptr noundef %0) #17
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = tail call i32 %13(ptr noundef %0) #17
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %8
  %17 = zext nneg i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %60
  %19 = phi i64 [ 0, %16 ], [ %61, %60 ]
  %20 = phi ptr [ %11, %16 ], [ %62, %60 ]
  %21 = getelementptr inbounds %struct.MFace, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 4, !tbaa !70
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds i32, ptr %3, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %2, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %1, i64 %29
  %31 = getelementptr inbounds %struct.MTFace, ptr %6, i64 %19
  tail call fastcc void @copy_v2_v2(ptr noundef %30, ptr noundef nonnull %31) #16
  %32 = getelementptr float, ptr %30, i64 2
  %33 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef %32, ptr noundef nonnull %33) #16
  %34 = getelementptr float, ptr %30, i64 4
  %35 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef %34, ptr noundef nonnull %35) #16
  %36 = load i16, ptr %21, align 4, !tbaa !70
  %37 = sext i16 %36 to i64
  %38 = getelementptr inbounds i32, ptr %3, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !53
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %2, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = add nsw i32 %42, 6
  store i32 %43, ptr %41, align 4, !tbaa !53
  %44 = getelementptr inbounds %struct.MFace, ptr %20, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !67
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %18
  %48 = getelementptr float, ptr %30, i64 6
  tail call fastcc void @copy_v2_v2(ptr noundef %48, ptr noundef nonnull %35) #16
  %49 = getelementptr float, ptr %30, i64 8
  %50 = getelementptr inbounds [4 x [2 x float]], ptr %31, i64 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef %49, ptr noundef nonnull %50) #16
  %51 = getelementptr float, ptr %30, i64 10
  tail call fastcc void @copy_v2_v2(ptr noundef %51, ptr noundef nonnull %31) #16
  %52 = load i16, ptr %21, align 4, !tbaa !70
  %53 = sext i16 %52 to i64
  %54 = getelementptr inbounds i32, ptr %3, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !53
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %2, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !53
  %59 = add nsw i32 %58, 6
  store i32 %59, ptr %57, align 4, !tbaa !53
  br label %60

60:                                               ; preds = %18, %47
  %61 = add nuw nsw i64 %19, 1
  %62 = getelementptr inbounds %struct.MFace, ptr %20, i64 1
  %63 = icmp eq i64 %61, %17
  br i1 %63, label %64, label %18, !llvm.loop !116

64:                                               ; preds = %60, %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GPU_buffer_copy_uv_texpaint(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 !PGOFuncName !117 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 4, !tbaa !61
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call ptr %9(ptr noundef %0) #17
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %12 = sext i32 %7 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @.str.12) #17
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = zext nneg i32 %7 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %23, %18 ]
  %20 = trunc i64 %19 to i32
  %21 = tail call ptr @DM_paint_uvlayer_active_get(ptr noundef %0, i32 noundef %20) #17
  %22 = getelementptr inbounds ptr, ptr %14, i64 %19
  store ptr %21, ptr %22, align 8, !tbaa !34
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %17
  br i1 %24, label %25, label %18, !llvm.loop !118

25:                                               ; preds = %18, %5
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %27 = tail call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %26, i32 noundef 5) #17
  %28 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %26, i32 noundef 5, i32 noundef %27) #17
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  %31 = tail call i32 %30(ptr noundef %0) #17
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %25
  %34 = zext nneg i32 %31 to i64
  br label %35

35:                                               ; preds = %33, %90
  %36 = phi i64 [ 0, %33 ], [ %91, %90 ]
  %37 = phi ptr [ %10, %33 ], [ %92, %90 ]
  %38 = getelementptr inbounds %struct.MFace, ptr %37, i64 0, i32 4
  %39 = load i16, ptr %38, align 4, !tbaa !70
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i32, ptr %3, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %2, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !53
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, ptr %1, i64 %46
  %48 = getelementptr inbounds ptr, ptr %14, i64 %40
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.MTFace, ptr %49, i64 %36
  tail call fastcc void @copy_v2_v2(ptr noundef %47, ptr noundef %50) #16
  %51 = getelementptr float, ptr %47, i64 2
  %52 = getelementptr inbounds %struct.MTFace, ptr %28, i64 %36
  tail call fastcc void @copy_v2_v2(ptr noundef %51, ptr noundef %52) #16
  %53 = getelementptr float, ptr %47, i64 4
  %54 = load ptr, ptr %48, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.MTFace, ptr %54, i64 %36, i32 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef %53, ptr noundef nonnull %55) #16
  %56 = getelementptr float, ptr %47, i64 6
  %57 = getelementptr inbounds [4 x [2 x float]], ptr %52, i64 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef %56, ptr noundef nonnull %57) #16
  %58 = getelementptr float, ptr %47, i64 8
  %59 = load ptr, ptr %48, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.MTFace, ptr %59, i64 %36, i32 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef %58, ptr noundef nonnull %60) #16
  %61 = getelementptr float, ptr %47, i64 10
  %62 = getelementptr inbounds [4 x [2 x float]], ptr %52, i64 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef %61, ptr noundef nonnull %62) #16
  %63 = load i32, ptr %41, align 4, !tbaa !53
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %2, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !53
  %67 = add nsw i32 %66, 12
  store i32 %67, ptr %65, align 4, !tbaa !53
  %68 = getelementptr inbounds %struct.MFace, ptr %37, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !67
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %35
  %72 = getelementptr float, ptr %47, i64 12
  %73 = load ptr, ptr %48, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.MTFace, ptr %73, i64 %36, i32 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef %72, ptr noundef nonnull %74) #16
  %75 = getelementptr float, ptr %47, i64 14
  tail call fastcc void @copy_v2_v2(ptr noundef %75, ptr noundef nonnull %62) #16
  %76 = getelementptr float, ptr %47, i64 16
  %77 = load ptr, ptr %48, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.MTFace, ptr %77, i64 %36, i32 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef %76, ptr noundef nonnull %78) #16
  %79 = getelementptr float, ptr %47, i64 18
  %80 = getelementptr inbounds [4 x [2 x float]], ptr %52, i64 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef %79, ptr noundef nonnull %80) #16
  %81 = getelementptr float, ptr %47, i64 20
  %82 = load ptr, ptr %48, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.MTFace, ptr %82, i64 %36
  tail call fastcc void @copy_v2_v2(ptr noundef %81, ptr noundef %83) #16
  %84 = getelementptr float, ptr %47, i64 22
  tail call fastcc void @copy_v2_v2(ptr noundef %84, ptr noundef %52) #16
  %85 = load i32, ptr %41, align 4, !tbaa !53
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %2, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !53
  %89 = add nsw i32 %88, 12
  store i32 %89, ptr %87, align 4, !tbaa !53
  br label %90

90:                                               ; preds = %71, %35
  %91 = add nuw nsw i64 %36, 1
  %92 = getelementptr inbounds %struct.MFace, ptr %37, i64 1
  %93 = icmp eq i64 %91, %34
  br i1 %93, label %94, label %35, !llvm.loop !119

94:                                               ; preds = %90, %25
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %95(ptr noundef %14) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GPU_buffer_copy_edge(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !120 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = tail call ptr %7(ptr noundef %0) #17
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = tail call i32 %10(ptr noundef %0) #17
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.GPUDrawObject, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = zext nneg i32 %11 to i64
  br label %19

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %35, %19 ]
  %21 = phi ptr [ %8, %13 ], [ %36, %19 ]
  %22 = load i32, ptr %21, align 4, !tbaa !122
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.GPUVertPointLink, ptr %17, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !89
  %26 = shl nuw nsw i64 %20, 1
  %27 = getelementptr inbounds i32, ptr %1, i64 %26
  store i32 %25, ptr %27, align 4, !tbaa !53
  %28 = getelementptr inbounds %struct.MEdge, ptr %21, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !124
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.GPUVertPointLink, ptr %17, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !89
  %33 = or disjoint i64 %26, 1
  %34 = getelementptr inbounds i32, ptr %1, i64 %33
  store i32 %32, ptr %34, align 4, !tbaa !53
  %35 = add nuw nsw i64 %20, 1
  %36 = getelementptr inbounds %struct.MEdge, ptr %21, i64 1
  %37 = icmp eq i64 %35, %18
  br i1 %37, label %38, label %19, !llvm.loop !125

38:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GPU_buffer_copy_uvedge(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !126 {
  %6 = alloca %struct.MFace, align 4
  %7 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !127
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %15 = getelementptr inbounds %struct.MFace, ptr %6, i64 0, i32 3
  br label %16

16:                                               ; preds = %13, %36
  %17 = phi i32 [ 0, %13 ], [ %39, %36 ]
  %18 = phi i32 [ 0, %13 ], [ %40, %36 ]
  %19 = phi ptr [ %7, %13 ], [ %41, %36 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #18
  %20 = load ptr, ptr %14, align 8, !tbaa !128
  call void %20(ptr noundef nonnull %0, i32 noundef %18, ptr noundef nonnull %6) #17
  %21 = zext nneg i32 %17 to i64
  %22 = getelementptr inbounds float, ptr %1, i64 %21
  call fastcc void @copy_v2_v2(ptr noundef %22, ptr noundef nonnull %19) #16
  %23 = getelementptr float, ptr %22, i64 2
  %24 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 1
  call fastcc void @copy_v2_v2(ptr noundef %23, ptr noundef nonnull %24) #16
  %25 = getelementptr float, ptr %22, i64 4
  call fastcc void @copy_v2_v2(ptr noundef %25, ptr noundef nonnull %24) #16
  %26 = getelementptr float, ptr %22, i64 6
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 2
  call fastcc void @copy_v2_v2(ptr noundef %26, ptr noundef nonnull %27) #16
  %28 = load i32, ptr %15, align 4, !tbaa !67
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr float, ptr %22, i64 8
  call fastcc void @copy_v2_v2(ptr noundef %30, ptr noundef nonnull %27) #16
  %31 = getelementptr float, ptr %22, i64 10
  br i1 %29, label %36, label %32

32:                                               ; preds = %16
  %33 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 3
  call fastcc void @copy_v2_v2(ptr noundef %31, ptr noundef nonnull %33) #16
  %34 = getelementptr float, ptr %22, i64 12
  call fastcc void @copy_v2_v2(ptr noundef %34, ptr noundef nonnull %33) #16
  %35 = getelementptr float, ptr %22, i64 14
  br label %36

36:                                               ; preds = %16, %32
  %37 = phi ptr [ %35, %32 ], [ %31, %16 ]
  %38 = phi i32 [ 16, %32 ], [ 12, %16 ]
  call fastcc void @copy_v2_v2(ptr noundef %37, ptr noundef nonnull %19) #16
  %39 = add nuw nsw i32 %17, %38
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #18
  %40 = add nuw nsw i32 %18, 1
  %41 = getelementptr inbounds %struct.MTFace, ptr %19, i64 1
  %42 = load i32, ptr %10, align 8, !tbaa !127
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %16, label %44, !llvm.loop !129

44:                                               ; preds = %36, %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_vertex_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32884) #17
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.GPUBuffer, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !54
  tail call void %8(i32 noundef 34962, i32 noundef %13) #17
  br label %20

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct.GPUBuffer, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  br label %20

20:                                               ; preds = %14, %7
  %21 = phi ptr [ %19, %14 ], [ null, %7 ]
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %21) #17
  %22 = load i32, ptr @GLStates, align 4, !tbaa !53
  %23 = or i32 %22, 1
  store i32 %23, ptr @GLStates, align 4, !tbaa !53
  br label %24

24:                                               ; preds = %1, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !130 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @GPU_drawobject_new(ptr noundef nonnull %0) #16
  store ptr %7, ptr %3, align 8, !tbaa !98
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call fastcc ptr @gpu_drawobject_buffer_from_type(ptr noundef %9, i32 noundef %1) #16
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @gpu_buffer_setup_type(ptr noundef nonnull %0, i32 noundef %1) #16
  store ptr %14, ptr %10, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  ret ptr %16
}

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_normal_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 1) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32885) #17
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !54
  tail call void %8(i32 noundef 34962, i32 noundef %14) #17
  br label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.GPUDrawObject, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  br label %22

22:                                               ; preds = %15, %7
  %23 = phi ptr [ %21, %15 ], [ null, %7 ]
  tail call void @glNormalPointer(i32 noundef 5126, i32 noundef 0, ptr noundef %23) #17
  %24 = load i32, ptr @GLStates, align 4, !tbaa !53
  %25 = or i32 %24, 2
  store i32 %25, ptr @GLStates, align 4, !tbaa !53
  br label %26

26:                                               ; preds = %1, %22
  ret void
}

; Function Attrs: optsize
declare void @glNormalPointer(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_uv_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 3) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32888) #17
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !54
  tail call void %8(i32 noundef 34962, i32 noundef %14) #17
  br label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.GPUDrawObject, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  br label %22

22:                                               ; preds = %15, %7
  %23 = phi ptr [ %21, %15 ], [ null, %7 ]
  tail call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %23) #17
  %24 = load i32, ptr @GLStates, align 4, !tbaa !53
  %25 = or i32 %24, 4
  store i32 %25, ptr @GLStates, align 4, !tbaa !53
  br label %26

26:                                               ; preds = %1, %22
  ret void
}

; Function Attrs: optsize
declare void @glTexCoordPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_texpaint_uv_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 4) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32888) #17
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !54
  tail call void %8(i32 noundef 34962, i32 noundef %14) #17
  tail call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 16, ptr noundef null) #17
  %15 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %15(i32 noundef 33986) #17
  tail call void @glEnableClientState(i32 noundef 32888) #17
  br label %30

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.GPUDrawObject, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.GPUBuffer, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  tail call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 16, ptr noundef %22) #17
  %23 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %23(i32 noundef 33986) #17
  tail call void @glEnableClientState(i32 noundef 32888) #17
  %24 = load ptr, ptr %17, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.GPUDrawObject, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.GPUBuffer, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  br label %30

30:                                               ; preds = %16, %7
  %31 = phi ptr [ %29, %16 ], [ inttoptr (i64 8 to ptr), %7 ]
  tail call void @glTexCoordPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 16, ptr noundef nonnull %31) #17
  %32 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %32(i32 noundef 33984) #17
  %33 = load i32, ptr @GLStates, align 4, !tbaa !53
  %34 = or i32 %33, 12
  store i32 %34, ptr @GLStates, align 4, !tbaa !53
  br label %35

35:                                               ; preds = %1, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_color_setup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @GPU_drawobject_new(ptr noundef nonnull %0) #16
  store ptr %7, ptr %3, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !131
  %10 = and i32 %9, -3
  store i32 %10, ptr %8, align 8, !tbaa !131
  br label %26

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !132
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %29, label %20

20:                                               ; preds = %16, %11
  %21 = tail call fastcc ptr @gpu_drawobject_buffer_from_type(ptr noundef nonnull %4, i32 noundef 2) #16
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @GPU_buffer_free(ptr noundef %22) #16
  store ptr null, ptr %21, align 8, !tbaa !34
  %23 = load i32, ptr %12, align 8, !tbaa !131
  %24 = and i32 %23, -3
  store i32 %24, ptr %12, align 8, !tbaa !131
  %25 = load ptr, ptr %3, align 8, !tbaa !98
  br label %26

26:                                               ; preds = %6, %20
  %27 = phi ptr [ %25, %20 ], [ %7, %6 ]
  %28 = getelementptr inbounds %struct.GPUDrawObject, ptr %27, i64 0, i32 8
  store i32 %1, ptr %28, align 8, !tbaa !132
  br label %29

29:                                               ; preds = %26, %16
  %30 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef nonnull %0, i32 noundef 2) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %29
  tail call void @glEnableClientState(i32 noundef 32886) #17
  %33 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %37 = load ptr, ptr %3, align 8, !tbaa !98
  %38 = getelementptr inbounds %struct.GPUDrawObject, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !102
  %40 = getelementptr inbounds %struct.GPUBuffer, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !54
  tail call void %36(i32 noundef 34962, i32 noundef %41) #17
  br label %48

42:                                               ; preds = %32
  %43 = load ptr, ptr %3, align 8, !tbaa !98
  %44 = getelementptr inbounds %struct.GPUDrawObject, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !102
  %46 = getelementptr inbounds %struct.GPUBuffer, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !55
  br label %48

48:                                               ; preds = %42, %35
  %49 = phi ptr [ %47, %42 ], [ null, %35 ]
  tail call void @glColorPointer(i32 noundef 3, i32 noundef 5121, i32 noundef 0, ptr noundef %49) #17
  %50 = load i32, ptr @GLStates, align 4, !tbaa !53
  %51 = or i32 %50, 16
  store i32 %51, ptr @GLStates, align 4, !tbaa !53
  br label %52

52:                                               ; preds = %29, %48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @gpu_drawobject_buffer_from_type(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !133 {
  switch i32 %1, label %15 [
    i32 0, label %16
    i32 1, label %3
    i32 2, label %5
    i32 3, label %7
    i32 4, label %9
    i32 5, label %11
    i32 6, label %13
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 1
  br label %16

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 3
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 2
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 2
  br label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 4
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 5
  br label %16

15:                                               ; preds = %2
  unreachable

16:                                               ; preds = %2, %13, %11, %9, %7, %5, %3
  %17 = phi ptr [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ %0, %2 ]
  ret ptr %17
}

; Function Attrs: optsize
declare void @glColorPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_edge_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 5) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %4
  tail call void @glEnableClientState(i32 noundef 32884) #17
  %8 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.GPUBuffer, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !54
  tail call void %11(i32 noundef 34962, i32 noundef %16) #17
  br label %23

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.GPUBuffer, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi ptr [ %22, %17 ], [ null, %10 ]
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %24) #17
  %25 = load i32, ptr @GLStates, align 4, !tbaa !53
  %26 = or i32 %25, 1
  store i32 %26, ptr @GLStates, align 4, !tbaa !53
  %27 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = getelementptr inbounds %struct.GPUDrawObject, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !103
  %35 = getelementptr inbounds %struct.GPUBuffer, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !54
  tail call void %30(i32 noundef 34963, i32 noundef %36) #17
  %37 = load i32, ptr @GLStates, align 4, !tbaa !53
  br label %38

38:                                               ; preds = %29, %23
  %39 = phi i32 [ %37, %29 ], [ %26, %23 ]
  %40 = or i32 %39, 32
  store i32 %40, ptr @GLStates, align 4, !tbaa !53
  br label %41

41:                                               ; preds = %4, %1, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_uvedge_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gpu_buffer_setup_common(ptr noundef %0, i32 noundef 6) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32884) #17
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.GPUDrawObject, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !54
  tail call void %8(i32 noundef 34962, i32 noundef %14) #17
  br label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.GPUDrawObject, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  br label %22

22:                                               ; preds = %15, %7
  %23 = phi ptr [ %21, %15 ], [ null, %7 ]
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %23) #17
  %24 = load i32, ptr @GLStates, align 4, !tbaa !53
  %25 = or i32 %24, 1
  store i32 %25, ptr @GLStates, align 4, !tbaa !53
  br label %26

26:                                               ; preds = %1, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @GPU_attrib_element_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %18
  %7 = phi i64 [ 0, %4 ], [ %20, %18 ]
  %8 = phi i32 [ 0, %4 ], [ %19, %18 ]
  %9 = getelementptr inbounds %struct.GPUAttrib, ptr %0, i64 %7, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !134
  %11 = tail call fastcc i32 @GPU_typesize(i32 noundef %10) #16, !range !136
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.GPUAttrib, ptr %0, i64 %7, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !137
  %16 = mul nsw i32 %15, %11
  %17 = add nsw i32 %16, %8
  br label %18

18:                                               ; preds = %13, %6
  %19 = phi i32 [ %17, %13 ], [ %8, %6 ]
  %20 = add nuw nsw i64 %7, 1
  %21 = icmp eq i64 %20, %5
  br i1 %21, label %22, label %6, !llvm.loop !138

22:                                               ; preds = %18, %2
  %23 = phi i32 [ 0, %2 ], [ %19, %18 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @GPU_typesize(i32 noundef %0) unnamed_addr #3 !PGOFuncName !139 {
  %2 = add i32 %0, -5120
  %3 = icmp ult i32 %2, 7
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [7 x i32], ptr @switch.table.GPU_typesize, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_interleaved_attrib_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %3, %9
  %5 = phi i64 [ 0, %3 ], [ %11, %9 ]
  %6 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !140
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @__glewDisableVertexAttribArrayARB, align 8, !tbaa !34
  tail call void %10(i32 noundef %7) #17
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %4, !llvm.loop !141

13:                                               ; preds = %4, %9
  %14 = tail call i32 @GPU_attrib_element_size(ptr noundef %1, i32 noundef %2) #16
  %15 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 1
  %21 = zext nneg i32 %2 to i64
  br label %57

22:                                               ; preds = %13
  %23 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !54
  tail call void %23(i32 noundef 34962, i32 noundef %25) #17
  %26 = icmp sgt i32 %2, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = zext nneg i32 %2 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ 0, %27 ], [ %52, %29 ]
  %31 = phi i64 [ 0, %27 ], [ %47, %29 ]
  %32 = load ptr, ptr @__glewEnableVertexAttribArrayARB, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %30
  %34 = load i32, ptr %33, align 4, !tbaa !140
  tail call void %32(i32 noundef %34) #17
  %35 = load ptr, ptr @__glewVertexAttribPointerARB, align 8, !tbaa !34
  %36 = load i32, ptr %33, align 4, !tbaa !140
  %37 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %30, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !137
  %39 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %30, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !134
  %41 = inttoptr i64 %31 to ptr
  tail call void %35(i32 noundef %36, i32 noundef %38, i32 noundef %40, i8 noundef zeroext 0, i32 noundef %14, ptr noundef %41) #17
  %42 = load i32, ptr %37, align 4, !tbaa !137
  %43 = load i32, ptr %39, align 4, !tbaa !134
  %44 = tail call fastcc i32 @GPU_typesize(i32 noundef %43) #16, !range !136
  %45 = mul nsw i32 %44, %42
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %31, %46
  %48 = load i32, ptr %33, align 4, !tbaa !140
  %49 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %30
  store i32 %48, ptr %49, align 4, !tbaa !140
  %50 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %30, i32 1
  store i32 %42, ptr %50, align 4, !tbaa !137
  %51 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %30, i32 2
  store i32 %43, ptr %51, align 4, !tbaa !134
  %52 = add nuw nsw i64 %30, 1
  %53 = icmp eq i64 %52, %28
  br i1 %53, label %54, label %29, !llvm.loop !142

54:                                               ; preds = %29, %22
  %55 = sext i32 %2 to i64
  %56 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %55
  store i32 -1, ptr %56, align 4, !tbaa !140
  br label %79

57:                                               ; preds = %19, %57
  %58 = phi i64 [ 0, %19 ], [ %77, %57 ]
  %59 = phi i64 [ 0, %19 ], [ %76, %57 ]
  %60 = load ptr, ptr @__glewEnableVertexAttribArrayARB, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %58
  %62 = load i32, ptr %61, align 4, !tbaa !140
  tail call void %60(i32 noundef %62) #17
  %63 = load ptr, ptr @__glewVertexAttribPointerARB, align 8, !tbaa !34
  %64 = load i32, ptr %61, align 4, !tbaa !140
  %65 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %58, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !137
  %67 = getelementptr inbounds %struct.GPUAttrib, ptr %1, i64 %58, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !134
  %69 = load ptr, ptr %20, align 8, !tbaa !55
  %70 = getelementptr inbounds i8, ptr %69, i64 %59
  tail call void %63(i32 noundef %64, i32 noundef %66, i32 noundef %68, i8 noundef zeroext 0, i32 noundef %14, ptr noundef %70) #17
  %71 = load i32, ptr %65, align 4, !tbaa !137
  %72 = load i32, ptr %67, align 4, !tbaa !134
  %73 = tail call fastcc i32 @GPU_typesize(i32 noundef %72) #16, !range !136
  %74 = mul nsw i32 %73, %71
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %59, %75
  %77 = add nuw nsw i64 %58, 1
  %78 = icmp eq i64 %77, %21
  br i1 %78, label %79, label %57, !llvm.loop !143

79:                                               ; preds = %57, %17, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_buffer_unbind() local_unnamed_addr #0 {
  %1 = load i32, ptr @GLStates, align 4, !tbaa !53
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  tail call void @glDisableClientState(i32 noundef 32884) #17
  %5 = load i32, ptr @GLStates, align 4, !tbaa !53
  br label %6

6:                                                ; preds = %4, %0
  %7 = phi i32 [ %5, %4 ], [ %1, %0 ]
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @glDisableClientState(i32 noundef 32885) #17
  %11 = load i32, ptr @GLStates, align 4, !tbaa !53
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %7, %6 ]
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call void @glDisableClientState(i32 noundef 32888) #17
  %17 = load i32, ptr @GLStates, align 4, !tbaa !53
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %17, %16 ], [ %13, %12 ]
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %23(i32 noundef 33986) #17
  tail call void @glDisableClientState(i32 noundef 32888) #17
  %24 = load ptr, ptr @__glewClientActiveTexture, align 8, !tbaa !34
  tail call void %24(i32 noundef 33984) #17
  %25 = load i32, ptr @GLStates, align 4, !tbaa !53
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %25, %22 ], [ %19, %18 ]
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  tail call void @glDisableClientState(i32 noundef 32886) #17
  %31 = load i32, ptr @GLStates, align 4, !tbaa !53
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ %27, %26 ]
  %34 = and i32 %33, 32
  %35 = icmp ne i32 %34, 0
  %36 = load i32, ptr @useVBOs, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %40(i32 noundef 34963, i32 noundef 0) #17
  br label %41

41:                                               ; preds = %39, %32
  store i32 0, ptr @GLStates, align 4, !tbaa !53
  br label %42

42:                                               ; preds = %41, %47
  %43 = phi i64 [ 0, %41 ], [ %49, %47 ]
  %44 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr @attribData, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !140
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr @__glewDisableVertexAttribArrayARB, align 8, !tbaa !34
  tail call void %48(i32 noundef %45) #17
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, 32
  br i1 %50, label %51, label %42, !llvm.loop !144

51:                                               ; preds = %42, %47
  %52 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %55(i32 noundef 34962, i32 noundef 0) #17
  br label %56

56:                                               ; preds = %54, %51
  ret void
}

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_color_switch(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = load i32, ptr @GLStates, align 4, !tbaa !53
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %2, label %12, label %6

6:                                                ; preds = %1
  br i1 %5, label %7, label %9

7:                                                ; preds = %6
  tail call void @glEnableClientState(i32 noundef 32886) #17
  %8 = load i32, ptr @GLStates, align 4, !tbaa !53
  br label %9

9:                                                ; preds = %7, %6
  %10 = phi i32 [ %8, %7 ], [ %3, %6 ]
  %11 = or i32 %10, 16
  br label %18

12:                                               ; preds = %1
  br i1 %5, label %15, label %13

13:                                               ; preds = %12
  tail call void @glDisableClientState(i32 noundef 32886) #17
  %14 = load i32, ptr @GLStates, align 4, !tbaa !53
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ %14, %13 ], [ %3, %12 ]
  %17 = and i32 %16, -17
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %17, %15 ], [ %11, %9 ]
  store i32 %19, ptr @GLStates, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @GPU_buffer_legacy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !145
  %3 = and i16 %2, 8
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @GPU_drawobject_new(ptr noundef nonnull %0) #16
  store ptr %10, ptr %6, align 8, !tbaa !98
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %13 = getelementptr inbounds %struct.GPUDrawObject, ptr %12, i64 0, i32 15
  %14 = load i8, ptr %13, align 4, !tbaa !150
  br label %15

15:                                               ; preds = %1, %11
  %16 = phi i8 [ %14, %11 ], [ 1, %1 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_buffer_lock(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !54
  tail call void %7(i32 noundef 34962, i32 noundef %9) #17
  %10 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %11 = tail call ptr %10(i32 noundef 34962, i32 noundef 35001) #17
  br label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  br label %15

15:                                               ; preds = %1, %12, %6
  %16 = phi ptr [ %11, %6 ], [ %14, %12 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_buffer_lock_stream(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !54
  tail call void %7(i32 noundef 34962, i32 noundef %9) #17
  %10 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %11 = load i32, ptr %0, align 8, !tbaa !50
  %12 = sext i32 %11 to i64
  tail call void %10(i32 noundef 34962, i64 noundef %12, ptr noundef null, i32 noundef 35040) #17
  %13 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %14 = tail call ptr %13(i32 noundef 34962, i32 noundef 35001) #17
  br label %18

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  br label %18

18:                                               ; preds = %1, %15, %6
  %19 = phi ptr [ %14, %6 ], [ %17, %15 ], [ null, %1 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_buffer_unlock(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %8 = tail call zeroext i8 %7(i32 noundef 34962) #17
  br label %9

9:                                                ; preds = %6, %4
  %10 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %10(i32 noundef 34962, i32 noundef 0) #17
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_buffer_draw_elements(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = sext i32 %2 to i64
  %9 = shl nsw i64 %8, 2
  %10 = inttoptr i64 %9 to ptr
  br label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.GPUBuffer, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi ptr [ %10, %7 ], [ %15, %11 ]
  tail call void @glDrawElements(i32 noundef %1, i32 noundef %3, i32 noundef 5125, ptr noundef %17) #17
  ret void
}

; Function Attrs: optsize
declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_update_mesh_pbvh_buffers(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x i16], align 2
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 7
  store ptr %4, ptr %11, align 8, !tbaa !151
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  store i8 %6, ptr %12, align 8, !tbaa !154
  %13 = tail call zeroext i8 @GPU_material_use_matcaps_get() #17
  %14 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  store i8 %13, ptr %14, align 1, !tbaa !155
  %15 = load i32, ptr %0, align 8, !tbaa !156
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %268, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  %19 = load i32, ptr %18, align 4, !tbaa !157
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  %23 = load i32, ptr %22, align 4, !tbaa !158
  %24 = mul i32 %23, 3
  br label %25

25:                                               ; preds = %17, %21
  %26 = phi i32 [ %24, %21 ], [ %3, %17 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.GPU_update_mesh_pbvh_buffers.diffuse_color, i64 16, i1 false)
  %27 = icmp eq i8 %13, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float 1.000000e+00, ptr %29, align 8, !tbaa !159
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %8, align 16, !tbaa !159
  br label %43

30:                                               ; preds = %25
  %31 = icmp eq i8 %6, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !160
  %35 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !161
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MFace, ptr %34, i64 %38, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !70
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %41, 1
  call void @GPU_material_diffuse_get(i32 noundef %42, ptr noundef nonnull %8) #17
  br label %43

43:                                               ; preds = %30, %32, %28
  %44 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21
  call fastcc void @copy_v4_v4(ptr noundef nonnull %44, ptr noundef nonnull %8) #16
  %45 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %46 = load i32, ptr %0, align 8, !tbaa !156
  call void %45(i32 noundef 34962, i32 noundef %46) #17
  %47 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %48 = sext i32 %26 to i64
  %49 = mul nsw i64 %48, 24
  call void %47(i32 noundef 34962, i64 noundef %49, ptr noundef null, i32 noundef 35044) #17
  %50 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %51 = call ptr %50(i32 noundef 34962, i32 noundef 35001) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %264, label %53

53:                                               ; preds = %43
  %54 = load i32, ptr %18, align 4, !tbaa !157
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = icmp sgt i32 %3, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %56
  %59 = zext nneg i32 %3 to i64
  br label %76

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !162
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %261

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %66 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %67 = icmp eq ptr %4, null
  br label %156

68:                                               ; preds = %76, %56
  %69 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %70 = load i32, ptr %69, align 8, !tbaa !162
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %261

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %74 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %75 = icmp eq ptr %4, null
  br label %87

76:                                               ; preds = %58, %76
  %77 = phi i64 [ 0, %58 ], [ %85, %76 ]
  %78 = getelementptr inbounds i32, ptr %2, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !53
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MVert, ptr %1, i64 %80
  %82 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %77
  call fastcc void @copy_v3_v3(ptr noundef nonnull %82, ptr noundef %81) #16
  %83 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %77, i32 1
  %84 = getelementptr inbounds %struct.MVert, ptr %1, i64 %80, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %83, ptr noundef nonnull align 4 dereferenceable(6) %84, i64 6, i1 false)
  %85 = add nuw nsw i64 %77, 1
  %86 = icmp eq i64 %85, %59
  br i1 %86, label %68, label %76, !llvm.loop !163

87:                                               ; preds = %72, %151
  %88 = phi i64 [ 0, %72 ], [ %152, %151 ]
  %89 = load ptr, ptr %73, align 8, !tbaa !160
  %90 = load ptr, ptr %74, align 8, !tbaa !161
  %91 = getelementptr inbounds i32, ptr %90, i64 %88
  %92 = load i32, ptr %91, align 4, !tbaa !53
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32], ptr %5, i64 %88
  %95 = load i32, ptr %94, align 4, !tbaa !53
  %96 = sext i32 %95 to i64
  br i1 %75, label %97, label %110

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %96, i32 3
  call void @rgb_float_to_uchar(ptr noundef nonnull %98, ptr noundef nonnull %8) #17
  %99 = getelementptr inbounds [4 x i32], ptr %5, i64 %88, i64 1
  %100 = load i32, ptr %99, align 4, !tbaa !53
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %101, i32 3
  call void @rgb_float_to_uchar(ptr noundef nonnull %102, ptr noundef nonnull %8) #17
  %103 = getelementptr inbounds [4 x i32], ptr %5, i64 %88, i64 2
  %104 = load i32, ptr %103, align 4, !tbaa !53
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %105, i32 3
  call void @rgb_float_to_uchar(ptr noundef nonnull %106, ptr noundef nonnull %8) #17
  %107 = getelementptr inbounds %struct.MFace, ptr %89, i64 %93, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !67
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %151, label %146

110:                                              ; preds = %87
  %111 = getelementptr inbounds %struct.MFace, ptr %89, i64 %93
  %112 = load i32, ptr %111, align 4, !tbaa !92
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds float, ptr %4, i64 %113
  %115 = load float, ptr %114, align 4, !tbaa !159
  %116 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %96, i32 3
  call fastcc void @gpu_color_from_mask_copy(float noundef %115, ptr noundef nonnull %8, ptr noundef nonnull %116) #16
  %117 = getelementptr inbounds [4 x i32], ptr %5, i64 %88, i64 1
  %118 = load i32, ptr %117, align 4, !tbaa !53
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.MFace, ptr %89, i64 %93, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !93
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds float, ptr %4, i64 %122
  %124 = load float, ptr %123, align 4, !tbaa !159
  %125 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %119, i32 3
  call fastcc void @gpu_color_from_mask_copy(float noundef %124, ptr noundef nonnull %8, ptr noundef nonnull %125) #16
  %126 = getelementptr inbounds [4 x i32], ptr %5, i64 %88, i64 2
  %127 = load i32, ptr %126, align 4, !tbaa !53
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.MFace, ptr %89, i64 %93, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !94
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds float, ptr %4, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !159
  %134 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %128, i32 3
  call fastcc void @gpu_color_from_mask_copy(float noundef %133, ptr noundef nonnull %8, ptr noundef nonnull %134) #16
  %135 = getelementptr inbounds %struct.MFace, ptr %89, i64 %93, i32 3
  %136 = load i32, ptr %135, align 4, !tbaa !67
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %110
  %139 = getelementptr inbounds [4 x i32], ptr %5, i64 %88, i64 3
  %140 = load i32, ptr %139, align 4, !tbaa !53
  %141 = sext i32 %140 to i64
  %142 = zext i32 %136 to i64
  %143 = getelementptr inbounds float, ptr %4, i64 %142
  %144 = load float, ptr %143, align 4, !tbaa !159
  %145 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %141, i32 3
  call fastcc void @gpu_color_from_mask_copy(float noundef %144, ptr noundef nonnull %8, ptr noundef nonnull %145) #16
  br label %151

146:                                              ; preds = %97
  %147 = getelementptr inbounds [4 x i32], ptr %5, i64 %88, i64 3
  %148 = load i32, ptr %147, align 4, !tbaa !53
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.VertexBufferFormat, ptr %51, i64 %149, i32 3
  call void @rgb_float_to_uchar(ptr noundef nonnull %150, ptr noundef nonnull %8) #17
  br label %151

151:                                              ; preds = %110, %138, %146, %97
  %152 = add nuw nsw i64 %88, 1
  %153 = load i32, ptr %69, align 8, !tbaa !162
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %87, label %261, !llvm.loop !164

156:                                              ; preds = %64, %254
  %157 = phi i64 [ 0, %64 ], [ %257, %254 ]
  %158 = phi ptr [ %51, %64 ], [ %256, %254 ]
  %159 = phi float [ undef, %64 ], [ %255, %254 ]
  %160 = load ptr, ptr %65, align 8, !tbaa !160
  %161 = load ptr, ptr %66, align 8, !tbaa !161
  %162 = getelementptr inbounds i32, ptr %161, i64 %157
  %163 = load i32, ptr %162, align 4, !tbaa !53
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.MFace, ptr %160, i64 %164
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #18
  %166 = call zeroext i8 @paint_is_face_hidden(ptr noundef %165, ptr noundef %1) #17
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %254

168:                                              ; preds = %156
  %169 = getelementptr inbounds %struct.MFace, ptr %160, i64 %164, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !53
  %171 = icmp eq i32 %170, 0
  %172 = load i32, ptr %165, align 4, !tbaa !53
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.MVert, ptr %1, i64 %173
  %175 = getelementptr inbounds i32, ptr %165, i64 1
  %176 = load i32, ptr %175, align 4, !tbaa !53
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.MVert, ptr %1, i64 %177
  %179 = getelementptr inbounds i32, ptr %165, i64 2
  %180 = load i32, ptr %179, align 4, !tbaa !53
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.MVert, ptr %1, i64 %181
  br i1 %171, label %208, label %183

183:                                              ; preds = %168
  %184 = zext i32 %170 to i64
  %185 = getelementptr inbounds %struct.MVert, ptr %1, i64 %184
  %186 = call float @normal_quad_v3(ptr noundef nonnull %9, ptr noundef %174, ptr noundef %178, ptr noundef %182, ptr noundef nonnull %185) #17
  br i1 %67, label %226, label %187

187:                                              ; preds = %183
  %188 = load i32, ptr %165, align 4, !tbaa !53
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds float, ptr %4, i64 %189
  %191 = load float, ptr %190, align 4, !tbaa !159
  %192 = load i32, ptr %175, align 4, !tbaa !53
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds float, ptr %4, i64 %193
  %195 = load float, ptr %194, align 4, !tbaa !159
  %196 = fadd float %191, %195
  %197 = load i32, ptr %179, align 4, !tbaa !53
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds float, ptr %4, i64 %198
  %200 = load float, ptr %199, align 4, !tbaa !159
  %201 = fadd float %196, %200
  %202 = load i32, ptr %169, align 4, !tbaa !53
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds float, ptr %4, i64 %203
  %205 = load float, ptr %204, align 4, !tbaa !159
  %206 = fadd float %201, %205
  %207 = fmul float %206, 2.500000e-01
  br label %226

208:                                              ; preds = %168
  %209 = call float @normal_tri_v3(ptr noundef nonnull %9, ptr noundef %174, ptr noundef %178, ptr noundef %182) #17
  br i1 %67, label %226, label %210

210:                                              ; preds = %208
  %211 = load i32, ptr %165, align 4, !tbaa !53
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds float, ptr %4, i64 %212
  %214 = load float, ptr %213, align 4, !tbaa !159
  %215 = load i32, ptr %175, align 4, !tbaa !53
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds float, ptr %4, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !159
  %219 = fadd float %214, %218
  %220 = load i32, ptr %179, align 4, !tbaa !53
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds float, ptr %4, i64 %221
  %223 = load float, ptr %222, align 4, !tbaa !159
  %224 = fadd float %219, %223
  %225 = fdiv float %224, 3.000000e+00
  br label %226

226:                                              ; preds = %208, %210, %183, %187
  %227 = phi float [ %207, %187 ], [ %159, %183 ], [ %225, %210 ], [ %159, %208 ]
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  br label %228

228:                                              ; preds = %226, %250
  %229 = phi i1 [ true, %226 ], [ false, %250 ]
  %230 = phi i64 [ 0, %226 ], [ 1, %250 ]
  %231 = phi ptr [ %158, %226 ], [ %247, %250 ]
  br label %232

232:                                              ; preds = %228, %246
  %233 = phi i64 [ 0, %228 ], [ %248, %246 ]
  %234 = phi ptr [ %231, %228 ], [ %247, %246 ]
  %235 = getelementptr inbounds [2 x [3 x i32]], ptr @__const.GPU_update_mesh_pbvh_buffers.vi, i64 0, i64 %230, i64 %233
  %236 = load i32, ptr %235, align 4, !tbaa !53
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, ptr %165, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !53
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.MVert, ptr %1, i64 %240
  call fastcc void @copy_v3_v3(ptr noundef %234, ptr noundef %241) #16
  %242 = getelementptr inbounds %struct.VertexBufferFormat, ptr %234, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %242, ptr noundef nonnull align 2 dereferenceable(6) %10, i64 6, i1 false)
  %243 = getelementptr inbounds %struct.VertexBufferFormat, ptr %234, i64 0, i32 3
  br i1 %67, label %245, label %244

244:                                              ; preds = %232
  call fastcc void @gpu_color_from_mask_copy(float noundef %227, ptr noundef nonnull %8, ptr noundef nonnull %243) #16
  br label %246

245:                                              ; preds = %232
  call void @rgb_float_to_uchar(ptr noundef nonnull %243, ptr noundef nonnull %8) #17
  br label %246

246:                                              ; preds = %245, %244
  %247 = getelementptr inbounds %struct.VertexBufferFormat, ptr %234, i64 1
  %248 = add nuw nsw i64 %233, 1
  %249 = icmp eq i64 %248, 3
  br i1 %249, label %250, label %232, !llvm.loop !165

250:                                              ; preds = %246
  %251 = load i32, ptr %169, align 4, !tbaa !67
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %252, %229
  br i1 %253, label %228, label %254, !llvm.loop !166

254:                                              ; preds = %250, %156
  %255 = phi float [ %159, %156 ], [ %227, %250 ]
  %256 = phi ptr [ %158, %156 ], [ %247, %250 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  %257 = add nuw nsw i64 %157, 1
  %258 = load i32, ptr %61, align 8, !tbaa !162
  %259 = sext i32 %258 to i64
  %260 = icmp slt i64 %257, %259
  br i1 %260, label %156, label %261, !llvm.loop !167

261:                                              ; preds = %151, %254, %68, %60
  %262 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %263 = call zeroext i8 %262(i32 noundef 34962) #17
  br label %266

264:                                              ; preds = %43
  %265 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %265(i32 noundef 1, ptr noundef nonnull %0) #17
  store i32 0, ptr %0, align 8, !tbaa !156
  br label %266

266:                                              ; preds = %264, %261
  %267 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  call void %267(i32 noundef 34962, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  br label %268

268:                                              ; preds = %266, %7
  %269 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 4
  store ptr %1, ptr %269, align 8, !tbaa !168
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @GPU_material_use_matcaps_get() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @GPU_material_diffuse_get(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !169 {
  %3 = load float, ptr %1, align 4, !tbaa !159
  store float %3, ptr %0, align 4, !tbaa !159
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !159
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !159
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !159
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !159
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !159
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !170 {
  %3 = load float, ptr %1, align 4, !tbaa !159
  store float %3, ptr %0, align 4, !tbaa !159
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !159
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !159
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !159
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gpu_color_from_mask_copy(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !PGOFuncName !171 {
  %4 = tail call fastcc float @gpu_color_from_mask(float noundef %0) #16
  %5 = fmul float %4, 2.550000e+02
  %6 = load float, ptr %1, align 4, !tbaa !159
  %7 = fmul float %6, %5
  %8 = fptoui float %7 to i8
  store i8 %8, ptr %2, align 1, !tbaa !172
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !159
  %11 = fmul float %5, %10
  %12 = fptoui float %11 to i8
  %13 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !172
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !159
  %16 = fmul float %5, %15
  %17 = fptoui float %16 to i8
  %18 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %17, ptr %18, align 1, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @paint_is_face_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !173 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !159
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !174
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !159
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !174
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_build_mesh_pbvh_buffers(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x i32], align 4
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 176, ptr noundef nonnull @.str.4) #17
  %9 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 2
  store i32 5123, ptr %9, align 8, !tbaa !175
  %10 = load i32, ptr %3, align 4, !tbaa !53
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.MFace, ptr %1, i64 %11, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !111
  %14 = and i8 %13, 1
  %15 = zext nneg i8 %14 to i32
  %16 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 18
  store i32 %15, ptr %16, align 4, !tbaa !157
  %17 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 19
  store i8 0, ptr %17, align 8, !tbaa !154
  %18 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 20
  store i8 0, ptr %18, align 1, !tbaa !155
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %121

20:                                               ; preds = %5
  %21 = zext nneg i32 %4 to i64
  br label %22

22:                                               ; preds = %20, %37
  %23 = phi i64 [ 0, %20 ], [ %39, %37 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %37 ]
  %25 = getelementptr inbounds i32, ptr %3, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MFace, ptr %1, i64 %27
  %29 = tail call zeroext i8 @paint_is_face_hidden(ptr noundef %28, ptr noundef %2) #17
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
  br i1 %40, label %41, label %22, !llvm.loop !176

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %121, label %43

43:                                               ; preds = %41
  %44 = tail call fastcc i32 @gpu_vbo_enabled() #16, !range !177
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %16, align 4, !tbaa !157
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 1
  tail call void %50(i32 noundef 1, ptr noundef nonnull %51) #17
  br label %52

52:                                               ; preds = %49, %46, %43
  %53 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !178
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %110, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %57(i32 noundef 34963, i32 noundef %54) #17
  %58 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %59 = sext i32 %38 to i64
  %60 = mul nsw i64 %59, 6
  tail call void %58(i32 noundef 34963, i64 noundef %60, ptr noundef null, i32 noundef 35044) #17
  %61 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %62 = tail call ptr %61(i32 noundef 34963, i32 noundef 35001) #17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %106, label %64

64:                                               ; preds = %56
  br i1 %19, label %65, label %103

65:                                               ; preds = %64
  %66 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  %67 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  %68 = zext nneg i32 %4 to i64
  br label %69

69:                                               ; preds = %65, %99
  %70 = phi i64 [ 0, %65 ], [ %101, %99 ]
  %71 = phi ptr [ %62, %65 ], [ %100, %99 ]
  %72 = getelementptr inbounds i32, ptr %3, i64 %70
  %73 = load i32, ptr %72, align 4, !tbaa !53
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.MFace, ptr %1, i64 %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %76 = tail call zeroext i8 @paint_is_face_hidden(ptr noundef %75, ptr noundef %2) #17
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %69
  store i32 0, ptr %6, align 4, !tbaa !53
  store i32 1, ptr %66, align 4, !tbaa !53
  store i32 2, ptr %67, align 4, !tbaa !53
  %79 = getelementptr inbounds %struct.MFace, ptr %1, i64 %74, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !67
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %78, %97
  %83 = phi ptr [ %71, %78 ], [ %94, %97 ]
  %84 = phi i1 [ true, %78 ], [ false, %97 ]
  br label %85

85:                                               ; preds = %82, %85
  %86 = phi i64 [ 0, %82 ], [ %95, %85 ]
  %87 = phi ptr [ %83, %82 ], [ %94, %85 ]
  %88 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %86
  %89 = load i32, ptr %88, align 4, !tbaa !53
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i32], ptr %0, i64 %70, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !53
  %93 = trunc i32 %92 to i16
  store i16 %93, ptr %87, align 2, !tbaa !174
  %94 = getelementptr inbounds i16, ptr %87, i64 1
  %95 = add nuw nsw i64 %86, 1
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %97, label %85, !llvm.loop !179

97:                                               ; preds = %85
  store i32 3, ptr %6, align 4, !tbaa !53
  store i32 0, ptr %66, align 4, !tbaa !53
  store i32 2, ptr %67, align 4, !tbaa !53
  %98 = and i1 %81, %84
  br i1 %98, label %82, label %99, !llvm.loop !180

99:                                               ; preds = %97, %69
  %100 = phi ptr [ %71, %69 ], [ %94, %97 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  %101 = add nuw nsw i64 %70, 1
  %102 = icmp eq i64 %101, %68
  br i1 %102, label %103, label %69, !llvm.loop !181

103:                                              ; preds = %99, %64
  %104 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %105 = tail call zeroext i8 %104(i32 noundef 34963) #17
  br label %108

106:                                              ; preds = %56
  %107 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %107(i32 noundef 1, ptr noundef nonnull %53) #17
  store i32 0, ptr %53, align 4, !tbaa !178
  br label %108

108:                                              ; preds = %106, %103
  %109 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %109(i32 noundef 34963, i32 noundef 0) #17
  br label %110

110:                                              ; preds = %108, %52
  %111 = tail call fastcc i32 @gpu_vbo_enabled() #16, !range !177
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %53, align 4, !tbaa !178
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, ptr %16, align 4, !tbaa !157
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116, %113
  %120 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  tail call void %120(i32 noundef 1, ptr noundef nonnull %8) #17
  br label %121

121:                                              ; preds = %110, %116, %119, %41, %5
  %122 = phi i32 [ 0, %5 ], [ 0, %41 ], [ %38, %119 ], [ %38, %116 ], [ %38, %110 ]
  %123 = phi i32 [ 0, %5 ], [ 0, %41 ], [ %4, %119 ], [ %4, %116 ], [ %4, %110 ]
  %124 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 16
  store i32 %122, ptr %124, align 4, !tbaa !158
  %125 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 3
  store ptr %1, ptr %125, align 8, !tbaa !160
  %126 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 5
  store ptr %3, ptr %126, align 8, !tbaa !161
  %127 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %8, i64 0, i32 6
  store i32 %123, ptr %127, align 8, !tbaa !162
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @gpu_vbo_enabled() unnamed_addr #7 !PGOFuncName !182 {
  %1 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !172
  %2 = icmp ne i8 %1, 0
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  %6 = select i1 %2, i1 %5, i1 false
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_update_grid_pbvh_buffers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  store i8 %6, ptr %10, align 8, !tbaa !154
  %11 = tail call zeroext i8 @GPU_material_use_matcaps_get() #17
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  store i8 %11, ptr %12, align 1, !tbaa !155
  %13 = load i32, ptr %0, align 8, !tbaa !156
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %156, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !183
  %18 = mul nsw i32 %17, %4
  %19 = load i32, ptr %3, align 4, !tbaa !53
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.DMFlagMat, ptr %2, i64 %20, i32 1
  %22 = load i8, ptr %21, align 2, !tbaa !184
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.gpu_draw_buffers_legacy_grids.diffuse_color, i64 16, i1 false)
  %26 = icmp eq i8 %11, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float 1.000000e+00, ptr %28, align 8, !tbaa !159
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %8, align 16, !tbaa !159
  br label %36

29:                                               ; preds = %15
  %30 = icmp eq i8 %6, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.DMFlagMat, ptr %2, i64 %20
  %33 = load i16, ptr %32, align 2, !tbaa !187
  %34 = sext i16 %33 to i32
  %35 = add nsw i32 %34, 1
  call void @GPU_material_diffuse_get(i32 noundef %35, ptr noundef nonnull %8) #17
  br label %36

36:                                               ; preds = %29, %31, %27
  %37 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21
  call fastcc void @copy_v4_v4(ptr noundef nonnull %37, ptr noundef nonnull %8) #16
  %38 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %39 = load i32, ptr %0, align 8, !tbaa !156
  call void %38(i32 noundef 34962, i32 noundef %39) #17
  %40 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %41 = sext i32 %18 to i64
  %42 = mul nsw i64 %41, 24
  call void %40(i32 noundef 34962, i64 noundef %42, ptr noundef null, i32 noundef 35044) #17
  %43 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %44 = call ptr %43(i32 noundef 34962, i32 noundef 35001) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %152, label %46

46:                                               ; preds = %36
  %47 = icmp sgt i32 %4, 0
  br i1 %47, label %48, label %149

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 2
  %50 = icmp eq i8 %23, 0
  %51 = icmp eq i32 %25, 0
  %52 = zext nneg i32 %4 to i64
  %53 = load i32, ptr %49, align 4, !tbaa !188
  br label %54

54:                                               ; preds = %48, %139
  %55 = phi i32 [ %53, %48 ], [ %140, %139 ]
  %56 = phi i32 [ %53, %48 ], [ %141, %139 ]
  %57 = phi i32 [ %53, %48 ], [ %142, %139 ]
  %58 = phi i32 [ %53, %48 ], [ %143, %139 ]
  %59 = phi i64 [ 0, %48 ], [ %147, %139 ]
  %60 = phi ptr [ %44, %48 ], [ %146, %139 ]
  %61 = getelementptr inbounds i32, ptr %3, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !53
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %1, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp sgt i32 %58, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %54, %91
  %68 = phi i32 [ %92, %91 ], [ %55, %54 ]
  %69 = phi i32 [ %93, %91 ], [ %56, %54 ]
  %70 = phi i32 [ %94, %91 ], [ %57, %54 ]
  %71 = phi i32 [ %94, %91 ], [ %58, %54 ]
  %72 = phi i32 [ %96, %91 ], [ 0, %54 ]
  %73 = phi ptr [ %95, %91 ], [ %60, %54 ]
  %74 = icmp sgt i32 %71, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %67, %86
  %76 = phi i32 [ %88, %86 ], [ 0, %67 ]
  %77 = phi ptr [ %87, %86 ], [ %73, %67 ]
  %78 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %65, i32 noundef %76, i32 noundef %72) #16
  call fastcc void @copy_v3_v3(ptr noundef %77, ptr noundef %78) #16
  br i1 %50, label %86, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.VertexBufferFormat, ptr %77, i64 0, i32 1
  %81 = call fastcc ptr @CCG_elem_no(ptr noundef %5, ptr noundef %78) #16
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %80, ptr noundef %81) #16
  br i1 %51, label %86, label %82

82:                                               ; preds = %79
  %83 = call fastcc ptr @CCG_elem_mask(ptr noundef %5, ptr noundef %78) #16
  %84 = load float, ptr %83, align 4, !tbaa !159
  %85 = getelementptr inbounds %struct.VertexBufferFormat, ptr %77, i64 0, i32 3
  call fastcc void @gpu_color_from_mask_copy(float noundef %84, ptr noundef nonnull %8, ptr noundef nonnull %85) #16
  br label %86

86:                                               ; preds = %79, %82, %75
  %87 = getelementptr inbounds %struct.VertexBufferFormat, ptr %77, i64 1
  %88 = add nuw nsw i32 %76, 1
  %89 = load i32, ptr %49, align 4, !tbaa !188
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %75, label %91, !llvm.loop !189

91:                                               ; preds = %86, %67
  %92 = phi i32 [ %68, %67 ], [ %89, %86 ]
  %93 = phi i32 [ %69, %67 ], [ %89, %86 ]
  %94 = phi i32 [ %70, %67 ], [ %89, %86 ]
  %95 = phi ptr [ %73, %67 ], [ %87, %86 ]
  %96 = add nuw nsw i32 %72, 1
  %97 = icmp slt i32 %96, %94
  br i1 %97, label %67, label %98, !llvm.loop !190

98:                                               ; preds = %91, %54
  %99 = phi i32 [ %55, %54 ], [ %92, %91 ]
  %100 = phi i32 [ %56, %54 ], [ %93, %91 ]
  %101 = phi i32 [ %57, %54 ], [ %94, %91 ]
  %102 = phi i32 [ %58, %54 ], [ %94, %91 ]
  br i1 %50, label %103, label %139

103:                                              ; preds = %98
  %104 = icmp sgt i32 %100, 1
  br i1 %104, label %105, label %139

105:                                              ; preds = %103, %135
  %106 = phi i32 [ %137, %135 ], [ %99, %103 ]
  %107 = phi i32 [ %137, %135 ], [ %100, %103 ]
  %108 = phi i32 [ %110, %135 ], [ 0, %103 ]
  %109 = icmp sgt i32 %107, 1
  %110 = add nuw nsw i32 %108, 1
  br i1 %109, label %113, label %111

111:                                              ; preds = %105
  %112 = add nsw i32 %106, -1
  br label %135

113:                                              ; preds = %105, %130
  %114 = phi i64 [ %117, %130 ], [ 0, %105 ]
  %115 = trunc i64 %114 to i32
  %116 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %65, i32 noundef %115, i32 noundef %110) #16
  %117 = add nuw nsw i64 %114, 1
  %118 = trunc i64 %117 to i32
  %119 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %65, i32 noundef %118, i32 noundef %110) #16
  %120 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %65, i32 noundef %118, i32 noundef %108) #16
  %121 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %65, i32 noundef %115, i32 noundef %108) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  %122 = call float @normal_quad_v3(ptr noundef nonnull %9, ptr noundef %116, ptr noundef %119, ptr noundef %120, ptr noundef %121) #17
  %123 = load i32, ptr %49, align 4, !tbaa !188
  %124 = mul nsw i32 %123, %110
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.VertexBufferFormat, ptr %60, i64 %125
  %127 = getelementptr inbounds %struct.VertexBufferFormat, ptr %126, i64 %114, i32 1
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %127, ptr noundef nonnull %9) #16
  br i1 %51, label %130, label %128

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.VertexBufferFormat, ptr %126, i64 %114, i32 3
  call fastcc void @gpu_color_from_mask_quad_copy(ptr noundef nonnull %5, ptr noundef %116, ptr noundef %119, ptr noundef %120, ptr noundef %121, ptr noundef nonnull %8, ptr noundef nonnull %129) #16
  br label %130

130:                                              ; preds = %128, %113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  %131 = load i32, ptr %49, align 4, !tbaa !188
  %132 = add nsw i32 %131, -1
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %117, %133
  br i1 %134, label %113, label %135, !llvm.loop !191

135:                                              ; preds = %130, %111
  %136 = phi i32 [ %112, %111 ], [ %132, %130 ]
  %137 = phi i32 [ %106, %111 ], [ %131, %130 ]
  %138 = icmp slt i32 %110, %136
  br i1 %138, label %105, label %139, !llvm.loop !192

139:                                              ; preds = %135, %103, %98
  %140 = phi i32 [ %99, %103 ], [ %99, %98 ], [ %137, %135 ]
  %141 = phi i32 [ %100, %103 ], [ %100, %98 ], [ %137, %135 ]
  %142 = phi i32 [ %100, %103 ], [ %101, %98 ], [ %137, %135 ]
  %143 = phi i32 [ %100, %103 ], [ %102, %98 ], [ %137, %135 ]
  %144 = load i32, ptr %16, align 4, !tbaa !183
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.VertexBufferFormat, ptr %60, i64 %145
  %147 = add nuw nsw i64 %59, 1
  %148 = icmp eq i64 %147, %52
  br i1 %148, label %149, label %54, !llvm.loop !193

149:                                              ; preds = %139, %46
  %150 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %151 = call zeroext i8 %150(i32 noundef 34962) #17
  br label %154

152:                                              ; preds = %36
  %153 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %153(i32 noundef 1, ptr noundef nonnull %0) #17
  store i32 0, ptr %0, align 8, !tbaa !156
  br label %154

154:                                              ; preds = %152, %149
  %155 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  call void %155(i32 noundef 34962, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  br label %156

156:                                              ; preds = %154, %7
  %157 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 9
  store ptr %1, ptr %157, align 8, !tbaa !194
  %158 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 12
  store ptr %3, ptr %158, align 8, !tbaa !195
  %159 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  store i32 %4, ptr %159, align 8, !tbaa !196
  %160 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 10
  store ptr %2, ptr %160, align 8, !tbaa !197
  %161 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %161, ptr noundef nonnull align 4 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !198
  %162 = load i32, ptr %3, align 4, !tbaa !53
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.DMFlagMat, ptr %2, i64 %163, i32 1
  %165 = load i8, ptr %164, align 2, !tbaa !184
  %166 = and i8 %165, 1
  %167 = zext nneg i8 %166 to i32
  %168 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  store i32 %167, ptr %168, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !199 {
  %5 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !188
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 !PGOFuncName !200 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !201
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 !PGOFuncName !202 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !203
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_color_from_mask_quad_copy(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #9 !PGOFuncName !204 {
  %8 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %1) #16
  %9 = load float, ptr %8, align 4, !tbaa !159
  %10 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %2) #16
  %11 = load float, ptr %10, align 4, !tbaa !159
  %12 = fadd float %9, %11
  %13 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %3) #16
  %14 = load float, ptr %13, align 4, !tbaa !159
  %15 = fadd float %12, %14
  %16 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %4) #16
  %17 = load float, ptr %16, align 4, !tbaa !159
  %18 = fadd float %15, %17
  %19 = fmul float %18, 2.500000e-01
  %20 = tail call fastcc float @gpu_color_from_mask(float noundef %19) #16
  %21 = fmul float %20, 2.550000e+02
  %22 = load float, ptr %5, align 4, !tbaa !159
  %23 = fmul float %22, %21
  %24 = fptoui float %23 to i8
  store i8 %24, ptr %6, align 1, !tbaa !172
  %25 = getelementptr inbounds float, ptr %5, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !159
  %27 = fmul float %21, %26
  %28 = fptoui float %27 to i8
  %29 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %28, ptr %29, align 1, !tbaa !172
  %30 = getelementptr inbounds float, ptr %5, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !159
  %32 = fmul float %21, %31
  %33 = fptoui float %32 to i8
  %34 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %33, ptr %34, align 1, !tbaa !172
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_build_grid_pbvh_buffers(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %3, -1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 176, ptr noundef nonnull @.str.4) #17
  %8 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 11
  store ptr %2, ptr %8, align 8, !tbaa !205
  %9 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 13
  store i32 %1, ptr %9, align 8, !tbaa !196
  %10 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 19
  store i8 0, ptr %10, align 8, !tbaa !154
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 20
  store i8 0, ptr %11, align 1, !tbaa !155
  %12 = tail call i32 @BKE_pbvh_count_grid_quads(ptr noundef %2, ptr noundef %0, i32 noundef %1, i32 noundef %3) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %190, label %14

14:                                               ; preds = %4
  %15 = mul i32 %5, %1
  %16 = mul i32 %15, %5
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 2
  %20 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 17
  %21 = tail call fastcc i32 @gpu_get_grid_buffer(i32 noundef %3, ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  %22 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !178
  br label %181

23:                                               ; preds = %14
  %24 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !172
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %184, label %26

26:                                               ; preds = %23
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !145
  %28 = and i16 %27, 8
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %184

30:                                               ; preds = %26
  %31 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 1
  tail call void %31(i32 noundef 1, ptr noundef nonnull %32) #17
  %33 = load i32, ptr %32, align 4, !tbaa !178
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %181, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 17
  store i32 %12, ptr %36, align 8, !tbaa !206
  %37 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %37(i32 noundef 34963, i32 noundef %33) #17
  %38 = mul i32 %3, %3
  %39 = mul i32 %38, %1
  %40 = icmp slt i32 %39, 65535
  %41 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 2
  %42 = sext i32 %12 to i64
  br i1 %40, label %43, label %112

43:                                               ; preds = %35
  store i32 5123, ptr %41, align 8, !tbaa !175
  %44 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %45 = mul nsw i64 %42, 12
  tail call void %44(i32 noundef 34963, i64 noundef %45, ptr noundef null, i32 noundef 35044) #17
  %46 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %47 = tail call ptr %46(i32 noundef 34963, i32 noundef 35001) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %110, label %49

49:                                               ; preds = %43
  %50 = icmp sgt i32 %1, 0
  br i1 %50, label %51, label %107

51:                                               ; preds = %49
  %52 = icmp eq ptr %2, null
  %53 = icmp sgt i32 %3, 1
  %54 = zext nneg i32 %1 to i64
  br label %55

55:                                               ; preds = %51, %102
  %56 = phi i64 [ 0, %51 ], [ %105, %102 ]
  %57 = phi i32 [ 0, %51 ], [ %104, %102 ]
  %58 = phi ptr [ %47, %51 ], [ %103, %102 ]
  br i1 %52, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds i32, ptr %0, i64 %56
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  br label %65

65:                                               ; preds = %59, %55
  %66 = phi ptr [ %64, %59 ], [ null, %55 ]
  br i1 %53, label %67, label %102

67:                                               ; preds = %65
  %68 = icmp eq ptr %66, null
  br label %69

69:                                               ; preds = %67, %100
  %70 = phi i32 [ 0, %67 ], [ %74, %100 ]
  %71 = phi ptr [ %58, %67 ], [ %97, %100 ]
  %72 = mul nsw i32 %70, %3
  %73 = add nuw nsw i32 %72, %57
  %74 = add nuw nsw i32 %70, 1
  %75 = mul nsw i32 %74, %3
  %76 = add nuw nsw i32 %75, %57
  br label %77

77:                                               ; preds = %69, %96
  %78 = phi i32 [ 0, %69 ], [ %98, %96 ]
  %79 = phi ptr [ %71, %69 ], [ %97, %96 ]
  br i1 %68, label %83, label %80

80:                                               ; preds = %77
  %81 = tail call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %66, i32 noundef %3, i32 noundef %78, i32 noundef %70) #17
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80, %77
  %84 = add nuw nsw i32 %73, %78
  %85 = trunc i32 %84 to i16
  %86 = add i16 %85, 1
  %87 = getelementptr inbounds i16, ptr %79, i64 1
  store i16 %86, ptr %79, align 2, !tbaa !174
  %88 = getelementptr inbounds i16, ptr %79, i64 2
  store i16 %85, ptr %87, align 2, !tbaa !174
  %89 = add nuw nsw i32 %76, %78
  %90 = trunc i32 %89 to i16
  %91 = getelementptr inbounds i16, ptr %79, i64 3
  store i16 %90, ptr %88, align 2, !tbaa !174
  %92 = add i16 %90, 1
  %93 = getelementptr inbounds i16, ptr %79, i64 4
  store i16 %92, ptr %91, align 2, !tbaa !174
  %94 = getelementptr inbounds i16, ptr %79, i64 5
  store i16 %86, ptr %93, align 2, !tbaa !174
  %95 = getelementptr inbounds i16, ptr %79, i64 6
  store i16 %90, ptr %94, align 2, !tbaa !174
  br label %96

96:                                               ; preds = %80, %83
  %97 = phi ptr [ %79, %80 ], [ %95, %83 ]
  %98 = add nuw nsw i32 %78, 1
  %99 = icmp eq i32 %98, %5
  br i1 %99, label %100, label %77, !llvm.loop !207

100:                                              ; preds = %96
  %101 = icmp eq i32 %74, %5
  br i1 %101, label %102, label %69, !llvm.loop !208

102:                                              ; preds = %100, %65
  %103 = phi ptr [ %58, %65 ], [ %97, %100 ]
  %104 = add nuw nsw i32 %57, %38
  %105 = add nuw nsw i64 %56, 1
  %106 = icmp eq i64 %105, %54
  br i1 %106, label %107, label %55, !llvm.loop !209

107:                                              ; preds = %102, %49
  %108 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %109 = tail call zeroext i8 %108(i32 noundef 34963) #17
  br label %179

110:                                              ; preds = %43
  %111 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %111(i32 noundef 1, ptr noundef nonnull %32) #17
  store i32 0, ptr %32, align 4, !tbaa !178
  br label %179

112:                                              ; preds = %35
  store i32 5125, ptr %41, align 8, !tbaa !175
  %113 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %114 = mul nsw i64 %42, 24
  tail call void %113(i32 noundef 34963, i64 noundef %114, ptr noundef null, i32 noundef 35044) #17
  %115 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %116 = tail call ptr %115(i32 noundef 34963, i32 noundef 35001) #17
  %117 = icmp eq ptr %116, null
  br i1 %117, label %177, label %118

118:                                              ; preds = %112
  %119 = icmp sgt i32 %1, 0
  br i1 %119, label %120, label %174

120:                                              ; preds = %118
  %121 = icmp eq ptr %2, null
  %122 = icmp sgt i32 %3, 1
  %123 = zext nneg i32 %1 to i64
  br label %124

124:                                              ; preds = %120, %169
  %125 = phi i64 [ 0, %120 ], [ %172, %169 ]
  %126 = phi i32 [ 0, %120 ], [ %171, %169 ]
  %127 = phi ptr [ %116, %120 ], [ %170, %169 ]
  br i1 %121, label %134, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds i32, ptr %0, i64 %125
  %130 = load i32, ptr %129, align 4, !tbaa !53
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %2, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !34
  br label %134

134:                                              ; preds = %128, %124
  %135 = phi ptr [ %133, %128 ], [ null, %124 ]
  br i1 %122, label %136, label %169

136:                                              ; preds = %134
  %137 = icmp eq ptr %135, null
  br label %138

138:                                              ; preds = %136, %167
  %139 = phi i32 [ 0, %136 ], [ %143, %167 ]
  %140 = phi ptr [ %127, %136 ], [ %164, %167 ]
  %141 = mul nsw i32 %139, %3
  %142 = add nuw nsw i32 %141, %126
  %143 = add nuw nsw i32 %139, 1
  %144 = mul nsw i32 %143, %3
  %145 = add nuw nsw i32 %144, %126
  br label %146

146:                                              ; preds = %138, %163
  %147 = phi i32 [ 0, %138 ], [ %165, %163 ]
  %148 = phi ptr [ %140, %138 ], [ %164, %163 ]
  br i1 %137, label %152, label %149

149:                                              ; preds = %146
  %150 = tail call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %135, i32 noundef %3, i32 noundef %147, i32 noundef %139) #17
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149, %146
  %153 = add nuw nsw i32 %142, %147
  %154 = add nuw nsw i32 %153, 1
  %155 = getelementptr inbounds i32, ptr %148, i64 1
  store i32 %154, ptr %148, align 4, !tbaa !53
  %156 = getelementptr inbounds i32, ptr %148, i64 2
  store i32 %153, ptr %155, align 4, !tbaa !53
  %157 = add nuw nsw i32 %145, %147
  %158 = getelementptr inbounds i32, ptr %148, i64 3
  store i32 %157, ptr %156, align 4, !tbaa !53
  %159 = add nuw nsw i32 %157, 1
  %160 = getelementptr inbounds i32, ptr %148, i64 4
  store i32 %159, ptr %158, align 4, !tbaa !53
  %161 = getelementptr inbounds i32, ptr %148, i64 5
  store i32 %154, ptr %160, align 4, !tbaa !53
  %162 = getelementptr inbounds i32, ptr %148, i64 6
  store i32 %157, ptr %161, align 4, !tbaa !53
  br label %163

163:                                              ; preds = %149, %152
  %164 = phi ptr [ %148, %149 ], [ %162, %152 ]
  %165 = add nuw nsw i32 %147, 1
  %166 = icmp eq i32 %165, %5
  br i1 %166, label %167, label %146, !llvm.loop !210

167:                                              ; preds = %163
  %168 = icmp eq i32 %143, %5
  br i1 %168, label %169, label %138, !llvm.loop !211

169:                                              ; preds = %167, %134
  %170 = phi ptr [ %127, %134 ], [ %164, %167 ]
  %171 = add nuw nsw i32 %126, %38
  %172 = add nuw nsw i64 %125, 1
  %173 = icmp eq i64 %172, %123
  br i1 %173, label %174, label %124, !llvm.loop !212

174:                                              ; preds = %169, %118
  %175 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %176 = tail call zeroext i8 %175(i32 noundef 34963) #17
  br label %179

177:                                              ; preds = %112
  %178 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %178(i32 noundef 1, ptr noundef nonnull %32) #17
  store i32 0, ptr %32, align 4, !tbaa !178
  br label %179

179:                                              ; preds = %174, %177, %107, %110
  %180 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %180(i32 noundef 34963, i32 noundef 0) #17
  br label %181

181:                                              ; preds = %30, %179, %18
  %182 = phi i32 [ 0, %18 ], [ 1, %179 ], [ 1, %30 ]
  %183 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 14
  store i32 %182, ptr %183, align 4, !tbaa !213
  br label %184

184:                                              ; preds = %181, %23, %26
  %185 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %7, i64 0, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !178
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  tail call void %189(i32 noundef 1, ptr noundef nonnull %7) #17
  br label %190

190:                                              ; preds = %184, %188, %4
  ret ptr %7
}

; Function Attrs: optsize
declare i32 @BKE_pbvh_count_grid_quads(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gpu_get_grid_buffer(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !214 {
  %4 = tail call fastcc i32 @gpu_vbo_enabled() #16, !range !177
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !53
  br i1 %5, label %7, label %11

7:                                                ; preds = %3
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %116, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %10(i32 noundef 1, ptr noundef nonnull @gpu_get_grid_buffer.buffer) #17
  br label %116

11:                                               ; preds = %3
  %12 = icmp ne i32 %6, 0
  %13 = load i32, ptr @gpu_get_grid_buffer.prev_gridsize, align 4
  %14 = icmp eq i32 %13, %0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, ptr @gpu_get_grid_buffer.prev_index_type, align 4, !tbaa !53
  store i32 %17, ptr %1, align 4, !tbaa !53
  %18 = load i32, ptr @gpu_get_grid_buffer.prev_totquad, align 4, !tbaa !53
  store i32 %18, ptr %2, align 4, !tbaa !53
  %19 = load i32, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !53
  br label %116

20:                                               ; preds = %11
  %21 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  tail call void %21(i32 noundef 1, ptr noundef nonnull @gpu_get_grid_buffer.buffer) #17
  %22 = load i32, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %112, label %24

24:                                               ; preds = %20
  %25 = add i32 %0, -1
  %26 = mul nsw i32 %25, %25
  store i32 %26, ptr %2, align 4, !tbaa !53
  %27 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %28 = load i32, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !53
  tail call void %27(i32 noundef 34963, i32 noundef %28) #17
  %29 = mul nsw i32 %0, %0
  %30 = icmp ult i32 %29, 65535
  br i1 %30, label %31, label %71

31:                                               ; preds = %24
  store i32 5123, ptr %1, align 4, !tbaa !53
  %32 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %33 = load i32, ptr %2, align 4, !tbaa !53
  %34 = zext i32 %33 to i64
  %35 = mul nuw nsw i64 %34, 12
  tail call void %32(i32 noundef 34963, i64 noundef %35, ptr noundef null, i32 noundef 35044) #17
  %36 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %37 = tail call ptr %36(i32 noundef 34963, i32 noundef 35001) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %31
  %40 = icmp sgt i32 %0, 1
  br i1 %40, label %41, label %66

41:                                               ; preds = %39, %64
  %42 = phi i32 [ %45, %64 ], [ 0, %39 ]
  %43 = phi ptr [ %61, %64 ], [ %37, %39 ]
  %44 = mul nsw i32 %42, %0
  %45 = add nuw nsw i32 %42, 1
  %46 = mul nsw i32 %45, %0
  br label %47

47:                                               ; preds = %41, %47
  %48 = phi i32 [ 0, %41 ], [ %62, %47 ]
  %49 = phi ptr [ %43, %41 ], [ %61, %47 ]
  %50 = add nuw nsw i32 %44, %48
  %51 = trunc i32 %50 to i16
  %52 = add i16 %51, 1
  %53 = getelementptr inbounds i16, ptr %49, i64 1
  store i16 %52, ptr %49, align 2, !tbaa !174
  %54 = getelementptr inbounds i16, ptr %49, i64 2
  store i16 %51, ptr %53, align 2, !tbaa !174
  %55 = add nuw nsw i32 %46, %48
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds i16, ptr %49, i64 3
  store i16 %56, ptr %54, align 2, !tbaa !174
  %58 = add i16 %56, 1
  %59 = getelementptr inbounds i16, ptr %49, i64 4
  store i16 %58, ptr %57, align 2, !tbaa !174
  %60 = getelementptr inbounds i16, ptr %49, i64 5
  store i16 %52, ptr %59, align 2, !tbaa !174
  store i16 %56, ptr %60, align 2, !tbaa !174
  %61 = getelementptr inbounds i16, ptr %49, i64 6
  %62 = add nuw nsw i32 %48, 1
  %63 = icmp eq i32 %62, %25
  br i1 %63, label %64, label %47, !llvm.loop !215

64:                                               ; preds = %47
  %65 = icmp eq i32 %45, %25
  br i1 %65, label %66, label %41, !llvm.loop !216

66:                                               ; preds = %64, %39
  %67 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %68 = tail call zeroext i8 %67(i32 noundef 34963) #17
  br label %109

69:                                               ; preds = %31
  %70 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %70(i32 noundef 1, ptr noundef nonnull @gpu_get_grid_buffer.buffer) #17
  store i32 0, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !53
  br label %109

71:                                               ; preds = %24
  store i32 5125, ptr %1, align 4, !tbaa !53
  %72 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %73 = load i32, ptr %2, align 4, !tbaa !53
  %74 = zext i32 %73 to i64
  %75 = mul nuw nsw i64 %74, 24
  tail call void %72(i32 noundef 34963, i64 noundef %75, ptr noundef null, i32 noundef 35044) #17
  %76 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %77 = tail call ptr %76(i32 noundef 34963, i32 noundef 35001) #17
  %78 = icmp eq ptr %77, null
  br i1 %78, label %107, label %79

79:                                               ; preds = %71
  %80 = icmp sgt i32 %0, 1
  br i1 %80, label %81, label %104

81:                                               ; preds = %79, %102
  %82 = phi i32 [ %85, %102 ], [ 0, %79 ]
  %83 = phi ptr [ %99, %102 ], [ %77, %79 ]
  %84 = mul nsw i32 %82, %0
  %85 = add nuw nsw i32 %82, 1
  %86 = mul nsw i32 %85, %0
  br label %87

87:                                               ; preds = %81, %87
  %88 = phi i32 [ 0, %81 ], [ %100, %87 ]
  %89 = phi ptr [ %83, %81 ], [ %99, %87 ]
  %90 = add nuw nsw i32 %84, %88
  %91 = add nuw nsw i32 %90, 1
  %92 = getelementptr inbounds i32, ptr %89, i64 1
  store i32 %91, ptr %89, align 4, !tbaa !53
  %93 = getelementptr inbounds i32, ptr %89, i64 2
  store i32 %90, ptr %92, align 4, !tbaa !53
  %94 = add nuw nsw i32 %86, %88
  %95 = getelementptr inbounds i32, ptr %89, i64 3
  store i32 %94, ptr %93, align 4, !tbaa !53
  %96 = add nuw nsw i32 %94, 1
  %97 = getelementptr inbounds i32, ptr %89, i64 4
  store i32 %96, ptr %95, align 4, !tbaa !53
  %98 = getelementptr inbounds i32, ptr %89, i64 5
  store i32 %91, ptr %97, align 4, !tbaa !53
  store i32 %94, ptr %98, align 4, !tbaa !53
  %99 = getelementptr inbounds i32, ptr %89, i64 6
  %100 = add nuw nsw i32 %88, 1
  %101 = icmp eq i32 %100, %25
  br i1 %101, label %102, label %87, !llvm.loop !217

102:                                              ; preds = %87
  %103 = icmp eq i32 %85, %25
  br i1 %103, label %104, label %81, !llvm.loop !218

104:                                              ; preds = %102, %79
  %105 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %106 = tail call zeroext i8 %105(i32 noundef 34963) #17
  br label %109

107:                                              ; preds = %71
  %108 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  tail call void %108(i32 noundef 1, ptr noundef nonnull @gpu_get_grid_buffer.buffer) #17
  store i32 0, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !53
  br label %109

109:                                              ; preds = %104, %107, %66, %69
  %110 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %110(i32 noundef 34963, i32 noundef 0) #17
  %111 = load i32, ptr @gpu_get_grid_buffer.buffer, align 4, !tbaa !53
  br label %112

112:                                              ; preds = %109, %20
  %113 = phi i32 [ %111, %109 ], [ 0, %20 ]
  store i32 %0, ptr @gpu_get_grid_buffer.prev_gridsize, align 4, !tbaa !53
  %114 = load i32, ptr %1, align 4, !tbaa !53
  store i32 %114, ptr @gpu_get_grid_buffer.prev_index_type, align 4, !tbaa !53
  %115 = load i32, ptr %2, align 4, !tbaa !53
  store i32 %115, ptr @gpu_get_grid_buffer.prev_totquad, align 4, !tbaa !53
  br label %116

116:                                              ; preds = %7, %9, %112, %16
  %117 = phi i32 [ %19, %16 ], [ %113, %112 ], [ 0, %9 ], [ 0, %7 ]
  ret i32 %117
}

; Function Attrs: optsize
declare zeroext i8 @paint_is_grid_face_hidden(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_update_bmesh_pbvh_buffers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.GSetIterator, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.GSetIterator, align 8
  %11 = alloca %struct.GSetIterator, align 8
  %12 = alloca [3 x ptr], align 16
  %13 = alloca float, align 4
  %14 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.gpu_draw_buffers_legacy_grids.diffuse_color, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %16 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %15, i32 noundef 34) #17
  %17 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  store i8 %5, ptr %17, align 8, !tbaa !154
  %18 = tail call zeroext i8 @GPU_material_use_matcaps_get() #17
  %19 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  store i8 %18, ptr %19, align 1, !tbaa !155
  %20 = load i32, ptr %0, align 8, !tbaa !156
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %187, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  %24 = load i32, ptr %23, align 4, !tbaa !157
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !178
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %187, label %30

30:                                               ; preds = %26, %22
  %31 = tail call fastcc i32 @gpu_bmesh_face_visible_count(ptr noundef %2) #16
  %32 = load i32, ptr %23, align 4, !tbaa !157
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @gpu_bmesh_vert_visible_count(ptr noundef %3, ptr noundef %4) #16
  br label %38

36:                                               ; preds = %30
  %37 = mul nsw i32 %31, 3
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = icmp eq i32 %31, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  store i32 0, ptr %42, align 4, !tbaa !158
  br label %187

43:                                               ; preds = %38
  %44 = load i8, ptr %19, align 1, !tbaa !155
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float 1.000000e+00, ptr %47, align 8, !tbaa !159
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %7, align 16, !tbaa !159
  br label %56

48:                                               ; preds = %43
  %49 = icmp eq i8 %5, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %8, ptr noundef %2) #16
  %51 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %8) #16
  %52 = getelementptr inbounds %struct.BMFace, ptr %51, i64 0, i32 5
  %53 = load i16, ptr %52, align 8, !tbaa !219
  %54 = sext i16 %53 to i32
  %55 = add nsw i32 %54, 1
  call void @GPU_material_diffuse_get(i32 noundef %55, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  br label %56

56:                                               ; preds = %48, %50, %46
  %57 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21
  call fastcc void @copy_v4_v4(ptr noundef nonnull %57, ptr noundef nonnull %7) #16
  %58 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %59 = load i32, ptr %0, align 8, !tbaa !156
  call void %58(i32 noundef 34962, i32 noundef %59) #17
  %60 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %61 = sext i32 %39 to i64
  %62 = mul nsw i64 %61, 24
  call void %60(i32 noundef 34962, i64 noundef %62, ptr noundef null, i32 noundef 35044) #17
  %63 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %64 = call ptr %63(i32 noundef 34962, i32 noundef 35001) #17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %135, label %66

66:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  store i32 0, ptr %9, align 4, !tbaa !53
  %67 = load i32, ptr %23, align 4, !tbaa !157
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  %70 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %71 = load i8, ptr %70, align 4, !tbaa !222
  %72 = or i8 %71, 1
  store i8 %72, ptr %70, align 4, !tbaa !222
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %10, ptr noundef %3) #16
  %73 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %10) #16, !range !224
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69, %75
  %76 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %10) #16
  call fastcc void @gpu_bmesh_vert_to_buffer_copy(ptr noundef %76, ptr noundef nonnull %64, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef %16, ptr noundef nonnull %7) #16
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %10) #16
  %77 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %10) #16, !range !224
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %75, label %79, !llvm.loop !225

79:                                               ; preds = %75, %69
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %10, ptr noundef %4) #16
  %80 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %10) #16, !range !224
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79, %82
  %83 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %10) #16
  call fastcc void @gpu_bmesh_vert_to_buffer_copy(ptr noundef %83, ptr noundef nonnull %64, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef %16, ptr noundef nonnull %7) #16
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %10) #16
  %84 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %10) #16, !range !224
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %82, label %86, !llvm.loop !226

86:                                               ; preds = %82, %79
  %87 = load i32, ptr %9, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  %88 = icmp slt i32 %87, 65535
  br label %126

89:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %11, ptr noundef %2) #16
  %90 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %11) #16, !range !224
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %89
  %93 = sext i32 %16 to i64
  br label %94

94:                                               ; preds = %92, %121
  %95 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %11) #16
  %96 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %95) #16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #18
  store float 0.000000e+00, ptr %13, align 4, !tbaa !159
  call void @BM_face_as_array_vert_tri(ptr noundef %95, ptr noundef nonnull %12) #17
  %99 = load float, ptr %13, align 4, !tbaa !159
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi i64 [ 0, %98 ], [ %109, %100 ]
  %102 = phi float [ %99, %98 ], [ %108, %100 ]
  %103 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %101
  %104 = load ptr, ptr %103, align 8, !tbaa !34
  %105 = load ptr, ptr %104, align 8, !tbaa !227
  %106 = getelementptr inbounds i8, ptr %105, i64 %93
  %107 = load float, ptr %106, align 4, !tbaa !159
  %108 = fadd float %107, %102
  store float %108, ptr %13, align 4, !tbaa !159
  %109 = add nuw nsw i64 %101, 1
  %110 = icmp eq i64 %109, 3
  br i1 %110, label %111, label %100, !llvm.loop !229

111:                                              ; preds = %100
  %112 = fdiv float %108, 3.000000e+00
  store float %112, ptr %13, align 4, !tbaa !159
  %113 = getelementptr inbounds %struct.BMFace, ptr %95, i64 0, i32 4
  br label %114

114:                                              ; preds = %111, %114
  %115 = phi i64 [ 0, %111 ], [ %118, %114 ]
  %116 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  call fastcc void @gpu_bmesh_vert_to_buffer_copy(ptr noundef %117, ptr noundef nonnull %64, ptr noundef nonnull %9, ptr noundef nonnull %113, ptr noundef nonnull %13, i32 noundef %16, ptr noundef nonnull %7) #16
  %118 = add nuw nsw i64 %115, 1
  %119 = icmp eq i64 %118, 3
  br i1 %119, label %120, label %114, !llvm.loop !230

120:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %121

121:                                              ; preds = %120, %94
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %11) #16
  %122 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %11) #16, !range !224
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %94, label %124, !llvm.loop !231

124:                                              ; preds = %121, %89
  %125 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  store i32 %31, ptr %125, align 4, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  br label %126

126:                                              ; preds = %124, %86
  %127 = phi i1 [ %88, %86 ], [ true, %124 ]
  %128 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %129 = call zeroext i8 %128(i32 noundef 34962) #17
  %130 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %131 = load i8, ptr %130, align 4, !tbaa !222
  %132 = or i8 %131, 1
  store i8 %132, ptr %130, align 4, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  %133 = load i32, ptr %23, align 4, !tbaa !157
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %187, label %137

135:                                              ; preds = %56
  %136 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %136(i32 noundef 1, ptr noundef nonnull %0) #17
  store i32 0, ptr %0, align 8, !tbaa !156
  br label %187

137:                                              ; preds = %126
  %138 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %139 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !178
  call void %138(i32 noundef 34963, i32 noundef %140) #17
  %141 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %142 = select i1 %127, i64 6, i64 12
  %143 = sext i32 %31 to i64
  %144 = mul nsw i64 %142, %143
  call void %141(i32 noundef 34963, i64 noundef %144, ptr noundef null, i32 noundef 35044) #17
  %145 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %146 = call ptr %145(i32 noundef 34963, i32 noundef 35001) #17
  %147 = icmp eq ptr %146, null
  br i1 %147, label %185, label %148

148:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #18
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %14, ptr noundef %2) #16
  %149 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %14) #16, !range !224
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %148, %175
  %152 = phi ptr [ %176, %175 ], [ %146, %148 ]
  %153 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %14) #16
  %154 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %153) #16
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.BMFace, ptr %153, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !232
  br label %159

159:                                              ; preds = %170, %156
  %160 = phi ptr [ %158, %156 ], [ %173, %170 ]
  %161 = phi ptr [ %152, %156 ], [ %171, %170 ]
  %162 = getelementptr inbounds %struct.BMLoop, ptr %160, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !233
  %164 = call fastcc i32 @_bm_elem_index_get(ptr noundef %163) #16
  br i1 %127, label %165, label %168

165:                                              ; preds = %159
  %166 = trunc i32 %164 to i16
  store i16 %166, ptr %161, align 2, !tbaa !174
  %167 = getelementptr inbounds i16, ptr %161, i64 1
  br label %170

168:                                              ; preds = %159
  store i32 %164, ptr %161, align 4, !tbaa !53
  %169 = getelementptr inbounds i32, ptr %161, i64 1
  br label %170

170:                                              ; preds = %168, %165
  %171 = phi ptr [ %167, %165 ], [ %169, %168 ]
  %172 = getelementptr inbounds %struct.BMLoop, ptr %160, i64 0, i32 6
  %173 = load ptr, ptr %172, align 8, !tbaa !235
  %174 = icmp eq ptr %173, %158
  br i1 %174, label %175, label %159, !llvm.loop !236

175:                                              ; preds = %170, %151
  %176 = phi ptr [ %152, %151 ], [ %171, %170 ]
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %14) #16
  %177 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %14) #16, !range !224
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %151, label %179, !llvm.loop !237

179:                                              ; preds = %175, %148
  %180 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %181 = call zeroext i8 %180(i32 noundef 34963) #17
  %182 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  store i32 %31, ptr %182, align 4, !tbaa !158
  %183 = select i1 %127, i32 5123, i32 5125
  %184 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 2
  store i32 %183, ptr %184, align 8, !tbaa !175
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #18
  br label %187

185:                                              ; preds = %137
  %186 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %186(i32 noundef 1, ptr noundef nonnull %139) #17
  store i32 0, ptr %139, align 4, !tbaa !178
  br label %187

187:                                              ; preds = %126, %185, %179, %6, %26, %135, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gpu_bmesh_face_visible_count(ptr noundef %0) unnamed_addr #0 !PGOFuncName !238 {
  %2 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %2, ptr noundef %0) #16
  %3 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #16, !range !224
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %11, %5 ], [ 0, %1 ]
  %7 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %2) #16
  %8 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7) #16
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %6, %10
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %2) #16
  %12 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #16, !range !224
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !239

14:                                               ; preds = %5, %1
  %15 = phi i32 [ 0, %1 ], [ %11, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gpu_bmesh_vert_visible_count(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !240 {
  %3 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %3, ptr noundef %0) #16
  %4 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #16, !range !224
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %2 ]
  %8 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %3) #16
  %9 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %8) #16
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %7, %11
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %3) #16
  %13 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #16, !range !224
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %6, label %15, !llvm.loop !241

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %2 ], [ %12, %6 ]
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %3, ptr noundef %1) #16
  %17 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #16, !range !224
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15, %19
  %20 = phi i32 [ %25, %19 ], [ %16, %15 ]
  %21 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %3) #16
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %21) #16
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %20, %24
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %3) #16
  %26 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #16, !range !224
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %19, label %28, !llvm.loop !242

28:                                               ; preds = %19, %15
  %29 = phi i32 [ %16, %15 ], [ %25, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !243 {
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !244 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !245 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #16, !range !224
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_bmesh_vert_to_buffer_copy(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #11 !PGOFuncName !246 {
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0) #16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4, !tbaa !53
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.VertexBufferFormat, ptr %1, i64 %12
  %14 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %13, ptr noundef nonnull %14) #16
  %15 = getelementptr inbounds %struct.VertexBufferFormat, ptr %1, i64 %12, i32 1
  %16 = icmp eq ptr %3, null
  %17 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3
  %18 = select i1 %16, ptr %17, ptr %3
  tail call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %15, ptr noundef nonnull %18) #16
  %19 = icmp eq ptr %4, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load ptr, ptr %0, align 8, !tbaa !227
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  br label %24

24:                                               ; preds = %10, %20
  %25 = phi ptr [ %23, %20 ], [ %4, %10 ]
  %26 = load float, ptr %25, align 4, !tbaa !159
  %27 = getelementptr inbounds %struct.VertexBufferFormat, ptr %1, i64 %12, i32 3
  tail call fastcc void @gpu_color_from_mask_copy(float noundef %26, ptr noundef %6, ptr noundef nonnull %27) #16
  %28 = load i32, ptr %2, align 4, !tbaa !53
  tail call fastcc void @_bm_elem_index_set(ptr noundef %0, i32 noundef %28) #16
  %29 = load i32, ptr %2, align 4, !tbaa !53
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %2, align 4, !tbaa !53
  br label %31

31:                                               ; preds = %24, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !247 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !248 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !249
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_face_as_array_vert_tri(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !250 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !251
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_build_bmesh_pbvh_buffers(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 176, ptr noundef nonnull @.str.4) #17
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 1
  tail call void %6(i32 noundef 1, ptr noundef nonnull %7) #17
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @__glewGenBuffersARB, align 8, !tbaa !34
  tail call void %9(i32 noundef 1, ptr noundef %3) #17
  %10 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 15
  store i32 1, ptr %10, align 8, !tbaa !252
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 18
  store i32 %0, ptr %11, align 4, !tbaa !157
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 19
  store i8 0, ptr %12, align 8, !tbaa !154
  %13 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %3, i64 0, i32 20
  store i8 0, ptr %13, align 1, !tbaa !155
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_draw_pbvh_buffers(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !162
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !160
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.MFace, ptr %11, i64 %15, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !70
  %18 = sext i16 %17 to i32
  %19 = add nsw i32 %18, 1
  %20 = tail call i32 %1(i32 noundef %19, ptr noundef null) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %130, label %42

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !196
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !197
  %29 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.DMFlagMat, ptr %28, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !187
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, 1
  %37 = tail call i32 %1(i32 noundef %36, ptr noundef null) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %130, label %42

39:                                               ; preds = %22
  %40 = tail call i32 %1(i32 noundef 1, ptr noundef null) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %130, label %42

42:                                               ; preds = %26, %9, %39, %3
  %43 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  %44 = load i32, ptr %43, align 4, !tbaa !157
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !162
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 7424, i32 7425
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i32 [ 7425, %42 ], [ %50, %46 ]
  tail call void @glShadeModel(i32 noundef %52) #17
  %53 = load i32, ptr %0, align 8, !tbaa !156
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %120, label %55

55:                                               ; preds = %51
  tail call void @glEnableClientState(i32 noundef 32884) #17
  %56 = icmp eq i8 %2, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  tail call void @glEnableClientState(i32 noundef 32885) #17
  tail call fastcc void @gpu_colors_enable(i32 noundef 0) #16
  br label %58

58:                                               ; preds = %57, %55
  %59 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %60 = load i32, ptr %0, align 8, !tbaa !156
  tail call void %59(i32 noundef 34962, i32 noundef %60) #17
  %61 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !178
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %65(i32 noundef 34963, i32 noundef %62) #17
  br label %66

66:                                               ; preds = %64, %58
  br i1 %56, label %68, label %67

67:                                               ; preds = %66
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #17
  br label %68

68:                                               ; preds = %67, %66
  %69 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 17
  %70 = load i32, ptr %69, align 8, !tbaa !206
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 14
  %74 = load i32, ptr %73, align 4, !tbaa !213
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  %78 = load i32, ptr %77, align 8, !tbaa !196
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %72, %76
  %81 = phi i32 [ %78, %76 ], [ 1, %72 ]
  %82 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 2
  %83 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 3
  br label %84

84:                                               ; preds = %80, %84
  %85 = phi ptr [ null, %80 ], [ %95, %84 ]
  %86 = phi i32 [ 0, %80 ], [ %96, %84 ]
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 24, ptr noundef %85) #17
  %87 = getelementptr inbounds i8, ptr %85, i64 12
  tail call void @glNormalPointer(i32 noundef 5122, i32 noundef 24, ptr noundef nonnull %87) #17
  %88 = getelementptr inbounds i8, ptr %85, i64 20
  tail call void @glColorPointer(i32 noundef 3, i32 noundef 5121, i32 noundef 24, ptr noundef nonnull %88) #17
  %89 = load i32, ptr %69, align 8, !tbaa !206
  %90 = mul i32 %89, 6
  %91 = load i32, ptr %82, align 8, !tbaa !175
  tail call void @glDrawElements(i32 noundef 4, i32 noundef %90, i32 noundef %91, ptr noundef null) #17
  %92 = load i32, ptr %83, align 4, !tbaa !253
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %93, 24
  %95 = getelementptr inbounds i8, ptr %85, i64 %94
  %96 = add nuw nsw i32 %86, 1
  %97 = icmp eq i32 %96, %81
  br i1 %97, label %110, label %84, !llvm.loop !254

98:                                               ; preds = %68
  %99 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  %100 = load i32, ptr %99, align 4, !tbaa !158
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = mul i32 %100, 3
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 24, ptr noundef null) #17
  tail call void @glNormalPointer(i32 noundef 5122, i32 noundef 24, ptr noundef nonnull inttoptr (i64 12 to ptr)) #17
  tail call void @glColorPointer(i32 noundef 3, i32 noundef 5121, i32 noundef 24, ptr noundef nonnull inttoptr (i64 20 to ptr)) #17
  %104 = load i32, ptr %61, align 4, !tbaa !178
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !175
  tail call void @glDrawElements(i32 noundef 4, i32 noundef %103, i32 noundef %108, ptr noundef null) #17
  br label %110

109:                                              ; preds = %102
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef 0, i32 noundef %103) #17
  br label %110

110:                                              ; preds = %84, %76, %106, %109, %98
  br i1 %56, label %112, label %111

111:                                              ; preds = %110
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #17
  br label %112

112:                                              ; preds = %111, %110
  %113 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %113(i32 noundef 34962, i32 noundef 0) #17
  %114 = load i32, ptr %61, align 4, !tbaa !178
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %117(i32 noundef 34963, i32 noundef 0) #17
  br label %118

118:                                              ; preds = %116, %112
  tail call void @glDisableClientState(i32 noundef 32884) #17
  br i1 %56, label %119, label %130

119:                                              ; preds = %118
  tail call void @glDisableClientState(i32 noundef 32885) #17
  tail call fastcc void @gpu_colors_disable(i32 noundef 0) #16
  br label %130

120:                                              ; preds = %51
  %121 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %122 = load i32, ptr %121, align 8, !tbaa !162
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call fastcc void @gpu_draw_buffers_legacy_mesh(ptr noundef nonnull %0) #16
  br label %130

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  %127 = load i32, ptr %126, align 8, !tbaa !196
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call fastcc void @gpu_draw_buffers_legacy_grids(ptr noundef nonnull %0) #16
  br label %130

130:                                              ; preds = %26, %9, %124, %129, %125, %118, %119, %39
  ret void
}

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_colors_enable(i32 noundef %0) unnamed_addr #0 !PGOFuncName !255 {
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #17
  tail call void @glEnable(i32 noundef 2903) #17
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @glEnableClientState(i32 noundef 32886) #17
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_colors_disable(i32 noundef %0) unnamed_addr #0 !PGOFuncName !256 {
  tail call void @glDisable(i32 noundef 2903) #17
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @glDisableClientState(i32 noundef 32886) #17
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_draw_buffers_legacy_mesh(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !257 {
  %2 = alloca [4 x float], align 16
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !161
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = sext i32 %13 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) @__const.gpu_draw_buffers_legacy_grids.diffuse_color, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  %16 = load i8, ptr %15, align 1, !tbaa !155
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  store float 1.000000e+00, ptr %19, align 8, !tbaa !159
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %2, align 16, !tbaa !159
  br label %29

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  %22 = load i8, ptr %21, align 8, !tbaa !154
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MFace, ptr %10, i64 %14, i32 4
  %26 = load i16, ptr %25, align 4, !tbaa !70
  %27 = sext i16 %26 to i32
  %28 = add nsw i32 %27, 1
  call void @GPU_material_diffuse_get(i32 noundef %28, ptr noundef nonnull %2) #17
  br label %29

29:                                               ; preds = %20, %24, %18
  br i1 %8, label %31, label %30

30:                                               ; preds = %29
  call fastcc void @gpu_colors_enable(i32 noundef 1) #16
  br label %31

31:                                               ; preds = %30, %29
  %32 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !162
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %147

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  br label %37

37:                                               ; preds = %35, %142
  %38 = phi i64 [ 0, %35 ], [ %143, %142 ]
  %39 = load ptr, ptr %9, align 8, !tbaa !160
  %40 = load ptr, ptr %11, align 8, !tbaa !161
  %41 = getelementptr inbounds i32, ptr %40, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.MFace, ptr %39, i64 %43
  %45 = getelementptr inbounds %struct.MFace, ptr %39, i64 %43, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !67
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 3, i32 4
  %49 = load ptr, ptr %4, align 8, !tbaa !168
  %50 = call zeroext i8 @paint_is_face_hidden(ptr noundef %44, ptr noundef %49) #17
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %142

52:                                               ; preds = %37
  %53 = load i32, ptr %45, align 4, !tbaa !67
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 4, i32 7
  call void @glBegin(i32 noundef %55) #17
  %56 = load i32, ptr %36, align 4, !tbaa !157
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %52
  %59 = zext nneg i32 %48 to i64
  br label %60

60:                                               ; preds = %58, %69
  %61 = phi i64 [ 0, %58 ], [ %77, %69 ]
  br i1 %8, label %69, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %6, align 8, !tbaa !151
  %64 = getelementptr inbounds i32, ptr %44, i64 %61
  %65 = load i32, ptr %64, align 4, !tbaa !53
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr %63, i64 %66
  %68 = load float, ptr %67, align 4, !tbaa !159
  call fastcc void @gpu_color_from_mask_set(float noundef %68, ptr noundef nonnull %2) #16
  br label %69

69:                                               ; preds = %62, %60
  %70 = getelementptr inbounds i32, ptr %44, i64 %61
  %71 = load i32, ptr %70, align 4, !tbaa !53
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.MVert, ptr %5, i64 %72, i32 1
  call void @glNormal3sv(ptr noundef nonnull %73) #17
  %74 = load i32, ptr %70, align 4, !tbaa !53
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.MVert, ptr %5, i64 %75
  call void @glVertex3fv(ptr noundef %76) #17
  %77 = add nuw nsw i64 %61, 1
  %78 = icmp eq i64 %77, %59
  br i1 %78, label %141, label %60, !llvm.loop !258

79:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  %80 = load i32, ptr %45, align 4, !tbaa !53
  %81 = icmp eq i32 %80, 0
  %82 = load i32, ptr %44, align 4, !tbaa !53
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.MVert, ptr %5, i64 %83
  %85 = getelementptr inbounds i32, ptr %44, i64 1
  %86 = load i32, ptr %85, align 4, !tbaa !53
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %5, i64 %87
  %89 = getelementptr inbounds i32, ptr %44, i64 2
  %90 = load i32, ptr %89, align 4, !tbaa !53
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MVert, ptr %5, i64 %91
  br i1 %81, label %97, label %93

93:                                               ; preds = %79
  %94 = zext i32 %80 to i64
  %95 = getelementptr inbounds %struct.MVert, ptr %5, i64 %94
  %96 = call float @normal_quad_v3(ptr noundef nonnull %3, ptr noundef %84, ptr noundef %88, ptr noundef %92, ptr noundef nonnull %95) #17
  br label %99

97:                                               ; preds = %79
  %98 = call float @normal_tri_v3(ptr noundef nonnull %3, ptr noundef %84, ptr noundef %88, ptr noundef %92) #17
  br label %99

99:                                               ; preds = %97, %93
  call void @glNormal3fv(ptr noundef nonnull %3) #17
  br i1 %8, label %130, label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr %6, align 8, !tbaa !151
  %102 = load i32, ptr %44, align 4, !tbaa !53
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds float, ptr %101, i64 %103
  %105 = load float, ptr %104, align 4, !tbaa !159
  %106 = getelementptr inbounds i32, ptr %44, i64 1
  %107 = load i32, ptr %106, align 4, !tbaa !53
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds float, ptr %101, i64 %108
  %110 = load float, ptr %109, align 4, !tbaa !159
  %111 = fadd float %105, %110
  %112 = getelementptr inbounds i32, ptr %44, i64 2
  %113 = load i32, ptr %112, align 4, !tbaa !53
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds float, ptr %101, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !159
  %117 = fadd float %111, %116
  %118 = load i32, ptr %45, align 4, !tbaa !53
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %100
  %121 = zext i32 %118 to i64
  %122 = getelementptr inbounds float, ptr %101, i64 %121
  %123 = load float, ptr %122, align 4, !tbaa !159
  %124 = fadd float %117, %123
  %125 = fmul float %124, 2.500000e-01
  br label %128

126:                                              ; preds = %100
  %127 = fdiv float %117, 3.000000e+00
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi float [ %125, %120 ], [ %127, %126 ]
  call fastcc void @gpu_color_from_mask_set(float noundef %129, ptr noundef nonnull %2) #16
  br label %130

130:                                              ; preds = %128, %99
  %131 = zext nneg i32 %48 to i64
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi i64 [ 0, %130 ], [ %138, %132 ]
  %134 = getelementptr inbounds i32, ptr %44, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !53
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.MVert, ptr %5, i64 %136
  call void @glVertex3fv(ptr noundef %137) #17
  %138 = add nuw nsw i64 %133, 1
  %139 = icmp eq i64 %138, %131
  br i1 %139, label %140, label %132, !llvm.loop !259

140:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  br label %141

141:                                              ; preds = %69, %140
  call void @glEnd() #17
  br label %142

142:                                              ; preds = %37, %141
  %143 = add nuw nsw i64 %38, 1
  %144 = load i32, ptr %32, align 8, !tbaa !162
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %37, label %147, !llvm.loop !260

147:                                              ; preds = %142, %31
  br i1 %8, label %149, label %148

148:                                              ; preds = %147
  call fastcc void @gpu_colors_disable(i32 noundef 1) #16
  br label %149

149:                                              ; preds = %148, %147
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_draw_buffers_legacy_grids(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !261 {
  %2 = alloca [4 x float], align 16
  %3 = alloca [4 x ptr], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !262
  %9 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 8, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !186
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !197
  %13 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.DMFlagMat, ptr %12, i64 %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) @__const.gpu_draw_buffers_legacy_grids.diffuse_color, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  %19 = load i8, ptr %18, align 1, !tbaa !155
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  store float 1.000000e+00, ptr %22, align 8, !tbaa !159
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %2, align 16, !tbaa !159
  br label %31

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  %25 = load i8, ptr %24, align 8, !tbaa !154
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i16, ptr %17, align 2, !tbaa !187
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, 1
  call void @GPU_material_diffuse_get(i32 noundef %30, ptr noundef nonnull %2) #17
  br label %31

31:                                               ; preds = %23, %27, %21
  %32 = icmp eq i32 %10, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  call fastcc void @gpu_colors_enable(i32 noundef 1) #16
  br label %34

34:                                               ; preds = %33, %31
  %35 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !196
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %155

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 9
  %40 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 11
  %41 = add i32 %8, -1
  %42 = icmp sgt i32 %8, 1
  %43 = getelementptr inbounds ptr, ptr %3, i64 1
  %44 = getelementptr inbounds ptr, ptr %3, i64 2
  %45 = getelementptr inbounds ptr, ptr %3, i64 3
  %46 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 18
  %47 = icmp sgt i32 %8, 0
  br label %48

48:                                               ; preds = %38, %150
  %49 = phi i64 [ 0, %38 ], [ %151, %150 ]
  %50 = load ptr, ptr %13, align 8, !tbaa !195
  %51 = getelementptr inbounds i32, ptr %50, i64 %49
  %52 = load i32, ptr %51, align 4, !tbaa !53
  %53 = load ptr, ptr %39, align 8, !tbaa !194
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = load ptr, ptr %40, align 8, !tbaa !205
  %58 = getelementptr inbounds ptr, ptr %57, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %104, label %61

61:                                               ; preds = %48
  call void @glBegin(i32 noundef 7) #17
  br i1 %42, label %62, label %103

62:                                               ; preds = %61, %101
  %63 = phi i32 [ %64, %101 ], [ 0, %61 ]
  %64 = add nuw nsw i32 %63, 1
  br label %65

65:                                               ; preds = %62, %99
  %66 = phi i32 [ 0, %62 ], [ %67, %99 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %67 = add nuw nsw i32 %66, 1
  %68 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %67, i32 noundef %64) #16
  store ptr %68, ptr %3, align 16, !tbaa !34
  %69 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %67, i32 noundef %63) #16
  store ptr %69, ptr %43, align 8, !tbaa !34
  %70 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %66, i32 noundef %63) #16
  store ptr %70, ptr %44, align 16, !tbaa !34
  %71 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %66, i32 noundef %64) #16
  store ptr %71, ptr %45, align 8, !tbaa !34
  %72 = call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %59, i32 noundef %8, i32 noundef %66, i32 noundef %63) #17
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %65
  %75 = load i32, ptr %46, align 4, !tbaa !157
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %74, %84
  %78 = phi i64 [ %86, %84 ], [ 0, %74 ]
  %79 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  br i1 %32, label %84, label %81

81:                                               ; preds = %77
  %82 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %6, ptr noundef %80) #16
  %83 = load float, ptr %82, align 4, !tbaa !159
  call fastcc void @gpu_color_from_mask_set(float noundef %83, ptr noundef nonnull %2) #16
  br label %84

84:                                               ; preds = %77, %81
  %85 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %6, ptr noundef %80) #16
  call void @glNormal3fv(ptr noundef %85) #17
  call void @glVertex3fv(ptr noundef %80) #17
  %86 = add nuw nsw i64 %78, 1
  %87 = icmp eq i64 %86, 4
  br i1 %87, label %99, label %77, !llvm.loop !263

88:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %89 = call float @normal_quad_v3(ptr noundef nonnull %4, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71) #17
  call void @glNormal3fv(ptr noundef nonnull %4) #17
  br i1 %32, label %91, label %90

90:                                               ; preds = %88
  call fastcc void @gpu_color_from_mask_quad_set(ptr noundef nonnull %6, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef nonnull %2) #16
  br label %91

91:                                               ; preds = %90, %88
  br label %92

92:                                               ; preds = %91, %92
  %93 = phi i64 [ %96, %92 ], [ 0, %91 ]
  %94 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  call void @glVertex3fv(ptr noundef %95) #17
  %96 = add nuw nsw i64 %93, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %98, label %92, !llvm.loop !264

98:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %99

99:                                               ; preds = %84, %98, %65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  %100 = icmp eq i32 %67, %41
  br i1 %100, label %101, label %65, !llvm.loop !265

101:                                              ; preds = %99
  %102 = icmp eq i32 %64, %41
  br i1 %102, label %103, label %62, !llvm.loop !266

103:                                              ; preds = %101, %61
  call void @glEnd() #17
  br label %150

104:                                              ; preds = %48
  %105 = load i32, ptr %46, align 4, !tbaa !157
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br i1 %42, label %109, label %150

108:                                              ; preds = %104
  br i1 %42, label %130, label %150

109:                                              ; preds = %107, %128
  %110 = phi i32 [ %111, %128 ], [ 0, %107 ]
  call void @glBegin(i32 noundef 8) #17
  %111 = add nuw nsw i32 %110, 1
  br i1 %47, label %112, label %128

112:                                              ; preds = %109, %124
  %113 = phi i32 [ %126, %124 ], [ 0, %109 ]
  %114 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %113, i32 noundef %110) #16
  %115 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %113, i32 noundef %111) #16
  br i1 %32, label %122, label %116

116:                                              ; preds = %112
  %117 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %6, ptr noundef %114) #16
  %118 = load float, ptr %117, align 4, !tbaa !159
  call fastcc void @gpu_color_from_mask_set(float noundef %118, ptr noundef nonnull %2) #16
  %119 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %6, ptr noundef %114) #16
  call void @glNormal3fv(ptr noundef %119) #17
  call void @glVertex3fv(ptr noundef %114) #17
  %120 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %6, ptr noundef %115) #16
  %121 = load float, ptr %120, align 4, !tbaa !159
  call fastcc void @gpu_color_from_mask_set(float noundef %121, ptr noundef nonnull %2) #16
  br label %124

122:                                              ; preds = %112
  %123 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %6, ptr noundef %114) #16
  call void @glNormal3fv(ptr noundef %123) #17
  call void @glVertex3fv(ptr noundef %114) #17
  br label %124

124:                                              ; preds = %122, %116
  %125 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %6, ptr noundef %115) #16
  call void @glNormal3fv(ptr noundef %125) #17
  call void @glVertex3fv(ptr noundef %115) #17
  %126 = add nuw nsw i32 %113, 1
  %127 = icmp eq i32 %126, %8
  br i1 %127, label %128, label %112, !llvm.loop !267

128:                                              ; preds = %124, %109
  call void @glEnd() #17
  %129 = icmp eq i32 %111, %41
  br i1 %129, label %150, label %109, !llvm.loop !268

130:                                              ; preds = %108, %148
  %131 = phi i32 [ %132, %148 ], [ 0, %108 ]
  call void @glBegin(i32 noundef 8) #17
  %132 = add nuw nsw i32 %131, 1
  br i1 %47, label %133, label %148

133:                                              ; preds = %130, %145
  %134 = phi i32 [ %146, %145 ], [ 0, %130 ]
  %135 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %134, i32 noundef %131) #16
  %136 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %134, i32 noundef %132) #16
  %137 = icmp eq i32 %134, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %133
  %139 = add nsw i32 %134, -1
  %140 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %139, i32 noundef %131) #16
  %141 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %56, i32 noundef %139, i32 noundef %132) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %142 = call float @normal_quad_v3(ptr noundef nonnull %5, ptr noundef %141, ptr noundef %136, ptr noundef %135, ptr noundef %140) #17
  call void @glNormal3fv(ptr noundef nonnull %5) #17
  br i1 %32, label %144, label %143

143:                                              ; preds = %138
  call fastcc void @gpu_color_from_mask_quad_set(ptr noundef nonnull %6, ptr noundef %135, ptr noundef %136, ptr noundef %140, ptr noundef %141, ptr noundef nonnull %2) #16
  br label %144

144:                                              ; preds = %143, %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %145

145:                                              ; preds = %144, %133
  call void @glVertex3fv(ptr noundef %135) #17
  call void @glVertex3fv(ptr noundef %136) #17
  %146 = add nuw nsw i32 %134, 1
  %147 = icmp eq i32 %146, %8
  br i1 %147, label %148, label %133, !llvm.loop !269

148:                                              ; preds = %145, %130
  call void @glEnd() #17
  %149 = icmp eq i32 %132, %41
  br i1 %149, label %150, label %130, !llvm.loop !270

150:                                              ; preds = %128, %148, %107, %108, %103
  %151 = add nuw nsw i64 %49, 1
  %152 = load i32, ptr %35, align 8, !tbaa !196
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %48, label %155, !llvm.loop !271

155:                                              ; preds = %150, %34
  br i1 %32, label %157, label %156

156:                                              ; preds = %155
  call fastcc void @gpu_colors_disable(i32 noundef 1) #16
  br label %157

157:                                              ; preds = %156, %155
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @GPU_pbvh_buffers_diffuse_changed(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %6 = tail call zeroext i8 @GPU_material_use_matcaps_get() #17
  %7 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 19
  %8 = load i8, ptr %7, align 8, !tbaa !154
  %9 = icmp eq i8 %8, %2
  br i1 %9, label %10, label %59

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 20
  %12 = load i8, ptr %11, align 1, !tbaa !155
  %13 = icmp eq i8 %12, %6
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = icmp eq i8 %2, 0
  %16 = icmp ne i8 %6, 0
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %59, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !160
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !161
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MFace, ptr %20, i64 %26, i32 4
  %28 = load i16, ptr %27, align 4, !tbaa !70
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, 1
  call void @GPU_material_diffuse_get(i32 noundef %30, ptr noundef nonnull %4) #17
  br label %55

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 15
  %33 = load i32, ptr %32, align 8, !tbaa !252
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @BLI_gset_size(ptr noundef %1) #17
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %5, ptr noundef %1) #16
  %39 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %5) #16
  %40 = getelementptr inbounds %struct.BMFace, ptr %39, i64 0, i32 5
  %41 = load i16, ptr %40, align 8, !tbaa !219
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %42, 1
  call void @GPU_material_diffuse_get(i32 noundef %43, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %55

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !197
  %47 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !195
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.DMFlagMat, ptr %46, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !187
  %53 = sext i16 %52 to i32
  %54 = add nsw i32 %53, 1
  call void @GPU_material_diffuse_get(i32 noundef %54, ptr noundef nonnull %4) #17
  br label %55

55:                                               ; preds = %38, %44, %22
  %56 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 21
  %57 = call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %56) #16, !range !224
  %58 = xor i8 %57, 1
  br label %59

59:                                               ; preds = %35, %14, %10, %3, %55
  %60 = phi i8 [ %58, %55 ], [ 1, %3 ], [ 1, %10 ], [ 0, %14 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret i8 %60
}

; Function Attrs: optsize
declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !272 {
  %3 = load float, ptr %0, align 4, !tbaa !159
  %4 = load float, ptr %1, align 4, !tbaa !159
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !159
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !159
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !159
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !159
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_free_pbvh_buffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !156
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @gpu_pbvh_buffer_free_intern(i32 noundef %4) #16
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !178
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 16
  %13 = load i32, ptr %12, align 4, !tbaa !158
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.GPU_PBVH_Buffers, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 4, !tbaa !213
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11
  tail call fastcc void @gpu_pbvh_buffer_free_intern(i32 noundef %9) #16
  br label %20

20:                                               ; preds = %19, %15, %7
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef nonnull %0) #17
  br label %22

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_pbvh_buffer_free_intern(i32 noundef %0) unnamed_addr #0 !PGOFuncName !273 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !53
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gpu_get_global_buffer_pool() #16
  %6 = tail call i32 @BLI_thread_is_main() #17
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.GPUBufferPool, ptr %5, i64 0, i32 1
  br i1 %7, label %17, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  call void %10(i32 noundef 1, ptr noundef nonnull %2) #17
  %11 = load i32, ptr %8, align 4, !tbaa !48
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.GPUBufferPool, ptr %5, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  call void %14(i32 noundef %11, ptr noundef %16) #17
  store i32 0, ptr %8, align 4, !tbaa !48
  br label %40

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.GPUBufferPool, ptr %5, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !274
  %20 = load i32, ptr %8, align 4, !tbaa !48
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.GPUBufferPool, ptr %5, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  br label %34

25:                                               ; preds = %17
  %26 = add nsw i32 %19, 100
  store i32 %26, ptr %18, align 4, !tbaa !274
  %27 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.GPUBufferPool, ptr %5, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = sext i32 %26 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call ptr %27(ptr noundef %29, i64 noundef %31, ptr noundef nonnull @__func__.gpu_pbvh_buffer_free_intern) #17
  store ptr %32, ptr %28, align 8, !tbaa !45
  %33 = load i32, ptr %8, align 4, !tbaa !48
  br label %34

34:                                               ; preds = %22, %25
  %35 = phi i32 [ %20, %22 ], [ %33, %25 ]
  %36 = phi ptr [ %24, %22 ], [ %32, %25 ]
  %37 = add nsw i32 %35, 1
  store i32 %37, ptr %8, align 4, !tbaa !48
  %38 = sext i32 %35 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  store i32 %0, ptr %39, align 4, !tbaa !53
  br label %40

40:                                               ; preds = %9, %13, %1, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_draw_pbvh_BB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x [3 x float]]], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #18
  %5 = load float, ptr %0, align 4, !tbaa !159
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %1, align 4, !tbaa !159
  %8 = insertelement <4 x float> poison, float %5, i64 0
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 1
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 2
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 3
  %12 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 0, i64 1
  %13 = load <2 x float>, ptr %6, align 4, !tbaa !159
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %8, <4 x float> %14, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %16 = insertelement <4 x float> %15, float %7, i64 3
  store <4 x float> %16, ptr %4, align 16, !tbaa !159
  %17 = insertelement <4 x float> %14, float %7, i64 2
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %18, ptr %9, align 16, !tbaa !159
  store <2 x float> %13, ptr %12, align 4, !tbaa !159
  %19 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 1
  store float %5, ptr %19, align 4, !tbaa !159
  %20 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 1, i64 1
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load <2 x float>, ptr %21, align 4, !tbaa !159
  %23 = extractelement <2 x float> %22, i64 1
  store float %23, ptr %10, align 16, !tbaa !159
  %24 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %15, <4 x float> %24, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %26, ptr %11, align 4, !tbaa !159
  %27 = extractelement <2 x float> %22, i64 0
  store float %27, ptr %20, align 16, !tbaa !159
  %28 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 1, i64 2
  %29 = extractelement <2 x float> %13, i64 1
  store float %29, ptr %28, align 4, !tbaa !159
  %30 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 2
  store float %5, ptr %30, align 8, !tbaa !159
  %31 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 2, i64 1
  %32 = insertelement <4 x float> %24, float %5, i64 2
  %33 = shufflevector <4 x float> %32, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %33, ptr %31, align 4, !tbaa !159
  %34 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 1, i64 3, i64 2
  store float %23, ptr %34, align 4, !tbaa !159
  %35 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2
  %36 = insertelement <4 x float> poison, float %7, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> %24, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %38 = shufflevector <4 x float> %37, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %39, ptr %35, align 16, !tbaa !159
  %40 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 1, i64 1
  store <4 x float> %18, ptr %40, align 16, !tbaa !159
  %41 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 2, i64 2
  store float %23, ptr %41, align 16, !tbaa !159
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 2, i64 3
  %43 = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %43, ptr %42, align 4, !tbaa !159
  %44 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 0, i64 1
  store float %27, ptr %44, align 4, !tbaa !159
  %45 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 0, i64 2
  store float %29, ptr %45, align 8, !tbaa !159
  %46 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 1
  store float %5, ptr %46, align 4, !tbaa !159
  %47 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 1, i64 1
  store float %27, ptr %47, align 16, !tbaa !159
  %48 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 1, i64 2
  store float %29, ptr %48, align 4, !tbaa !159
  %49 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 2
  store float %5, ptr %49, align 8, !tbaa !159
  %50 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 2, i64 1
  %51 = insertelement <4 x float> %24, float %7, i64 2
  %52 = shufflevector <4 x float> %51, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %52, ptr %50, align 4, !tbaa !159
  %53 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 3, i64 3, i64 2
  store float %23, ptr %53, align 4, !tbaa !159
  %54 = icmp eq i8 %2, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %3
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #17
  br label %57

56:                                               ; preds = %3
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #17
  br label %57

57:                                               ; preds = %56, %55
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %4) #17
  call void @glDrawArrays(i32 noundef 7, i32 noundef 0, i32 noundef 16) #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_init_draw_pbvh_BB() local_unnamed_addr #0 {
  tail call void @glPushAttrib(i32 noundef 8192) #17
  tail call void @glDisable(i32 noundef 2884) #17
  tail call void @glEnableClientState(i32 noundef 32884) #17
  tail call void @glDisableClientState(i32 noundef 32886) #17
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #17
  tail call void @glDisable(i32 noundef 2896) #17
  tail call void @glDisable(i32 noundef 2903) #17
  tail call void @glEnable(i32 noundef 3042) #17
  %1 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %1(i32 noundef 34962, i32 noundef 0) #17
  ret void
}

; Function Attrs: optsize
declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_end_draw_pbvh_BB() local_unnamed_addr #0 {
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #17
  tail call void @glPopAttrib() #17
  ret void
}

; Function Attrs: optsize
declare void @glPopAttrib() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_buffer_pool_delete_last(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !275 {
  %2 = load i32, ptr %0, align 8, !tbaa !39
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.GPUBufferPool, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = zext nneg i32 %2 to i64
  %8 = getelementptr ptr, ptr %6, i64 %7
  %9 = getelementptr ptr, ptr %8, i64 -1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @__glewDeleteBuffersARB, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.GPUBuffer, ptr %10, i64 0, i32 2
  tail call void %16(i32 noundef 1, ptr noundef nonnull %17) #17
  br label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.GPUBuffer, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  tail call void %19(ptr noundef %21) #17
  br label %22

22:                                               ; preds = %18, %15
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %10) #17
  %24 = load i32, ptr %0, align 8, !tbaa !39
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %0, align 8, !tbaa !39
  %26 = load ptr, ptr %5, align 8, !tbaa !44
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  store ptr null, ptr %28, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %4, %1, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_get_global_buffer_pool() unnamed_addr #0 !PGOFuncName !276 {
  %1 = load ptr, ptr @gpu_buffer_pool, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call fastcc ptr @gpu_buffer_pool_new() #16
  store ptr %4, ptr @gpu_buffer_pool, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_buffer_pool_remove_index(ptr noundef %0, i32 noundef %1) unnamed_addr #12 !PGOFuncName !277 {
  %3 = icmp eq ptr %0, null
  %4 = icmp slt i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !39
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = add nsw i32 %7, -1
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.GPUBufferPool, ptr %0, i64 0, i32 4
  %14 = zext nneg i32 %1 to i64
  %15 = zext nneg i32 %10 to i64
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ %14, %12 ], [ %19, %16 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !44
  %19 = add nuw nsw i64 %17, 1
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds ptr, ptr %18, i64 %17
  store ptr %21, ptr %22, align 8, !tbaa !34
  %23 = icmp eq i64 %19, %15
  br i1 %23, label %24, label %16, !llvm.loop !278

24:                                               ; preds = %16, %9
  %25 = getelementptr inbounds %struct.GPUBufferPool, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = zext nneg i32 %10 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  store ptr null, ptr %28, align 8, !tbaa !34
  store i32 %10, ptr %0, align 8, !tbaa !39
  br label %29

29:                                               ; preds = %2, %6, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_buffer_pool_new() unnamed_addr #0 !PGOFuncName !279 {
  %1 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i8, ptr @__GLEW_ARB_vertex_buffer_object, align 1, !tbaa !172
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr @useVBOs, align 4, !tbaa !53
  br label %7

7:                                                ; preds = %3, %0
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 32, ptr noundef nonnull @.str.7) #17
  %10 = getelementptr inbounds %struct.GPUBufferPool, ptr %9, i64 0, i32 2
  store i32 8, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.GPUBufferPool, ptr %9, i64 0, i32 3
  store i32 100, ptr %11, align 4, !tbaa !274
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.8) #17
  %14 = getelementptr inbounds %struct.GPUBufferPool, ptr %9, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !44
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %16 = load i32, ptr %11, align 4, !tbaa !274
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.9) #17
  %20 = getelementptr inbounds %struct.GPUBufferPool, ptr %9, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !45
  ret ptr %9
}

; Function Attrs: optsize
declare i32 @BLI_thread_is_main() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_drawobject_add_triangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #12 !PGOFuncName !280 {
  %7 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  store i32 %3, ptr %7, align 4, !tbaa !53
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  store i32 %4, ptr %8, align 4, !tbaa !53
  %9 = getelementptr inbounds i32, ptr %7, i64 2
  store i32 %5, ptr %9, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %16, %10 ]
  %12 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = trunc i64 %11 to i32
  %15 = add i32 %14, %1
  tail call fastcc void @gpu_drawobject_add_vert_point(ptr noundef %0, i32 noundef %13, i32 noundef %15) #16
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %10, !llvm.loop !281

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = sdiv i32 %1, 3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  store i32 %2, ptr %23, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_drawobject_add_vert_point(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 !PGOFuncName !282 {
  %4 = getelementptr inbounds %struct.GPUDrawObject, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.GPUVertPointLink, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !89
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 %2, ptr %7, align 4, !tbaa !89
  br label %11

11:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !283 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !174
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !159
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !174
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_mcol_uc3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !284 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !172
  store i8 %4, ptr %0, align 1, !tbaa !172
  %5 = getelementptr inbounds i8, ptr %1, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !172
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !172
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !172
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !285 {
  %3 = load float, ptr %1, align 4, !tbaa !159
  store float %3, ptr %0, align 4, !tbaa !159
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !159
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !159
  ret void
}

; Function Attrs: optsize
declare ptr @DM_paint_uvlayer_active_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_buffer_setup_type(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !286 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds [7 x %struct.GPUBufferTypeSettings], ptr @gpu_buffer_type_settings, i64 0, i64 %3
  %5 = icmp eq i32 %1, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.GPUDrawObject, ptr %8, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !132
  %11 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %10) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %19

13:                                               ; preds = %2
  %14 = add i32 %1, -3
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %13, %16, %6
  %20 = phi ptr [ %11, %6 ], [ null, %16 ], [ null, %13 ]
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = getelementptr inbounds [7 x %struct.GPUBufferTypeSettings], ptr @gpu_buffer_type_settings, i64 0, i64 %3, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !287
  %25 = tail call fastcc i32 @gpu_buffer_size_from_type(ptr noundef %0, i32 noundef %1) #16
  %26 = getelementptr inbounds [7 x %struct.GPUBufferTypeSettings], ptr @gpu_buffer_type_settings, i64 0, i64 %3, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !289
  %28 = load ptr, ptr %4, align 16, !tbaa !290
  %29 = tail call fastcc ptr @gpu_buffer_setup(ptr noundef %0, ptr noundef %22, i32 noundef %24, i32 noundef %25, i32 noundef %27, ptr noundef %20, ptr noundef %28) #16
  br label %30

30:                                               ; preds = %16, %6, %19
  %31 = phi ptr [ %29, %19 ], [ null, %6 ], [ null, %16 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_buffer_setup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !291 {
  %8 = tail call fastcc ptr @gpu_get_global_buffer_pool() #16
  tail call void @BLI_mutex_lock(ptr noundef nonnull @buffer_mutex) #17
  %9 = tail call fastcc ptr @gpu_buffer_alloc_intern(i32 noundef %3) #16
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.GPUDrawObject, ptr %12, i64 0, i32 15
  br i1 %10, label %14, label %15

14:                                               ; preds = %7
  store i8 1, ptr %13, align 4, !tbaa !150
  br label %99

15:                                               ; preds = %7
  %16 = load i8, ptr %13, align 4, !tbaa !150
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  br i1 %17, label %19, label %99

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr %20(i64 noundef %24, ptr noundef nonnull @.str.13) #17
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.GPUDrawObject, ptr %1, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr %26(i64 noundef %30, ptr noundef nonnull @.str.14) #17
  %32 = load i32, ptr %27, align 8, !tbaa !77
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.GPUDrawObject, ptr %1, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i64 [ 0, %34 ], [ %48, %37 ]
  %39 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %36, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !80
  %41 = mul nsw i32 %40, %2
  %42 = getelementptr inbounds i32, ptr %31, i64 %38
  store i32 %41, ptr %42, align 4, !tbaa !53
  %43 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %36, i64 %38, i32 2
  %44 = load i16, ptr %43, align 4, !tbaa !83
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i32, ptr %25, i64 %45
  %47 = trunc i64 %38 to i32
  store i32 %47, ptr %46, align 4, !tbaa !53
  %48 = add nuw nsw i64 %38, 1
  %49 = load i32, ptr %27, align 8, !tbaa !77
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %37, label %52, !llvm.loop !292

52:                                               ; preds = %37, %19
  %53 = load i32, ptr @useVBOs, align 4, !tbaa !53
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %52, %69
  %56 = phi ptr [ %70, %69 ], [ %9, %52 ]
  %57 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.GPUBuffer, ptr %56, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !54
  tail call void %57(i32 noundef %4, i32 noundef %59) #17
  %60 = load ptr, ptr @__glewBufferDataARB, align 8, !tbaa !34
  %61 = load i32, ptr %56, align 8, !tbaa !50
  %62 = sext i32 %61 to i64
  tail call void %60(i32 noundef %4, i64 noundef %62, ptr noundef null, i32 noundef 35044) #17
  %63 = load ptr, ptr @__glewMapBufferARB, align 8, !tbaa !34
  %64 = tail call ptr %63(i32 noundef %4, i32 noundef 35001) #17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %55
  tail call fastcc void @gpu_buffer_free_intern(ptr noundef nonnull %56) #16
  tail call fastcc void @gpu_buffer_pool_delete_last(ptr noundef %8) #16
  %67 = load i32, ptr %8, align 8, !tbaa !39
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  tail call fastcc void @gpu_buffer_pool_delete_last(ptr noundef nonnull %8) #16
  %70 = tail call fastcc ptr @gpu_buffer_alloc_intern(i32 noundef %3) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %55, !llvm.loop !293

72:                                               ; preds = %66, %69
  %73 = load ptr, ptr %18, align 8, !tbaa !98
  %74 = getelementptr inbounds %struct.GPUDrawObject, ptr %73, i64 0, i32 15
  store i8 1, ptr %74, align 4, !tbaa !150
  br label %75

75:                                               ; preds = %55, %72
  %76 = phi ptr [ null, %72 ], [ %56, %55 ]
  %77 = load ptr, ptr %18, align 8, !tbaa !98
  %78 = getelementptr inbounds %struct.GPUDrawObject, ptr %77, i64 0, i32 15
  %79 = load i8, ptr %78, align 4, !tbaa !150
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75, %81
  tail call void %6(ptr noundef %0, ptr noundef %64, ptr noundef %31, ptr noundef %25, ptr noundef %5) #17
  %82 = load ptr, ptr @__glewUnmapBufferARB, align 8, !tbaa !34
  %83 = tail call zeroext i8 %82(i32 noundef %4) #17
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %81, label %85, !llvm.loop !294

85:                                               ; preds = %81, %75
  %86 = load ptr, ptr @__glewBindBufferARB, align 8, !tbaa !34
  tail call void %86(i32 noundef %4, i32 noundef 0) #17
  br label %95

87:                                               ; preds = %52
  %88 = getelementptr inbounds %struct.GPUBuffer, ptr %9, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !55
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void %6(ptr noundef %0, ptr noundef nonnull %89, ptr noundef %31, ptr noundef %25, ptr noundef %5) #17
  br label %95

92:                                               ; preds = %87
  %93 = load ptr, ptr %18, align 8, !tbaa !98
  %94 = getelementptr inbounds %struct.GPUDrawObject, ptr %93, i64 0, i32 15
  store i8 1, ptr %94, align 4, !tbaa !150
  br label %95

95:                                               ; preds = %91, %92, %85
  %96 = phi ptr [ %76, %85 ], [ %9, %91 ], [ %9, %92 ]
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %97(ptr noundef %31) #17
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %98(ptr noundef %25) #17
  br label %99

99:                                               ; preds = %15, %14, %95
  %100 = phi ptr [ %96, %95 ], [ null, %14 ], [ null, %15 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @buffer_mutex) #17
  ret ptr %100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @gpu_buffer_size_from_type(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !295 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  switch i32 %1, label %36 [
    i32 0, label %5
    i32 1, label %12
    i32 2, label %16
    i32 3, label %20
    i32 4, label %24
    i32 5, label %28
    i32 6, label %32
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = add nsw i32 %9, %7
  %11 = mul i32 %10, 12
  br label %37

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !85
  %15 = mul i32 %14, 12
  br label %37

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !85
  %19 = mul i32 %18, 3
  br label %37

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !85
  %23 = shl i32 %22, 3
  br label %37

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 11
  %26 = load i32, ptr %25, align 4, !tbaa !85
  %27 = shl i32 %26, 4
  br label %37

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 14
  %30 = load i32, ptr %29, align 8, !tbaa !76
  %31 = shl i32 %30, 3
  br label %37

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.GPUDrawObject, ptr %4, i64 0, i32 11
  %34 = load i32, ptr %33, align 4, !tbaa !85
  %35 = shl i32 %34, 4
  br label %37

36:                                               ; preds = %2
  unreachable

37:                                               ; preds = %32, %28, %24, %20, %16, %12, %5
  %38 = phi i32 [ %35, %32 ], [ %31, %28 ], [ %27, %24 ], [ %23, %20 ], [ %19, %16 ], [ %15, %12 ], [ %11, %5 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @gpu_color_from_mask(float noundef %0) unnamed_addr #3 !PGOFuncName !296 {
  %2 = fneg float %0
  %3 = tail call float @llvm.fmuladd.f32(float %2, float 7.500000e-01, float 1.000000e+00)
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !297 {
  %4 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !298
  %6 = mul nsw i32 %5, %2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  ret ptr %8
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !299 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !302
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !304 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !305 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !251
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_color_from_mask_set(float noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !306 {
  %3 = tail call fastcc float @gpu_color_from_mask(float noundef %0) #16
  %4 = load float, ptr %1, align 4, !tbaa !159
  %5 = fmul float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !159
  %8 = fmul float %3, %7
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !159
  %11 = fmul float %3, %10
  tail call void @glColor3f(float noundef %5, float noundef %8, float noundef %11) #17
  ret void
}

; Function Attrs: optsize
declare void @glNormal3sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_color_from_mask_quad_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !307 {
  %7 = tail call fastcc float @gpu_color_from_mask_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %8 = load float, ptr %5, align 4, !tbaa !159
  %9 = fmul float %7, %8
  %10 = getelementptr inbounds float, ptr %5, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !159
  %12 = fmul float %7, %11
  %13 = getelementptr inbounds float, ptr %5, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !159
  %15 = fmul float %7, %14
  tail call void @glColor3f(float noundef %9, float noundef %12, float noundef %15) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef float @gpu_color_from_mask_quad(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4) unnamed_addr #10 !PGOFuncName !308 {
  %6 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %1) #16
  %7 = load float, ptr %6, align 4, !tbaa !159
  %8 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %2) #16
  %9 = load float, ptr %8, align 4, !tbaa !159
  %10 = fadd float %7, %9
  %11 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %3) #16
  %12 = load float, ptr %11, align 4, !tbaa !159
  %13 = fadd float %10, %12
  %14 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %4) #16
  %15 = load float, ptr %14, align 4, !tbaa !159
  %16 = fadd float %13, %15
  %17 = fmul float %16, 2.500000e-01
  %18 = tail call fastcc float @gpu_color_from_mask(float noundef %17) #16
  ret float %18
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"gpu_buffers.c:gpu_buffer_pool_free"}
!39 = !{!40, !41, i64 0}
!40 = !{!"GPUBufferPool", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !35, i64 16, !35, i64 24}
!41 = !{!"int", !36, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!40, !35, i64 16}
!45 = !{!40, !35, i64 24}
!46 = !{!"gpu_buffers.c:gpu_buffer_pool_free_unused"}
!47 = distinct !{!47, !43}
!48 = !{!40, !41, i64 4}
!49 = !{!"gpu_buffers.c:gpu_buffer_alloc_intern"}
!50 = !{!51, !41, i64 0}
!51 = !{!"GPUBuffer", !41, i64 0, !35, i64 8, !41, i64 16}
!52 = distinct !{!52, !43}
!53 = !{!41, !41, i64 0}
!54 = !{!51, !41, i64 16}
!55 = !{!51, !35, i64 8}
!56 = distinct !{!56, !43}
!57 = !{!"gpu_buffers.c:gpu_buffer_free_intern"}
!58 = distinct !{!58, !43}
!59 = !{!40, !41, i64 8}
!60 = distinct !{!60, !43}
!61 = !{!62, !41, i64 1060}
!62 = !{!"DerivedMesh", !63, i64 0, !63, i64 200, !63, i64 400, !63, i64 600, !63, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !35, i64 1032, !35, i64 1040, !41, i64 1048, !64, i64 1052, !41, i64 1056, !41, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!63 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!64 = !{!"float", !36, i64 0}
!65 = !{!62, !35, i64 1184}
!66 = !{!62, !35, i64 1120}
!67 = !{!68, !41, i64 12}
!68 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !69, i64 16, !36, i64 18, !36, i64 19}
!69 = !{!"short", !36, i64 0}
!70 = !{!68, !69, i64 16}
!71 = distinct !{!71, !43}
!72 = !{!62, !35, i64 1104}
!73 = !{!74, !41, i64 92}
!74 = !{!"GPUDrawObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !41, i64 64, !35, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !36, i64 100}
!75 = !{!62, !35, i64 1112}
!76 = !{!74, !41, i64 96}
!77 = !{!74, !41, i64 80}
!78 = distinct !{!78, !43}
!79 = !{!74, !35, i64 72}
!80 = !{!81, !41, i64 0}
!81 = !{!"GPUBufferMaterial", !41, i64 0, !41, i64 4, !69, i64 8}
!82 = !{!81, !41, i64 4}
!83 = !{!81, !69, i64 8}
!84 = distinct !{!84, !43}
!85 = !{!74, !41, i64 84}
!86 = !{!74, !35, i64 48}
!87 = !{!"gpu_buffers.c:gpu_drawobject_init_vert_points"}
!88 = !{!74, !35, i64 56}
!89 = !{!90, !41, i64 0}
!90 = !{!"GPUVertPointLink", !41, i64 0}
!91 = distinct !{!91, !43}
!92 = !{!68, !41, i64 0}
!93 = !{!68, !41, i64 4}
!94 = !{!68, !41, i64 8}
!95 = distinct !{!95, !43}
!96 = !{!74, !41, i64 88}
!97 = distinct !{!97, !43}
!98 = !{!62, !35, i64 1040}
!99 = !{!74, !35, i64 0}
!100 = !{!74, !35, i64 8}
!101 = !{!74, !35, i64 16}
!102 = !{!74, !35, i64 24}
!103 = !{!74, !35, i64 32}
!104 = !{!74, !35, i64 40}
!105 = !{!"gpu_buffers.c:GPU_buffer_copy_vertex"}
!106 = !{!62, !35, i64 1168}
!107 = distinct !{!107, !43}
!108 = distinct !{!108, !43}
!109 = !{!"gpu_buffers.c:GPU_buffer_copy_normal"}
!110 = !{!62, !35, i64 1336}
!111 = !{!68, !36, i64 19}
!112 = distinct !{!112, !43}
!113 = !{!"gpu_buffers.c:GPU_buffer_copy_mcol"}
!114 = distinct !{!114, !43}
!115 = !{!"gpu_buffers.c:GPU_buffer_copy_uv"}
!116 = distinct !{!116, !43}
!117 = !{!"gpu_buffers.c:GPU_buffer_copy_uv_texpaint"}
!118 = distinct !{!118, !43}
!119 = distinct !{!119, !43}
!120 = !{!"gpu_buffers.c:GPU_buffer_copy_edge"}
!121 = !{!62, !35, i64 1176}
!122 = !{!123, !41, i64 0}
!123 = !{!"MEdge", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 9, !69, i64 10}
!124 = !{!123, !41, i64 4}
!125 = distinct !{!125, !43}
!126 = !{!"gpu_buffers.c:GPU_buffer_copy_uvedge"}
!127 = !{!62, !41, i64 1008}
!128 = !{!62, !35, i64 1160}
!129 = distinct !{!129, !43}
!130 = !{!"gpu_buffers.c:gpu_buffer_setup_common"}
!131 = !{!62, !41, i64 1056}
!132 = !{!74, !41, i64 64}
!133 = !{!"gpu_buffers.c:gpu_drawobject_buffer_from_type"}
!134 = !{!135, !41, i64 8}
!135 = !{!"GPUAttrib", !41, i64 0, !41, i64 4, !41, i64 8}
!136 = !{i32 0, i32 5}
!137 = !{!135, !41, i64 4}
!138 = distinct !{!138, !43}
!139 = !{!"gpu_buffers.c:GPU_typesize"}
!140 = !{!135, !41, i64 0}
!141 = distinct !{!141, !43}
!142 = distinct !{!142, !43}
!143 = distinct !{!143, !43}
!144 = distinct !{!144, !43}
!145 = !{!146, !69, i64 8480}
!146 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !41, i64 8468, !69, i64 8472, !69, i64 8474, !69, i64 8476, !69, i64 8478, !69, i64 8480, !69, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !69, i64 8496, !69, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !69, i64 8528, !69, i64 8530, !69, i64 8532, !69, i64 8534, !147, i64 8536, !147, i64 8552, !147, i64 8568, !147, i64 8584, !147, i64 8600, !147, i64 8616, !147, i64 8632, !36, i64 8648, !69, i64 8712, !69, i64 8714, !69, i64 8716, !69, i64 8718, !69, i64 8720, !69, i64 8722, !69, i64 8724, !69, i64 8726, !36, i64 8728, !69, i64 8896, !69, i64 8898, !69, i64 8900, !69, i64 8902, !69, i64 8904, !69, i64 8906, !69, i64 8908, !69, i64 8910, !41, i64 8912, !41, i64 8916, !69, i64 8920, !69, i64 8922, !69, i64 8924, !69, i64 8926, !69, i64 8928, !69, i64 8930, !69, i64 8932, !69, i64 8934, !69, i64 8936, !69, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !69, i64 8944, !69, i64 8946, !69, i64 8948, !69, i64 8950, !69, i64 8952, !69, i64 8954, !64, i64 8956, !64, i64 8960, !41, i64 8964, !69, i64 8968, !69, i64 8970, !64, i64 8972, !69, i64 8976, !69, i64 8978, !69, i64 8980, !69, i64 8982, !148, i64 8984, !36, i64 9760, !36, i64 9772, !69, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !41, i64 10896, !41, i64 10900, !64, i64 10904, !64, i64 10908, !41, i64 10912, !69, i64 10916, !69, i64 10918, !69, i64 10920, !69, i64 10922, !69, i64 10924, !69, i64 10926, !149, i64 10928}
!147 = !{!"ListBase", !35, i64 0, !35, i64 8}
!148 = !{!"ColorBand", !69, i64 0, !69, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!149 = !{!"WalkNavigation", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !69, i64 24, !36, i64 26}
!150 = !{!74, !36, i64 100}
!151 = !{!152, !35, i64 48}
!152 = !{!"GPU_PBVH_Buffers", !41, i64 0, !41, i64 4, !41, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !41, i64 40, !35, i64 48, !153, i64 56, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !36, i64 153, !36, i64 156}
!153 = !{!"CCGKey", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!154 = !{!152, !36, i64 152}
!155 = !{!152, !36, i64 153}
!156 = !{!152, !41, i64 0}
!157 = !{!152, !41, i64 148}
!158 = !{!152, !41, i64 140}
!159 = !{!64, !64, i64 0}
!160 = !{!152, !35, i64 16}
!161 = !{!152, !35, i64 32}
!162 = !{!152, !41, i64 40}
!163 = distinct !{!163, !43}
!164 = distinct !{!164, !43}
!165 = distinct !{!165, !43}
!166 = distinct !{!166, !43}
!167 = distinct !{!167, !43}
!168 = !{!152, !35, i64 24}
!169 = !{!"gpu_buffers.c:copy_v4_v4"}
!170 = !{!"gpu_buffers.c:copy_v3_v3"}
!171 = !{!"gpu_buffers.c:gpu_color_from_mask_copy"}
!172 = !{!36, !36, i64 0}
!173 = !{!"gpu_buffers.c:normal_float_to_short_v3"}
!174 = !{!69, !69, i64 0}
!175 = !{!152, !41, i64 8}
!176 = distinct !{!176, !43}
!177 = !{i32 0, i32 2}
!178 = !{!152, !41, i64 4}
!179 = distinct !{!179, !43}
!180 = distinct !{!180, !43}
!181 = distinct !{!181, !43}
!182 = !{!"gpu_buffers.c:gpu_vbo_enabled"}
!183 = !{!153, !41, i64 12}
!184 = !{!185, !36, i64 2}
!185 = !{!"DMFlagMat", !69, i64 0, !36, i64 2}
!186 = !{!153, !41, i64 36}
!187 = !{!185, !69, i64 0}
!188 = !{!153, !41, i64 8}
!189 = distinct !{!189, !43}
!190 = distinct !{!190, !43}
!191 = distinct !{!191, !43}
!192 = distinct !{!192, !43}
!193 = distinct !{!193, !43}
!194 = !{!152, !35, i64 96}
!195 = !{!152, !35, i64 120}
!196 = !{!152, !41, i64 128}
!197 = !{!152, !35, i64 104}
!198 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53, i64 16, i64 4, !53, i64 20, i64 4, !53, i64 24, i64 4, !53, i64 28, i64 4, !53, i64 32, i64 4, !53, i64 36, i64 4, !53}
!199 = !{!"gpu_buffers.c:CCG_grid_elem"}
!200 = !{!"gpu_buffers.c:CCG_elem_no"}
!201 = !{!153, !41, i64 20}
!202 = !{!"gpu_buffers.c:CCG_elem_mask"}
!203 = !{!153, !41, i64 24}
!204 = !{!"gpu_buffers.c:gpu_color_from_mask_quad_copy"}
!205 = !{!152, !35, i64 112}
!206 = !{!152, !41, i64 144}
!207 = distinct !{!207, !43}
!208 = distinct !{!208, !43}
!209 = distinct !{!209, !43}
!210 = distinct !{!210, !43}
!211 = distinct !{!211, !43}
!212 = distinct !{!212, !43}
!213 = !{!152, !41, i64 132}
!214 = !{!"gpu_buffers.c:gpu_get_grid_buffer"}
!215 = distinct !{!215, !43}
!216 = distinct !{!216, !43}
!217 = distinct !{!217, !43}
!218 = distinct !{!218, !43}
!219 = !{!220, !69, i64 48}
!220 = !{!"BMFace", !221, i64 0, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 36, !69, i64 48}
!221 = !{!"BMHeader", !35, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!222 = !{!223, !36, i64 28}
!223 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !63, i64 144, !63, i64 344, !63, i64 544, !63, i64 744, !69, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !147, i64 960, !35, i64 976, !147, i64 984, !35, i64 1000}
!224 = !{i8 0, i8 2}
!225 = distinct !{!225, !43}
!226 = distinct !{!226, !43}
!227 = !{!228, !35, i64 0}
!228 = !{!"BMVert", !221, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!229 = distinct !{!229, !43}
!230 = distinct !{!230, !43}
!231 = distinct !{!231, !43}
!232 = !{!220, !35, i64 24}
!233 = !{!234, !35, i64 16}
!234 = !{!"BMLoop", !221, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!235 = !{!234, !35, i64 56}
!236 = distinct !{!236, !43}
!237 = distinct !{!237, !43}
!238 = !{!"gpu_buffers.c:gpu_bmesh_face_visible_count"}
!239 = distinct !{!239, !43}
!240 = !{!"gpu_buffers.c:gpu_bmesh_vert_visible_count"}
!241 = distinct !{!241, !43}
!242 = distinct !{!242, !43}
!243 = !{!"gpu_buffers.c:BLI_gsetIterator_init"}
!244 = !{!"gpu_buffers.c:BLI_gsetIterator_getKey"}
!245 = !{!"gpu_buffers.c:BLI_gsetIterator_done"}
!246 = !{!"gpu_buffers.c:gpu_bmesh_vert_to_buffer_copy"}
!247 = !{!"gpu_buffers.c:BLI_gsetIterator_step"}
!248 = !{!"gpu_buffers.c:_bm_elem_flag_test"}
!249 = !{!221, !36, i64 13}
!250 = !{!"gpu_buffers.c:_bm_elem_index_get"}
!251 = !{!221, !41, i64 8}
!252 = !{!152, !41, i64 136}
!253 = !{!152, !41, i64 68}
!254 = distinct !{!254, !43}
!255 = !{!"gpu_buffers.c:gpu_colors_enable"}
!256 = !{!"gpu_buffers.c:gpu_colors_disable"}
!257 = !{!"gpu_buffers.c:gpu_draw_buffers_legacy_mesh"}
!258 = distinct !{!258, !43}
!259 = distinct !{!259, !43}
!260 = distinct !{!260, !43}
!261 = !{!"gpu_buffers.c:gpu_draw_buffers_legacy_grids"}
!262 = !{!152, !41, i64 64}
!263 = distinct !{!263, !43}
!264 = distinct !{!264, !43}
!265 = distinct !{!265, !43}
!266 = distinct !{!266, !43}
!267 = distinct !{!267, !43}
!268 = distinct !{!268, !43}
!269 = distinct !{!269, !43}
!270 = distinct !{!270, !43}
!271 = distinct !{!271, !43}
!272 = !{!"gpu_buffers.c:equals_v3v3"}
!273 = !{!"gpu_buffers.c:gpu_pbvh_buffer_free_intern"}
!274 = !{!40, !41, i64 12}
!275 = !{!"gpu_buffers.c:gpu_buffer_pool_delete_last"}
!276 = !{!"gpu_buffers.c:gpu_get_global_buffer_pool"}
!277 = !{!"gpu_buffers.c:gpu_buffer_pool_remove_index"}
!278 = distinct !{!278, !43}
!279 = !{!"gpu_buffers.c:gpu_buffer_pool_new"}
!280 = !{!"gpu_buffers.c:gpu_drawobject_add_triangle"}
!281 = distinct !{!281, !43}
!282 = !{!"gpu_buffers.c:gpu_drawobject_add_vert_point"}
!283 = !{!"gpu_buffers.c:normal_short_to_float_v3"}
!284 = !{!"gpu_buffers.c:copy_mcol_uc3"}
!285 = !{!"gpu_buffers.c:copy_v2_v2"}
!286 = !{!"gpu_buffers.c:gpu_buffer_setup_type"}
!287 = !{!288, !41, i64 12}
!288 = !{!"", !35, i64 0, !41, i64 8, !41, i64 12}
!289 = !{!288, !41, i64 8}
!290 = !{!288, !35, i64 0}
!291 = !{!"gpu_buffers.c:gpu_buffer_setup"}
!292 = distinct !{!292, !43}
!293 = distinct !{!293, !43}
!294 = distinct !{!294, !43}
!295 = !{!"gpu_buffers.c:gpu_buffer_size_from_type"}
!296 = !{!"gpu_buffers.c:gpu_color_from_mask"}
!297 = !{!"gpu_buffers.c:CCG_elem_offset"}
!298 = !{!153, !41, i64 4}
!299 = !{!"gpu_buffers.c:BLI_ghashIterator_getKey"}
!300 = !{!301, !35, i64 8}
!301 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !41, i64 16}
!302 = !{!303, !35, i64 8}
!303 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!304 = !{!"gpu_buffers.c:BLI_ghashIterator_done"}
!305 = !{!"gpu_buffers.c:_bm_elem_index_set"}
!306 = !{!"gpu_buffers.c:gpu_color_from_mask_set"}
!307 = !{!"gpu_buffers.c:gpu_color_from_mask_quad_set"}
!308 = !{!"gpu_buffers.c:gpu_color_from_mask_quad"}
