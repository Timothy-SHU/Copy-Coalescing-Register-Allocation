; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_mods.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.VertOrder = type { float, ptr }

@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"BLI_array.face_arr\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"BLI_array.faces\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"BLI_array.bad_faces\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"BLI_array.oldfaces\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"blender/source/blender/bmesh/intern/bmesh_mods.c\00", align 1
@__func__.BM_edge_split = private unnamed_addr constant [14 x i8] c"BM_edge_split\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_vert_dissolve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BM_vert_edge_count(ptr noundef %1) #10
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @BM_vert_kill(ptr noundef %0, ptr noundef %1) #10
  br label %37

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @BM_vert_is_manifold(ptr noundef %1) #10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @BM_vert_kill(ptr noundef %0, ptr noundef %1) #10
  br label %37

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i32 %3, 2
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = tail call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %1, float noundef 1.000000e+00, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i8
  br label %37

24:                                               ; preds = %6
  %25 = icmp eq i32 %3, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = tail call i32 @BM_vert_face_count(ptr noundef %1) #10
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = tail call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %31, ptr noundef %1, float noundef 1.000000e+00, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i8
  br label %37

35:                                               ; preds = %26, %24
  %36 = tail call zeroext i8 @BM_disk_dissolve(ptr noundef %0, ptr noundef %1), !range !44
  br label %37

37:                                               ; preds = %14, %35, %29, %20, %13, %5
  %38 = phi i8 [ 1, %5 ], [ %34, %29 ], [ %36, %35 ], [ %23, %20 ], [ 1, %13 ], [ 0, %14 ]
  ret i8 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BM_vert_edge_count(ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef 1.000000e+00, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext %4)
  ret ptr %6
}

declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_disk_dissolve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 16
  %4 = alloca [2 x ptr], align 16
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  %7 = tail call zeroext i8 @BM_vert_is_manifold(ptr noundef %1) #10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %194, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %9, %28
  %14 = phi ptr [ %22, %28 ], [ %11, %9 ]
  %15 = phi i32 [ %29, %28 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 5
  %17 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, %1
  %20 = zext i1 %19 to i64
  %21 = getelementptr inbounds %struct.BMDiskLink, ptr %16, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = load ptr, ptr %10, align 8, !tbaa !34
  %24 = tail call zeroext i8 @BM_edge_share_face_check(ptr noundef %22, ptr noundef %23) #10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load ptr, ptr %10, align 8, !tbaa !34
  br label %32

28:                                               ; preds = %13
  %29 = add nuw nsw i32 %15, 1
  %30 = load ptr, ptr %10, align 8, !tbaa !34
  %31 = icmp eq ptr %22, %30
  br i1 %31, label %32, label %13, !llvm.loop !47

32:                                               ; preds = %28, %26, %9
  %33 = phi ptr [ %22, %26 ], [ undef, %9 ], [ %22, %28 ]
  %34 = phi ptr [ %22, %26 ], [ null, %9 ], [ null, %28 ]
  %35 = phi ptr [ %27, %26 ], [ null, %9 ], [ null, %28 ]
  %36 = phi i32 [ %15, %26 ], [ 0, %9 ], [ %29, %28 ]
  %37 = icmp eq ptr %34, null
  %38 = icmp eq i32 %36, 3
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %67

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store ptr %44, ptr %6, align 16, !tbaa !53
  %49 = getelementptr inbounds ptr, ptr %6, i64 1
  store ptr %48, ptr %49, align 8, !tbaa !53
  %50 = tail call ptr @BM_face_edge_share_loop(ptr noundef %44, ptr noundef %33) #10
  %51 = tail call ptr @BM_face_edge_share_loop(ptr noundef %48, ptr noundef %33) #10
  %52 = getelementptr inbounds %struct.BMLoop, ptr %50, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = tail call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %48) #10
  br label %59

59:                                               ; preds = %40, %57
  %60 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %194, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %10, align 8, !tbaa !34
  %64 = call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %63, ptr noundef %1, float noundef 1.000000e+00, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %65 = icmp ne ptr %64, null
  %66 = zext i1 %65 to i8
  br label %194

67:                                               ; preds = %32
  %68 = icmp eq i32 %36, 2
  %69 = select i1 %37, i1 %68, i1 false
  br i1 %69, label %70, label %99

70:                                               ; preds = %67
  %71 = load ptr, ptr %10, align 8, !tbaa !34
  %72 = tail call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %71, ptr noundef %1, float noundef 1.000000e+00, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %194, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !41
  %77 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  %79 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  %81 = getelementptr inbounds %struct.BMLoop, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !50
  %83 = icmp eq ptr %78, %82
  br i1 %83, label %98, label %84

84:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr %78, ptr %5, align 16, !tbaa !53
  %85 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr %82, ptr %85, align 8, !tbaa !53
  %86 = tail call ptr @BM_face_edge_share_loop(ptr noundef %78, ptr noundef nonnull %72) #10
  %87 = tail call ptr @BM_face_edge_share_loop(ptr noundef %82, ptr noundef nonnull %72) #10
  %88 = getelementptr inbounds %struct.BMLoop, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !54
  %90 = getelementptr inbounds %struct.BMLoop, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !54
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = tail call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %82) #10
  br label %95

95:                                               ; preds = %84, %93
  %96 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %97 = icmp eq ptr %96, null
  br i1 %97, label %194, label %98

98:                                               ; preds = %95, %74
  br label %194

99:                                               ; preds = %67
  br i1 %37, label %194, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds ptr, ptr %4, i64 1
  br label %102

102:                                              ; preds = %100, %153
  %103 = load ptr, ptr %10, align 8, !tbaa !34
  br label %104

104:                                              ; preds = %144, %102
  %105 = phi ptr [ %103, %102 ], [ %151, %144 ]
  %106 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !41
  %108 = icmp eq ptr %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !52
  %112 = icmp eq ptr %111, %107
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !52
  %116 = icmp eq ptr %115, %107
  %117 = zext i1 %116 to i8
  br label %118

118:                                              ; preds = %104, %109, %113
  %119 = phi i8 [ 0, %109 ], [ 0, %104 ], [ %117, %113 ]
  %120 = icmp eq i8 %119, 0
  %121 = icmp eq ptr %105, %35
  %122 = select i1 %120, i1 true, i1 %121
  %123 = icmp eq ptr %105, %34
  %124 = or i1 %123, %122
  br i1 %124, label %144, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !50
  %128 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !52
  %130 = getelementptr inbounds %struct.BMLoop, ptr %129, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  store ptr %127, ptr %4, align 16, !tbaa !53
  store ptr %131, ptr %101, align 8, !tbaa !53
  %132 = call ptr @BM_face_edge_share_loop(ptr noundef %127, ptr noundef %105) #10
  %133 = call ptr @BM_face_edge_share_loop(ptr noundef %131, ptr noundef %105) #10
  %134 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !54
  %136 = getelementptr inbounds %struct.BMLoop, ptr %133, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !54
  %138 = icmp eq ptr %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %125
  %140 = call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %131) #10
  br label %141

141:                                              ; preds = %125, %139
  %142 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %143 = icmp eq ptr %142, null
  br i1 %143, label %194, label %153

144:                                              ; preds = %118
  %145 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 5
  %146 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !45
  %148 = icmp eq ptr %147, %1
  %149 = zext i1 %148 to i64
  %150 = getelementptr inbounds %struct.BMDiskLink, ptr %145, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !46
  %152 = icmp eq ptr %151, %103
  br i1 %152, label %153, label %104, !llvm.loop !55

153:                                              ; preds = %144, %141
  br i1 %124, label %154, label %102, !llvm.loop !56

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !41
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.BMLoop, ptr %156, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !52
  %161 = icmp ne ptr %160, %156
  %162 = zext i1 %161 to i8
  br label %163

163:                                              ; preds = %154, %158
  %164 = phi i8 [ 1, %154 ], [ %162, %158 ]
  %165 = call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %35, ptr noundef %1, float noundef 1.000000e+00, i8 noundef zeroext 1, i8 noundef zeroext %164, i8 noundef zeroext 1)
  %166 = icmp eq ptr %165, null
  br i1 %166, label %194, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.BMEdge, ptr %165, i64 0, i32 4
  %169 = load ptr, ptr %168, align 8, !tbaa !41
  %170 = icmp eq ptr %169, null
  br i1 %170, label %193, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.BMLoop, ptr %169, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !50
  %174 = getelementptr inbounds %struct.BMLoop, ptr %169, i64 0, i32 4
  %175 = load ptr, ptr %174, align 8, !tbaa !52
  %176 = getelementptr inbounds %struct.BMLoop, ptr %175, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !50
  %178 = icmp eq ptr %173, %177
  br i1 %178, label %193, label %179

179:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store ptr %173, ptr %3, align 16, !tbaa !53
  %180 = getelementptr inbounds ptr, ptr %3, i64 1
  store ptr %177, ptr %180, align 8, !tbaa !53
  %181 = call ptr @BM_face_edge_share_loop(ptr noundef %173, ptr noundef nonnull %165) #10
  %182 = call ptr @BM_face_edge_share_loop(ptr noundef %177, ptr noundef nonnull %165) #10
  %183 = getelementptr inbounds %struct.BMLoop, ptr %181, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !54
  %185 = getelementptr inbounds %struct.BMLoop, ptr %182, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !54
  %187 = icmp eq ptr %184, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %177) #10
  br label %190

190:                                              ; preds = %179, %188
  %191 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %192 = icmp eq ptr %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %171, %190, %167
  br label %194

194:                                              ; preds = %141, %99, %193, %163, %190, %95, %70, %62, %59, %2, %98
  %195 = phi i8 [ 1, %98 ], [ 0, %2 ], [ 0, %59 ], [ %66, %62 ], [ 0, %70 ], [ 0, %95 ], [ 0, %190 ], [ 0, %163 ], [ 1, %193 ], [ 1, %99 ], [ 0, %141 ]
  ret i8 %195
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BM_edge_share_face_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store ptr %1, ptr %6, align 16, !tbaa !53
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  store ptr %2, ptr %7, align 8, !tbaa !53
  %8 = tail call ptr @BM_face_edge_share_loop(ptr noundef %1, ptr noundef %3) #10
  %9 = tail call ptr @BM_face_edge_share_loop(ptr noundef %2, ptr noundef %3) #10
  %10 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = tail call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %2) #10
  br label %17

17:                                               ; preds = %15, %5
  %18 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2, i8 noundef zeroext %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x ptr], align 16
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [16 x ptr], align 16
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [16 x ptr], align 16
  %16 = alloca %struct.BMIter, align 8
  %17 = alloca [2 x ptr], align 16
  %18 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, %2
  %21 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, %2
  %24 = select i1 %23, ptr %19, ptr null
  %25 = select i1 %20, ptr %22, ptr %24
  %26 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %30 = fsub float 1.000000e+00, %3
  store float %30, ptr %8, align 4, !tbaa !58
  %31 = getelementptr inbounds float, ptr %8, i64 1
  store float %3, ptr %31, align 4, !tbaa !58
  %32 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %34

34:                                               ; preds = %49, %29
  %35 = phi ptr [ %27, %29 ], [ %51, %49 ]
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = icmp eq ptr %37, %25
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !54
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  %46 = load ptr, ptr %41, align 8, !tbaa !61
  store ptr %46, ptr %9, align 16, !tbaa !53
  %47 = load ptr, ptr %35, align 8, !tbaa !61
  store ptr %47, ptr %32, align 8, !tbaa !53
  %48 = load ptr, ptr %41, align 8, !tbaa !61
  call void @CustomData_bmesh_interp(ptr noundef nonnull %33, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef null, i32 noundef 2, ptr noundef %48) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  br label %49

49:                                               ; preds = %34, %39, %45
  %50 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = load ptr, ptr %26, align 8, !tbaa !41
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %34, !llvm.loop !62

54:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %55

55:                                               ; preds = %54, %7
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %2, ptr noundef %25, ptr noundef %2, float noundef %3) #10
  %56 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 5
  %57 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = icmp eq ptr %58, %2
  %60 = zext i1 %59 to i64
  %61 = getelementptr inbounds %struct.BMDiskLink, ptr %56, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !57
  %65 = icmp eq ptr %64, %2
  %66 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = icmp eq ptr %67, %2
  %69 = select i1 %68, ptr %64, ptr null
  %70 = select i1 %65, ptr %67, ptr %69
  %71 = icmp eq i8 %5, 0
  br i1 %71, label %140, label %72

72:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  store ptr null, ptr %11, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #10
  %73 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 5, ptr %73, align 4, !tbaa !63
  %74 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %74, align 8, !tbaa !65
  %75 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %75, align 8, !tbaa !66
  store ptr %2, ptr %10, align 8, !tbaa !67
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %10) #10
  %76 = load ptr, ptr %75, align 8, !tbaa !66
  %77 = call ptr %76(ptr noundef nonnull %10) #10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %109, label %79

79:                                               ; preds = %72, %100
  %80 = phi i64 [ %101, %100 ], [ 0, %72 ]
  %81 = phi ptr [ %105, %100 ], [ %77, %72 ]
  %82 = load ptr, ptr %11, align 8
  %83 = icmp eq ptr %82, null
  %84 = icmp ult i64 %80, 16
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store ptr %12, ptr %11, align 8, !tbaa !53
  br label %100

87:                                               ; preds = %79
  %88 = icmp eq ptr %82, %12
  %89 = or i1 %88, %83
  %90 = select i1 %88, i64 16, i64 0
  br i1 %89, label %95, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !53
  %93 = call i64 %92(ptr noundef nonnull %82) #10
  %94 = lshr i64 %93, 3
  br label %95

95:                                               ; preds = %87, %91
  %96 = phi i64 [ %90, %87 ], [ %94, %91 ]
  %97 = icmp ugt i64 %96, %80
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = trunc i64 %80 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 8, i32 noundef %99, i32 noundef 1, ptr noundef nonnull @.str.1) #10
  br label %100

100:                                              ; preds = %98, %95, %86
  %101 = add nuw i64 %80, 1
  %102 = load ptr, ptr %11, align 8, !tbaa !53
  %103 = getelementptr inbounds ptr, ptr %102, i64 %80
  store ptr %81, ptr %103, align 8, !tbaa !53
  %104 = load ptr, ptr %75, align 8, !tbaa !66
  %105 = call ptr %104(ptr noundef nonnull %10) #10
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %79, !llvm.loop !68

107:                                              ; preds = %100
  %108 = trunc i64 %101 to i32
  br label %109

109:                                              ; preds = %107, %72
  %110 = phi i32 [ 0, %72 ], [ %108, %107 ]
  %111 = icmp ugt i32 %110, 1
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load ptr, ptr %11, align 8, !tbaa !53
  %114 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef %113, i32 noundef %110, i8 noundef zeroext 1) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %131, label %116

116:                                              ; preds = %112
  %117 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %114, ptr noundef %25) #10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %116
  %120 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %114, ptr noundef %70) #10
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  %123 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %114, ptr noundef nonnull %117, ptr noundef nonnull %120, ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 0)
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr %13, align 8, !tbaa !53
  %127 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !69
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi ptr [ %128, %125 ], [ null, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  br label %131

131:                                              ; preds = %112, %129, %119, %116, %109
  %132 = phi ptr [ null, %109 ], [ null, %112 ], [ %130, %129 ], [ null, %119 ], [ null, %116 ]
  %133 = load ptr, ptr %11, align 8
  %134 = icmp ne ptr %133, null
  %135 = icmp ne ptr %133, %12
  %136 = and i1 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %138(ptr noundef nonnull %133) #10
  br label %139

139:                                              ; preds = %137, %131
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  br label %225

140:                                              ; preds = %55
  %141 = call ptr @bmesh_jekv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %4, i8 noundef zeroext 1) #10
  %142 = icmp ne ptr %141, null
  %143 = icmp ne i8 %6, 0
  %144 = and i1 %143, %142
  br i1 %144, label %145, label %225

145:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  store ptr null, ptr %14, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #10
  %146 = getelementptr inbounds %struct.BMEdge, ptr %141, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !57
  store ptr %147, ptr %17, align 16, !tbaa !53
  %148 = getelementptr inbounds ptr, ptr %17, i64 1
  %149 = getelementptr inbounds %struct.BMEdge, ptr %141, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !45
  store ptr %150, ptr %148, align 8, !tbaa !53
  %151 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  %152 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  %153 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  br label %154

154:                                              ; preds = %145, %214
  %155 = phi i64 [ 0, %145 ], [ %215, %214 ]
  %156 = getelementptr inbounds [2 x ptr], ptr %17, i64 0, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !53
  store i8 5, ptr %151, align 4, !tbaa !63
  store ptr @bmiter__face_of_vert_begin, ptr %152, align 8, !tbaa !65
  store ptr @bmiter__face_of_vert_step, ptr %153, align 8, !tbaa !66
  store ptr %157, ptr %16, align 8, !tbaa !67
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %16) #10
  %158 = load ptr, ptr %153, align 8, !tbaa !66
  %159 = call ptr %158(ptr noundef nonnull %16) #10
  %160 = icmp eq ptr %159, null
  br i1 %160, label %196, label %161

161:                                              ; preds = %154, %191
  %162 = phi ptr [ %194, %191 ], [ %159, %154 ]
  %163 = phi i32 [ %192, %191 ], [ 0, %154 ]
  %164 = getelementptr inbounds %struct.BMFace, ptr %162, i64 0, i32 3
  %165 = load i32, ptr %164, align 8, !tbaa !70
  %166 = icmp slt i32 %165, 3
  br i1 %166, label %167, label %191

167:                                              ; preds = %161
  %168 = load ptr, ptr %14, align 8
  %169 = icmp eq ptr %168, null
  %170 = add nsw i32 %163, 1
  %171 = icmp ult i32 %170, 17
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store ptr %15, ptr %14, align 8, !tbaa !53
  br label %187

174:                                              ; preds = %167
  %175 = icmp eq ptr %168, %15
  %176 = or i1 %175, %169
  %177 = select i1 %175, i64 16, i64 0
  br i1 %176, label %182, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !53
  %180 = call i64 %179(ptr noundef nonnull %168) #10
  %181 = lshr i64 %180, 3
  br label %182

182:                                              ; preds = %174, %178
  %183 = phi i64 [ %177, %174 ], [ %181, %178 ]
  %184 = sext i32 %170 to i64
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  call void @_bli_array_grow_func(ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 8, i32 noundef %163, i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %187

187:                                              ; preds = %186, %182, %173
  %188 = load ptr, ptr %14, align 8, !tbaa !53
  %189 = sext i32 %163 to i64
  %190 = getelementptr inbounds ptr, ptr %188, i64 %189
  store ptr %162, ptr %190, align 8, !tbaa !53
  br label %191

191:                                              ; preds = %161, %187
  %192 = phi i32 [ %170, %187 ], [ %163, %161 ]
  %193 = load ptr, ptr %153, align 8, !tbaa !66
  %194 = call ptr %193(ptr noundef nonnull %16) #10
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %161, !llvm.loop !73

196:                                              ; preds = %191, %154
  %197 = phi i32 [ 0, %154 ], [ %192, %191 ]
  br label %198

198:                                              ; preds = %196, %213
  %199 = phi i32 [ %210, %213 ], [ %197, %196 ]
  %200 = load ptr, ptr %14, align 8, !tbaa !53
  %201 = icmp ne ptr %200, null
  %202 = icmp ne i32 %199, 0
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = add nsw i32 %199, -1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds ptr, ptr %200, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !53
  br label %209

209:                                              ; preds = %198, %204
  %210 = phi i32 [ %205, %204 ], [ %199, %198 ]
  %211 = phi ptr [ %208, %204 ], [ null, %198 ]
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %209
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %211) #10
  br label %198, !llvm.loop !74

214:                                              ; preds = %209
  %215 = add nuw nsw i64 %155, 1
  %216 = icmp eq i64 %155, 0
  br i1 %216, label %154, label %217, !llvm.loop !75

217:                                              ; preds = %214
  %218 = load ptr, ptr %14, align 8
  %219 = icmp ne ptr %218, null
  %220 = icmp ne ptr %218, %15
  %221 = and i1 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %223(ptr noundef nonnull %218) #10
  br label %224

224:                                              ; preds = %222, %217
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  br label %225

225:                                              ; preds = %140, %224, %139
  %226 = phi ptr [ %132, %139 ], [ %141, %224 ], [ %141, %140 ]
  ret ptr %226
}

declare ptr @BM_face_edge_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @bmesh_loop_reverse(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_faces_join(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_split(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %9 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %8, i32 noundef 19) #10
  %10 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %28, label %25

25:                                               ; preds = %7, %21, %17, %13
  %26 = icmp eq ptr %4, null
  br i1 %26, label %55, label %27

27:                                               ; preds = %25
  store ptr null, ptr %4, align 8, !tbaa !53
  br label %55

28:                                               ; preds = %21
  %29 = icmp ne i8 %9, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call ptr @BM_face_copy(ptr noundef %0, ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %31, %30 ], [ undef, %28 ]
  %34 = tail call ptr @bmesh_sfme(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) #10
  %35 = icmp ne ptr %34, null
  %36 = and i1 %29, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !77
  br label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %39, %37 ], [ %43, %40 ]
  tail call void @BM_loop_interp_multires(ptr noundef %0, ptr noundef %41, ptr noundef %33) #10
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  %44 = icmp eq ptr %43, %39
  br i1 %44, label %45, label %40, !llvm.loop !78

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.BMFace, ptr %34, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !77
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi ptr [ %47, %45 ], [ %51, %48 ]
  tail call void @BM_loop_interp_multires(ptr noundef %0, ptr noundef %49, ptr noundef %33) #10
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = icmp eq ptr %51, %47
  br i1 %52, label %53, label %48, !llvm.loop !79

53:                                               ; preds = %48, %32
  br i1 %29, label %54, label %55

54:                                               ; preds = %53
  tail call void @BM_face_kill(ptr noundef %0, ptr noundef %33) #10
  br label %55

55:                                               ; preds = %53, %54, %25, %27
  %56 = phi ptr [ null, %27 ], [ null, %25 ], [ %34, %54 ], [ %34, %53 ]
  ret ptr %56
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_copy(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @bmesh_sfme(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_loop_interp_multires(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_split_n(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %11 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %28, label %22

22:                                               ; preds = %18, %8
  %23 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %14, %22, %18
  %29 = icmp eq ptr %6, null
  br i1 %29, label %82, label %30

30:                                               ; preds = %28
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %82

31:                                               ; preds = %22
  %32 = tail call ptr @BM_face_copy(ptr noundef %0, ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %33 = icmp eq ptr %6, null
  %34 = select i1 %33, ptr %9, ptr %6
  %35 = call ptr @bmesh_sfme(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %34, ptr noundef %7, i8 noundef zeroext 0) #10
  %36 = icmp ne ptr %35, null
  %37 = icmp sgt i32 %5, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %31
  %40 = load ptr, ptr %34, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 2
  %42 = zext nneg i32 %5 to i64
  br label %43

43:                                               ; preds = %39, %78
  %44 = phi i64 [ 0, %39 ], [ %79, %78 ]
  %45 = phi ptr [ %41, %39 ], [ %10, %78 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = call ptr @bmesh_semv(ptr noundef %0, ptr noundef %12, ptr noundef %46, ptr noundef nonnull %10) #10
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  %49 = getelementptr inbounds [3 x float], ptr %4, i64 %44
  %50 = load float, ptr %49, align 4, !tbaa !58
  store float %50, ptr %48, align 4, !tbaa !58
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !58
  %53 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2, i64 1
  store float %52, ptr %53, align 4, !tbaa !58
  %54 = getelementptr inbounds float, ptr %49, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2, i64 2
  store float %55, ptr %56, align 4, !tbaa !58
  br label %57

57:                                               ; preds = %43, %75
  %58 = phi i32 [ 0, %43 ], [ %76, %75 ]
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %10, align 8
  %61 = select i1 %59, ptr %46, ptr %60
  %62 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !41
  br label %64

64:                                               ; preds = %70, %57
  %65 = phi ptr [ %63, %57 ], [ %72, %70 ]
  %66 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !54
  %68 = icmp eq ptr %67, %47
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  call void @BM_loop_interp_from_face(ptr noundef %0, ptr noundef %65, ptr noundef %32, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  br label %70

70:                                               ; preds = %64, %69
  %71 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = load ptr, ptr %62, align 8, !tbaa !41
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %64, !llvm.loop !80

75:                                               ; preds = %70
  %76 = add nuw nsw i32 %58, 1
  %77 = icmp eq i32 %58, 0
  br i1 %77, label %57, label %78, !llvm.loop !81

78:                                               ; preds = %75
  %79 = add nuw nsw i64 %44, 1
  %80 = icmp eq i64 %79, %42
  br i1 %80, label %81, label %43, !llvm.loop !82

81:                                               ; preds = %78, %31
  call void @BM_face_verts_kill(ptr noundef %0, ptr noundef %32) #10
  br label %82

82:                                               ; preds = %28, %30, %81
  %83 = phi ptr [ %35, %81 ], [ null, %30 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  ret ptr %83
}

declare ptr @bmesh_semv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_loop_interp_from_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_face_verts_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_face_split_edgenet(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [2 x ptr], align 16
  %8 = alloca ptr, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [2 x float], align 4
  %12 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store ptr null, ptr %8, align 8, !tbaa !53
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = icmp eq ptr %4, null
  br i1 %15, label %402, label %16

16:                                               ; preds = %14
  store ptr null, ptr %4, align 8, !tbaa !53
  store i32 0, ptr %5, align 4, !tbaa !83
  br label %402

17:                                               ; preds = %6
  %18 = add nsw i32 %3, 2
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 4
  %21 = alloca i8, i64 %20, align 16
  %22 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !70
  %24 = add nsw i32 %23, %3
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = alloca i8, i64 %26, align 16
  %28 = alloca i8, i64 %26, align 16
  %29 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 4
  %30 = load i8, ptr %29, align 2, !tbaa !84
  %31 = or i8 %30, 8
  store i8 %31, ptr %29, align 2, !tbaa !84
  %32 = icmp sgt i32 %3, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %17
  %34 = zext nneg i32 %3 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %42, %35 ]
  %37 = getelementptr inbounds ptr, ptr %2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 4
  %40 = load i8, ptr %39, align 2, !tbaa !85
  %41 = or i8 %40, 8
  store i8 %41, ptr %39, align 2, !tbaa !85
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %34
  br i1 %43, label %44, label %35, !llvm.loop !86

44:                                               ; preds = %35, %17
  %45 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !77
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %46, %44 ], [ %55, %47 ]
  %49 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !69
  %51 = getelementptr inbounds %struct.BMHeader, ptr %50, i64 0, i32 4
  %52 = load i8, ptr %51, align 2, !tbaa !85
  %53 = or i8 %52, 8
  store i8 %53, ptr %51, align 2, !tbaa !85
  %54 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = icmp eq ptr %55, %46
  br i1 %56, label %57, label %47, !llvm.loop !87

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  store ptr %59, ptr %28, align 16, !tbaa !53
  %60 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  %61 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  %62 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 1
  %63 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 2
  br label %64

64:                                               ; preds = %211, %57
  %65 = phi i32 [ undef, %57 ], [ %115, %211 ]
  %66 = phi i32 [ 1, %57 ], [ %212, %211 ]
  %67 = phi i32 [ 0, %57 ], [ %213, %211 ]
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = add i32 %66, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %28, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !53
  br label %74

74:                                               ; preds = %64, %69
  %75 = phi i32 [ %70, %69 ], [ 0, %64 ]
  %76 = phi ptr [ %73, %69 ], [ null, %64 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %214, label %78

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %79 = call fastcc zeroext i8 @bm_face_split_edgenet_find_loop_pair(ptr noundef nonnull %76, ptr noundef nonnull %60, ptr noundef nonnull %7), !range !44
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %114, label %81

81:                                               ; preds = %78
  %82 = call fastcc zeroext i8 @bm_face_split_edgenet_find_loop_walk(ptr noundef nonnull %76, ptr noundef nonnull %60, ptr noundef nonnull %21, ptr noundef nonnull %7)
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %81
  store ptr %76, ptr %27, align 16, !tbaa !53
  %85 = load ptr, ptr %61, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !57
  %88 = icmp eq ptr %87, %76
  %89 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !45
  %91 = icmp eq ptr %90, %76
  %92 = select i1 %91, ptr %87, ptr null
  %93 = select i1 %88, ptr %90, ptr %92
  br label %94

94:                                               ; preds = %94, %84
  %95 = phi ptr [ %93, %84 ], [ %109, %94 ]
  %96 = phi i32 [ 1, %84 ], [ %97, %94 ]
  %97 = add i32 %96, 1
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds ptr, ptr %27, i64 %98
  store ptr %95, ptr %99, align 8, !tbaa !53
  %100 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !34
  %102 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !57
  %104 = icmp eq ptr %103, %95
  %105 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !45
  %107 = icmp eq ptr %106, %95
  %108 = select i1 %107, ptr %103, ptr null
  %109 = select i1 %104, ptr %106, ptr %108
  %110 = icmp eq ptr %109, %76
  br i1 %110, label %111, label %94, !llvm.loop !88

111:                                              ; preds = %94
  %112 = icmp ugt i32 %97, 2
  %113 = zext i1 %112 to i8
  br label %114

114:                                              ; preds = %78, %81, %111
  %115 = phi i32 [ %65, %78 ], [ %65, %81 ], [ %97, %111 ]
  %116 = phi i8 [ 0, %78 ], [ 0, %81 ], [ %113, %111 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %211, label %118

118:                                              ; preds = %114
  %119 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %27, i32 noundef %115, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #10
  %120 = icmp eq ptr %119, null
  br i1 %120, label %211, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %8, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !53
  %126 = call i64 %125(ptr noundef nonnull %122) #10
  %127 = lshr i64 %126, 3
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi i64 [ %127, %124 ], [ 0, %121 ]
  %130 = add nsw i32 %67, 1
  %131 = sext i32 %130 to i64
  %132 = icmp ult i64 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  call void @_bli_array_grow_func(ptr noundef nonnull %8, ptr noundef null, i32 noundef 8, i32 noundef %67, i32 noundef 1, ptr noundef nonnull @.str) #10
  br label %134

134:                                              ; preds = %133, %128
  %135 = load ptr, ptr %8, align 8, !tbaa !53
  %136 = sext i32 %67 to i64
  %137 = getelementptr inbounds ptr, ptr %135, i64 %136
  store ptr %119, ptr %137, align 8, !tbaa !53
  %138 = getelementptr inbounds %struct.BMFace, ptr %119, i64 0, i32 4
  %139 = load float, ptr %60, align 4, !tbaa !58
  store float %139, ptr %138, align 4, !tbaa !58
  %140 = load float, ptr %62, align 4, !tbaa !58
  %141 = getelementptr inbounds %struct.BMFace, ptr %119, i64 0, i32 4, i64 1
  store float %140, ptr %141, align 4, !tbaa !58
  %142 = load float, ptr %63, align 4, !tbaa !58
  %143 = getelementptr inbounds %struct.BMFace, ptr %119, i64 0, i32 4, i64 2
  store float %142, ptr %143, align 4, !tbaa !58
  %144 = getelementptr inbounds %struct.BMHeader, ptr %119, i64 0, i32 4
  %145 = load i8, ptr %144, align 2, !tbaa !84
  %146 = or i8 %145, 8
  store i8 %146, ptr %144, align 2, !tbaa !84
  %147 = getelementptr inbounds %struct.BMFace, ptr %119, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !77
  %149 = getelementptr inbounds %struct.BMLoop, ptr %148, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !76
  %151 = getelementptr inbounds %struct.BMLoop, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !69
  %153 = getelementptr inbounds %struct.BMEdge, ptr %152, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !41
  %155 = icmp eq ptr %154, null
  br i1 %155, label %170, label %156

156:                                              ; preds = %134, %156
  %157 = phi i32 [ %166, %156 ], [ 0, %134 ]
  %158 = phi ptr [ %168, %156 ], [ %154, %134 ]
  %159 = getelementptr inbounds %struct.BMLoop, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !50
  %161 = getelementptr inbounds %struct.BMHeader, ptr %160, i64 0, i32 4
  %162 = load i8, ptr %161, align 2, !tbaa !84
  %163 = lshr i8 %162, 3
  %164 = and i8 %163, 1
  %165 = zext nneg i8 %164 to i32
  %166 = add i32 %157, %165
  %167 = getelementptr inbounds %struct.BMLoop, ptr %158, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !52
  %169 = icmp eq ptr %168, %154
  br i1 %169, label %170, label %156, !llvm.loop !89

170:                                              ; preds = %156, %134
  %171 = phi i32 [ 0, %134 ], [ %166, %156 ]
  %172 = icmp eq i32 %171, 1
  br label %173

173:                                              ; preds = %206, %170
  %174 = phi ptr [ %148, %170 ], [ %209, %206 ]
  %175 = phi i1 [ %172, %170 ], [ %198, %206 ]
  %176 = phi i32 [ %75, %170 ], [ %207, %206 ]
  %177 = getelementptr inbounds %struct.BMLoop, ptr %174, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !69
  %179 = getelementptr inbounds %struct.BMEdge, ptr %178, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !41
  %181 = icmp eq ptr %180, null
  br i1 %181, label %196, label %182

182:                                              ; preds = %173, %182
  %183 = phi i32 [ %192, %182 ], [ 0, %173 ]
  %184 = phi ptr [ %194, %182 ], [ %180, %173 ]
  %185 = getelementptr inbounds %struct.BMLoop, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !50
  %187 = getelementptr inbounds %struct.BMHeader, ptr %186, i64 0, i32 4
  %188 = load i8, ptr %187, align 2, !tbaa !84
  %189 = lshr i8 %188, 3
  %190 = and i8 %189, 1
  %191 = zext nneg i8 %190 to i32
  %192 = add i32 %183, %191
  %193 = getelementptr inbounds %struct.BMLoop, ptr %184, i64 0, i32 4
  %194 = load ptr, ptr %193, align 8, !tbaa !52
  %195 = icmp eq ptr %194, %180
  br i1 %195, label %196, label %182, !llvm.loop !89

196:                                              ; preds = %182, %173
  %197 = phi i32 [ 0, %173 ], [ %192, %182 ]
  %198 = icmp eq i32 %197, 1
  %199 = xor i1 %175, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.BMLoop, ptr %174, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !54
  %203 = add i32 %176, 1
  %204 = zext i32 %176 to i64
  %205 = getelementptr inbounds ptr, ptr %28, i64 %204
  store ptr %202, ptr %205, align 8, !tbaa !53
  br label %206

206:                                              ; preds = %200, %196
  %207 = phi i32 [ %203, %200 ], [ %176, %196 ]
  %208 = getelementptr inbounds %struct.BMLoop, ptr %174, i64 0, i32 6
  %209 = load ptr, ptr %208, align 8, !tbaa !60
  %210 = icmp eq ptr %209, %148
  br i1 %210, label %211, label %173, !llvm.loop !90

211:                                              ; preds = %206, %118, %114
  %212 = phi i32 [ %75, %114 ], [ %75, %118 ], [ %207, %206 ]
  %213 = phi i32 [ %67, %114 ], [ %67, %118 ], [ %130, %206 ]
  br label %64, !llvm.loop !91

214:                                              ; preds = %74
  %215 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %216 = call zeroext i8 @CustomData_has_math(ptr noundef nonnull %215) #10
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %329, label %218

218:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  %219 = load i32, ptr %22, align 8, !tbaa !70
  %220 = sext i32 %219 to i64
  %221 = shl nsw i64 %220, 3
  %222 = alloca i8, i64 %221, align 16
  %223 = alloca i8, i64 %221, align 16
  %224 = shl nsw i64 %220, 2
  %225 = alloca i8, i64 %224, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  %226 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %10, ptr noundef nonnull %226) #10
  %227 = load ptr, ptr %45, align 8, !tbaa !77
  %228 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %229 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %230 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  br label %231

231:                                              ; preds = %255, %218
  %232 = phi i64 [ %264, %255 ], [ 0, %218 ]
  %233 = phi ptr [ %266, %255 ], [ %227, %218 ]
  %234 = getelementptr inbounds %struct.BMLoop, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !54
  store i8 6, ptr %228, align 4, !tbaa !63
  store ptr @bmiter__loop_of_vert_begin, ptr %229, align 8, !tbaa !65
  store ptr @bmiter__loop_of_vert_step, ptr %230, align 8, !tbaa !66
  store ptr %235, ptr %9, align 8, !tbaa !67
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %9) #10
  %236 = load ptr, ptr %230, align 8, !tbaa !66
  %237 = call ptr %236(ptr noundef nonnull %9) #10
  %238 = icmp eq ptr %237, null
  br i1 %238, label %255, label %239

239:                                              ; preds = %231, %251
  %240 = phi ptr [ %253, %251 ], [ %237, %231 ]
  %241 = getelementptr inbounds %struct.BMLoop, ptr %240, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !50
  %243 = icmp eq ptr %242, %1
  br i1 %243, label %251, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.BMHeader, ptr %242, i64 0, i32 4
  %246 = load i8, ptr %245, align 2, !tbaa !84
  %247 = and i8 %246, 8
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %244
  %250 = load ptr, ptr %233, align 8, !tbaa !61
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %215, ptr noundef nonnull %215, ptr noundef %250, ptr noundef nonnull %240) #10
  br label %251

251:                                              ; preds = %239, %244, %249
  %252 = load ptr, ptr %230, align 8, !tbaa !66
  %253 = call ptr %252(ptr noundef nonnull %9) #10
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %239, !llvm.loop !92

255:                                              ; preds = %251, %231
  %256 = load ptr, ptr %234, align 8, !tbaa !54
  %257 = getelementptr inbounds %struct.BMHeader, ptr %256, i64 0, i32 4
  %258 = load i8, ptr %257, align 2, !tbaa !93
  %259 = or i8 %258, 8
  store i8 %259, ptr %257, align 2, !tbaa !93
  %260 = getelementptr inbounds [2 x float], ptr %223, i64 %232
  %261 = getelementptr inbounds %struct.BMVert, ptr %256, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %260, ptr noundef nonnull %10, ptr noundef nonnull %261) #10
  %262 = load ptr, ptr %233, align 8, !tbaa !61
  %263 = getelementptr inbounds ptr, ptr %222, i64 %232
  store ptr %262, ptr %263, align 8, !tbaa !53
  %264 = add nuw i64 %232, 1
  %265 = getelementptr inbounds %struct.BMLoop, ptr %233, i64 0, i32 6
  %266 = load ptr, ptr %265, align 8, !tbaa !60
  %267 = icmp eq ptr %266, %227
  br i1 %267, label %268, label %231, !llvm.loop !94

268:                                              ; preds = %255
  %269 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %270 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %271 = icmp sgt i32 %3, 0
  br i1 %271, label %272, label %328

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  %274 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  %275 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  %276 = zext nneg i32 %3 to i64
  br label %277

277:                                              ; preds = %272, %325
  %278 = phi i64 [ 0, %272 ], [ %326, %325 ]
  %279 = getelementptr inbounds ptr, ptr %2, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !53
  store i8 7, ptr %269, align 4, !tbaa !63
  store ptr @bmiter__vert_of_edge_begin, ptr %270, align 8, !tbaa !65
  store ptr @bmiter__vert_of_edge_step, ptr %230, align 8, !tbaa !66
  store ptr %280, ptr %9, align 8, !tbaa !67
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %9) #10
  %281 = load ptr, ptr %230, align 8, !tbaa !66
  %282 = call ptr %281(ptr noundef nonnull %9) #10
  %283 = icmp eq ptr %282, null
  br i1 %283, label %325, label %284

284:                                              ; preds = %277, %321
  %285 = phi ptr [ %323, %321 ], [ %282, %277 ]
  %286 = getelementptr inbounds %struct.BMHeader, ptr %285, i64 0, i32 4
  %287 = load i8, ptr %286, align 2, !tbaa !93
  %288 = and i8 %287, 8
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %321

290:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #10
  %291 = load i8, ptr %286, align 2, !tbaa !93
  %292 = or i8 %291, 8
  store i8 %292, ptr %286, align 2, !tbaa !93
  store i8 6, ptr %273, align 4, !tbaa !63
  store ptr @bmiter__loop_of_vert_begin, ptr %274, align 8, !tbaa !65
  store ptr @bmiter__loop_of_vert_step, ptr %275, align 8, !tbaa !66
  store ptr %285, ptr %12, align 8, !tbaa !67
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %12) #10
  %293 = load ptr, ptr %275, align 8, !tbaa !66
  %294 = call ptr %293(ptr noundef nonnull %12) #10
  %295 = icmp eq ptr %294, null
  br i1 %295, label %320, label %296

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.BMVert, ptr %285, i64 0, i32 2
  br label %298

298:                                              ; preds = %296, %315
  %299 = phi ptr [ null, %296 ], [ %316, %315 ]
  %300 = phi ptr [ %294, %296 ], [ %318, %315 ]
  %301 = getelementptr inbounds %struct.BMLoop, ptr %300, i64 0, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !50
  %303 = getelementptr inbounds %struct.BMHeader, ptr %302, i64 0, i32 4
  %304 = load i8, ptr %303, align 2, !tbaa !84
  %305 = and i8 %304, 8
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %298
  %308 = icmp eq ptr %299, null
  br i1 %308, label %309, label %313

309:                                              ; preds = %307
  call void @mul_v2_m3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %297) #10
  %310 = load i32, ptr %22, align 8, !tbaa !70
  call void @interp_weights_poly_v2(ptr noundef nonnull %225, ptr noundef nonnull %223, i32 noundef %310, ptr noundef nonnull %11) #10
  %311 = load i32, ptr %22, align 8, !tbaa !70
  %312 = load ptr, ptr %300, align 8, !tbaa !61
  call void @CustomData_bmesh_interp(ptr noundef nonnull %215, ptr noundef nonnull %222, ptr noundef nonnull %225, ptr noundef null, i32 noundef %311, ptr noundef %312) #10
  br label %315

313:                                              ; preds = %307
  %314 = load ptr, ptr %299, align 8, !tbaa !61
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %215, ptr noundef nonnull %215, ptr noundef %314, ptr noundef nonnull %300) #10
  br label %315

315:                                              ; preds = %298, %313, %309
  %316 = phi ptr [ %300, %309 ], [ %299, %313 ], [ %299, %298 ]
  %317 = load ptr, ptr %275, align 8, !tbaa !66
  %318 = call ptr %317(ptr noundef nonnull %12) #10
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %298, !llvm.loop !95

320:                                              ; preds = %315, %290
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #10
  br label %321

321:                                              ; preds = %284, %320
  %322 = load ptr, ptr %230, align 8, !tbaa !66
  %323 = call ptr %322(ptr noundef nonnull %9) #10
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %284, !llvm.loop !96

325:                                              ; preds = %321, %277
  %326 = add nuw nsw i64 %278, 1
  %327 = icmp eq i64 %326, %276
  br i1 %327, label %328, label %277, !llvm.loop !97

328:                                              ; preds = %325, %268
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  br label %329

329:                                              ; preds = %328, %214
  %330 = icmp sgt i32 %3, 0
  br i1 %330, label %331, label %352

331:                                              ; preds = %329
  %332 = zext nneg i32 %3 to i64
  br label %333

333:                                              ; preds = %331, %333
  %334 = phi i64 [ 0, %331 ], [ %350, %333 ]
  %335 = getelementptr inbounds ptr, ptr %2, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !53
  %337 = getelementptr inbounds %struct.BMHeader, ptr %336, i64 0, i32 4
  %338 = load i8, ptr %337, align 2, !tbaa !85
  %339 = and i8 %338, -9
  store i8 %339, ptr %337, align 2, !tbaa !85
  %340 = getelementptr inbounds %struct.BMEdge, ptr %336, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !57
  %342 = getelementptr inbounds %struct.BMHeader, ptr %341, i64 0, i32 4
  %343 = load i8, ptr %342, align 2, !tbaa !93
  %344 = and i8 %343, -9
  store i8 %344, ptr %342, align 2, !tbaa !93
  %345 = getelementptr inbounds %struct.BMEdge, ptr %336, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !45
  %347 = getelementptr inbounds %struct.BMHeader, ptr %346, i64 0, i32 4
  %348 = load i8, ptr %347, align 2, !tbaa !93
  %349 = and i8 %348, -9
  store i8 %349, ptr %347, align 2, !tbaa !93
  %350 = add nuw nsw i64 %334, 1
  %351 = icmp eq i64 %350, %332
  br i1 %351, label %352, label %333, !llvm.loop !98

352:                                              ; preds = %333, %329
  %353 = load ptr, ptr %45, align 8, !tbaa !77
  br label %354

354:                                              ; preds = %354, %352
  %355 = phi ptr [ %353, %352 ], [ %367, %354 ]
  %356 = getelementptr inbounds %struct.BMLoop, ptr %355, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !69
  %358 = getelementptr inbounds %struct.BMHeader, ptr %357, i64 0, i32 4
  %359 = load i8, ptr %358, align 2, !tbaa !85
  %360 = and i8 %359, -9
  store i8 %360, ptr %358, align 2, !tbaa !85
  %361 = getelementptr inbounds %struct.BMLoop, ptr %355, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !54
  %363 = getelementptr inbounds %struct.BMHeader, ptr %362, i64 0, i32 4
  %364 = load i8, ptr %363, align 2, !tbaa !93
  %365 = and i8 %364, -9
  store i8 %365, ptr %363, align 2, !tbaa !93
  %366 = getelementptr inbounds %struct.BMLoop, ptr %355, i64 0, i32 6
  %367 = load ptr, ptr %366, align 8, !tbaa !60
  %368 = icmp eq ptr %367, %353
  br i1 %368, label %369, label %354, !llvm.loop !99

369:                                              ; preds = %354
  %370 = icmp eq i32 %67, 0
  br i1 %370, label %377, label %371

371:                                              ; preds = %369
  %372 = load ptr, ptr %8, align 8, !tbaa !53
  %373 = load ptr, ptr %372, align 8, !tbaa !53
  call void @bmesh_face_swap_data(ptr noundef %1, ptr noundef %373) #10
  %374 = load ptr, ptr %8, align 8, !tbaa !53
  %375 = load ptr, ptr %374, align 8, !tbaa !53
  call void @BM_face_kill(ptr noundef %0, ptr noundef %375) #10
  %376 = load ptr, ptr %8, align 8, !tbaa !53
  store ptr %1, ptr %376, align 8, !tbaa !53
  br label %380

377:                                              ; preds = %369
  %378 = load i8, ptr %29, align 2, !tbaa !84
  %379 = and i8 %378, -9
  store i8 %379, ptr %29, align 2, !tbaa !84
  br label %380

380:                                              ; preds = %377, %371
  %381 = icmp sgt i32 %67, 0
  br i1 %381, label %382, label %394

382:                                              ; preds = %380
  %383 = load ptr, ptr %8, align 8, !tbaa !53
  %384 = zext nneg i32 %67 to i64
  br label %385

385:                                              ; preds = %382, %385
  %386 = phi i64 [ 0, %382 ], [ %392, %385 ]
  %387 = getelementptr inbounds ptr, ptr %383, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !53
  %389 = getelementptr inbounds %struct.BMHeader, ptr %388, i64 0, i32 4
  %390 = load i8, ptr %389, align 2, !tbaa !84
  %391 = and i8 %390, -9
  store i8 %391, ptr %389, align 2, !tbaa !84
  %392 = add nuw nsw i64 %386, 1
  %393 = icmp eq i64 %392, %384
  br i1 %393, label %394, label %385, !llvm.loop !100

394:                                              ; preds = %385, %380
  %395 = icmp eq ptr %4, null
  %396 = load ptr, ptr %8, align 8, !tbaa !53
  br i1 %395, label %398, label %397

397:                                              ; preds = %394
  store ptr %396, ptr %4, align 8, !tbaa !53
  store i32 %67, ptr %5, align 4, !tbaa !83
  br label %402

398:                                              ; preds = %394
  %399 = icmp eq ptr %396, null
  br i1 %399, label %402, label %400

400:                                              ; preds = %398
  %401 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %401(ptr noundef nonnull %396) #10
  br label %402

402:                                              ; preds = %397, %400, %398, %14, %16
  %403 = phi i8 [ 0, %16 ], [ 0, %14 ], [ 1, %398 ], [ 1, %400 ], [ 1, %397 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  ret i8 %403
}

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_math(ptr noundef) local_unnamed_addr #2

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_weights_poly_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @bmesh_face_swap_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_data_interp_from_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bmesh_jekv(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_edge_split(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [32 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr null, ptr %6, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #10
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %14 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %13, i32 noundef 19) #10
  %15 = icmp ne i8 %14, 0
  br label %16

16:                                               ; preds = %12, %5
  %17 = phi i1 [ false, %5 ], [ %15, %12 ]
  %18 = icmp eq ptr %3, null
  %19 = select i1 %18, ptr %7, ptr %3
  br i1 %17, label %20, label %78

20:                                               ; preds = %16
  %21 = load ptr, ptr %9, align 8, !tbaa !41
  br label %22

22:                                               ; preds = %44, %20
  %23 = phi i32 [ %54, %44 ], [ 1, %20 ]
  %24 = phi i64 [ %45, %44 ], [ 0, %20 ]
  %25 = phi ptr [ %51, %44 ], [ %21, %20 ]
  %26 = load ptr, ptr %6, align 8
  %27 = icmp eq ptr %26, null
  %28 = icmp ult i64 %24, 32
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store ptr %8, ptr %6, align 8, !tbaa !53
  br label %44

31:                                               ; preds = %22
  %32 = icmp eq ptr %26, %8
  %33 = or i1 %32, %27
  %34 = select i1 %32, i64 32, i64 0
  br i1 %33, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !53
  %37 = call i64 %36(ptr noundef nonnull %26) #10
  %38 = lshr i64 %37, 3
  br label %39

39:                                               ; preds = %31, %35
  %40 = phi i64 [ %34, %31 ], [ %38, %35 ]
  %41 = icmp ugt i64 %40, %24
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = trunc i64 %24 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %43, i32 noundef 1, ptr noundef nonnull @.str.3) #10
  br label %44

44:                                               ; preds = %42, %39, %30
  %45 = add nuw i64 %24, 1
  %46 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = load ptr, ptr %6, align 8, !tbaa !53
  %49 = getelementptr inbounds ptr, ptr %48, i64 %24
  store ptr %47, ptr %49, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = load ptr, ptr %9, align 8, !tbaa !41
  %53 = icmp eq ptr %51, %52
  %54 = add nuw i32 %23, 1
  br i1 %53, label %55, label %22, !llvm.loop !101

55:                                               ; preds = %44
  %56 = zext i32 %23 to i64
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi i64 [ 0, %55 ], [ %74, %57 ]
  %59 = load ptr, ptr %6, align 8, !tbaa !53
  %60 = getelementptr inbounds ptr, ptr %59, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !53
  %62 = getelementptr inbounds %struct.BMHeader, ptr %61, i64 0, i32 4
  %63 = load i8, ptr %62, align 2, !tbaa !84
  %64 = or i8 %63, 4
  store i8 %64, ptr %62, align 2, !tbaa !84
  %65 = call ptr @BM_face_copy(ptr noundef %0, ptr noundef %0, ptr noundef %61, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %66 = load ptr, ptr %6, align 8, !tbaa !53
  %67 = getelementptr inbounds ptr, ptr %66, i64 %58
  store ptr %65, ptr %67, align 8, !tbaa !53
  %68 = load ptr, ptr %6, align 8, !tbaa !53
  %69 = getelementptr inbounds ptr, ptr %68, i64 %58
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  %71 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 4
  %72 = load i8, ptr %71, align 2, !tbaa !84
  %73 = and i8 %72, -5
  store i8 %73, ptr %71, align 2, !tbaa !84
  %74 = add nuw nsw i64 %58, 1
  %75 = icmp eq i64 %74, %56
  br i1 %75, label %76, label %57, !llvm.loop !102

76:                                               ; preds = %57
  %77 = trunc i64 %45 to i32
  br label %78

78:                                               ; preds = %76, %16
  %79 = phi i32 [ 0, %16 ], [ %77, %76 ]
  %80 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = icmp eq ptr %81, %2
  %83 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !45
  %85 = icmp eq ptr %84, %2
  %86 = select i1 %85, ptr %81, ptr null
  %87 = select i1 %82, ptr %84, ptr %86
  %88 = call ptr @bmesh_semv(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %19) #10
  %89 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2
  %90 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2
  %91 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %92 = load float, ptr %90, align 4, !tbaa !58
  %93 = load float, ptr %91, align 4, !tbaa !58
  %94 = fsub float %92, %93
  store float %94, ptr %89, align 4, !tbaa !58
  %95 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !58
  %97 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !58
  %99 = fsub float %96, %98
  %100 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2, i64 1
  store float %99, ptr %100, align 4, !tbaa !58
  %101 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !58
  %103 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !58
  %105 = fsub float %102, %104
  %106 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2, i64 2
  store float %105, ptr %106, align 4, !tbaa !58
  %107 = load float, ptr %91, align 4, !tbaa !58
  %108 = call float @llvm.fmuladd.f32(float %94, float %4, float %107)
  store float %108, ptr %89, align 4, !tbaa !58
  %109 = load float, ptr %97, align 4, !tbaa !58
  %110 = call float @llvm.fmuladd.f32(float %99, float %4, float %109)
  store float %110, ptr %100, align 4, !tbaa !58
  %111 = load float, ptr %103, align 4, !tbaa !58
  %112 = call float @llvm.fmuladd.f32(float %105, float %4, float %111)
  store float %112, ptr %106, align 4, !tbaa !58
  %113 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %114 = load i8, ptr %113, align 1, !tbaa !103
  %115 = load ptr, ptr %19, align 8, !tbaa !53
  %116 = getelementptr inbounds %struct.BMHeader, ptr %115, i64 0, i32 3
  store i8 %114, ptr %116, align 1, !tbaa !103
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %1, ptr noundef %115) #10
  call void @BM_data_interp_face_vert_edge(ptr noundef %0, ptr noundef %87, ptr noundef %2, ptr noundef %88, ptr noundef %1, float noundef %4) #10
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %2, ptr noundef %87, ptr noundef %88, float noundef %4) #10
  br i1 %17, label %117, label %185

117:                                              ; preds = %78
  %118 = icmp sgt i32 %79, 0
  %119 = sext i32 %79 to i64
  br label %120

120:                                              ; preds = %117, %168
  %121 = phi i32 [ 0, %117 ], [ %169, %168 ]
  br i1 %118, label %122, label %168

122:                                              ; preds = %120
  %123 = icmp eq i32 %121, 0
  br label %128

124:                                              ; preds = %168
  %125 = icmp sgt i32 %79, 0
  br i1 %125, label %126, label %178

126:                                              ; preds = %124
  %127 = zext nneg i32 %79 to i64
  br label %171

128:                                              ; preds = %164, %122
  %129 = phi i64 [ %165, %164 ], [ 0, %122 ]
  br i1 %123, label %132, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %19, align 8, !tbaa !53
  br label %132

132:                                              ; preds = %128, %130
  %133 = phi ptr [ %131, %130 ], [ %1, %128 ]
  %134 = getelementptr inbounds %struct.BMEdge, ptr %133, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !41
  %136 = icmp ne ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr @stderr, align 8, !tbaa !53
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.BM_edge_split, i32 noundef 1220, ptr noundef nonnull @.str.6) #11
  br label %164

140:                                              ; preds = %132, %159
  %141 = phi ptr [ %161, %159 ], [ %135, %132 ]
  %142 = getelementptr inbounds %struct.BMLoop, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !50
  %144 = getelementptr inbounds %struct.BMHeader, ptr %143, i64 0, i32 4
  %145 = load i8, ptr %144, align 2, !tbaa !84
  %146 = and i8 %145, 4
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.BMFace, ptr %143, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !77
  br label %151

151:                                              ; preds = %151, %148
  %152 = phi ptr [ %150, %148 ], [ %157, %151 ]
  %153 = load ptr, ptr %6, align 8, !tbaa !53
  %154 = getelementptr inbounds ptr, ptr %153, i64 %129
  %155 = load ptr, ptr %154, align 8, !tbaa !53
  call void @BM_loop_interp_multires(ptr noundef %0, ptr noundef %152, ptr noundef %155) #10
  %156 = getelementptr inbounds %struct.BMLoop, ptr %152, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !60
  %158 = icmp eq ptr %157, %150
  br i1 %158, label %159, label %151, !llvm.loop !104

159:                                              ; preds = %151, %140
  %160 = getelementptr inbounds %struct.BMLoop, ptr %141, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !52
  %162 = load ptr, ptr %134, align 8, !tbaa !41
  %163 = icmp eq ptr %161, %162
  br i1 %163, label %164, label %140, !llvm.loop !105

164:                                              ; preds = %159, %137
  %165 = add nuw nsw i64 %129, 1
  %166 = icmp slt i64 %165, %119
  %167 = select i1 %136, i1 %166, i1 false
  br i1 %167, label %128, label %168, !llvm.loop !106

168:                                              ; preds = %164, %120
  %169 = add nuw nsw i32 %121, 1
  %170 = icmp eq i32 %121, 0
  br i1 %170, label %120, label %124, !llvm.loop !107

171:                                              ; preds = %126, %171
  %172 = phi i64 [ 0, %126 ], [ %176, %171 ]
  %173 = load ptr, ptr %6, align 8, !tbaa !53
  %174 = getelementptr inbounds ptr, ptr %173, i64 %172
  %175 = load ptr, ptr %174, align 8, !tbaa !53
  call void @BM_face_verts_kill(ptr noundef %0, ptr noundef %175) #10
  %176 = add nuw nsw i64 %172, 1
  %177 = icmp eq i64 %176, %127
  br i1 %177, label %178, label %171, !llvm.loop !108

178:                                              ; preds = %171, %124
  %179 = load ptr, ptr %6, align 8
  %180 = icmp ne ptr %179, null
  %181 = icmp ne ptr %179, %8
  %182 = and i1 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %184(ptr noundef nonnull %179) #10
  br label %185

185:                                              ; preds = %178, %183, %78
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret ptr %88
}

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_data_interp_face_vert_edge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_edge_split_n(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = add nuw nsw i32 %2, 1
  %8 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %9 = icmp eq ptr %3, null
  %10 = zext nneg i32 %2 to i64
  %11 = zext nneg i32 %2 to i64
  %12 = getelementptr ptr, ptr %3, i64 %10
  br label %13

13:                                               ; preds = %6, %24
  %14 = phi i64 [ 0, %6 ], [ %25, %24 ]
  %15 = trunc i64 %14 to i32
  %16 = sub i32 %7, %15
  %17 = sitofp i32 %16 to float
  %18 = fdiv float 1.000000e+00, %17
  %19 = load ptr, ptr %8, align 8, !tbaa !45
  %20 = tail call ptr @BM_edge_split(ptr noundef %0, ptr noundef %1, ptr noundef %19, ptr noundef null, float noundef %18)
  br i1 %9, label %24, label %21

21:                                               ; preds = %13
  %22 = xor i64 %14, -1
  %23 = getelementptr ptr, ptr %12, i64 %22
  store ptr %20, ptr %23, align 8, !tbaa !53
  br label %24

24:                                               ; preds = %13, %21
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, %11
  br i1 %26, label %27, label %13, !llvm.loop !109

27:                                               ; preds = %24, %4
  %28 = phi ptr [ null, %4 ], [ %20, %24 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_edge_calc_rotate(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %9 = call zeroext i8 @BM_edge_face_pair(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  call void @BM_edge_ordered_verts(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load ptr, ptr %7, align 8, !tbaa !53
  %13 = load ptr, ptr %8, align 8, !tbaa !53
  store ptr %13, ptr %7, align 8, !tbaa !53
  store ptr %12, ptr %8, align 8, !tbaa !53
  br label %14

14:                                               ; preds = %11, %4
  %15 = load ptr, ptr %8, align 8, !tbaa !53
  %16 = load ptr, ptr %6, align 8, !tbaa !53
  %17 = load ptr, ptr %5, align 8, !tbaa !53
  %18 = call ptr @BM_face_other_vert_loop(ptr noundef %15, ptr noundef %16, ptr noundef %17) #10
  store ptr %18, ptr %2, align 8, !tbaa !53
  %19 = load ptr, ptr %7, align 8, !tbaa !53
  %20 = load ptr, ptr %5, align 8, !tbaa !53
  %21 = load ptr, ptr %6, align 8, !tbaa !53
  %22 = call ptr @BM_face_other_vert_loop(ptr noundef %19, ptr noundef %20, ptr noundef %21) #10
  store ptr %22, ptr %3, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret void
}

declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_ordered_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_other_vert_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_edge_rotate_check(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = call zeroext i8 @BM_edge_face_pair(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = call ptr @BM_face_other_vert_loop(ptr noundef %7, ptr noundef %9, ptr noundef %11) #10
  %13 = load ptr, ptr %3, align 8, !tbaa !53
  %14 = load ptr, ptr %8, align 8, !tbaa !45
  %15 = load ptr, ptr %10, align 8, !tbaa !57
  %16 = call ptr @BM_face_other_vert_loop(ptr noundef %13, ptr noundef %14, ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %6
  %23 = load ptr, ptr %2, align 8, !tbaa !53
  %24 = load ptr, ptr %10, align 8, !tbaa !57
  %25 = load ptr, ptr %8, align 8, !tbaa !45
  %26 = call ptr @BM_face_other_vert_loop(ptr noundef %23, ptr noundef %24, ptr noundef %25) #10
  %27 = load ptr, ptr %3, align 8, !tbaa !53
  %28 = load ptr, ptr %10, align 8, !tbaa !57
  %29 = load ptr, ptr %8, align 8, !tbaa !45
  %30 = call ptr @BM_face_other_vert_loop(ptr noundef %27, ptr noundef %28, ptr noundef %29) #10
  %31 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = icmp ne ptr %32, %34
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %1, %6, %22
  %38 = phi i8 [ 0, %6 ], [ %36, %22 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i8 %38
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_edge_rotate_check_degenerate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @BM_edge_ordered_verts(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = load ptr, ptr %4, align 8, !tbaa !53
  %13 = call ptr @BM_face_other_vert_loop(ptr noundef %11, ptr noundef %12, ptr noundef %7) #10
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = load ptr, ptr %5, align 8, !tbaa !53
  %19 = call ptr @BM_face_other_vert_loop(ptr noundef %17, ptr noundef %18, ptr noundef %9) #10
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = load ptr, ptr %4, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %5, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  %26 = load float, ptr %23, align 4, !tbaa !58
  %27 = load float, ptr %25, align 4, !tbaa !58
  %28 = fsub float %26, %27
  %29 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !58
  %31 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !58
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !58
  %36 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %41 = load float, ptr %39, align 4, !tbaa !58
  %42 = load float, ptr %40, align 4, !tbaa !58
  %43 = fsub float %41, %42
  %44 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !58
  %46 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !58
  %48 = fsub float %45, %47
  %49 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !58
  %51 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !58
  %53 = fsub float %50, %52
  %54 = fmul float %33, %33
  %55 = call float @llvm.fmuladd.f32(float %28, float %28, float %54)
  %56 = call float @llvm.fmuladd.f32(float %38, float %38, float %55)
  %57 = fcmp ogt float %56, 0x38AA95A5C0000000
  br i1 %57, label %58, label %64

58:                                               ; preds = %3
  %59 = call float @sqrtf(float noundef %56) #10
  %60 = fdiv float 1.000000e+00, %59
  %61 = fmul float %28, %60
  %62 = fmul float %33, %60
  %63 = fmul float %38, %60
  br label %64

64:                                               ; preds = %3, %58
  %65 = phi float [ %61, %58 ], [ 0.000000e+00, %3 ]
  %66 = phi float [ %62, %58 ], [ 0.000000e+00, %3 ]
  %67 = phi float [ %63, %58 ], [ 0.000000e+00, %3 ]
  %68 = fmul float %48, %48
  %69 = call float @llvm.fmuladd.f32(float %43, float %43, float %68)
  %70 = call float @llvm.fmuladd.f32(float %53, float %53, float %69)
  %71 = fcmp ogt float %70, 0x38AA95A5C0000000
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = call float @sqrtf(float noundef %70) #10
  %74 = fdiv float 1.000000e+00, %73
  %75 = fmul float %43, %74
  %76 = fmul float %48, %74
  %77 = fmul float %53, %74
  br label %78

78:                                               ; preds = %64, %72
  %79 = phi float [ %76, %72 ], [ 0.000000e+00, %64 ]
  %80 = phi float [ %75, %72 ], [ 0.000000e+00, %64 ]
  %81 = phi float [ %77, %72 ], [ 0.000000e+00, %64 ]
  %82 = load ptr, ptr %4, align 8, !tbaa !53
  %83 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2
  %84 = load float, ptr %83, align 4, !tbaa !58
  %85 = load float, ptr %39, align 4, !tbaa !58
  %86 = fsub float %84, %85
  %87 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !58
  %89 = load float, ptr %44, align 4, !tbaa !58
  %90 = fsub float %88, %89
  %91 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !58
  %93 = load float, ptr %49, align 4, !tbaa !58
  %94 = fsub float %92, %93
  %95 = load ptr, ptr %5, align 8, !tbaa !53
  %96 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 2
  %97 = load float, ptr %96, align 4, !tbaa !58
  %98 = load float, ptr %40, align 4, !tbaa !58
  %99 = fsub float %97, %98
  %100 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 2, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !58
  %102 = load float, ptr %46, align 4, !tbaa !58
  %103 = fsub float %101, %102
  %104 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 2, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !58
  %106 = load float, ptr %51, align 4, !tbaa !58
  %107 = fsub float %105, %106
  %108 = fmul float %90, %90
  %109 = call float @llvm.fmuladd.f32(float %86, float %86, float %108)
  %110 = call float @llvm.fmuladd.f32(float %94, float %94, float %109)
  %111 = fcmp ogt float %110, 0x38AA95A5C0000000
  br i1 %111, label %112, label %118

112:                                              ; preds = %78
  %113 = call float @sqrtf(float noundef %110) #10
  %114 = fdiv float 1.000000e+00, %113
  %115 = fmul float %86, %114
  %116 = fmul float %90, %114
  %117 = fmul float %94, %114
  br label %118

118:                                              ; preds = %78, %112
  %119 = phi float [ %116, %112 ], [ 0.000000e+00, %78 ]
  %120 = phi float [ %115, %112 ], [ 0.000000e+00, %78 ]
  %121 = phi float [ %117, %112 ], [ 0.000000e+00, %78 ]
  %122 = fmul float %103, %103
  %123 = call float @llvm.fmuladd.f32(float %99, float %99, float %122)
  %124 = call float @llvm.fmuladd.f32(float %107, float %107, float %123)
  %125 = fcmp ogt float %124, 0x38AA95A5C0000000
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = call float @sqrtf(float noundef %124) #10
  %128 = fdiv float 1.000000e+00, %127
  %129 = fmul float %99, %128
  %130 = fmul float %103, %128
  %131 = fmul float %107, %128
  br label %132

132:                                              ; preds = %118, %126
  %133 = phi float [ %130, %126 ], [ 0.000000e+00, %118 ]
  %134 = phi float [ %129, %126 ], [ 0.000000e+00, %118 ]
  %135 = phi float [ %131, %126 ], [ 0.000000e+00, %118 ]
  %136 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %137 = load float, ptr %39, align 4, !tbaa !58
  %138 = load float, ptr %136, align 4, !tbaa !58
  %139 = fsub float %137, %138
  %140 = load float, ptr %44, align 4, !tbaa !58
  %141 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !58
  %143 = fsub float %140, %142
  %144 = load float, ptr %49, align 4, !tbaa !58
  %145 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !58
  %147 = fsub float %144, %146
  %148 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %149 = load float, ptr %40, align 4, !tbaa !58
  %150 = load float, ptr %148, align 4, !tbaa !58
  %151 = fsub float %149, %150
  %152 = load float, ptr %46, align 4, !tbaa !58
  %153 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !58
  %155 = fsub float %152, %154
  %156 = load float, ptr %51, align 4, !tbaa !58
  %157 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !58
  %159 = fsub float %156, %158
  %160 = fmul float %143, %143
  %161 = call float @llvm.fmuladd.f32(float %139, float %139, float %160)
  %162 = call float @llvm.fmuladd.f32(float %147, float %147, float %161)
  %163 = fcmp ogt float %162, 0x38AA95A5C0000000
  br i1 %163, label %164, label %170

164:                                              ; preds = %132
  %165 = call float @sqrtf(float noundef %162) #10
  %166 = fdiv float 1.000000e+00, %165
  %167 = fmul float %139, %166
  %168 = fmul float %143, %166
  %169 = fmul float %147, %166
  br label %170

170:                                              ; preds = %132, %164
  %171 = phi float [ %168, %164 ], [ 0.000000e+00, %132 ]
  %172 = phi float [ %167, %164 ], [ 0.000000e+00, %132 ]
  %173 = phi float [ %169, %164 ], [ 0.000000e+00, %132 ]
  %174 = fmul float %155, %155
  %175 = call float @llvm.fmuladd.f32(float %151, float %151, float %174)
  %176 = call float @llvm.fmuladd.f32(float %159, float %159, float %175)
  %177 = fcmp ogt float %176, 0x38AA95A5C0000000
  br i1 %177, label %178, label %184

178:                                              ; preds = %170
  %179 = call float @sqrtf(float noundef %176) #10
  %180 = fdiv float 1.000000e+00, %179
  %181 = fmul float %151, %180
  %182 = fmul float %155, %180
  %183 = fmul float %159, %180
  br label %184

184:                                              ; preds = %170, %178
  %185 = phi float [ %182, %178 ], [ 0.000000e+00, %170 ]
  %186 = phi float [ %181, %178 ], [ 0.000000e+00, %170 ]
  %187 = phi float [ %183, %178 ], [ 0.000000e+00, %170 ]
  %188 = fneg float %67
  %189 = fmul float %119, %188
  %190 = call float @llvm.fmuladd.f32(float %66, float %121, float %189)
  %191 = fneg float %65
  %192 = fmul float %121, %191
  %193 = call float @llvm.fmuladd.f32(float %67, float %120, float %192)
  %194 = fneg float %66
  %195 = fmul float %120, %194
  %196 = call float @llvm.fmuladd.f32(float %65, float %119, float %195)
  %197 = fneg float %81
  %198 = fmul float %171, %197
  %199 = call float @llvm.fmuladd.f32(float %79, float %173, float %198)
  %200 = fneg float %80
  %201 = fmul float %173, %200
  %202 = call float @llvm.fmuladd.f32(float %81, float %172, float %201)
  %203 = fneg float %79
  %204 = fmul float %172, %203
  %205 = call float @llvm.fmuladd.f32(float %80, float %171, float %204)
  %206 = fmul float %193, %202
  %207 = call float @llvm.fmuladd.f32(float %190, float %199, float %206)
  %208 = call float @llvm.fmuladd.f32(float %196, float %205, float %207)
  %209 = fcmp olt float %208, 0.000000e+00
  br i1 %209, label %238, label %210

210:                                              ; preds = %184
  %211 = fmul float %133, %188
  %212 = call float @llvm.fmuladd.f32(float %66, float %135, float %211)
  %213 = fmul float %135, %191
  %214 = call float @llvm.fmuladd.f32(float %67, float %134, float %213)
  %215 = fmul float %134, %194
  %216 = call float @llvm.fmuladd.f32(float %65, float %133, float %215)
  %217 = fmul float %185, %197
  %218 = call float @llvm.fmuladd.f32(float %79, float %187, float %217)
  %219 = fmul float %187, %200
  %220 = call float @llvm.fmuladd.f32(float %81, float %186, float %219)
  %221 = fmul float %186, %203
  %222 = call float @llvm.fmuladd.f32(float %80, float %185, float %221)
  %223 = fmul float %214, %220
  %224 = call float @llvm.fmuladd.f32(float %212, float %218, float %223)
  %225 = call float @llvm.fmuladd.f32(float %216, float %222, float %224)
  %226 = fcmp olt float %225, 0.000000e+00
  br i1 %226, label %238, label %227

227:                                              ; preds = %210
  %228 = fmul float %79, %171
  %229 = call float @llvm.fmuladd.f32(float %80, float %172, float %228)
  %230 = call float @llvm.fmuladd.f32(float %81, float %173, float %229)
  %231 = fcmp ogt float %230, 0x3FEFF7CEE0000000
  br i1 %231, label %238, label %232

232:                                              ; preds = %227
  %233 = fmul float %185, %203
  %234 = call float @llvm.fmuladd.f32(float %200, float %186, float %233)
  %235 = call float @llvm.fmuladd.f32(float %197, float %187, float %234)
  %236 = fcmp ogt float %235, 0x3FEFF7CEE0000000
  br i1 %236, label %238, label %237

237:                                              ; preds = %232
  br label %238

238:                                              ; preds = %227, %232, %210, %184, %237
  %239 = phi i8 [ 1, %237 ], [ 0, %184 ], [ 0, %210 ], [ 0, %232 ], [ 0, %227 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i8 %239
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_edge_rotate_check_beauty(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !58
  %11 = load float, ptr %6, align 4, !tbaa !58
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !58
  %15 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !58
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !58
  %20 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = fsub float %19, %21
  %23 = fmul float %17, %17
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %24)
  %26 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !58
  %33 = load float, ptr %28, align 4, !tbaa !58
  %34 = fsub float %32, %33
  %35 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !58
  %37 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !58
  %39 = fsub float %36, %38
  %40 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !58
  %42 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !58
  %44 = fsub float %41, %43
  %45 = fmul float %39, %39
  %46 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %44, float %44, float %46)
  %48 = fcmp ogt float %25, %47
  %49 = zext i1 %48 to i8
  ret i8 %49
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_edge_rotate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca [2 x ptr], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = tail call zeroext i8 @BM_edge_rotate_check(ptr noundef %1), !range !44
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %132, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  %15 = call zeroext i8 @BM_edge_face_pair(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  call void @BM_edge_ordered_verts(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8, !tbaa !53
  %19 = load ptr, ptr %9, align 8, !tbaa !53
  store ptr %19, ptr %8, align 8, !tbaa !53
  store ptr %18, ptr %9, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %14, %17
  %21 = load ptr, ptr %9, align 8, !tbaa !53
  %22 = load ptr, ptr %7, align 8, !tbaa !53
  %23 = load ptr, ptr %6, align 8, !tbaa !53
  %24 = call ptr @BM_face_other_vert_loop(ptr noundef %21, ptr noundef %22, ptr noundef %23) #10
  %25 = load ptr, ptr %8, align 8, !tbaa !53
  %26 = load ptr, ptr %6, align 8, !tbaa !53
  %27 = load ptr, ptr %7, align 8, !tbaa !53
  %28 = call ptr @BM_face_other_vert_loop(ptr noundef %25, ptr noundef %26, ptr noundef %27) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  %29 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = zext i16 %3 to i32
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %78, label %36

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !58
  %44 = load float, ptr %39, align 4, !tbaa !58
  %45 = fsub float %43, %44
  %46 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !58
  %48 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = fsub float %47, %49
  %51 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !58
  %53 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !58
  %55 = fsub float %52, %54
  %56 = fmul float %50, %50
  %57 = call float @llvm.fmuladd.f32(float %45, float %45, float %56)
  %58 = call float @llvm.fmuladd.f32(float %55, float %55, float %57)
  %59 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %60 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  %61 = load float, ptr %60, align 4, !tbaa !58
  %62 = load float, ptr %59, align 4, !tbaa !58
  %63 = fsub float %61, %62
  %64 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !58
  %66 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !58
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !58
  %71 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !58
  %73 = fsub float %70, %72
  %74 = fmul float %68, %68
  %75 = call float @llvm.fmuladd.f32(float %63, float %63, float %74)
  %76 = call float @llvm.fmuladd.f32(float %73, float %73, float %75)
  %77 = fcmp ule float %58, %76
  br i1 %77, label %132, label %78

78:                                               ; preds = %36, %20
  %79 = and i32 %33, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = call ptr @BM_edge_exists(ptr noundef %30, ptr noundef %32) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %132

84:                                               ; preds = %81, %78
  %85 = and i32 %33, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = call zeroext i8 @BM_edge_rotate_check_degenerate(ptr noundef %1, ptr noundef %24, ptr noundef %28), !range !44
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %132, label %90

90:                                               ; preds = %87, %84
  %91 = and i32 %33, 2
  %92 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %30, ptr noundef %32, ptr noundef %1, i32 noundef %91) #10
  %93 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !50
  %95 = getelementptr inbounds %struct.BMHeader, ptr %94, i64 0, i32 3
  %96 = load i8, ptr %95, align 1, !tbaa !110
  %97 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !50
  %99 = getelementptr inbounds %struct.BMHeader, ptr %98, i64 0, i32 3
  %100 = load i8, ptr %99, align 1, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr %94, ptr %5, align 16, !tbaa !53
  %101 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr %98, ptr %101, align 8, !tbaa !53
  %102 = call ptr @BM_face_edge_share_loop(ptr noundef %94, ptr noundef %1) #10
  %103 = call ptr @BM_face_edge_share_loop(ptr noundef %98, ptr noundef %1) #10
  %104 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  %106 = getelementptr inbounds %struct.BMLoop, ptr %103, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !54
  %108 = icmp eq ptr %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %90
  %110 = call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %98) #10
  br label %111

111:                                              ; preds = %90, %109
  %112 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %113 = icmp eq ptr %112, null
  br i1 %113, label %132, label %114

114:                                              ; preds = %111
  %115 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %112, ptr noundef %30) #10
  %116 = icmp eq ptr %115, null
  br i1 %116, label %132, label %117

117:                                              ; preds = %114
  %118 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %112, ptr noundef %32) #10
  %119 = icmp eq ptr %118, null
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  %121 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %112, ptr noundef nonnull %115, ptr noundef nonnull %118, ptr noundef null, ptr noundef null, i8 noundef zeroext 1)
  %122 = icmp eq ptr %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  %124 = call zeroext i8 @BM_edge_face_pair(ptr noundef %92, ptr noundef nonnull %10, ptr noundef nonnull %11) #10
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %10, align 8, !tbaa !53
  %128 = getelementptr inbounds %struct.BMHeader, ptr %127, i64 0, i32 3
  store i8 %96, ptr %128, align 1, !tbaa !110
  %129 = load ptr, ptr %11, align 8, !tbaa !53
  %130 = getelementptr inbounds %struct.BMHeader, ptr %129, i64 0, i32 3
  store i8 %100, ptr %130, align 1, !tbaa !110
  br label %131

131:                                              ; preds = %126, %123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  br label %132

132:                                              ; preds = %114, %117, %120, %111, %87, %81, %36, %4, %131
  %133 = phi ptr [ %92, %131 ], [ null, %4 ], [ null, %36 ], [ null, %81 ], [ null, %87 ], [ null, %111 ], [ null, %120 ], [ null, %117 ], [ null, %114 ]
  ret ptr %133
}

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_vert_separate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @bmesh_urmv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

declare ptr @bmesh_urmv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_loop_separate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @bmesh_urmv_loop(ptr noundef %0, ptr noundef %1) #10
  ret ptr %3
}

declare ptr @bmesh_urmv_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @bm_face_split_edgenet_find_loop_pair(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 4, ptr %5, align 4, !tbaa !63
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !66
  store ptr %0, ptr %4, align 8, !tbaa !67
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #10
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = call ptr %8(ptr noundef nonnull %4) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %3, %49
  %12 = phi ptr [ %55, %49 ], [ %9, %3 ]
  %13 = phi ptr [ %53, %49 ], [ null, %3 ]
  %14 = phi i32 [ %52, %49 ], [ 0, %3 ]
  %15 = phi i32 [ %51, %49 ], [ 0, %3 ]
  %16 = phi ptr [ %50, %49 ], [ null, %3 ]
  %17 = getelementptr inbounds %struct.BMHeader, ptr %12, i64 0, i32 4
  %18 = load i8, ptr %17, align 2, !tbaa !85
  %19 = and i8 %18, 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %21, %25
  %26 = phi i32 [ %35, %25 ], [ 0, %21 ]
  %27 = phi ptr [ %37, %25 ], [ %23, %21 ]
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 4
  %31 = load i8, ptr %30, align 2, !tbaa !84
  %32 = lshr i8 %31, 3
  %33 = and i8 %32, 1
  %34 = zext nneg i8 %33 to i32
  %35 = add i32 %26, %34
  %36 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = icmp eq ptr %37, %23
  br i1 %38, label %39, label %25, !llvm.loop !89

39:                                               ; preds = %25, %21
  %40 = phi i32 [ 0, %21 ], [ %35, %25 ]
  switch i32 %40, label %49 [
    i32 1, label %41
    i32 0, label %45
  ]

41:                                               ; preds = %39
  %42 = alloca [16 x i8], align 16
  store ptr %13, ptr %42, align 16, !tbaa !111
  %43 = getelementptr inbounds %struct.LinkNode, ptr %42, i64 0, i32 1
  store ptr %12, ptr %43, align 8, !tbaa !113
  %44 = add nsw i32 %15, 1
  br label %49

45:                                               ; preds = %39
  %46 = alloca [16 x i8], align 16
  store ptr %16, ptr %46, align 16, !tbaa !111
  %47 = getelementptr inbounds %struct.LinkNode, ptr %46, i64 0, i32 1
  store ptr %12, ptr %47, align 8, !tbaa !113
  %48 = add nsw i32 %14, 1
  br label %49

49:                                               ; preds = %41, %45, %39, %11
  %50 = phi ptr [ %16, %11 ], [ %16, %41 ], [ %46, %45 ], [ %16, %39 ]
  %51 = phi i32 [ %15, %11 ], [ %44, %41 ], [ %15, %45 ], [ %15, %39 ]
  %52 = phi i32 [ %14, %11 ], [ %14, %41 ], [ %48, %45 ], [ %14, %39 ]
  %53 = phi ptr [ %13, %11 ], [ %42, %41 ], [ %13, %45 ], [ %13, %39 ]
  %54 = load ptr, ptr %7, align 8, !tbaa !66
  %55 = call ptr %54(ptr noundef nonnull %4) #10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %11, !llvm.loop !114

57:                                               ; preds = %49, %3
  %58 = phi ptr [ null, %3 ], [ %50, %49 ]
  %59 = phi i32 [ 0, %3 ], [ %51, %49 ]
  %60 = phi i32 [ 0, %3 ], [ %52, %49 ]
  %61 = phi ptr [ null, %3 ], [ %53, %49 ]
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %181, label %63

63:                                               ; preds = %57
  %64 = icmp eq ptr %61, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %61, align 8, !tbaa !111
  store ptr null, ptr %61, align 8, !tbaa !111
  %67 = getelementptr inbounds %struct.LinkNode, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !113
  br label %69

69:                                               ; preds = %63, %65
  %70 = phi ptr [ %61, %65 ], [ null, %63 ]
  %71 = phi ptr [ %66, %65 ], [ null, %63 ]
  %72 = phi ptr [ %68, %65 ], [ null, %63 ]
  store ptr %72, ptr %2, align 8, !tbaa !53
  %73 = icmp eq i32 %60, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = icmp sgt i32 %59, 1
  br i1 %75, label %76, label %181

76:                                               ; preds = %74
  %77 = icmp eq ptr %71, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %76
  store ptr %70, ptr %71, align 8, !tbaa !111
  %79 = getelementptr inbounds %struct.LinkNode, ptr %71, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !113
  br label %81

81:                                               ; preds = %76, %78
  %82 = phi ptr [ %80, %78 ], [ null, %76 ]
  %83 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %82, ptr %83, align 8, !tbaa !53
  br label %148

84:                                               ; preds = %69
  %85 = icmp eq ptr %58, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr %58, align 8, !tbaa !111
  store ptr null, ptr %58, align 8, !tbaa !111
  %88 = getelementptr inbounds %struct.LinkNode, ptr %58, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !113
  br label %90

90:                                               ; preds = %84, %86
  %91 = phi ptr [ %87, %86 ], [ null, %84 ]
  %92 = phi ptr [ %58, %86 ], [ null, %84 ]
  %93 = phi ptr [ %89, %86 ], [ null, %84 ]
  %94 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %93, ptr %94, align 8, !tbaa !53
  %95 = icmp sgt i32 %60, 1
  br i1 %95, label %96, label %148

96:                                               ; preds = %90
  %97 = load ptr, ptr %2, align 8, !tbaa !53
  %98 = getelementptr inbounds %struct.BMEdge, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !57
  %100 = icmp eq ptr %99, %0
  %101 = getelementptr inbounds %struct.BMEdge, ptr %97, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = icmp eq ptr %102, %0
  %104 = select i1 %103, ptr %99, ptr null
  %105 = select i1 %100, ptr %102, ptr %104
  %106 = getelementptr inbounds %struct.BMEdge, ptr %93, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !57
  %108 = icmp eq ptr %107, %0
  %109 = getelementptr inbounds %struct.BMEdge, ptr %93, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = icmp eq ptr %110, %0
  %112 = select i1 %111, ptr %107, ptr null
  %113 = select i1 %108, ptr %110, ptr %112
  %114 = getelementptr inbounds %struct.BMVert, ptr %105, i64 0, i32 2
  %115 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %116 = getelementptr inbounds %struct.BMVert, ptr %113, i64 0, i32 2
  %117 = call float @angle_on_axis_v3v3v3_v3(ptr noundef nonnull %114, ptr noundef nonnull %115, ptr noundef nonnull %116, ptr noundef %1) #10
  br label %118

118:                                              ; preds = %147, %96
  %119 = phi ptr [ %131, %147 ], [ %91, %96 ]
  %120 = phi ptr [ %132, %147 ], [ %92, %96 ]
  %121 = phi float [ %145, %147 ], [ %117, %96 ]
  br label %122

122:                                              ; preds = %118, %135
  %123 = phi ptr [ %131, %135 ], [ %119, %118 ]
  %124 = phi ptr [ %132, %135 ], [ %120, %118 ]
  %125 = icmp eq ptr %123, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %123, align 8, !tbaa !111
  store ptr %124, ptr %123, align 8, !tbaa !111
  %128 = getelementptr inbounds %struct.LinkNode, ptr %123, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !113
  br label %130

130:                                              ; preds = %122, %126
  %131 = phi ptr [ %127, %126 ], [ null, %122 ]
  %132 = phi ptr [ %123, %126 ], [ %124, %122 ]
  %133 = phi ptr [ %129, %126 ], [ null, %122 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %148, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.BMEdge, ptr %133, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !57
  %138 = icmp eq ptr %137, %0
  %139 = getelementptr inbounds %struct.BMEdge, ptr %133, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !45
  %141 = icmp eq ptr %140, %0
  %142 = select i1 %141, ptr %137, ptr null
  %143 = select i1 %138, ptr %140, ptr %142
  %144 = getelementptr inbounds %struct.BMVert, ptr %143, i64 0, i32 2
  %145 = call float @angle_on_axis_v3v3v3_v3(ptr noundef nonnull %114, ptr noundef nonnull %115, ptr noundef nonnull %144, ptr noundef %1) #10
  %146 = fcmp olt float %145, %121
  br i1 %146, label %147, label %122, !llvm.loop !115

147:                                              ; preds = %135
  store ptr %133, ptr %94, align 8, !tbaa !53
  br label %118, !llvm.loop !115

148:                                              ; preds = %130, %90, %81
  %149 = load ptr, ptr %2, align 8, !tbaa !53
  %150 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !41, !nonnull !116, !noundef !116
  %152 = getelementptr inbounds %struct.BMLoop, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !50
  %154 = getelementptr inbounds %struct.BMHeader, ptr %153, i64 0, i32 4
  %155 = load i8, ptr %154, align 2, !tbaa !84
  %156 = and i8 %155, 8
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %148, %158
  %159 = phi ptr [ %161, %158 ], [ %151, %148 ]
  %160 = getelementptr inbounds %struct.BMLoop, ptr %159, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !52
  %162 = icmp ne ptr %161, %151
  call void @llvm.assume(i1 %162)
  %163 = getelementptr inbounds %struct.BMLoop, ptr %161, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !50
  %165 = getelementptr inbounds %struct.BMHeader, ptr %164, i64 0, i32 4
  %166 = load i8, ptr %165, align 2, !tbaa !84
  %167 = and i8 %166, 8
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %158, label %169

169:                                              ; preds = %158, %148
  %170 = phi ptr [ %151, %148 ], [ %161, %158 ]
  %171 = phi ptr [ %153, %148 ], [ %164, %158 ]
  %172 = getelementptr inbounds %struct.BMFace, ptr %171, i64 0, i32 4
  %173 = icmp ne ptr %172, %1
  %174 = getelementptr inbounds %struct.BMLoop, ptr %170, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !54
  %176 = icmp ne ptr %175, %0
  %177 = xor i1 %173, %176
  br i1 %177, label %181, label %178

178:                                              ; preds = %169
  %179 = getelementptr inbounds ptr, ptr %2, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !53
  store ptr %180, ptr %2, align 8, !tbaa !53
  store ptr %149, ptr %179, align 8, !tbaa !53
  br label %181

181:                                              ; preds = %169, %178, %74, %57
  %182 = phi i8 [ 0, %57 ], [ 0, %74 ], [ 1, %178 ], [ 1, %169 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i8 %182
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bm_face_split_edgenet_find_loop_walk(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, %0
  %10 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, %0
  %13 = select i1 %12, ptr %8, ptr null
  %14 = select i1 %9, ptr %11, ptr %13
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 4
  store ptr %6, ptr %15, align 8, !tbaa !34
  %16 = alloca [16 x i8], align 16
  store ptr null, ptr %16, align 16, !tbaa !111
  %17 = getelementptr inbounds %struct.LinkNode, ptr %16, i64 0, i32 1
  store ptr %14, ptr %17, align 8, !tbaa !113
  %18 = getelementptr inbounds ptr, ptr %3, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = icmp eq ptr %21, %0
  %23 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, %0
  %26 = select i1 %25, ptr %21, ptr null
  %27 = select i1 %22, ptr %24, ptr %26
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %31 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 0, i32 1
  %32 = icmp eq ptr %2, null
  br label %33

33:                                               ; preds = %182, %4
  %34 = phi ptr [ %16, %4 ], [ %183, %182 ]
  %35 = phi ptr [ null, %4 ], [ %184, %182 ]
  %36 = phi ptr [ null, %4 ], [ %185, %182 ]
  %37 = phi ptr [ null, %4 ], [ %186, %182 ]
  %38 = phi ptr [ null, %4 ], [ %187, %182 ]
  %39 = phi i32 [ 0, %4 ], [ %188, %182 ]
  %40 = phi i8 [ 0, %4 ], [ %189, %182 ]
  %41 = icmp eq ptr %34, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load ptr, ptr %34, align 8, !tbaa !111
  store ptr %38, ptr %34, align 8, !tbaa !111
  %44 = getelementptr inbounds %struct.LinkNode, ptr %34, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !113
  br label %46

46:                                               ; preds = %33, %42
  %47 = phi ptr [ %43, %42 ], [ null, %33 ]
  %48 = phi ptr [ %34, %42 ], [ %38, %33 ]
  %49 = phi ptr [ %45, %42 ], [ null, %33 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %191, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %52 = icmp eq ptr %49, %27
  br i1 %52, label %182, label %53

53:                                               ; preds = %51, %117
  %54 = phi ptr [ %118, %117 ], [ %49, %51 ]
  %55 = phi i32 [ 0, %117 ], [ %39, %51 ]
  store i8 4, ptr %28, align 4, !tbaa !63
  store ptr @bmiter__edge_of_vert_begin, ptr %29, align 8, !tbaa !65
  store ptr @bmiter__edge_of_vert_step, ptr %30, align 8, !tbaa !66
  store ptr %54, ptr %5, align 8, !tbaa !67
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #10
  %56 = load ptr, ptr %30, align 8, !tbaa !66
  %57 = call ptr %56(ptr noundef nonnull %5) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %115, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.BMVert, ptr %54, i64 0, i32 4
  br label %61

61:                                               ; preds = %59, %110
  %62 = phi ptr [ %57, %59 ], [ %113, %110 ]
  %63 = phi i32 [ %55, %59 ], [ %111, %110 ]
  %64 = load ptr, ptr %60, align 8, !tbaa !34
  %65 = icmp eq ptr %64, %62
  br i1 %65, label %110, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 4
  %68 = load i8, ptr %67, align 2, !tbaa !85
  %69 = and i8 %68, 8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %110, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !41
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %71, %75
  %76 = phi i32 [ %85, %75 ], [ 0, %71 ]
  %77 = phi ptr [ %87, %75 ], [ %73, %71 ]
  %78 = getelementptr inbounds %struct.BMLoop, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !50
  %80 = getelementptr inbounds %struct.BMHeader, ptr %79, i64 0, i32 4
  %81 = load i8, ptr %80, align 2, !tbaa !84
  %82 = lshr i8 %81, 3
  %83 = and i8 %82, 1
  %84 = zext nneg i8 %83 to i32
  %85 = add i32 %76, %84
  %86 = getelementptr inbounds %struct.BMLoop, ptr %77, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !52
  %88 = icmp eq ptr %87, %73
  br i1 %88, label %89, label %75, !llvm.loop !89

89:                                               ; preds = %75, %71
  %90 = phi i32 [ 0, %71 ], [ %85, %75 ]
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !57
  %95 = icmp eq ptr %94, %54
  %96 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !45
  %98 = icmp eq ptr %97, %54
  %99 = select i1 %98, ptr %94, ptr null
  %100 = select i1 %95, ptr %97, ptr %99
  %101 = getelementptr inbounds %struct.BMHeader, ptr %100, i64 0, i32 4
  %102 = load i8, ptr %101, align 2, !tbaa !93
  %103 = and i8 %102, 8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = add i32 %63, 1
  %107 = zext i32 %63 to i64
  %108 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 %107, i32 1
  store ptr %100, ptr %108, align 8, !tbaa !117
  %109 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 4
  store ptr %62, ptr %109, align 8, !tbaa !34
  br label %110

110:                                              ; preds = %92, %105, %61, %66, %89
  %111 = phi i32 [ %63, %89 ], [ %63, %66 ], [ %63, %61 ], [ %63, %92 ], [ %106, %105 ]
  %112 = load ptr, ptr %30, align 8, !tbaa !66
  %113 = call ptr %112(ptr noundef nonnull %5) #10
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %61, !llvm.loop !119

115:                                              ; preds = %110, %53
  %116 = phi i32 [ %55, %53 ], [ %111, %110 ]
  switch i32 %116, label %120 [
    i32 1, label %117
    i32 0, label %150
  ]

117:                                              ; preds = %115
  %118 = load ptr, ptr %31, align 8, !tbaa !117
  %119 = icmp eq ptr %118, %27
  br i1 %119, label %182, label %53

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.BMVert, ptr %54, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = getelementptr inbounds %struct.BMEdge, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !57
  %125 = icmp eq ptr %124, %54
  %126 = getelementptr inbounds %struct.BMEdge, ptr %122, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !45
  %128 = icmp eq ptr %127, %54
  %129 = select i1 %128, ptr %124, ptr null
  %130 = select i1 %125, ptr %127, ptr %129
  %131 = getelementptr inbounds %struct.BMVert, ptr %130, i64 0, i32 2
  %132 = getelementptr inbounds %struct.BMVert, ptr %54, i64 0, i32 2
  %133 = zext i32 %116 to i64
  br label %134

134:                                              ; preds = %120, %134
  %135 = phi i64 [ 0, %120 ], [ %141, %134 ]
  %136 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 %135
  %137 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 %135, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !117
  %139 = getelementptr inbounds %struct.BMVert, ptr %138, i64 0, i32 2
  %140 = call float @angle_signed_on_axis_v3v3v3_v3(ptr noundef nonnull %131, ptr noundef nonnull %132, ptr noundef nonnull %139, ptr noundef %1) #10
  store float %140, ptr %136, align 8, !tbaa !120
  %141 = add nuw nsw i64 %135, 1
  %142 = icmp eq i64 %141, %133
  br i1 %142, label %143, label %134, !llvm.loop !121

143:                                              ; preds = %134
  %144 = zext i32 %116 to i64
  call void @qsort(ptr noundef %2, i64 noundef %144, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float_reverse) #10
  %145 = alloca [16 x i8], align 16
  store ptr %36, ptr %145, align 16, !tbaa !111
  %146 = getelementptr inbounds %struct.LinkNode, ptr %145, i64 0, i32 1
  store ptr %54, ptr %146, align 8, !tbaa !113
  %147 = getelementptr inbounds %struct.BMHeader, ptr %54, i64 0, i32 4
  %148 = load i8, ptr %147, align 2, !tbaa !93
  %149 = or i8 %148, 8
  store i8 %149, ptr %147, align 2, !tbaa !93
  br label %150

150:                                              ; preds = %115, %143
  %151 = phi ptr [ %145, %143 ], [ %36, %115 ]
  %152 = icmp eq i32 %116, 0
  %153 = call i32 @llvm.usub.sat.i32(i32 %116, i32 1)
  %154 = or i1 %32, %152
  br i1 %154, label %176, label %155

155:                                              ; preds = %150, %167
  %156 = phi i32 [ %174, %167 ], [ %153, %150 ]
  %157 = phi i32 [ %156, %167 ], [ %116, %150 ]
  %158 = phi ptr [ %168, %167 ], [ %48, %150 ]
  %159 = phi ptr [ %169, %167 ], [ %37, %150 ]
  %160 = add i32 %157, -1
  %161 = zext i32 %160 to i64
  %162 = icmp eq ptr %158, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %155
  %164 = load ptr, ptr %158, align 8, !tbaa !111
  br label %167

165:                                              ; preds = %155
  %166 = alloca [16 x i8], align 16
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi ptr [ %164, %163 ], [ null, %165 ]
  %169 = phi ptr [ %158, %163 ], [ %166, %165 ]
  store ptr %159, ptr %169, align 8, !tbaa !111
  %170 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 %161, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !117
  %172 = getelementptr inbounds %struct.LinkNode, ptr %169, i64 0, i32 1
  store ptr %171, ptr %172, align 8, !tbaa !113
  %173 = icmp eq i32 %156, 0
  %174 = call i32 @llvm.usub.sat.i32(i32 %156, i32 1)
  %175 = or i1 %32, %173
  br i1 %175, label %176, label %155, !llvm.loop !122

176:                                              ; preds = %167, %150
  %177 = phi ptr [ %37, %150 ], [ %169, %167 ]
  %178 = phi ptr [ %48, %150 ], [ %168, %167 ]
  %179 = phi i32 [ %153, %150 ], [ %174, %167 ]
  %180 = icmp eq ptr %177, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %117, %51, %176, %181
  %183 = phi ptr [ %47, %176 ], [ %177, %181 ], [ %47, %51 ], [ %47, %117 ]
  %184 = phi ptr [ %35, %176 ], [ %178, %181 ], [ %35, %51 ], [ %35, %117 ]
  %185 = phi ptr [ %151, %176 ], [ %151, %181 ], [ %36, %51 ], [ %36, %117 ]
  %186 = phi ptr [ null, %176 ], [ %47, %181 ], [ %37, %51 ], [ %37, %117 ]
  %187 = phi ptr [ %178, %176 ], [ %35, %181 ], [ %48, %51 ], [ %48, %117 ]
  %188 = phi i32 [ %179, %176 ], [ %179, %181 ], [ %39, %51 ], [ 0, %117 ]
  %189 = phi i8 [ %40, %176 ], [ %40, %181 ], [ 1, %51 ], [ 1, %117 ]
  %190 = phi i32 [ 0, %176 ], [ 0, %181 ], [ 5, %51 ], [ 5, %117 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  switch i32 %190, label %211 [
    i32 0, label %33
    i32 5, label %191
  ], !llvm.loop !123

191:                                              ; preds = %46, %182
  %192 = phi ptr [ %185, %182 ], [ %36, %46 ]
  %193 = phi i8 [ %189, %182 ], [ %40, %46 ]
  br label %194

194:                                              ; preds = %207, %191
  %195 = phi ptr [ null, %191 ], [ %203, %207 ]
  %196 = phi ptr [ %192, %191 ], [ %204, %207 ]
  %197 = icmp eq ptr %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %196, align 8, !tbaa !111
  store ptr %195, ptr %196, align 8, !tbaa !111
  %200 = getelementptr inbounds %struct.LinkNode, ptr %196, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !113
  br label %202

202:                                              ; preds = %194, %198
  %203 = phi ptr [ %196, %198 ], [ %195, %194 ]
  %204 = phi ptr [ %199, %198 ], [ null, %194 ]
  %205 = phi ptr [ %201, %198 ], [ null, %194 ]
  %206 = icmp eq ptr %205, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.BMHeader, ptr %205, i64 0, i32 4
  %209 = load i8, ptr %208, align 2, !tbaa !93
  %210 = and i8 %209, -9
  store i8 %210, ptr %208, align 2, !tbaa !93
  br label %194, !llvm.loop !124

211:                                              ; preds = %182, %202
  %212 = phi i8 [ %193, %202 ], [ undef, %182 ]
  ret i8 %212
}

declare float @angle_on_axis_v3v3v3_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_signed_on_axis_v3v3v3_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @BLI_sortutil_cmp_float_reverse(ptr noundef, ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold }

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
!34 = !{!35, !37, i64 48}
!35 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !37, i64 40}
!42 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !43, i64 48, !43, i64 64}
!43 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!44 = !{i8 0, i8 2}
!45 = !{!42, !37, i64 32}
!46 = !{!42, !37, i64 48}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !37, i64 32}
!51 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!52 = !{!51, !37, i64 40}
!53 = !{!37, !37, i64 0}
!54 = !{!51, !37, i64 16}
!55 = distinct !{!55, !48, !49}
!56 = distinct !{!56, !48, !49}
!57 = !{!42, !37, i64 24}
!58 = !{!59, !59, i64 0}
!59 = !{!"float", !38, i64 0}
!60 = !{!51, !37, i64 56}
!61 = !{!51, !37, i64 0}
!62 = distinct !{!62, !48, !49}
!63 = !{!64, !38, i64 60}
!64 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!65 = !{!64, !37, i64 40}
!66 = !{!64, !37, i64 48}
!67 = !{!38, !38, i64 0}
!68 = distinct !{!68, !48, !49}
!69 = !{!51, !37, i64 24}
!70 = !{!71, !40, i64 32}
!71 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !72, i64 48}
!72 = !{!"short", !38, i64 0}
!73 = distinct !{!73, !48, !49}
!74 = distinct !{!74, !48, !49}
!75 = distinct !{!75, !48, !49}
!76 = !{!51, !37, i64 64}
!77 = !{!71, !37, i64 24}
!78 = distinct !{!78, !48, !49}
!79 = distinct !{!79, !48, !49}
!80 = distinct !{!80, !48, !49}
!81 = distinct !{!81, !48, !49}
!82 = distinct !{!82, !48, !49}
!83 = !{!40, !40, i64 0}
!84 = !{!71, !38, i64 14}
!85 = !{!42, !38, i64 14}
!86 = distinct !{!86, !48, !49}
!87 = distinct !{!87, !48, !49}
!88 = distinct !{!88, !48, !49}
!89 = distinct !{!89, !48, !49}
!90 = distinct !{!90, !48, !49}
!91 = distinct !{!91, !48, !49}
!92 = distinct !{!92, !48, !49}
!93 = !{!35, !38, i64 14}
!94 = distinct !{!94, !48, !49}
!95 = distinct !{!95, !48, !49}
!96 = distinct !{!96, !48, !49}
!97 = distinct !{!97, !48, !49}
!98 = distinct !{!98, !48, !49}
!99 = distinct !{!99, !48, !49}
!100 = distinct !{!100, !48, !49}
!101 = distinct !{!101, !48, !49}
!102 = distinct !{!102, !48, !49}
!103 = !{!42, !38, i64 13}
!104 = distinct !{!104, !48, !49}
!105 = distinct !{!105, !48, !49}
!106 = distinct !{!106, !48, !49}
!107 = distinct !{!107, !48, !49}
!108 = distinct !{!108, !48, !49}
!109 = distinct !{!109, !48, !49}
!110 = !{!71, !38, i64 13}
!111 = !{!112, !37, i64 0}
!112 = !{!"LinkNode", !37, i64 0, !37, i64 8}
!113 = !{!112, !37, i64 8}
!114 = distinct !{!114, !48, !49}
!115 = distinct !{!115, !48, !49}
!116 = !{}
!117 = !{!118, !37, i64 8}
!118 = !{!"VertOrder", !59, i64 0, !37, i64 8}
!119 = distinct !{!119, !48, !49}
!120 = !{!118, !59, i64 0}
!121 = distinct !{!121, !48, !49}
!122 = distinct !{!122, !48, !49}
!123 = distinct !{!123, !48, !49}
!124 = distinct !{!124, !48, !49}
