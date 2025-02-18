; ModuleID = 'blender/source/blender/bmesh/operators/bmo_connect.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"check_degenerate\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"faces_exclude\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_connect_verts_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #3
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  store ptr null, ptr %4, align 8, !tbaa !34
  %7 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #3
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8, i16 noundef signext 4) #3
  %8 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %98, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %15

15:                                               ; preds = %10, %95
  %16 = phi ptr [ %8, %10 ], [ %96, %95 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = load i32, ptr %11, align 8, !tbaa !42
  %20 = sext i32 %19 to i64
  %21 = getelementptr %struct.BMFlagLayer, ptr %18, i64 %20
  %22 = getelementptr %struct.BMFlagLayer, ptr %21, i64 -1
  %23 = load i16, ptr %22, align 2, !tbaa !47
  %24 = or i16 %23, 1
  store i16 %24, ptr %22, align 2, !tbaa !47
  store i8 6, ptr %12, align 4, !tbaa !49
  store ptr @bmiter__loop_of_vert_begin, ptr %13, align 8, !tbaa !51
  store ptr @bmiter__loop_of_vert_step, ptr %14, align 8, !tbaa !52
  store ptr %16, ptr %5, align 8, !tbaa !53
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %5) #3
  %25 = load ptr, ptr %14, align 8, !tbaa !52
  %26 = call ptr %25(ptr noundef nonnull %5) #3
  %27 = icmp eq ptr %26, null
  br i1 %27, label %95, label %28

28:                                               ; preds = %15, %91
  %29 = phi ptr [ %93, %91 ], [ %26, %15 ]
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = load i32, ptr %11, align 8, !tbaa !42
  %35 = sext i32 %34 to i64
  %36 = getelementptr %struct.BMFlagLayer, ptr %33, i64 %35
  %37 = getelementptr %struct.BMFlagLayer, ptr %36, i64 -1
  %38 = load i16, ptr %37, align 2, !tbaa !47
  %39 = and i16 %38, 6
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = or disjoint i16 %38, 2
  store i16 %42, ptr %37, align 2, !tbaa !47
  %43 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !58
  %45 = icmp sgt i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %4, ptr noundef %31, ptr noundef %7) #3
  br label %47

47:                                               ; preds = %46, %41, %28
  %48 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = load i32, ptr %11, align 8, !tbaa !42
  %55 = sext i32 %54 to i64
  %56 = getelementptr %struct.BMFlagLayer, ptr %53, i64 %55
  %57 = getelementptr %struct.BMFlagLayer, ptr %56, i64 -1
  %58 = load i16, ptr %57, align 2, !tbaa !47
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !62
  %66 = getelementptr %struct.BMFlagLayer, ptr %65, i64 %55
  %67 = getelementptr %struct.BMFlagLayer, ptr %66, i64 -1
  %68 = load i16, ptr %67, align 2, !tbaa !47
  %69 = or i16 %68, 2
  store i16 %69, ptr %67, align 2, !tbaa !47
  br label %70

70:                                               ; preds = %61, %47
  %71 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !60
  %75 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !38
  %77 = getelementptr %struct.BMFlagLayer, ptr %76, i64 %55
  %78 = getelementptr %struct.BMFlagLayer, ptr %77, i64 -1
  %79 = load i16, ptr %78, align 2, !tbaa !47
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !61
  %85 = getelementptr inbounds %struct.BMEdge, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  %87 = getelementptr %struct.BMFlagLayer, ptr %86, i64 %55
  %88 = getelementptr %struct.BMFlagLayer, ptr %87, i64 -1
  %89 = load i16, ptr %88, align 2, !tbaa !47
  %90 = or i16 %89, 2
  store i16 %90, ptr %88, align 2, !tbaa !47
  br label %91

91:                                               ; preds = %70, %82
  %92 = load ptr, ptr %14, align 8, !tbaa !52
  %93 = call ptr %92(ptr noundef nonnull %5) #3
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %28, !llvm.loop !66

95:                                               ; preds = %91, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  %96 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #3
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %15, !llvm.loop !69

98:                                               ; preds = %95, %2
  br label %99

99:                                               ; preds = %111, %98
  %100 = load ptr, ptr %4, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %4, ptr noundef %7) #3
  br label %104

104:                                              ; preds = %99, %102
  %105 = phi ptr [ %103, %102 ], [ null, %99 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = call fastcc i32 @bm_face_connect_verts(ptr noundef %0, ptr noundef nonnull %105, i8 noundef zeroext %6)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef null) #3
  br label %111

111:                                              ; preds = %110, %107
  br label %99, !llvm.loop !70

112:                                              ; preds = %104
  call void @BLI_mempool_destroy(ptr noundef %7) #3
  store ptr null, ptr %4, align 8, !tbaa !34
  %113 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %113, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, i16 noundef signext 3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @bm_face_connect_verts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !58
  %7 = sdiv i32 %6, 2
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 4
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %15

15:                                               ; preds = %89, %3
  %16 = phi ptr [ %13, %3 ], [ %94, %89 ]
  %17 = phi ptr [ null, %3 ], [ %90, %89 ]
  %18 = phi ptr [ null, %3 ], [ %91, %89 ]
  %19 = phi i32 [ 0, %3 ], [ %92, %89 ]
  %20 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = load i32, ptr %14, align 8, !tbaa !42
  %25 = sext i32 %24 to i64
  %26 = getelementptr %struct.BMFlagLayer, ptr %23, i64 %25
  %27 = getelementptr %struct.BMFlagLayer, ptr %26, i64 -1
  %28 = load i16, ptr %27, align 2, !tbaa !47
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %89, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !38
  %38 = getelementptr %struct.BMFlagLayer, ptr %37, i64 %25
  %39 = getelementptr %struct.BMFlagLayer, ptr %38, i64 -1
  %40 = load i16, ptr %39, align 2, !tbaa !47
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !38
  %50 = getelementptr %struct.BMFlagLayer, ptr %49, i64 %25
  %51 = getelementptr %struct.BMFlagLayer, ptr %50, i64 -1
  %52 = load i16, ptr %51, align 2, !tbaa !47
  %53 = and i16 %52, 1
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %43, %31
  %56 = icmp eq ptr %18, null
  br i1 %56, label %89, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !65
  %60 = icmp eq ptr %59, %16
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !59
  %64 = icmp eq ptr %63, %16
  %65 = zext i1 %64 to i8
  br label %66

66:                                               ; preds = %57, %61
  %67 = phi i8 [ 1, %57 ], [ %65, %61 ]
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  %72 = tail call ptr @BM_edge_exists(ptr noundef %71, ptr noundef %21) #3
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  %77 = load i32, ptr %14, align 8, !tbaa !42
  %78 = sext i32 %77 to i64
  %79 = getelementptr %struct.BMFlagLayer, ptr %76, i64 %78
  %80 = getelementptr %struct.BMFlagLayer, ptr %79, i64 -1
  %81 = load i16, ptr %80, align 2, !tbaa !47
  %82 = and i16 %81, 1
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74, %69
  %85 = add i32 %19, 1
  %86 = zext i32 %19 to i64
  %87 = getelementptr inbounds [2 x ptr], ptr %10, i64 %86
  store ptr %18, ptr %87, align 16, !tbaa !34
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  store ptr %16, ptr %88, align 8, !tbaa !34
  br label %89

89:                                               ; preds = %66, %84, %74, %55, %15, %43
  %90 = phi ptr [ %17, %43 ], [ %17, %15 ], [ %16, %55 ], [ %17, %74 ], [ %17, %84 ], [ %17, %66 ]
  %91 = phi ptr [ %18, %43 ], [ %18, %15 ], [ %16, %55 ], [ %16, %74 ], [ %16, %84 ], [ %16, %66 ]
  %92 = phi i32 [ %19, %43 ], [ %19, %15 ], [ %19, %55 ], [ %19, %74 ], [ %85, %84 ], [ %19, %66 ]
  %93 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !65
  %95 = icmp eq ptr %94, %13
  br i1 %95, label %96, label %15, !llvm.loop !72

96:                                               ; preds = %89
  %97 = icmp eq i32 %92, 0
  br i1 %97, label %188, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !65
  %101 = icmp eq ptr %100, %91
  br i1 %101, label %118, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !59
  %105 = icmp eq ptr %104, %91
  br i1 %105, label %118, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %10, align 16, !tbaa !34
  %108 = icmp eq ptr %107, %90
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !34
  %112 = icmp eq ptr %111, %91
  br i1 %112, label %118, label %113

113:                                              ; preds = %106, %109
  %114 = add i32 %92, 1
  %115 = zext i32 %92 to i64
  %116 = getelementptr inbounds [2 x ptr], ptr %10, i64 %115
  store ptr %90, ptr %116, align 16, !tbaa !34
  %117 = getelementptr inbounds ptr, ptr %116, i64 1
  store ptr %91, ptr %117, align 8, !tbaa !34
  br label %118

118:                                              ; preds = %98, %113, %109, %102
  %119 = phi i32 [ %92, %102 ], [ %114, %113 ], [ %92, %109 ], [ %92, %98 ]
  %120 = icmp eq i8 %2, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  call void @BM_face_splits_check_legal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef %119) #3
  br label %123

122:                                              ; preds = %118
  call void @BM_face_splits_check_optimal(ptr noundef %1, ptr noundef nonnull %10, i32 noundef %119) #3
  br label %123

123:                                              ; preds = %122, %121
  %124 = icmp eq i32 %119, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %123
  %126 = zext i32 %119 to i64
  br label %132

127:                                              ; preds = %149, %123
  %128 = phi i32 [ 0, %123 ], [ %150, %149 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %188, label %130

130:                                              ; preds = %127
  %131 = zext i32 %128 to i64
  br label %153

132:                                              ; preds = %125, %149
  %133 = phi i64 [ 0, %125 ], [ %151, %149 ]
  %134 = phi i32 [ 0, %125 ], [ %150, %149 ]
  %135 = getelementptr inbounds [2 x ptr], ptr %10, i64 %133
  %136 = load ptr, ptr %135, align 16, !tbaa !34
  %137 = icmp eq ptr %136, null
  br i1 %137, label %149, label %138

138:                                              ; preds = %132
  %139 = add i32 %134, 1
  %140 = zext i32 %134 to i64
  %141 = getelementptr inbounds [2 x ptr], ptr %11, i64 %140
  %142 = getelementptr inbounds %struct.BMLoop, ptr %136, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !60
  store ptr %143, ptr %141, align 16, !tbaa !34
  %144 = getelementptr inbounds [2 x ptr], ptr %10, i64 %133, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !34
  %146 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !60
  %148 = getelementptr inbounds ptr, ptr %141, i64 1
  store ptr %147, ptr %148, align 8, !tbaa !34
  br label %149

149:                                              ; preds = %132, %138
  %150 = phi i32 [ %139, %138 ], [ %134, %132 ]
  %151 = add nuw nsw i64 %133, 1
  %152 = icmp eq i64 %151, %126
  br i1 %152, label %127, label %132, !llvm.loop !73

153:                                              ; preds = %130, %174
  %154 = phi i64 [ 0, %130 ], [ %185, %174 ]
  %155 = phi ptr [ %1, %130 ], [ %169, %174 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  %156 = getelementptr inbounds [2 x ptr], ptr %11, i64 %154
  %157 = load ptr, ptr %156, align 16, !tbaa !34
  %158 = call ptr @BM_face_vert_share_loop(ptr noundef %155, ptr noundef %157) #3
  %159 = icmp eq ptr %158, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = getelementptr inbounds [2 x ptr], ptr %11, i64 %154, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !34
  %163 = call ptr @BM_face_vert_share_loop(ptr noundef %155, ptr noundef %162) #3
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %160
  %166 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %155, ptr noundef nonnull %158, ptr noundef nonnull %163, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0) #3
  br label %168

167:                                              ; preds = %160, %153
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi ptr [ %166, %165 ], [ null, %167 ]
  %170 = load ptr, ptr %4, align 8, !tbaa !34
  %171 = icmp ne ptr %170, null
  %172 = icmp ne ptr %169, null
  %173 = select i1 %171, i1 %172, i1 false
  br i1 %173, label %174, label %187

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.BMLoop, ptr %170, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !61
  %177 = getelementptr inbounds %struct.BMEdge, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !62
  %179 = load i32, ptr %14, align 8, !tbaa !42
  %180 = sext i32 %179 to i64
  %181 = getelementptr %struct.BMFlagLayer, ptr %178, i64 %180
  %182 = getelementptr %struct.BMFlagLayer, ptr %181, i64 -1
  %183 = load i16, ptr %182, align 2, !tbaa !47
  %184 = or i16 %183, 1
  store i16 %184, ptr %182, align 2, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  %185 = add nuw nsw i64 %154, 1
  %186 = icmp eq i64 %185, %131
  br i1 %186, label %188, label %153, !llvm.loop !74

187:                                              ; preds = %168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  br label %188

188:                                              ; preds = %174, %127, %187, %96
  %189 = phi i32 [ 0, %96 ], [ -1, %187 ], [ 1, %127 ], [ 1, %174 ]
  ret i32 %189
}

declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_splits_check_legal(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_face_splits_check_optimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!38 = !{!39, !35, i64 16}
!39 = !{!"BMVert", !40, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!40 = !{!"BMHeader", !35, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !41, i64 128}
!43 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !46, i64 960, !35, i64 976, !46, i64 984, !35, i64 1000}
!44 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !35, i64 0, !35, i64 8}
!47 = !{!48, !45, i64 0}
!48 = !{!"BMFlagLayer", !45, i64 0}
!49 = !{!50, !36, i64 60}
!50 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !41, i64 56, !36, i64 60}
!51 = !{!50, !35, i64 40}
!52 = !{!50, !35, i64 48}
!53 = !{!36, !36, i64 0}
!54 = !{!55, !35, i64 32}
!55 = !{!"BMLoop", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!56 = !{!57, !35, i64 16}
!57 = !{!"BMFace", !40, i64 0, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 36, !45, i64 48}
!58 = !{!57, !41, i64 32}
!59 = !{!55, !35, i64 64}
!60 = !{!55, !35, i64 16}
!61 = !{!55, !35, i64 24}
!62 = !{!63, !35, i64 16}
!63 = !{!"BMEdge", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !64, i64 48, !64, i64 64}
!64 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!65 = !{!55, !35, i64 56}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !67, !68}
!70 = distinct !{!70, !67, !68}
!71 = !{!57, !35, i64 24}
!72 = distinct !{!72, !67, !68}
!73 = distinct !{!73, !67, !68}
!74 = distinct !{!74, !67, !68}
