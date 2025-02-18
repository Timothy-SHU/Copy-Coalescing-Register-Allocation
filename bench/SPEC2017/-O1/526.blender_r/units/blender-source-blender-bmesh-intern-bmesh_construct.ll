; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_construct.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  store ptr %1, ptr %8, align 16, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  store ptr %2, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %8, i64 2
  store ptr %3, ptr %10, align 16, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %8, i64 3
  store ptr %4, ptr %11, align 8, !tbaa !34
  %12 = icmp eq ptr %4, null
  %13 = select i1 %12, i32 3, i32 4
  %14 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %13, ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_copy_shared(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  %7 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %11 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %12 = icmp eq ptr %2, null
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %14

14:                                               ; preds = %64, %4
  %15 = phi ptr [ %8, %4 ], [ %66, %64 ]
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %15
  %20 = or i1 %18, %19
  br i1 %20, label %64, label %21

21:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store ptr %15, ptr %6, align 16, !tbaa !34
  %22 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  store ptr %23, ptr %9, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  store ptr %17, ptr %5, align 16, !tbaa !34
  %30 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  store ptr %31, ptr %11, align 8, !tbaa !34
  br label %35

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  store ptr %34, ptr %5, align 16, !tbaa !34
  store ptr %17, ptr %10, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %60
  %37 = phi i64 [ %61, %60 ], [ 0, %35 ]
  %38 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 4
  %41 = load i8, ptr %40, align 2, !tbaa !47
  %42 = and i8 %41, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %36
  br i1 %12, label %50, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %37
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = tail call zeroext i8 %2(ptr noundef %47, ptr noundef %3) #10
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45, %44
  %51 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %37
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, %39
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %39, align 8, !tbaa !48
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %13, ptr noundef %55) #10
  %56 = load ptr, ptr %52, align 8, !tbaa !48
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %56, ptr noundef nonnull %39) #10
  br label %57

57:                                               ; preds = %50, %54
  %58 = load i8, ptr %40, align 2, !tbaa !47
  %59 = or i8 %58, 4
  store i8 %59, ptr %40, align 2, !tbaa !47
  br label %60

60:                                               ; preds = %36, %57, %45
  %61 = add nuw nsw i64 %37, 1
  %62 = icmp eq i64 %37, 0
  br i1 %62, label %36, label %63, !llvm.loop !49

63:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %64

64:                                               ; preds = %63, %14
  %65 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !45
  %67 = icmp eq ptr %66, %8
  br i1 %67, label %68, label %14, !llvm.loop !52

68:                                               ; preds = %64
  %69 = load ptr, ptr %7, align 8, !tbaa !38
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi ptr [ %69, %68 ], [ %76, %70 ]
  %72 = getelementptr inbounds %struct.BMHeader, ptr %71, i64 0, i32 4
  %73 = load i8, ptr %72, align 2, !tbaa !47
  %74 = and i8 %73, -5
  store i8 %74, ptr %72, align 2, !tbaa !47
  %75 = getelementptr inbounds %struct.BMLoop, ptr %71, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !45
  %77 = icmp eq ptr %76, %69
  br i1 %77, label %78, label %70, !llvm.loop !53

78:                                               ; preds = %70
  ret void
}

; Function Attrs: nounwind uwtable
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
  br label %36

36:                                               ; preds = %82, %27
  %37 = phi i32 [ 0, %27 ], [ %77, %82 ]
  %38 = phi i32 [ 1, %27 ], [ %78, %82 ]
  %39 = phi ptr [ %28, %27 ], [ %79, %82 ]
  %40 = phi ptr [ %35, %27 ], [ %80, %82 ]
  %41 = icmp sgt i32 %38, %4
  br i1 %41, label %76, label %42

42:                                               ; preds = %36
  %43 = add nsw i32 %38, 1
  %44 = sext i32 %38 to i64
  %45 = getelementptr inbounds ptr, ptr %14, i64 %44
  store ptr %40, ptr %45, align 8, !tbaa !34
  %46 = add nsw i32 %37, 1
  %47 = sext i32 %37 to i64
  %48 = getelementptr inbounds ptr, ptr %10, i64 %47
  store ptr %39, ptr %48, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 4
  %50 = load i8, ptr %49, align 2, !tbaa !60
  %51 = or i8 %50, 2
  store i8 %51, ptr %49, align 2, !tbaa !60
  br label %52

52:                                               ; preds = %62, %42
  %53 = phi ptr [ %39, %42 ], [ %60, %62 ]
  %54 = getelementptr inbounds %struct.BMEdge, ptr %53, i64 0, i32 5
  %55 = getelementptr inbounds %struct.BMEdge, ptr %53, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = icmp eq ptr %56, %40
  %58 = zext i1 %57 to i64
  %59 = getelementptr inbounds %struct.BMDiskLink, ptr %54, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  %61 = icmp eq ptr %60, %39
  br i1 %61, label %76, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.BMHeader, ptr %60, i64 0, i32 4
  %64 = load i8, ptr %63, align 2, !tbaa !54
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %52, label %67, !llvm.loop !63

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !58
  %70 = icmp eq ptr %69, %40
  %71 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !59
  br i1 %70, label %76, label %73

73:                                               ; preds = %67
  %74 = icmp eq ptr %72, %40
  %75 = select i1 %74, ptr %69, ptr null
  br label %76

76:                                               ; preds = %52, %67, %73, %36
  %77 = phi i32 [ %37, %36 ], [ %46, %73 ], [ %46, %67 ], [ %46, %52 ]
  %78 = phi i32 [ %38, %36 ], [ %43, %73 ], [ %43, %67 ], [ %43, %52 ]
  %79 = phi ptr [ %39, %36 ], [ %60, %73 ], [ %60, %67 ], [ %60, %52 ]
  %80 = phi ptr [ %40, %36 ], [ %75, %73 ], [ %72, %67 ], [ %40, %52 ]
  %81 = phi i32 [ 7, %36 ], [ 0, %73 ], [ 0, %67 ], [ 7, %52 ]
  switch i32 %81, label %235 [
    i32 0, label %82
    i32 7, label %209
  ]

82:                                               ; preds = %76
  %83 = icmp eq ptr %79, %28
  br i1 %83, label %84, label %36, !llvm.loop !64

84:                                               ; preds = %82
  %85 = icmp eq i32 %77, %4
  br i1 %85, label %86, label %209

86:                                               ; preds = %84
  %87 = icmp sgt i32 %4, 0
  br i1 %87, label %88, label %168

88:                                               ; preds = %86
  %89 = zext nneg i32 %4 to i64
  %90 = zext nneg i32 %4 to i64
  br label %91

91:                                               ; preds = %88, %148
  %92 = phi i64 [ 0, %88 ], [ %149, %148 ]
  %93 = phi i8 [ 0, %88 ], [ %136, %148 ]
  %94 = getelementptr inbounds ptr, ptr %10, i64 %92
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = getelementptr inbounds %struct.BMEdge, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !58
  %98 = icmp eq ptr %97, %1
  br i1 %98, label %104, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.BMEdge, ptr %95, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !59
  %102 = icmp eq ptr %101, %1
  %103 = zext i1 %102 to i8
  br label %104

104:                                              ; preds = %91, %99
  %105 = phi i8 [ 1, %91 ], [ %103, %99 ]
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %135, label %107

107:                                              ; preds = %104
  %108 = icmp eq ptr %97, %2
  br i1 %108, label %114, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.BMEdge, ptr %95, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !59
  %112 = icmp eq ptr %111, %2
  %113 = zext i1 %112 to i8
  br label %114

114:                                              ; preds = %107, %109
  %115 = phi i8 [ 1, %107 ], [ %113, %109 ]
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %114
  %118 = add nuw nsw i64 %92, 1
  %119 = icmp eq i64 %118, %89
  %120 = and i64 %118, 4294967295
  %121 = select i1 %119, i64 0, i64 %120
  %122 = getelementptr inbounds ptr, ptr %10, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = getelementptr inbounds %struct.BMEdge, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !58
  %126 = icmp eq ptr %125, %1
  br i1 %126, label %132, label %127

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.BMEdge, ptr %123, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !59
  %130 = icmp eq ptr %129, %1
  %131 = zext i1 %130 to i8
  br label %132

132:                                              ; preds = %117, %127
  %133 = phi i8 [ 1, %117 ], [ %131, %127 ]
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %114, %132, %104
  %136 = phi i8 [ %93, %104 ], [ 1, %132 ], [ 1, %114 ]
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = icmp eq ptr %97, %2
  br i1 %139, label %145, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.BMEdge, ptr %95, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !59
  %143 = icmp eq ptr %142, %2
  %144 = zext i1 %143 to i8
  br label %145

145:                                              ; preds = %138, %140
  %146 = phi i8 [ 1, %138 ], [ %144, %140 ]
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %135, %145
  %149 = add nuw nsw i64 %92, 1
  %150 = icmp eq i64 %149, %90
  br i1 %150, label %168, label %91, !llvm.loop !65

151:                                              ; preds = %145, %132
  %152 = icmp eq i32 %4, 1
  br i1 %152, label %168, label %153

153:                                              ; preds = %151
  %154 = lshr i32 %4, 1
  %155 = zext nneg i32 %4 to i64
  %156 = tail call i32 @llvm.umax.i32(i32 %154, i32 1)
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr ptr, ptr %14, i64 %155
  br label %159

159:                                              ; preds = %153, %159
  %160 = phi i64 [ 0, %153 ], [ %166, %159 ]
  %161 = getelementptr inbounds ptr, ptr %14, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !34
  %163 = xor i64 %160, -1
  %164 = getelementptr ptr, ptr %158, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !34
  store ptr %165, ptr %161, align 8, !tbaa !34
  store ptr %162, ptr %164, align 8, !tbaa !34
  %166 = add nuw nsw i64 %160, 1
  %167 = icmp eq i64 %166, %157
  br i1 %167, label %168, label %159, !llvm.loop !66

168:                                              ; preds = %148, %159, %86, %151
  %169 = icmp sgt i32 %4, 0
  br i1 %169, label %170, label %195

170:                                              ; preds = %168
  %171 = zext nneg i32 %4 to i64
  %172 = zext nneg i32 %4 to i64
  br label %173

173:                                              ; preds = %170, %192
  %174 = phi i64 [ 0, %170 ], [ %177, %192 ]
  %175 = getelementptr inbounds ptr, ptr %14, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !34
  %177 = add nuw nsw i64 %174, 1
  %178 = icmp eq i64 %177, %171
  %179 = and i64 %177, 4294967295
  %180 = select i1 %178, i64 0, i64 %179
  %181 = getelementptr inbounds ptr, ptr %14, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !34
  %183 = tail call ptr @BM_edge_exists(ptr noundef %176, ptr noundef %182) #10
  %184 = getelementptr inbounds ptr, ptr %10, i64 %174
  store ptr %183, ptr %184, align 8, !tbaa !34
  %185 = icmp eq ptr %183, null
  br i1 %185, label %209, label %186

186:                                              ; preds = %173
  %187 = load ptr, ptr %175, align 8, !tbaa !34
  %188 = getelementptr inbounds %struct.BMHeader, ptr %187, i64 0, i32 4
  %189 = load i8, ptr %188, align 2, !tbaa !60
  %190 = and i8 %189, 2
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %186
  %193 = and i8 %189, -3
  store i8 %193, ptr %188, align 2, !tbaa !60
  %194 = icmp eq i64 %177, %172
  br i1 %194, label %195, label %173, !llvm.loop !67

195:                                              ; preds = %192, %168
  %196 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %10, i32 noundef %4, ptr noundef %5, i32 noundef %6) #10
  %197 = icmp sgt i32 %4, 0
  br i1 %197, label %198, label %235

198:                                              ; preds = %195
  %199 = zext nneg i32 %4 to i64
  br label %200

200:                                              ; preds = %198, %200
  %201 = phi i64 [ 0, %198 ], [ %207, %200 ]
  %202 = getelementptr inbounds ptr, ptr %10, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !34
  %204 = getelementptr inbounds %struct.BMHeader, ptr %203, i64 0, i32 4
  %205 = load i8, ptr %204, align 2, !tbaa !54
  %206 = and i8 %205, -3
  store i8 %206, ptr %204, align 2, !tbaa !54
  %207 = add nuw nsw i64 %201, 1
  %208 = icmp eq i64 %207, %199
  br i1 %208, label %235, label %200, !llvm.loop !68

209:                                              ; preds = %76, %186, %173, %84
  %210 = icmp sgt i32 %4, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %209
  %212 = zext nneg i32 %4 to i64
  br label %217

213:                                              ; preds = %217, %209
  %214 = icmp sgt i32 %78, 0
  br i1 %214, label %215, label %235

215:                                              ; preds = %213
  %216 = zext nneg i32 %78 to i64
  br label %226

217:                                              ; preds = %211, %217
  %218 = phi i64 [ 0, %211 ], [ %224, %217 ]
  %219 = getelementptr inbounds ptr, ptr %3, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !34
  %221 = getelementptr inbounds %struct.BMHeader, ptr %220, i64 0, i32 4
  %222 = load i8, ptr %221, align 2, !tbaa !54
  %223 = and i8 %222, -3
  store i8 %223, ptr %221, align 2, !tbaa !54
  %224 = add nuw nsw i64 %218, 1
  %225 = icmp eq i64 %224, %212
  br i1 %225, label %213, label %217, !llvm.loop !69

226:                                              ; preds = %215, %226
  %227 = phi i64 [ 0, %215 ], [ %233, %226 ]
  %228 = getelementptr inbounds ptr, ptr %14, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !34
  %230 = getelementptr inbounds %struct.BMHeader, ptr %229, i64 0, i32 4
  %231 = load i8, ptr %230, align 2, !tbaa !60
  %232 = and i8 %231, -3
  store i8 %232, ptr %230, align 2, !tbaa !60
  %233 = add nuw nsw i64 %227, 1
  %234 = icmp eq i64 %233, %216
  br i1 %234, label %235, label %226, !llvm.loop !70

235:                                              ; preds = %76, %200, %226, %195, %213
  %236 = phi ptr [ null, %213 ], [ %196, %195 ], [ null, %226 ], [ %196, %200 ], [ undef, %76 ]
  ret ptr %236
}

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_create_ngon_verts(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [2 x i32], align 8
  %9 = alloca [2 x ptr], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = sext i32 %2 to i64
  %13 = shl nsw i64 %12, 3
  %14 = alloca i8, i64 %13, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8
  %15 = add nsw i32 %2, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  store ptr %18, ptr %9, align 16, !tbaa !34
  %19 = getelementptr inbounds ptr, ptr %9, i64 1
  %20 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %20, ptr %19, align 8, !tbaa !34
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %7
  %23 = icmp eq i8 %6, 0
  %24 = icmp eq i8 %5, 0
  %25 = zext nneg i32 %2 to i64
  br label %26

26:                                               ; preds = %22, %57
  %27 = phi i64 [ 0, %22 ], [ %58, %57 ]
  %28 = phi i32 [ %15, %22 ], [ %59, %57 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds ptr, ptr %1, i64 %27
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %14, i64 %27
  br i1 %23, label %37, label %35

35:                                               ; preds = %26
  %36 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %31, ptr noundef %33, ptr noundef null, i32 noundef 2) #10
  store ptr %36, ptr %34, align 8, !tbaa !34
  br label %40

37:                                               ; preds = %26
  %38 = call ptr @BM_edge_exists(ptr noundef %31, ptr noundef %33) #10
  store ptr %38, ptr %34, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %81, label %40

40:                                               ; preds = %37, %35
  br i1 %24, label %57, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds ptr, ptr %14, i64 %27
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  call void @BM_edge_ordered_verts(ptr noundef %43, ptr noundef nonnull %11, ptr noundef nonnull %10) #10
  %48 = sext i32 %28 to i64
  %49 = getelementptr inbounds ptr, ptr %1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = load ptr, ptr %11, align 8, !tbaa !34
  %52 = icmp eq ptr %50, %51
  %53 = zext i1 %52 to i64
  %54 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !72
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  br label %57

57:                                               ; preds = %41, %47, %40
  %58 = add nuw nsw i64 %27, 1
  %59 = trunc i64 %27 to i32
  %60 = icmp eq i64 %58, %25
  br i1 %60, label %61, label %26, !llvm.loop !73

61:                                               ; preds = %57, %7
  %62 = icmp eq i8 %5, 0
  %63 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  br i1 %62, label %70, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %8, align 8, !tbaa !72
  %66 = load i32, ptr %63, align 4, !tbaa !72
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, ptr %8, align 8, !tbaa !72
  br label %71

69:                                               ; preds = %64
  store i32 0, ptr %8, align 8, !tbaa !72
  br label %71

70:                                               ; preds = %61
  store i32 0, ptr %8, align 8, !tbaa !72
  br label %71

71:                                               ; preds = %68, %69, %70
  %72 = phi i32 [ 0, %68 ], [ 1, %69 ], [ 1, %70 ]
  store i32 %72, ptr %63, align 4, !tbaa !72
  %73 = load i32, ptr %8, align 8, !tbaa !72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = zext nneg i32 %72 to i64
  %78 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = call ptr @BM_face_create_ngon(ptr noundef %0, ptr noundef %76, ptr noundef %79, ptr noundef nonnull %14, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %81

81:                                               ; preds = %37, %71
  %82 = phi ptr [ %80, %71 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  ret ptr %82
}

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_edge_ordered_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_create_ngon_vcloud(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = sext i32 %2 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  %13 = alloca i8, i64 %11, align 16
  %14 = sitofp i32 %2 to float
  %15 = fdiv float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = zext nneg i32 %2 to i64
  br label %26

19:                                               ; preds = %26, %5
  %20 = phi float [ 0.000000e+00, %5 ], [ %35, %26 ]
  %21 = phi float [ 0.000000e+00, %5 ], [ %38, %26 ]
  %22 = phi float [ 0.000000e+00, %5 ], [ %41, %26 ]
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %19
  %25 = zext nneg i32 %2 to i64
  br label %44

26:                                               ; preds = %17, %26
  %27 = phi i64 [ 0, %17 ], [ %42, %26 ]
  %28 = phi float [ 0.000000e+00, %17 ], [ %41, %26 ]
  %29 = phi float [ 0.000000e+00, %17 ], [ %38, %26 ]
  %30 = phi float [ 0.000000e+00, %17 ], [ %35, %26 ]
  %31 = getelementptr inbounds ptr, ptr %1, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  %34 = load float, ptr %33, align 4, !tbaa !74
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %15, float %30)
  %36 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !74
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %15, float %29)
  %39 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !74
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %15, float %28)
  %42 = add nuw nsw i64 %27, 1
  %43 = icmp eq i64 %42, %18
  br i1 %43, label %19, label %26, !llvm.loop !76

44:                                               ; preds = %24, %44
  %45 = phi i64 [ 0, %24 ], [ %67, %44 ]
  %46 = phi float [ 0.000000e+00, %24 ], [ %66, %44 ]
  %47 = phi ptr [ null, %24 ], [ %65, %44 ]
  %48 = getelementptr inbounds ptr, ptr %1, i64 %45
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2
  %51 = load float, ptr %50, align 4, !tbaa !74
  %52 = fsub float %20, %51
  %53 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !74
  %55 = fsub float %21, %54
  %56 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !74
  %58 = fsub float %22, %57
  %59 = fmul float %55, %55
  %60 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %60)
  %62 = fcmp ogt float %61, %46
  %63 = icmp eq ptr %47, null
  %64 = select i1 %62, i1 true, i1 %63
  %65 = select i1 %64, ptr %50, ptr %47
  %66 = select i1 %64, float %61, float %46
  %67 = add nuw nsw i64 %45, 1
  %68 = icmp eq i64 %67, %25
  br i1 %68, label %69, label %44, !llvm.loop !77

69:                                               ; preds = %44, %19
  %70 = phi ptr [ null, %19 ], [ %65, %44 ]
  %71 = load float, ptr %70, align 4, !tbaa !74
  %72 = fsub float %71, %20
  store float %72, ptr %7, align 4, !tbaa !74
  %73 = getelementptr inbounds float, ptr %70, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !74
  %75 = fsub float %74, %21
  %76 = getelementptr inbounds float, ptr %7, i64 1
  store float %75, ptr %76, align 4, !tbaa !74
  %77 = getelementptr inbounds float, ptr %70, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !74
  %79 = fsub float %78, %22
  %80 = getelementptr inbounds float, ptr %7, i64 2
  store float %79, ptr %80, align 4, !tbaa !74
  %81 = icmp sgt i32 %2, 0
  tail call void @llvm.assume(i1 %81)
  %82 = zext nneg i32 %2 to i64
  br label %83

83:                                               ; preds = %69, %130
  %84 = phi i64 [ 0, %69 ], [ %133, %130 ]
  %85 = phi float [ 0.000000e+00, %69 ], [ %132, %130 ]
  %86 = phi ptr [ null, %69 ], [ %131, %130 ]
  %87 = getelementptr inbounds ptr, ptr %1, i64 %84
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2
  %90 = icmp eq ptr %70, %89
  br i1 %90, label %130, label %91

91:                                               ; preds = %83
  %92 = load float, ptr %89, align 4, !tbaa !74
  %93 = fsub float %92, %20
  %94 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !74
  %96 = fsub float %95, %21
  %97 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !74
  %99 = fsub float %98, %22
  %100 = fmul float %96, %96
  %101 = tail call float @llvm.fmuladd.f32(float %93, float %93, float %100)
  %102 = tail call float @llvm.fmuladd.f32(float %99, float %99, float %101)
  %103 = fcmp ogt float %102, 0x38AA95A5C0000000
  br i1 %103, label %104, label %110

104:                                              ; preds = %91
  %105 = tail call float @sqrtf(float noundef %102) #10
  %106 = fdiv float 1.000000e+00, %105
  %107 = fmul float %93, %106
  %108 = fmul float %96, %106
  %109 = fmul float %99, %106
  br label %110

110:                                              ; preds = %91, %104
  %111 = phi float [ %108, %104 ], [ 0.000000e+00, %91 ]
  %112 = phi float [ %107, %104 ], [ 0.000000e+00, %91 ]
  %113 = phi float [ %109, %104 ], [ 0.000000e+00, %91 ]
  %114 = phi float [ %105, %104 ], [ 0.000000e+00, %91 ]
  %115 = load float, ptr %7, align 4, !tbaa !74
  %116 = load float, ptr %76, align 4, !tbaa !74
  %117 = fmul float %111, %116
  %118 = tail call float @llvm.fmuladd.f32(float %115, float %112, float %117)
  %119 = load float, ptr %80, align 4, !tbaa !74
  %120 = tail call float @llvm.fmuladd.f32(float %119, float %113, float %118)
  %121 = tail call float @llvm.fabs.f32(float %120)
  %122 = fneg float %121
  %123 = tail call float @llvm.fmuladd.f32(float %122, float %114, float 1.000000e+00)
  %124 = fcmp ogt float %123, %85
  %125 = icmp eq ptr %86, null
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %110
  %128 = load ptr, ptr %87, align 8, !tbaa !34
  %129 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 2
  br label %130

130:                                              ; preds = %127, %110, %83
  %131 = phi ptr [ %86, %83 ], [ %129, %127 ], [ %86, %110 ]
  %132 = phi float [ %85, %83 ], [ %123, %127 ], [ %85, %110 ]
  %133 = add nuw nsw i64 %84, 1
  %134 = icmp eq i64 %133, %82
  br i1 %134, label %135, label %83, !llvm.loop !78

135:                                              ; preds = %130
  %136 = load float, ptr %131, align 4, !tbaa !74
  %137 = fsub float %136, %20
  %138 = getelementptr inbounds float, ptr %131, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !74
  %140 = fsub float %139, %21
  %141 = getelementptr inbounds float, ptr %131, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !74
  %143 = fsub float %142, %22
  %144 = load float, ptr %76, align 4, !tbaa !74
  %145 = load float, ptr %80, align 4, !tbaa !74
  %146 = fneg float %145
  %147 = fmul float %140, %146
  %148 = tail call float @llvm.fmuladd.f32(float %144, float %143, float %147)
  store float %148, ptr %6, align 4, !tbaa !74
  %149 = load float, ptr %7, align 4, !tbaa !74
  %150 = fneg float %149
  %151 = fmul float %143, %150
  %152 = tail call float @llvm.fmuladd.f32(float %145, float %137, float %151)
  %153 = getelementptr inbounds float, ptr %6, i64 1
  store float %152, ptr %153, align 4, !tbaa !74
  %154 = fneg float %144
  %155 = fmul float %137, %154
  %156 = tail call float @llvm.fmuladd.f32(float %149, float %140, float %155)
  %157 = getelementptr inbounds float, ptr %6, i64 2
  store float %156, ptr %157, align 4, !tbaa !74
  %158 = fmul float %152, %152
  %159 = tail call float @llvm.fmuladd.f32(float %148, float %148, float %158)
  %160 = tail call float @llvm.fmuladd.f32(float %156, float %156, float %159)
  %161 = fcmp ogt float %160, 0x38AA95A5C0000000
  br i1 %161, label %162, label %171

162:                                              ; preds = %135
  %163 = tail call float @sqrtf(float noundef %160) #10
  %164 = fdiv float 1.000000e+00, %163
  %165 = load float, ptr %6, align 4, !tbaa !74
  %166 = fmul float %165, %164
  store float %166, ptr %6, align 4, !tbaa !74
  %167 = load float, ptr %153, align 4, !tbaa !74
  %168 = fmul float %164, %167
  store float %168, ptr %153, align 4, !tbaa !74
  %169 = load float, ptr %157, align 4, !tbaa !74
  %170 = fmul float %164, %169
  br label %172

171:                                              ; preds = %135
  store float 0.000000e+00, ptr %6, align 4, !tbaa !74
  store float 0.000000e+00, ptr %153, align 4, !tbaa !74
  br label %172

172:                                              ; preds = %162, %171
  %173 = phi float [ 0.000000e+00, %171 ], [ %170, %162 ]
  store float %173, ptr %157, align 4, !tbaa !74
  %174 = load float, ptr %76, align 4, !tbaa !74
  %175 = load float, ptr %80, align 4, !tbaa !74
  %176 = load float, ptr %153, align 4, !tbaa !74
  %177 = fneg float %175
  %178 = fmul float %176, %177
  %179 = tail call float @llvm.fmuladd.f32(float %174, float %173, float %178)
  %180 = load float, ptr %6, align 4, !tbaa !74
  %181 = load float, ptr %7, align 4, !tbaa !74
  %182 = fneg float %181
  %183 = fmul float %173, %182
  %184 = tail call float @llvm.fmuladd.f32(float %175, float %180, float %183)
  %185 = fneg float %174
  %186 = fmul float %180, %185
  %187 = tail call float @llvm.fmuladd.f32(float %181, float %176, float %186)
  %188 = getelementptr inbounds float, ptr %8, i64 1
  %189 = getelementptr inbounds float, ptr %8, i64 2
  %190 = getelementptr inbounds float, ptr %9, i64 1
  %191 = getelementptr inbounds float, ptr %9, i64 2
  %192 = zext nneg i32 %2 to i64
  br label %193

193:                                              ; preds = %172, %193
  %194 = phi i64 [ 0, %172 ], [ %228, %193 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %195 = getelementptr inbounds ptr, ptr %1, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !34
  %197 = getelementptr inbounds %struct.BMVert, ptr %196, i64 0, i32 2
  %198 = load float, ptr %197, align 4, !tbaa !74
  %199 = fsub float %198, %20
  store float %199, ptr %8, align 4, !tbaa !74
  %200 = getelementptr inbounds %struct.BMVert, ptr %196, i64 0, i32 2, i64 1
  %201 = load float, ptr %200, align 4, !tbaa !74
  %202 = fsub float %201, %21
  store float %202, ptr %188, align 4, !tbaa !74
  %203 = getelementptr inbounds %struct.BMVert, ptr %196, i64 0, i32 2, i64 2
  %204 = load float, ptr %203, align 4, !tbaa !74
  %205 = fsub float %204, %22
  store float %205, ptr %189, align 4, !tbaa !74
  call void @project_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %6) #10
  %206 = load float, ptr %9, align 4, !tbaa !74
  %207 = load float, ptr %8, align 4, !tbaa !74
  %208 = fsub float %207, %206
  store float %208, ptr %8, align 4, !tbaa !74
  %209 = load float, ptr %190, align 4, !tbaa !74
  %210 = load float, ptr %188, align 4, !tbaa !74
  %211 = fsub float %210, %209
  store float %211, ptr %188, align 4, !tbaa !74
  %212 = load float, ptr %191, align 4, !tbaa !74
  %213 = load float, ptr %189, align 4, !tbaa !74
  %214 = fsub float %213, %212
  store float %214, ptr %189, align 4, !tbaa !74
  %215 = call float @angle_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %216 = load float, ptr %8, align 4, !tbaa !74
  %217 = load float, ptr %188, align 4, !tbaa !74
  %218 = fmul float %184, %217
  %219 = call float @llvm.fmuladd.f32(float %216, float %179, float %218)
  %220 = load float, ptr %189, align 4, !tbaa !74
  %221 = call float @llvm.fmuladd.f32(float %220, float %187, float %219)
  %222 = fcmp olt float %221, 0.000000e+00
  %223 = fneg float %215
  %224 = select i1 %222, float %223, float %215
  %225 = getelementptr inbounds %struct.SortIntByFloat, ptr %12, i64 %194
  store float %224, ptr %225, align 8, !tbaa !79
  %226 = getelementptr inbounds %struct.SortIntByFloat, ptr %12, i64 %194, i32 1
  %227 = trunc i64 %194 to i32
  store i32 %227, ptr %226, align 4, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %228 = add nuw nsw i64 %194, 1
  %229 = icmp eq i64 %228, %192
  br i1 %229, label %230, label %193, !llvm.loop !82

230:                                              ; preds = %193
  call void @qsort(ptr noundef nonnull %12, i64 noundef %10, i64 noundef 8, ptr noundef nonnull @BLI_sortutil_cmp_float) #10
  %231 = zext nneg i32 %2 to i64
  br label %232

232:                                              ; preds = %230, %232
  %233 = phi i64 [ 0, %230 ], [ %240, %232 ]
  %234 = getelementptr inbounds %struct.SortIntByFloat, ptr %12, i64 %233, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !81
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %1, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !34
  %239 = getelementptr inbounds ptr, ptr %13, i64 %233
  store ptr %238, ptr %239, align 8, !tbaa !34
  %240 = add nuw nsw i64 %233, 1
  %241 = icmp eq i64 %240, %231
  br i1 %241, label %242, label %232, !llvm.loop !83

242:                                              ; preds = %232
  %243 = call ptr @BM_face_create_ngon_verts(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  ret ptr %243
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @BLI_sortutil_cmp_float(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_elem_attrs_copy_ex(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = and i8 %4, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !84
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @BM_elem_select_set(ptr noundef %1, ptr noundef %3, i8 noundef zeroext 1) #10
  br label %14

14:                                               ; preds = %8, %13, %5
  switch i8 %4, label %19 [
    i8 0, label %15
    i8 -1, label %28
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !84
  %18 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 3
  store i8 %17, ptr %18, align 1, !tbaa !84
  br label %28

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 3
  %21 = load i8, ptr %20, align 1, !tbaa !84
  %22 = and i8 %21, %4
  %23 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !84
  %25 = xor i8 %4, -1
  %26 = and i8 %24, %25
  %27 = or disjoint i8 %26, %22
  store i8 %27, ptr %20, align 1, !tbaa !84
  br label %28

28:                                               ; preds = %14, %19, %15
  %29 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !85
  switch i8 %30, label %88 [
    i8 1, label %31
    i8 2, label %49
    i8 4, label %58
    i8 8, label %67
  ]

31:                                               ; preds = %28
  %32 = icmp eq ptr %0, %1
  %33 = icmp eq ptr %2, %3
  %34 = and i1 %32, %33
  br i1 %34, label %88, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3
  %37 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3
  %38 = load float, ptr %37, align 4, !tbaa !74
  store float %38, ptr %36, align 4, !tbaa !74
  %39 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !74
  %41 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3, i64 1
  store float %40, ptr %41, align 4, !tbaa !74
  %42 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !74
  %44 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3, i64 2
  store float %43, ptr %44, align 4, !tbaa !74
  %45 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %46 = load ptr, ptr %3, align 8, !tbaa !86
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %45, ptr noundef %46) #10
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %48 = load ptr, ptr %2, align 8, !tbaa !86
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %47, ptr noundef nonnull %45, ptr noundef %48, ptr noundef nonnull %3) #10
  br label %88

49:                                               ; preds = %28
  %50 = icmp eq ptr %0, %1
  %51 = icmp eq ptr %2, %3
  %52 = and i1 %50, %51
  br i1 %52, label %88, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 25
  %55 = load ptr, ptr %3, align 8, !tbaa !87
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %54, ptr noundef %55) #10
  %56 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %57 = load ptr, ptr %2, align 8, !tbaa !87
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %56, ptr noundef nonnull %54, ptr noundef %57, ptr noundef nonnull %3) #10
  br label %88

58:                                               ; preds = %28
  %59 = icmp eq ptr %0, %1
  %60 = icmp eq ptr %2, %3
  %61 = and i1 %59, %60
  br i1 %61, label %88, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %64 = load ptr, ptr %3, align 8, !tbaa !48
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %63, ptr noundef %64) #10
  %65 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %66 = load ptr, ptr %2, align 8, !tbaa !48
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %65, ptr noundef nonnull %63, ptr noundef %66, ptr noundef nonnull %3) #10
  br label %88

67:                                               ; preds = %28
  %68 = icmp eq ptr %0, %1
  %69 = icmp eq ptr %2, %3
  %70 = and i1 %68, %69
  br i1 %70, label %88, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4
  %73 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  %74 = load float, ptr %73, align 4, !tbaa !74
  store float %74, ptr %72, align 4, !tbaa !74
  %75 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !74
  %77 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4, i64 1
  store float %76, ptr %77, align 4, !tbaa !74
  %78 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !74
  %80 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4, i64 2
  store float %79, ptr %80, align 4, !tbaa !74
  %81 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 27
  %82 = load ptr, ptr %3, align 8, !tbaa !88
  tail call void @CustomData_bmesh_free_block_data(ptr noundef nonnull %81, ptr noundef %82) #10
  %83 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %84 = load ptr, ptr %2, align 8, !tbaa !88
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %83, ptr noundef nonnull %81, ptr noundef %84, ptr noundef nonnull %3) #10
  %85 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 5
  %86 = load i16, ptr %85, align 8, !tbaa !89
  %87 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 5
  store i16 %86, ptr %87, align 8, !tbaa !89
  br label %88

88:                                               ; preds = %71, %67, %62, %58, %53, %49, %35, %31, %28
  ret void
}

declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @BM_elem_attrs_copy_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_elem_select_copy(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !84
  %7 = and i8 %6, 1
  %8 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !84
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %7, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @BM_elem_select_set(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %7) #10
  br label %13

13:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_copy_init_customdata(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @bm_mesh_allocsize_default, ptr %2
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %8 = load i64, ptr @CD_MASK_BMESH, align 8, !tbaa !90
  tail call void @CustomData_copy(ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef %8, i32 noundef 1, i32 noundef 0) #10
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 25
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %10, i64 noundef %8, i32 noundef 1, i32 noundef 0) #10
  %11 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  tail call void @CustomData_copy(ptr noundef nonnull %11, ptr noundef nonnull %12, i64 noundef %8, i32 noundef 1, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 27
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  tail call void @CustomData_copy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %8, i32 noundef 1, i32 noundef 0) #10
  %15 = load i32, ptr %5, align 4, !tbaa !92
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %7, i32 noundef %15, i8 noundef zeroext 1) #10
  %16 = getelementptr inbounds %struct.BMAllocTemplate, ptr %5, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !94
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %10, i32 noundef %17, i8 noundef zeroext 2) #10
  %18 = getelementptr inbounds %struct.BMAllocTemplate, ptr %5, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !95
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %12, i32 noundef %19, i8 noundef zeroext 4) #10
  %20 = getelementptr inbounds %struct.BMAllocTemplate, ptr %5, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !96
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %14, i32 noundef %21, i8 noundef zeroext 8) #10
  ret void
}

declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_init_pool(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BM_mesh_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMAllocTemplate, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = load i32, ptr %0, align 8, !tbaa !97
  store i32 %4, ptr %3, align 4, !tbaa !92
  %5 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 1
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !101
  store i32 %7, ptr %5, align 4, !tbaa !94
  %8 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !102
  store i32 %10, ptr %8, align 4, !tbaa !95
  %11 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 3
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !103
  store i32 %13, ptr %11, align 4, !tbaa !96
  %14 = call ptr @BM_mesh_create(ptr noundef nonnull %3) #10
  call void @BM_mesh_copy_init_customdata(ptr noundef %14, ptr noundef nonnull %0, ptr noundef nonnull %3)
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %16 = load i32, ptr %0, align 8, !tbaa !97
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = call ptr %15(i64 noundef %18, ptr noundef nonnull @.str) #10
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %21 = load i32, ptr %6, align 4, !tbaa !101
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = call ptr %20(i64 noundef %23, ptr noundef nonnull @.str.1) #10
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %26 = load i32, ptr %12, align 4, !tbaa !103
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 3
  %29 = call ptr %25(i64 noundef %28, ptr noundef nonnull @.str.2) #10
  %30 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 1, ptr %30, align 4, !tbaa !104
  %31 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !106
  %32 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !107
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !108
  store ptr %34, ptr %2, align 8, !tbaa !109
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %35 = load ptr, ptr %32, align 8, !tbaa !107
  %36 = call ptr %35(ptr noundef nonnull %2) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %1, %38
  %39 = phi i64 [ %53, %38 ], [ 0, %1 ]
  %40 = phi ptr [ %52, %38 ], [ %36, %1 ]
  %41 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 2
  %42 = call ptr @BM_vert_create(ptr noundef %14, ptr noundef nonnull %41, ptr noundef null, i32 noundef 4) #10
  call void @BM_elem_attrs_copy_ex(ptr noundef nonnull %0, ptr noundef %14, ptr noundef nonnull %40, ptr noundef %42, i8 noundef zeroext -1)
  %43 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !110
  %45 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 3
  store i8 %44, ptr %45, align 1, !tbaa !110
  %46 = getelementptr inbounds ptr, ptr %19, i64 %39
  store ptr %42, ptr %46, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 1
  %48 = trunc i64 %39 to i32
  store i32 %48, ptr %47, align 8, !tbaa !111
  %49 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 1
  %50 = trunc i64 %39 to i32
  store i32 %50, ptr %49, align 8, !tbaa !111
  %51 = load ptr, ptr %32, align 8, !tbaa !107
  %52 = call ptr %51(ptr noundef nonnull %2) #10
  %53 = add nuw i64 %39, 1
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %38, !llvm.loop !112

55:                                               ; preds = %38, %1
  %56 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %57 = load i8, ptr %56, align 4, !tbaa !113
  %58 = and i8 %57, -2
  store i8 %58, ptr %56, align 4, !tbaa !113
  %59 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 7
  %60 = load i8, ptr %59, align 4, !tbaa !113
  %61 = and i8 %60, -2
  store i8 %61, ptr %59, align 4, !tbaa !113
  store i8 2, ptr %30, align 4, !tbaa !104
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !106
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !107
  %62 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !114
  store ptr %63, ptr %2, align 8, !tbaa !109
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %64 = load ptr, ptr %32, align 8, !tbaa !107
  %65 = call ptr %64(ptr noundef nonnull %2) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %97, label %67

67:                                               ; preds = %55, %67
  %68 = phi i64 [ %95, %67 ], [ 0, %55 ]
  %69 = phi ptr [ %94, %67 ], [ %65, %55 ]
  %70 = getelementptr inbounds %struct.BMEdge, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !58
  %72 = getelementptr inbounds %struct.BMHeader, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !111
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %19, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.BMEdge, ptr %69, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  %79 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !111
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %19, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = call ptr @BM_edge_create(ptr noundef %14, ptr noundef %76, ptr noundef %83, ptr noundef nonnull %69, i32 noundef 4) #10
  call void @BM_elem_attrs_copy_ex(ptr noundef nonnull %0, ptr noundef %14, ptr noundef nonnull %69, ptr noundef %84, i8 noundef zeroext -1)
  %85 = getelementptr inbounds %struct.BMHeader, ptr %69, i64 0, i32 3
  %86 = load i8, ptr %85, align 1, !tbaa !115
  %87 = getelementptr inbounds %struct.BMHeader, ptr %84, i64 0, i32 3
  store i8 %86, ptr %87, align 1, !tbaa !115
  %88 = getelementptr inbounds ptr, ptr %24, i64 %68
  store ptr %84, ptr %88, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.BMHeader, ptr %69, i64 0, i32 1
  %90 = trunc i64 %68 to i32
  store i32 %90, ptr %89, align 8, !tbaa !111
  %91 = getelementptr inbounds %struct.BMHeader, ptr %84, i64 0, i32 1
  %92 = trunc i64 %68 to i32
  store i32 %92, ptr %91, align 8, !tbaa !111
  %93 = load ptr, ptr %32, align 8, !tbaa !107
  %94 = call ptr %93(ptr noundef nonnull %2) #10
  %95 = add nuw i64 %68, 1
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %67, !llvm.loop !116

97:                                               ; preds = %67, %55
  %98 = load i8, ptr %56, align 4, !tbaa !113
  %99 = and i8 %98, -3
  store i8 %99, ptr %56, align 4, !tbaa !113
  %100 = load i8, ptr %59, align 4, !tbaa !113
  %101 = and i8 %100, -3
  store i8 %101, ptr %59, align 4, !tbaa !113
  store i8 3, ptr %30, align 4, !tbaa !104
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !106
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !107
  %102 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %103 = load ptr, ptr %102, align 8, !tbaa !117
  store ptr %103, ptr %2, align 8, !tbaa !109
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %104 = load ptr, ptr %32, align 8, !tbaa !107
  %105 = call ptr %104(ptr noundef nonnull %2) #10
  %106 = icmp eq ptr %105, null
  br i1 %106, label %125, label %107

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %109 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 33
  br label %110

110:                                              ; preds = %107, %120
  %111 = phi i64 [ 0, %107 ], [ %123, %120 ]
  %112 = phi ptr [ %105, %107 ], [ %122, %120 ]
  %113 = getelementptr inbounds %struct.BMHeader, ptr %112, i64 0, i32 1
  %114 = trunc i64 %111 to i32
  store i32 %114, ptr %113, align 8, !tbaa !111
  %115 = call fastcc ptr @bm_mesh_copy_new_face(ptr noundef %14, ptr noundef nonnull %0, ptr noundef %19, ptr noundef %24, ptr noundef nonnull %112)
  %116 = getelementptr inbounds ptr, ptr %29, i64 %111
  store ptr %115, ptr %116, align 8, !tbaa !34
  %117 = load ptr, ptr %108, align 8, !tbaa !118
  %118 = icmp eq ptr %112, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store ptr %115, ptr %109, align 8, !tbaa !118
  br label %120

120:                                              ; preds = %110, %119
  %121 = load ptr, ptr %32, align 8, !tbaa !107
  %122 = call ptr %121(ptr noundef nonnull %2) #10
  %123 = add nuw i64 %111, 1
  %124 = icmp eq ptr %122, null
  br i1 %124, label %125, label %110, !llvm.loop !119

125:                                              ; preds = %120, %97
  %126 = load i8, ptr %56, align 4, !tbaa !113
  %127 = and i8 %126, -9
  store i8 %127, ptr %56, align 4, !tbaa !113
  %128 = load i8, ptr %59, align 4, !tbaa !113
  %129 = and i8 %128, -9
  store i8 %129, ptr %59, align 4, !tbaa !113
  %130 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %131 = load i32, ptr %130, align 8, !tbaa !120
  %132 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 4
  store i32 %131, ptr %132, align 8, !tbaa !120
  %133 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %134 = load i32, ptr %133, align 4, !tbaa !121
  %135 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 5
  store i32 %134, ptr %135, align 4, !tbaa !121
  %136 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %137 = load i32, ptr %136, align 8, !tbaa !122
  %138 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 6
  store i32 %137, ptr %138, align 8, !tbaa !122
  %139 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %140 = load ptr, ptr %139, align 8, !tbaa !34
  %141 = icmp eq ptr %140, null
  br i1 %141, label %165, label %142

142:                                              ; preds = %125, %162
  %143 = phi ptr [ %163, %162 ], [ %140, %125 ]
  %144 = getelementptr inbounds %struct.BMEditSelection, ptr %143, i64 0, i32 3
  %145 = load i8, ptr %144, align 8, !tbaa !123
  switch i8 %145, label %148 [
    i8 1, label %149
    i8 2, label %146
    i8 8, label %147
  ]

146:                                              ; preds = %142
  br label %149

147:                                              ; preds = %142
  br label %149

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %142, %148, %147, %146
  %150 = phi ptr [ null, %148 ], [ %29, %147 ], [ %24, %146 ], [ %19, %142 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.BMEditSelection, ptr %143, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !125
  %155 = getelementptr inbounds %struct.BMHeader, ptr %154, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !111
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %150, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !34
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %152
  call void @_bm_select_history_store(ptr noundef %14, ptr noundef nonnull %159) #10
  br label %162

162:                                              ; preds = %152, %161, %149
  %163 = load ptr, ptr %143, align 8, !tbaa !34
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %142, !llvm.loop !126

165:                                              ; preds = %162, %125
  %166 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %166(ptr noundef %24) #10
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %167(ptr noundef %19) #10
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %168(ptr noundef %29) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  ret ptr %14
}

declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_mesh_copy_new_face(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !127
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = alloca i8, i64 %9, align 16
  %13 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  br label %15

15:                                               ; preds = %15, %5
  %16 = phi i64 [ %35, %15 ], [ 0, %5 ]
  %17 = phi ptr [ %37, %15 ], [ %14, %5 ]
  %18 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %17, ptr %18, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !111
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds ptr, ptr %11, i64 %16
  store ptr %25, ptr %26, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = getelementptr inbounds %struct.BMHeader, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !111
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %3, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %12, i64 %16
  store ptr %33, ptr %34, align 8, !tbaa !34
  %35 = add nuw i64 %16, 1
  %36 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = icmp eq ptr %37, %14
  br i1 %38, label %39, label %15, !llvm.loop !129

39:                                               ; preds = %15
  %40 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %7, ptr noundef null, i32 noundef 4) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !103
  %45 = add nsw i32 %44, -1
  %46 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 1
  store i32 %45, ptr %46, align 8, !tbaa !111
  call void @BM_elem_attrs_copy_ex(ptr noundef %1, ptr noundef %0, ptr noundef %4, ptr noundef nonnull %40, i8 noundef zeroext -1)
  %47 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !130
  %49 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  store i8 %48, ptr %49, align 1, !tbaa !130
  %50 = getelementptr inbounds %struct.BMFace, ptr %40, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !38
  br label %52

52:                                               ; preds = %52, %42
  %53 = phi i64 [ %57, %52 ], [ 0, %42 ]
  %54 = phi ptr [ %59, %52 ], [ %51, %42 ]
  %55 = getelementptr inbounds ptr, ptr %10, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  call void @BM_elem_attrs_copy_ex(ptr noundef %1, ptr noundef %0, ptr noundef %56, ptr noundef %54, i8 noundef zeroext 1)
  %57 = add nuw i64 %53, 1
  %58 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = icmp eq ptr %59, %51
  br i1 %60, label %61, label %52, !llvm.loop !131

61:                                               ; preds = %52, %39
  %62 = phi ptr [ null, %39 ], [ %40, %52 ]
  ret ptr %62
}

declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext %0) local_unnamed_addr #5 {
  %2 = and i8 %0, 1
  %3 = lshr i8 %0, 3
  %4 = and i8 %3, 2
  %5 = or disjoint i8 %4, %2
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext %0) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext %0) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BM_vert_flag_to_mflag(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !110
  %4 = and i8 %3, 1
  %5 = shl i8 %3, 3
  %6 = and i8 %5, 16
  %7 = or disjoint i8 %6, %4
  ret i8 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @BM_edge_flag_to_mflag(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !115
  %4 = zext i8 %3 to i32
  %5 = and i32 %4, 5
  %6 = lshr i32 %4, 4
  %7 = and i32 %6, 2
  %8 = or disjoint i32 %7, %5
  %9 = shl nuw nsw i32 %4, 6
  %10 = and i32 %9, 512
  %11 = or disjoint i32 %8, %10
  %12 = shl nuw nsw i32 %4, 3
  %13 = and i32 %12, 16
  %14 = or disjoint i32 %11, %13
  %15 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, i32 128, i32 0
  %19 = or disjoint i32 %14, %18
  %20 = trunc i32 %19 to i16
  %21 = xor i16 %20, 544
  ret i16 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BM_face_flag_to_mflag(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !130
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare void @CustomData_bmesh_free_block_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

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
!48 = !{!44, !35, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !50, !51}
!53 = distinct !{!53, !50, !51}
!54 = !{!55, !36, i64 14}
!55 = !{!"BMEdge", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !56, i64 48, !56, i64 64}
!56 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!57 = distinct !{!57, !50, !51}
!58 = !{!55, !35, i64 24}
!59 = !{!55, !35, i64 32}
!60 = !{!61, !36, i64 14}
!61 = !{!"BMVert", !40, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!62 = !{!55, !35, i64 48}
!63 = distinct !{!63, !50, !51}
!64 = distinct !{!64, !50, !51}
!65 = distinct !{!65, !50, !51}
!66 = distinct !{!66, !50, !51}
!67 = distinct !{!67, !50, !51}
!68 = distinct !{!68, !50, !51}
!69 = distinct !{!69, !50, !51}
!70 = distinct !{!70, !50, !51}
!71 = !{!55, !35, i64 40}
!72 = !{!41, !41, i64 0}
!73 = distinct !{!73, !50, !51}
!74 = !{!75, !75, i64 0}
!75 = !{!"float", !36, i64 0}
!76 = distinct !{!76, !50, !51}
!77 = distinct !{!77, !50, !51}
!78 = distinct !{!78, !50, !51}
!79 = !{!80, !75, i64 0}
!80 = !{!"SortIntByFloat", !75, i64 0, !41, i64 4}
!81 = !{!80, !41, i64 4}
!82 = distinct !{!82, !50, !51}
!83 = distinct !{!83, !50, !51}
!84 = !{!40, !36, i64 13}
!85 = !{!40, !36, i64 12}
!86 = !{!61, !35, i64 0}
!87 = !{!55, !35, i64 0}
!88 = !{!39, !35, i64 0}
!89 = !{!39, !42, i64 48}
!90 = !{!91, !91, i64 0}
!91 = !{!"long", !36, i64 0}
!92 = !{!93, !41, i64 0}
!93 = !{!"BMAllocTemplate", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!94 = !{!93, !41, i64 4}
!95 = !{!93, !41, i64 8}
!96 = !{!93, !41, i64 12}
!97 = !{!98, !41, i64 0}
!98 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !99, i64 144, !99, i64 344, !99, i64 544, !99, i64 744, !42, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !100, i64 960, !35, i64 976, !100, i64 984, !35, i64 1000}
!99 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!100 = !{!"ListBase", !35, i64 0, !35, i64 8}
!101 = !{!98, !41, i64 4}
!102 = !{!98, !41, i64 8}
!103 = !{!98, !41, i64 12}
!104 = !{!105, !36, i64 60}
!105 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !41, i64 56, !36, i64 60}
!106 = !{!105, !35, i64 40}
!107 = !{!105, !35, i64 48}
!108 = !{!98, !35, i64 32}
!109 = !{!36, !36, i64 0}
!110 = !{!61, !36, i64 13}
!111 = !{!40, !41, i64 8}
!112 = distinct !{!112, !50, !51}
!113 = !{!98, !36, i64 28}
!114 = !{!98, !35, i64 40}
!115 = !{!55, !36, i64 13}
!116 = distinct !{!116, !50, !51}
!117 = !{!98, !35, i64 56}
!118 = !{!98, !35, i64 976}
!119 = distinct !{!119, !50, !51}
!120 = !{!98, !41, i64 16}
!121 = !{!98, !41, i64 20}
!122 = !{!98, !41, i64 24}
!123 = !{!124, !36, i64 24}
!124 = !{!"BMEditSelection", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24}
!125 = !{!124, !35, i64 16}
!126 = distinct !{!126, !50, !51}
!127 = !{!39, !41, i64 32}
!128 = !{!44, !35, i64 24}
!129 = distinct !{!129, !50, !51}
!130 = !{!39, !36, i64 13}
!131 = distinct !{!131, !50, !51}
