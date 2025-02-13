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
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_edgenet_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #7
  %6 = trunc i32 %5 to i16
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %8 = load i32, ptr %0, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  tail call void @BM_mesh_edgenet(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i8 noundef zeroext 16) #7
  %16 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull @.str.3, i8 noundef zeroext 8) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = icmp eq i8 %7, 0
  br label %20

20:                                               ; preds = %18, %24
  %21 = phi ptr [ %16, %18 ], [ %25, %24 ]
  %22 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 5
  store i16 %6, ptr %22, align 8, !tbaa !44
  br i1 %19, label %24, label %23

23:                                               ; preds = %20
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %21) #8
  br label %24

24:                                               ; preds = %23, %20
  call void @BM_face_normal_update(ptr noundef nonnull %21) #7
  %25 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !47

27:                                               ; preds = %24, %14
  %28 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !49
  %30 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %29, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 1) #7
  call void @BMO_op_exec(ptr noundef nonnull %0, ptr noundef nonnull %3) #7
  %31 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %32 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %31, ptr noundef nonnull @.str.5) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %28, align 8, !tbaa !49
  %36 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef nonnull %0, i32 noundef %35, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef nonnull @.str.5) #7
  br label %37

37:                                               ; preds = %34, %27
  call void @BMO_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3) #7
  br label %38

38:                                               ; preds = %2, %10, %37
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_edgenet(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !51 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !52
  %4 = or i8 %3, 8
  store i8 %4, ptr %2, align 1, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_edgenet_prepare_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2, i16 noundef signext 1) #7
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %2, %23
  %13 = phi ptr [ %24, %23 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 3
  %15 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 2
  br label %17

16:                                               ; preds = %17
  br i1 %18, label %17, label %23, !llvm.loop !53

17:                                               ; preds = %12, %16
  %18 = phi i1 [ true, %12 ], [ false, %16 ]
  %19 = select i1 %18, ptr %15, ptr %14
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %20, i16 noundef signext 1, i8 noundef zeroext 1) #7
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %283, label %16

23:                                               ; preds = %16
  %24 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %12, !llvm.loop !55

26:                                               ; preds = %23, %2
  %27 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %30, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #7
  br label %283

31:                                               ; preds = %26, %89
  %32 = phi ptr [ %96, %89 ], [ %27, %26 ]
  %33 = phi ptr [ %94, %89 ], [ null, %26 ]
  %34 = phi ptr [ %93, %89 ], [ null, %26 ]
  %35 = phi i32 [ %95, %89 ], [ 0, %26 ]
  %36 = phi i32 [ %92, %89 ], [ 0, %26 ]
  %37 = phi i32 [ %91, %89 ], [ 0, %26 ]
  br label %38

38:                                               ; preds = %31, %54
  %39 = phi ptr [ %32, %31 ], [ %55, %54 ]
  %40 = getelementptr inbounds %struct.BMEdge, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %41, i16 noundef signext 2) #8, !range !59
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.BMEdge, ptr %39, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %46, i16 noundef signext 1, i8 noundef zeroext 1) #7
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.BMEdge, ptr %39, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %51, i16 noundef signext 1, i8 noundef zeroext 1) #7
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %38, %49
  %55 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %98, label %38, !llvm.loop !62

57:                                               ; preds = %49, %44
  %58 = icmp eq i32 %35, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = icmp eq i32 %35, 1
  br i1 %60, label %61, label %98

61:                                               ; preds = %59, %57
  %62 = phi ptr [ %33, %57 ], [ %34, %59 ]
  store ptr %62, ptr %4, align 8, !tbaa !54
  br label %63

63:                                               ; preds = %61, %82
  %64 = phi i64 [ 0, %61 ], [ %87, %82 ]
  %65 = phi ptr [ %39, %61 ], [ %86, %82 ]
  %66 = phi i32 [ 0, %61 ], [ %83, %82 ]
  %67 = getelementptr inbounds %struct.BMEdge, ptr %65, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !56
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %68, i16 noundef signext 2) #8
  %69 = load ptr, ptr %4, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = add nuw nsw i32 %66, 1
  br label %80

73:                                               ; preds = %63
  %74 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !54
  %75 = call i64 %74(ptr noundef nonnull %69) #7
  %76 = lshr i64 %75, 3
  %77 = add nuw nsw i32 %66, 1
  %78 = zext nneg i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71, %73
  %81 = phi i32 [ %72, %71 ], [ %77, %73 ]
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 8, i32 noundef %66, i32 noundef 1, ptr noundef nonnull @.str.7) #7
  br label %82

82:                                               ; preds = %80, %73
  %83 = phi i32 [ %81, %80 ], [ %77, %73 ]
  %84 = load ptr, ptr %4, align 8, !tbaa !54
  %85 = getelementptr inbounds ptr, ptr %84, i64 %64
  store ptr %65, ptr %85, align 8, !tbaa !54
  %86 = call fastcc ptr @edge_next(ptr noundef %0, ptr noundef nonnull %65) #8
  %87 = add nuw i64 %64, 1
  %88 = icmp eq ptr %86, null
  br i1 %88, label %89, label %63, !llvm.loop !63

89:                                               ; preds = %82
  %90 = load ptr, ptr %4, align 8, !tbaa !54
  %91 = select i1 %58, i32 %37, i32 %83
  %92 = select i1 %58, i32 %83, i32 %36
  %93 = select i1 %58, ptr %34, ptr %90
  %94 = select i1 %58, ptr %90, ptr %33
  %95 = add nuw nsw i32 %35, 1
  %96 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2) #7
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %31

98:                                               ; preds = %59, %89, %54
  %99 = phi i32 [ %37, %54 ], [ %91, %89 ], [ %37, %59 ]
  %100 = phi i32 [ %36, %54 ], [ %92, %89 ], [ %36, %59 ]
  %101 = phi ptr [ %34, %54 ], [ %93, %89 ], [ %34, %59 ]
  %102 = phi ptr [ %33, %54 ], [ %94, %89 ], [ %33, %59 ]
  %103 = icmp ne ptr %102, null
  %104 = icmp sgt i32 %100, 2
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %133

106:                                              ; preds = %98
  %107 = load ptr, ptr %102, align 8, !tbaa !54
  %108 = add nsw i32 %100, -1
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %102, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !54
  %112 = call zeroext i8 @BM_edge_share_vert_check(ptr noundef %107, ptr noundef %111) #7
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %133, label %114

114:                                              ; preds = %106
  %115 = icmp ne ptr %101, null
  %116 = icmp sgt i32 %99, 2
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load ptr, ptr %101, align 8, !tbaa !54
  %120 = add nsw i32 %99, -1
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %101, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !54
  %124 = call zeroext i8 @BM_edge_share_vert_check(ptr noundef %119, ptr noundef %123) #7
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %220, label %126

126:                                              ; preds = %118
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %127(ptr noundef nonnull %102) #7
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %128(ptr noundef nonnull %101) #7
  br label %283

129:                                              ; preds = %114
  %130 = icmp eq ptr %101, null
  br i1 %130, label %131, label %220

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %132, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #7
  br label %283

133:                                              ; preds = %106, %98
  %134 = icmp ne ptr %101, null
  %135 = icmp sgt i32 %99, 2
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load ptr, ptr %101, align 8, !tbaa !54
  %139 = add nsw i32 %99, -1
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %101, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !54
  %143 = call zeroext i8 @BM_edge_share_vert_check(ptr noundef %138, ptr noundef %142) #7
  %144 = icmp eq i8 %143, 0
  %145 = select i1 %144, ptr %101, ptr null
  br label %146

146:                                              ; preds = %137, %133
  %147 = phi ptr [ %101, %133 ], [ %145, %137 ]
  %148 = icmp ne ptr %147, null
  %149 = and i1 %103, %148
  br i1 %149, label %150, label %214

150:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %151 = icmp eq i32 %100, 1
  br i1 %151, label %152, label %156

152:                                              ; preds = %150
  %153 = load ptr, ptr %102, align 8, !tbaa !54
  %154 = getelementptr inbounds %struct.BMEdge, ptr %153, i64 0, i32 2
  %155 = getelementptr inbounds %struct.BMEdge, ptr %153, i64 0, i32 3
  br label %180

156:                                              ; preds = %150
  %157 = getelementptr inbounds ptr, ptr %102, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !54
  %159 = load ptr, ptr %102, align 8, !tbaa !54
  %160 = getelementptr inbounds %struct.BMEdge, ptr %159, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !60
  %162 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %158, ptr noundef %161) #8, !range !64
  %163 = icmp eq i8 %162, 0
  %164 = getelementptr inbounds %struct.BMEdge, ptr %159, i64 0, i32 3
  %165 = select i1 %163, ptr %160, ptr %164
  %166 = add nsw i32 %100, -1
  %167 = add nsw i32 %100, -2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %102, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !54
  %171 = sext i32 %166 to i64
  %172 = getelementptr inbounds ptr, ptr %102, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !54
  %174 = getelementptr inbounds %struct.BMEdge, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !60
  %176 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %170, ptr noundef %175) #8, !range !64
  %177 = icmp eq i8 %176, 0
  %178 = getelementptr inbounds %struct.BMEdge, ptr %173, i64 0, i32 3
  %179 = select i1 %177, ptr %174, ptr %178
  br label %180

180:                                              ; preds = %156, %152
  %181 = phi ptr [ %154, %152 ], [ %165, %156 ]
  %182 = phi ptr [ %155, %152 ], [ %179, %156 ]
  %183 = load ptr, ptr %181, align 8, !tbaa !54
  %184 = load ptr, ptr %182, align 8, !tbaa !54
  %185 = icmp eq i32 %99, 1
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load ptr, ptr %147, align 8, !tbaa !54
  %188 = getelementptr inbounds %struct.BMEdge, ptr %187, i64 0, i32 2
  %189 = getelementptr inbounds %struct.BMEdge, ptr %187, i64 0, i32 3
  br label %259

190:                                              ; preds = %180
  %191 = getelementptr inbounds ptr, ptr %147, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !54
  %193 = load ptr, ptr %147, align 8, !tbaa !54
  %194 = getelementptr inbounds %struct.BMEdge, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !60
  %196 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %192, ptr noundef %195) #8, !range !64
  %197 = icmp eq i8 %196, 0
  %198 = getelementptr inbounds %struct.BMEdge, ptr %193, i64 0, i32 3
  %199 = select i1 %197, ptr %194, ptr %198
  %200 = add nsw i32 %99, -1
  %201 = add nsw i32 %99, -2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %147, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !54
  %205 = sext i32 %200 to i64
  %206 = getelementptr inbounds ptr, ptr %147, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !54
  %208 = getelementptr inbounds %struct.BMEdge, ptr %207, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !60
  %210 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %204, ptr noundef %209) #8, !range !64
  %211 = icmp eq i8 %210, 0
  %212 = getelementptr inbounds %struct.BMEdge, ptr %207, i64 0, i32 3
  %213 = select i1 %211, ptr %208, ptr %212
  br label %259

214:                                              ; preds = %146
  br i1 %103, label %215, label %257

215:                                              ; preds = %214
  %216 = icmp sgt i32 %100, 1
  br i1 %216, label %217, label %251

217:                                              ; preds = %215
  %218 = add nsw i32 %100, -1
  %219 = zext nneg i32 %218 to i64
  br label %220

220:                                              ; preds = %217, %118, %129
  %221 = phi i64 [ %219, %217 ], [ %109, %118 ], [ %109, %129 ]
  %222 = phi i1 [ %148, %217 ], [ false, %118 ], [ false, %129 ]
  %223 = phi ptr [ %147, %217 ], [ null, %118 ], [ null, %129 ]
  %224 = phi ptr [ %102, %217 ], [ %101, %118 ], [ %101, %129 ]
  %225 = getelementptr inbounds ptr, ptr %224, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !54
  %227 = load ptr, ptr %224, align 8, !tbaa !54
  %228 = getelementptr inbounds %struct.BMEdge, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !60
  %230 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %226, ptr noundef %229) #8, !range !64
  %231 = icmp eq i8 %230, 0
  %232 = getelementptr inbounds %struct.BMEdge, ptr %227, i64 0, i32 3
  %233 = select i1 %231, ptr %228, ptr %232
  %234 = load ptr, ptr %233, align 8, !tbaa !54
  %235 = add nsw i32 %100, -2
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %224, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !54
  %239 = getelementptr inbounds ptr, ptr %224, i64 %221
  %240 = load ptr, ptr %239, align 8, !tbaa !54
  %241 = getelementptr inbounds %struct.BMEdge, ptr %240, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !60
  %243 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %238, ptr noundef %242) #8, !range !64
  %244 = icmp eq i8 %243, 0
  %245 = getelementptr inbounds %struct.BMEdge, ptr %240, i64 0, i32 3
  %246 = select i1 %244, ptr %241, ptr %245
  %247 = load ptr, ptr %246, align 8, !tbaa !54
  %248 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %234, ptr noundef %247, ptr noundef null, i32 noundef 2) #7
  %249 = getelementptr inbounds %struct.BMEdge, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !56
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %250, i16 noundef signext 1) #8
  br label %251

251:                                              ; preds = %215, %220
  %252 = phi i1 [ %222, %220 ], [ %148, %215 ]
  %253 = phi ptr [ %223, %220 ], [ %147, %215 ]
  %254 = phi ptr [ %224, %220 ], [ %102, %215 ]
  %255 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %255, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #7
  %256 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %256(ptr noundef nonnull %254) #7
  br i1 %252, label %280, label %283

257:                                              ; preds = %214
  %258 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %258, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #7
  br i1 %148, label %280, label %283

259:                                              ; preds = %190, %186
  %260 = phi ptr [ %188, %186 ], [ %199, %190 ]
  %261 = phi ptr [ %189, %186 ], [ %213, %190 ]
  %262 = load ptr, ptr %260, align 8, !tbaa !54
  %263 = load ptr, ptr %261, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  %264 = getelementptr inbounds %struct.BMVert, ptr %183, i64 0, i32 2
  %265 = getelementptr inbounds %struct.BMVert, ptr %184, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %264, ptr noundef nonnull %265) #8
  %266 = getelementptr inbounds %struct.BMVert, ptr %263, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %264, ptr noundef nonnull %266) #8
  %267 = getelementptr inbounds %struct.BMVert, ptr %262, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %264, ptr noundef nonnull %267) #8
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  %268 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %269 = fcmp olt float %268, 0.000000e+00
  %270 = select i1 %269, ptr %263, ptr %262
  %271 = select i1 %269, ptr %262, ptr %263
  %272 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %183, ptr noundef %270, ptr noundef null, i32 noundef 2) #7
  %273 = getelementptr inbounds %struct.BMEdge, ptr %272, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !56
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %274, i16 noundef signext 1) #8
  %275 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %184, ptr noundef %271, ptr noundef null, i32 noundef 2) #7
  %276 = getelementptr inbounds %struct.BMEdge, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !56
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %277, i16 noundef signext 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  %278 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %278, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #7
  %279 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %279(ptr noundef nonnull %102) #7
  br label %280

280:                                              ; preds = %259, %251, %257
  %281 = phi ptr [ %147, %257 ], [ %147, %259 ], [ %253, %251 ]
  %282 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %282(ptr noundef nonnull %281) #7
  br label %283

283:                                              ; preds = %17, %29, %131, %251, %257, %280, %126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_iter_elem_count_flag(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !65 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !67
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !69 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !67
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edge_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !70 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %26
  %7 = phi i1 [ true, %2 ], [ false, %26 ]
  %8 = select i1 %7, ptr %5, ptr %4
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %6, %23
  %13 = phi ptr [ %24, %23 ], [ %10, %6 ]
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %15, i16 noundef signext 1) #8, !range !59
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %15, i16 noundef signext 2) #8, !range !59
  %20 = icmp ne i16 %19, 0
  %21 = icmp eq ptr %13, %1
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %27

23:                                               ; preds = %12, %18
  %24 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %12, !llvm.loop !71

26:                                               ; preds = %23, %6
  br i1 %7, label %6, label %27, !llvm.loop !72

27:                                               ; preds = %26, %18
  %28 = phi ptr [ %13, %18 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret ptr %28
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_share_vert_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_vert_in_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !73 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !74 {
  %4 = load float, ptr %1, align 4, !tbaa !75
  %5 = load float, ptr %2, align 4, !tbaa !75
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !75
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !75
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !75
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !75
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !75
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !75
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !77 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !75
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !75
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !75
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !75
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !75
  %15 = load float, ptr %8, align 4, !tbaa !75
  %16 = load float, ptr %2, align 4, !tbaa !75
  %17 = load float, ptr %1, align 4, !tbaa !75
  %18 = load float, ptr %6, align 4, !tbaa !75
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !75
  %23 = load float, ptr %1, align 4, !tbaa !75
  %24 = load float, ptr %10, align 4, !tbaa !75
  %25 = load float, ptr %4, align 4, !tbaa !75
  %26 = load float, ptr %2, align 4, !tbaa !75
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !78 {
  %3 = load float, ptr %0, align 4, !tbaa !75
  %4 = load float, ptr %1, align 4, !tbaa !75
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !75
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !75
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !75
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !75
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !79 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #8
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !83 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 4, ptr %3, align 4, !tbaa !84
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %5, align 8, !tbaa !81
  store ptr %1, ptr %0, align 8, !tbaa !86
  tail call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !36, i64 1304}
!50 = !{!"BMOperator", !37, i64 0, !37, i64 640, !39, i64 1280, !39, i64 1288, !36, i64 1296, !36, i64 1300, !36, i64 1304}
!51 = !{!"bmo_edgenet.c:_bm_elem_flag_enable"}
!52 = !{!46, !37, i64 13}
!53 = distinct !{!53, !48}
!54 = !{!39, !39, i64 0}
!55 = distinct !{!55, !48}
!56 = !{!57, !39, i64 16}
!57 = !{!"BMEdge", !46, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !58, i64 48, !58, i64 64}
!58 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!59 = !{i16 0, i16 3}
!60 = !{!57, !39, i64 24}
!61 = !{!57, !39, i64 32}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !48}
!64 = !{i8 0, i8 2}
!65 = !{!"bmo_edgenet.c:_bmo_elem_flag_test"}
!66 = !{!35, !36, i64 128}
!67 = !{!68, !41, i64 0}
!68 = !{!"BMFlagLayer", !41, i64 0}
!69 = !{!"bmo_edgenet.c:_bmo_elem_flag_enable"}
!70 = !{!"bmo_edgenet.c:edge_next"}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48}
!73 = !{!"bmo_edgenet.c:BM_vert_in_edge"}
!74 = !{!"bmo_edgenet.c:sub_v3_v3v3"}
!75 = !{!76, !76, i64 0}
!76 = !{!"float", !37, i64 0}
!77 = !{!"bmo_edgenet.c:cross_v3_v3v3"}
!78 = !{!"bmo_edgenet.c:dot_v3v3"}
!79 = !{!"bmo_edgenet.c:BM_iter_new"}
!80 = !{!"bmo_edgenet.c:BM_iter_step"}
!81 = !{!82, !39, i64 48}
!82 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!83 = !{!"bmo_edgenet.c:BM_iter_init"}
!84 = !{!82, !37, i64 60}
!85 = !{!82, !39, i64 40}
!86 = !{!37, !37, i64 0}
