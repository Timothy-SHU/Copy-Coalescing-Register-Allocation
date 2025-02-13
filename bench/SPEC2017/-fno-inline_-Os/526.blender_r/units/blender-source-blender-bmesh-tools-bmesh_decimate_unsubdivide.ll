; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_decimate_unsubdivide.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_decimate_unsubdivide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_decimate_unsubdivide_ex = private unnamed_addr constant [32 x i8] c"BM_mesh_decimate_unsubdivide_ex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_decimate_unsubdivide_ex(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = load i32, ptr %0, align 8, !tbaa !38
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @__func__.BM_mesh_decimate_unsubdivide_ex) #7
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = load i32, ptr %0, align 8, !tbaa !38
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @__func__.BM_mesh_decimate_unsubdivide_ex) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %16 ]
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %20) #9
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %19, !llvm.loop !44

23:                                               ; preds = %19, %16, %3
  %24 = icmp sgt i32 %1, 0
  br i1 %24, label %25, label %159

25:                                               ; preds = %23, %154
  %26 = phi i32 [ %138, %154 ], [ 0, %23 ]
  %27 = phi i32 [ %156, %154 ], [ 0, %23 ]
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %41, %25
  %31 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %137, label %45

33:                                               ; preds = %25, %41
  %34 = phi ptr [ %43, %41 ], [ %28, %25 ]
  %35 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %34) #9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = call fastcc zeroext i8 @bm_vert_dissolve_fan_test(ptr noundef nonnull %34) #9, !range !46
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %37, %40
  %42 = phi i32 [ 1, %40 ], [ 0, %37 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %34, i32 noundef %42) #9
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %30, label %33, !llvm.loop !47

45:                                               ; preds = %30, %133
  %46 = phi ptr [ %135, %133 ], [ %31, %30 ]
  %47 = phi i32 [ %134, %133 ], [ %26, %30 ]
  br label %48

48:                                               ; preds = %45, %59
  %49 = phi ptr [ %46, %45 ], [ %60, %59 ]
  %50 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %49) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call fastcc zeroext i8 @bm_vert_dissolve_fan_test(ptr noundef nonnull %49) #9, !range !46
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %137, label %62

59:                                               ; preds = %48, %53
  %60 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %137, label %48, !llvm.loop !51

62:                                               ; preds = %56
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %49, i32 noundef 1) #9
  store ptr %49, ptr %14, align 8, !tbaa !34
  br label %63

63:                                               ; preds = %129, %62
  %64 = phi i32 [ 1, %62 ], [ %132, %129 ]
  %65 = phi i32 [ 1, %62 ], [ %130, %129 ]
  %66 = phi i32 [ %47, %62 ], [ %131, %129 ]
  %67 = and i32 %64, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = zext i32 %65 to i64
  br label %75

71:                                               ; preds = %63
  %72 = icmp eq i32 %66, 0
  br i1 %72, label %133, label %73

73:                                               ; preds = %71
  %74 = zext i32 %66 to i64
  br label %102

75:                                               ; preds = %69, %96
  %76 = phi i64 [ 0, %69 ], [ %98, %96 ]
  %77 = phi i32 [ 0, %69 ], [ %97, %96 ]
  %78 = getelementptr inbounds ptr, ptr %14, i64 %76
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %79) #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %96, label %82

82:                                               ; preds = %75, %92
  %83 = phi i32 [ %93, %92 ], [ %77, %75 ]
  %84 = phi ptr [ %94, %92 ], [ %80, %75 ]
  %85 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %84, ptr noundef %79) #9
  %86 = call fastcc i32 @_bm_elem_index_get(ptr noundef %85) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  call fastcc void @_bm_elem_index_set(ptr noundef %85, i32 noundef -1) #9
  %89 = add i32 %83, 1
  %90 = zext i32 %83 to i64
  %91 = getelementptr inbounds ptr, ptr %9, i64 %90
  store ptr %85, ptr %91, align 8, !tbaa !34
  br label %92

92:                                               ; preds = %88, %82
  %93 = phi i32 [ %89, %88 ], [ %83, %82 ]
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %82, !llvm.loop !52

96:                                               ; preds = %92, %75
  %97 = phi i32 [ %77, %75 ], [ %93, %92 ]
  %98 = add nuw nsw i64 %76, 1
  %99 = icmp eq i64 %98, %70
  br i1 %99, label %100, label %75, !llvm.loop !53

100:                                              ; preds = %96
  %101 = icmp eq i32 %97, 0
  br i1 %101, label %133, label %129

102:                                              ; preds = %73, %123
  %103 = phi i64 [ 0, %73 ], [ %125, %123 ]
  %104 = phi i32 [ 0, %73 ], [ %124, %123 ]
  %105 = getelementptr inbounds ptr, ptr %9, i64 %103
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %106) #9
  %108 = icmp eq ptr %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %102, %119
  %110 = phi i32 [ %120, %119 ], [ %104, %102 ]
  %111 = phi ptr [ %121, %119 ], [ %107, %102 ]
  %112 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %111, ptr noundef %106) #9
  %113 = call fastcc i32 @_bm_elem_index_get(ptr noundef %112) #9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  call fastcc void @_bm_elem_index_set(ptr noundef %112, i32 noundef 1) #9
  %116 = add i32 %110, 1
  %117 = zext i32 %110 to i64
  %118 = getelementptr inbounds ptr, ptr %14, i64 %117
  store ptr %112, ptr %118, align 8, !tbaa !34
  br label %119

119:                                              ; preds = %115, %109
  %120 = phi i32 [ %116, %115 ], [ %110, %109 ]
  %121 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %109, !llvm.loop !54

123:                                              ; preds = %119, %102
  %124 = phi i32 [ %104, %102 ], [ %120, %119 ]
  %125 = add nuw nsw i64 %103, 1
  %126 = icmp eq i64 %125, %74
  br i1 %126, label %127, label %102, !llvm.loop !55

127:                                              ; preds = %123
  %128 = icmp eq i32 %124, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %100, %127
  %130 = phi i32 [ %65, %100 ], [ %124, %127 ]
  %131 = phi i32 [ %97, %100 ], [ %66, %127 ]
  %132 = add i32 %64, 1
  br label %63

133:                                              ; preds = %71, %100, %127
  %134 = phi i32 [ %66, %127 ], [ 0, %100 ], [ 0, %71 ]
  %135 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %45

137:                                              ; preds = %56, %133, %59, %30
  %138 = phi i32 [ %26, %30 ], [ %47, %59 ], [ %134, %133 ], [ %47, %56 ]
  %139 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #9
  %140 = icmp eq ptr %139, null
  br i1 %140, label %159, label %141

141:                                              ; preds = %137, %151
  %142 = phi i8 [ %152, %151 ], [ 0, %137 ]
  %143 = phi ptr [ %144, %151 ], [ %139, %137 ]
  %144 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %145 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %143) #9
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = call fastcc zeroext i8 @bm_vert_dissolve_fan(ptr noundef nonnull %0, ptr noundef nonnull %143) #9
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, i8 %142, i8 1
  br label %151

151:                                              ; preds = %147, %141
  %152 = phi i8 [ %142, %141 ], [ %150, %147 ]
  %153 = icmp eq ptr %144, null
  br i1 %153, label %154, label %141, !llvm.loop !56

154:                                              ; preds = %151
  %155 = icmp eq i8 %152, 0
  %156 = add nuw nsw i32 %27, 1
  %157 = icmp eq i32 %156, %1
  %158 = select i1 %155, i1 true, i1 %157
  br i1 %158, label %159, label %25, !llvm.loop !57

159:                                              ; preds = %137, %154, %23
  %160 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %161 = load i8, ptr %160, align 4, !tbaa !58
  %162 = or i8 %161, 1
  store i8 %162, ptr %160, align 4, !tbaa !58
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %163(ptr noundef %9) #7
  %164 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %164(ptr noundef %14) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !59 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #9
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !61
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !65 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !61
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_vert_dissolve_fan_test(ptr noundef %0) unnamed_addr #0 !PGOFuncName !66 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %1, %30
  %7 = phi i64 [ %33, %30 ], [ 0, %1 ]
  %8 = phi i32 [ %28, %30 ], [ 0, %1 ]
  %9 = phi i32 [ %27, %30 ], [ 0, %1 ]
  %10 = phi i32 [ %26, %30 ], [ 0, %1 ]
  %11 = phi ptr [ %34, %30 ], [ %4, %1 ]
  %12 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %11) #9, !range !46
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = add i32 %10, 1
  br label %25

16:                                               ; preds = %6
  %17 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %11) #9, !range !46
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = add i32 %9, 1
  br label %25

21:                                               ; preds = %16
  %22 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %11) #9, !range !46
  %23 = zext nneg i8 %22 to i32
  %24 = add i32 %8, %23
  br label %25

25:                                               ; preds = %21, %19, %14
  %26 = phi i32 [ %15, %14 ], [ %10, %19 ], [ %10, %21 ]
  %27 = phi i32 [ %9, %14 ], [ %20, %19 ], [ %9, %21 ]
  %28 = phi i32 [ %8, %14 ], [ %8, %19 ], [ %24, %21 ]
  %29 = icmp eq i64 %7, 4
  br i1 %29, label %62, label %30

30:                                               ; preds = %25
  %31 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %11, ptr noundef %0) #9
  %32 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %7
  store ptr %31, ptr %32, align 8, !tbaa !34
  %33 = add nuw nsw i64 %7, 1
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %6, !llvm.loop !67

36:                                               ; preds = %30
  %37 = trunc i64 %33 to i32
  %38 = icmp eq i32 %28, 2
  %39 = icmp eq i32 %37, 4
  %40 = icmp eq i32 %26, 0
  %41 = select i1 %39, i1 %40, i1 false
  %42 = icmp eq i32 %27, 4
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = icmp eq i32 %37, 3
  %46 = select i1 %45, i1 %40, i1 false
  %47 = icmp eq i32 %27, 3
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = icmp eq i32 %26, 2
  %51 = select i1 %45, i1 %50, i1 false
  %52 = icmp eq i32 %27, 1
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %44, %36
  %55 = phi i32 [ %37, %49 ], [ 3, %44 ], [ 4, %36 ]
  %56 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %3, i32 noundef %55, ptr noundef null) #7
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %61

58:                                               ; preds = %49
  %59 = icmp eq i32 %37, 2
  %60 = select i1 %59, i1 %38, i1 false
  br i1 %60, label %62, label %61

61:                                               ; preds = %1, %58, %54
  br label %62

62:                                               ; preds = %25, %58, %54, %61
  %63 = phi i8 [ 0, %61 ], [ 1, %54 ], [ 1, %58 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #8
  ret i8 %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !69
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_vert_dissolve_fan(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !76 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [4 x ptr], align 16
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %1) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %90, label %8

8:                                                ; preds = %2, %27
  %9 = phi i32 [ %30, %27 ], [ 0, %2 ]
  %10 = phi i32 [ %29, %27 ], [ 0, %2 ]
  %11 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %12 = phi i32 [ %31, %27 ], [ 0, %2 ]
  %13 = phi ptr [ %32, %27 ], [ %6, %2 ]
  %14 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %13) #9, !range !46
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = add i32 %11, 1
  br label %27

18:                                               ; preds = %8
  %19 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %13) #9, !range !46
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = add i32 %10, 1
  br label %27

23:                                               ; preds = %18
  %24 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %13) #9, !range !46
  %25 = zext nneg i8 %24 to i32
  %26 = add i32 %9, %25
  br label %27

27:                                               ; preds = %23, %21, %16
  %28 = phi i32 [ %17, %16 ], [ %11, %21 ], [ %11, %23 ]
  %29 = phi i32 [ %10, %16 ], [ %22, %21 ], [ %10, %23 ]
  %30 = phi i32 [ %9, %16 ], [ %9, %21 ], [ %26, %23 ]
  %31 = add i32 %12, 1
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %8, !llvm.loop !77

34:                                               ; preds = %27
  switch i32 %12, label %90 [
    i32 1, label %35
    i32 3, label %43
    i32 2, label %47
  ]

35:                                               ; preds = %34
  %36 = icmp eq i32 %30, 2
  br i1 %36, label %37, label %90

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %39, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %41 = icmp ne ptr %40, null
  %42 = zext i1 %41 to i8
  br label %90

43:                                               ; preds = %34
  %44 = icmp ne i32 %28, 0
  %45 = icmp ne i32 %29, 4
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %90, label %56

47:                                               ; preds = %34
  %48 = icmp eq i32 %28, 2
  %49 = icmp eq i32 %29, 1
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  br label %58

52:                                               ; preds = %47
  %53 = icmp ne i32 %28, 0
  %54 = icmp ne i32 %29, 3
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %90, label %56

56:                                               ; preds = %43, %52
  %57 = phi i32 [ 3, %52 ], [ 4, %43 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi i32 [ %57, %56 ], [ 2, %51 ]
  %60 = call i32 @BM_iter_as_array(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %59) #7
  %61 = zext nneg i32 %59 to i64
  br label %62

62:                                               ; preds = %58, %85
  %63 = phi i64 [ 0, %58 ], [ %86, %85 ]
  %64 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !78
  %68 = getelementptr inbounds %struct.BMFace, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !80
  %70 = icmp sgt i32 %69, 3
  br i1 %70, label %71, label %85

71:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %72 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !82
  %74 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !83
  %76 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %67, ptr noundef %73, ptr noundef %75, ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 1) #7
  %77 = load ptr, ptr %5, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.BMLoop, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !84
  %80 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !84
  %82 = load ptr, ptr %72, align 8, !tbaa !82
  %83 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !84
  call fastcc void @_bm_elem_flag_merge_into(ptr noundef %79, ptr noundef %81, ptr noundef %84) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %85

85:                                               ; preds = %71, %62
  %86 = add nuw nsw i64 %63, 1
  %87 = icmp eq i64 %86, %61
  br i1 %87, label %88, label %62, !llvm.loop !85

88:                                               ; preds = %85
  %89 = call zeroext i8 @BM_vert_dissolve(ptr noundef %0, ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  br label %90

90:                                               ; preds = %2, %34, %35, %43, %52, %88, %37
  %91 = phi i8 [ %42, %37 ], [ %89, %88 ], [ 0, %52 ], [ 0, %43 ], [ 0, %35 ], [ 0, %34 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i8 %91
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_decimate_unsubdivide(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @BM_mesh_decimate_unsubdivide_ex(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !86 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !87
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %18 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  br label %19

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  br label %19

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  br label %19

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !63
  br label %19

18:                                               ; preds = %4
  unreachable

19:                                               ; preds = %17, %14, %11, %8
  %20 = phi ptr [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %21 = phi ptr [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %20, ptr %0, align 8, !tbaa !92
  tail call void %21(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !93 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !96 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !97 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BM_vert_collapse_edge(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_merge_into(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !98 {
  %4 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !61
  %6 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !61
  %8 = or i8 %7, %5
  %9 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  store i8 %8, ptr %9, align 1, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_dissolve(ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

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
!38 = !{!39, !40, i64 0}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{i8 0, i8 2}
!47 = distinct !{!47, !45}
!48 = !{!49, !35, i64 48}
!49 = !{!"BMVert", !50, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!50 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = distinct !{!51, !45}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !45}
!55 = distinct !{!55, !45}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !45}
!58 = !{!39, !36, i64 28}
!59 = !{!"bmesh_decimate_unsubdivide.c:BM_iter_new"}
!60 = !{!"bmesh_decimate_unsubdivide.c:_bm_elem_flag_enable"}
!61 = !{!50, !36, i64 13}
!62 = !{!"bmesh_decimate_unsubdivide.c:BM_iter_step"}
!63 = !{!64, !35, i64 48}
!64 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!65 = !{!"bmesh_decimate_unsubdivide.c:_bm_elem_flag_test"}
!66 = !{!"bmesh_decimate_unsubdivide.c:bm_vert_dissolve_fan_test"}
!67 = distinct !{!67, !45}
!68 = !{!"bmesh_decimate_unsubdivide.c:_bm_elem_index_set"}
!69 = !{!50, !40, i64 8}
!70 = !{!"bmesh_decimate_unsubdivide.c:_bm_elem_index_get"}
!71 = !{!"bmesh_decimate_unsubdivide.c:BM_edge_other_vert"}
!72 = !{!73, !35, i64 24}
!73 = !{!"BMEdge", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !74, i64 48, !74, i64 64}
!74 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!75 = !{!73, !35, i64 32}
!76 = !{!"bmesh_decimate_unsubdivide.c:bm_vert_dissolve_fan"}
!77 = distinct !{!77, !45}
!78 = !{!79, !35, i64 32}
!79 = !{!"BMLoop", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!80 = !{!81, !40, i64 32}
!81 = !{!"BMFace", !50, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!82 = !{!79, !35, i64 64}
!83 = !{!79, !35, i64 56}
!84 = !{!79, !35, i64 24}
!85 = distinct !{!85, !45}
!86 = !{!"bmesh_decimate_unsubdivide.c:BM_iter_init"}
!87 = !{!64, !36, i64 60}
!88 = !{!64, !35, i64 40}
!89 = !{!39, !35, i64 32}
!90 = !{!39, !35, i64 40}
!91 = !{!39, !35, i64 56}
!92 = !{!36, !36, i64 0}
!93 = !{!"bmesh_decimate_unsubdivide.c:BM_edge_is_boundary"}
!94 = !{!73, !35, i64 40}
!95 = !{!79, !35, i64 40}
!96 = !{!"bmesh_decimate_unsubdivide.c:BM_edge_is_manifold"}
!97 = !{!"bmesh_decimate_unsubdivide.c:BM_edge_is_wire"}
!98 = !{!"bmesh_decimate_unsubdivide.c:_bm_elem_flag_merge_into"}
