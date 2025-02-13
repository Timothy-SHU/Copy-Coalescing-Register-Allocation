; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_construct.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.SortIntByFloat = type { float, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }

@bm_mesh_allocsize_default = external local_unnamed_addr constant %struct.BMAllocTemplate, align 4
@CD_MASK_BMESH = external local_unnamed_addr constant i64, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"BM_mesh_copy vtable\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"BM_mesh_copy etable\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"BM_mesh_copy ftable\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  store ptr %1, ptr %8, align 16, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  store ptr %2, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %8, i64 2
  store ptr %3, ptr %10, align 16, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %8, i64 3
  store ptr %4, ptr %11, align 8, !tbaa !34
  %12 = icmp eq ptr %4, null
  %13 = select i1 %12, i32 3, i32 4
  %14 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %13, ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_copy_shared(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  %7 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %11 = icmp eq ptr %2, null
  br label %12

12:                                               ; preds = %55, %4
  %13 = phi ptr [ %8, %4 ], [ %57, %55 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  %17 = icmp eq ptr %15, %13
  %18 = or i1 %16, %17
  br i1 %18, label %55, label %19

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  store ptr %13, ptr %6, align 16, !tbaa !34
  %20 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  store ptr %21, ptr %9, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  store ptr %15, ptr %5, align 16, !tbaa !34
  %28 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  br label %33

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  store ptr %32, ptr %5, align 16, !tbaa !34
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %15, %30 ], [ %29, %27 ]
  store ptr %34, ptr %10, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %33, %53
  %36 = phi i1 [ true, %33 ], [ false, %53 ]
  %37 = phi i64 [ 0, %33 ], [ 1, %53 ]
  %38 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 4
  %41 = load i8, ptr %40, align 2, !tbaa !47
  %42 = and i8 %41, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %37
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  br i1 %11, label %50, label %47

47:                                               ; preds = %44
  %48 = tail call zeroext i8 %2(ptr noundef %46, ptr noundef %3) #13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44, %47
  tail call fastcc void @bm_loop_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %46, ptr noundef nonnull %39) #14
  %51 = load i8, ptr %40, align 2, !tbaa !47
  %52 = or i8 %51, 4
  store i8 %52, ptr %40, align 2, !tbaa !47
  br label %53

53:                                               ; preds = %35, %50, %47
  br i1 %36, label %35, label %54, !llvm.loop !48

54:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %55

55:                                               ; preds = %54, %12
  %56 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = icmp eq ptr %57, %8
  br i1 %58, label %59, label %12, !llvm.loop !50

59:                                               ; preds = %55
  %60 = load ptr, ptr %7, align 8, !tbaa !38
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi ptr [ %60, %59 ], [ %67, %61 ]
  %63 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 4
  %64 = load i8, ptr %63, align 2, !tbaa !47
  %65 = and i8 %64, -5
  store i8 %65, ptr %63, align 2, !tbaa !47
  %66 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = icmp eq ptr %67, %60
  br i1 %68, label %69, label %61, !llvm.loop !51

69:                                               ; preds = %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_loop_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !52 {
  %5 = icmp eq ptr %0, %1
  %6 = icmp eq ptr %2, %3
  %7 = and i1 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %10 = load ptr, ptr %3, align 8, !tbaa !53
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %9, ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %2, align 8, !tbaa !53
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef %12, ptr noundef nonnull %3) #13
  br label %13

13:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_create_ngon(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %4 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = add nsw i32 %4, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = alloca i8, i64 %13, align 16
  %15 = icmp sgt i32 %4, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %7
  %17 = zext nneg i32 %4 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %25, %18 ]
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 4
  %23 = load i8, ptr %22, align 2, !tbaa !54
  %24 = or i8 %23, 2
  store i8 %24, ptr %22, align 2, !tbaa !54
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, %17
  br i1 %26, label %27, label %18, !llvm.loop !57

27:                                               ; preds = %18, %7
  %28 = load ptr, ptr %3, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = icmp eq ptr %32, %1
  %34 = select i1 %33, ptr %32, ptr %30
  %35 = select i1 %33, ptr %30, ptr %32
  store ptr %34, ptr %14, align 16, !tbaa !34
  %36 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %37 = zext nneg i32 %36 to i64
  br label %38

38:                                               ; preds = %61, %27
  %39 = phi i64 [ %45, %61 ], [ 1, %27 ]
  %40 = phi i64 [ %47, %61 ], [ 0, %27 ]
  %41 = phi ptr [ %54, %61 ], [ %28, %27 ]
  %42 = phi ptr [ %62, %61 ], [ %35, %27 ]
  %43 = icmp eq i64 %40, %37
  br i1 %43, label %153, label %44

44:                                               ; preds = %38
  %45 = add nuw nsw i64 %39, 1
  %46 = getelementptr inbounds ptr, ptr %14, i64 %39
  store ptr %42, ptr %46, align 8, !tbaa !34
  %47 = add nuw nsw i64 %40, 1
  %48 = getelementptr inbounds ptr, ptr %10, i64 %40
  store ptr %41, ptr %48, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 4
  %50 = load i8, ptr %49, align 2, !tbaa !60
  %51 = or i8 %50, 2
  store i8 %51, ptr %49, align 2, !tbaa !60
  br label %52

52:                                               ; preds = %56, %44
  %53 = phi ptr [ %41, %44 ], [ %54, %56 ]
  %54 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %53, ptr noundef %42) #14
  %55 = icmp eq ptr %54, %41
  br i1 %55, label %153, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.BMHeader, ptr %54, i64 0, i32 4
  %58 = load i8, ptr %57, align 2, !tbaa !54
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %52, label %61, !llvm.loop !62

61:                                               ; preds = %56
  %62 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %54, ptr noundef %42) #14
  %63 = icmp eq ptr %54, %28
  br i1 %63, label %64, label %38, !llvm.loop !63

64:                                               ; preds = %61
  %65 = trunc i64 %47 to i32
  %66 = icmp eq i32 %65, %4
  br i1 %66, label %67, label %153

67:                                               ; preds = %64
  br i1 %15, label %68, label %138

68:                                               ; preds = %67
  %69 = zext nneg i32 %4 to i64
  br label %70

70:                                               ; preds = %68, %94
  %71 = phi i64 [ 0, %68 ], [ %96, %94 ]
  %72 = phi i8 [ 0, %68 ], [ %95, %94 ]
  %73 = getelementptr inbounds ptr, ptr %10, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %74, ptr noundef %1) #14, !range !64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %70
  %78 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %74, ptr noundef %2) #14, !range !64
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %77
  %81 = add nuw nsw i64 %71, 1
  %82 = icmp eq i64 %81, %69
  %83 = and i64 %81, 4294967295
  %84 = select i1 %82, i64 0, i64 %83
  %85 = getelementptr inbounds ptr, ptr %10, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %86, ptr noundef %1) #14, !range !64
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %94, label %98

89:                                               ; preds = %70
  %90 = icmp eq i8 %72, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %74, ptr noundef %2) #14, !range !64
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %77, %80, %89, %91
  %95 = phi i8 [ %72, %89 ], [ 0, %91 ], [ 1, %80 ], [ 1, %77 ]
  %96 = add nuw nsw i64 %71, 1
  %97 = icmp eq i64 %96, %69
  br i1 %97, label %114, label %70, !llvm.loop !65

98:                                               ; preds = %91, %80
  %99 = icmp eq i32 %4, 1
  br i1 %99, label %115, label %100

100:                                              ; preds = %98
  %101 = lshr i32 %4, 1
  %102 = tail call i32 @llvm.umax.i32(i32 %101, i32 1)
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr ptr, ptr %14, i64 %8
  br label %105

105:                                              ; preds = %100, %105
  %106 = phi i64 [ 0, %100 ], [ %112, %105 ]
  %107 = getelementptr inbounds ptr, ptr %14, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  %109 = xor i64 %106, -1
  %110 = getelementptr ptr, ptr %104, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !34
  store ptr %111, ptr %107, align 8, !tbaa !34
  store ptr %108, ptr %110, align 8, !tbaa !34
  %112 = add nuw nsw i64 %106, 1
  %113 = icmp eq i64 %112, %103
  br i1 %113, label %114, label %105, !llvm.loop !66

114:                                              ; preds = %94, %105
  br i1 %15, label %115, label %138

115:                                              ; preds = %98, %114
  %116 = zext nneg i32 %4 to i64
  br label %117

117:                                              ; preds = %115, %135
  %118 = phi i64 [ 0, %115 ], [ %121, %135 ]
  %119 = getelementptr inbounds ptr, ptr %14, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !34
  %121 = add nuw nsw i64 %118, 1
  %122 = icmp eq i64 %121, %116
  %123 = and i64 %121, 4294967295
  %124 = select i1 %122, i64 0, i64 %123
  %125 = getelementptr inbounds ptr, ptr %14, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = tail call ptr @BM_edge_exists(ptr noundef %120, ptr noundef %126) #13
  %128 = getelementptr inbounds ptr, ptr %10, i64 %118
  store ptr %127, ptr %128, align 8, !tbaa !34
  %129 = icmp eq ptr %127, null
  br i1 %129, label %153, label %130

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.BMHeader, ptr %120, i64 0, i32 4
  %132 = load i8, ptr %131, align 2, !tbaa !60
  %133 = and i8 %132, 2
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %153, label %135

135:                                              ; preds = %130
  %136 = and i8 %132, -3
  store i8 %136, ptr %131, align 2, !tbaa !60
  %137 = icmp eq i64 %121, %116
  br i1 %137, label %140, label %117, !llvm.loop !67

138:                                              ; preds = %114, %67
  %139 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %10, i32 noundef %4, ptr noundef %5, i32 noundef %6) #13
  br label %179

140:                                              ; preds = %135
  %141 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %10, i32 noundef %4, ptr noundef %5, i32 noundef %6) #13
  br i1 %15, label %142, label %179

142:                                              ; preds = %140
  %143 = zext nneg i32 %4 to i64
  br label %144

144:                                              ; preds = %142, %144
  %145 = phi i64 [ 0, %142 ], [ %151, %144 ]
  %146 = getelementptr inbounds ptr, ptr %10, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  %148 = getelementptr inbounds %struct.BMHeader, ptr %147, i64 0, i32 4
  %149 = load i8, ptr %148, align 2, !tbaa !54
  %150 = and i8 %149, -3
  store i8 %150, ptr %148, align 2, !tbaa !54
  %151 = add nuw nsw i64 %145, 1
  %152 = icmp eq i64 %151, %143
  br i1 %152, label %179, label %144, !llvm.loop !68

153:                                              ; preds = %38, %52, %130, %117, %64
  %154 = phi i64 [ %45, %64 ], [ %45, %117 ], [ %45, %130 ], [ %45, %52 ], [ %39, %38 ]
  %155 = trunc i64 %154 to i32
  br i1 %15, label %156, label %158

156:                                              ; preds = %153
  %157 = zext nneg i32 %4 to i64
  br label %161

158:                                              ; preds = %161, %153
  %159 = tail call i32 @llvm.smax.i32(i32 %155, i32 1)
  %160 = zext nneg i32 %159 to i64
  br label %170

161:                                              ; preds = %156, %161
  %162 = phi i64 [ 0, %156 ], [ %168, %161 ]
  %163 = getelementptr inbounds ptr, ptr %3, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !34
  %165 = getelementptr inbounds %struct.BMHeader, ptr %164, i64 0, i32 4
  %166 = load i8, ptr %165, align 2, !tbaa !54
  %167 = and i8 %166, -3
  store i8 %167, ptr %165, align 2, !tbaa !54
  %168 = add nuw nsw i64 %162, 1
  %169 = icmp eq i64 %168, %157
  br i1 %169, label %158, label %161, !llvm.loop !69

170:                                              ; preds = %158, %170
  %171 = phi i64 [ 0, %158 ], [ %177, %170 ]
  %172 = getelementptr inbounds ptr, ptr %14, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !34
  %174 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 4
  %175 = load i8, ptr %174, align 2, !tbaa !60
  %176 = and i8 %175, -3
  store i8 %176, ptr %174, align 2, !tbaa !60
  %177 = add nuw nsw i64 %171, 1
  %178 = icmp eq i64 %177, %160
  br i1 %178, label %179, label %170, !llvm.loop !70

179:                                              ; preds = %144, %170, %138, %140
  %180 = phi ptr [ %141, %140 ], [ %139, %138 ], [ null, %170 ], [ %141, %144 ]
  ret ptr %180
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bmesh_disk_edge_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !73 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_vert_in_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_create_ngon_verts(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [2 x i32], align 8
  %9 = alloca [2 x ptr], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = sext i32 %2 to i64
  %13 = shl nsw i64 %12, 3
  %14 = alloca i8, i64 %13, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  store i64 0, ptr %8, align 8
  %15 = add nsw i32 %2, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  store ptr %18, ptr %9, align 16, !tbaa !34
  %19 = getelementptr inbounds ptr, ptr %9, i64 1
  %20 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %20, ptr %19, align 8, !tbaa !34
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %7
  %23 = icmp eq i8 %6, 0
  %24 = icmp eq i8 %5, 0
  %25 = zext nneg i32 %2 to i64
  br label %26

26:                                               ; preds = %22, %56
  %27 = phi i64 [ 0, %22 ], [ %57, %56 ]
  %28 = phi i32 [ %15, %22 ], [ %58, %56 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds ptr, ptr %1, i64 %27
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %14, i64 %27
  br i1 %23, label %37, label %35

35:                                               ; preds = %26
  %36 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %31, ptr noundef %33, ptr noundef null, i32 noundef 2) #13
  store ptr %36, ptr %34, align 8, !tbaa !34
  br label %40

37:                                               ; preds = %26
  %38 = call ptr @BM_edge_exists(ptr noundef %31, ptr noundef %33) #13
  store ptr %38, ptr %34, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %75, label %40

40:                                               ; preds = %37, %35
  %41 = phi ptr [ %38, %37 ], [ %36, %35 ]
  br i1 %24, label %56, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.BMEdge, ptr %41, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  call void @BM_edge_ordered_verts(ptr noundef nonnull %41, ptr noundef nonnull %11, ptr noundef nonnull %10) #13
  %47 = sext i32 %28 to i64
  %48 = getelementptr inbounds ptr, ptr %1, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = load ptr, ptr %11, align 8, !tbaa !34
  %51 = icmp eq ptr %49, %50
  %52 = zext i1 %51 to i64
  %53 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !76
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %56

56:                                               ; preds = %42, %46, %40
  %57 = add nuw nsw i64 %27, 1
  %58 = trunc i64 %27 to i32
  %59 = icmp eq i64 %57, %25
  br i1 %59, label %60, label %26, !llvm.loop !77

60:                                               ; preds = %56, %7
  %61 = icmp eq i8 %5, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = load i32, ptr %8, align 8, !tbaa !76
  %64 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %65 = load i32, ptr %64, align 4, !tbaa !76
  %66 = icmp uge i32 %63, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, ptr %18, ptr %20
  br label %69

69:                                               ; preds = %60, %62
  %70 = phi i64 [ %67, %62 ], [ 1, %60 ]
  %71 = phi ptr [ %68, %62 ], [ %18, %60 ]
  %72 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = call ptr @BM_face_create_ngon(ptr noundef %0, ptr noundef %71, ptr noundef %73, ptr noundef nonnull %14, i32 noundef %2, ptr noundef %3, i32 noundef %4) #14
  br label %75

75:                                               ; preds = %37, %69
  %76 = phi ptr [ %74, %69 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  ret ptr %76
}

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_ordered_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_create_ngon_vcloud(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = sext i32 %2 to i64
  %14 = shl nsw i64 %13, 3
  %15 = alloca i8, i64 %14, align 16
  %16 = alloca i8, i64 %14, align 16
  %17 = sitofp i32 %2 to float
  %18 = fdiv float 1.000000e+00, %17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call fastcc void @zero_v3(ptr noundef nonnull %6) #14
  %19 = icmp sgt i32 %2, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %5
  %21 = zext nneg i32 %2 to i64
  br label %25

22:                                               ; preds = %25
  br i1 %19, label %23, label %47

23:                                               ; preds = %22
  %24 = zext nneg i32 %2 to i64
  br label %32

25:                                               ; preds = %20, %25
  %26 = phi i64 [ 0, %20 ], [ %30, %25 ]
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %29, float noundef %18) #14
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %30, %21
  br i1 %31, label %22, label %25, !llvm.loop !78

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %45, %32 ]
  %34 = phi float [ 0.000000e+00, %23 ], [ %44, %32 ]
  %35 = phi ptr [ null, %23 ], [ %43, %32 ]
  %36 = getelementptr inbounds ptr, ptr %1, i64 %33
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2
  %39 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %38, ptr noundef nonnull %6) #14
  %40 = fcmp ogt float %39, %34
  %41 = icmp eq ptr %35, null
  %42 = select i1 %40, i1 true, i1 %41
  %43 = select i1 %42, ptr %38, ptr %35
  %44 = select i1 %42, float %39, float %34
  %45 = add nuw nsw i64 %33, 1
  %46 = icmp eq i64 %45, %24
  br i1 %46, label %48, label %32, !llvm.loop !79

47:                                               ; preds = %22, %5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %6) #14
  br label %76

48:                                               ; preds = %32
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %43, ptr noundef nonnull %6) #14
  br i1 %19, label %49, label %79

49:                                               ; preds = %48
  %50 = zext nneg i32 %2 to i64
  br label %51

51:                                               ; preds = %49, %71
  %52 = phi i64 [ 0, %49 ], [ %74, %71 ]
  %53 = phi float [ 0.000000e+00, %49 ], [ %73, %71 ]
  %54 = phi ptr [ null, %49 ], [ %72, %71 ]
  %55 = getelementptr inbounds ptr, ptr %1, i64 %52
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2
  %58 = icmp eq ptr %43, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %51
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %57, ptr noundef nonnull %6) #14
  %60 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #14
  %61 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %62 = tail call float @llvm.fabs.f32(float %61)
  %63 = fneg float %62
  %64 = tail call float @llvm.fmuladd.f32(float %63, float %60, float 1.000000e+00)
  %65 = fcmp ogt float %64, %53
  %66 = icmp eq ptr %54, null
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load ptr, ptr %55, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2
  br label %71

71:                                               ; preds = %68, %59, %51
  %72 = phi ptr [ %54, %51 ], [ %70, %68 ], [ %54, %59 ]
  %73 = phi float [ %53, %51 ], [ %64, %68 ], [ %53, %59 ]
  %74 = add nuw nsw i64 %52, 1
  %75 = icmp eq i64 %74, %50
  br i1 %75, label %76, label %51, !llvm.loop !80

76:                                               ; preds = %71, %47
  %77 = phi ptr [ null, %47 ], [ %72, %71 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %77, ptr noundef nonnull %6) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %78 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %7) #14
  br i1 %19, label %82, label %81

79:                                               ; preds = %48
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %6) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %80 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %7) #14
  br label %81

81:                                               ; preds = %79, %76
  call void @qsort(ptr noundef nonnull %15, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @BLI_sortutil_cmp_float) #13
  br label %112

82:                                               ; preds = %76
  %83 = zext nneg i32 %2 to i64
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ 0, %82 ], [ %97, %84 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %88, ptr noundef nonnull %6) #14
  call void @project_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %7) #13
  call fastcc void @sub_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #14
  %89 = call float @angle_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %11) #13
  %90 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10) #14
  %91 = fcmp olt float %90, 0.000000e+00
  %92 = fneg float %89
  %93 = select i1 %91, float %92, float %89
  %94 = getelementptr inbounds %struct.SortIntByFloat, ptr %15, i64 %85
  store float %93, ptr %94, align 8, !tbaa !81
  %95 = getelementptr inbounds %struct.SortIntByFloat, ptr %15, i64 %85, i32 1
  %96 = trunc i64 %85 to i32
  store i32 %96, ptr %95, align 4, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  %97 = add nuw nsw i64 %85, 1
  %98 = icmp eq i64 %97, %83
  br i1 %98, label %99, label %84, !llvm.loop !85

99:                                               ; preds = %84
  call void @qsort(ptr noundef nonnull %15, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @BLI_sortutil_cmp_float) #13
  br i1 %19, label %100, label %112

100:                                              ; preds = %99
  %101 = zext nneg i32 %2 to i64
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i64 [ 0, %100 ], [ %110, %102 ]
  %104 = getelementptr inbounds %struct.SortIntByFloat, ptr %15, i64 %103, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !84
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %1, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  %109 = getelementptr inbounds ptr, ptr %16, i64 %103
  store ptr %108, ptr %109, align 8, !tbaa !34
  %110 = add nuw nsw i64 %103, 1
  %111 = icmp eq i64 %110, %101
  br i1 %111, label %112, label %102, !llvm.loop !86

112:                                              ; preds = %102, %81, %99
  %113 = call ptr @BM_face_create_ngon_verts(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret ptr %113
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !87 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !88
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !89 {
  %4 = load float, ptr %1, align 4, !tbaa !88
  %5 = load float, ptr %0, align 4, !tbaa !88
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !88
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !88
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !88
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !88
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !90 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !91 {
  %4 = load float, ptr %1, align 4, !tbaa !88
  %5 = load float, ptr %2, align 4, !tbaa !88
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !88
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !88
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !88
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !88
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !92 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !93 {
  %3 = load float, ptr %0, align 4, !tbaa !88
  %4 = load float, ptr %1, align 4, !tbaa !88
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !88
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !88
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !94 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !88
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !88
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !88
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !88
  %15 = load float, ptr %8, align 4, !tbaa !88
  %16 = load float, ptr %2, align 4, !tbaa !88
  %17 = load float, ptr %1, align 4, !tbaa !88
  %18 = load float, ptr %6, align 4, !tbaa !88
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !88
  %23 = load float, ptr %1, align 4, !tbaa !88
  %24 = load float, ptr %10, align 4, !tbaa !88
  %25 = load float, ptr %4, align 4, !tbaa !88
  %26 = load float, ptr %2, align 4, !tbaa !88
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !88
  ret void
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !95 {
  %3 = load float, ptr %1, align 4, !tbaa !88
  %4 = load float, ptr %0, align 4, !tbaa !88
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !88
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !88
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !88
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !88
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !88
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !88
  ret void
}

; Function Attrs: optsize
declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BLI_sortutil_cmp_float(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_elem_attrs_copy_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = and i8 %4, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %2) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @BM_elem_select_set(ptr noundef %1, ptr noundef %3, i8 noundef zeroext 1) #13
  br label %12

12:                                               ; preds = %8, %11, %5
  switch i8 %4, label %17 [
    i8 0, label %13
    i8 -1, label %26
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !96
  %16 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 3
  store i8 %15, ptr %16, align 1, !tbaa !96
  br label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !96
  %20 = and i8 %19, %4
  %21 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !96
  %23 = xor i8 %4, -1
  %24 = and i8 %22, %23
  %25 = or disjoint i8 %24, %20
  store i8 %25, ptr %18, align 1, !tbaa !96
  br label %26

26:                                               ; preds = %12, %17, %13
  %27 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 2
  %28 = load i8, ptr %27, align 4, !tbaa !97
  switch i8 %28, label %33 [
    i8 1, label %29
    i8 2, label %30
    i8 4, label %31
    i8 8, label %32
  ]

29:                                               ; preds = %26
  tail call fastcc void @bm_vert_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #14
  br label %33

30:                                               ; preds = %26
  tail call fastcc void @bm_edge_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #14
  br label %33

31:                                               ; preds = %26
  tail call fastcc void @bm_loop_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #14
  br label %33

32:                                               ; preds = %26
  tail call fastcc void @bm_face_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #14
  br label %33

33:                                               ; preds = %26, %32, %31, %30, %29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !98 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !96
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_vert_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !99 {
  %5 = icmp eq ptr %0, %1
  %6 = icmp eq ptr %2, %3
  %7 = and i1 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3
  %10 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  %11 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %12 = load ptr, ptr %3, align 8, !tbaa !100
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %11, ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %14 = load ptr, ptr %2, align 8, !tbaa !100
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef %14, ptr noundef nonnull %3) #13
  br label %15

15:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edge_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !101 {
  %5 = icmp eq ptr %0, %1
  %6 = icmp eq ptr %2, %3
  %7 = and i1 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 25
  %10 = load ptr, ptr %3, align 8, !tbaa !102
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %9, ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %2, align 8, !tbaa !102
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef %12, ptr noundef nonnull %3) #13
  br label %13

13:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !103 {
  %5 = icmp eq ptr %0, %1
  %6 = icmp eq ptr %2, %3
  %7 = and i1 %5, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4
  %10 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  %11 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 27
  %12 = load ptr, ptr %3, align 8, !tbaa !104
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %11, ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %14 = load ptr, ptr %2, align 8, !tbaa !104
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef %14, ptr noundef nonnull %3) #13
  %15 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 5
  store i16 %16, ptr %17, align 8, !tbaa !105
  br label %18

18:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @BM_elem_attrs_copy_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_elem_select_copy(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !96
  %7 = and i8 %6, 1
  %8 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !96
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %7, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @BM_elem_select_set(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %7) #13
  br label %13

13:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_copy_init_customdata(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @bm_mesh_allocsize_default, ptr %2
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %8 = load i64, ptr @CD_MASK_BMESH, align 8, !tbaa !106
  tail call void @CustomData_copy(ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef %8, i32 noundef 1, i32 noundef 0) #13
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 25
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %10, i64 noundef %8, i32 noundef 1, i32 noundef 0) #13
  %11 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  tail call void @CustomData_copy(ptr noundef nonnull %11, ptr noundef nonnull %12, i64 noundef %8, i32 noundef 1, i32 noundef 0) #13
  %13 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 27
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  tail call void @CustomData_copy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %8, i32 noundef 1, i32 noundef 0) #13
  %15 = load i32, ptr %5, align 4, !tbaa !108
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %7, i32 noundef %15, i8 noundef zeroext 1) #13
  %16 = getelementptr inbounds %struct.BMAllocTemplate, ptr %5, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !110
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %10, i32 noundef %17, i8 noundef zeroext 2) #13
  %18 = getelementptr inbounds %struct.BMAllocTemplate, ptr %5, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !111
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %12, i32 noundef %19, i8 noundef zeroext 4) #13
  %20 = getelementptr inbounds %struct.BMAllocTemplate, ptr %5, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !112
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %14, i32 noundef %21, i8 noundef zeroext 8) #13
  ret void
}

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_init_pool(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BM_mesh_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMAllocTemplate, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %6 = load <4 x i32>, ptr %0, align 8, !tbaa !76
  store <4 x i32> %6, ptr %3, align 16, !tbaa !76
  %7 = call ptr @BM_mesh_create(ptr noundef nonnull %3) #13
  call void @BM_mesh_copy_init_customdata(ptr noundef %7, ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %9 = load i32, ptr %0, align 8, !tbaa !113
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = call ptr %8(i64 noundef %11, ptr noundef nonnull @.str) #13
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %14 = load i32, ptr %4, align 4, !tbaa !117
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = call ptr %13(i64 noundef %16, ptr noundef nonnull @.str.1) #13
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %19 = load i32, ptr %5, align 4, !tbaa !118
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.2) #13
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %1, %25
  %26 = phi i64 [ %36, %25 ], [ 0, %1 ]
  %27 = phi ptr [ %35, %25 ], [ %23, %1 ]
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  %29 = call ptr @BM_vert_create(ptr noundef %7, ptr noundef nonnull %28, ptr noundef null, i32 noundef 4) #13
  call void @BM_elem_attrs_copy_ex(ptr noundef nonnull %0, ptr noundef %7, ptr noundef nonnull %27, ptr noundef %29, i8 noundef zeroext -1) #14
  %30 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !119
  %32 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  store i8 %31, ptr %32, align 1, !tbaa !119
  %33 = getelementptr inbounds ptr, ptr %12, i64 %26
  store ptr %29, ptr %33, align 8, !tbaa !34
  %34 = trunc i64 %26 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %27, i32 noundef %34) #14
  call fastcc void @_bm_elem_index_set(ptr noundef %29, i32 noundef %34) #14
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %36 = add nuw i64 %26, 1
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %25, !llvm.loop !120

38:                                               ; preds = %25, %1
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %40 = load i8, ptr %39, align 4, !tbaa !121
  %41 = and i8 %40, -2
  store i8 %41, ptr %39, align 4, !tbaa !121
  %42 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 7
  %43 = load i8, ptr %42, align 4, !tbaa !121
  %44 = and i8 %43, -2
  store i8 %44, ptr %42, align 4, !tbaa !121
  %45 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 2) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %71, label %47

47:                                               ; preds = %38, %47
  %48 = phi i64 [ %69, %47 ], [ 0, %38 ]
  %49 = phi ptr [ %68, %47 ], [ %45, %38 ]
  %50 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !58
  %52 = call fastcc i32 @_bm_elem_index_get(ptr noundef %51) #14
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %12, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  %58 = call fastcc i32 @_bm_elem_index_get(ptr noundef %57) #14
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %12, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = call ptr @BM_edge_create(ptr noundef %7, ptr noundef %55, ptr noundef %61, ptr noundef nonnull %49, i32 noundef 4) #13
  call void @BM_elem_attrs_copy_ex(ptr noundef nonnull %0, ptr noundef %7, ptr noundef nonnull %49, ptr noundef %62, i8 noundef zeroext -1) #14
  %63 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 3
  %64 = load i8, ptr %63, align 1, !tbaa !122
  %65 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 3
  store i8 %64, ptr %65, align 1, !tbaa !122
  %66 = getelementptr inbounds ptr, ptr %17, i64 %48
  store ptr %62, ptr %66, align 8, !tbaa !34
  %67 = trunc i64 %48 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %49, i32 noundef %67) #14
  call fastcc void @_bm_elem_index_set(ptr noundef %62, i32 noundef %67) #14
  %68 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %69 = add nuw i64 %48, 1
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %47, !llvm.loop !123

71:                                               ; preds = %47, %38
  %72 = load i8, ptr %39, align 4, !tbaa !121
  %73 = and i8 %72, -3
  store i8 %73, ptr %39, align 4, !tbaa !121
  %74 = load i8, ptr %42, align 4, !tbaa !121
  %75 = and i8 %74, -3
  store i8 %75, ptr %42, align 4, !tbaa !121
  %76 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 3) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %80 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 33
  br label %81

81:                                               ; preds = %78, %90
  %82 = phi i64 [ 0, %78 ], [ %92, %90 ]
  %83 = phi ptr [ %76, %78 ], [ %91, %90 ]
  %84 = trunc i64 %82 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %83, i32 noundef %84) #14
  %85 = call fastcc ptr @bm_mesh_copy_new_face(ptr noundef %7, ptr noundef nonnull %0, ptr noundef %12, ptr noundef %17, ptr noundef nonnull %83) #14
  %86 = getelementptr inbounds ptr, ptr %22, i64 %82
  store ptr %85, ptr %86, align 8, !tbaa !34
  %87 = load ptr, ptr %79, align 8, !tbaa !124
  %88 = icmp eq ptr %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store ptr %85, ptr %80, align 8, !tbaa !124
  br label %90

90:                                               ; preds = %81, %89
  %91 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %92 = add nuw i64 %82, 1
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %81, !llvm.loop !125

94:                                               ; preds = %90, %71
  %95 = load i8, ptr %39, align 4, !tbaa !121
  %96 = and i8 %95, -9
  store i8 %96, ptr %39, align 4, !tbaa !121
  %97 = load i8, ptr %42, align 4, !tbaa !121
  %98 = and i8 %97, -9
  store i8 %98, ptr %42, align 4, !tbaa !121
  %99 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %100 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 4
  %101 = load <2 x i32>, ptr %99, align 8, !tbaa !76
  store <2 x i32> %101, ptr %100, align 8, !tbaa !76
  %102 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !126
  %104 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 6
  store i32 %103, ptr %104, align 8, !tbaa !126
  %105 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %129, label %108

108:                                              ; preds = %94, %126
  %109 = phi ptr [ %127, %126 ], [ %106, %94 ]
  %110 = getelementptr inbounds %struct.BMEditSelection, ptr %109, i64 0, i32 3
  %111 = load i8, ptr %110, align 8, !tbaa !127
  switch i8 %111, label %126 [
    i8 1, label %114
    i8 2, label %112
    i8 8, label %113
  ]

112:                                              ; preds = %108
  br label %114

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %108, %113, %112
  %115 = phi ptr [ %22, %113 ], [ %17, %112 ], [ %12, %108 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.BMEditSelection, ptr %109, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !129
  %120 = call fastcc i32 @_bm_elem_index_get(ptr noundef %119) #14
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %115, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  call void @_bm_select_history_store(ptr noundef %7, ptr noundef nonnull %123) #13
  br label %126

126:                                              ; preds = %108, %117, %125, %114
  %127 = load ptr, ptr %109, align 8, !tbaa !34
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %108, !llvm.loop !130

129:                                              ; preds = %126, %94
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %130(ptr noundef %17) #13
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %131(ptr noundef %12) #13
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %132(ptr noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !131 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #14
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !132 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !133
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !133
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_mesh_copy_new_face(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !138 {
  %6 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !139
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = alloca i8, i64 %9, align 16
  %13 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  br label %15

15:                                               ; preds = %15, %5
  %16 = phi i64 [ %33, %15 ], [ 0, %5 ]
  %17 = phi ptr [ %35, %15 ], [ %14, %5 ]
  %18 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %17, ptr %18, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %20) #14
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %11, i64 %16
  store ptr %24, ptr %25, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !140
  %28 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %27) #14
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %3, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds ptr, ptr %12, i64 %16
  store ptr %31, ptr %32, align 8, !tbaa !34
  %33 = add nuw i64 %16, 1
  %34 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = icmp eq ptr %35, %14
  br i1 %36, label %37, label %15, !llvm.loop !141

37:                                               ; preds = %15
  %38 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %7, ptr noundef null, i32 noundef 4) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !118
  %43 = add nsw i32 %42, -1
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %38, i32 noundef %43) #14
  call void @BM_elem_attrs_copy_ex(ptr noundef %1, ptr noundef %0, ptr noundef %4, ptr noundef nonnull %38, i8 noundef zeroext -1) #14
  %44 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !142
  %46 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 3
  store i8 %45, ptr %46, align 1, !tbaa !142
  %47 = getelementptr inbounds %struct.BMFace, ptr %38, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !38
  br label %49

49:                                               ; preds = %49, %40
  %50 = phi i64 [ %54, %49 ], [ 0, %40 ]
  %51 = phi ptr [ %56, %49 ], [ %48, %40 ]
  %52 = getelementptr inbounds ptr, ptr %10, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  call void @BM_elem_attrs_copy(ptr noundef %1, ptr noundef %0, ptr noundef %53, ptr noundef %51) #14
  %54 = add nuw i64 %50, 1
  %55 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !45
  %57 = icmp eq ptr %56, %48
  br i1 %57, label %58, label %49, !llvm.loop !143

58:                                               ; preds = %49, %37
  ret ptr %38
}

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext %0) local_unnamed_addr #9 {
  %2 = and i8 %0, 1
  %3 = lshr i8 %0, 3
  %4 = and i8 %3, 2
  %5 = or disjoint i8 %4, %2
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext %0) local_unnamed_addr #9 {
  %2 = sext i16 %0 to i32
  %3 = and i32 %2, 5
  %4 = shl nsw i32 %2, 4
  %5 = and i32 %4, 32
  %6 = or disjoint i32 %5, %3
  %7 = lshr i32 %2, 6
  %8 = and i32 %7, 8
  %9 = or disjoint i32 %6, %8
  %10 = lshr i32 %2, 3
  %11 = and i32 %10, 2
  %12 = or disjoint i32 %9, %11
  %13 = trunc i32 %12 to i8
  %14 = xor i8 %13, 8
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext %0) local_unnamed_addr #9 {
  %2 = lshr i8 %0, 1
  %3 = and i8 %2, 1
  %4 = shl i8 %0, 3
  %5 = and i8 %4, 8
  %6 = or disjoint i8 %3, %5
  %7 = lshr i8 %0, 3
  %8 = and i8 %7, 2
  %9 = or disjoint i8 %6, %8
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BM_vert_flag_to_mflag(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !119
  %4 = and i8 %3, 1
  %5 = shl i8 %3, 3
  %6 = and i8 %5, 16
  %7 = or disjoint i8 %6, %4
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local signext i16 @BM_edge_flag_to_mflag(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !122
  %4 = zext i8 %3 to i16
  %5 = and i16 %4, 5
  %6 = lshr i16 %4, 4
  %7 = and i16 %6, 2
  %8 = or disjoint i16 %7, %5
  %9 = shl nuw nsw i16 %4, 6
  %10 = and i16 %9, 512
  %11 = or disjoint i16 %8, %10
  %12 = shl nuw nsw i16 %4, 3
  %13 = and i16 %12, 16
  %14 = or disjoint i16 %11, %13
  %15 = tail call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %0) #14, !range !64
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i16 0, i16 128
  %18 = or disjoint i16 %14, %17
  %19 = xor i16 %18, 544
  ret i16 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !144 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BM_face_flag_to_mflag(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !142
  %4 = shl i8 %3, 1
  %5 = and i8 %4, 2
  %6 = lshr i8 %3, 3
  %7 = and i8 %6, 1
  %8 = or disjoint i8 %5, %7
  %9 = shl i8 %3, 3
  %10 = and i8 %9, 16
  %11 = or disjoint i8 %8, %10
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !145 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !146 {
  %4 = load float, ptr %1, align 4, !tbaa !88
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !88
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !88
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !88
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !88
  ret void
}

; Function Attrs: optsize
declare void @CustomData_bmesh_free_block_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !147 {
  %3 = load float, ptr %1, align 4, !tbaa !88
  store float %3, ptr %0, align 4, !tbaa !88
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !88
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !148 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !149
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !135
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  store ptr %16, ptr %0, align 8, !tbaa !151
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }

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
!38 = !{!39, !35, i64 24}
!39 = !{!"BMFace", !40, i64 0, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 36, !42, i64 48}
!40 = !{!"BMHeader", !35, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!44, !35, i64 40}
!44 = !{!"BMLoop", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!45 = !{!44, !35, i64 56}
!46 = !{!44, !35, i64 16}
!47 = !{!44, !36, i64 14}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = !{!"bmesh_construct.c:bm_loop_attrs_copy"}
!53 = !{!44, !35, i64 0}
!54 = !{!55, !36, i64 14}
!55 = !{!"BMEdge", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !56, i64 48, !56, i64 64}
!56 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!57 = distinct !{!57, !49}
!58 = !{!55, !35, i64 24}
!59 = !{!55, !35, i64 32}
!60 = !{!61, !36, i64 14}
!61 = !{!"BMVert", !40, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!62 = distinct !{!62, !49}
!63 = distinct !{!63, !49}
!64 = !{i8 0, i8 2}
!65 = distinct !{!65, !49}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !49}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = !{!"bmesh_construct.c:bmesh_disk_edge_next"}
!72 = !{!55, !35, i64 48}
!73 = !{!"bmesh_construct.c:BM_edge_other_vert"}
!74 = !{!"bmesh_construct.c:BM_vert_in_edge"}
!75 = !{!55, !35, i64 40}
!76 = !{!41, !41, i64 0}
!77 = distinct !{!77, !49}
!78 = distinct !{!78, !49}
!79 = distinct !{!79, !49}
!80 = distinct !{!80, !49}
!81 = !{!82, !83, i64 0}
!82 = !{!"SortIntByFloat", !83, i64 0, !41, i64 4}
!83 = !{!"float", !36, i64 0}
!84 = !{!82, !41, i64 4}
!85 = distinct !{!85, !49}
!86 = distinct !{!86, !49}
!87 = !{!"bmesh_construct.c:zero_v3"}
!88 = !{!83, !83, i64 0}
!89 = !{!"bmesh_construct.c:madd_v3_v3fl"}
!90 = !{!"bmesh_construct.c:len_squared_v3v3"}
!91 = !{!"bmesh_construct.c:sub_v3_v3v3"}
!92 = !{!"bmesh_construct.c:normalize_v3"}
!93 = !{!"bmesh_construct.c:dot_v3v3"}
!94 = !{!"bmesh_construct.c:cross_v3_v3v3"}
!95 = !{!"bmesh_construct.c:sub_v3_v3"}
!96 = !{!40, !36, i64 13}
!97 = !{!40, !36, i64 12}
!98 = !{!"bmesh_construct.c:_bm_elem_flag_test"}
!99 = !{!"bmesh_construct.c:bm_vert_attrs_copy"}
!100 = !{!61, !35, i64 0}
!101 = !{!"bmesh_construct.c:bm_edge_attrs_copy"}
!102 = !{!55, !35, i64 0}
!103 = !{!"bmesh_construct.c:bm_face_attrs_copy"}
!104 = !{!39, !35, i64 0}
!105 = !{!39, !42, i64 48}
!106 = !{!107, !107, i64 0}
!107 = !{!"long", !36, i64 0}
!108 = !{!109, !41, i64 0}
!109 = !{!"BMAllocTemplate", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!110 = !{!109, !41, i64 4}
!111 = !{!109, !41, i64 8}
!112 = !{!109, !41, i64 12}
!113 = !{!114, !41, i64 0}
!114 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !115, i64 144, !115, i64 344, !115, i64 544, !115, i64 744, !42, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !116, i64 960, !35, i64 976, !116, i64 984, !35, i64 1000}
!115 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!116 = !{!"ListBase", !35, i64 0, !35, i64 8}
!117 = !{!114, !41, i64 4}
!118 = !{!114, !41, i64 12}
!119 = !{!61, !36, i64 13}
!120 = distinct !{!120, !49}
!121 = !{!114, !36, i64 28}
!122 = !{!55, !36, i64 13}
!123 = distinct !{!123, !49}
!124 = !{!114, !35, i64 976}
!125 = distinct !{!125, !49}
!126 = !{!114, !41, i64 24}
!127 = !{!128, !36, i64 24}
!128 = !{!"BMEditSelection", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24}
!129 = !{!128, !35, i64 16}
!130 = distinct !{!130, !49}
!131 = !{!"bmesh_construct.c:BM_iter_new"}
!132 = !{!"bmesh_construct.c:_bm_elem_index_set"}
!133 = !{!40, !41, i64 8}
!134 = !{!"bmesh_construct.c:BM_iter_step"}
!135 = !{!136, !35, i64 48}
!136 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !41, i64 56, !36, i64 60}
!137 = !{!"bmesh_construct.c:_bm_elem_index_get"}
!138 = !{!"bmesh_construct.c:bm_mesh_copy_new_face"}
!139 = !{!39, !41, i64 32}
!140 = !{!44, !35, i64 24}
!141 = distinct !{!141, !49}
!142 = !{!39, !36, i64 13}
!143 = distinct !{!143, !49}
!144 = !{!"bmesh_construct.c:BM_edge_is_wire"}
!145 = !{!"bmesh_construct.c:normalize_v3_v3"}
!146 = !{!"bmesh_construct.c:mul_v3_v3fl"}
!147 = !{!"bmesh_construct.c:copy_v3_v3"}
!148 = !{!"bmesh_construct.c:BM_iter_init"}
!149 = !{!136, !36, i64 60}
!150 = !{!136, !35, i64 40}
!151 = !{!36, !36, i64 0}
