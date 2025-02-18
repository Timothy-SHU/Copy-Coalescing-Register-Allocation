; ModuleID = 'blender/source/blender/bmesh/operators/bmo_edgenet.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_edgenet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

@.str = private unnamed_addr constant [7 x i8] c"mat_nr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"use_smooth\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"face_attribute_fill faces=%S use_normals=%b\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"faces_fail.out\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"recalc_face_normals faces=%S\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"BLI_array.edges\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_edgenet_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #4
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #4
  %6 = trunc i32 %5 to i16
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %8 = load i32, ptr %0, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  tail call void @BM_mesh_edgenet(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i8 noundef zeroext 16) #4
  %16 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull @.str.3, i8 noundef zeroext 8) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = icmp eq i8 %7, 0
  br label %20

20:                                               ; preds = %18, %27
  %21 = phi ptr [ %16, %18 ], [ %28, %27 ]
  %22 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 5
  store i16 %6, ptr %22, align 8, !tbaa !44
  br i1 %19, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !47
  %26 = or i8 %25, 8
  store i8 %26, ptr %24, align 1, !tbaa !47
  br label %27

27:                                               ; preds = %23, %20
  call void @BM_face_normal_update(ptr noundef nonnull %21) #4
  %28 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !48

30:                                               ; preds = %27, %14
  %31 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !51
  %33 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %32, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 1) #4
  call void @BMO_op_exec(ptr noundef nonnull %0, ptr noundef nonnull %3) #4
  %34 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %35 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %34, ptr noundef nonnull @.str.5) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %31, align 8, !tbaa !51
  %39 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef nonnull %0, i32 noundef %38, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef nonnull @.str.5) #4
  br label %40

40:                                               ; preds = %37, %30
  call void @BMO_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3) #4
  br label %41

41:                                               ; preds = %2, %10, %40
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_edgenet(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_edgenet_prepare_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMOIter, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2, i16 noundef signext 1) #4
  %6 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2, %23
  %9 = phi i1 [ %25, %23 ], [ %7, %2 ]
  %10 = phi ptr [ %24, %23 ], [ %6, %2 ]
  %11 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 3
  %12 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 2
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %17, 0
  br i1 %15, label %16, label %23, !llvm.loop !53

16:                                               ; preds = %8, %13
  %17 = phi i32 [ 0, %8 ], [ %14, %13 ]
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr %12, ptr %11
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %20, i16 noundef signext 1, i8 noundef zeroext 1) #4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %26, label %13

23:                                               ; preds = %13
  %24 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %8, !llvm.loop !55

26:                                               ; preds = %16
  br i1 %9, label %27, label %424

27:                                               ; preds = %23, %2, %26
  %28 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2) #4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %145, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %32 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %33 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %34 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br label %36

36:                                               ; preds = %30, %135
  %37 = phi ptr [ %28, %30 ], [ %143, %135 ]
  %38 = phi ptr [ null, %30 ], [ %141, %135 ]
  %39 = phi ptr [ null, %30 ], [ %140, %135 ]
  %40 = phi i32 [ 0, %30 ], [ %142, %135 ]
  %41 = phi i32 [ 0, %30 ], [ %139, %135 ]
  %42 = phi i32 [ 0, %30 ], [ %138, %135 ]
  br label %43

43:                                               ; preds = %36, %64
  %44 = phi ptr [ %37, %36 ], [ %65, %64 ]
  %45 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = load i32, ptr %31, align 8, !tbaa !59
  %48 = sext i32 %47 to i64
  %49 = getelementptr %struct.BMFlagLayer, ptr %46, i64 %48
  %50 = getelementptr %struct.BMFlagLayer, ptr %49, i64 -1
  %51 = load i16, ptr %50, align 2, !tbaa !60
  %52 = and i16 %51, 2
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !62
  %57 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %56, i16 noundef signext 1, i8 noundef zeroext 1) #4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !63
  %62 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %61, i16 noundef signext 1, i8 noundef zeroext 1) #4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %43, %59
  %65 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %145, label %43, !llvm.loop !64

67:                                               ; preds = %59, %54
  %68 = icmp eq i32 %40, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = icmp eq i32 %40, 1
  br i1 %70, label %71, label %145

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %38, %67 ], [ %39, %69 ]
  store ptr %72, ptr %5, align 8, !tbaa !54
  br label %73

73:                                               ; preds = %71, %132
  %74 = phi i64 [ 0, %71 ], [ %92, %132 ]
  %75 = phi ptr [ %44, %71 ], [ %133, %132 ]
  %76 = getelementptr inbounds %struct.BMEdge, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !56
  %78 = load i32, ptr %32, align 8, !tbaa !59
  %79 = sext i32 %78 to i64
  %80 = getelementptr %struct.BMFlagLayer, ptr %77, i64 %79
  %81 = getelementptr %struct.BMFlagLayer, ptr %80, i64 -1
  %82 = load i16, ptr %81, align 2, !tbaa !60
  %83 = or i16 %82, 2
  store i16 %83, ptr %81, align 2, !tbaa !60
  %84 = load ptr, ptr %5, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %73
  %87 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !54
  %88 = call i64 %87(ptr noundef nonnull %84) #4
  %89 = lshr i64 %88, 3
  br label %90

90:                                               ; preds = %86, %73
  %91 = phi i64 [ %89, %86 ], [ 0, %73 ]
  %92 = add nuw i64 %74, 1
  %93 = icmp ugt i64 %91, %74
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = trunc i64 %74 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 8, i32 noundef %95, i32 noundef 1, ptr noundef nonnull @.str.7) #4
  br label %96

96:                                               ; preds = %94, %90
  %97 = load ptr, ptr %5, align 8, !tbaa !54
  %98 = getelementptr inbounds ptr, ptr %97, i64 %74
  store ptr %75, ptr %98, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  %99 = getelementptr inbounds %struct.BMEdge, ptr %75, i64 0, i32 3
  %100 = getelementptr inbounds %struct.BMEdge, ptr %75, i64 0, i32 2
  br label %101

101:                                              ; preds = %96, %129
  %102 = phi i32 [ 0, %96 ], [ %130, %129 ]
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, ptr %100, ptr %99
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  store i8 4, ptr %33, align 4, !tbaa !65
  store ptr @bmiter__edge_of_vert_begin, ptr %34, align 8, !tbaa !67
  store ptr @bmiter__edge_of_vert_step, ptr %35, align 8, !tbaa !68
  store ptr %105, ptr %3, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #4
  %106 = load ptr, ptr %35, align 8, !tbaa !68
  %107 = call ptr %106(ptr noundef nonnull %3) #4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %129, label %109

109:                                              ; preds = %101, %125
  %110 = phi ptr [ %127, %125 ], [ %107, %101 ]
  %111 = getelementptr inbounds %struct.BMEdge, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !56
  %113 = load i32, ptr %32, align 8, !tbaa !59
  %114 = sext i32 %113 to i64
  %115 = getelementptr %struct.BMFlagLayer, ptr %112, i64 %114
  %116 = getelementptr %struct.BMFlagLayer, ptr %115, i64 -1
  %117 = load i16, ptr %116, align 2, !tbaa !60
  %118 = and i16 %117, 1
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %109
  %121 = and i16 %117, 2
  %122 = icmp ne i16 %121, 0
  %123 = icmp eq ptr %110, %75
  %124 = or i1 %123, %122
  br i1 %124, label %125, label %132

125:                                              ; preds = %120, %109
  %126 = load ptr, ptr %35, align 8, !tbaa !68
  %127 = call ptr %126(ptr noundef nonnull %3) #4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %109, !llvm.loop !70

129:                                              ; preds = %125, %101
  %130 = add nuw nsw i32 %102, 1
  %131 = icmp eq i32 %102, 0
  br i1 %131, label %101, label %132, !llvm.loop !71

132:                                              ; preds = %129, %120
  %133 = phi ptr [ %110, %120 ], [ null, %129 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %73, !llvm.loop !72

135:                                              ; preds = %132
  %136 = trunc i64 %92 to i32
  %137 = load ptr, ptr %5, align 8, !tbaa !54
  %138 = select i1 %68, i32 %42, i32 %136
  %139 = select i1 %68, i32 %136, i32 %41
  %140 = select i1 %68, ptr %39, ptr %137
  %141 = select i1 %68, ptr %137, ptr %38
  %142 = add nuw nsw i32 %40, 1
  %143 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2) #4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %36, !llvm.loop !73

145:                                              ; preds = %69, %135, %64, %27
  %146 = phi i32 [ 0, %27 ], [ %42, %64 ], [ %42, %69 ], [ %138, %135 ]
  %147 = phi i32 [ 0, %27 ], [ %41, %64 ], [ %41, %69 ], [ %139, %135 ]
  %148 = phi ptr [ null, %27 ], [ %39, %64 ], [ %39, %69 ], [ %140, %135 ]
  %149 = phi ptr [ null, %27 ], [ %38, %64 ], [ %38, %69 ], [ %141, %135 ]
  %150 = icmp ne ptr %149, null
  %151 = icmp sgt i32 %147, 2
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %153, label %175

153:                                              ; preds = %145
  %154 = load ptr, ptr %149, align 8, !tbaa !54
  %155 = add nsw i32 %147, -1
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %149, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !54
  %159 = call zeroext i8 @BM_edge_share_vert_check(ptr noundef %154, ptr noundef %158) #4
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %153
  %162 = icmp ne ptr %148, null
  %163 = icmp sgt i32 %146, 2
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = load ptr, ptr %148, align 8, !tbaa !54
  %167 = add nsw i32 %146, -1
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %148, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !54
  %171 = call zeroext i8 @BM_edge_share_vert_check(ptr noundef %166, ptr noundef %170) #4
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %165
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %174(ptr noundef nonnull %149) #4
  br label %421

175:                                              ; preds = %161, %165, %153, %145
  %176 = phi ptr [ %148, %153 ], [ %148, %145 ], [ null, %165 ], [ null, %161 ]
  %177 = phi ptr [ %149, %153 ], [ %149, %145 ], [ %148, %165 ], [ %148, %161 ]
  %178 = icmp ne ptr %176, null
  %179 = icmp sgt i32 %146, 2
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = load ptr, ptr %176, align 8, !tbaa !54
  %183 = add nsw i32 %146, -1
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %176, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !54
  %187 = call zeroext i8 @BM_edge_share_vert_check(ptr noundef %182, ptr noundef %186) #4
  %188 = icmp eq i8 %187, 0
  %189 = select i1 %188, ptr %176, ptr null
  br label %190

190:                                              ; preds = %181, %175
  %191 = phi ptr [ %176, %175 ], [ %189, %181 ]
  %192 = icmp ne ptr %177, null
  %193 = icmp ne ptr %191, null
  %194 = and i1 %192, %193
  br i1 %194, label %195, label %358

195:                                              ; preds = %190
  %196 = icmp eq i32 %147, 1
  br i1 %196, label %197, label %202

197:                                              ; preds = %195
  %198 = load ptr, ptr %177, align 8, !tbaa !54
  %199 = getelementptr inbounds %struct.BMEdge, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !62
  %201 = getelementptr inbounds %struct.BMEdge, ptr %198, i64 0, i32 3
  br label %239

202:                                              ; preds = %195
  %203 = getelementptr inbounds ptr, ptr %177, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !54
  %205 = load ptr, ptr %177, align 8, !tbaa !54
  %206 = getelementptr inbounds %struct.BMEdge, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !62
  %208 = getelementptr inbounds %struct.BMEdge, ptr %204, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !62
  %210 = icmp eq ptr %209, %207
  br i1 %210, label %215, label %211

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.BMEdge, ptr %204, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !63
  %214 = icmp eq ptr %213, %207
  br i1 %214, label %215, label %217

215:                                              ; preds = %202, %211
  %216 = getelementptr inbounds %struct.BMEdge, ptr %205, i64 0, i32 3
  br label %217

217:                                              ; preds = %211, %215
  %218 = phi ptr [ %216, %215 ], [ %206, %211 ]
  %219 = load ptr, ptr %218, align 8, !tbaa !54
  %220 = add nsw i32 %147, -1
  %221 = add nsw i32 %147, -2
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %177, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !54
  %225 = sext i32 %220 to i64
  %226 = getelementptr inbounds ptr, ptr %177, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !54
  %228 = getelementptr inbounds %struct.BMEdge, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !62
  %230 = getelementptr inbounds %struct.BMEdge, ptr %224, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !62
  %232 = icmp eq ptr %231, %229
  br i1 %232, label %237, label %233

233:                                              ; preds = %217
  %234 = getelementptr inbounds %struct.BMEdge, ptr %224, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !63
  %236 = icmp eq ptr %235, %229
  br i1 %236, label %237, label %239

237:                                              ; preds = %217, %233
  %238 = getelementptr inbounds %struct.BMEdge, ptr %227, i64 0, i32 3
  br label %239

239:                                              ; preds = %233, %237, %197
  %240 = phi ptr [ %200, %197 ], [ %219, %237 ], [ %219, %233 ]
  %241 = phi ptr [ %201, %197 ], [ %238, %237 ], [ %228, %233 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !54
  %243 = icmp eq i32 %146, 1
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load ptr, ptr %191, align 8, !tbaa !54
  %246 = getelementptr inbounds %struct.BMEdge, ptr %245, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !62
  %248 = getelementptr inbounds %struct.BMEdge, ptr %245, i64 0, i32 3
  br label %286

249:                                              ; preds = %239
  %250 = getelementptr inbounds ptr, ptr %191, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !54
  %252 = load ptr, ptr %191, align 8, !tbaa !54
  %253 = getelementptr inbounds %struct.BMEdge, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !62
  %255 = getelementptr inbounds %struct.BMEdge, ptr %251, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !62
  %257 = icmp eq ptr %256, %254
  br i1 %257, label %262, label %258

258:                                              ; preds = %249
  %259 = getelementptr inbounds %struct.BMEdge, ptr %251, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !63
  %261 = icmp eq ptr %260, %254
  br i1 %261, label %262, label %264

262:                                              ; preds = %249, %258
  %263 = getelementptr inbounds %struct.BMEdge, ptr %252, i64 0, i32 3
  br label %264

264:                                              ; preds = %258, %262
  %265 = phi ptr [ %263, %262 ], [ %253, %258 ]
  %266 = load ptr, ptr %265, align 8, !tbaa !54
  %267 = add nsw i32 %146, -1
  %268 = add nsw i32 %146, -2
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds ptr, ptr %191, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !54
  %272 = sext i32 %267 to i64
  %273 = getelementptr inbounds ptr, ptr %191, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !54
  %275 = getelementptr inbounds %struct.BMEdge, ptr %274, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !62
  %277 = getelementptr inbounds %struct.BMEdge, ptr %271, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !62
  %279 = icmp eq ptr %278, %276
  br i1 %279, label %284, label %280

280:                                              ; preds = %264
  %281 = getelementptr inbounds %struct.BMEdge, ptr %271, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !63
  %283 = icmp eq ptr %282, %276
  br i1 %283, label %284, label %286

284:                                              ; preds = %264, %280
  %285 = getelementptr inbounds %struct.BMEdge, ptr %274, i64 0, i32 3
  br label %286

286:                                              ; preds = %280, %284, %244
  %287 = phi ptr [ %247, %244 ], [ %266, %284 ], [ %266, %280 ]
  %288 = phi ptr [ %248, %244 ], [ %285, %284 ], [ %275, %280 ]
  %289 = load ptr, ptr %288, align 8, !tbaa !54
  %290 = getelementptr inbounds %struct.BMVert, ptr %240, i64 0, i32 2
  %291 = getelementptr inbounds %struct.BMVert, ptr %242, i64 0, i32 2
  %292 = load float, ptr %290, align 4, !tbaa !74
  %293 = load float, ptr %291, align 4, !tbaa !74
  %294 = fsub float %292, %293
  %295 = getelementptr inbounds %struct.BMVert, ptr %240, i64 0, i32 2, i64 1
  %296 = load float, ptr %295, align 4, !tbaa !74
  %297 = getelementptr inbounds %struct.BMVert, ptr %242, i64 0, i32 2, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !74
  %299 = fsub float %296, %298
  %300 = getelementptr inbounds %struct.BMVert, ptr %240, i64 0, i32 2, i64 2
  %301 = load float, ptr %300, align 4, !tbaa !74
  %302 = getelementptr inbounds %struct.BMVert, ptr %242, i64 0, i32 2, i64 2
  %303 = load float, ptr %302, align 4, !tbaa !74
  %304 = fsub float %301, %303
  %305 = getelementptr inbounds %struct.BMVert, ptr %289, i64 0, i32 2
  %306 = load float, ptr %305, align 4, !tbaa !74
  %307 = fsub float %292, %306
  %308 = getelementptr inbounds %struct.BMVert, ptr %289, i64 0, i32 2, i64 1
  %309 = load float, ptr %308, align 4, !tbaa !74
  %310 = fsub float %296, %309
  %311 = getelementptr inbounds %struct.BMVert, ptr %289, i64 0, i32 2, i64 2
  %312 = load float, ptr %311, align 4, !tbaa !74
  %313 = fsub float %301, %312
  %314 = getelementptr inbounds %struct.BMVert, ptr %287, i64 0, i32 2
  %315 = load float, ptr %314, align 4, !tbaa !74
  %316 = fsub float %292, %315
  %317 = getelementptr inbounds %struct.BMVert, ptr %287, i64 0, i32 2, i64 1
  %318 = load float, ptr %317, align 4, !tbaa !74
  %319 = fsub float %296, %318
  %320 = getelementptr inbounds %struct.BMVert, ptr %287, i64 0, i32 2, i64 2
  %321 = load float, ptr %320, align 4, !tbaa !74
  %322 = fsub float %301, %321
  %323 = fneg float %304
  %324 = fmul float %310, %323
  %325 = call float @llvm.fmuladd.f32(float %299, float %313, float %324)
  %326 = fneg float %294
  %327 = fmul float %313, %326
  %328 = call float @llvm.fmuladd.f32(float %304, float %307, float %327)
  %329 = fneg float %299
  %330 = fmul float %307, %329
  %331 = call float @llvm.fmuladd.f32(float %294, float %310, float %330)
  %332 = fneg float %313
  %333 = fmul float %319, %332
  %334 = call float @llvm.fmuladd.f32(float %310, float %322, float %333)
  %335 = fneg float %307
  %336 = fmul float %322, %335
  %337 = call float @llvm.fmuladd.f32(float %313, float %316, float %336)
  %338 = fneg float %310
  %339 = fmul float %316, %338
  %340 = call float @llvm.fmuladd.f32(float %307, float %319, float %339)
  %341 = fmul float %328, %337
  %342 = call float @llvm.fmuladd.f32(float %325, float %334, float %341)
  %343 = call float @llvm.fmuladd.f32(float %331, float %340, float %342)
  %344 = fcmp olt float %343, 0.000000e+00
  %345 = select i1 %344, ptr %289, ptr %287
  %346 = select i1 %344, ptr %287, ptr %289
  %347 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %240, ptr noundef %345, ptr noundef null, i32 noundef 2) #4
  %348 = getelementptr inbounds %struct.BMEdge, ptr %347, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !56
  %350 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %351 = load i32, ptr %350, align 8, !tbaa !59
  %352 = sext i32 %351 to i64
  %353 = getelementptr %struct.BMFlagLayer, ptr %349, i64 %352
  %354 = getelementptr %struct.BMFlagLayer, ptr %353, i64 -1
  %355 = load i16, ptr %354, align 2, !tbaa !60
  %356 = or i16 %355, 1
  store i16 %356, ptr %354, align 2, !tbaa !60
  %357 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %242, ptr noundef %346, ptr noundef null, i32 noundef 2) #4
  br label %403

358:                                              ; preds = %190
  br i1 %192, label %359, label %418

359:                                              ; preds = %358
  %360 = icmp sgt i32 %147, 1
  br i1 %360, label %361, label %414

361:                                              ; preds = %359
  %362 = getelementptr inbounds ptr, ptr %177, i64 1
  %363 = load ptr, ptr %362, align 8, !tbaa !54
  %364 = load ptr, ptr %177, align 8, !tbaa !54
  %365 = getelementptr inbounds %struct.BMEdge, ptr %364, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !62
  %367 = getelementptr inbounds %struct.BMEdge, ptr %363, i64 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !62
  %369 = icmp eq ptr %368, %366
  br i1 %369, label %374, label %370

370:                                              ; preds = %361
  %371 = getelementptr inbounds %struct.BMEdge, ptr %363, i64 0, i32 3
  %372 = load ptr, ptr %371, align 8, !tbaa !63
  %373 = icmp eq ptr %372, %366
  br i1 %373, label %374, label %376

374:                                              ; preds = %361, %370
  %375 = getelementptr inbounds %struct.BMEdge, ptr %364, i64 0, i32 3
  br label %376

376:                                              ; preds = %370, %374
  %377 = phi ptr [ %375, %374 ], [ %365, %370 ]
  %378 = load ptr, ptr %377, align 8, !tbaa !54
  %379 = add nsw i32 %147, -1
  %380 = add nsw i32 %147, -2
  %381 = zext nneg i32 %380 to i64
  %382 = getelementptr inbounds ptr, ptr %177, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !54
  %384 = zext nneg i32 %379 to i64
  %385 = getelementptr inbounds ptr, ptr %177, i64 %384
  %386 = load ptr, ptr %385, align 8, !tbaa !54
  %387 = getelementptr inbounds %struct.BMEdge, ptr %386, i64 0, i32 2
  %388 = load ptr, ptr %387, align 8, !tbaa !62
  %389 = getelementptr inbounds %struct.BMEdge, ptr %383, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !62
  %391 = icmp eq ptr %390, %388
  br i1 %391, label %396, label %392

392:                                              ; preds = %376
  %393 = getelementptr inbounds %struct.BMEdge, ptr %383, i64 0, i32 3
  %394 = load ptr, ptr %393, align 8, !tbaa !63
  %395 = icmp eq ptr %394, %388
  br i1 %395, label %396, label %398

396:                                              ; preds = %376, %392
  %397 = getelementptr inbounds %struct.BMEdge, ptr %386, i64 0, i32 3
  br label %398

398:                                              ; preds = %392, %396
  %399 = phi ptr [ %397, %396 ], [ %387, %392 ]
  %400 = load ptr, ptr %399, align 8, !tbaa !54
  %401 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %378, ptr noundef %400, ptr noundef null, i32 noundef 2) #4
  %402 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %403

403:                                              ; preds = %286, %398
  %404 = phi ptr [ %350, %286 ], [ %402, %398 ]
  %405 = phi ptr [ %357, %286 ], [ %401, %398 ]
  %406 = getelementptr inbounds %struct.BMEdge, ptr %405, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !56
  %408 = load i32, ptr %404, align 8, !tbaa !59
  %409 = sext i32 %408 to i64
  %410 = getelementptr %struct.BMFlagLayer, ptr %407, i64 %409
  %411 = getelementptr %struct.BMFlagLayer, ptr %410, i64 -1
  %412 = load i16, ptr %411, align 2, !tbaa !60
  %413 = or i16 %412, 1
  store i16 %413, ptr %411, align 2, !tbaa !60
  br label %414

414:                                              ; preds = %403, %359
  %415 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %415, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #4
  br i1 %192, label %416, label %420

416:                                              ; preds = %414
  %417 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %417(ptr noundef nonnull %177) #4
  br label %420

418:                                              ; preds = %358
  %419 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %419, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #4
  br label %420

420:                                              ; preds = %418, %416, %414
  br i1 %193, label %421, label %424

421:                                              ; preds = %420, %173
  %422 = phi ptr [ %148, %173 ], [ %191, %420 ]
  %423 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %423(ptr noundef nonnull %422) #4
  br label %424

424:                                              ; preds = %421, %420, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #4
  ret void
}

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare i32 @BMO_iter_elem_count_flag(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_share_vert_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!35, !36, i64 4}
!44 = !{!45, !41, i64 48}
!45 = !{!"BMFace", !46, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!46 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!47 = !{!46, !37, i64 13}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !36, i64 1304}
!52 = !{!"BMOperator", !37, i64 0, !37, i64 640, !39, i64 1280, !39, i64 1288, !36, i64 1296, !36, i64 1300, !36, i64 1304}
!53 = distinct !{!53, !49, !50}
!54 = !{!39, !39, i64 0}
!55 = distinct !{!55, !49, !50}
!56 = !{!57, !39, i64 16}
!57 = !{!"BMEdge", !46, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !58, i64 48, !58, i64 64}
!58 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!59 = !{!35, !36, i64 128}
!60 = !{!61, !41, i64 0}
!61 = !{!"BMFlagLayer", !41, i64 0}
!62 = !{!57, !39, i64 24}
!63 = !{!57, !39, i64 32}
!64 = distinct !{!64, !49, !50}
!65 = !{!66, !37, i64 60}
!66 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!67 = !{!66, !39, i64 40}
!68 = !{!66, !39, i64 48}
!69 = !{!37, !37, i64 0}
!70 = distinct !{!70, !49, !50}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
!73 = distinct !{!73, !50}
!74 = !{!75, !75, i64 0}
!75 = !{!"float", !37, i64 0}
