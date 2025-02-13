; ModuleID = 'blender/source/blender/bmesh/operators/bmo_mirror.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }

@__const.bmo_mirror_exec.scale = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str = private unnamed_addr constant [11 x i8] c"merge_dist\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mirror_u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mirror_v\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"duplicate geom=%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"transform verts=%fv matrix=%m4\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"scale verts=%fv vec=%v\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_mirror_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMOIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.bmo_mirror_exec.scale, i64 12, i1 false)
  %12 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #6
  %13 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %14 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  %15 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %16 = load i32, ptr %0, align 8, !tbaa !38
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #6
  %17 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %8) #6
  %18 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %19, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @.str.6) #6
  call void @BMO_op_exec(ptr noundef nonnull %0, ptr noundef nonnull %3) #6
  %21 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef nonnull @.str.7, i8 noundef zeroext 11, i16 noundef signext 1) #6
  %22 = call ptr @BMO_iter_as_arrayN(ptr noundef nonnull %21, ptr noundef nonnull @.str.7, i8 noundef zeroext 1, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #6
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %23
  store float -1.000000e+00, ptr %24, align 4, !tbaa !46
  %25 = load i32, ptr %18, align 8, !tbaa !44
  %26 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef nonnull %0, i32 noundef %25, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %8) #6
  %27 = load i32, ptr %18, align 8, !tbaa !44
  %28 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef nonnull %0, i32 noundef %27, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %10) #6
  %29 = load i32, ptr %18, align 8, !tbaa !44
  %30 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef nonnull %0, i32 noundef %29, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %9) #6
  %31 = load i32, ptr %18, align 8, !tbaa !44
  call void @BMO_op_init(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %31, ptr noundef nonnull @.str.10) #6
  %32 = call ptr @BMO_slot_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.11) #6
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #7
  %34 = icmp sgt i32 %16, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %2
  %36 = zext nneg i32 %16 to i64
  br label %37

37:                                               ; preds = %35, %47
  %38 = phi i64 [ 0, %35 ], [ %49, %47 ]
  %39 = phi ptr [ %33, %35 ], [ %48, %47 ]
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2, i64 %23
  %41 = load float, ptr %40, align 4, !tbaa !46
  %42 = call float @llvm.fabs.f32(float %41)
  %43 = fcmp ugt float %42, %12
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds ptr, ptr %22, i64 %38
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef nonnull %4, ptr noundef %32, ptr noundef %46, ptr noundef nonnull %39) #7
  br label %47

47:                                               ; preds = %44, %37
  %48 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #7
  %49 = add nuw nsw i64 %38, 1
  %50 = icmp eq i64 %49, %36
  br i1 %50, label %51, label %37, !llvm.loop !49

51:                                               ; preds = %47, %2
  %52 = icmp ne i8 %14, 0
  %53 = icmp ne i8 %15, 0
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %57 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %56, i32 noundef 16) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #5
  %58 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %21, ptr noundef nonnull @.str.7, i8 noundef zeroext 8) #6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %91, label %60

60:                                               ; preds = %55
  %61 = icmp sgt i32 %57, 0
  %62 = icmp eq i8 %14, 0
  %63 = icmp eq i8 %15, 0
  br label %64

64:                                               ; preds = %60, %88
  %65 = phi ptr [ %58, %60 ], [ %89, %88 ]
  %66 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %11, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %65) #7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %88, label %68

68:                                               ; preds = %64, %85
  %69 = phi ptr [ %86, %85 ], [ %66, %64 ]
  br i1 %61, label %70, label %85

70:                                               ; preds = %68, %82
  %71 = phi i32 [ %83, %82 ], [ 0, %68 ]
  %72 = load ptr, ptr %69, align 8, !tbaa !51
  %73 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %56, ptr noundef %72, i32 noundef 16, i32 noundef %71) #6
  br i1 %62, label %77, label %74

74:                                               ; preds = %70
  %75 = load float, ptr %73, align 4, !tbaa !46
  %76 = fsub float 1.000000e+00, %75
  store float %76, ptr %73, align 4, !tbaa !46
  br label %77

77:                                               ; preds = %74, %70
  br i1 %63, label %82, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds [2 x float], ptr %73, i64 0, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !46
  %81 = fsub float 1.000000e+00, %80
  store float %81, ptr %79, align 4, !tbaa !46
  br label %82

82:                                               ; preds = %77, %78
  %83 = add nuw nsw i32 %71, 1
  %84 = icmp eq i32 %83, %57
  br i1 %84, label %85, label %70, !llvm.loop !54

85:                                               ; preds = %82, %68
  %86 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %11) #7
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %68, !llvm.loop !55

88:                                               ; preds = %85, %64
  %89 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #6
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %64, !llvm.loop !56

91:                                               ; preds = %88, %55
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #5
  br label %92

92:                                               ; preds = %51, %91
  call void @BMO_op_exec(ptr noundef nonnull %0, ptr noundef nonnull %4) #6
  call void @BMO_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %4) #6
  call void @BMO_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3) #6
  %93 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %93, ptr noundef nonnull @.str.7, i8 noundef zeroext 11, i16 noundef signext 1) #6
  %94 = icmp eq ptr %22, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %96(ptr noundef nonnull %22) #6
  br label %97

97:                                               ; preds = %95, %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_mat4_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_as_arrayN(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !57 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #7
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #7
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !58 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = tail call ptr %3(ptr noundef %0) #6
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !62 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !63
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !60
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !60
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !60
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !60
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !60
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !60
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !60
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !64
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !60
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !68
  tail call void %28(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"BMesh", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !36, i64 28, !36, i64 29, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !35, i64 88, !35, i64 92, !35, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !35, i64 128, !40, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !35, i64 948, !35, i64 952, !35, i64 956, !43, i64 960, !40, i64 976, !43, i64 984, !40, i64 1000}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"CustomData", !40, i64 0, !36, i64 8, !35, i64 172, !35, i64 176, !35, i64 180, !40, i64 184, !40, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !40, i64 0, !40, i64 8}
!44 = !{!45, !35, i64 1304}
!45 = !{!"BMOperator", !36, i64 0, !36, i64 640, !40, i64 1280, !40, i64 1288, !35, i64 1296, !35, i64 1300, !35, i64 1304}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !36, i64 0}
!48 = !{!40, !40, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !40, i64 0}
!52 = !{!"BMLoop", !53, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64}
!53 = !{!"BMHeader", !40, i64 0, !35, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !50}
!57 = !{!"bmo_mirror.c:BM_iter_new"}
!58 = !{!"bmo_mirror.c:BMO_slot_map_elem_insert"}
!59 = !{!"bmo_mirror.c:BM_iter_step"}
!60 = !{!61, !40, i64 48}
!61 = !{!"BMIter", !36, i64 0, !40, i64 40, !40, i64 48, !35, i64 56, !36, i64 60}
!62 = !{!"bmo_mirror.c:BM_iter_init"}
!63 = !{!61, !36, i64 60}
!64 = !{!61, !40, i64 40}
!65 = !{!39, !40, i64 32}
!66 = !{!39, !40, i64 40}
!67 = !{!39, !40, i64 56}
!68 = !{!36, !36, i64 0}
