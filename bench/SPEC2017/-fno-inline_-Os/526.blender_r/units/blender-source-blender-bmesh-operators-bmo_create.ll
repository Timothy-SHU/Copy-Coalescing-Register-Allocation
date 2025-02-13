; ModuleID = 'blender/source/blender/bmesh/operators/bmo_create.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMElemF = type { %struct.BMHeader, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [7 x i8] c"mat_nr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"use_smooth\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"edgenet_prepare edges=%fe\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"edgenet_fill edges=%fe mat_nr=%i use_smooth=%b sides=%i\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"dissolve_faces faces=%ff\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"region.out\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"edgeloop_fill edges=%fe\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_contextual_create_exec = private unnamed_addr constant [27 x i8] c"bmo_contextual_create_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_contextual_create_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca [2 x ptr], align 16
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca %struct.BMOperator, align 8
  %7 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  %8 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %9 = trunc i32 %8 to i16
  %10 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %11 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 11) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %160, label %13

13:                                               ; preds = %2, %26
  %14 = phi ptr [ %32, %26 ], [ %11, %2 ]
  %15 = phi i32 [ %29, %26 ], [ 0, %2 ]
  %16 = phi i32 [ %28, %26 ], [ 0, %2 ]
  %17 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %18 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !34
  switch i8 %19, label %26 [
    i8 1, label %20
    i8 2, label %22
    i8 8, label %24
  ]

20:                                               ; preds = %13
  %21 = add nsw i32 %15, 1
  br label %26

22:                                               ; preds = %13
  %23 = add nsw i32 %16, 1
  br label %26

24:                                               ; preds = %13
  %25 = add nsw i32 %17, 1
  br label %26

26:                                               ; preds = %13, %24, %22, %20
  %27 = phi i32 [ %17, %13 ], [ %25, %24 ], [ %17, %22 ], [ %17, %20 ]
  %28 = phi i32 [ %16, %13 ], [ %16, %24 ], [ %23, %22 ], [ %16, %20 ]
  %29 = phi i32 [ %15, %13 ], [ %15, %24 ], [ %15, %22 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.BMElemF, ptr %14, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %31, i16 noundef signext 1) #6
  %32 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %13, !llvm.loop !42

34:                                               ; preds = %26
  %35 = icmp eq i32 %27, 0
  %36 = icmp eq i32 %29, 2
  %37 = icmp eq i32 %28, 0
  %38 = select i1 %36, i1 %37, i1 false
  %39 = select i1 %38, i1 %35, i1 false
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  %41 = call i32 @BMO_iter_as_array(ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, ptr noundef nonnull %4, i32 noundef 2) #5
  %42 = load ptr, ptr %4, align 16, !tbaa !44
  %43 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %42, ptr noundef %44, ptr noundef null, i32 noundef 2) #5
  %46 = getelementptr inbounds %struct.BMEdge, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %47, i16 noundef signext 2) #6
  %48 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %48, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, i16 noundef signext 2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  br label %160

49:                                               ; preds = %34
  %50 = icmp sgt i32 %29, 3
  %51 = and i1 %35, %50
  %52 = add nsw i32 %28, 2
  %53 = icmp eq i32 %29, %52
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %89

55:                                               ; preds = %49
  %56 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %92, label %58

58:                                               ; preds = %55, %70
  %59 = phi ptr [ %73, %70 ], [ null, %55 ]
  %60 = phi ptr [ %72, %70 ], [ null, %55 ]
  %61 = phi ptr [ %71, %70 ], [ null, %55 ]
  %62 = phi ptr [ %74, %70 ], [ %56, %55 ]
  %63 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef nonnull %62, i16 noundef signext 1, i8 noundef zeroext 1) #5
  switch i32 %63, label %89 [
    i32 0, label %64
    i32 1, label %66
    i32 2, label %70
  ]

64:                                               ; preds = %58
  %65 = icmp eq ptr %61, null
  br i1 %65, label %70, label %89

66:                                               ; preds = %58
  %67 = icmp eq ptr %60, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %66
  %69 = icmp eq ptr %59, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %68, %64, %66, %58
  %71 = phi ptr [ %61, %58 ], [ %61, %66 ], [ %62, %64 ], [ %61, %68 ]
  %72 = phi ptr [ %60, %58 ], [ %62, %66 ], [ %60, %64 ], [ %60, %68 ]
  %73 = phi ptr [ %59, %58 ], [ %59, %66 ], [ %59, %64 ], [ %62, %68 ]
  %74 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %58, !llvm.loop !48

76:                                               ; preds = %70
  %77 = icmp ne ptr %71, null
  %78 = icmp ne ptr %72, null
  %79 = select i1 %77, i1 %78, i1 false
  %80 = icmp ne ptr %73, null
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef null, i32 noundef 2) #5
  %84 = getelementptr inbounds %struct.BMEdge, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !45
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %85, i16 noundef signext 1) #6
  %86 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef nonnull %71, ptr noundef nonnull %73, ptr noundef null, i32 noundef 2) #5
  %87 = getelementptr inbounds %struct.BMEdge, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !45
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %88, i16 noundef signext 1) #6
  br label %89

89:                                               ; preds = %58, %64, %68, %76, %82, %49
  %90 = phi i32 [ %28, %49 ], [ %29, %82 ], [ %28, %76 ], [ %28, %68 ], [ %28, %64 ], [ %28, %58 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %55, %89
  %93 = phi i32 [ %90, %89 ], [ %28, %55 ]
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #4
  %94 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !49
  %96 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %95, ptr noundef nonnull @.str.4, i32 noundef 1) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %5) #5
  %97 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %97, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, i16 noundef signext 1) #5
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #5
  %98 = load i32, ptr %94, align 8, !tbaa !49
  %99 = shl i32 %8, 16
  %100 = ashr exact i32 %99, 16
  %101 = zext i8 %10 to i32
  %102 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %98, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %100, i32 noundef %101, i32 noundef 10000) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %5) #5
  %103 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %97, ptr noundef nonnull @.str.6) #5
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #4
  br i1 %35, label %124, label %111

106:                                              ; preds = %92
  %107 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %108 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !51
  call void @_bmo_slot_copy(ptr noundef nonnull %97, ptr noundef nonnull @.str.6, ptr noundef nonnull %107, ptr noundef nonnull @.str.6, ptr noundef %109) #5
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #4
  br label %160

110:                                              ; preds = %89
  br i1 %35, label %140, label %111

111:                                              ; preds = %105, %110
  %112 = phi i32 [ %93, %105 ], [ 0, %110 ]
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %6) #4
  %113 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %114 = load i32, ptr %113, align 8, !tbaa !49
  %115 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %114, ptr noundef nonnull @.str.7, i32 noundef 1) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %6) #5
  %116 = getelementptr inbounds %struct.BMOperator, ptr %6, i64 0, i32 1
  %117 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %116, ptr noundef nonnull @.str.8) #5
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %6) #4
  br label %124

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %122 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !51
  call void @_bmo_slot_copy(ptr noundef nonnull %116, ptr noundef nonnull @.str.8, ptr noundef nonnull %121, ptr noundef nonnull @.str.6, ptr noundef %123) #5
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %6) #4
  br label %160

124:                                              ; preds = %105, %119
  %125 = phi i32 [ %112, %119 ], [ %93, %105 ]
  %126 = icmp sgt i32 %125, 2
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %7) #4
  %128 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %129 = load i32, ptr %128, align 8, !tbaa !49
  %130 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %129, ptr noundef nonnull @.str.9, i32 noundef 1) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %7) #5
  %131 = getelementptr inbounds %struct.BMOperator, ptr %7, i64 0, i32 1
  %132 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %131, ptr noundef nonnull @.str.6) #5
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %136 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !51
  call void @_bmo_slot_copy(ptr noundef nonnull %131, ptr noundef nonnull @.str.6, ptr noundef nonnull %135, ptr noundef nonnull @.str.6, ptr noundef %137) #5
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %7) #4
  br label %160

138:                                              ; preds = %127
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %7) #4
  %139 = icmp sgt i32 %29, 2
  br i1 %139, label %142, label %160

140:                                              ; preds = %110, %124
  %141 = icmp sgt i32 %29, 2
  br i1 %141, label %142, label %160

142:                                              ; preds = %138, %140
  %143 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %144 = zext nneg i32 %29 to i64
  %145 = shl nuw nsw i64 %144, 3
  %146 = call ptr %143(i64 noundef %145, ptr noundef nonnull @__func__.bmo_contextual_create_exec) #5
  %147 = call i32 @BMO_iter_as_array(ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, ptr noundef %146, i32 noundef %29) #5
  %148 = call ptr @BM_face_create_ngon_vcloud(ptr noundef %0, ptr noundef %146, i32 noundef %29, ptr noundef null, i32 noundef 2) #5
  %149 = icmp eq ptr %148, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.BMFace, ptr %148, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !52
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %152, i16 noundef signext 2) #6
  %153 = getelementptr inbounds %struct.BMFace, ptr %148, i64 0, i32 5
  store i16 %9, ptr %153, align 8, !tbaa !55
  %154 = icmp eq i8 %10, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %148) #6
  br label %156

156:                                              ; preds = %155, %150
  %157 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %157, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 2) #5
  br label %158

158:                                              ; preds = %156, %142
  %159 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %159(ptr noundef %146) #5
  br label %160

160:                                              ; preds = %2, %134, %120, %106, %140, %158, %138, %40
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !56 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !61
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_iter_as_array(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BMO_iter_elem_count_flag(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_ngon_vcloud(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !64
  %4 = or i8 %3, 8
  store i8 %4, ptr %2, align 1, !tbaa !64
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!34 = !{!35, !37, i64 12}
!35 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 16}
!41 = !{!"BMElemF", !35, i64 0, !36, i64 16}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!36, !36, i64 0}
!45 = !{!46, !36, i64 16}
!46 = !{!"BMEdge", !35, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !47, i64 48, !47, i64 64}
!47 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!48 = distinct !{!48, !43}
!49 = !{!50, !39, i64 1304}
!50 = !{!"BMOperator", !37, i64 0, !37, i64 640, !36, i64 1280, !36, i64 1288, !39, i64 1296, !39, i64 1300, !39, i64 1304}
!51 = !{!50, !36, i64 1288}
!52 = !{!53, !36, i64 16}
!53 = !{!"BMFace", !35, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !54, i64 48}
!54 = !{!"short", !37, i64 0}
!55 = !{!53, !54, i64 48}
!56 = !{!"bmo_create.c:_bmo_elem_flag_enable"}
!57 = !{!58, !39, i64 128}
!58 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !59, i64 144, !59, i64 344, !59, i64 544, !59, i64 744, !54, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !60, i64 960, !36, i64 976, !60, i64 984, !36, i64 1000}
!59 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!60 = !{!"ListBase", !36, i64 0, !36, i64 8}
!61 = !{!62, !54, i64 0}
!62 = !{!"BMFlagLayer", !54, i64 0}
!63 = !{!"bmo_create.c:_bm_elem_flag_enable"}
!64 = !{!35, !37, i64 13}
