; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_marking.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_marking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

@__func__.BM_select_history_map_create = private unnamed_addr constant [29 x i8] c"BM_select_history_map_create\00", align 1
@__const.BM_mesh_elem_hflag_enable_test.flag_types = private unnamed_addr constant [3 x i8] c"\01\02\08", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"blender/source/blender/bmesh/intern/bmesh_marking.c\00", align 1
@__func__._bm_elem_hide_set = private unnamed_addr constant [18 x i8] c"_bm_elem_hide_set\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__const.recount_totsels.iter_types = private unnamed_addr constant [3 x i8] c"\01\02\03", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"BMEdit Selection\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_select_mode_clean_ex(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %194

8:                                                ; preds = %2
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %79, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %16, align 4, !tbaa !43
  %17 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  store ptr %20, ptr %3, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = call ptr %21(ptr noundef nonnull %3) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %15, %24
  %25 = phi ptr [ %30, %24 ], [ %22, %15 ]
  %26 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !49
  %28 = and i8 %27, -2
  store i8 %28, ptr %26, align 1, !tbaa !49
  %29 = load ptr, ptr %18, align 8, !tbaa !46
  %30 = call ptr %29(ptr noundef nonnull %3) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !llvm.loop !51

32:                                               ; preds = %24, %15
  store i32 0, ptr %12, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %32, %11
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !54
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %38, align 4, !tbaa !43
  %39 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %39, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %40, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  store ptr %42, ptr %3, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %43 = load ptr, ptr %40, align 8, !tbaa !46
  %44 = call ptr %43(ptr noundef nonnull %3) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %78, label %46

46:                                               ; preds = %37, %74
  %47 = phi ptr [ %76, %74 ], [ %44, %37 ]
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !49
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  %55 = getelementptr inbounds %struct.BMHeader, ptr %54, i64 0, i32 3
  %56 = load i8, ptr %55, align 1, !tbaa !49
  %57 = and i8 %56, 3
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, ptr %12, align 8, !tbaa !34
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %12, align 8, !tbaa !34
  %62 = or disjoint i8 %56, 1
  store i8 %62, ptr %55, align 1, !tbaa !49
  br label %63

63:                                               ; preds = %52, %59
  %64 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !49
  %68 = and i8 %67, 3
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, ptr %12, align 8, !tbaa !34
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %12, align 8, !tbaa !34
  %73 = or disjoint i8 %67, 1
  store i8 %73, ptr %66, align 1, !tbaa !49
  br label %74

74:                                               ; preds = %70, %63, %46
  %75 = load ptr, ptr %40, align 8, !tbaa !46
  %76 = call ptr %75(ptr noundef nonnull %3) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %46, !llvm.loop !60

78:                                               ; preds = %74, %37, %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %194

79:                                               ; preds = %8
  %80 = and i32 %5, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %194, label %82

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %83 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !34
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %87, align 4, !tbaa !43
  %88 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %88, align 8, !tbaa !45
  %89 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %89, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  store ptr %91, ptr %4, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %92 = load ptr, ptr %89, align 8, !tbaa !46
  %93 = call ptr %92(ptr noundef nonnull %4) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %86, %95
  %96 = phi ptr [ %101, %95 ], [ %93, %86 ]
  %97 = getelementptr inbounds %struct.BMHeader, ptr %96, i64 0, i32 3
  %98 = load i8, ptr %97, align 1, !tbaa !49
  %99 = and i8 %98, -2
  store i8 %99, ptr %97, align 1, !tbaa !49
  %100 = load ptr, ptr %89, align 8, !tbaa !46
  %101 = call ptr %100(ptr noundef nonnull %4) #12
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95, !llvm.loop !61

103:                                              ; preds = %95, %86
  store i32 0, ptr %83, align 8, !tbaa !34
  br label %104

104:                                              ; preds = %103, %82
  %105 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %106 = load i32, ptr %105, align 4, !tbaa !54
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %109, align 4, !tbaa !43
  %110 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %110, align 8, !tbaa !45
  %111 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %111, align 8, !tbaa !46
  %112 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %113 = load ptr, ptr %112, align 8, !tbaa !55
  store ptr %113, ptr %4, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %114 = load ptr, ptr %111, align 8, !tbaa !46
  %115 = call ptr %114(ptr noundef nonnull %4) #12
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %108, %117
  %118 = phi ptr [ %123, %117 ], [ %115, %108 ]
  %119 = getelementptr inbounds %struct.BMHeader, ptr %118, i64 0, i32 3
  %120 = load i8, ptr %119, align 1, !tbaa !49
  %121 = and i8 %120, -2
  store i8 %121, ptr %119, align 1, !tbaa !49
  %122 = load ptr, ptr %111, align 8, !tbaa !46
  %123 = call ptr %122(ptr noundef nonnull %4) #12
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %117, !llvm.loop !62

125:                                              ; preds = %117, %108
  store i32 0, ptr %105, align 4, !tbaa !54
  br label %126

126:                                              ; preds = %125, %104
  %127 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %128 = load i32, ptr %127, align 8, !tbaa !63
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %193, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %131, align 4, !tbaa !43
  %132 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %132, align 8, !tbaa !45
  %133 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %133, align 8, !tbaa !46
  %134 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %135 = load ptr, ptr %134, align 8, !tbaa !64
  store ptr %135, ptr %4, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %136 = load ptr, ptr %133, align 8, !tbaa !46
  %137 = call ptr %136(ptr noundef nonnull %4) #12
  %138 = icmp eq ptr %137, null
  br i1 %138, label %193, label %139

139:                                              ; preds = %130, %189
  %140 = phi ptr [ %191, %189 ], [ %137, %130 ]
  %141 = getelementptr inbounds %struct.BMHeader, ptr %140, i64 0, i32 3
  %142 = load i8, ptr %141, align 1, !tbaa !49
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %189, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.BMFace, ptr %140, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !65
  br label %148

148:                                              ; preds = %185, %145
  %149 = phi ptr [ %147, %145 ], [ %187, %185 ]
  %150 = getelementptr inbounds %struct.BMLoop, ptr %149, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !67
  %152 = getelementptr inbounds %struct.BMHeader, ptr %151, i64 0, i32 3
  %153 = load i8, ptr %152, align 1, !tbaa !49
  %154 = and i8 %153, 2
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %148
  %157 = and i8 %153, 1
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, ptr %105, align 4, !tbaa !54
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %105, align 4, !tbaa !54
  br label %162

162:                                              ; preds = %159, %156
  %163 = or i8 %153, 1
  store i8 %163, ptr %152, align 1, !tbaa !49
  %164 = getelementptr inbounds %struct.BMEdge, ptr %151, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !56
  %166 = getelementptr inbounds %struct.BMHeader, ptr %165, i64 0, i32 3
  %167 = load i8, ptr %166, align 1, !tbaa !49
  %168 = and i8 %167, 3
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = load i32, ptr %83, align 8, !tbaa !34
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr %83, align 8, !tbaa !34
  %173 = or disjoint i8 %167, 1
  store i8 %173, ptr %166, align 1, !tbaa !49
  br label %174

174:                                              ; preds = %170, %162
  %175 = getelementptr inbounds %struct.BMEdge, ptr %151, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !59
  %177 = getelementptr inbounds %struct.BMHeader, ptr %176, i64 0, i32 3
  %178 = load i8, ptr %177, align 1, !tbaa !49
  %179 = and i8 %178, 3
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i32, ptr %83, align 8, !tbaa !34
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %83, align 8, !tbaa !34
  %184 = or disjoint i8 %178, 1
  store i8 %184, ptr %177, align 1, !tbaa !49
  br label %185

185:                                              ; preds = %148, %174, %181
  %186 = getelementptr inbounds %struct.BMLoop, ptr %149, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !69
  %188 = icmp eq ptr %187, %147
  br i1 %188, label %189, label %148, !llvm.loop !70

189:                                              ; preds = %185, %139
  %190 = load ptr, ptr %133, align 8, !tbaa !46
  %191 = call ptr %190(ptr noundef nonnull %4) #12
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %139, !llvm.loop !71

193:                                              ; preds = %189, %130, %126
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %194

194:                                              ; preds = %78, %193, %79, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BM_vert_select_set(ptr nocapture noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !49
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 0
  %10 = and i8 %5, 1
  %11 = icmp eq i8 %10, 0
  br i1 %9, label %18, label %12

12:                                               ; preds = %8
  br i1 %11, label %13, label %26

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !34
  %17 = or disjoint i8 %5, 1
  br label %24

18:                                               ; preds = %8
  br i1 %11, label %26, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !34
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 8, !tbaa !34
  %23 = and i8 %5, -4
  br label %24

24:                                               ; preds = %13, %19
  %25 = phi i8 [ %23, %19 ], [ %17, %13 ]
  store i8 %25, ptr %4, align 1, !tbaa !49
  br label %26

26:                                               ; preds = %24, %18, %12, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_edge_select_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x ptr], align 16
  %6 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !49
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %121

10:                                               ; preds = %3
  %11 = icmp eq i8 %2, 0
  %12 = and i8 %7, 1
  %13 = icmp eq i8 %12, 0
  br i1 %11, label %44, label %14

14:                                               ; preds = %10
  br i1 %13, label %15, label %19

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !54
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !54
  br label %19

19:                                               ; preds = %15, %14
  %20 = or i8 %7, 1
  store i8 %20, ptr %6, align 1, !tbaa !49
  %21 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !49
  %25 = and i8 %24, 3
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !34
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !34
  %31 = or disjoint i8 %24, 1
  store i8 %31, ptr %23, align 1, !tbaa !49
  br label %32

32:                                               ; preds = %19, %27
  %33 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 3
  %36 = load i8, ptr %35, align 1, !tbaa !49
  %37 = and i8 %36, 3
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %121

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !34
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !34
  %43 = or disjoint i8 %36, 1
  store i8 %43, ptr %35, align 1, !tbaa !49
  br label %121

44:                                               ; preds = %10
  br i1 %13, label %49, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !54
  %48 = add nsw i32 %47, -1
  store i32 %48, ptr %46, align 4, !tbaa !54
  br label %49

49:                                               ; preds = %45, %44
  %50 = and i8 %7, -4
  store i8 %50, ptr %6, align 1, !tbaa !49
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 28
  %52 = load i16, ptr %51, align 8, !tbaa !72
  %53 = and i16 %52, 1
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %56 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  store ptr %57, ptr %5, align 16, !tbaa !73
  %58 = getelementptr inbounds ptr, ptr %5, i64 1
  %59 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  store ptr %60, ptr %58, align 8, !tbaa !73
  %61 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %62 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %63 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %64 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  br label %65

65:                                               ; preds = %55, %93
  %66 = phi i64 [ 0, %55 ], [ %94, %93 ]
  %67 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !73
  store i8 4, ptr %61, align 4, !tbaa !43
  store ptr @bmiter__edge_of_vert_begin, ptr %62, align 8, !tbaa !45
  store ptr @bmiter__edge_of_vert_step, ptr %63, align 8, !tbaa !46
  store ptr %68, ptr %4, align 8, !tbaa !48
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #12
  %69 = load ptr, ptr %63, align 8, !tbaa !46
  %70 = call ptr %69(ptr noundef nonnull %4) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %65, %80
  %73 = phi ptr [ %82, %80 ], [ %70, %65 ]
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.BMHeader, ptr %73, i64 0, i32 3
  %77 = load i8, ptr %76, align 1, !tbaa !49
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75, %72
  %81 = load ptr, ptr %63, align 8, !tbaa !46
  %82 = call ptr %81(ptr noundef nonnull %4) #12
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72, !llvm.loop !74

84:                                               ; preds = %80, %65
  %85 = getelementptr inbounds %struct.BMHeader, ptr %68, i64 0, i32 3
  %86 = load i8, ptr %85, align 1, !tbaa !49
  %87 = and i8 %86, 3
  %88 = icmp eq i8 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, ptr %64, align 8, !tbaa !34
  %91 = add nsw i32 %90, -1
  store i32 %91, ptr %64, align 8, !tbaa !34
  %92 = and i8 %86, -4
  store i8 %92, ptr %85, align 1, !tbaa !49
  br label %93

93:                                               ; preds = %75, %89, %84
  %94 = add nuw nsw i64 %66, 1
  %95 = icmp eq i64 %66, 0
  br i1 %95, label %65, label %96, !llvm.loop !75

96:                                               ; preds = %93
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %121

97:                                               ; preds = %49
  %98 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !56
  %100 = getelementptr inbounds %struct.BMHeader, ptr %99, i64 0, i32 3
  %101 = load i8, ptr %100, align 1, !tbaa !49
  %102 = and i8 %101, 3
  %103 = icmp eq i8 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %106 = load i32, ptr %105, align 8, !tbaa !34
  %107 = add nsw i32 %106, -1
  store i32 %107, ptr %105, align 8, !tbaa !34
  %108 = and i8 %101, -4
  store i8 %108, ptr %100, align 1, !tbaa !49
  br label %109

109:                                              ; preds = %97, %104
  %110 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !59
  %112 = getelementptr inbounds %struct.BMHeader, ptr %111, i64 0, i32 3
  %113 = load i8, ptr %112, align 1, !tbaa !49
  %114 = and i8 %113, 3
  %115 = icmp eq i8 %114, 1
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %118 = load i32, ptr %117, align 8, !tbaa !34
  %119 = add nsw i32 %118, -1
  store i32 %119, ptr %117, align 8, !tbaa !34
  %120 = and i8 %113, -4
  store i8 %120, ptr %112, align 1, !tbaa !49
  br label %121

121:                                              ; preds = %116, %109, %39, %32, %96, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_select_mode_clean(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 28
  %3 = load i16, ptr %2, align 8, !tbaa !72
  tail call void @BM_mesh_select_mode_clean_ex(ptr noundef %0, i16 noundef signext %3)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_select_mode_flush_ex(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %86, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  store ptr %13, ptr %3, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %14 = load ptr, ptr %11, align 8, !tbaa !46
  %15 = call ptr %14(ptr noundef nonnull %3) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %8, %43
  %18 = phi ptr [ %45, %43 ], [ %15, %8 ]
  %19 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !49
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !49
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !49
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = or i8 %34, 1
  store i8 %38, ptr %33, align 1, !tbaa !49
  br label %43

39:                                               ; preds = %32, %25, %17
  %40 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !49
  %42 = and i8 %41, -2
  store i8 %42, ptr %40, align 1, !tbaa !49
  br label %43

43:                                               ; preds = %37, %39
  %44 = load ptr, ptr %11, align 8, !tbaa !46
  %45 = call ptr %44(ptr noundef nonnull %3) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %17, !llvm.loop !76

47:                                               ; preds = %43, %8
  %48 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %48, align 4, !tbaa !43
  %49 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %49, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %50, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  store ptr %52, ptr %4, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %53 = load ptr, ptr %50, align 8, !tbaa !46
  %54 = call ptr %53(ptr noundef nonnull %4) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %128, label %56

56:                                               ; preds = %47, %81
  %57 = phi ptr [ %84, %81 ], [ %54, %47 ]
  %58 = getelementptr inbounds %struct.BMHeader, ptr %57, i64 0, i32 3
  %59 = load i8, ptr %58, align 1, !tbaa !49
  %60 = and i8 %59, 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.BMFace, ptr %57, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !65
  br label %65

65:                                               ; preds = %73, %62
  %66 = phi ptr [ %64, %62 ], [ %75, %73 ]
  %67 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !77
  %69 = getelementptr inbounds %struct.BMHeader, ptr %68, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !49
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  %76 = icmp eq ptr %75, %64
  br i1 %76, label %77, label %65, !llvm.loop !78

77:                                               ; preds = %73
  %78 = or i8 %59, 1
  br label %81

79:                                               ; preds = %65, %56
  %80 = and i8 %59, -2
  br label %81

81:                                               ; preds = %77, %79
  %82 = phi i8 [ %78, %77 ], [ %80, %79 ]
  store i8 %82, ptr %58, align 1, !tbaa !49
  %83 = load ptr, ptr %50, align 8, !tbaa !46
  %84 = call ptr %83(ptr noundef nonnull %4) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %128, label %56, !llvm.loop !79

86:                                               ; preds = %2
  %87 = and i32 %5, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %128, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %90, align 4, !tbaa !43
  %91 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %91, align 8, !tbaa !45
  %92 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %92, align 8, !tbaa !46
  %93 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  store ptr %94, ptr %4, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %95 = load ptr, ptr %92, align 8, !tbaa !46
  %96 = call ptr %95(ptr noundef nonnull %4) #12
  %97 = icmp eq ptr %96, null
  br i1 %97, label %128, label %98

98:                                               ; preds = %89, %123
  %99 = phi ptr [ %126, %123 ], [ %96, %89 ]
  %100 = getelementptr inbounds %struct.BMHeader, ptr %99, i64 0, i32 3
  %101 = load i8, ptr %100, align 1, !tbaa !49
  %102 = and i8 %101, 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.BMFace, ptr %99, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !65
  br label %107

107:                                              ; preds = %115, %104
  %108 = phi ptr [ %106, %104 ], [ %117, %115 ]
  %109 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !67
  %111 = getelementptr inbounds %struct.BMHeader, ptr %110, i64 0, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !49
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !69
  %118 = icmp eq ptr %117, %106
  br i1 %118, label %119, label %107, !llvm.loop !80

119:                                              ; preds = %115
  %120 = or i8 %101, 1
  br label %123

121:                                              ; preds = %107, %98
  %122 = and i8 %101, -2
  br label %123

123:                                              ; preds = %119, %121
  %124 = phi i8 [ %120, %119 ], [ %122, %121 ]
  store i8 %124, ptr %100, align 1, !tbaa !49
  %125 = load ptr, ptr %92, align 8, !tbaa !46
  %126 = call ptr %125(ptr noundef nonnull %4) #12
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %98, !llvm.loop !81

128:                                              ; preds = %81, %123, %47, %89, %86
  %129 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %130 = load ptr, ptr %129, align 8, !tbaa !82
  %131 = icmp eq ptr %130, null
  br i1 %131, label %144, label %132

132:                                              ; preds = %128, %142
  %133 = phi ptr [ %134, %142 ], [ %130, %128 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !83
  %135 = getelementptr inbounds %struct.BMEditSelection, ptr %133, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !85
  %137 = getelementptr inbounds %struct.BMHeader, ptr %136, i64 0, i32 3
  %138 = load i8, ptr %137, align 1, !tbaa !49
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  call void @BLI_freelinkN(ptr noundef nonnull %129, ptr noundef nonnull %133) #12
  br label %142

142:                                              ; preds = %141, %132
  %143 = icmp eq ptr %134, null
  br i1 %143, label %144, label %132, !llvm.loop !86

144:                                              ; preds = %142, %128
  call fastcc void @recount_totsels(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_select_history_validate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %7, %15 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.BMEditSelection, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !49
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %6) #12
  br label %15

15:                                               ; preds = %5, %14
  %16 = icmp eq ptr %7, null
  br i1 %16, label %17, label %5, !llvm.loop !86

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @recount_totsels(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x ptr], align 16
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  store i32 0, ptr %5, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !34
  store ptr %6, ptr %2, align 16, !tbaa !73
  %7 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  store ptr %5, ptr %7, align 8, !tbaa !73
  %8 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 2
  store ptr %4, ptr %8, align 16, !tbaa !73
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %23 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %24 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %28 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %29 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %30 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %32 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %33 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %36 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %37 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %39 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %40 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %41 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br label %42

42:                                               ; preds = %1, %80
  %43 = phi i64 [ 0, %1 ], [ %84, %80 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %44 = getelementptr inbounds [3 x i8], ptr @__const.recount_totsels.iter_types, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !48
  store i8 %45, ptr %9, align 4, !tbaa !43
  switch i8 %45, label %66 [
    i8 1, label %46
    i8 2, label %48
    i8 3, label %50
    i8 4, label %52
    i8 5, label %53
    i8 6, label %54
    i8 7, label %55
    i8 8, label %56
    i8 9, label %57
    i8 10, label %58
    i8 11, label %59
    i8 13, label %60
    i8 14, label %61
  ]

46:                                               ; preds = %42
  store ptr @bmiter__elem_of_mesh_begin, ptr %36, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %37, align 8, !tbaa !46
  %47 = load ptr, ptr %38, align 8, !tbaa !47
  store ptr %47, ptr %3, align 8, !tbaa !48
  br label %62

48:                                               ; preds = %42
  store ptr @bmiter__elem_of_mesh_begin, ptr %33, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %34, align 8, !tbaa !46
  %49 = load ptr, ptr %35, align 8, !tbaa !55
  store ptr %49, ptr %3, align 8, !tbaa !48
  br label %62

50:                                               ; preds = %42
  store ptr @bmiter__elem_of_mesh_begin, ptr %30, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %31, align 8, !tbaa !46
  %51 = load ptr, ptr %32, align 8, !tbaa !64
  store ptr %51, ptr %3, align 8, !tbaa !48
  br label %62

52:                                               ; preds = %42
  store ptr @bmiter__edge_of_vert_begin, ptr %28, align 8, !tbaa !45
  store ptr @bmiter__edge_of_vert_step, ptr %29, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

53:                                               ; preds = %42
  store ptr @bmiter__face_of_vert_begin, ptr %26, align 8, !tbaa !45
  store ptr @bmiter__face_of_vert_step, ptr %27, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

54:                                               ; preds = %42
  store ptr @bmiter__loop_of_vert_begin, ptr %24, align 8, !tbaa !45
  store ptr @bmiter__loop_of_vert_step, ptr %25, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

55:                                               ; preds = %42
  store ptr @bmiter__vert_of_edge_begin, ptr %22, align 8, !tbaa !45
  store ptr @bmiter__vert_of_edge_step, ptr %23, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

56:                                               ; preds = %42
  store ptr @bmiter__face_of_edge_begin, ptr %20, align 8, !tbaa !45
  store ptr @bmiter__face_of_edge_step, ptr %21, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

57:                                               ; preds = %42
  store ptr @bmiter__vert_of_face_begin, ptr %18, align 8, !tbaa !45
  store ptr @bmiter__vert_of_face_step, ptr %19, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

58:                                               ; preds = %42
  store ptr @bmiter__edge_of_face_begin, ptr %16, align 8, !tbaa !45
  store ptr @bmiter__edge_of_face_step, ptr %17, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

59:                                               ; preds = %42
  store ptr @bmiter__loop_of_face_begin, ptr %14, align 8, !tbaa !45
  store ptr @bmiter__loop_of_face_step, ptr %15, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

60:                                               ; preds = %42
  store ptr @bmiter__loop_of_loop_begin, ptr %12, align 8, !tbaa !45
  store ptr @bmiter__loop_of_loop_step, ptr %13, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

61:                                               ; preds = %42
  store ptr @bmiter__loop_of_edge_begin, ptr %10, align 8, !tbaa !45
  store ptr @bmiter__loop_of_edge_step, ptr %11, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %62

62:                                               ; preds = %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %50, %48, %46
  %63 = load ptr, ptr %39, align 8, !tbaa !45
  call void %63(ptr noundef nonnull %3) #12
  %64 = load ptr, ptr %40, align 8, !tbaa !46
  %65 = call ptr %64(ptr noundef nonnull %3) #12
  br label %66

66:                                               ; preds = %42, %62
  %67 = phi ptr [ %65, %62 ], [ null, %42 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %66, %69
  %70 = phi i32 [ %76, %69 ], [ 0, %66 ]
  %71 = phi ptr [ %78, %69 ], [ %67, %66 ]
  %72 = getelementptr inbounds %struct.BMHeader, ptr %71, i64 0, i32 3
  %73 = load i8, ptr %72, align 1, !tbaa !49
  %74 = and i8 %73, 1
  %75 = zext nneg i8 %74 to i32
  %76 = add i32 %70, %75
  %77 = load ptr, ptr %41, align 8, !tbaa !46
  %78 = call ptr %77(ptr noundef nonnull %3) #12
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %69, !llvm.loop !87

80:                                               ; preds = %69, %66
  %81 = phi i32 [ 0, %66 ], [ %76, %69 ]
  %82 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 %43
  %83 = load ptr, ptr %82, align 8, !tbaa !73
  store i32 %81, ptr %83, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  %84 = add nuw nsw i64 %43, 1
  %85 = icmp eq i64 %84, 3
  br i1 %85, label %86, label %42, !llvm.loop !89

86:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_select_mode_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 28
  %3 = load i16, ptr %2, align 8, !tbaa !72
  tail call void @BM_mesh_select_mode_flush_ex(ptr noundef %0, i16 noundef signext %3)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_deselect_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 2, ptr %3, align 4, !tbaa !43
  %4 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  store ptr %7, ptr %2, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #12
  %8 = load ptr, ptr %5, align 8, !tbaa !46
  %9 = call ptr %8(ptr noundef nonnull %2) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %1, %54
  %12 = phi ptr [ %56, %54 ], [ %9, %1 ]
  %13 = getelementptr inbounds %struct.BMHeader, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !49
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = and i8 %14, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !49
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !49
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %20
  %35 = and i8 %14, -4
  store i8 %35, ptr %13, align 1, !tbaa !49
  br label %36

36:                                               ; preds = %27, %34, %17
  %37 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = load i8, ptr %13, align 1, !tbaa !49
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %52, %44 ], [ %38, %40 ]
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !49
  %50 = and i8 %49, -2
  store i8 %50, ptr %48, align 1, !tbaa !49
  %51 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = icmp eq ptr %52, %38
  br i1 %53, label %54, label %44, !llvm.loop !93

54:                                               ; preds = %44, %11, %40, %36
  %55 = load ptr, ptr %5, align 8, !tbaa !46
  %56 = call ptr %55(ptr noundef nonnull %2) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %11, !llvm.loop !94

58:                                               ; preds = %54, %1
  %59 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %60 = load ptr, ptr %59, align 8, !tbaa !82
  %61 = icmp eq ptr %60, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %58, %72
  %63 = phi ptr [ %64, %72 ], [ %60, %58 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !83
  %65 = getelementptr inbounds %struct.BMEditSelection, ptr %63, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !85
  %67 = getelementptr inbounds %struct.BMHeader, ptr %66, i64 0, i32 3
  %68 = load i8, ptr %67, align 1, !tbaa !49
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  call void @BLI_freelinkN(ptr noundef nonnull %59, ptr noundef nonnull %63) #12
  br label %72

72:                                               ; preds = %71, %62
  %73 = icmp eq ptr %64, null
  br i1 %73, label %74, label %62, !llvm.loop !86

74:                                               ; preds = %72, %58
  call fastcc void @recount_totsels(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_select_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 2, ptr %4, align 4, !tbaa !43
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  store ptr %8, ptr %2, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #12
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = call ptr %9(ptr noundef nonnull %2) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %1, %34
  %13 = phi ptr [ %36, %34 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.BMHeader, ptr %15, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !49
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !49
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.BMHeader, ptr %13, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !49
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = or i8 %29, 1
  store i8 %33, ptr %28, align 1, !tbaa !49
  br label %34

34:                                               ; preds = %12, %20, %27, %32
  %35 = load ptr, ptr %6, align 8, !tbaa !46
  %36 = call ptr %35(ptr noundef nonnull %2) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %12, !llvm.loop !95

38:                                               ; preds = %34, %1
  %39 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %39, align 4, !tbaa !43
  %40 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %40, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %41, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %43 = load ptr, ptr %42, align 8, !tbaa !64
  store ptr %43, ptr %3, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %44 = load ptr, ptr %41, align 8, !tbaa !46
  %45 = call ptr %44(ptr noundef nonnull %3) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %74, label %47

47:                                               ; preds = %38, %70
  %48 = phi ptr [ %72, %70 ], [ %45, %38 ]
  %49 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 3
  %50 = load i8, ptr %49, align 1, !tbaa !49
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.BMFace, ptr %48, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  br label %56

56:                                               ; preds = %64, %53
  %57 = phi ptr [ %55, %53 ], [ %66, %64 ]
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !77
  %60 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !49
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !69
  %67 = icmp eq ptr %66, %55
  br i1 %67, label %68, label %56, !llvm.loop !96

68:                                               ; preds = %64
  %69 = or i8 %50, 1
  store i8 %69, ptr %49, align 1, !tbaa !49
  br label %70

70:                                               ; preds = %56, %47, %68
  %71 = load ptr, ptr %41, align 8, !tbaa !46
  %72 = call ptr %71(ptr noundef nonnull %3) #12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %47, !llvm.loop !97

74:                                               ; preds = %70, %38
  call fastcc void @recount_totsels(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_select_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !49
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %163

11:                                               ; preds = %3
  %12 = icmp eq i8 %2, 0
  br i1 %12, label %80, label %13

13:                                               ; preds = %11
  %14 = and i8 %8, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !63
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !63
  br label %20

20:                                               ; preds = %16, %13
  %21 = or i8 %8, 1
  store i8 %21, ptr %7, align 1, !tbaa !49
  %22 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  br label %28

28:                                               ; preds = %76, %20
  %29 = phi ptr [ %23, %20 ], [ %78, %76 ]
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !49
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, ptr %24, align 8, !tbaa !34
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %24, align 8, !tbaa !34
  %39 = or disjoint i8 %33, 1
  store i8 %39, ptr %32, align 1, !tbaa !49
  br label %40

40:                                               ; preds = %28, %36
  %41 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !49
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %40
  %48 = and i8 %44, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, ptr %25, align 4, !tbaa !54
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %25, align 4, !tbaa !54
  br label %53

53:                                               ; preds = %50, %47
  %54 = or i8 %44, 1
  store i8 %54, ptr %43, align 1, !tbaa !49
  %55 = getelementptr inbounds %struct.BMEdge, ptr %42, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !49
  %59 = and i8 %58, 3
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, ptr %26, align 8, !tbaa !34
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %26, align 8, !tbaa !34
  %64 = or disjoint i8 %58, 1
  store i8 %64, ptr %57, align 1, !tbaa !49
  br label %65

65:                                               ; preds = %61, %53
  %66 = getelementptr inbounds %struct.BMEdge, ptr %42, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !59
  %68 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 3
  %69 = load i8, ptr %68, align 1, !tbaa !49
  %70 = and i8 %69, 3
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, ptr %27, align 8, !tbaa !34
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %27, align 8, !tbaa !34
  %75 = or disjoint i8 %69, 1
  store i8 %75, ptr %68, align 1, !tbaa !49
  br label %76

76:                                               ; preds = %40, %65, %72
  %77 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !69
  %79 = icmp eq ptr %78, %23
  br i1 %79, label %163, label %28, !llvm.loop !98

80:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %81 = and i8 %8, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !63
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr %84, align 8, !tbaa !63
  br label %87

87:                                               ; preds = %83, %80
  %88 = and i8 %8, -4
  store i8 %88, ptr %7, align 1, !tbaa !49
  %89 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 11, ptr %89, align 4, !tbaa !43
  %90 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %90, align 8, !tbaa !45
  %91 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %91, align 8, !tbaa !46
  store ptr %1, ptr %4, align 8, !tbaa !48
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #12
  %92 = load ptr, ptr %91, align 8, !tbaa !46
  %93 = call ptr %92(ptr noundef nonnull %4) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %122, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %97 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %98 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %99

99:                                               ; preds = %95, %118
  %100 = phi ptr [ %93, %95 ], [ %120, %118 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %101 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !67
  store i8 8, ptr %96, align 4, !tbaa !43
  store ptr @bmiter__face_of_edge_begin, ptr %97, align 8, !tbaa !45
  store ptr @bmiter__face_of_edge_step, ptr %98, align 8, !tbaa !46
  store ptr %102, ptr %5, align 8, !tbaa !48
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %5) #12
  %103 = load ptr, ptr %98, align 8, !tbaa !46
  %104 = call ptr %103(ptr noundef nonnull %5) #12
  %105 = icmp eq ptr %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %99, %112
  %107 = phi ptr [ %114, %112 ], [ %104, %99 ]
  %108 = getelementptr inbounds %struct.BMHeader, ptr %107, i64 0, i32 3
  %109 = load i8, ptr %108, align 1, !tbaa !49
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load ptr, ptr %98, align 8, !tbaa !46
  %114 = call ptr %113(ptr noundef nonnull %5) #12
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %106, !llvm.loop !99

116:                                              ; preds = %112, %99
  %117 = load ptr, ptr %101, align 8, !tbaa !67
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef %117, i8 noundef zeroext 0)
  br label %118

118:                                              ; preds = %106, %116
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  %119 = load ptr, ptr %91, align 8, !tbaa !46
  %120 = call ptr %119(ptr noundef nonnull %4) #12
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %99, !llvm.loop !100

122:                                              ; preds = %118, %87
  store i8 11, ptr %89, align 4, !tbaa !43
  store ptr @bmiter__loop_of_face_begin, ptr %90, align 8, !tbaa !45
  store ptr @bmiter__loop_of_face_step, ptr %91, align 8, !tbaa !46
  store ptr %1, ptr %4, align 8, !tbaa !48
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #12
  %123 = load ptr, ptr %91, align 8, !tbaa !46
  %124 = call ptr %123(ptr noundef nonnull %4) #12
  %125 = icmp eq ptr %124, null
  br i1 %125, label %162, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %128 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %129 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %130 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  br label %131

131:                                              ; preds = %126, %158
  %132 = phi ptr [ %124, %126 ], [ %160, %158 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  %133 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !77
  store i8 4, ptr %127, align 4, !tbaa !43
  store ptr @bmiter__edge_of_vert_begin, ptr %128, align 8, !tbaa !45
  store ptr @bmiter__edge_of_vert_step, ptr %129, align 8, !tbaa !46
  store ptr %134, ptr %6, align 8, !tbaa !48
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #12
  %135 = load ptr, ptr %129, align 8, !tbaa !46
  %136 = call ptr %135(ptr noundef nonnull %6) #12
  %137 = icmp eq ptr %136, null
  br i1 %137, label %148, label %138

138:                                              ; preds = %131, %144
  %139 = phi ptr [ %146, %144 ], [ %136, %131 ]
  %140 = getelementptr inbounds %struct.BMHeader, ptr %139, i64 0, i32 3
  %141 = load i8, ptr %140, align 1, !tbaa !49
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %138
  %145 = load ptr, ptr %129, align 8, !tbaa !46
  %146 = call ptr %145(ptr noundef nonnull %6) #12
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %138, !llvm.loop !101

148:                                              ; preds = %144, %131
  %149 = load ptr, ptr %133, align 8, !tbaa !77
  %150 = getelementptr inbounds %struct.BMHeader, ptr %149, i64 0, i32 3
  %151 = load i8, ptr %150, align 1, !tbaa !49
  %152 = and i8 %151, 3
  %153 = icmp eq i8 %152, 1
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, ptr %130, align 8, !tbaa !34
  %156 = add nsw i32 %155, -1
  store i32 %156, ptr %130, align 8, !tbaa !34
  %157 = and i8 %151, -4
  store i8 %157, ptr %150, align 1, !tbaa !49
  br label %158

158:                                              ; preds = %138, %154, %148
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  %159 = load ptr, ptr %91, align 8, !tbaa !46
  %160 = call ptr %159(ptr noundef nonnull %4) #12
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %131, !llvm.loop !102

162:                                              ; preds = %158, %122
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %163

163:                                              ; preds = %76, %162, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_select_mode_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %4 = trunc i32 %1 to i16
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 28
  store i16 %4, ptr %5, align 8, !tbaa !72
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %80

8:                                                ; preds = %2
  %9 = and i32 %1, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %12, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  store ptr %16, ptr %3, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = call ptr %17(ptr noundef nonnull %3) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %78, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  br label %23

23:                                               ; preds = %20, %51
  %24 = phi ptr [ %18, %20 ], [ %53, %51 ]
  %25 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !49
  %27 = and i8 %26, 3
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  store i8 %26, ptr %25, align 1, !tbaa !49
  %30 = getelementptr inbounds %struct.BMEdge, ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !49
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, ptr %21, align 8, !tbaa !34
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %21, align 8, !tbaa !34
  %39 = or disjoint i8 %33, 1
  store i8 %39, ptr %32, align 1, !tbaa !49
  br label %40

40:                                               ; preds = %36, %29
  %41 = getelementptr inbounds %struct.BMEdge, ptr %24, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !49
  %45 = and i8 %44, 3
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, ptr %22, align 8, !tbaa !34
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %22, align 8, !tbaa !34
  %50 = or disjoint i8 %44, 1
  store i8 %50, ptr %43, align 1, !tbaa !49
  br label %51

51:                                               ; preds = %47, %40, %23
  %52 = load ptr, ptr %14, align 8, !tbaa !46
  %53 = call ptr %52(ptr noundef nonnull %3) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %78, label %23, !llvm.loop !103

55:                                               ; preds = %8
  %56 = and i32 %1, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %59, align 4, !tbaa !43
  %60 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %60, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %61, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !64
  store ptr %63, ptr %3, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %64 = load ptr, ptr %61, align 8, !tbaa !46
  %65 = call ptr %64(ptr noundef nonnull %3) #12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %58, %74
  %68 = phi ptr [ %76, %74 ], [ %65, %58 ]
  %69 = getelementptr inbounds %struct.BMHeader, ptr %68, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !49
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  call void @BM_face_select_set(ptr noundef %0, ptr noundef nonnull %68, i8 noundef zeroext 1)
  br label %74

74:                                               ; preds = %67, %73
  %75 = load ptr, ptr %61, align 8, !tbaa !46
  %76 = call ptr %75(ptr noundef nonnull %3) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %67, !llvm.loop !104

78:                                               ; preds = %51, %74, %58, %11
  %79 = load i16, ptr %5, align 8, !tbaa !72
  br label %80

80:                                               ; preds = %78, %2
  %81 = phi i16 [ %4, %2 ], [ %79, %78 ]
  call void @BM_mesh_select_mode_flush_ex(ptr noundef %0, i16 noundef signext %81)
  br label %82

82:                                               ; preds = %80, %55
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_mesh_elem_hflag_count_enabled(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @bm_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 1)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bm_mesh_flag_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  %7 = zext i8 %1 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %11, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  store ptr %15, ptr %6, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #12
  %16 = load ptr, ptr %13, align 8, !tbaa !46
  %17 = call ptr %16(ptr noundef nonnull %6) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %10
  %20 = icmp eq i8 %3, 0
  br label %21

21:                                               ; preds = %19, %38
  %22 = phi i32 [ 0, %19 ], [ %39, %38 ]
  %23 = phi ptr [ %17, %19 ], [ %41, %38 ]
  br i1 %20, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BMHeader, ptr %23, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !49
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24, %21
  %30 = getelementptr inbounds %struct.BMHeader, ptr %23, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !49
  %32 = and i8 %31, %2
  %33 = icmp ne i8 %32, 0
  %34 = zext i1 %33 to i8
  %35 = icmp eq i8 %34, %4
  %36 = zext i1 %35 to i32
  %37 = add nsw i32 %22, %36
  br label %38

38:                                               ; preds = %29, %24
  %39 = phi i32 [ %22, %24 ], [ %37, %29 ]
  %40 = load ptr, ptr %13, align 8, !tbaa !46
  %41 = call ptr %40(ptr noundef nonnull %6) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %21, !llvm.loop !105

43:                                               ; preds = %38, %10, %5
  %44 = phi i32 [ 0, %5 ], [ 0, %10 ], [ %39, %38 ]
  %45 = and i32 %7, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %48, align 4, !tbaa !43
  %49 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %49, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %50, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !55
  store ptr %52, ptr %6, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #12
  %53 = load ptr, ptr %50, align 8, !tbaa !46
  %54 = call ptr %53(ptr noundef nonnull %6) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %80, label %56

56:                                               ; preds = %47
  %57 = icmp eq i8 %3, 0
  br label %58

58:                                               ; preds = %56, %75
  %59 = phi i32 [ %44, %56 ], [ %76, %75 ]
  %60 = phi ptr [ %54, %56 ], [ %78, %75 ]
  br i1 %57, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.BMHeader, ptr %60, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !49
  %64 = and i8 %63, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61, %58
  %67 = getelementptr inbounds %struct.BMHeader, ptr %60, i64 0, i32 3
  %68 = load i8, ptr %67, align 1, !tbaa !49
  %69 = and i8 %68, %2
  %70 = icmp ne i8 %69, 0
  %71 = zext i1 %70 to i8
  %72 = icmp eq i8 %71, %4
  %73 = zext i1 %72 to i32
  %74 = add nsw i32 %59, %73
  br label %75

75:                                               ; preds = %66, %61
  %76 = phi i32 [ %59, %61 ], [ %74, %66 ]
  %77 = load ptr, ptr %50, align 8, !tbaa !46
  %78 = call ptr %77(ptr noundef nonnull %6) #12
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %58, !llvm.loop !106

80:                                               ; preds = %75, %47, %43
  %81 = phi i32 [ %44, %43 ], [ %44, %47 ], [ %76, %75 ]
  %82 = and i32 %7, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %117, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %85, align 4, !tbaa !43
  %86 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %86, align 8, !tbaa !45
  %87 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %87, align 8, !tbaa !46
  %88 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !64
  store ptr %89, ptr %6, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #12
  %90 = load ptr, ptr %87, align 8, !tbaa !46
  %91 = call ptr %90(ptr noundef nonnull %6) #12
  %92 = icmp eq ptr %91, null
  br i1 %92, label %117, label %93

93:                                               ; preds = %84
  %94 = icmp eq i8 %3, 0
  br label %95

95:                                               ; preds = %93, %112
  %96 = phi i32 [ %81, %93 ], [ %113, %112 ]
  %97 = phi ptr [ %91, %93 ], [ %115, %112 ]
  br i1 %94, label %103, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.BMHeader, ptr %97, i64 0, i32 3
  %100 = load i8, ptr %99, align 1, !tbaa !49
  %101 = and i8 %100, 2
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98, %95
  %104 = getelementptr inbounds %struct.BMHeader, ptr %97, i64 0, i32 3
  %105 = load i8, ptr %104, align 1, !tbaa !49
  %106 = and i8 %105, %2
  %107 = icmp ne i8 %106, 0
  %108 = zext i1 %107 to i8
  %109 = icmp eq i8 %108, %4
  %110 = zext i1 %109 to i32
  %111 = add nsw i32 %96, %110
  br label %112

112:                                              ; preds = %103, %98
  %113 = phi i32 [ %96, %98 ], [ %111, %103 ]
  %114 = load ptr, ptr %87, align 8, !tbaa !46
  %115 = call ptr %114(ptr noundef nonnull %6) #12
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %95, !llvm.loop !107

117:                                              ; preds = %112, %84, %80
  %118 = phi i32 [ %81, %80 ], [ %81, %84 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_mesh_elem_hflag_count_disabled(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @bm_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 0)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_elem_select_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !108
  switch i8 %5, label %29 [
    i8 1, label %6
    i8 2, label %27
    i8 8, label %28
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !49
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = icmp eq i8 %2, 0
  %13 = and i8 %8, 1
  %14 = icmp eq i8 %13, 0
  br i1 %12, label %21, label %15

15:                                               ; preds = %11
  br i1 %14, label %16, label %29

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !34
  %20 = or disjoint i8 %8, 1
  store i8 %20, ptr %7, align 1, !tbaa !49
  br label %29

21:                                               ; preds = %11
  br i1 %14, label %29, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !34
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 8, !tbaa !34
  %26 = and i8 %8, -4
  store i8 %26, ptr %7, align 1, !tbaa !49
  br label %29

27:                                               ; preds = %3
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2)
  br label %29

28:                                               ; preds = %3
  tail call void @BM_face_select_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2)
  br label %29

29:                                               ; preds = %22, %21, %16, %15, %6, %3, %28, %27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BM_mesh_active_face_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  store ptr %1, ptr %3, align 8, !tbaa !110
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_mesh_active_face_get(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.BMHeader, ptr %6, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !49
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %10, %3
  %16 = icmp eq i8 %1, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = icmp ne i8 %2, 0
  br label %23

23:                                               ; preds = %21, %39
  %24 = phi ptr [ %19, %21 ], [ %41, %39 ]
  %25 = getelementptr inbounds %struct.BMEditSelection, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 8, !tbaa !111
  %27 = icmp eq i8 %26, 8
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.BMEditSelection, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 3
  %32 = load i8, ptr %31, align 1, !tbaa !49
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = and i8 %32, 1
  %37 = icmp eq i8 %36, 0
  %38 = and i1 %22, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %28, %23
  %40 = getelementptr inbounds %struct.BMEditSelection, ptr %24, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %23, !llvm.loop !112

43:                                               ; preds = %39, %35, %17
  %44 = phi ptr [ null, %17 ], [ null, %39 ], [ %30, %35 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %47, align 4, !tbaa !43
  %48 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %48, align 8, !tbaa !45
  %49 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %49, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  store ptr %51, ptr %4, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %52 = load ptr, ptr %49, align 8, !tbaa !46
  %53 = call ptr %52(ptr noundef nonnull %4) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %46, %61
  %56 = phi ptr [ %63, %61 ], [ %53, %46 ]
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !49
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load ptr, ptr %49, align 8, !tbaa !46
  %63 = call ptr %62(ptr noundef nonnull %4) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %55, !llvm.loop !113

65:                                               ; preds = %55, %61, %46, %43
  %66 = phi ptr [ %44, %43 ], [ null, %46 ], [ null, %61 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %67

67:                                               ; preds = %8, %10, %15, %65
  %68 = phi ptr [ %66, %65 ], [ null, %15 ], [ %6, %10 ], [ %6, %8 ]
  ret ptr %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_mesh_active_edge_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !tbaa !111
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ undef, %5 ]
  br i1 %8, label %15, label %14

14:                                               ; preds = %12, %1
  br label %15

15:                                               ; preds = %12, %14
  %16 = phi ptr [ %13, %12 ], [ null, %14 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_mesh_active_vert_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !tbaa !111
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ undef, %5 ]
  br i1 %8, label %15, label %14

14:                                               ; preds = %12, %1
  br label %15

15:                                               ; preds = %12, %14
  %16 = phi ptr [ %13, %12 ], [ null, %14 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_mesh_active_elem_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_editselection_center(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !111
  switch i8 %4, label %28 [
    i8 1, label %5
    i8 2, label %16
    i8 8, label %25
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !115
  store float %9, ptr %1, align 4, !tbaa !115
  %10 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !115
  %12 = getelementptr inbounds float, ptr %1, i64 1
  store float %11, ptr %12, align 4, !tbaa !115
  %13 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !115
  %15 = getelementptr inbounds float, ptr %1, i64 2
  store float %14, ptr %15, align 4, !tbaa !115
  br label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  %22 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  tail call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %21, ptr noundef nonnull %24) #12
  br label %28

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  tail call void @BM_face_calc_center_mean(ptr noundef %27, ptr noundef %1) #12
  br label %28

28:                                               ; preds = %2, %16, %25, %5
  ret void
}

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_editselection_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !111
  switch i8 %4, label %100 [
    i8 1, label %5
    i8 2, label %16
    i8 8, label %89
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !115
  store float %9, ptr %1, align 4, !tbaa !115
  %10 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !115
  %12 = getelementptr inbounds float, ptr %1, i64 1
  store float %11, ptr %12, align 4, !tbaa !115
  %13 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 3, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !115
  %15 = getelementptr inbounds float, ptr %1, i64 2
  store float %14, ptr %15, align 4, !tbaa !115
  br label %100

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 3
  %22 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 3
  %25 = load float, ptr %21, align 4, !tbaa !115
  %26 = load float, ptr %24, align 4, !tbaa !115
  %27 = fadd float %25, %26
  store float %27, ptr %1, align 4, !tbaa !115
  %28 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !115
  %30 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !115
  %32 = fadd float %29, %31
  %33 = getelementptr inbounds float, ptr %1, i64 1
  store float %32, ptr %33, align 4, !tbaa !115
  %34 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 3, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !115
  %36 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !115
  %38 = fadd float %35, %37
  %39 = getelementptr inbounds float, ptr %1, i64 2
  store float %38, ptr %39, align 4, !tbaa !115
  %40 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %41 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  %42 = load float, ptr %40, align 4, !tbaa !115
  %43 = load float, ptr %41, align 4, !tbaa !115
  %44 = fsub float %42, %43
  %45 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !115
  %47 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !115
  %49 = fsub float %46, %48
  %50 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !115
  %52 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !115
  %54 = fsub float %51, %53
  %55 = fneg float %38
  %56 = fmul float %49, %55
  %57 = tail call float @llvm.fmuladd.f32(float %32, float %54, float %56)
  %58 = fneg float %27
  %59 = fmul float %54, %58
  %60 = tail call float @llvm.fmuladd.f32(float %38, float %44, float %59)
  %61 = fneg float %32
  %62 = fmul float %44, %61
  %63 = tail call float @llvm.fmuladd.f32(float %27, float %49, float %62)
  %64 = fneg float %54
  %65 = fmul float %60, %64
  %66 = tail call float @llvm.fmuladd.f32(float %49, float %63, float %65)
  store float %66, ptr %1, align 4, !tbaa !115
  %67 = fneg float %44
  %68 = fmul float %63, %67
  %69 = tail call float @llvm.fmuladd.f32(float %54, float %57, float %68)
  store float %69, ptr %33, align 4, !tbaa !115
  %70 = fneg float %49
  %71 = fmul float %57, %70
  %72 = tail call float @llvm.fmuladd.f32(float %44, float %60, float %71)
  store float %72, ptr %39, align 4, !tbaa !115
  %73 = fmul float %69, %69
  %74 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %73)
  %75 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %74)
  %76 = fcmp ogt float %75, 0x38AA95A5C0000000
  br i1 %76, label %77, label %86

77:                                               ; preds = %16
  %78 = tail call float @sqrtf(float noundef %75) #12
  %79 = fdiv float 1.000000e+00, %78
  %80 = load float, ptr %1, align 4, !tbaa !115
  %81 = fmul float %80, %79
  store float %81, ptr %1, align 4, !tbaa !115
  %82 = load float, ptr %33, align 4, !tbaa !115
  %83 = fmul float %79, %82
  store float %83, ptr %33, align 4, !tbaa !115
  %84 = load float, ptr %39, align 4, !tbaa !115
  %85 = fmul float %79, %84
  br label %87

86:                                               ; preds = %16
  store float 0.000000e+00, ptr %1, align 4, !tbaa !115
  store float 0.000000e+00, ptr %33, align 4, !tbaa !115
  br label %87

87:                                               ; preds = %77, %86
  %88 = phi float [ 0.000000e+00, %86 ], [ %85, %77 ]
  store float %88, ptr %39, align 4, !tbaa !115
  br label %100

89:                                               ; preds = %2
  %90 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !85
  %92 = getelementptr inbounds %struct.BMFace, ptr %91, i64 0, i32 4
  %93 = load float, ptr %92, align 4, !tbaa !115
  store float %93, ptr %1, align 4, !tbaa !115
  %94 = getelementptr inbounds %struct.BMFace, ptr %91, i64 0, i32 4, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !115
  %96 = getelementptr inbounds float, ptr %1, i64 1
  store float %95, ptr %96, align 4, !tbaa !115
  %97 = getelementptr inbounds %struct.BMFace, ptr %91, i64 0, i32 4, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !115
  %99 = getelementptr inbounds float, ptr %1, i64 2
  store float %98, ptr %99, align 4, !tbaa !115
  br label %100

100:                                              ; preds = %2, %87, %89, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_editselection_plane(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !111
  switch i8 %5, label %212 [
    i8 1, label %6
    i8 2, label %115
    i8 8, label %209
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMEditSelection, ptr %10, i64 0, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !111
  switch i8 %14, label %38 [
    i8 1, label %15
    i8 2, label %26
    i8 8, label %35
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.BMEditSelection, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !115
  store float %19, ptr %3, align 4, !tbaa !115
  %20 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !115
  %22 = getelementptr inbounds float, ptr %3, i64 1
  store float %21, ptr %22, align 4, !tbaa !115
  %23 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !115
  %25 = getelementptr inbounds float, ptr %3, i64 2
  store float %24, ptr %25, align 4, !tbaa !115
  br label %38

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.BMEditSelection, ptr %10, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %32 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %31, ptr noundef nonnull %34) #12
  br label %38

35:                                               ; preds = %12
  %36 = getelementptr inbounds %struct.BMEditSelection, ptr %10, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  call void @BM_face_calc_center_mean(ptr noundef %37, ptr noundef nonnull %3) #12
  br label %38

38:                                               ; preds = %12, %15, %26, %35
  %39 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %40 = load float, ptr %3, align 4, !tbaa !115
  %41 = load float, ptr %39, align 4, !tbaa !115
  %42 = fsub float %40, %41
  store float %42, ptr %1, align 4, !tbaa !115
  %43 = getelementptr inbounds float, ptr %3, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !115
  %45 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !115
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds float, ptr %1, i64 1
  store float %47, ptr %48, align 4, !tbaa !115
  %49 = getelementptr inbounds float, ptr %3, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !115
  %51 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !115
  %53 = fsub float %50, %52
  br label %91

54:                                               ; preds = %6
  %55 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 3
  %56 = load float, ptr %55, align 4, !tbaa !115
  %57 = fcmp olt float %56, 5.000000e-01
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store float 1.000000e+00, ptr %3, align 4, !tbaa !115
  br label %67

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 3, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !115
  %62 = fcmp olt float %61, 5.000000e-01
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 1.000000e+00, ptr %64, align 4, !tbaa !115
  br label %67

65:                                               ; preds = %59
  %66 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 1.000000e+00, ptr %66, align 4, !tbaa !115
  br label %67

67:                                               ; preds = %63, %65, %58
  %68 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 3, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !115
  %70 = getelementptr inbounds float, ptr %3, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !115
  %72 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 3, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !115
  %74 = getelementptr inbounds float, ptr %3, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !115
  %76 = fneg float %73
  %77 = fmul float %75, %76
  %78 = tail call float @llvm.fmuladd.f32(float %69, float %71, float %77)
  store float %78, ptr %1, align 4, !tbaa !115
  %79 = load float, ptr %72, align 4, !tbaa !115
  %80 = load float, ptr %3, align 4, !tbaa !115
  %81 = load float, ptr %55, align 4, !tbaa !115
  %82 = fneg float %81
  %83 = fmul float %71, %82
  %84 = tail call float @llvm.fmuladd.f32(float %79, float %80, float %83)
  %85 = getelementptr inbounds float, ptr %1, i64 1
  store float %84, ptr %85, align 4, !tbaa !115
  %86 = load float, ptr %55, align 4, !tbaa !115
  %87 = load float, ptr %68, align 4, !tbaa !115
  %88 = fneg float %87
  %89 = fmul float %80, %88
  %90 = tail call float @llvm.fmuladd.f32(float %86, float %75, float %89)
  br label %91

91:                                               ; preds = %67, %38
  %92 = phi float [ %90, %67 ], [ %53, %38 ]
  %93 = getelementptr inbounds float, ptr %1, i64 2
  store float %92, ptr %93, align 4, !tbaa !115
  %94 = load float, ptr %1, align 4, !tbaa !115
  %95 = getelementptr inbounds float, ptr %1, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !115
  %97 = fmul float %96, %96
  %98 = call float @llvm.fmuladd.f32(float %94, float %94, float %97)
  %99 = getelementptr inbounds float, ptr %1, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !115
  %101 = call float @llvm.fmuladd.f32(float %100, float %100, float %98)
  %102 = fcmp ogt float %101, 0x38AA95A5C0000000
  br i1 %102, label %103, label %112

103:                                              ; preds = %91
  %104 = call float @sqrtf(float noundef %101) #12
  %105 = fdiv float 1.000000e+00, %104
  %106 = load float, ptr %1, align 4, !tbaa !115
  %107 = fmul float %106, %105
  store float %107, ptr %1, align 4, !tbaa !115
  %108 = load float, ptr %95, align 4, !tbaa !115
  %109 = fmul float %105, %108
  store float %109, ptr %95, align 4, !tbaa !115
  %110 = load float, ptr %99, align 4, !tbaa !115
  %111 = fmul float %105, %110
  br label %113

112:                                              ; preds = %91
  store float 0.000000e+00, ptr %1, align 4, !tbaa !115
  store float 0.000000e+00, ptr %95, align 4, !tbaa !115
  br label %113

113:                                              ; preds = %103, %112
  %114 = phi float [ 0.000000e+00, %112 ], [ %111, %103 ]
  store float %114, ptr %99, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %212

115:                                              ; preds = %2
  %116 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !85
  %118 = getelementptr inbounds %struct.BMEdge, ptr %117, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !90
  %120 = icmp eq ptr %119, null
  br i1 %120, label %149, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.BMLoop, ptr %119, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !92
  %124 = icmp eq ptr %123, %119
  br i1 %124, label %125, label %149

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.BMLoop, ptr %119, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !77
  %128 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2
  %129 = getelementptr inbounds %struct.BMLoop, ptr %119, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !69
  %131 = getelementptr inbounds %struct.BMLoop, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !77
  %133 = getelementptr inbounds %struct.BMVert, ptr %132, i64 0, i32 2
  %134 = load float, ptr %128, align 4, !tbaa !115
  %135 = load float, ptr %133, align 4, !tbaa !115
  %136 = fsub float %134, %135
  store float %136, ptr %1, align 4, !tbaa !115
  %137 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !115
  %139 = getelementptr inbounds %struct.BMVert, ptr %132, i64 0, i32 2, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !115
  %141 = fsub float %138, %140
  %142 = getelementptr inbounds float, ptr %1, i64 1
  store float %141, ptr %142, align 4, !tbaa !115
  %143 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !115
  %145 = getelementptr inbounds %struct.BMVert, ptr %132, i64 0, i32 2, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !115
  %147 = fsub float %144, %146
  %148 = getelementptr inbounds float, ptr %1, i64 2
  store float %147, ptr %148, align 4, !tbaa !115
  br label %187

149:                                              ; preds = %115, %121
  %150 = getelementptr inbounds %struct.BMEdge, ptr %117, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !59
  %152 = getelementptr inbounds %struct.BMVert, ptr %151, i64 0, i32 2
  %153 = getelementptr inbounds %struct.BMVert, ptr %151, i64 0, i32 2, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !115
  %155 = getelementptr inbounds %struct.BMEdge, ptr %117, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  %157 = getelementptr inbounds %struct.BMVert, ptr %156, i64 0, i32 2
  %158 = getelementptr inbounds %struct.BMVert, ptr %156, i64 0, i32 2, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !115
  %160 = fcmp ogt float %154, %159
  %161 = getelementptr inbounds float, ptr %1, i64 1
  %162 = getelementptr inbounds float, ptr %1, i64 2
  br i1 %160, label %163, label %175

163:                                              ; preds = %149
  %164 = load float, ptr %152, align 4, !tbaa !115
  %165 = load float, ptr %157, align 4, !tbaa !115
  %166 = fsub float %164, %165
  store float %166, ptr %1, align 4, !tbaa !115
  %167 = load float, ptr %153, align 4, !tbaa !115
  %168 = load float, ptr %158, align 4, !tbaa !115
  %169 = fsub float %167, %168
  store float %169, ptr %161, align 4, !tbaa !115
  %170 = getelementptr inbounds %struct.BMVert, ptr %151, i64 0, i32 2, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !115
  %172 = getelementptr inbounds %struct.BMVert, ptr %156, i64 0, i32 2, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !115
  %174 = fsub float %171, %173
  store float %174, ptr %162, align 4, !tbaa !115
  br label %187

175:                                              ; preds = %149
  %176 = load float, ptr %157, align 4, !tbaa !115
  %177 = load float, ptr %152, align 4, !tbaa !115
  %178 = fsub float %176, %177
  store float %178, ptr %1, align 4, !tbaa !115
  %179 = load float, ptr %158, align 4, !tbaa !115
  %180 = load float, ptr %153, align 4, !tbaa !115
  %181 = fsub float %179, %180
  store float %181, ptr %161, align 4, !tbaa !115
  %182 = getelementptr inbounds %struct.BMVert, ptr %156, i64 0, i32 2, i64 2
  %183 = load float, ptr %182, align 4, !tbaa !115
  %184 = getelementptr inbounds %struct.BMVert, ptr %151, i64 0, i32 2, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !115
  %186 = fsub float %183, %185
  store float %186, ptr %162, align 4, !tbaa !115
  br label %187

187:                                              ; preds = %163, %175, %125
  %188 = load float, ptr %1, align 4, !tbaa !115
  %189 = getelementptr inbounds float, ptr %1, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !115
  %191 = fmul float %190, %190
  %192 = tail call float @llvm.fmuladd.f32(float %188, float %188, float %191)
  %193 = getelementptr inbounds float, ptr %1, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !115
  %195 = tail call float @llvm.fmuladd.f32(float %194, float %194, float %192)
  %196 = fcmp ogt float %195, 0x38AA95A5C0000000
  br i1 %196, label %197, label %206

197:                                              ; preds = %187
  %198 = tail call float @sqrtf(float noundef %195) #12
  %199 = fdiv float 1.000000e+00, %198
  %200 = load float, ptr %1, align 4, !tbaa !115
  %201 = fmul float %200, %199
  store float %201, ptr %1, align 4, !tbaa !115
  %202 = load float, ptr %189, align 4, !tbaa !115
  %203 = fmul float %199, %202
  store float %203, ptr %189, align 4, !tbaa !115
  %204 = load float, ptr %193, align 4, !tbaa !115
  %205 = fmul float %199, %204
  br label %207

206:                                              ; preds = %187
  store float 0.000000e+00, ptr %1, align 4, !tbaa !115
  store float 0.000000e+00, ptr %189, align 4, !tbaa !115
  br label %207

207:                                              ; preds = %197, %206
  %208 = phi float [ 0.000000e+00, %206 ], [ %205, %197 ]
  store float %208, ptr %193, align 4, !tbaa !115
  br label %212

209:                                              ; preds = %2
  %210 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !85
  tail call void @BM_face_calc_plane(ptr noundef %211, ptr noundef %1) #12
  br label %212

212:                                              ; preds = %2, %207, %209, %113
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @BM_face_calc_plane(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_bm_select_history_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %4 = tail call ptr @BLI_findptr(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #12
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @_bm_select_history_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %4 = tail call ptr @BLI_findptr(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %8
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_bm_select_history_store_notest(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.3) #12
  %5 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !118
  %7 = getelementptr inbounds %struct.BMEditSelection, ptr %4, i64 0, i32 3
  store i8 %6, ptr %7, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.BMEditSelection, ptr %4, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %4) #12
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_bm_select_history_store(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %4 = tail call ptr @BLI_findptr(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %8 = tail call ptr %7(i64 noundef 32, ptr noundef nonnull @.str.3) #12
  %9 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !118
  %11 = getelementptr inbounds %struct.BMEditSelection, ptr %8, i64 0, i32 3
  store i8 %10, ptr %11, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.BMEditSelection, ptr %8, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !85
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %8) #12
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_bm_select_history_store_after_notest(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str.3) #12
  %6 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !118
  %8 = getelementptr inbounds %struct.BMEditSelection, ptr %5, i64 0, i32 3
  store i8 %7, ptr %8, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.BMEditSelection, ptr %5, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %5) #12
  ret void
}

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_bm_select_history_store_after(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %5 = tail call ptr @BLI_findptr(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 16) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %9 = tail call ptr %8(i64 noundef 32, ptr noundef nonnull @.str.3) #12
  %10 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !118
  %12 = getelementptr inbounds %struct.BMEditSelection, ptr %9, i64 0, i32 3
  store i8 %11, ptr %12, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.BMEditSelection, ptr %9, i64 0, i32 2
  store ptr %2, ptr %13, align 8, !tbaa !85
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %9) #12
  br label %14

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_select_history_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_select_history_active_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %4, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMEditSelection, ptr %4, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !111
  %11 = icmp eq i8 %10, 8
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.BMEditSelection, ptr %4, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  br label %17

17:                                               ; preds = %12, %14
  %18 = phi ptr [ %16, %14 ], [ %6, %12 ]
  %19 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !85
  %20 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 3
  store i8 8, ptr %20, align 8, !tbaa !111
  br label %32

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.BMEditSelection, ptr %4, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !85
  %25 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 3
  store i8 %10, ptr %25, align 8, !tbaa !111
  br label %32

26:                                               ; preds = %2
  %27 = icmp eq ptr %6, null
  %28 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 2
  br i1 %27, label %31, label %29

29:                                               ; preds = %26
  store ptr %6, ptr %28, align 8, !tbaa !85
  %30 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 3
  store i8 8, ptr %30, align 8, !tbaa !111
  br label %32

31:                                               ; preds = %26
  store ptr null, ptr %28, align 8, !tbaa !85
  br label %32

32:                                               ; preds = %29, %21, %17, %31
  %33 = phi i8 [ 0, %31 ], [ 1, %17 ], [ 1, %21 ], [ 1, %29 ]
  ret i8 %33
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_select_history_map_create(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_select_history_map_create) #12
  %7 = load ptr, ptr %2, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.BMEditSelection, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %12, ptr noundef nonnull %10) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !120

15:                                               ; preds = %9, %5, %1
  %16 = phi ptr [ null, %1 ], [ %6, %5 ], [ %6, %9 ]
  ret ptr %16
}

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #5

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_hflag_disable_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = and i8 %2, -2
  %10 = and i8 %2, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  tail call void @BLI_freelistN(ptr noundef nonnull %13) #12
  br label %14

14:                                               ; preds = %12, %6
  %15 = icmp eq i8 %1, 11
  %16 = icmp eq i8 %2, 1
  %17 = and i1 %15, %16
  %18 = or i8 %5, %3
  %19 = icmp eq i8 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %64, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %23 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %33 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %36 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %38 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %39 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %40 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %41 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %42 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %43 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %44 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %45 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %46 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %47 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %49 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %50 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %52 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %53 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %54 = icmp eq i8 %3, 0
  %55 = icmp eq i8 %5, 0
  %56 = icmp eq i8 %4, 0
  %57 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %58 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %59 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %61 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %62 = xor i8 %2, -1
  %63 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %140

64:                                               ; preds = %14
  %65 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %66 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %67 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %68 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %69 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %70 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %71 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %72 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %73 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %74 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %75 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %76 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %77 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %78 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %79 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %80 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %81 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %82 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %83 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %84 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %85 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %86 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %87 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %88 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %89 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %90 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %91 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %92 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %93 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %94 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %95 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %96 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %97 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  br label %98

98:                                               ; preds = %64, %133
  %99 = phi i64 [ 0, %64 ], [ %134, %133 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  %100 = getelementptr inbounds [3 x i8], ptr @__const.recount_totsels.iter_types, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !48
  store i8 %101, ptr %65, align 4, !tbaa !43
  switch i8 %101, label %122 [
    i8 1, label %102
    i8 2, label %104
    i8 3, label %106
    i8 4, label %108
    i8 5, label %109
    i8 6, label %110
    i8 7, label %111
    i8 8, label %112
    i8 9, label %113
    i8 10, label %114
    i8 11, label %115
    i8 13, label %116
    i8 14, label %117
  ]

102:                                              ; preds = %98
  store ptr @bmiter__elem_of_mesh_begin, ptr %92, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %93, align 8, !tbaa !46
  %103 = load ptr, ptr %94, align 8, !tbaa !47
  store ptr %103, ptr %7, align 8, !tbaa !48
  br label %118

104:                                              ; preds = %98
  store ptr @bmiter__elem_of_mesh_begin, ptr %89, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %90, align 8, !tbaa !46
  %105 = load ptr, ptr %91, align 8, !tbaa !55
  store ptr %105, ptr %7, align 8, !tbaa !48
  br label %118

106:                                              ; preds = %98
  store ptr @bmiter__elem_of_mesh_begin, ptr %86, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %87, align 8, !tbaa !46
  %107 = load ptr, ptr %88, align 8, !tbaa !64
  store ptr %107, ptr %7, align 8, !tbaa !48
  br label %118

108:                                              ; preds = %98
  store ptr @bmiter__edge_of_vert_begin, ptr %84, align 8, !tbaa !45
  store ptr @bmiter__edge_of_vert_step, ptr %85, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

109:                                              ; preds = %98
  store ptr @bmiter__face_of_vert_begin, ptr %82, align 8, !tbaa !45
  store ptr @bmiter__face_of_vert_step, ptr %83, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

110:                                              ; preds = %98
  store ptr @bmiter__loop_of_vert_begin, ptr %80, align 8, !tbaa !45
  store ptr @bmiter__loop_of_vert_step, ptr %81, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

111:                                              ; preds = %98
  store ptr @bmiter__vert_of_edge_begin, ptr %78, align 8, !tbaa !45
  store ptr @bmiter__vert_of_edge_step, ptr %79, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

112:                                              ; preds = %98
  store ptr @bmiter__face_of_edge_begin, ptr %76, align 8, !tbaa !45
  store ptr @bmiter__face_of_edge_step, ptr %77, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

113:                                              ; preds = %98
  store ptr @bmiter__vert_of_face_begin, ptr %74, align 8, !tbaa !45
  store ptr @bmiter__vert_of_face_step, ptr %75, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

114:                                              ; preds = %98
  store ptr @bmiter__edge_of_face_begin, ptr %72, align 8, !tbaa !45
  store ptr @bmiter__edge_of_face_step, ptr %73, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

115:                                              ; preds = %98
  store ptr @bmiter__loop_of_face_begin, ptr %70, align 8, !tbaa !45
  store ptr @bmiter__loop_of_face_step, ptr %71, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

116:                                              ; preds = %98
  store ptr @bmiter__loop_of_loop_begin, ptr %68, align 8, !tbaa !45
  store ptr @bmiter__loop_of_loop_step, ptr %69, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

117:                                              ; preds = %98
  store ptr @bmiter__loop_of_edge_begin, ptr %66, align 8, !tbaa !45
  store ptr @bmiter__loop_of_edge_step, ptr %67, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %118

118:                                              ; preds = %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %106, %104, %102
  %119 = load ptr, ptr %95, align 8, !tbaa !45
  call void %119(ptr noundef nonnull %7) #12
  %120 = load ptr, ptr %96, align 8, !tbaa !46
  %121 = call ptr %120(ptr noundef nonnull %7) #12
  br label %122

122:                                              ; preds = %98, %118
  %123 = phi ptr [ %121, %118 ], [ null, %98 ]
  %124 = icmp eq ptr %123, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %122, %125
  %126 = phi ptr [ %131, %125 ], [ %123, %122 ]
  %127 = getelementptr inbounds %struct.BMHeader, ptr %126, i64 0, i32 3
  %128 = load i8, ptr %127, align 1, !tbaa !49
  %129 = and i8 %128, -2
  store i8 %129, ptr %127, align 1, !tbaa !49
  %130 = load ptr, ptr %97, align 8, !tbaa !46
  %131 = call ptr %130(ptr noundef nonnull %7) #12
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %125, !llvm.loop !121

133:                                              ; preds = %125, %122
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  %134 = add nuw nsw i64 %99, 1
  %135 = icmp eq i64 %134, 3
  br i1 %135, label %136, label %98, !llvm.loop !122

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  store i32 0, ptr %137, align 8, !tbaa !63
  %138 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  store i32 0, ptr %138, align 4, !tbaa !54
  %139 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  store i32 0, ptr %139, align 8, !tbaa !34
  br label %259

140:                                              ; preds = %21, %256
  %141 = phi i64 [ 0, %21 ], [ %257, %256 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #12
  %142 = getelementptr inbounds [3 x i8], ptr @__const.BM_mesh_elem_hflag_enable_test.flag_types, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !48
  %144 = and i8 %143, %1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %256, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds [3 x i8], ptr @__const.recount_totsels.iter_types, i64 0, i64 %141
  %148 = load i8, ptr %147, align 1, !tbaa !48
  store i8 %148, ptr %22, align 4, !tbaa !43
  switch i8 %148, label %169 [
    i8 1, label %149
    i8 2, label %151
    i8 3, label %153
    i8 4, label %155
    i8 5, label %156
    i8 6, label %157
    i8 7, label %158
    i8 8, label %159
    i8 9, label %160
    i8 10, label %161
    i8 11, label %162
    i8 13, label %163
    i8 14, label %164
  ]

149:                                              ; preds = %146
  store ptr @bmiter__elem_of_mesh_begin, ptr %49, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %50, align 8, !tbaa !46
  %150 = load ptr, ptr %51, align 8, !tbaa !47
  store ptr %150, ptr %8, align 8, !tbaa !48
  br label %165

151:                                              ; preds = %146
  store ptr @bmiter__elem_of_mesh_begin, ptr %46, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %47, align 8, !tbaa !46
  %152 = load ptr, ptr %48, align 8, !tbaa !55
  store ptr %152, ptr %8, align 8, !tbaa !48
  br label %165

153:                                              ; preds = %146
  store ptr @bmiter__elem_of_mesh_begin, ptr %43, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %44, align 8, !tbaa !46
  %154 = load ptr, ptr %45, align 8, !tbaa !64
  store ptr %154, ptr %8, align 8, !tbaa !48
  br label %165

155:                                              ; preds = %146
  store ptr @bmiter__edge_of_vert_begin, ptr %41, align 8, !tbaa !45
  store ptr @bmiter__edge_of_vert_step, ptr %42, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

156:                                              ; preds = %146
  store ptr @bmiter__face_of_vert_begin, ptr %39, align 8, !tbaa !45
  store ptr @bmiter__face_of_vert_step, ptr %40, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

157:                                              ; preds = %146
  store ptr @bmiter__loop_of_vert_begin, ptr %37, align 8, !tbaa !45
  store ptr @bmiter__loop_of_vert_step, ptr %38, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

158:                                              ; preds = %146
  store ptr @bmiter__vert_of_edge_begin, ptr %35, align 8, !tbaa !45
  store ptr @bmiter__vert_of_edge_step, ptr %36, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

159:                                              ; preds = %146
  store ptr @bmiter__face_of_edge_begin, ptr %33, align 8, !tbaa !45
  store ptr @bmiter__face_of_edge_step, ptr %34, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

160:                                              ; preds = %146
  store ptr @bmiter__vert_of_face_begin, ptr %31, align 8, !tbaa !45
  store ptr @bmiter__vert_of_face_step, ptr %32, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

161:                                              ; preds = %146
  store ptr @bmiter__edge_of_face_begin, ptr %29, align 8, !tbaa !45
  store ptr @bmiter__edge_of_face_step, ptr %30, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

162:                                              ; preds = %146
  store ptr @bmiter__loop_of_face_begin, ptr %27, align 8, !tbaa !45
  store ptr @bmiter__loop_of_face_step, ptr %28, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

163:                                              ; preds = %146
  store ptr @bmiter__loop_of_loop_begin, ptr %25, align 8, !tbaa !45
  store ptr @bmiter__loop_of_loop_step, ptr %26, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

164:                                              ; preds = %146
  store ptr @bmiter__loop_of_edge_begin, ptr %23, align 8, !tbaa !45
  store ptr @bmiter__loop_of_edge_step, ptr %24, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !48
  br label %165

165:                                              ; preds = %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %153, %151, %149
  %166 = load ptr, ptr %52, align 8, !tbaa !45
  call void %166(ptr noundef nonnull %8) #12
  %167 = load ptr, ptr %53, align 8, !tbaa !46
  %168 = call ptr %167(ptr noundef nonnull %8) #12
  br label %169

169:                                              ; preds = %146, %165
  %170 = phi ptr [ %168, %165 ], [ null, %146 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %256, label %172

172:                                              ; preds = %169, %252
  %173 = phi ptr [ %254, %252 ], [ %170, %169 ]
  br i1 %54, label %179, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 3
  %176 = load i8, ptr %175, align 1, !tbaa !49
  %177 = and i8 %176, 2
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %252

179:                                              ; preds = %174, %172
  br i1 %55, label %185, label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 3
  %182 = load i8, ptr %181, align 1, !tbaa !49
  %183 = and i8 %182, %5
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %204, label %185

185:                                              ; preds = %180, %179
  br i1 %11, label %200, label %186

186:                                              ; preds = %185
  %187 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 2
  %188 = load i8, ptr %187, align 4, !tbaa !108
  switch i8 %188, label %200 [
    i8 1, label %189
    i8 2, label %198
    i8 8, label %199
  ]

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 3
  %191 = load i8, ptr %190, align 1, !tbaa !49
  %192 = and i8 %191, 3
  %193 = icmp eq i8 %192, 1
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load i32, ptr %61, align 8, !tbaa !34
  %196 = add nsw i32 %195, -1
  store i32 %196, ptr %61, align 8, !tbaa !34
  %197 = and i8 %191, -4
  store i8 %197, ptr %190, align 1, !tbaa !49
  br label %200

198:                                              ; preds = %186
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %173, i8 noundef zeroext 0)
  br label %200

199:                                              ; preds = %186
  call void @BM_face_select_set(ptr noundef %0, ptr noundef nonnull %173, i8 noundef zeroext 0)
  br label %200

200:                                              ; preds = %199, %198, %194, %189, %186, %185
  %201 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 3
  %202 = load i8, ptr %201, align 1, !tbaa !49
  %203 = and i8 %202, %62
  store i8 %203, ptr %201, align 1, !tbaa !49
  br label %252

204:                                              ; preds = %180
  br i1 %56, label %252, label %205

205:                                              ; preds = %204
  br i1 %11, label %249, label %206

206:                                              ; preds = %205
  %207 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 2
  %208 = load i8, ptr %207, align 4, !tbaa !108
  switch i8 %208, label %249 [
    i8 1, label %209
    i8 2, label %216
    i8 8, label %248
  ]

209:                                              ; preds = %206
  %210 = and i8 %182, 3
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %249

212:                                              ; preds = %209
  %213 = load i32, ptr %60, align 8, !tbaa !34
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %60, align 8, !tbaa !34
  %215 = or disjoint i8 %182, 1
  store i8 %215, ptr %181, align 1, !tbaa !49
  br label %249

216:                                              ; preds = %206
  %217 = and i8 %182, 2
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %249

219:                                              ; preds = %216
  %220 = and i8 %182, 1
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, ptr %57, align 4, !tbaa !54
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %57, align 4, !tbaa !54
  br label %225

225:                                              ; preds = %222, %219
  %226 = or i8 %182, 1
  store i8 %226, ptr %181, align 1, !tbaa !49
  %227 = getelementptr inbounds %struct.BMEdge, ptr %173, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !56
  %229 = getelementptr inbounds %struct.BMHeader, ptr %228, i64 0, i32 3
  %230 = load i8, ptr %229, align 1, !tbaa !49
  %231 = and i8 %230, 3
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load i32, ptr %58, align 8, !tbaa !34
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %58, align 8, !tbaa !34
  %236 = or disjoint i8 %230, 1
  store i8 %236, ptr %229, align 1, !tbaa !49
  br label %237

237:                                              ; preds = %233, %225
  %238 = getelementptr inbounds %struct.BMEdge, ptr %173, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !59
  %240 = getelementptr inbounds %struct.BMHeader, ptr %239, i64 0, i32 3
  %241 = load i8, ptr %240, align 1, !tbaa !49
  %242 = and i8 %241, 3
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  %245 = load i32, ptr %59, align 8, !tbaa !34
  %246 = add nsw i32 %245, 1
  store i32 %246, ptr %59, align 8, !tbaa !34
  %247 = or disjoint i8 %241, 1
  store i8 %247, ptr %240, align 1, !tbaa !49
  br label %249

248:                                              ; preds = %206
  call void @BM_face_select_set(ptr noundef %0, ptr noundef nonnull %173, i8 noundef zeroext 1)
  br label %249

249:                                              ; preds = %248, %212, %209, %206, %216, %237, %244, %205
  %250 = load i8, ptr %181, align 1, !tbaa !49
  %251 = or i8 %250, %9
  store i8 %251, ptr %181, align 1, !tbaa !49
  br label %252

252:                                              ; preds = %174, %204, %249, %200
  %253 = load ptr, ptr %63, align 8, !tbaa !46
  %254 = call ptr %253(ptr noundef nonnull %8) #12
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %172, !llvm.loop !123

256:                                              ; preds = %252, %169, %140
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  %257 = add nuw nsw i64 %141, 1
  %258 = icmp eq i64 %257, 3
  br i1 %258, label %259, label %140, !llvm.loop !124

259:                                              ; preds = %256, %136
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_hflag_enable_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = and i8 %2, -2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  %9 = and i8 %2, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  tail call void @BLI_freelistN(ptr noundef nonnull %12) #12
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %15 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %18 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %22 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %23 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %33 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %36 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %38 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %39 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %41 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %42 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %43 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %44 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %45 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %46 = icmp eq i8 %3, 0
  %47 = icmp eq i8 %5, 0
  %48 = icmp eq i8 %4, 0
  %49 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %50 = xor i8 %2, -1
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %52 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %53 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %54 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %55 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  br label %56

56:                                               ; preds = %13, %174
  %57 = phi i64 [ 0, %13 ], [ %175, %174 ]
  %58 = getelementptr inbounds [3 x i8], ptr @__const.BM_mesh_elem_hflag_enable_test.flag_types, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !48
  %60 = and i8 %59, %1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %174, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds [3 x i8], ptr @__const.recount_totsels.iter_types, i64 0, i64 %57
  %64 = load i8, ptr %63, align 1, !tbaa !48
  store i8 %64, ptr %14, align 4, !tbaa !43
  switch i8 %64, label %85 [
    i8 1, label %65
    i8 2, label %67
    i8 3, label %69
    i8 4, label %71
    i8 5, label %72
    i8 6, label %73
    i8 7, label %74
    i8 8, label %75
    i8 9, label %76
    i8 10, label %77
    i8 11, label %78
    i8 13, label %79
    i8 14, label %80
  ]

65:                                               ; preds = %62
  store ptr @bmiter__elem_of_mesh_begin, ptr %41, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %42, align 8, !tbaa !46
  %66 = load ptr, ptr %43, align 8, !tbaa !47
  store ptr %66, ptr %7, align 8, !tbaa !48
  br label %81

67:                                               ; preds = %62
  store ptr @bmiter__elem_of_mesh_begin, ptr %38, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %39, align 8, !tbaa !46
  %68 = load ptr, ptr %40, align 8, !tbaa !55
  store ptr %68, ptr %7, align 8, !tbaa !48
  br label %81

69:                                               ; preds = %62
  store ptr @bmiter__elem_of_mesh_begin, ptr %35, align 8, !tbaa !45
  store ptr @bmiter__elem_of_mesh_step, ptr %36, align 8, !tbaa !46
  %70 = load ptr, ptr %37, align 8, !tbaa !64
  store ptr %70, ptr %7, align 8, !tbaa !48
  br label %81

71:                                               ; preds = %62
  store ptr @bmiter__edge_of_vert_begin, ptr %33, align 8, !tbaa !45
  store ptr @bmiter__edge_of_vert_step, ptr %34, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

72:                                               ; preds = %62
  store ptr @bmiter__face_of_vert_begin, ptr %31, align 8, !tbaa !45
  store ptr @bmiter__face_of_vert_step, ptr %32, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

73:                                               ; preds = %62
  store ptr @bmiter__loop_of_vert_begin, ptr %29, align 8, !tbaa !45
  store ptr @bmiter__loop_of_vert_step, ptr %30, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

74:                                               ; preds = %62
  store ptr @bmiter__vert_of_edge_begin, ptr %27, align 8, !tbaa !45
  store ptr @bmiter__vert_of_edge_step, ptr %28, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

75:                                               ; preds = %62
  store ptr @bmiter__face_of_edge_begin, ptr %25, align 8, !tbaa !45
  store ptr @bmiter__face_of_edge_step, ptr %26, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

76:                                               ; preds = %62
  store ptr @bmiter__vert_of_face_begin, ptr %23, align 8, !tbaa !45
  store ptr @bmiter__vert_of_face_step, ptr %24, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

77:                                               ; preds = %62
  store ptr @bmiter__edge_of_face_begin, ptr %21, align 8, !tbaa !45
  store ptr @bmiter__edge_of_face_step, ptr %22, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

78:                                               ; preds = %62
  store ptr @bmiter__loop_of_face_begin, ptr %19, align 8, !tbaa !45
  store ptr @bmiter__loop_of_face_step, ptr %20, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

79:                                               ; preds = %62
  store ptr @bmiter__loop_of_loop_begin, ptr %17, align 8, !tbaa !45
  store ptr @bmiter__loop_of_loop_step, ptr %18, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

80:                                               ; preds = %62
  store ptr @bmiter__loop_of_edge_begin, ptr %15, align 8, !tbaa !45
  store ptr @bmiter__loop_of_edge_step, ptr %16, align 8, !tbaa !46
  store ptr null, ptr %7, align 8, !tbaa !48
  br label %81

81:                                               ; preds = %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %69, %67, %65
  %82 = load ptr, ptr %44, align 8, !tbaa !45
  call void %82(ptr noundef nonnull %7) #12
  %83 = load ptr, ptr %45, align 8, !tbaa !46
  %84 = call ptr %83(ptr noundef nonnull %7) #12
  br label %85

85:                                               ; preds = %62, %81
  %86 = phi ptr [ %84, %81 ], [ null, %62 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %174, label %88

88:                                               ; preds = %85, %170
  %89 = phi ptr [ %172, %170 ], [ %86, %85 ]
  br i1 %46, label %95, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  %92 = load i8, ptr %91, align 1, !tbaa !49
  %93 = and i8 %92, 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %170

95:                                               ; preds = %90, %88
  br i1 %47, label %101, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  %98 = load i8, ptr %97, align 1, !tbaa !49
  %99 = and i8 %98, %5
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %153, label %101

101:                                              ; preds = %96, %95
  br i1 %10, label %149, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 2
  %104 = load i8, ptr %103, align 4, !tbaa !108
  switch i8 %104, label %149 [
    i8 1, label %105
    i8 2, label %114
    i8 8, label %148
  ]

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  %107 = load i8, ptr %106, align 1, !tbaa !49
  %108 = and i8 %107, 3
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %149

110:                                              ; preds = %105
  %111 = load i32, ptr %54, align 8, !tbaa !34
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %54, align 8, !tbaa !34
  %113 = or disjoint i8 %107, 1
  store i8 %113, ptr %106, align 1, !tbaa !49
  br label %149

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  %116 = load i8, ptr %115, align 1, !tbaa !49
  %117 = and i8 %116, 2
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %114
  %120 = and i8 %116, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, ptr %51, align 4, !tbaa !54
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %51, align 4, !tbaa !54
  br label %125

125:                                              ; preds = %122, %119
  %126 = or i8 %116, 1
  store i8 %126, ptr %115, align 1, !tbaa !49
  %127 = getelementptr inbounds %struct.BMEdge, ptr %89, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !56
  %129 = getelementptr inbounds %struct.BMHeader, ptr %128, i64 0, i32 3
  %130 = load i8, ptr %129, align 1, !tbaa !49
  %131 = and i8 %130, 3
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32, ptr %52, align 8, !tbaa !34
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %52, align 8, !tbaa !34
  %136 = or disjoint i8 %130, 1
  store i8 %136, ptr %129, align 1, !tbaa !49
  br label %137

137:                                              ; preds = %133, %125
  %138 = getelementptr inbounds %struct.BMEdge, ptr %89, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !59
  %140 = getelementptr inbounds %struct.BMHeader, ptr %139, i64 0, i32 3
  %141 = load i8, ptr %140, align 1, !tbaa !49
  %142 = and i8 %141, 3
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i32, ptr %53, align 8, !tbaa !34
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %53, align 8, !tbaa !34
  %147 = or disjoint i8 %141, 1
  store i8 %147, ptr %140, align 1, !tbaa !49
  br label %149

148:                                              ; preds = %102
  call void @BM_face_select_set(ptr noundef %0, ptr noundef nonnull %89, i8 noundef zeroext 1)
  br label %149

149:                                              ; preds = %148, %110, %105, %102, %114, %137, %144, %101
  %150 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  %151 = load i8, ptr %150, align 1, !tbaa !49
  %152 = or i8 %151, %8
  store i8 %152, ptr %150, align 1, !tbaa !49
  br label %170

153:                                              ; preds = %96
  br i1 %48, label %170, label %154

154:                                              ; preds = %153
  br i1 %10, label %167, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 2
  %157 = load i8, ptr %156, align 4, !tbaa !108
  switch i8 %157, label %167 [
    i8 1, label %158
    i8 2, label %165
    i8 8, label %166
  ]

158:                                              ; preds = %155
  %159 = and i8 %98, 3
  %160 = icmp eq i8 %159, 1
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32, ptr %49, align 8, !tbaa !34
  %163 = add nsw i32 %162, -1
  store i32 %163, ptr %49, align 8, !tbaa !34
  %164 = and i8 %98, -4
  store i8 %164, ptr %97, align 1, !tbaa !49
  br label %167

165:                                              ; preds = %155
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %89, i8 noundef zeroext 0)
  br label %167

166:                                              ; preds = %155
  call void @BM_face_select_set(ptr noundef %0, ptr noundef nonnull %89, i8 noundef zeroext 0)
  br label %167

167:                                              ; preds = %166, %165, %161, %158, %155, %154
  %168 = load i8, ptr %97, align 1, !tbaa !49
  %169 = and i8 %168, %50
  store i8 %169, ptr %97, align 1, !tbaa !49
  br label %170

170:                                              ; preds = %90, %153, %167, %149
  %171 = load ptr, ptr %55, align 8, !tbaa !46
  %172 = call ptr %171(ptr noundef nonnull %7) #12
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %88, !llvm.loop !125

174:                                              ; preds = %170, %85, %56
  %175 = add nuw nsw i64 %57, 1
  %176 = icmp eq i64 %175, 3
  br i1 %176, label %177, label %56, !llvm.loop !126

177:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  tail call void @BM_mesh_elem_hflag_disable_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_elem_hflag_enable_all(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  tail call void @BM_mesh_elem_hflag_enable_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_vert_hide_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %5 = icmp eq i8 %1, 0
  %6 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !49
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !49
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 4, ptr %11, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %13, align 8, !tbaa !46
  store ptr %0, ptr %3, align 8, !tbaa !48
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #12
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = call ptr %14(ptr noundef nonnull %3) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %21 = select i1 %5, i8 0, i8 2
  %22 = select i1 %5, i8 0, i8 2
  br label %23

23:                                               ; preds = %17, %41
  %24 = phi ptr [ %15, %17 ], [ %43, %41 ]
  %25 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !49
  %27 = and i8 %26, -3
  %28 = or disjoint i8 %27, %21
  store i8 %28, ptr %25, align 1, !tbaa !49
  store i8 8, ptr %18, align 4, !tbaa !43
  store ptr @bmiter__face_of_edge_begin, ptr %19, align 8, !tbaa !45
  store ptr @bmiter__face_of_edge_step, ptr %20, align 8, !tbaa !46
  store ptr %24, ptr %4, align 8, !tbaa !48
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %4) #12
  %29 = load ptr, ptr %20, align 8, !tbaa !46
  %30 = call ptr %29(ptr noundef nonnull %4) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %23, %32
  %33 = phi ptr [ %39, %32 ], [ %30, %23 ]
  %34 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !49
  %36 = and i8 %35, -3
  %37 = or disjoint i8 %36, %22
  store i8 %37, ptr %34, align 1, !tbaa !49
  %38 = load ptr, ptr %20, align 8, !tbaa !46
  %39 = call ptr %38(ptr noundef nonnull %4) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !127

41:                                               ; preds = %32, %23
  %42 = load ptr, ptr %13, align 8, !tbaa !46
  %43 = call ptr %42(ptr noundef nonnull %3) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %23, !llvm.loop !128

45:                                               ; preds = %41, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_edge_hide_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 8, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %8, align 8, !tbaa !46
  store ptr %0, ptr %5, align 8, !tbaa !48
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %5) #12
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = call ptr %9(ptr noundef nonnull %5) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = icmp eq i8 %1, 0
  %14 = select i1 %13, i8 0, i8 2
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %10, %12 ], [ %22, %15 ]
  %17 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !49
  %19 = and i8 %18, -3
  %20 = or disjoint i8 %19, %14
  store i8 %20, ptr %17, align 1, !tbaa !49
  %21 = load ptr, ptr %8, align 8, !tbaa !46
  %22 = call ptr %21(ptr noundef nonnull %5) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !129

24:                                               ; preds = %15, %2
  %25 = icmp eq i8 %1, 0
  %26 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !49
  %28 = and i8 %27, -3
  %29 = select i1 %25, i8 0, i8 2
  %30 = or disjoint i8 %28, %29
  store i8 %30, ptr %26, align 1, !tbaa !49
  %31 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %33 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 4, ptr %33, align 4, !tbaa !43
  %34 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %34, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %35, align 8, !tbaa !46
  store ptr %32, ptr %4, align 8, !tbaa !48
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #12
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = call ptr %36(ptr noundef nonnull %4) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %24, %48
  %40 = phi i8 [ %50, %48 ], [ 1, %24 ]
  %41 = phi ptr [ %52, %48 ], [ %37, %24 ]
  %42 = icmp eq i8 %40, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !49
  %46 = and i8 %45, 2
  %47 = icmp ne i8 %46, 0
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  %50 = zext i1 %49 to i8
  %51 = load ptr, ptr %35, align 8, !tbaa !46
  %52 = call ptr %51(ptr noundef nonnull %4) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %39, !llvm.loop !130

54:                                               ; preds = %48
  br i1 %49, label %55, label %59

55:                                               ; preds = %54, %24
  %56 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !49
  %58 = or i8 %57, 2
  store i8 %58, ptr %56, align 1, !tbaa !49
  br label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !49
  %62 = and i8 %61, -3
  store i8 %62, ptr %60, align 1, !tbaa !49
  br label %63

63:                                               ; preds = %55, %59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  %64 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %66 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 4, ptr %66, align 4, !tbaa !43
  %67 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %67, align 8, !tbaa !45
  %68 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %68, align 8, !tbaa !46
  store ptr %65, ptr %3, align 8, !tbaa !48
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #12
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = call ptr %69(ptr noundef nonnull %3) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %63, %81
  %73 = phi i8 [ %83, %81 ], [ 1, %63 ]
  %74 = phi ptr [ %85, %81 ], [ %70, %63 ]
  %75 = icmp eq i8 %73, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 3
  %78 = load i8, ptr %77, align 1, !tbaa !49
  %79 = and i8 %78, 2
  %80 = icmp ne i8 %79, 0
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi i1 [ false, %72 ], [ %80, %76 ]
  %83 = zext i1 %82 to i8
  %84 = load ptr, ptr %68, align 8, !tbaa !46
  %85 = call ptr %84(ptr noundef nonnull %3) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %72, !llvm.loop !130

87:                                               ; preds = %81
  br i1 %82, label %88, label %92

88:                                               ; preds = %87, %63
  %89 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 3
  %90 = load i8, ptr %89, align 1, !tbaa !49
  %91 = or i8 %90, 2
  store i8 %91, ptr %89, align 1, !tbaa !49
  br label %96

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 3
  %94 = load i8, ptr %93, align 1, !tbaa !49
  %95 = and i8 %94, -3
  store i8 %95, ptr %93, align 1, !tbaa !49
  br label %96

96:                                               ; preds = %88, %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_hide_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %6 = icmp eq i8 %1, 0
  %7 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !49
  %9 = and i8 %8, -3
  %10 = select i1 %6, i8 0, i8 2
  %11 = or disjoint i8 %9, %10
  store i8 %11, ptr %7, align 1, !tbaa !49
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 11, ptr %12, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %14, align 8, !tbaa !46
  store ptr %0, ptr %5, align 8, !tbaa !48
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #12
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = call ptr %15(ptr noundef nonnull %5) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %55, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %21 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %22

22:                                               ; preds = %18, %44
  %23 = phi ptr [ %16, %18 ], [ %53, %44 ]
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  store i8 8, ptr %19, align 4, !tbaa !43
  store ptr @bmiter__face_of_edge_begin, ptr %20, align 8, !tbaa !45
  store ptr @bmiter__face_of_edge_step, ptr %21, align 8, !tbaa !46
  store ptr %25, ptr %4, align 8, !tbaa !48
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %4) #12
  %26 = load ptr, ptr %21, align 8, !tbaa !46
  %27 = call ptr %26(ptr noundef nonnull %4) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %22, %38
  %30 = phi i8 [ %40, %38 ], [ 1, %22 ]
  %31 = phi ptr [ %42, %38 ], [ %27, %22 ]
  %32 = icmp eq i8 %30, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !49
  %36 = and i8 %35, 2
  %37 = icmp ne i8 %36, 0
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i1 [ false, %29 ], [ %37, %33 ]
  %40 = zext i1 %39 to i8
  %41 = load ptr, ptr %21, align 8, !tbaa !46
  %42 = call ptr %41(ptr noundef nonnull %4) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %29, !llvm.loop !131

44:                                               ; preds = %38, %22
  %45 = phi i8 [ 1, %22 ], [ %40, %38 ]
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !49
  %49 = and i8 %48, -3
  %50 = select i1 %46, i8 0, i8 2
  %51 = or disjoint i8 %49, %50
  store i8 %51, ptr %47, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  %52 = load ptr, ptr %14, align 8, !tbaa !46
  %53 = call ptr %52(ptr noundef nonnull %5) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %22, !llvm.loop !132

55:                                               ; preds = %44, %2
  store i8 11, ptr %12, align 4, !tbaa !43
  store ptr @bmiter__loop_of_face_begin, ptr %13, align 8, !tbaa !45
  store ptr @bmiter__loop_of_face_step, ptr %14, align 8, !tbaa !46
  store ptr %0, ptr %5, align 8, !tbaa !48
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #12
  %56 = load ptr, ptr %14, align 8, !tbaa !46
  %57 = call ptr %56(ptr noundef nonnull %5) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %98, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %61 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %62 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br label %63

63:                                               ; preds = %59, %94
  %64 = phi ptr [ %57, %59 ], [ %96, %94 ]
  %65 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  store i8 4, ptr %60, align 4, !tbaa !43
  store ptr @bmiter__edge_of_vert_begin, ptr %61, align 8, !tbaa !45
  store ptr @bmiter__edge_of_vert_step, ptr %62, align 8, !tbaa !46
  store ptr %66, ptr %3, align 8, !tbaa !48
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #12
  %67 = load ptr, ptr %62, align 8, !tbaa !46
  %68 = call ptr %67(ptr noundef nonnull %3) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %63, %79
  %71 = phi i8 [ %81, %79 ], [ 1, %63 ]
  %72 = phi ptr [ %83, %79 ], [ %68, %63 ]
  %73 = icmp eq i8 %71, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.BMHeader, ptr %72, i64 0, i32 3
  %76 = load i8, ptr %75, align 1, !tbaa !49
  %77 = and i8 %76, 2
  %78 = icmp ne i8 %77, 0
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i1 [ false, %70 ], [ %78, %74 ]
  %81 = zext i1 %80 to i8
  %82 = load ptr, ptr %62, align 8, !tbaa !46
  %83 = call ptr %82(ptr noundef nonnull %3) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %70, !llvm.loop !130

85:                                               ; preds = %79
  br i1 %80, label %86, label %90

86:                                               ; preds = %85, %63
  %87 = getelementptr inbounds %struct.BMHeader, ptr %66, i64 0, i32 3
  %88 = load i8, ptr %87, align 1, !tbaa !49
  %89 = or i8 %88, 2
  store i8 %89, ptr %87, align 1, !tbaa !49
  br label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.BMHeader, ptr %66, i64 0, i32 3
  %92 = load i8, ptr %91, align 1, !tbaa !49
  %93 = and i8 %92, -3
  store i8 %93, ptr %91, align 1, !tbaa !49
  br label %94

94:                                               ; preds = %86, %90
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  %95 = load ptr, ptr %14, align 8, !tbaa !46
  %96 = call ptr %95(ptr noundef nonnull %5) #12
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %63, !llvm.loop !133

98:                                               ; preds = %94, %55
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_bm_elem_hide_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !118
  switch i8 %5, label %27 [
    i8 1, label %6
    i8 2, label %19
    i8 8, label %23
  ]

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !49
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = add nsw i32 %15, -1
  store i32 %16, ptr %14, align 8, !tbaa !34
  %17 = and i8 %10, -4
  store i8 %17, ptr %9, align 1, !tbaa !49
  br label %18

18:                                               ; preds = %13, %8, %6
  tail call void @BM_vert_hide_set(ptr noundef %1, i8 noundef zeroext %2)
  br label %30

19:                                               ; preds = %3
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0)
  br label %22

22:                                               ; preds = %21, %19
  tail call void @BM_edge_hide_set(ptr noundef %1, i8 noundef zeroext %2)
  br label %30

23:                                               ; preds = %3
  %24 = icmp eq i8 %2, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @BM_face_select_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0)
  br label %26

26:                                               ; preds = %25, %23
  tail call void @BM_face_hide_set(ptr noundef %1, i8 noundef zeroext %2)
  br label %30

27:                                               ; preds = %3
  %28 = load ptr, ptr @stderr, align 8, !tbaa !73
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._bm_elem_hide_set, i32 noundef 1186, ptr noundef nonnull @.str.2) #13
  br label %30

30:                                               ; preds = %27, %26, %22, %18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #5

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #5

declare void @bmiter__edge_of_vert_begin(ptr noundef) #5

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #5

declare void @bmiter__face_of_vert_begin(ptr noundef) #5

declare ptr @bmiter__face_of_vert_step(ptr noundef) #5

declare void @bmiter__loop_of_vert_begin(ptr noundef) #5

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #5

declare void @bmiter__vert_of_edge_begin(ptr noundef) #5

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #5

declare void @bmiter__face_of_edge_begin(ptr noundef) #5

declare ptr @bmiter__face_of_edge_step(ptr noundef) #5

declare void @bmiter__vert_of_face_begin(ptr noundef) #5

declare ptr @bmiter__vert_of_face_step(ptr noundef) #5

declare void @bmiter__edge_of_face_begin(ptr noundef) #5

declare ptr @bmiter__edge_of_face_step(ptr noundef) #5

declare void @bmiter__loop_of_face_begin(ptr noundef) #5

declare ptr @bmiter__loop_of_face_step(ptr noundef) #5

declare void @bmiter__loop_of_loop_begin(ptr noundef) #5

declare ptr @bmiter__loop_of_loop_step(ptr noundef) #5

declare void @bmiter__loop_of_edge_begin(ptr noundef) #5

declare ptr @bmiter__loop_of_edge_step(ptr noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { cold }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!44, !37, i64 60}
!44 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!45 = !{!44, !39, i64 40}
!46 = !{!44, !39, i64 48}
!47 = !{!35, !39, i64 32}
!48 = !{!37, !37, i64 0}
!49 = !{!50, !37, i64 13}
!50 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!35, !36, i64 20}
!55 = !{!35, !39, i64 40}
!56 = !{!57, !39, i64 24}
!57 = !{!"BMEdge", !50, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !58, i64 48, !58, i64 64}
!58 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!59 = !{!57, !39, i64 32}
!60 = distinct !{!60, !52, !53}
!61 = distinct !{!61, !52, !53}
!62 = distinct !{!62, !52, !53}
!63 = !{!35, !36, i64 24}
!64 = !{!35, !39, i64 56}
!65 = !{!66, !39, i64 24}
!66 = !{!"BMFace", !50, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!67 = !{!68, !39, i64 24}
!68 = !{!"BMLoop", !50, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!69 = !{!68, !39, i64 56}
!70 = distinct !{!70, !52, !53}
!71 = distinct !{!71, !52, !53}
!72 = !{!35, !41, i64 944}
!73 = !{!39, !39, i64 0}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !52, !53}
!76 = distinct !{!76, !52, !53}
!77 = !{!68, !39, i64 16}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = distinct !{!80, !52, !53}
!81 = distinct !{!81, !52, !53}
!82 = !{!35, !39, i64 960}
!83 = !{!84, !39, i64 0}
!84 = !{!"BMEditSelection", !39, i64 0, !39, i64 8, !39, i64 16, !37, i64 24}
!85 = !{!84, !39, i64 16}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = !{!36, !36, i64 0}
!89 = distinct !{!89, !52, !53}
!90 = !{!57, !39, i64 40}
!91 = !{!68, !39, i64 32}
!92 = !{!68, !39, i64 40}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = !{!109, !37, i64 12}
!109 = !{!"BMElem", !50, i64 0}
!110 = !{!35, !39, i64 976}
!111 = !{!84, !37, i64 24}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = !{!35, !39, i64 968}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !37, i64 0}
!117 = !{!84, !39, i64 8}
!118 = !{!50, !37, i64 12}
!119 = !{!42, !39, i64 0}
!120 = distinct !{!120, !52, !53}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = distinct !{!126, !52, !53}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = distinct !{!130, !52, !53}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
